--- @param type string
--- @param source integer
--- @param money integer
--- @param society string
--- This will be called whenever someone want to pay on something
function PayWithType(type, source, money, society, job)
    local xPlayer = ESX.GetPlayerFromId(source)
    if type == "vip" then
        local xItem = xPlayer.getInventoryItem("bitcoin")

        if xItem and xItem.count >= money then
            xPlayer.removeInventoryItem("bitcoin", money)
            return true
        end
        return false
    end

    if type == "society" then
        if society == nil then
            return false
        end

        local result = nil
        local breakMe = 0

        if Config.Framework == QB then
            local promise = promise:new()

            xpcall(function()
                local societyMoney = exports["qb-bossmenu"]:GetAccount(job)
                if societyMoney >= money then
                    TriggerEvent("qb-bossmenu:server:removeAccountMoney", job, money)
                    result = true
                else
                    result = false
                end

                promise:resolve(result)
            end, function(error)
                local societyMoney = exports["qb-management"]:GetAccount(job)
                if societyMoney >= money then
                    exports["qb-management"]:RemoveMoney(job, money)
                    result = true
                else
                    result = false
                end

                promise:resolve(result)
            end)

            Citizen.Await(promise)
        end

        if Config.Framework == ES then
            TriggerEvent('esx_addonaccount:getSharedAccount', society, function(account)
                if account then
                    if account.money >= money then
                        account.removeMoney(money)
                        result = true
                    else
                        result = false
                    end
                else
                    print(string.format("^1[%s][ERROR]^7 Society ^1'%s'^7 do not exists!", GetCurrentResourceName(), society))
                    result = true
                end
            end)
        end

        while result == nil do
            Wait(16)
            breakMe = breakMe + 1
            if breakMe == 16 * 3 then
                return false
            end
        end

        return result
    end

    if type == "cash" then
        if xPlayer.getMoney() >= money then
            if society then
                local moneyToGive = math.floor(money * (Config.HowManyPercentGoesToSocity / 100))

                xpcall(function()
                    exports["qb-management"]:AddMoney(job, moneyToGive)
                end, function(error)
                    TriggerEvent("qb-bossmenu:server:addAccountMoney", society, moneyToGive)
                end)

                TriggerEvent('esx_addonaccount:getSharedAccount', society, function(account)
                    if account then
                        account.addMoney(moneyToGive)
                    else
                        print(string.format("^1[%s][ERROR]^7 Society ^1'%s'^7 do not exists!", GetCurrentResourceName(), society))
                    end
                end)
            end
            xPlayer.removeMoney(money)
            return true
        end
    end

    if type == "bank" then
        if xPlayer.getAccount('bank').money >= money then
            if society then
                local moneyToGive = math.floor(money * (Config.HowManyPercentGoesToSocity / 100))

                xpcall(function()
                    exports["qb-management"]:AddMoney(job, moneyToGive)
                end, function(error)
                    TriggerEvent("qb-bossmenu:server:addAccountMoney", society, moneyToGive)
                end)

                TriggerEvent('esx_addonaccount:getSharedAccount', society, function(account)
                    if account then
                        account.addMoney(moneyToGive)
                    else
                        print(string.format("^1[%s][ERROR]^7 Society ^1'%s'^7 do not exists!", GetCurrentResourceName(), society))
                    end
                end)
            end
            xPlayer.removeAccountMoney('bank', money)
            return true
        end
    end
    return false
end