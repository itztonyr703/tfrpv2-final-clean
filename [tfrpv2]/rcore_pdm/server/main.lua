---------------------------------------------------------------
-- Variable list
---------------------------------------------------------------
CategoriesName = {}
CachedVehiclesToRemove = {}
DisplayedVehicles = nil

---------------------------------------------------------------
-- Functions
---------------------------------------------------------------
-- @param job string
-- @param identifier string
-- This is called whenever user have bought a vehicle.
function GetCategoryIdentifierByName(job, identifier)
    for k, v in pairs(CategoriesName[job]) do
        if v == identifier then
            return k
        end
    end
end

-- @param source integer
-- @param vehicle table
-- @param job string
-- @param society string
-- @param type string
-- This is called whenever user have bought a vehicle.
function CallEventsForBoughtVehicle(source, vehicle, job, society, type, model, category, price, moneyType)
    TriggerEvent(TriggerName("OnBuyVehicleAction"), {
        PlayerID = source,
        vehicle = vehicle,
        model = vehicle.model,
        modelName = model,
        job = job,
        society = society,
        type = type,
        category = category,
        price = price,
        moneyType = moneyType,
    })
    TriggerClientEvent(TriggerName("OnBuyVehicleAction"), source, {
        vehicle = vehicle,
        job = job,
        society = society,
        type = type,
        model = vehicle.model,
        modelName = model,
        category = category,
    })
end

---------------------------------------------------------------
-- Events
---------------------------------------------------------------
-- Will remove the borrowed vehicle
RegisterNetEvent(TriggerName("DeleteVehicle"))
AddEventHandler(TriggerName("DeleteVehicle"), function(netID)
    if CachedVehiclesToRemove[netID] then
        CachedVehiclesToRemove[netID] = nil
        DeleteEntity(NetworkGetEntityFromNetworkId(netID))
    end
end)

-- Will save net ID to the cache
RegisterNetEvent(TriggerName("PutIntoCache"))
AddEventHandler(TriggerName("PutIntoCache"), function(NetID)
    CachedVehiclesToRemove[NetID] = true
end)

RegisterNetEvent(TriggerName("RemoveDisplayedVehicle"), function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == data.Job then
        if DisplayedVehicles[data.Job][data.index] then
            DisplayedVehicles[data.Job][data.index] = nil
            MySQL.Async.execute("DELETE FROM vehiclesdisplayed WHERE model = @model AND job = @job AND `index` = @index", {
                ['@index'] = data.index,
                ['@job'] = data.Job,
                ['@model'] = data.model,
            })
            TriggerClientEvent(TriggerName("UpdateDisplayedVehicles"), -1, DisplayedVehicles)
        end
    end
end)

--- Will call whenever player updated something about vehicles. Bought, etc.
RegisterNetEvent(TriggerName("UpdateDisplayedVehicles"))
AddEventHandler(TriggerName("UpdateDisplayedVehicles"), function(onlySender)
    local source = source
    local breakme = 0
    while not DisplayedVehiclesLoaded do
        Wait(333)

        breakme = breakme + 1
        if breakme == 10 then
            break
        end
    end

    if onlySender then
        TriggerClientEvent(TriggerName("UpdateDisplayedVehicles"), source, DisplayedVehicles)
    else
        TriggerClientEvent(TriggerName("UpdateDisplayedVehicles"), -1, DisplayedVehicles)
    end
end)

registerCallback(TriggerName("getPlateList"), function(source, cb)
    if Config.Framework == QB then
        MySQL.Async.fetchAll('SELECT * FROM player_vehicles', {}, function(result)
            local data = {}
            for i = 1, #result do
                data[result[i].plate] = true
            end
            cb(data)
        end)
    end

    if Config.Framework == ES then
        MySQL.Async.fetchAll('SELECT * FROM owned_vehicles', {}, function(result)
            local data = {}
            for i = 1, #result do
                data[result[i].plate] = true
            end
            cb(data)
        end)
    end
end)