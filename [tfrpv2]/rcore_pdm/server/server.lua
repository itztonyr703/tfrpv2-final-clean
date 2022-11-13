---------------------------------------------------------------
-- Variable list
---------------------------------------------------------------
local listedVehicles = {}
local claimedMarkers = {}

---------------------------------------------------------------
-- One time init
---------------------------------------------------------------
MySQL.ready(function()
    MySQL.Async.fetchAll('SELECT * FROM categories_vehicles ORDER BY `categories_vehicles`.`order` ASC', {}, function(data)
        CreateThread(function()
            for k, v in pairs(data) do
                if not listedVehicles[v.job] then
                    listedVehicles[v.job] = {
                        order = v.order,
                        job = v.job,
                        name = v.name,
                    }
                end

                listedVehicles[v.job][v.order] = {
                    name = v.name,
                    order = v.order,
                    job = v.job,
                    label = v.label,
                    model = GetHashKey(v.model or 0),
                    modelName = v.model,
                    vehicle = {}
                }

                MySQL.Async.fetchAll('SELECT * FROM `vehicles_to_buy` WHERE category = @category AND job = @job ORDER BY `vehicles_to_buy`.`price` ASC', {
                    ['@category'] = v.name,
                    ["@job"] = v.job,
                }, function(result)
                    for key, value in pairs(result) do
                        local toInsert = {
                            model = GetHashKey(value.model),
                            modelName = value.model,
                            modelEx = value.model,
                            price = value.price,
                            vip_price = value.vip_price,
                            category = v.name,
                            licensePrice = value.licensePrice,
                            piecePrice = value.piecePrice
                        }
                        if value.instock then
                            toInsert.limit = value.instock
                        end

                        if value.extra then
                            for ek, ev in pairs(json.decode(value.extra)) do
                                toInsert[ek] = ev
                            end
                        end

                        table.insert(listedVehicles[v.job][v.order].vehicle, toInsert)
                    end
                end)
            end
        end)
    end)
end)

---------------------------------------------------------------
-- Function list
---------------------------------------------------------------
--- This will change vehicle price in cache + mysql
--- @param job string
--- @param order integer
--- @param vehicle table
--- @param changePrice integer
--- @param category string
function ChangeVehiclePrice(job, order, vehicle, changePrice, category)
    for k, v in pairs(listedVehicles[job][order].vehicle) do
        if v.model == vehicle.model and v.category == category then
            v.price = changePrice
            MySQL.Async.execute("UPDATE vehicles_to_buy SET price = @price WHERE model = @model AND category = @category AND job = @job", {
                ['@model'] = v.modelEx,
                ['@price'] = changePrice,
                ['@category'] = category,
                ['@job'] = job,
            })
            break
        end
    end
end

--- This will add + 1 to the stock and update cache + save into database
--- @param source integer
--- @param price integer
--- @param job string
--- @param order integer
--- @param vehicle table
--- @param category string
--- @param paymenType string
--- @param society string
function AddVehicleToTheStock(source, price, job, order, vehicle, category, paymenType, society, skip, count)
    if listedVehicles[job][order] then
        if vehicle.licensePrice and vehicle.limit == nil and skip == nil then
            price = vehicle.licensePrice
        end

        if vehicle.licensePrice ~= price and skip == nil then
            price = vehicle.price
        end

        local result = PayWithType(paymenType, source, price, society, job)
        if result then
            for k, v in pairs(listedVehicles[job][order].vehicle) do
                if v.limit == nil and v.model == vehicle.model and v.category == category then
                    v.limit = 0
                end
                if v.limit and v.model == vehicle.model and v.category == category then
                    v.limit = v.limit + (count or 1)
                    MySQL.Async.execute("UPDATE vehicles_to_buy SET instock = @instock WHERE model = @model AND category = @category AND job = @job", {
                        ['@model'] = v.modelEx,
                        ['@instock'] = v.limit,
                        ['@category'] = category,
                        ['@job'] = job,
                    })
                    break
                end
            end
        end
        return result
    end
    return false
end

--- This will remove 1 from the stock and update cache + save into database
--- @param job string
--- @param order integer
--- @param vehicle table
--- @param category string
function TakeVehicleFromStock(job, order, vehicle, category)
    if listedVehicles[job][order] then
        for k, v in pairs(listedVehicles[job][order].vehicle) do
            if v.limit and v.model == vehicle.model and v.category == category then
                if v.limit == 0 then
                    return false
                else
                    v.limit = v.limit - 1
                    MySQL.Async.execute("UPDATE vehicles_to_buy SET instock = @instock WHERE model = @model AND category = @category AND job = @job", {
                        ['@model'] = v.modelEx,
                        ['@instock'] = v.limit,
                        ['@category'] = category,
                        ['@job'] = job,
                    })
                    break
                end
            end
        end
    end
end
---------------------------------------------------------------
-- Event list
---------------------------------------------------------------
RegisterNetEvent(TriggerName("IsVehicleValid"), function(NetVehicle, seconds)
    for k,v in pairs(Config.ShopList) do
        for _, val in pairs(v.SpawnPoints) do
            if #(val.pos - GetEntityCoords(entity)) < 5 then
                Wait(seconds)
                local entity = NetworkGetEntityFromNetworkId(NetVehicle)
                if DoesEntityExist(entity) then
                    DeleteEntity(entity)
                end
                break
            end
        end
    end
end)

