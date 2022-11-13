local QBCore = exports['qb-core']:GetCoreObject()

PlayerJob = {}
local onDuty = false
local Targets = {}
local Props = {}

local function jobCheck()
	canDo = true
	if not onDuty then triggerNotify(nil, Loc[Config.Lan].error["not_clocked_in"], 'error') canDo = false end
	return canDo
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then if PlayerData.job.name == "beanmachine" then TriggerServerEvent("QBCore:ToggleDuty") end end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)

AddEventHandler('onResourceStart', function(resource) if GetCurrentResourceName() ~= resource then return end
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.name == "beanmachine" then onDuty = PlayerJob.onduty end
	end)
end)

CreateThread(function()

	for k, v in pairs(Config.Locations) do
		local bossroles = {}
		for grade, info in pairs(QBCore.Shared.Jobs[v.job].grades) do
			if info.isboss then
				if bossroles[v.job] then
					if bossroles[v.job] > tonumber(grade) then bossroles[v.job] = tonumber(grade) end
				else bossroles[v.job] = tonumber(grade)	end
			end
		end
		if v.zoneEnable then
			blip = makeBlip({coords = v.blip, sprite = 106, col = v.blipcolor, name = v.label})
			JobLocation = PolyZone:Create(Config.Locations[k].zones, { name = Config.Locations[k].label, debugPoly = Config.Debug })
			JobLocation:onPlayerInOut(function(isPointInside) if not isPointInside and onDuty and PlayerJob.name == v.job then TriggerServerEvent("QBCore:ToggleDuty") end end)
			if k == "beangabzlegion" then
				Targets["BeanWash"] =
					exports['qb-target']:AddBoxZone("BeanWash", vector3(123.73, -1039.24, 29.28), 1.2, 0.6, { name="BeanWash", heading = 340.0, debugPoly=Config.Debug, minZ=28.88, maxZ=29.68 },
						{ options = { { event = "jim-beanmachine:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], job = v.job, coords = vector3(123.73, -1039.24, 29.28) }, }, distance = 1.5 })
				Targets["BeanCounter"] =
					exports['qb-target']:AddBoxZone("BeanCounter", vector3(120.54, -1040.74, 29.28), 0.6, 0.4, { name="BeanCounter", heading = 340.0, debugPoly=Config.Debug, minZ=29.08, maxZ=29.88 },
						{ options = { { event = "jim-beanmachine:Stash", icon = "fas fa-mug-saucer", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "Counter", coords = vector3(120.54, -1040.74, 29.28) }, }, distance = 2.0 })
				Targets["BeanCounter2"] =
					exports['qb-target']:AddBoxZone("BeanCounter2", vector3(121.85, -1037.08, 29.28), 0.6, 0.4, { name="BeanCounter2", heading = 340.0, debugPoly=Config.Debug, minZ=29.08, maxZ=29.88 },
						{ options = { { event = "jim-beanmachine:Stash", icon = "fas fa-mug-saucer", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "Counter2", coords = vector3(121.85, -1037.08, 29.28) }, }, distance = 2.0 })

				Targets["BeanReceipt"] =
					exports['qb-target']:AddBoxZone("BeanReceipt", vector3(120.73, -1040.09, 29.28), 0.6, 0.6, { name="BeanReceipt", heading = 340.0, debugPoly=Config.Debug, minZ=29.08, maxZ=29.88 },
						{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = v.job,
						img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/f/fc/TheBeanMachine-GTA4-logo.png width=100px></p>"
						} }, distance = 2.0 })
				Targets["BeanReceipt2"] =
					exports['qb-target']:AddBoxZone("BeanReceipt2",vector3(122.0, -1036.51, 29.28), 0.6, 0.6, { name="BeanReceipt2", heading = 340.0, debugPoly=Config.Debug, minZ=29.08, maxZ=29.88 },
						{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = v.job,
						img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/f/fc/TheBeanMachine-GTA4-logo.png width=100px></p>"
						} }, distance = 2.0 })

				Targets["BeanFridge"] =
					exports['qb-target']:AddBoxZone("BeanFridge", vector3(124.51, -1037.97, 29.28), 0.85, 0.6, { name="BeanFridge", heading = 340.0, debugPoly=Config.Debug, minZ=29.28, maxZ=30.08 },
						{ options = { {  event = "jim-beanmachine:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_storage"], job = v.job, shop = Config.FoodItems, coords = vector3(124.51, -1037.97, 29.28) }, }, distance = 1.5 })
				Targets["BeanFridge2"] =
					exports['qb-target']:AddBoxZone("BeanFridge2", vector3(123.5, -1040.74, 29.28), 0.9, 0.6, { name="BeanFridge2", heading = 340.0, debugPoly=Config.Debug, minZ=29.28, maxZ=30.08 },
						{ options = { {  event = "jim-beanmachine:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_storage"], job = v.job, shop = Config.FoodItems, coords = vector3(123.5, -1040.74, 29.28) }, }, distance = 1.5 })

				Targets["BeanDrink"] =
					exports['qb-target']:AddBoxZone("BeanDrink", vector3(124.56, -1036.88, 29.28), 0.7, 0.4, { name="BeanDrink", heading = 340.0, debugPoly=Config.Debug, minZ=29.08, maxZ=29.88 },
						{ options = { { event = "jim-beanmachine:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_coffee"], job = v.job, craftable = Crafting.Drinks, header = Loc[Config.Lan].menu["drink_menu"], coords = vector3(124.56, -1036.88, 29.28) }, }, distance = 2.0 })
				Targets["BeanDrink2"] =
					exports['qb-target']:AddBoxZone("BeanDrink2", vector3(122.93, -1041.68, 29.28), 0.7, 0.6, { name="BeanDrink2", heading = 340.0, debugPoly=Config.Debug, minZ=29.08, maxZ=29.88 },
						{ options = { { event = "jim-beanmachine:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_coffee"], job = v.job, craftable = Crafting.Drinks, header = Loc[Config.Lan].menu["drink_menu"], coords = vector3(122.93, -1041.68, 29.28) }, }, distance = 2.0 })

				Targets["BeanSlush"] =
					exports['qb-target']:AddBoxZone("BeanSlush", vector3(126.07, -1036.59, 29.28), 0.6, 0.6, { name="BeanSlush", heading = 340.0, debugPoly=Config.Debug, minZ=29.08, maxZ=30.08 },
						{ options = { { event = "jim-beanmachine:Crafting", icon = "fas fa-cocktail", label = Loc[Config.Lan].targetinfo["prepare_slush"], job = v.job, craftable = Crafting.Slush, header = Loc[Config.Lan].menu["slush_menu"], coords = vector3(126.07, -1036.59, 29.28) }, }, distance = 2.0 })

				Targets["BeanSoda"] =
					exports['qb-target']:AddBoxZone("BeanSoda", vector3(123.56, -1042.75, 29.28), 0.6, 1.4, { name="BeanSoda", heading = 340.0, debugPoly=Config.Debug, minZ=29.08, maxZ=29.88 },
						{ options = { { event = "jim-beanmachine:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["grab_soda"], job = v.job, shop = Config.SodaItems, coords = vector3(123.56, -1042.75, 29.28) }, }, distance = 2.0 })

				Targets["BeanDonut"] =
					exports['qb-target']:AddBoxZone("BeanDonut", vector3(121.4, -1038.43, 29.28), 1.45, 0.6, { name="BeanDonut", heading = 340.0, debugPoly=Config.Debug, minZ=29.28, maxZ=29.88 },
						{ options = { { event = "jim-beanmachine:Shop", icon = "fas fa-circle-dot", label = Loc[Config.Lan].targetinfo["grab_food"], job = v.job, shop = Config.DesertItems, coords = vector3(121.4, -1038.43, 29.28) },
									{ event = "jim-beanmachine:Stash", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_stash"], job = v.job, stash = "LegionStash", coords = vector3(121.4, -1038.43, 29.28) }, }, distance = 2.0 })

				Targets["BeanClockin"] =
					exports['qb-target']:AddBoxZone("BeanClockin", vector3(126.94, -1035.84, 29.28), 1.2, 0.2, { name="BeanClockin", heading = 340.0, debugPoly=Config.Debug, minZ=29.28, maxZ=31.28 },
						{ options = { { type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = Loc[Config.Lan].targetinfo["toggle_duty"], job = v.job },
									{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = Loc[Config.Lan].targetinfo["open_bossmenu"], job = bossroles, },
									}, distance = 2.0 })
			end
			if k == "beanunclejust" then
				--Cereal Boxes
				CreateModelHide(vector3(-636.56, 235.83, 82.43), 1.0, -598185919, true)
				CreateModelHide(vector3(-636.56, 235.83, 82.43), 1.0, 714696561, true)
				CreateModelHide(vector3(-636.56, 235.83, 82.43), 1.0, 1241647493, true)
				CreateModelHide(vector3(-636.56, 235.83, 82.43), 1.0, 2141353157, true)

				CreateModelHide(vector3(-634.28, 235.29, 83.12), 1.5, 270388964, true)
				CreateModelHide(vector3(-634.28, 235.29, 83.12), 1.5, 974883178, true)
				CreateModelHide(vector3(-634.28, 235.29, 83.12), 1.5, -85890288, true)
				CreateModelHide(vector3(-635.73, 235.3, 81.88), 1.5, -1281587804, true)
				CreateModelHide(vector3(-633.47, 233.44, 81.88+1.0), 1.5, 1503218008, true)

				if not Props["uTill"] then Props["uTill"] = makeProp({prop = `prop_till_03`, coords = vector4(-634.38, 235.29, 83.12, 285.0)}, 1, 0) end
				if not Props["uTray"] then Props["uTray"] = makeProp({prop = `prop_food_tray_01`, coords = vector4(-634.28, 234.69, 83.12, 95.0)}, 1, 0) end
				if not Props["uSlush"] then Props["uSlush"] = makeProp({prop = `prop_slush_dispenser`, coords = vector4(-636.56, 235.83, 82.43+0.91, 90.0)}, 1, 0) end

				Targets["UBeanCounter"] =
					exports['qb-target']:AddBoxZone("UBeanCounter", vector3(-634.27, 234.69, 81.88), 0.55, 0.4, { name="UBeanCounter", heading = 5.0, debugPoly=Config.Debug, minZ=81.93, maxZ=82.48 },
						{ options = { { event = "jim-beanmachine:Stash", icon = "fas fa-mug-saucer", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "UCounter", coords = vector3(-634.27, 234.69, 81.88) }, }, distance = 2.0 })
				Targets["UBeanReceipt"] =
					exports['qb-target']:AddBoxZone("UBeanReceipt", vector3(-634.38, 235.3, 81.88), 0.4, 0.5, { name="UBeanReceipt", heading = 15.0, debugPoly=Config.Debug, minZ=82.08, maxZ=82.68 },
						{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = v.job,
						img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/f/fc/TheBeanMachine-GTA4-logo.png width=100px></p>"
					} }, distance = 2.0 })
				Targets["UBeanDrink"] =
					exports['qb-target']:AddBoxZone("UBeanDrink", vector3(-635.7, 236.55, 81.88), 0.6, 1.0, { name="UBeanDrink", heading = 1.0, debugPoly=Config.Debug, minZ=81.88, maxZ=82.68 },
						{ options = { { event = "jim-beanmachine:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_coffee"], job = v.job, craftable = Crafting.Drinks, header = Loc[Config.Lan].menu["drink_menu"], coords = vector3(-635.7, 236.55, 81.88) }, }, distance = 2.0 })
				Targets["UBeanDrink2"] =
					exports['qb-target']:AddBoxZone("UBeanDrink2", vector3(-627.68, 222.8, 81.88), 0.6, 0.8, { name="UBeanDrink2", heading = 0.0, debugPoly=Config.Debug, minZ=81.88, maxZ=82.68 },
						{ options = { { event = "jim-beanmachine:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_coffee"], job = v.job, craftable = Crafting.Drinks, header = Loc[Config.Lan].menu["drink_menu"], coords = vector3(-627.68, 222.8, 81.88) }, }, distance = 2.0 })
				Targets["UBeanFridge"] =
					exports['qb-target']:AddBoxZone("UBeanFridge", vector3(-635.51, 233.23, 81.88), 0.4, 1.6, { name="UBeanFridge", heading = 339.0, debugPoly=Config.Debug, minZ=80.88, maxZ=83.08 },
						{ options = { { event = "jim-beanmachine:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_shop"], job = v.job, shop = Config.FoodItems, coords = vector3(-635.51, 233.23, 81.88)  },
									{ event = "jim-beanmachine:Stash", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_stash"], job = v.job, stash = "UStash", coords = vector3(-635.51, 233.23, 81.88) }, }, distance = 1.5 })
				Targets["UBeanSlush"] =
					exports['qb-target']:AddBoxZone("UBeanSlush", vector3(-636.52, 235.81, 81.88), 0.5, 0.5, { name="UBeanSlush", heading = 1.0, debugPoly=Config.Debug, minZ=82.28, maxZ=83.08 },
						{ options = { { event = "jim-beanmachine:Crafting", icon = "fas fa-cocktail", label = Loc[Config.Lan].targetinfo["prepare_slush"], job = v.job, craftable = Crafting.Slush, header = Loc[Config.Lan].menu["slush_menu"], coords = vector3(-636.52, 235.81, 81.88) }, }, distance = 2.0 })
				Targets["UBeanSoda"] =
					exports['qb-target']:AddBoxZone("UBeanSoda", vector3(-636.74, 234.86, 81.88), 2.6, 0.4, { name="UBeanSoda", heading = 1.0, debugPoly=Config.Debug, minZ=80.88, maxZ=82.08 },
						{ options = { { event = "jim-beanmachine:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["grab_soda"], job = v.job, shop = Config.SodaItems, coords = vector3(-636.74, 234.86, 81.88) }, }, distance = 2.0 })
				Targets["UBeanDonut"] =
					exports['qb-target']:AddBoxZone("UBeanDonut", vector3(-636.62, 234.98, 81.88), 0.6, 0.6, { name="UBeanDonut", heading = 1.0, debugPoly=Config.Debug, minZ=82.28, maxZ=82.68 },
					{ options = { { event = "jim-beanmachine:Shop", icon = "fas fa-circle-dot", label = Loc[Config.Lan].targetinfo["grab_food"], job = v.job, shop = Config.DesertItems, coords = vector3(-636.62, 234.98, 81.88) }, }, distance = 2.0 })
				Targets["UBeanWash"] =
					exports['qb-target']:AddBoxZone("UBeanWash", vector3(-621.67, 226.77, 81.88), 1.6, 0.6, { name="BeanWash", heading = 0.0, debugPoly=Config.Debug, minZ=80.88, maxZ=82.68 },
						{ options = { { event = "jim-beanmachine:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], job = v.job, coords = vector3(-621.67, 226.77, 81.88) }, }, distance = 1.5 })
				Targets["UBeanWash2"] =
					exports['qb-target']:AddBoxZone("UBeanWash2", vector3(-630.71, 222.83, 81.88), 0.7, 1.4, { name="UBeanWash2", heading = 0.0, debugPoly=Config.Debug, minZ=80.88, maxZ=82.68 },
						{ options = { { event = "jim-beanmachine:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], job = v.job, coords = vector3(-630.71, 222.83, 81.88) }, }, distance = 1.5 })

				Targets["UBeanClockin"] =
					exports['qb-target']:AddBoxZone("UBeanClockin", vector3(-635.89, 227.12, 81.88), 1.6, 0.2, { name="UBeanClockin", heading = 0.0, debugPoly=Config.Debug, minZ=81.68, maxZ=82.93 },
					{ options = { { type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = Loc[Config.Lan].targetinfo["toggle_duty"], job = v.job },
								{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = "Open Bossmenu", job = bossroles, },
								}, distance = 2.0 })
			end
			if k == "beanrflx" then
				Targets["flxClockin"] =
					exports['qb-target']:AddBoxZone("flxClockin", vector3(284.84, -978.75, 29.42), 0.5, 0.5, { name="flxClockin", heading = 343.0, debugPoly=Config.Debug, minZ=29.02, maxZ=29.62 },
					{ options = { { type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = Loc[Config.Lan].targetinfo["toggle_duty"], job = v.job },
								{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = "Open Bossmenu", job = bossroles, },
								}, distance = 2.0 })
				Targets["flxReceipt"] =
				exports['qb-target']:AddBoxZone("flxReceipt", vector3(280.99, -972.57, 29.42), 0.4, 0.5, { name="flxReceipt", heading = 90.0, debugPoly=Config.Debug, minZ=29.42, maxZ=30.22 },
					{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = v.job,
					img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/f/fc/TheBeanMachine-GTA4-logo.png width=100px></p>"
				} }, distance = 2.0 })
				Targets["flxCounter"] =
					exports['qb-target']:AddBoxZone("flxCounter", vector3(280.50, -972.54, 30.29), 0.55, 0.7, { name="flxCounter", heading = 90.0, debugPoly=Config.Debug, minZ=29.42, maxZ=30.02 },
					{ options = { { event = "jim-beanmachine:Stash", icon = "fas fa-mug-saucer", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "flxCounter", coords = vector3(280.50, -972.54, 30.29) }, }, distance = 2.0 })
				Targets["flxBeanSlush"] =
					exports['qb-target']:AddBoxZone("flxBeanSlush", vector3(278.92, -972.6, 30.62), 0.5, 0.5, { name="flxBeanSlush", heading = 90.0, debugPoly=Config.Debug, minZ=29.42, maxZ=30.52 },
						{ options = { { event = "jim-beanmachine:Crafting", icon = "fas fa-cocktail", label = Loc[Config.Lan].targetinfo["prepare_slush"], job = v.job, craftable = Crafting.Slush, header = "Slush Menu", coords = vector3(278.92, -972.6, 30.62) }, }, distance = 2.0 })
				Targets["flxBeanSoda"] =
					exports['qb-target']:AddBoxZone("flxBeanSoda", vector3(278.87, -973.37, 30.62), 0.5, 0.7, { name="flxBeanSoda", heading = 90.0, debugPoly=Config.Debug, minZ=29.42, maxZ=30.22 },
						{ options = { { event = "jim-beanmachine:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["grab_soda"], job = v.job, shop = Config.SodaItems, coords = vector3(278.87, -973.37, 30.62) }, }, distance = 2.0 })

				Targets["flxBeanDonut"] =
					exports['qb-target']:AddBoxZone("flxBeanDonut", vector3(279.62, -972.55, 30.62), 0.5, 0.7, { name="flxBeanDonut", heading = 90.0, debugPoly=Config.Debug, minZ=29.42, maxZ=30.02 },
							{ options = { { event = "jim-beanmachine:Shop", icon = "fas fa-circle-dot", label = Loc[Config.Lan].targetinfo["grab_food"], job = v.job, shop = Config.DesertItems, coords = vector3(279.62, -972.55, 30.62) },
										{ event = "jim-beanmachine:Stash", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_stash"], job = v.job, stash = "flxStash", coords = vector3(279.62, -972.55, 30.62) }, }, distance = 2.0 })
				Targets["flxBeanDrink"] =
				exports['qb-target']:AddBoxZone("flxBeanDrink", vector3(279.54, -975.12, 29.42), 0.7, 0.5, { name="flxBeanDrink", heading = 90.0, debugPoly=Config.Debug, minZ=29.42, maxZ=30.22 },
					{ options = { { event = "jim-beanmachine:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_coffee"], job = v.job, craftable = Crafting.Drinks, header = "Drinks Menu", coords = vector3(279.54, -975.12, 29.42) }, }, distance = 2.0 })
				Targets["flxBeanFridge"] =
					exports['qb-target']:AddBoxZone("flxBeanFridge", vector3(278.94, -971.89, 29.42), 0.85, 0.7, { name="flxBeanFridge", heading = 0.0, debugPoly=Config.Debug, minZ=28.62, maxZ=30.62 },
						{ options = { {  event = "jim-beanmachine:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_storage"], job = v.job, shop = Config.FoodItems, coords = vector3(278.94, -971.89, 29.42) }, }, distance = 1.5 })

				if not Props["flxDonut"] then Props["flxDonut"] = makeProp({prop = `v_res_cakedome`, coords = vector4(279.62, -972.55, 30.62, 90.0)}, 1, 0) end
				if not Props["flxSlush"] then Props["flxSlush"] = makeProp({prop = `prop_slush_dispenser`, coords = vector4(278.92, -972.6, 30.62, 90.0)}, 1, 0) end
				if not Props["flxSoda"] then Props["flxSoda"] = makeProp({prop = `prop_food_bs_soda_01`, coords = vector4(278.87, -973.37, 30.62, 90.0)}, 1, 0) end
				if not Props["flxTray"] then Props["flxTray"] = makeProp({prop = `prop_food_tray_01`, coords = vector4(280.50, -972.54, 30.625, 0.0)}, 1, 0) end
			end
		end
	end
end)

RegisterNetEvent('jim-beanmachine:washHands', function(data)
	lookEnt(data.coords)
    QBCore.Functions.Progressbar('washing_hands', Loc[Config.Lan].progressbar["washing_hands"], 5000, false, false, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = false, },
	{ animDict = "mp_arresting", anim = "a_uncuff", flags = 8, }, {}, {}, function()
		triggerNotify(nil, Loc[Config.Lan].success["success_washed_hands"], 'success')
	end, function()
        TriggerEvent('inventory:client:busy:status', false)
		triggerNotify(nil, Loc[Config.Lan].error["cancelled"], 'error')
    end, "fas fa-hand-holding-droplet")
end)

RegisterNetEvent('jim-beanmachine:Crafting:MakeItem', function(data)
	QBCore.Functions.Progressbar('making_food', Loc[Config.Lan].progressbar["making"]..QBCore.Shared.Items[data.item].label, 5000, false, true, { disableMovement = true, disableCarMovement = false, disableMouse = false, disableCombat = false, },
	{ animDict = "mp_ped_interaction", anim = "handshake_guy_a", flags = 8, },
	{}, {}, function()
		TriggerServerEvent('jim-beanmachine:Crafting:GetItem', data.item, data.craft)
		Wait(500)
		TriggerEvent("jim-beanmachine:Crafting", data)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
	end, data.item)
end)

RegisterNetEvent('jim-beanmachine:Stash', function(data) lookEnt(data.coords) TriggerServerEvent("inventory:server:OpenInventory", "stash", "beanmachine_"..data.stash) TriggerEvent("inventory:client:SetCurrentStash", "beanmachine_"..data.stash) end)

RegisterNetEvent('jim-beanmachine:Shop', function(data)
	if not jobCheck() then return end
	lookEnt(data.coords)
	local event = "inventory:server:OpenInventory"
	if Config.JimShop then event = "jim-shops:ShopOpen" end
	TriggerServerEvent(event, "shop", "beanmachine", data.shop)
end)

RegisterNetEvent('jim-beanmachine:Crafting', function(data)
	if not jobCheck() then return end
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
				Menu[#Menu + 1] = { disabled = disable, icon = k, header = setheader, txt = settext, params = { event = "jim-beanmachine:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header } } }
				settext, setheader = nil
			end
		end
	end
	exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent('jim-beanmachine:client:Drink', function(itemName)
	if itemName == "sprunk" or itemName == "sprunklight" then TriggerEvent('animations:client:EmoteCommandStart', {"sprunk"})
	elseif itemName == "ecola" or itemName == "ecolalight" then TriggerEvent('animations:client:EmoteCommandStart', {"ecola"})
	elseif itemName == "ecocoffee" then TriggerEvent('animations:client:EmoteCommandStart', {"bmcoffee"})
	elseif itemName == "flusher" then TriggerEvent('animations:client:EmoteCommandStart', {"bmcoffee2"})
	elseif itemName == "caffeagra" then TriggerEvent('animations:client:EmoteCommandStart', {"bmcoffee3"})
	else TriggerEvent('animations:client:EmoteCommandStart', {"coffee"}) end
	QBCore.Functions.Progressbar("drink_something", Loc[Config.Lan].progressbar["drinking"]..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, { disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true, },
	{}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
		toggleItem(false, itemName, 1)
		if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
		if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
		if Config.RewardItem == itemName then toggleItem(true, Config.RewardPool[math.random(1, #Config.RewardPool)], 1) end
	end, function() -- Cancel
		TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, itemName)
end)

RegisterNetEvent('jim-beanmachine:client:Eat', function(itemName)
	if itemName == "crisps" then TriggerEvent('animations:client:EmoteCommandStart', {"crisps"})
	elseif itemName == "beandonut" then TriggerEvent('animations:client:EmoteCommandStart', {"donut2"})
	elseif itemName == "chocolate" then TriggerEvent('animations:client:EmoteCommandStart', {"egobar"})
	else TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"}) end
    QBCore.Functions.Progressbar("eat_something", Loc[Config.Lan].progressbar["eating"]..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, { disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true, },
	{}, {}, {}, function() -- Done
        toggleItem(false, itemName, 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
		if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
		if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
		if Config.RewardItem == itemName then toggleItem(true, Config.RewardPool[math.random(1, #Config.RewardPool)], 1) end
	end, function() -- Cancel
		TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, itemName)
end)

AddEventHandler('onResourceStop', function(resource) if resource ~= GetCurrentResourceName() then return end
	for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
	for k in pairs(Props) do DeleteEntity(Props[k]) end
end)