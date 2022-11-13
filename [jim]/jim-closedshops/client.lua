local QBCore = exports['qb-core']:GetCoreObject()
RegisterNetEvent('QBCore:Client:UpdateObject', function() QBCore = exports['qb-core']:GetCoreObject() end)

PlayerJob = {}
local bossroles = {}
local DutyList = {}
Peds = {}
Props = {}
Targets = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job end)
	if Config.Debug then print("^5Debug^7: ^3OnPlayerLoaded^7: ^2Grabbing new duty list from server") end
	local p = promise.new() QBCore.Functions.TriggerCallback('jim-closedshops:requestlist', function(cb) p:resolve(cb) end)
	TriggerEvent("jim-closedshops:ForceList", Citizen.Await(p))
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
	for k, v in pairs(Config.Shops) do exports['qb-target']:RemoveZone("ClosedShop-['"..k.."']") end
	for _, v in pairs(Props) do unloadModel(GetEntityModel(v)) DeleteEntity(v) end
	for _, v in pairs(Peds) do unloadModel(GetEntityModel(v)) DeletePed(v) end
	TriggerServerEvent("jim-closedshops:server:updatelist")
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)	PlayerJob = JobInfo
	if Config.Debug then print("^5Debug^7: ^3OnJobUpdate^7: ^2Sending job and duty update to server ^7['^6"..PlayerJob.name.."^7'] = ^6"..tostring(PlayerJob.onduty)) end
	TriggerServerEvent("jim-closedshops:server:updatelist")
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty
	Wait(1000)
	if Config.Debug then print("^5Debug^7: ^3SetDuty^7: ^2Sending duty change to server") end
	TriggerServerEvent("jim-closedshops:server:updatelist")
end)

AddEventHandler('onResourceStart', function(r) if GetCurrentResourceName() ~= r then return end
	QBCore.Functions.GetPlayerData(function(PlayerData)	PlayerJob = PlayerData.job end)
	if Config.Debug then print("^5Debug^7: ^3onResourceStart^7: ^2Sending duty update to server ^7['^6"..PlayerJob.name.."^7'] = ^6"..tostring(PlayerJob.onduty)) end
	TriggerServerEvent("jim-closedshops:server:updatelist")
end)

RegisterNetEvent("jim-closedshops:ForceList", function(newList)
	if not LocalPlayer.state.isLoggedIn then return end
	local needupdate = false
	for k, v in pairs(newList) do
		if v ~= DutyList[k] then
			if Config.Debug then print("^5Debug^7: ^4DutyList^7[^6"..k.."^7] ^2changing to^7: '^6"..tostring(v).."^7'") end
			DutyList[k] = v
			needupdate = true
		end
	end
	if needupdate then
		if Config.Debug then print("^5Debug^7: ^3ForceList^7: ^2Recieved Updated Duty List from server and updating ped/prop spawns") end
		for k, v in pairs(Config.Shops) do
			if QBCore.Shared.Jobs[k] then
				if v.enable then
					if DutyList[tostring(k)] then
						if Peds[k] or Props[k] then
							exports['qb-target']:RemoveZone("ClosedShop-['"..k.."']")
							DeletePed(Peds[k]) Peds[k] = nil
							DeleteEntity(Props[k]) Props[k] = nil
							Targets[k] = nil
						end
					elseif not DutyList[tostring(k)] then
						if v.ped then
							if Peds[k] == nil then
								DeletePed(Peds[k])
								Peds[k] = makePed(v.ped, v.location, 1, false) SetEntityInvincible(Peds[k], true) end
							if not Targets[k] then
								Targets[k] =
									exports['qb-target']:AddBoxZone("ClosedShop-['"..k.."']", v.location.xyz, 0.6, 0.7,
										{ name="ClosedShop-['"..k.."']", heading = v.location[4], debugPoly=Config.Debug, minZ=v.location.z-0.9, maxZ=v.location.z+0.8 },
										{ options = {
											{ event = "jim-closedshops:ShopMenu", icon = "fas fa-shop", label = "Browse Shop", stash = k, ped = Peds[k] },
											}, distance = 2.0 })
							end
						elseif v.prop then
							if Props[k] == nil then	Props[k] = makeProp({prop = v.prop, coords = vector4(Config.Shops[k].location.x, Config.Shops[k].location.y, Config.Shops[k].location.z, Config.Shops[k].location.w+180.0)}, 1, 1) end
							if not Targets[k] then
								Targets[k] =
									exports['qb-target']:AddBoxZone("ClosedShop-['"..k.."']", v.location.xyz, 1.0, 2.0,
									{ name="ClosedShop-['"..k.."']", heading = v.location.w, debugPoly=Config.Debug, minZ=v.location.z-0.9, maxZ=v.location.z+0.8 },
									{ options = {
										{ event = "jim-closedshops:ShopMenu", icon = "fas fa-shop", label = "Browse Shop", stash = k, ped = Props[k] },
										}, distance = 2.0 })
							end
						end
					end
				end
			end
		end
	end
end)