--- will update for all clients the used markers
RegisterNetEvent(TriggerName("SetBusyShopMarker"))
AddEventHandler(TriggerName("SetBusyShopMarker"), function(key, busyStatus)
    claimedMarkers[source] = key
    TriggerClientEvent(TriggerName("SetBusyShopMarker"), -1, key, busyStatus)
end)

--- Will send to the user cache of claimed markers
RegisterNetEvent(TriggerName("ClaimCachedMarkers"))
AddEventHandler(TriggerName("ClaimCachedMarkers"), function()
    TriggerClientEvent(TriggerName("ClaimCachedMarkers"), source, claimedMarkers)
end)

--- when player disconnect and he have claimed marker, we will send info
--- to all players to delete restriction
AddEventHandler('playerDropped', function()
    TriggerClientEvent(TriggerName("SetBusyShopMarker"), -1, claimedMarkers[source], false)
    claimedMarkers[source] = nil
end)


--- will fetch vehicle shop data
registerCallback(TriggerName("getVehicleData"), function(source, cb)
    cb(listedVehicles)
end)

--- This will buy a vehicle
registerCallback(TriggerName("buyThisVehicle"), function(source, cb, table, toBuy, changePrice)
    local plate = table.plate
    local data = table.data
    local type = table.type
    local job = table.job
    local order = table.order
    local id = table.id
    local oldCategory = table.category
    local category = data.vehicle.category
    local labelVehicle = table.labelVehicle
    local vehicleProperties = table.vehicleProperties
    local paymenType = table.paymenType
    local oldModel = table.oldModel
    local countBuy = table.countBuy
    local source_ = source
    local vehicle = data.vehicle
    local price = vehicle.price
    local modelName

    local society

    if id then
        if Config.ShopList[id] then
            if Config.Framework == "1" then
                society = Config.ShopList[id].Society
            end

            if Config.Framework == "2" then
                society = Config.ShopList[id].Job
            end
        end

        if Config.BossMarkerList[id] then
            if Config.Framework == "1" then
                society = Config.BossMarkerList[id].Society
            end

            if Config.Framework == "2" then
                society = Config.BossMarkerList[id].Job
            end
        end
    end

    if table.TryOut then
        if Config.CostForTryOut == 0 then
            cb(true)
        else
            local data = Config.CategoryVehiclePriceTestDrive[category] or {}
            local newTestPrice = data[vehicle.model] or (Config.CategoryPriceTestDrive[category] or Config.CostForTryOut)
            cb(PayWithType("cash", source, newTestPrice, society, job))
        end
        return
    end

    if table.displayVehicle == true then
        TriggerEvent(TriggerName("OnDisplayVehicleChange"), {
            source = source,
            category = vehicle.category,
            oldCategory = oldCategory,
            model = vehicle.model,
            oldModel = oldModel,
            job = job,
            index = table.index
        })
        cb("close")
        return
    end

    -- this will change vehicle price
    if changePrice ~= 0 then
        TriggerEvent(TriggerName("OnUpdatePrice"), {
            source = source,
            category = category,
            model = vehicle.model,
            price = changePrice,
            job = job,
        })
        ChangeVehiclePrice(job, order, vehicle, changePrice, category)
        return
    end

    -- this will call a function that will add +1 in cache and other stuff
    if toBuy == false then
        TriggerEvent(TriggerName("OnBuyStock"), {
            source = source,
            category = category,
            model = vehicle.model,
            job = job,
            count = countBuy,
        })

        cb(AddVehicleToTheStock(source, price * countBuy, job, order, vehicle, category, paymenType, society, true, countBuy))
        return
    end

    -- if the vehicle exists it will update its price if someone trying to epxloit it.
    for k, v in pairs(listedVehicles[job][order].vehicle) do
        if v.limit and v.model == vehicle.model and v.category == category then
            price = v.price
            modelName = v.modelName
            break
        end
    end

    -- will fetch us model name
    for k, v in pairs(listedVehicles[job][order].vehicle) do
        if v.model == vehicle.model and v.category == category then
            modelName = v.modelName
            break
        end
    end

    if paymenType == "vip" then
        price = data.vehicle.vip_price
    end

    -- if the price is not negative number, because if it is. Its more likely exploit.
    if price >= -1 and paymenType ~= "society" then
        if PayWithType(paymenType, source, price, society, job) then
            TakeVehicleFromStock(job, order, vehicle, category)

            vehicle = deepCopy(vehicle)
            vehicle.price = nil
            vehicle.key = nil
            vehicle.order = nil
            vehicle.plate = plate
            vehicle.limit = nil
            vehicle.category = nil
            vehicle.modelEx = nil

            if vehicleProperties and vehicleProperties.plate then
                vehicleProperties.plate = nil
            end

            if vehicleProperties and vehicleProperties.model then
                vehicleProperties.model = nil
            end

            if not vehicleProperties then
                vehicleProperties = {}
            end

            vehicle = tableMerge(vehicleProperties, vehicle)
            vehicle.label = labelVehicle
            if id then
                CallEventsForBoughtVehicle(source, vehicle, job, society, type, modelName, category, price, paymenType)
            end
            cb(true)
        else
            cb(false, paymenType)
        end
    end
end)