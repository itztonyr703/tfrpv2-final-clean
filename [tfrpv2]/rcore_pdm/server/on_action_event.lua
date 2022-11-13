---------------------------------------------------------------
-- Events
---------------------------------------------------------------
-- will save the vehicle to the database.
AddEventHandler(TriggerName("OnBuyVehicleAction"), function(data)
    local xPlayer = ESX.GetPlayerFromId(data.PlayerID)
    data.vehicle.modelName = nil

    if Config.Framework == QB then
        local sql, license

        if Config.QBCoreIdentifierType == "1" then
            license = xPlayer.license
            sql = 'INSERT INTO player_vehicles (license, citizenid, plate, mods, state, vehicle, hash, type) VALUES (@license, @citizenid, @plate, @mods, @state, @vehicle, @hash, @type)'
            if Config.OldQbDiving and data.type == "boat" then
                sql = "INSERT INTO player_boats (citizenid, model, plate) VALUES (@citizenid, @vehicle, @plate)"
            end
        end

        if Config.QBCoreIdentifierType == "2" then
            license = xPlayer.steam
            sql = 'INSERT INTO player_vehicles (steam, citizenid, plate, mods, state, vehicle, hash, type) VALUES (@license, @citizenid, @plate, @mods, @state, @vehicle, @hash, @type)'
            if Config.OldQbDiving and data.type == "boat" then
                sql = "INSERT INTO player_boats (citizenid, model, plate) VALUES (@citizenid, @vehicle, @plate)"
            end
        end

        MySQL.Async.execute(sql, {
            ['@license'] = license,
            ['@citizenid'] = xPlayer.identifier,
            ['@plate'] = data.vehicle.plate,
            ['@mods'] = json.encode(data.vehicle),
            ["@state"] = 0,
            ['@type'] = data.type,
            ["@vehicle"] = data.modelName,
            ["@hash"] = data.vehicle.model,
        })
    end

    if Config.Framework == ES then
        MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, job, `stored`) VALUES (@owner, @plate, @vehicle, @type, @job, @stored)', {
            ['@owner'] = xPlayer.identifier,
            ['@plate'] = data.vehicle.plate,
            ['@vehicle'] = json.encode(data.vehicle),
            ['@type'] = data.type,
            ['@job'] = Config.DefaultJob,
            ['@stored'] = false,
        })
    end

    MySQL.Async.execute('INSERT INTO history_vehicle_bought (model, price, plate, type, job, identifier) VALUES (@model, @price, @plate, @type, @job, @identifier)', {
        ['@model'] = data.vehicle.model,
        ['@plate'] = data.vehicle.plate,
        ['@price'] = data.price,
        ['@type'] = data.moneyType,
        ['@job'] = data.job,
        ['@identifier'] = xPlayer.identifier,
    })

    if DisplayedVehicles[data.job] then
        local found = false
        for k, v in pairs(DisplayedVehicles[data.job]) do
            if v.model == data.vehicle.model and (data.category == GetCategoryIdentifierByName(data.job, v.category) or data.category == v.category) and v.instock then
                v.instock = v.instock - 1
                found = true
                break
            end
        end

        if found then
            TriggerEvent(TriggerName("UpdateDisplayedVehicles"))
        end
    end
end)

-- Will change a displayed vehicle
AddEventHandler(TriggerName("OnDisplayVehicleChange"), function(data)
    if DisplayedVehicles[data.job] then
        local found = false
        if data.oldModel == nil then
            MySQL.Sync.execute('INSERT INTO vehiclesdisplayed (category, model, `index`, job) VALUES (@category, @model, @index, @job)', {
                ['@category'] = data.category,
                ['@model'] = data.model,
                ['@index'] = data.index,
                ['@job'] = data.job,
            })

            loadDisplayedVehicles()
            TriggerEvent(TriggerName("UpdateDisplayedVehicles"))
        else
            for k, v in pairs(DisplayedVehicles[data.job]) do
                if data.oldModel == v.model and data.oldCategory == v.category then
                    local filter = {
                        ['@category'] = data.category,
                        ['@job'] = data.job,
                    }
                    local result = MySQL.Sync.fetchAll('SELECT * FROM `vehicles_to_buy` WHERE category = @category AND job = @job', filter)
                    for key, value in pairs(result) do
                        if GetHashKey(value.model) == data.model then
                            v.category = value.category
                            v.price = value.price
                            v.instock = value.instock
                            v.name = value.name
                            v.model = data.model

                            MySQL.Async.fetchAll('SELECT * FROM vehiclesdisplayed', {}, function(resultVehDis)
                                for _, vehVal in pairs(resultVehDis) do
                                    local mod

                                    if tonumber(vehVal.model) ~= nil then
                                        mod = tonumber(vehVal.model)
                                    else
                                        mod = GetHashKey(vehVal.model)
                                    end
                                    if (vehVal.category == GetCategoryIdentifierByName(data.job, data.oldCategory) or vehVal.category == data.oldCategory) and (mod == data.oldModel or mod == GetHashKey(data.oldModel)) then
                                        MySQL.Async.execute('UPDATE vehiclesdisplayed SET model = @newModel, category = @newCategory WHERE model = @model AND category = @category AND job = @job AND `index` = @index', {
                                            ['@newModel'] = v.model,
                                            ['@newCategory'] = v.category,
                                            ['@model'] = vehVal.model,
                                            ['@job'] = data.job,
                                            ['@category'] = vehVal.category,
                                            ['@index'] = data.index,
                                        })
                                        break
                                    end
                                end
                            end)
                            break
                        end
                    end
                    found = true
                    break
                end
            end
        end
        if found then
            TriggerEvent(TriggerName("UpdateDisplayedVehicles"))
        end
    end
end)

-- will save the vehicle to the database.
AddEventHandler(TriggerName("OnUpdatePrice"), function(data)
    if DisplayedVehicles[data.job] then
        local found = false
        for k, v in pairs(DisplayedVehicles[data.job]) do
            if v.model == data.model and (data.category == GetCategoryIdentifierByName(data.job, v.category) or data.category == v.category) then
                v.price = data.price
                found = true
                break
            end
        end

        if found then
            TriggerEvent(TriggerName("UpdateDisplayedVehicles"))
        end
    end
end)

-- will save the vehicle to the database.
AddEventHandler(TriggerName("OnBuyStock"), function(data)
    if DisplayedVehicles[data.job] then
        local found = false
        for k, v in pairs(DisplayedVehicles[data.job]) do
            if v.model == data.model and (data.category == GetCategoryIdentifierByName(data.job, v.category) or data.category == v.category) then
                v.instock = v.instock + data.count
                found = true
                break
            end
        end

        if found then
            TriggerEvent(TriggerName("UpdateDisplayedVehicles"))
        end
    end
end)