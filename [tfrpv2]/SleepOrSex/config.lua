Config = {}
local second = 1
local minute = 60 * second
local hour = 60 * minute
local day = 24 * hour
local week = 7 * day
local month = 4 * week

Config.QBCore = 'qb-core'
Config.QBCorePlayerLoaded = 'QBCore:Client:OnPlayerLoaded'

Config.Debug = false -- keep it false if youre not testing this script
Config.AddPregnantCommand = "addpregnant" -- only if debug is true 
Config.RemovePregnantCommand = "removepregnant" -- only if debug is true 

Config.TimePregnant = 3 * day --How long until u get big pregnant? example u want add 10 days (10 * days) or (week + 3 * day)

Config.Locale = 'en' -- What language did you want to use? Only available english btw

Config.Sleep = 1000 --Time of sleep (miliseconds)
Config.BlowJobStand = 25000 --Time of BlowJob (miliseconds)
Config.SexStand = 25000 --Time of BlowJob (miliseconds)
Config.Doggy = 25000 --Time of Doggy (miliseconds)
Config.BlowJob = 15000 --Time of BlowJob on the bed (miliseconds)
Config.WoT = 35000 --Time of WoT (miliseconds)
Config.WoT2 = 35000 --Time of WoT2 (miliseconds)
Config.WoT3 = 15000 --Time of WoT2 (miliseconds)
Config.ViagraExtraTime = 5000 --Extra time sex for viagra (miliseconds)

Config.Health = true --Make full health after sleeping
Config.Sex = true --Set the target and you full health after have sex
Config.Armor = true --Make full armor after sleeping
Config.UsePajama = false --Use Pajama before sleep?
Config.RemovePajama = false --Remove Pajama after sleep?

Config.RemoveClothes = false --Remove clothes before sex?
Config.UseClothes = false --Use clothes after sex?
Config.AllowPregnant = false --Can pregnant after sex?
Config.Death = false --Can death after childbirth?
Config.Chance = 100 --The lower it is, the more it has a chance to make the girl pregnant. (1 = 100%, 2 = 50%, 4 = 25%, 10 = 10%, 100 = 1%, etc)
Config.Chance2 = 100 --The lower it is, the more it has a chance to make the girl die when give a birth. (1 = 100%, 2 = 50%, 4 = 25%, 10 = 10%, 100 = 1%, etc)
Config.Optimization	= 4 -- Keep this between 3-6, 4-5 is recommended, DON'T go over 6
Config.Pregnant = 30000 --How long the girl will get out the child? (in miliseconds)
Config.Location = vector3(0, 0, 0) -- Pregnant location (put in the bed of hospital, make sure z - 1 example: 50,34 make it 49,34)
Config.Heading = 161.96 -- Heading Pregnant location
Config.Bed = {"v_res_msonbed_s", "p_lestersbed_s", "p_mbbed_s", "p_v_res_tt_bed_s", "v_res_msonbed_s", "v_res_mbbed", "v_res_d_bed", "v_res_tre_bed1", "v_res_tre_bed2", "v_res_tt_bed", "apa_mp_h_bed_double_09", "apa_mp_h_yacht_bed_02", "apa_mp_h_bed_double_08", "apa_mp_h_bed_with_table_02"} --What props bed did you want to use to sleep?
Config.Condom = 65000 --Time of Condom will active (miliseconds)
Config.Levonorgestrel = 15000 --Time of Levonorgestrel will active (miliseconds)
Config.Abortion = 15000 --Time of Abortion will active and delete pregnant (miliseconds)
Config.AnimMillSecPregnant = math.random(100000, 500000) --Time of Animation will active randomly while positive (miliseconds)
Config.ItemViagra = 'hehepills' --Default Name Item viagra // set false if you didn't want to use item for sex everywhere (if you set false this will using Config.Command)
Config.Command = 'sexeverywhere' --Default Name Command Sex Everywhere (DONT FALSE THIS FUNCTION)
Config.CommandShower = 'shower' --Default One For Shower Animation (DONT FALSE THIS FUNCTION)
Config.AddHealthAfterShower = true --Add health after shower?
Config.AddArmorAfterShower = true --Add armor after shower?
Config.ValueHealthAfterShower = 50 --Value health after shower? (Maxhealth/Config.ValueHealthAfterShower)
Config.ValueArmorAfterShower = 50 --Value armor after shower? Max: 200\
Config.TriggerSleep = 38 -- E (control fivem)
Config.TriggerSex = 38 -- E (control fivem)
Config.AcceptEmote = 246 -- Y (control fivem)
Config.DeclineEmote = 182 -- L (control fivem)
Config.ChangePregnantOutfit = false -- true/false
Config.DecreaseStressSleep = true -- true/false // search ReduceStressSleep()
Config.DecreaseStressSex = true -- true/false // search ReduceStressSex()

