local QBCore = exports['qb-core']:GetCoreObject()

PlayerJob = {}
local onDuty = false
local alcoholCount = 0
local Targets = {}
local Props = {}
local Blips = {}

local function jobCheck()
	canDo = true
	if not onDuty then triggerNotify(nil, Loc[Config.Lan].error["not_clocked_in"], 'error') canDo = false end
	return canDo
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then if PlayerData.job.name == "coretto" then TriggerServerEvent("QBCore:ToggleDuty") end end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)

AddEventHandler('onResourceStart', function(resource) if GetCurrentResourceName() ~= resource then return end
	QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job if PlayerData.job.name == "coretto" then onDuty = PlayerJob.onduty end end)
end)

CreateThread(function()
	local bossroles = {}
	for grade in pairs(QBCore.Shared.Jobs["coretto"].grades) do
		if QBCore.Shared.Jobs["coretto"].grades[grade].isboss == true then
			if bossroles["coretto"] then
				if bossroles["coretto"] > tonumber(grade) then bossroles["coretto"] = tonumber(grade) end
			else bossroles["coretto"] = tonumber(grade) end
		end
	end
	for _, v in pairs(Config.Locations) do
		if v.zoneEnable then
			JobLocation = PolyZone:Create(v.zones, { name = v.label, debugPoly = Config.Debug })
			JobLocation:onPlayerInOut(function(isPointInside) if not isPointInside and onDuty and PlayerJob.name == "coretto" then TriggerServerEvent("QBCore:ToggleDuty") end end)

			Blips[#Blips+1] = makeBlip({coords = v.blip, sprite = 537, col = v.blipcolor, scale = 0.7, disp = 6, name = v.label})
		end
	end
	Targets["PizzTray"] =
	exports['qb-target']:AddBoxZone("PizzTray", vector3(-1195.36, -1394.05, 4.47), 0.8, 1.6, { name="PizzTray", heading = 35.0, debugPoly=Config.Debug, minZ = 0.67, maxZ = 4.67, },
		{ options = { {  event = "jim-pizzathis:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["toppings_tray"], stash = "Toppings", job = "coretto" }, }, distance = 1.0 })

	Targets["PizzBase"] =
	exports['qb-target']:AddBoxZone("PizzBase", vector3(-1196.62, -1394.94, 4.47), 0.8, 1.6, { name="PizzBase", heading = 35.0, debugPoly=Config.Debug, minZ = 0.67, maxZ = 4.67, },
		{ options = { {  event = "jim-pizzathis:Crafting", icon = "fas fa-pizza-slice", label = Loc[Config.Lan].targetinfo["prepare_pizza"], job = "coretto", craftable = Crafting.Base, header = Loc[Config.Lan].menu["pizza_base"], coords = vector3(-1196.95, -1394.26, 4.47) }, }, distance = 1.0 })

	Targets["PizzDough"] =
	exports['qb-target']:AddBoxZone("PizzDough", vector3(-1200.5, -1400.38, 4.47), 0.8, 1.6, { name="PizzDough", heading = 305.0, debugPoly=Config.Debug, minZ = 0.87, maxZ = 4.87, },
		{ options = { {  event = "jim-pizzathis:JustGive", icon = "fas fa-cookie", label = Loc[Config.Lan].targetinfo["prepare_dough"], job = "coretto", id = "pizzadough", coords = vector3(-1199.89, -1399.92, 4.47) }, }, distance = 1.0 })

	Targets["PizzOven"] =
	exports['qb-target']:AddBoxZone("PizzOven", vector3(-1200.5, -1394.41, 4.47), 3.0, 1.2, { name="PizzOven", heading = 305.0, debugPoly=Config.Debug, minZ = 0.67, maxZ = 4.67, },
		{ options = { {  event = "jim-pizzathis:Crafting", icon = "fas fa-temperature-high", label = Loc[Config.Lan].targetinfo["use_oven"], job = "coretto", craftable = Crafting.Oven, header = Loc[Config.Lan].menu["oven_menu"], coords = vector3(-1199.64, -1394.88, 4.47) }, }, distance = 1.0 })

	Targets["PizzChop"] =
	exports['qb-target']:AddBoxZone("PizzChop", vector3(-1198.74, -1396.43, 4.47), 0.6, 0.6, { name="PizzChop", heading = 305.0, debugPoly=Config.Debug, minZ = 0.67, maxZ = 4.67, },
		{ options = { {  event = "jim-pizzathis:Crafting", icon = "fas fa-utensils", label = Loc[Config.Lan].targetinfo["chopping_board"], job = "coretto", craftable = Crafting.ChoppingBoard, header = Loc[Config.Lan].menu["chopping_board"], coords = vector3(-1199.32, -1395.91, 4.47) }, }, distance = 1.0	})

	Targets["PizzBurner"] =
	exports['qb-target']:AddBoxZone("PizzBurner", vector3(-1194.84, -1390.77, 4.47), 1.4, 0.7, { name="PizzBurner", heading = 305.0, debugPoly=Config.Debug, minZ = 1.27, maxZ = 5.27, },
		{ options = { { event = "jim-pizzathis:Crafting", icon = "fas fa-temperature-high", label = Loc[Config.Lan].targetinfo["stone_oven"],"Use Stone Oven", job = "coretto", craftable = Crafting.PizzaOven, header = Loc[Config.Lan].menu["stone_pizza"], coords = vector3(-1194.51, -1391.37, 4.47) }, }, distance = 1.0 })

	Targets["PizzWine"] =
	exports['qb-target']:AddBoxZone("PizzWine", vector3(-1199.27, -1401.53, 4.47), 1.0, 2.0, { name="PizzWine", heading = 35.0, debugPoly=Config.Debug, minZ = 1.67, maxZ = 5.67, },
		{ options = { {  event = "jim-pizzathis:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["wine_rack"], job = "coretto", shop = Config.WineItems, coords = vector3(-1198.98, -1402.34, 4.47) }, }, distance = 1.5 })

	Targets["PizzFridge"] =
	exports['qb-target']:AddBoxZone("PizzFridge", vector3(-1197.61, -1400.32, 4.47), 1.0, 2.0, { name="PizzFridge", heading = 35.0, debugPoly=Config.Debug, minZ = 1.67, maxZ = 5.67, },
		{ options = { {  event = "jim-pizzathis:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["drink_fridge"], job = "coretto", shop = Config.DrinkItems, coords =vector3(-1197.05, -1400.84, 4.47) }, }, distance = 1.5 })

	Targets["PizzFridge3"] =
	exports['qb-target']:AddBoxZone("PizzFridge3", vector3(-1198.0, -1403.26, 4.47), 1.0, 2.0, { name="PizzFridge3", heading = 206.0, debugPoly=Config.Debug, minZ = 1.87, maxZ = 5.87, },
		{ options = { {  event = "jim-pizzathis:Shop", icon = "fas fa-temperature-low", label = Loc[Config.Lan].targetinfo["food_fridge"],  job = "coretto", shop = Config.FoodItems, coords = vector3(-1198.36, -1402.51, 4.47) }, }, distance = 2.0 })
	Targets["PizzFreezer"] =
	exports['qb-target']:AddBoxZone("PizzFreezer", vector3(-1196.29, -1402.03, 4.47), 1.0, 2.0, { name="PizzFreezer", heading = 209.00, debugPoly=Config.Debug, minZ = 1.87, maxZ = 5.87, },
		{ options = { {  event = "jim-pizzathis:Shop", icon = "fas fa-temperature-low", label = Loc[Config.Lan].targetinfo["open_freezer"], job = "coretto", shop = Config.FreezerItems, coords = vector3(-1196.72, -1401.38, 4.47) }, }, distance = 1.0 })

	Targets["PizzWash1"] =
	exports['qb-target']:AddBoxZone("PizzWash1", vector3(-1201.76, -1398.55, 4.47), 0.8, 2.0, { name="PizzWash1", heading = 305.0, debugPoly=Config.Debug, minZ = 0.87, maxZ = 4.87, },
		{ options = { { event = "jim-pizzathis:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], coords = vector3(-1201.23, -1398.05, 4.47) }, }, distance = 1.5 })

	Targets["PizzTable"] =
	exports['qb-target']:AddBoxZone("Pizzstash", vector3(-1189.79, -1393.99, 4.47), 1.4, 1.2, { name="Pizzstash", heading = 305.0, debugPoly=Config.Debug, minZ=0.67, maxZ=4.67 },
		{ options = { { event = "jim-pizzathis:Stash", icon = "fas fa-hamburger", label = Loc[Config.Lan].targetinfo["open_stash"], stash = "PizzStash" }, }, distance = 2.0 })
		
	Targets["PizzReceipt"] =
	exports['qb-target']:AddBoxZone("PizzReceipt", vector3(-1185.81, -1398.19, 4.47), 0.7, 0.35, { name="PizzReceipt", heading = 305.0, debugPoly=Config.Debug, minZ = 1.27, maxZ = 5.27, },
		{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = "coretto", coords = vector3(-1186.24, -1397.84, 4.47),
						img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/5/59/PizzaThis.png width=200px></p>",
		} }, distance = 2.0 })

	Targets["PizzTap"] =
	exports['qb-target']:AddBoxZone("PizzTap", vector3(-1196.44, -1403.3, 4.47), 0.6, 3.0, { name="PizzTap", heading = 35.0, debugPoly=Config.Debug, minZ = 2.07, maxZ = 6.07, },
		{ options = { { event = "jim-pizzathis:Crafting", icon = "fas fa-beer", label = Loc[Config.Lan].targetinfo["pour_beer"], job = "coretto", craftable = Crafting.Beer, header = Loc[Config.Lan].menu["beer_menu"], coords = vector3(-1195.83, -1403.88, 4.47) }, }, distance = 1.5 })

	Targets["PizzCoffee"] =
	exports['qb-target']:AddBoxZone("PizzCoffee", vector3(-1203.23, -1396.37, 4.47), 0.6, 0.6, { name="PizzCoffee", heading = 350.0, debugPoly=Config.Debug, minZ = 0.87, maxZ = 4.87, },
		{ options = { { event = "jim-pizzathis:JustGive", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["pour_coffee"], job = "coretto", id = "coffee", coords = vector3(-1202.17, -1396.68, 4.47)}, }, distance = 2.0 })

	Targets["PizzClockin"] =
	exports['qb-target']:AddBoxZone("PizzClockin", vector3(-1186.39, -1398.59, 4.47), 0.3, 0.3, { name="PizzClockin", heading = 325.0, debugPoly=Config.Debug, minZ = 0.67, maxZ = 4.67, },
		{ options = { { type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = Loc[Config.Lan].targetinfo["toggle_duty"], job = "coretto", coords = vector3(-1186.61, -1398.1, 4.47) }, }, distance = 2.0 })

	Targets["PizzBoss"] =
	exports['qb-target']:AddBoxZone("PizzBoss", vector3(-1181.04, -1409.01, 10.52), 0.5, 0.3, { name="PizzBoss", heading = 250, debugPoly=Config.Debug, minZ = 6.72, maxZ = 10.72, },
		{ options = { { event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = Loc[Config.Lan].targetinfo["open_bossmenu"], job = bossroles, coords = vector3(-1180.41, -1408.65, 10.52) }, }, distance = 2.0 })

	Targets["PizzTable"] =
	exports['qb-target']:AddBoxZone("PizzTable", vector3(-1182.77, -1403.68, 4.47), 1.0, 1.0, { name="PizzTable", heading = 305.0, debugPoly=Config.Debug, minZ=0.67, maxZ=4.67 },
		{ options = { { event = "jim-pizzathis:Stash", icon = "fas fa-hamburger", label = Loc[Config.Lan].targetinfo["open_table"], stash = "Table1" }, }, distance = 2.0 })
	Targets["PizzTable2"] =
	exports['qb-target']:AddBoxZone("PizzTable2", vector3(-1180.43, -1406.56, 4.47), 1.0, 1.0, { name="PizzTable2", heading = 305.0, debugPoly=Config.Debug, minZ=0.67, maxZ=4.67 },
		{ options = { { event = "jim-pizzathis:Stash", icon = "fas fa-hamburger", label = Loc[Config.Lan].targetinfo["open_table"], stash = "Table2" }, }, distance = 2.0 })
	Targets["PizzTable3"] =
	exports['qb-target']:AddBoxZone("PizzTable3", vector3(-1186.38, -1405.6, 4.47), 1.0, 1.0, { name="PizzTable3", heading = 214.0, debugPoly=Config.Debug,minZ=0.67, maxZ=4.67 },
		{ options = { { event = "jim-pizzathis:Stash", icon = "fas fa-hamburger", label = Loc[Config.Lan].targetinfo["open_table"], stash = "Table3" }, }, distance = 2.0 })
	Targets["PizzTable4"] =
	exports['qb-target']:AddBoxZone("PizzTable4", vector3(-1189.22, -1413.3, 4.47), 1.0, 1.0, { name="PizzTable4", heading = 35.0, debugPoly=Config.Debug, minZ=0.67, maxZ=4.67 },
		{ options = { { event = "jim-pizzathis:Stash", icon = "fas fa-hamburger", label = Loc[Config.Lan].targetinfo["open_table"], stash = "Table4" }, }, distance = 2.0 })
	Targets["PizzTable5"] =
	exports['qb-target']:AddBoxZone("PizzTable5", vector3(-1191.24, -1410.52, 4.47), 1.0, 1.0, { name="PizzTable5", heading = 35.0, debugPoly=Config.Debug, minZ=0.67, maxZ=4.67 },
		{ options = { { event = "jim-pizzathis:Stash", icon = "fas fa-hamburger", label = Loc[Config.Lan].targetinfo["open_table"], stash = "Table5" }, }, distance = 2.0 })

end)

RegisterNetEvent('jim-pizzathis:washHands', function(data)
	lookEnt(data.coords)
    QBCore.Functions.Progressbar('washing_hands', Loc[Config.Lan].progressbar["washing_hands"], 5000, false, false, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = false, },
	{ animDict = "mp_arresting", anim = "a_uncuff", flags = 8, }, {}, {}, function()
		triggerNotify(nil, Loc[Config.Lan].success["washed_hands"], 'success')
	end, function()
        TriggerEvent('inventory:client:busy:status', false)
		triggerNotify(nil, Loc[Config.Lan].error["cancelled"], 'error')
    end, data.icon)
end)
RegisterNetEvent('jim-pizzathis:Shop', function(data)
	if not jobCheck() then return end
	lookEnt(data.coords)
	local event = "inventory:server:OpenInventory"
	if Config.JimShop then event = "jim-shops:ShopOpen" end
	TriggerServerEvent(event, "shop", "pizzathis", data.shop)
end)
RegisterNetEvent('jim-pizzathis:Stash', function(data)	lookEnt(data.coords) TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizza_"..data.stash) TriggerEvent("inventory:client:SetCurrentStash", "pizza_"..data.stash) end)

function FoodProgress(ItemMake)
	if ItemMake == "pizzadough" then
		bartext = Loc[Config.Lan].progress["grabbing"]..QBCore.Shared.Items[ItemMake].label
		bartime = 7000
		animDictNow = "anim@heists@prison_heiststation@cop_reactions"
		animNow = "cop_b_idle"
	elseif ItemMake == "coffee" then
		bartext = Loc[Config.Lan].progress["pouring"]..QBCore.Shared.Items[ItemMake].label
		bartime = 3000
		animDictNow = "mp_ped_interaction"
		animNow = "handshake_guy_a"
	end
	QBCore.Functions.Progressbar('making_food', bartext, bartime, false, false, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
	{ animDict = animDictNow, anim = animNow, flags = 8, },	{}, {}, function()
		TriggerServerEvent('jim-pizzathis:Crafting:GetItem', ItemMake)
		StopAnimTask(PlayerPedId(), animDictNow, animNow, 1.0)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
		triggerNotify(nil, Loc[Config.Lan].error["cancelled"], 'error')
	end, ItemMake)
end

RegisterNetEvent('jim-pizzathis:JustGive', function(data)
	if not jobCheck() then return end
	lookEnt(data.coords)
	FoodProgress(data.id)
end)

RegisterNetEvent('jim-pizzathis:Crafting:MakeItem', function(data)
	local bartext = ""
	bartime = 7000
	animDictNow = "anim@heists@prison_heiststation@cop_reactions"
	animNow = "cop_b_idle"
	for i = 1, #Crafting.ChoppingBoard do
		for k, v in pairs(Crafting.ChoppingBoard[i]) do
			if data.item == k then
				bartext = Loc[Config.Lan].progress["mixing"]
				bartime = 7000
				animDictNow = "anim@heists@prison_heiststation@cop_reactions"
				animNow = "cop_b_idle"
			end
		end
	end
	for i = 1, #Crafting.Oven do
		for k, v in pairs(Crafting.Oven[i]) do
			if data.item == k then
				bartext = Loc[Config.Lan].progress["cooking"]
				bartime = 5000
				animDictNow = "amb@prop_human_bbq@male@base"
				animNow = "base"
			end
		end
	end
	for i = 1, #Crafting.PizzaOven do
		for k, v in pairs(Crafting.PizzaOven[i]) do
			if data.item == k then
				bartext = Loc[Config.Lan].progress["cooking"]
				bartime = 5000
				animDictNow = "amb@prop_human_bbq@male@base"
				animNow = "base"
			end
		end
	end
	for i = 1, #Crafting.Beer do
		for k, v in pairs(Crafting.Beer[i]) do
			if data.item == k then
				bartext = Loc[Config.Lan].progress["pouring"]
				bartime = 3000
				animDictNow = "mp_ped_interaction"
				animNow = "handshake_guy_a"
			end
		end
	end
	QBCore.Functions.Progressbar('making_food', bartext..QBCore.Shared.Items[data.item].label, bartime, false, true, { disableMovement = true, disableCarMovement = false, disableMouse = false, disableCombat = false, },
	{ animDict = animDictNow, anim = animNow, flags = 8, },
	{}, {}, function()
		TriggerServerEvent('jim-pizzathis:Crafting:GetItem', data.item, data.craft)
		Wait(500)
		TriggerEvent("jim-pizzathis:Crafting", data)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
	end, data.item)
end)

RegisterNetEvent('jim-pizzathis:Crafting', function(data)
	lookEnt(data.coords)
	local Menu = {}
	Menu[#Menu + 1] = { header = data.header, txt = "", isMenuHeader = true }
	Menu[#Menu + 1] = { icon = "fas fa-circle-xmark", header = "", txt = Loc[Config.Lan].menu["close"], params = { event = "" } }
	for i = 1, #data.craftable do
		for k, v in pairs(data.craftable[i]) do
			if k ~= "amount" then
				local text = ""
				setheader = "<img src=nui://"..Config.img..QBCore.Shared.Items[k].image.." width=35px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items[tostring(k)].label
				if data.craftable[i]["amount"] ~= nil then setheader = setheader.." x"..data.craftable[i]["amount"] end
				local disable = false
				local checktable = {}
				for l, b in pairs(data.craftable[i][tostring(k)]) do
					if b == 1 then number = "" else number = " x"..b end
					text = text.."- "..QBCore.Shared.Items[l].label..number.."<br>"
					settext = text
					checktable[l] = HasItem(l, b)
				end
				for _, v in pairs(checktable) do if v == false then disable = true break end end
				if not disable then setheader = setheader.." ✔️" end
				Menu[#Menu + 1] = { disabled = disable, icon = k, header = setheader, txt = settext, params = { event = "jim-pizzathis:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header } } }
				settext, setheader = nil
			end
		end
	end
	exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent('jim-pizzathis:client:Eat', function(itemName)
	if itemName == "capricciosa" or itemName == "diavola" or itemName == "marinara" or itemName == "margherita" or itemName == "prosciuttio" or itemName == "vegetariana" then TriggerEvent('animations:client:EmoteCommandStart', {"pizza"})
	elseif itemName == "tiramisu" or itemName == "gelato" then TriggerEvent('animations:client:EmoteCommandStart', {"bowl"})
	elseif itemName == "medfruits" then TriggerEvent('animations:client:EmoteCommandStart', {"pineapple"})
	elseif itemName == "calamari" or itemName == "bolognese" or itemName == "meatball" or itemName == "alla" or itemName == "pescatore" then TriggerEvent('animations:client:EmoteCommandStart', {"foodbowl"}) end
    QBCore.Functions.Progressbar("eat_something", Loc[Config.Lan].progressbar["eating"]..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		toggleItem(false, itemName, 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
		if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
		if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        if Config.RewardItem == itemName then toggleItem(true, Config.RewardPool[math.random(1, #Config.RewardPool)], 1)end
	end, function() -- Cancel
		TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, itemName)
end)

RegisterNetEvent('jim-pizzathis:client:DrinkAlcohol', function(itemName)
	if itemName == "ambeer" then TriggerEvent('animations:client:EmoteCommandStart', {"beer3"})
	elseif itemName == "dusche" then TriggerEvent('animations:client:EmoteCommandStart', {"beer1"})
	elseif itemName == "logger" then TriggerEvent('animations:client:EmoteCommandStart', {"beer2"})
	elseif itemName == "pisswasser" then TriggerEvent('animations:client:EmoteCommandStart', {"beer4"})
	elseif itemName == "pisswasser2" then TriggerEvent('animations:client:EmoteCommandStart', {"beer5"})
	elseif itemName == "pisswasser3" then TriggerEvent('animations:client:EmoteCommandStart', {"beer6"})
	elseif itemName == "amarone" or itemName == "barbera" or itemName == "housered" or itemName == "rosso" then	TriggerEvent('animations:client:EmoteCommandStart', {"redwine"})
	elseif itemName == "dolceto" or itemName == "housewhite" then TriggerEvent('animations:client:EmoteCommandStart', {"whitewine"})
	else TriggerEvent('animations:client:EmoteCommandStart', {"flute"}) end
    QBCore.Functions.Progressbar("snort_coke", Loc[Config.Lan].progressbar["drinking"]..QBCore.Shared.Items[itemName].label.."..", math.random(3000, 6000), false, true, { disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true, },
		{}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        toggleItem(false, itemName, 1)
		if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
		if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 4 then TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 4 then TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			AlienEffect()
        end
        if Config.RewardItem == itemName then toggleItem(true, Config.RewardPool[math.random(1, #Config.RewardPool)], 1)end
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        triggerNotify(nil, Loc[Config.Lan].error["cancelled"], "error")
	end, function() -- Cancel
		TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, itemName)
end)

function AlienEffect()
    StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
    Wait(math.random(5000, 8000))
    local ped = PlayerPedId()
    RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
    while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do Citizen.Wait(0) end
    SetPedCanRagdoll(ped, true )
    ShakeGameplayCam('DRUNK_SHAKE', 2.80)
    SetTimecycleModifier("Drunk")
    SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", true)
    SetPedMotionBlur(ped, true)
    SetPedIsDrunk(ped, true)
    Wait(1500)
    SetPedToRagdoll(ped, 5000, 1000, 1, false, false, false )
    Wait(13500)
    SetPedToRagdoll(ped, 5000, 1000, 1, false, false, false )
    Wait(120500)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(ped, 0)
    SetPedIsDrunk(ped, false)
    SetPedMotionBlur(ped, false)
    AnimpostfxStopAll()
    ShakeGameplayCam('DRUNK_SHAKE', 0.0)
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Wait(math.random(45000, 60000))
    StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
    StopScreenEffect("DrugsMichaelAliensFightIn")
    StopScreenEffect("DrugsMichaelAliensFight")
    StopScreenEffect("DrugsMichaelAliensFightOut")
end

RegisterNetEvent('jim-pizzathis:client:Drink', function(itemName)
	if itemName == "sprunk" or itemName == "sprunklight" then TriggerEvent('animations:client:EmoteCommandStart', {"sprunk"})
	elseif itemName == "ecola" or itemName == "ecolalight" then TriggerEvent('animations:client:EmoteCommandStart', {"ecola"}) end
    QBCore.Functions.Progressbar("drink_something", Loc[Config.Lan].progressbar["drinking"]..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        toggleItem(false, itemName, 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
		if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
		if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
		if Config.RewardItem == itemName then toggleItem(true, Config.RewardPool[math.random(1, #Config.RewardPool)], 1) end
	end, function() -- Cancel
		TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, itemName)
end)

AddEventHandler('onResourceStop', function(r) if r ~= GetCurrentResourceName() then return end
	for _, v in pairs(Props) do	DeleteEntity(v) end
	for k, v in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
end)