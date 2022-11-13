local QBCore = exports['qb-core']:GetCoreObject()
RegisterNetEvent('QBCore:Client:UpdateObject', function() QBCore = exports['qb-core']:GetCoreObject() end)

PlayerJob = {}
local onDuty = false
local alcoholCount = 0
local Props = {}
local Targets = {}
local Blips = {}

local function jobCheck()
	canDo = true
	if not onDuty then triggerNotify(nil, "Not clocked in!", 'error') canDo = false end
	return canDo
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then if PlayerData.job.name == "vanilla" then TriggerServerEvent("QBCore:ToggleDuty") end end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)

AddEventHandler('onResourceStart', function(r) if GetCurrentResourceName() ~= r then return end
	QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job if PlayerData.job.name == "vanilla" then onDuty = PlayerJob.onduty end end)
end)

CreateThread(function()
	local bossroles = {}
	for grade in pairs(QBCore.Shared.Jobs["vanilla"].grades) do
		if QBCore.Shared.Jobs["vanilla"].grades[grade].isboss then
			if bossroles["vanilla"] then
				if bossroles["vanilla"] > tonumber(grade) then bossroles["vanilla"] = tonumber(grade) end
			else bossroles["vanilla"] = tonumber(grade)	end
		end
	end
	for _, v in pairs(Config.Locations) do
		if v.zoneEnable then
			JobLocation = PolyZone:Create(v.zones, { name = v.label, debugPoly = Config.Debug })
			JobLocation:onPlayerInOut(function(isPointInside) -- the vu script is decicing to fight back against prop hiding...this is an attempt to keep it up to date
				if isPointInside then
					CreateModelHide(vector3(132.86, -1288.0, 29.27), 0.2, 1695461688, true)
				end
				if not isPointInside and onDuty and PlayerJob.name == "vanilla" then TriggerServerEvent("QBCore:ToggleDuty") end
			end)

			Blips[#Blips+1] = makeBlip({coords = v.blip, sprite = 121, col = v.blipcolor, scale = 0.7, disp = 6, name = v.label})
		end
	end

	if Config.MLO == "gabz" then
		Targets["UniPrepared"] =
		exports['qb-target']:AddBoxZone("UniPrepared", vector3(136.13, -1287.12, 29.27), 1.7, 0.8, { name="UniPrepared", heading = 30.0, debugPoly=Config.Debug, minZ = 28.37, maxZ = 29.97, },
			{ options = { {  event = "jim-vanillaunicorn:Stash", icon = "fas fa-box-open", label = "Prepared Food", stash = "Storage", job = "vanilla" }, }, distance = 1.0 })

		Targets["UniFridge"] =
		exports['qb-target']:AddBoxZone("UniFridge", vector3(129.95, -1280.65, 29.27), 1.5, 0.6, { name="UniFridge", heading = 30.0, debugPoly=Config.Debug, minZ=28.22, maxZ=29.22 },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Drink Fridge", job = "vanilla", shop = Config.DrinkItems }, }, distance = 1.5 })
		Targets["UniFridge2"] =
		exports['qb-target']:AddBoxZone("UniFridge2", vector3(128.84, -1284.25, 29.27), 1.5, 0.6, { name="UniFridge2", heading = 30.0, debugPoly=Config.Debug, minZ=28.27, maxZ=29.27 },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Drink Fridge", job = "vanilla", shop = Config.DrinkItems }, }, distance = 1.5 })
		Targets["UniFridge3"] =
		exports['qb-target']:AddBoxZone("UniFridge3", vector3(129.74, -1285.53, 29.27), 0.8, 0.4, { name="UniFridge3", heading = 30.0, debugPoly=Config.Debug, minZ=28.27, maxZ=29.27 },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Drink Fridge", job = "vanilla", shop = Config.DrinkItems }, }, distance = 1.5 })
		Targets["UniFridge4"] =
		exports['qb-target']:AddBoxZone("UniFridge4", vector3(132.66, -1285.43, 29.27), 1.2, 0.6, { name="UniFridge4", heading = 30.0, debugPoly=Config.Debug, minZ=28.27, maxZ=29.27 },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Drink Fridge", job = "vanilla", shop = Config.DrinkItems }, }, distance = 1.5 })
		Targets["UniFridge5"] =
		exports['qb-target']:AddBoxZone("UniFridge5", vector3(119.23, -1302.93, 29.27), 1.4, 0.6, { name="UniFridge5", heading = 300.0, debugPoly=Config.Debug, minZ=28.27, maxZ=29.27 },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Drink Fridge", job = "vanilla", shop = Config.DrinkItems }, }, distance = 1.5 })
		Targets["UniFridge6"] =
		exports['qb-target']:AddBoxZone("UniFridge6", vector3(132.32, -1291.67, 29.27), 0.8, 0.6, { name="UniFridge6", heading = 30.0, debugPoly=Config.Debug, minZ = 28.27, maxZ = 30.07, },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Food Fridge", job = "vanilla", shop = Config.FoodItems }, }, distance = 2.0 })

		Targets["UniWash1"] =
		exports['qb-target']:AddBoxZone("UniWash1", vector3(136.45, -1289.37, 29.27), 0.8, 0.8, { name="UniWash1", heading = 30.0, debugPoly=Config.Debug, minZ = 28.47, maxZ = 29.87, },
			{ options = { { event = "jim-vanillaunicorn:washHands", icon = "fas fa-hand-holding-water", label = "Wash Your Hands", job = "vanilla" }, }, distance = 1.5	})
		Targets["UniWash2"] =
		exports['qb-target']:AddBoxZone("UniWash2", vector3(130.28, -1286.21, 29.27), 0.8, 0.6, { name="UniWash2", heading = 30.0, debugPoly=Config.Debug, minZ = 28.67, maxZ = 29.87, },
			{ options = { { event = "jim-vanillaunicorn:washHands", icon = "fas fa-hand-holding-water", label = "Wash Your Hands" }, }, distance = 1.5 })

		Targets["UniCounter"] =
		exports['qb-target']:AddBoxZone("UniCounter", vector3(128.63, -1284.3, 29.27), 1.1, 1.0, { name="UniCounter", heading = 30.0, debugPoly=Config.Debug, minZ = 29.27, maxZ = 30.07, },
			{ options = { { event = "jim-vanillaunicorn:Stash", icon = "fas fa-hamburger", label = "Open Counter", stash = "Counter" }, }, distance = 2.0 })

		Targets["UniReceipt"] =
		exports['qb-target']:AddBoxZone("UniReceipt", vector3(129.19, -1284.95, 29.27), 0.6, 0.6, { name="UniReceipt", heading = 30.0, debugPoly=Config.Debug, minZ = 29.27, maxZ = 30.07, },
			{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = "Charge Customer", job = "vanilla",
							img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/1/10/VanillaUnicorn-GTAV-Logo.png/ width=225px></p>"
							} }, distance = 2.0 })
		Targets["UniReceipt2"] =
		exports['qb-target']:AddBoxZone("UniReceipt2", vector3(133.0, -1286.0, 29.27), 0.6, 0.6, { name="UniReceipt2", heading = 30.0, debugPoly=Config.Debug, minZ = 29.27, maxZ = 30.07, },
			{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = "Charge Customer", job = "vanilla",
							img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/1/10/VanillaUnicorn-GTAV-Logo.png/ width=225px></p>"
							} }, distance = 2.0 })
		Targets["UniReceipt3"] =
		exports['qb-target']:AddBoxZone("UniReceipt3", vector3(118.96, -1303.18, 29.27), 0.6, 0.6, { name="UniReceipt3", heading = 30.0, debugPoly=Config.Debug, minZ = 29.07, maxZ = 29.87, },
			{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = "Charge Customer", job = "vanilla",
							img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/1/10/VanillaUnicorn-GTAV-Logo.png/ width=225px></p>"
							} }, distance = 2.0 })

		Targets["UniCocktails"] =
		exports['qb-target']:AddBoxZone("UniCocktails", vector3(130.3, -1281.51, 29.27), 0.6, 0.6, { name="UniCocktails", heading = 30.0, debugPoly=Config.Debug, minZ=28.87, maxZ=29.87 },
			{ options = { { event = "jim-vanillaunicorn:Crafting", icon = "fas fa-cocktail", label = "Prepare Cocktails", job = "vanilla", craftable = Crafting.Cocktails, header = "Cocktail Menu" }, }, distance = 2.0 })

		Targets["UniTap"] =
		exports['qb-target']:AddBoxZone("UniTap", vector3(128.0, -1283.14, 29.27), 0.6, 0.5, { name="UniTap", heading = 30.0, debugPoly=Config.Debug, minZ = 29.27, maxZ = 29.87, },
			{ options = { { event = "jim-vanillaunicorn:Crafting", icon = "fas fa-beer", label = "Pour Beer", job = "vanilla", craftable = Crafting.Beer, header = "Beer Menu" }, }, distance = 1.5 })

		Targets["UniCoffee"] =
		exports['qb-target']:AddBoxZone("UniCoffee", vector3(131.53, -1282.96, 29.27), 0.5, 0.5, { name="UniCoffee", heading = 30.0, debugPoly=Config.Debug, minZ = 28.87, maxZ = 30.07, },
			{ options = { { event = "jim-vanillaunicorn:JustGive", icon = "fas fa-mug-hot", label = "Pour Coffee", job = "vanilla", id = "coffee"}, }, distance = 2.0 })

		Targets["UniClockin"] =
		exports['qb-target']:AddBoxZone("UniClockin", vector3(102.19, -1299.53, 28.77), 0.8, 0.3, { name="UniClockin", heading = 30.0, debugPoly=Config.Debug, minZ = 28.0, maxZ = 32.0, },
			{ options = { { type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = "Toggle Duty", job = "vanilla" }, }, distance = 2.0 })

		Targets["UniBoss"] =
		exports['qb-target']:AddBoxZone("UniBoss", vector3(96.19, -1292.77, 29.26), 0.6, 0.6, { name="UniBoss", heading = 45.0, debugPoly=Config.Debug, minZ = 28.0, maxZ = 32.0, },
			{ options = { { event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = "Open Bossmenu", job = bossroles, }, }, distance = 2.0 })

		Targets["UniOven"] =
		exports['qb-target']:AddBoxZone("UniOven", vector3(134.24, -1290.51, 29.27), 0.6, 0.5, { name="UniOven", heading = 300.0, debugPoly=Config.Debug, minZ = 28.97, maxZ = 30.07, },
			{ options = { { event = "jim-vanillaunicorn:Crafting", icon = "fas fa-temperature-high", label = "Use Oven", job = "vanilla", craftable = Crafting.Food, header = "Oven Menu" }, }, distance = 2.0 })

		-- Quick Prop Changes
		if not Props["griddle"] then Props["griddle"] = makeProp({prop = `prop_griddle_02`, coords = vector4(134.23, -1290.51, 30.13, 210.0)}, 1, 0) end
		if not Props["fridge"] then Props["fridge"] = makeProp({prop = `prop_trailr_fridge`, coords = vector4(132.14, -1291.79, 29.27, 120.0)}, 1, 0) end
		if not Props["shelves"] then Props["shelves"] = makeProp({prop = `prop_ff_shelves_01`, coords = vector4(131.33, -1290.37, 29.27, 120.0)}, 1, 0) end
		if not Props["counter"] then Props["counter"] = makeProp({prop = `prop_ff_counter_03`, coords = vector4(134.94, -1290.19, 29.27, 210.0)}, 1, 0) end
		if not Props["counter2"] then Props["counter2"] = makeProp({prop = `prop_ff_counter_01`, coords = vector4(136.18, -1287.1, 29.27, 300.0)}, 1, 0) end
		if not Props["microwave"] then Props["microwave"] = makeProp({prop = `prop_microwave_1`, coords = vector4(135.61, -1289.76, 30.19, 210.0)}, 1, 0) end
		if not Props["sink"] then Props["sink"] = makeProp({prop = `prop_ff_sink_02`, coords = vector4(136.72, -1289.26, 29.27, 210.0)}, 1, 0) end
		if not Props["plates"] then Props["plates"] = makeProp({prop = `v_res_tt_platepile`, coords = vector4(135.98, -1286.75, 30.19, 60.0)}, 1, 0) end
		if not Props["plates2"] then Props["plates2"] = makeProp({prop = `v_res_tt_platepile`, coords = vector4(137.05, -1289.05, 30.13, 60.0)}, 1, 0) end
		if not Props["plates3"] then Props["plates3"] = makeProp({prop = `v_res_tt_pizzaplate`, coords = vector4(136.34, -1287.45, 30.18, 60.0)}, 1, 0) end

		Wait(5000)

		CreateModelHide(vector3(132.86, -1288.0, 29.27), 0.2, 1695461688, true)

	elseif Config.MLO == "van" then
		Targets["UniDoor"] =
		exports['qb-target']:AddBoxZone("UniDoor", vector3(138.12, -1292.51, 29.23), 0.6, 2.6, { name="UniDoor", heading = 30.0, debugPoly=Config.Debug, minZ = 28.23, maxZ = 31.03, },
			{ options = { { event = "jim-vanillaunicorn:Door", icon = "fas fa-door-open", label = "Bar Access", job = "vanilla", door = 1 }, }, distance = 2.0	})
		Targets["UniDoor2"] =
		exports['qb-target']:AddBoxZone("UniDoor2", vector3(132.83, -1288.03, 29.27), 0.6, 1.4, { name="UniDoor2", heading = 30.0, debugPoly=Config.Debug, minZ = 28.27, maxZ = 30.57, },
			{ options = { { event = "jim-vanillaunicorn:Door", icon = "fas fa-door-open", label = "Bar Exit", job = "vanilla", door = 2 }, }, distance = 2.0 })

		Targets["UniWash1"] =
		exports['qb-target']:AddBoxZone("UniWash1", vector3(130.4, -1286.45, 29.28), 0.8, 0.6, { name="UniWash1", heading = 30.0, debugPoly=Config.Debug, minZ = 28.68, maxZ = 29.28, },
			{ options = { { event = "jim-vanillaunicorn:washHands", icon = "fas fa-hand-holding-water", label = "Wash Your Hands", job = "vanilla" }, }, distance = 1.5 })

		Targets["UniFridge"] =
		exports['qb-target']:AddBoxZone("UniFridge", vector3(128.89, -1284.18, 29.28), 3.8, 0.5, { name="UniFridge", heading = 30.0, debugPoly=Config.Debug, minZ=28.28, maxZ=29.27 },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Drink Fridge", shop = 1, job = "vanilla", shop = Config.DrinkItems }, }, distance = 1.5 })
		Targets["UniFridge2"] =
		exports['qb-target']:AddBoxZone("UniFridge2", vector3(129.72, -1280.61, 29.27), 2.85, 0.5, { name="UniFridge2", heading = 30.0, debugPoly=Config.Debug, minZ=28.27, maxZ=29.27 },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Drink Fridge", shop = 1, job = "vanilla", shop = Config.DrinkItems }, }, distance = 1.5 })
		Targets["UniFridge3"] =
		exports['qb-target']:AddBoxZone("UniFridge3", vector3(132.31, -1285.06, 29.27), 3.6, 0.5, { name="UniFridge3", heading = 30.0, debugPoly=Config.Debug, minZ=28.27, maxZ=29.27 },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Drink Fridge", shop = 1, job = "vanilla", shop = Config.DrinkItems }, }, distance = 1.5 })
		Targets["UniFridge4"] =
		exports['qb-target']:AddBoxZone("UniFridge4", vector3(129.35, -1279.92, 29.27), 0.75, 0.6, { name="UniFridge4", heading = 50.0, debugPoly=Config.Debug, minZ = 29.47, maxZ = 30.47, },
			{ options = { {  event = "jim-vanillaunicorn:Shop", icon = "fas fa-archive", label = "Open Food Fridge", shop = 2, job = "vanilla", shop = Config.FoodItems }, }, distance = 2.0 })

		Targets["UniReceipt"] =
		exports['qb-target']:AddBoxZone("UniReceipt", vector3(129.26, -1285.01, 29.27), 0.6, 0.6, { name="UniReceipt", heading = 30.0, debugPoly=Config.Debug, minZ = 29.27, maxZ = 30.07, },
			{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = "Charge Customer", job = "vanilla",
							img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/1/10/VanillaUnicorn-GTAV-Logo.png/ width=225px></p>"
							} }, distance = 2.0 })

		Targets["UniCounter"] =
		exports['qb-target']:AddBoxZone("UniCounter", vector3(128.15, -1283.48, 29.27), 0.8, 1.1, { name="UniCounter", heading = 30.0, debugPoly=Config.Debug, minZ = 29.07, maxZ = 29.87, },
			{ options = { { event = "jim-vanillaunicorn:Stash", icon = "fas fa-hamburger", label = "Open Counter", stash = "Counter" }, }, distance = 2.5 })

		Targets["UniCocktails"] =
		exports['qb-target']:AddBoxZone("UniCocktails", vector3(130.97, -1282.68, 29.27), 0.55, 0.4, { name="UniCocktails", heading = 30.0, debugPoly=Config.Debug, minZ= 29.27, maxZ= 29.87 },
			{ options = { { event = "jim-vanillaunicorn:Crafting", icon = "fas fa-cocktail", label = "Prepare Cocktails", job = "vanilla", craftable = Crafting.Cocktails, header = "Cocktail Menu" }, }, distance = 2.0 })

		Targets["UniCoffee"] =
		exports['qb-target']:AddBoxZone("UniCoffee", vector3(130.86, -1281.61, 29.27), 0.4, 0.6, { name="UniCoffee", heading = 30.0, debugPoly=Config.Debug, minZ = 29.27, maxZ = 30.07, },
			{ options = { { event = "jim-vanillaunicorn:JustGive", icon = "fas fa-mug-hot", label = "Pour Coffee", job = "vanilla", id = "coffee"}, }, distance = 2.0 })

		Targets["UniOven"] =
		exports['qb-target']:AddBoxZone("UniOven", vector3(133.22, -1286.38, 29.27), 0.4, 0.8, { name="UniOven", heading = 300.0, debugPoly=Config.Debug, minZ = 29.27, maxZ = 29.87, },
			{ options = { { event = "jim-vanillaunicorn:Crafting", icon = "fas fa-temperature-high", label = "Use Oven", job = "vanilla", craftable = Crafting.Food, header = "Oven Menu" }, }, distance = 2.0 })

		Targets["UniTap"] =
		exports['qb-target']:AddBoxZone("UniTap", vector3(128.08, -1282.65, 29.27), 0.2, 0.3, { name="UniTap", heading = 30.0, debugPoly=Config.Debug, minZ = 29.27, maxZ = 29.87, },
			{ options = { { event = "jim-vanillaunicorn:Crafting", icon = "fas fa-beer", label = "Pour Beer", job = "vanilla", craftable = Crafting.Beer, header = "Beer Menu" }, }, distance = 1.5 })

		Targets["UniClockin"] =
		exports['qb-target']:AddBoxZone("UniClockin", vector3(102.19, -1299.53, 28.77), 0.8, 0.3, { name="UniClockin", heading = 30.0, debugPoly=Config.Debug, minZ = 28.0, maxZ = 32.0, },
			{ options = { { type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = "Toggle Duty", job = "vanilla" }, }, distance = 2.0 })

		Targets["UniBoss"] =
		exports['qb-target']:AddBoxZone("UniBoss", vector3(96.19, -1292.77, 29.26), 0.6, 0.6, { name="UniBoss", heading = 45.0, debugPoly=Config.Debug, minZ = 28.0, maxZ = 32.0, },
			{ options = { { event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = "Open Bossmenu", job = bossroles, }, }, distance = 2.0 })

		Wait(5000)
		CreateModelHide(vector3(133.51, -1286.62, 30.52), 1.5, 534367705, true)
		CreateModelHide(vector3(133.51, -1286.62, 30.52), 1.5, -1369928609, true)

		CreateModelHide(vector3(130.97, -1282.67, 30.35), 1.5, 534367705, true)
		CreateModelHide(vector3(130.97, -1282.67, 30.35), 1.5, 1753238891, true)

		CreateModelHide(vector3(129.5, -1279.94, 30.33), 1.5, 1340914825, true)
		--ADD JOB RELATED PROPS

		if not Props["tray"] then Props["tray"] = makeProp({prop = `v_res_r_silvrtray`, coords = vector4(128.16, -1283.47, 30.29, 120.0)}, 1, 0) end
		if not Props["fridge"] then Props["fridge"] = makeProp({prop = `v_med_cor_minifridge`, coords = vector4(129.34, -1279.91, 30.33, 320.0)}, 1, 0) end
		if not Props["ketchup"] then Props["ketchup"] = makeProp({prop = `v_ret_247_ketchup1`, coords = vector4(129.34, -1279.91, 30.33+0.2, 320.0)}, 1, 0) end
		if not Props["board"] then Props["board"] = makeProp({prop = `v_res_mchopboard`, coords = vector4(130.97, -1282.67, 30.35, 320.0)}, 1, 0) end
		if not Props["griddle"] then Props["griddle"] = makeProp({prop = `prop_griddle_02`, coords = vector4(133.22, -1286.39, 30.33, 300.0)}, 1, 0) end
		if not Props["beer"] then Props["beer"] = makeProp({prop = `prop_bar_pump_08`, coords = vector4(127.99, -1282.71, 30.29, 120.0)}, 1, 0) end
	end
	for i = 1, #Config.Locations do
		if Config.Locations[i].Booth.enableBooth then
			Targets["UniBooth"..i] =
			exports['qb-target']:AddCircleZone("UniBooth"..i, Config.Locations[i].Booth.coords, 0.75, {name="UniBooth"..i, debugPoly=Config.Debug, useZ=true, },
				{ options = { { event = "jim-vanillaunicorn:client:playMusic", icon = "fab fa-youtube", label = "DJ Booth", job = "vanilla", zone = i, }, }, distance = 2.0 })
		end
	end
end)

RegisterNetEvent('jim-vanillaunicorn:Door', function(data)
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do Citizen.Wait(10) end
	if data.door == 1 then
		SetEntityCoords(PlayerPedId(), 132.41, -1287.36, 29.27, 0, 0, 0, false)
        SetEntityHeading(PlayerPedId(), 30.0)
	elseif data.door == 2 then
		SetEntityCoords(PlayerPedId(), 138.62, -1293.34, 29.23, 0, 0, 0, false)
        SetEntityHeading(PlayerPedId(), 210.0)
	end
	DoScreenFadeIn(1000)
    Wait(100)
end)

RegisterNetEvent('jim-vanillaunicorn:washHands', function(data)
    QBCore.Functions.Progressbar('washing_hands', 'Washing hands', 5000, false, false, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
	{ animDict = "mp_arresting", anim = "a_uncuff", flags = 8, }, {}, {}, function()
		triggerNotify(nil, "You've washed your hands!", 'success')
    end, function()
        TriggerEvent('inventory:client:busy:status', false)
		triggerNotify(nil, "Cancelled", 'error')
    end, data.icon)
end)

RegisterNetEvent('jim-vanillaunicorn:Stash', function(data)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Vanilla_"..data.stash)
    TriggerEvent("inventory:client:SetCurrentStash", "Vanilla_"..data.stash)
end)

RegisterNetEvent('jim-vanillaunicorn:Shop', function(data)
	if not jobCheck() then return end
	local event = "inventory:server:OpenInventory"
	if Config.JimShop then event = "jim-shops:ShopOpen" end
	TriggerServerEvent(event, "shop", "vanillaunicorn", data.shop)
end)

RegisterNetEvent('jim-vanillaunicorn:Crafting:MakeItem', function(data)
	QBCore.Functions.TriggerCallback('jim-vanillaunicorn:Crafting:get', function(amount)
		if not amount then triggerNotify(nil, "You don't have the correct ingredients", 'error') else TriggerEvent('jim-vanillaunicorn:Crafting:ItemProgress', data) end
	end, data.item, data.craft)
end)

RegisterNetEvent('jim-vanillaunicorn:Crafting:ItemProgress', function(data)
	local bartext = ""
	for i = 1, #Crafting.Cocktails do
		for k in pairs(Crafting.Cocktails[i]) do
			if data.item == k then
				bartext = "Mixing a "
				bartime = 7000
				animDictNow = "anim@heists@prison_heiststation@cop_reactions"
				animNow = "cop_b_idle"
			end
		end
	end
	for i = 1, #Crafting.Food do
		for k in pairs(Crafting.Food[i]) do
			if data.item == k then
				bartext = "Cooking "
				bartime = 5000
				animDictNow = "amb@prop_human_bbq@male@base"
				animNow = "base"
			end
		end
	end
	for i = 1, #Crafting.Beer do
		for k in pairs(Crafting.Beer[i]) do
			if data.item == k then
				bartext = "Pouring "
				bartime = 3000
				animDictNow = "mp_ped_interaction"
				animNow = "handshake_guy_a"
			end
		end
	end
	if data.item == "coffee" then
		bartext = "Pouring "
		bartime = 3000
		animDictNow = "mp_ped_interaction"
		animNow = "handshake_guy_a"
	end
	QBCore.Functions.Progressbar('making_food', bartext..QBCore.Shared.Items[data.item].label, bartime, false, true, { disableMovement = true, disableCarMovement = false, disableMouse = false, disableCombat = false, },
	{ animDict = animDictNow, anim = animNow, flags = 8, },
	{}, {}, function()
		TriggerServerEvent('jim-vanillaunicorn:Crafting:GetItem', data.item, data.craft)
		TriggerEvent("jim-vanillaunicorn:Crafting", data)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
	end, data.item)
end)

RegisterNetEvent('jim-vanillaunicorn:client:Menu:Close', function() exports['qb-menu']:closeMenu() end)

RegisterNetEvent('jim-vanillaunicorn:Crafting', function(data)
	local Menu = {}
	Menu[#Menu + 1] = { header = data.header, txt = "", isMenuHeader = true }
	Menu[#Menu + 1] = { icon = "fas fa-circle-xmark", header = "", txt = "Close", params = { event = "jim-vanillaunicorn:client:Menu:Close" } }
	for i = 1, #data.craftable do
		for k, v in pairs(data.craftable[i]) do
			if k ~= "amount" then
				local text = ""
				setheader = "<img src=nui://"..Config.img..QBCore.Shared.Items[k].image.." width=35px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items[tostring(k)].label
				if data.craftable[i]["amount"] ~= nil then setheader = setheader.." x"..data.craftable[i]["amount"] end
				if Config.CheckMarks then
					local p = promise.new()
					QBCore.Functions.TriggerCallback('jim-vanillaunicorn:Crafting:get', function(cb) p:resolve(cb) end, k, data.craftable[i])
					if Citizen.Await(p) then setheader = setheader.." ✅" end
				end
				for l, b in pairs(data.craftable[i][tostring(k)]) do
					if b == 1 then number = "" else number = " x"..b end
					text = text.."- "..QBCore.Shared.Items[l].label..number.."<br>"
					settext = text
				end
				Menu[#Menu + 1] = { icon = k, header = setheader, txt = settext, params = { event = "jim-vanillaunicorn:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header } } }
				settext, setheader = nil
			end
		end Wait(0)
	end
	exports['qb-menu']:openMenu(Menu)
end)

function FoodProgress(ItemMake, craftable)
	QBCore.Functions.Progressbar('making_food', "Pouring "..QBCore.Shared.Items[ItemMake].label, 3000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
	{ animDict = "mp_ped_interaction", anim = "handshake_guy_a", flags = 8, },
	{}, {}, function()
		TriggerServerEvent('jim-vanillaunicorn:Crafting:GetItem', ItemMake, craftable)
		StopAnimTask(GetPlayerPed(-1), animDictNow, animNow, 1.0)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
		triggerNotify(nil, "Cancelled!", 'error')
	end, ItemMake)
end

RegisterNetEvent('jim-vanillaunicorn:JustGive', function(data) if not onDuty then triggerNotify(nil, "Not clocked in!", 'error') else FoodProgress(data.id) end end)

RegisterNetEvent('jim-vanillaunicorn:client:DrinkAlcohol', function(itemName)
	if itemName == "ambeer" then TriggerEvent('animations:client:EmoteCommandStart', {"beer3"})
	elseif itemName == "dusche" then TriggerEvent('animations:client:EmoteCommandStart', {"beer1"})
	elseif itemName == "logger" then TriggerEvent('animations:client:EmoteCommandStart', {"beer2"})
	elseif itemName == "pisswasser" then TriggerEvent('animations:client:EmoteCommandStart', {"beer4"})
	elseif itemName == "pisswasser2" then TriggerEvent('animations:client:EmoteCommandStart', {"beer5"})
	elseif itemName == "pisswasser3" then TriggerEvent('animations:client:EmoteCommandStart', {"beer6"})
	elseif itemName == "amarettosour" or itemName == "bellini" or itemName == "bloodymary" or itemName == "cosmopolitan" or itemName == "longisland" or itemName == "margarita" or itemName == "pinacolada" or itemName == "sangria" or itemName == "screwdriver" or itemName == "strawdaquiri" or itemName == "strawmargarita" then TriggerEvent('animations:client:EmoteCommandStart', {"whiskey"})
	elseif itemName == "rum" then TriggerEvent('animations:client:EmoteCommandStart', {"rumb"})
	elseif itemName == "gin" then TriggerEvent('animations:client:EmoteCommandStart', {"ginb"})
	elseif itemName == "vodka" or itemName == "amaretto" then TriggerEvent('animations:client:EmoteCommandStart', {"vodkab"})
	else TriggerEvent('animations:client:EmoteCommandStart', {"flute"}) end
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName].label.."..", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
		toggleItem(false, itemName, 1)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst)
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 4 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			AlienEffect()
        end
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
    SetPedCanRagdoll( ped, true )
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

RegisterNetEvent('jim-vanillaunicorn:client:Drink', function(itemName)
	if itemName == "sprunk" or itemName == "sprunklight" then TriggerEvent('animations:client:EmoteCommandStart', {"sprunk"})
	elseif itemName == "ecola" or itemName == "ecolalight" then TriggerEvent('animations:client:EmoteCommandStart', {"ecola"})
    elseif itemName == "cranberry" or itemName == "pinejuice" then TriggerEvent('animations:client:EmoteCommandStart', {"wine"})
	elseif itemName == "coffee" then TriggerEvent('animations:client:EmoteCommandStart', {"coffee"}) end
	QBCore.Functions.Progressbar("drink_something", "Drinking "..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
		toggleItem(false, itemName, 1)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst)
	end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
	end, itemName)
end)

RegisterNetEvent('jim-vanillaunicorn:client:Eat', function(itemName)
	if itemName == "crisps" then TriggerEvent('animations:client:EmoteCommandStart', {"crisps"})
	else TriggerEvent('animations:client:EmoteCommandStart', {"burger"}) end
    QBCore.Functions.Progressbar("eat_something", "Eating "..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
		toggleItem(false, itemName, 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
	end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
	end, itemName)
end)

-- CUSTOM DJ BOOTH STUFF
RegisterNetEvent('jim-vanillaunicorn:client:playMusic', function(data)
	exports['qb-menu']:openMenu({
		{ isMenuHeader = true, header = '<center><img src=https://static.wikia.nocookie.net/gtawiki/images/1/10/VanillaUnicorn-GTAV-Logo.png/ width=225px>' },
		{ icon = "fas fa-circle-xmark", header = "", txt = "Close", params = { event = "qb-menu:client:closemenu" } },
		{ icon = "fab fa-youtube", header = "Play a song", txt = 'Enter a youtube URL', params = { event = 'jim-vanillaunicorn:client:musicMenu', args = { zoneNum = data.zone } } },
		{ icon = "fas fa-pause", header = "Pause Music", txt = 'Pause music', params = { isServer = true, event = 'jim-vanillaunicorn:server:pauseMusic', args = { zoneNum = data.zone } } },
		{ icon = "fas fa-play", header = "Resume Music", txt = 'Resume music', params = { isServer = true, event = 'jim-vanillaunicorn:server:resumeMusic', args = { zoneNum = data.zone } } },
		{ icon = "fas fa-volume-off", header = "Volume", txt = 'Change volume', params = { event = 'jim-vanillaunicorn:client:changeVolume', args = { zoneNum = data.zone } } },
		{ icon = "fas fa-stop", header = "Turn off music", txt = 'Stop the music & choose a new song', params = { isServer = true, event = 'jim-vanillaunicorn:server:stopMusic', args = { zoneNum = data.zone } } } })
end)
RegisterNetEvent('jim-vanillaunicorn:client:musicMenu', function(data)
    local dialog = exports['qb-input']:ShowInput({
        header = 'Song Selection',
        submitText = "Submit",
        inputs = { { type = 'text', isRequired = true, name = 'song', text = 'YouTube URL' } } })
    if dialog then
        if not dialog.song then return end
        TriggerServerEvent('jim-vanillaunicorn:server:playMusic', dialog.song, data.zoneNum)
    end
end)
RegisterNetEvent('jim-vanillaunicorn:client:changeVolume', function(data)
    local dialog = exports['qb-input']:ShowInput({
        header = 'Music Volume',
        submitText = "Submit",
        inputs = { { type = 'text', isRequired = true,  name = 'volume', text = 'Min: 0.01 - Max: 1' } } })
    if dialog then
        if not dialog.volume then return end
        TriggerServerEvent('jim-vanillaunicorn:server:changeVolume', dialog.volume, data.zoneNum)
    end
end)

AddEventHandler('onResourceStop', function(resource) if resource ~= GetCurrentResourceName() then return end
	for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
	for k in pairs(Props) do DeleteEntity(Props[k]) end
end)