function ReduceStressSleep() -- example
	if math.random() < 0.1 then
		TriggerServerEvent("stress:remove", math.random(100000, 125000))
	end
end

function ReduceStressSex() -- example
	if math.random() < 0.1 then
		TriggerServerEvent("stress:remove", math.random(100000, 125000))
	end
end

function StandaloneFemalePregnantPeds()
	SetPedComponentVariation(GetPlayerPed(-1), 3, 7, 0, 0)--arms
	SetPedComponentVariation(GetPlayerPed(-1), 4, 60, 1, 0)--pants
	SetPedComponentVariation(GetPlayerPed(-1), 6, 16, 0, 0)--shoes
	SetPedComponentVariation(GetPlayerPed(-1), 11, 109, 1, 0)--torso
	SetPedComponentVariation(GetPlayerPed(-1), 8, 14, 0, 0)--tshirt
end

function StandaloneFemalePeds()
	SetPedComponentVariation(GetPlayerPed(-1), 3, 7, 0, 0)--arms
	SetPedComponentVariation(GetPlayerPed(-1), 4, 60, 1, 0)--pants
	SetPedComponentVariation(GetPlayerPed(-1), 6, 16, 0, 0)--shoes
	SetPedComponentVariation(GetPlayerPed(-1), 11, 109, 1, 0)--torso
	SetPedComponentVariation(GetPlayerPed(-1), 8, 14, 0, 0)--tshirt
end

function StandaloneMalePeds()
	SetPedComponentVariation(GetPlayerPed(-1), 3, 6, 0, 0)--arms
	SetPedComponentVariation(GetPlayerPed(-1), 4, 58, 1, 0)--pants
	SetPedComponentVariation(GetPlayerPed(-1), 6, 5, 2, 0)--shoes
	SetPedComponentVariation(GetPlayerPed(-1), 11, 117, 1, 0)--torso
	SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 0)--tshirt
end

function StandaloneNakedFemalePeds()
	SetPedComponentVariation(GetPlayerPed(-1), 3, 15, 0, 0)--arms
	SetPedComponentVariation(GetPlayerPed(-1), 4, 15, 0, 0)--pants
	SetPedComponentVariation(GetPlayerPed(-1), 6, 35, 0, 0)--shoes
	SetPedComponentVariation(GetPlayerPed(-1), 11, 15, 1, 0)--torso
	SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 0)--tshirt
end

function StandaloneNakedMalePeds()
	SetPedComponentVariation(GetPlayerPed(-1), 3, 15, 0, 0)--arms
	SetPedComponentVariation(GetPlayerPed(-1), 4, 61, 0, 0)--pants
	SetPedComponentVariation(GetPlayerPed(-1), 6, 34, 2, 0)--shoes
	SetPedComponentVariation(GetPlayerPed(-1), 11, 15, 1, 0)--torso
	SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 0)--tshirt
end

function ResetMalePeds() -- idk how to put back clothes standalone version
	TriggerServerEvent("qb-clothes:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES
	TriggerServerEvent("qb-clothing:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES
end

function ResetFemalePeds() -- idk how to put back clothes standalone version
	TriggerServerEvent("qb-clothes:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES
	TriggerServerEvent("qb-clothing:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES
end

function Draw3DText(x, y, z, text, scale)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local pX, pY, pZ = table.unpack(GetGameplayCamCoords())
	SetTextScale(scale, scale)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextEntry('STRING')
	SetTextCentre(true)
	SetTextColour(255, 255, 255, 215)
	AddTextComponentString(text)
	DrawText(_x, _y)
	local factor = (string.len(text)) / 700
	DrawRect(_x, _y + 0.0150, 0.06 + factor, 0.03, 41, 11, 41, 100)
end

function SimpleNotify(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(0,1)
end

function ShowHelpNotification(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, 50)
end

function ShowNotification(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	DrawNotification(0, 1)
end

RegisterNetEvent('podol:showNotification')
AddEventHandler('podol:showNotification', function(str)
    ShowNotification(str)
end)