RegisterNetEvent('jim-closedshops:ShopMenu', function(data)
	lookEnt(data.ped)
	local p = promise.new() QBCore.Functions.TriggerCallback('jim-closedshops:server:GetStashItems', function(cb) p:resolve(cb) end, "closedStock_"..data.stash)
	local StashItems = Citizen.Await(p)
	if Config.Debug then print("^5Debug^7: ^2Retrieving stash info^7: ['^6closedStock_"..data.stash.."^7']") end
	local item = false

	local ShopMenu = {}
	local ShopBuild = {}
	ShopMenu[#ShopMenu + 1] = { icon = "fas fa-shop", header = QBCore.Shared.Jobs[data.stash].label, isMenuHeader = true }
	ShopMenu[#ShopMenu + 1] = { icon = "fas fa-circle-xmark", header = "", txt = "Close", params = { event = "jim-shops:CloseMenu" } }
	if PlayerJob.name == data.stash and PlayerJob.isboss then
		ShopMenu[#ShopMenu + 1] = { icon = "fas fa-boxes-stacked", header = "Access Stock", txt = "Boss accessible only", params = { event = "jim-closedshops:Stash" , args = data } }
	end
	for _, v in pairs(StashItems) do
		--if http is not found in the link, adjust it to look for nui link, otherwise just leave it as it is
		if not ShopBuild[v.name] then ShopBuild[v.name] = { name = v.name, image = v.image, label = v.label, amount = v.amount }
		elseif ShopBuild[v.name] then ShopBuild[v.name].amount = ShopBuild[v.name].amount + v.amount end
	end
	for _, v in pairs(ShopBuild) do
		if Config.Shops[data.stash].itemlist[v.name] then
			if QBCore.Shared.Items[v.name] then
				local text = "Available: x"..v.amount.."<br>Cost: $"..Config.Shops[data.stash].itemlist[v.name]
				ShopMenu[#ShopMenu + 1] = { icon = v.name, header = v.label, txt = text, params = { event = "jim-closedshops:Charge",
				args = { item = v.name, stash = data.stash, cost = Config.Shops[data.stash].itemlist[v.name], max = v.amount } } }
				text, setheader = nil
			else print("^5Debug^7: ^1Can't ^2create menu entry^7: '^6"..v.name.."^7' - ^2Not found in ^4items^7.^4lua") end
		end
	end
	for k in pairs(Config.Shops[data.stash].itemlist) do for _, b in pairs(StashItems) do if b.name == k then item = true end end end
	if not item then ShopMenu[#ShopMenu + 1] = { isMenuHeader = true, header = "Shop Closed, out of stock", txt = "", params = { event = "jim-shops:CloseMenu" } }	end
	exports['qb-menu']:openMenu(ShopMenu)
end)

RegisterNetEvent('jim-closedshops:Stash', function(data)
	local jobstash = nil if not data then jobstash = PlayerJob.name else jobstash = data.stash lookEnt(data.ped) end
	if #(GetEntityCoords(PlayerPedId())	- Config.Shops[jobstash].location.xyz) <= 5.0 then
		if PlayerJob.isboss then
			if Config.Shops[jobstash].NoLimitStash then TriggerServerEvent("inventory:server:OpenInventory", "stash", "closedStock_"..jobstash, { maxweight = 4000000, slots = 100, })
			else TriggerServerEvent("inventory:server:OpenInventory", "stash", "closedStock_"..jobstash, { maxweight = 4000000, slots = countTable(Config.Shops[jobstash].itemlist), })	end
			TriggerEvent("inventory:client:SetCurrentStash", "closedStock_"..jobstash)
		else triggerNotify(nil, "You don't have access to this command", "error") return end
	else triggerNotify(nil, "Too far away from your closed shop", "error") return end
end)

RegisterNetEvent('jim-closedshops:Charge', function(data)
	local settext = "- Confirm Purchase -<br><br>Available: "..data.max.."<br> Cost per item: $"..data.cost.."<br><br>- Payment Type -"
	local input = {}

	input[#input+1] = { type = 'radio', name = 'billtype', text = settext, options = { { value = "cash", text = "Cash" }, { value = "bank", text = "Card" } } }

	if not QBCore.Shared.Items[data.item].unique then input[#input+1] = { type = 'number', isRequired = true, name = 'amount', text = 'Amount to buy' }	end

	local img = QBCore.Shared.Items[data.item].image
	if string.find(img, "http") then else img = "nui://"..Config.img..img end
	local dialog = exports['qb-input']:ShowInput(
	{ header = "<center><p><img src="..img.." width=100px onerror='this.onerror=null; this.remove();'></p>"..QBCore.Shared.Items[data.item].label, submitText = "Pay",
	inputs = input })

	if dialog then
		if QBCore.Shared.Items[data.item].unique then dialog.amount = 1 end
		if not dialog.amount then return end
		local amo = dialog.amount if string.find(tostring(amo), "-") then amo = string.gsub(tostring(amo), "-", "") dialog.amount = tonumber(amo) end
		if tonumber(dialog.amount) > tonumber(data.max) then TriggerEvent("jim-closedshops:Charge", data) triggerNotify(nil, "Not enough stock", "error") return else
			TriggerServerEvent('jim-closedshops:GetItem', dialog.amount, dialog.billtype, data.item, data.name, data.cost, data.stash)
			loadAnimDict('amb@prop_human_atm@male@enter')
			TaskPlayAnim(PlayerPedId(), 'amb@prop_human_atm@male@enter', "enter", 1.0,-1.0, 1500, 1, 1, true, true, true)
			unloadAnimDict('amb@prop_human_atm@male@enter')
		end
	end
end)

AddEventHandler('onResourceStop', function(resource) if resource ~= GetCurrentResourceName() then return end
	for k, v in pairs(Config.Shops) do exports['qb-target']:RemoveZone("ClosedShop-['"..k.."']") end
	for _, v in pairs(Props) do unloadModel(GetEntityModel(v)) DeleteEntity(v) end
	for _, v in pairs(Peds) do unloadModel(GetEntityModel(v)) DeletePed(v) end
end)

