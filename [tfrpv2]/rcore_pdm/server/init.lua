---------------------------------------------------------------
-- Variable list
---------------------------------------------------------------
ESX = nil
QBCore = nil

if Config.Framework == QB then
    QBCore = Config.GetQBCoreObject()
    ESX = {}

    RegisterCommand("qbcorecreatecategoryDB", function(source, args, rawCommand)
        local cat = {}

        if source == 0 then
            local _savedCats = MySQL.Sync.fetchAll('SELECT * FROM `categories_vehicles`')

            local savedCats = {}
            for k, v in pairs(_savedCats) do
                savedCats[v.name] = true
            end

            local data = QBCore.Shared.Vehicles

            for key, val in pairs(data) do
                if not cat[val.category] then
                    cat[val.category] = true
                    print("Adding a new category", val.category)
                end
            end

            local max = MySQL.Sync.fetchScalar("SELECT MAX(`order`) FROM categories_vehicles WHERE job = 'dealer'", {}) or 0

            for k, v in pairs(cat) do
                if not savedCats[k] then
                    max = max + 1
                    print("Creating new cat in DB", k)
                    MySQL.Sync.execute([[
                        INSERT INTO `categories_vehicles`
                        (`name`, `label`, `order`, `model`, `job`)
                        VALUES (@cat, @cat, @order, 'police', 'dealer')
                    ]],
                        {
                            ["@order"] = max,
                            ["@cat"] = k,
                        })
                else
                    print("skipping existing category", k)
                end
                Wait(33)
            end

            print("Command have been performed succesfully.")
        end
    end, false)


    RegisterCommand("qbcorecreatevehiclesDB", function(source, args, rawCommand)
        if source == 0 then
            local res = MySQL.Sync.fetchAll('SELECT * FROM `vehicles_to_buy`')
            local data = QBCore.Shared.Vehicles

            for key, val in pairs(data) do
                local write = true
                for k, v in pairs(res) do
                    if val.model == v.model then
                        write = false
                        data[key] = nil
                        break
                    end
                end

                if write then
                    print(val.model, val.price)
                    MySQL.Sync.execute([[
                        INSERT INTO `vehicles_to_buy` (`model`, `price`, `category`, `job`)
                        VALUES (@model, @price, @category, 'dealer')
                    ]],
                        {
                            ["@model"] = val.model,
                            ["@price"] = val.price or 0,
                            ["@category"] = val.category,
                        })
                    Wait(33)
                end
            end

            print("Command have been performed succesfully.")
        end
    end, false)

    RegisterCommand("pdmgeneratevehicles", function(source, args, rawCommand)
        if source == 0 then
            os.remove('missing_vehicles.js')
            local file = io.open('missing_vehicles.js', 'a')

            local res = MySQL.Sync.fetchAll('SELECT * FROM `vehicles_to_buy`')

            local ignore = {}
            local data = QBCore.Shared.Vehicles

            for key, val in pairs(res) do
                local write = true
                for k, v in pairs(data) do
                    if GetHashKey(val.model) == v.hash then
                        write = false
                        ignore[val.model] = true
                        data[k] = nil
                        break
                    end
                end

                if write and not ignore[val.model] then
                    print("Founded missing model with name: ", val.model)
                    file:write(string.format([[
                ['%s'] = {
                    ['name'] = '%s',
                    ['brand'] = 'TBS',
                    ['model'] = '%s',
                    ['price'] = %i,
                    ['category'] = '%s',
                    ['hash'] = %s,
                    ['shop'] = 'pdm',
                },
            ]], val.model, val.model, val.model, val.price, val.category, GetHashKey(val.model)))
                end
            end

            file:close()
            print("Command have been performed succesfully.")
        end
    end, false)

    ESX.RegisterUsableItem = function(itemName, callBack)
        QBCore.Functions.CreateUseableItem(itemName, callBack)
    end

    ESX.GetPlayerFromId = function(source)
        local xPlayer = {}
        local qbPlayer = QBCore.Functions.GetPlayer(source)
        ---------
        xPlayer.identifier = qbPlayer.PlayerData.citizenid
        ---------
        xPlayer.license = qbPlayer.PlayerData.license
        ---------
        xPlayer.job = {
            name = qbPlayer.PlayerData.job.name,
            label = qbPlayer.PlayerData.job.label,
            grade = {
                name = qbPlayer.PlayerData.job.grade.name or "none",
                level = qbPlayer.PlayerData.job.grade.level or -1,
            },
        }
        ---------
        xPlayer.getMoney = function()
            return qbPlayer.Functions.GetMoney("cash")
        end
        ---------
        xPlayer.getAccount = function(type)
            return {
                money = qbPlayer.Functions.GetMoney(type) or 0
            }
        end
        ---------
        xPlayer.addMoney = function(money)
            qbPlayer.Functions.AddMoney("cash", money)
        end
        ---------
        xPlayer.addAccountMoney = function(type, money)
            if type == "money" then
                type = "cash"
            end
            qbPlayer.Functions.AddMoney(type, money)
        end
        ---------
        xPlayer.removeAccountMoney = function(type, money)
            qbPlayer.Functions.RemoveMoney(type, money)
        end
        ---------
        xPlayer.removeMoney = function(money)
            qbPlayer.Functions.RemoveMoney("cash", money)
        end
        ---------
        xPlayer.removeInventoryItem = function(itemName, count)
            qbPlayer.Functions.RemoveItem(itemName, count)
        end
        ---------
        xPlayer.canCarryItem = function(itemName, count)
            local item = qbPlayer.Functions.GetItemByName(itemName) or {}
            local ItemInfo = {
                name = itemName,
                count = item.amount or 0,
                label = item.label or "none",
                weight = item.weight or 0,
                usable = item.useable or false,
                rare = false,
                canRemove = false,
            }

            local totalWeight = QBCore.Player.GetTotalWeight(qbPlayer.PlayerData.items)
            return (totalWeight + (ItemInfo.weight * count)) <= QBCore.Config.Player.MaxWeight
        end
        ---------
        xPlayer.addInventoryItem = function(itemName, count)
            qbPlayer.Functions.AddItem(itemName, count, false)
        end
        ---------
        xPlayer.getInventoryItem = function(itemName)
            local item = qbPlayer.Functions.GetItemByName(itemName) or {}

            local ItemInfo = {
                name = itemName,
                count = item.amount or 0,
                label = item.label or "none",
                weight = item.weight or 0,
                usable = item.useable or false,
                rare = false,
                canRemove = false,
            }
            return ItemInfo
        end
        ---------

        return xPlayer
    end
end

---------------------------------------------------------------
-- One time init
---------------------------------------------------------------
-- will load ESX module into variable
if Config.Framework == ES then
    TriggerEvent(Config.ESX, function(obj) ESX = obj end)

    CreateThread(function()
        local tableAccoun = MySQL.Sync.fetchAll("SELECT * FROM `addon_account`", {})

        for key, value in pairs(Config.BossMarkerList) do
            local insert = true
            for k, v in pairs(tableAccoun) do
                if v.name == value.Society then
                    insert = false
                    break
                end
            end

            if insert then
                print("^1[======================]")
                for i = 0, 5 do
                    print(string.format("^1[%s][Warning!]^7 Society ^1'%s'^7 has been created in mysql! The server need to be restarted in order the addon account work properly!", GetCurrentResourceName(), value.Society))
                end
                print("^1[======================]")
                MySQL.Sync.execute([[ INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES (@name, @name, '1') ]], {
                    ["@name"] = value.Society,
                })
            end
        end
    end)
    for k, v in pairs(Config.BossMarkerList) do
        TriggerEvent("esx_society:registerSociety", v.Society, v.SocietyLabel, v.Society, v.Society, v.Society)
    end
end