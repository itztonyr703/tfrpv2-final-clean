local QBCore = exports['qb-core']:GetCoreObject()
RegisterNetEvent('QBCore:Server:UpdateObject', function() if source ~= '' then return false end QBCore = exports['qb-core']:GetCoreObject() end)

local DutyList = {}

AddEventHandler('onResourceStart', function(r) if GetCurrentResourceName() == r then TriggerEvent("jim-closedshops:server:makeList") end end)

QBCore.Commands.Add("closedstock", "Access Closed Shops Stock (Boss Only)", {}, false, function(source) TriggerClientEvent("jim-closedshops:Stash", source) end)

RegisterServerEvent("jim-closedshops:server:makeList", function()
	if Config.Debug then print("^5Debug^7: ^3makeList^7: ^2Creating fresh duty list^7") end
	for k in pairs(Config.Shops) do DutyList[tostring(k)] = false end
	for _, v in pairs(QBCore.Functions.GetPlayers()) do
		local Player = QBCore.Functions.GetPlayer(v)
		if Player then
			for l in pairs(Config.Shops) do
				if Player.PlayerData.job.name == l and Player.PlayerData.job.onduty then DutyList[tostring(l)] = true
				end end end end
end)

RegisterServerEvent("jim-closedshops:server:updatelist", function()
	TriggerEvent("jim-closedshops:server:makeList")
	if Config.Debug then print("^5Debug^7: ^3updatelist^7: ^2Updating players with refreshed duty list^7") end
	TriggerClientEvent("jim-closedshops:ForceList", -1, DutyList)
end)

QBCore.Functions.CreateCallback('jim-closedshops:requestlist', function(source, cb) cb(DutyList) end)

local function GetStashItems(stashId)
	local items = {}
	local result = MySQL.Sync.fetchScalar('SELECT items FROM stashitems WHERE stash = ?', {stashId})
	if result then
		local stashItems = json.decode(result)
		if stashItems then
			for k, item in pairs(stashItems) do
				local itemInfo = QBCore.Shared.Items[item.name:lower()]
				if itemInfo then
					items[item.slot] = {
						name = itemInfo["name"],
						amount = tonumber(item.amount),
						info = item.info ~= nil and item.info or "",
						label = itemInfo["label"],
						description = itemInfo["description"] ~= nil and itemInfo["description"] or "",
						weight = itemInfo["weight"],
						type = itemInfo["type"],
						unique = itemInfo["unique"],
						useable = itemInfo["useable"],
						image = itemInfo["image"],
						slot = item.slot,
					}
				end
			end
		end
	end
	return items
end

QBCore.Functions.CreateCallback('jim-closedshops:dutycheck', function(source, cb)
	local jobtable = {}
	for k, v in pairs(Config.Shops) do if v.enable then jobtable[tostring(k)] = false end end
	for _, id in pairs(QBCore.Functions.GetPlayers()) do
		local Player = QBCore.Functions.GetPlayer(id)
		if Player then
			for job in pairs(Config.Shops) do
				if Player.PlayerData.job.name == job and Player.PlayerData.job.onduty then
					jobtable[tostring(job)] = true
				end
			end
		end
	end
	if Config.Debug then print("^5Debug^7: ^dutycheck: ^6"..json.encode(jobtable).."^7") end
	cb(jobtable)
end)

RegisterServerEvent('jim-closedshops:GetItem', function(amount, billtype, item, name, price, job)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local stashItems = GetStashItems("closedStock_"..job)
	if Config.Debug then print("^5Debug^7: ^3GetItem^7: ^2Retrieving stash info^7: ['^6closedStock_"..job.."^7']") end
	--Inventory space checks
	local totalWeight = QBCore.Player.GetTotalWeight(Player.PlayerData.items)
    local maxWeight = 120000
	local balance = Player.Functions.GetMoney(tostring(billtype))
	if (totalWeight + (QBCore.Shared.Items[item].weight * amount)) > maxWeight then	triggerNotify(nil, "Not enough space in inventory", "error", src)
	else
		--Money checks
		if balance >= (tonumber(price) * tonumber(amount)) then
			local cost = (tonumber(price) * tonumber(amount))
			Player.Functions.RemoveMoney(tostring(billtype), (tonumber(price) * tonumber(amount)), 'ticket-payment')
			if Config.Manage then exports["qb-management"]:AddMoney(tostring(job), cost - (cost * 0.15))
				if Config.Debug then print("^5Debug^7: ^3QB^7-^3Management^7(^3Job^7): ^2Adding $^6"..(cost - (cost * 0.15)).." ^2to account ^7'^6"..tostring(job).."^7'") end
			end
			if not Config.Manage then TriggerEvent("qb-bossmenu:server:addAccountMoney", tostring(job), cost - (cost * 0.15))
				if Config.Debug then print("^5Debug^7: ^3QB^7-^3BossMenu^7: ^2Adding $^6"..(cost - (cost * 0.15)).." ^2to account ^7'^6"..tostring(job).."^7'") end
			end
		else
			triggerNotify(nil, "Not enough money", "error", src) return end
			Player.Functions.AddItem(item, amount)
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add", amount)
			TriggerEvent("qb-log:server:CreateLog", "shops", "Purchase from "..job.." (ClosedShop) store", "blue","**" .. GetPlayerName(src) .. "**" .. " Purchased '**"..item.."**' x**"..amount.."** for a total of $**"..(tonumber(price) * tonumber(amount)).."** with **"..billtype.."**")
		--Update Boss Stash
		for k, v in pairs(stashItems) do
			if v.name == item then
				if (stashItems[k].amount - amount) <= 0 then stashItems[k] = nil else stashItems[k].amount = stashItems[k].amount - amount end
				TriggerEvent("qb-log:server:CreateLog", "stash", "Update Stash closedStock_"..job, "blue","**" .. GetPlayerName(src) .. "**" .. " Removed '**"..item.."**' x**"..amount.."**")
				TriggerEvent('jim-closedshops:server:SaveStashItems', "closedStock_"..job, stashItems) break
			end
		end
	end

	local data = { stash = job, }
	TriggerClientEvent('jim-closedshops:ShopMenu', src, data)
end)

QBCore.Functions.CreateCallback('jim-closedshops:server:GetStashItems', function(source, cb, stashId) cb(GetStashItems(stashId)) end)
RegisterNetEvent('jim-closedshops:server:SaveStashItems', function(stashId, items) MySQL.Async.insert('INSERT INTO stashitems (stash, items) VALUES (:stash, :items) ON DUPLICATE KEY UPDATE items = :items', { ['stash'] = stashId, ['items'] = json.encode(items) }) end)