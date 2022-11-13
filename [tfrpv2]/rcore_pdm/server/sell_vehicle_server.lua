function GivePlayerMoney(source, money, type)
    local xPlayer = ESX.GetPlayerFromId(source)

    if type == "cash" then
        xPlayer.addMoney(money)
        return true
    end

    if type == "bank" then
        xPlayer.addAccountMoney('bank', money)
        return true
    end
end


registerCallback(TriggerName("GetVehicleHistoryInfo"), function(source, cb, plate, job)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM history_vehicle_bought WHERE plate = @plate AND identifier = @identifier AND job = @job', {
        ["@plate"] = plate,
        ["@identifier"] = xPlayer.identifier,
        ["@job"] = job,
    }, function(data)
        if #data == 0 then
            cb(false)
        else
            if data[1].type == "vip" then
                cb(3)
            else
                cb(true, data[1].price)
            end
        end
    end)
end)

local fix = {}
registerCallback(TriggerName("SellThisVehicle"), function(source, cb, plate, type, job)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM history_vehicle_bought WHERE plate = @plate AND identifier = @identifier AND job = @job', {
        ["@plate"] = plate,
        ["@identifier"] = xPlayer.identifier,
        ["@job"] = job,
    }, function(data)
        if #data ~= 0 then
            if fix[plate] then
                return
            end
            fix[plate] = true
            if Config.Framework == ES then
                MySQL.Async.execute("DELETE FROM owned_vehicles WHERE plate = @plate AND owner = @owner", { ["@plate"] = plate, ["@owner"] = xPlayer.identifier, })
            end

            if Config.Framework == QB then
                MySQL.Async.execute("DELETE FROM player_vehicles WHERE plate = @plate AND citizenid = @citizenid", { ["@plate"] = plate, ["@citizenid"] = xPlayer.identifier, })
            end
            GivePlayerMoney(source, data[1].price * (Config.SellVehicleFeePercent / 100), type)

            cb(true)
        else
            cb(false)
        end
    end)
end)
