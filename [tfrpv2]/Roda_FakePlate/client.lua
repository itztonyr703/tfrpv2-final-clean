
local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(10)
        if QBCore == nil then
            TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)    
            Citizen.Wait(200)
        end
    end
end)


RegisterNetEvent("ReyMarca_FakePlate:UseRemovePlate")
AddEventHandler("ReyMarca_FakePlate:UseRemovePlate", function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    vehicleplate1 =  GetVehicleNumberPlateText(vehicle)
    local test = 0
    local nearbyv = GetEntityCoords(vehicle)
    local pos = GetEntityCoords(PlayerPedId())
    local putDist = GetDistanceBetweenCoords(pos, nearbyv)
    if putDist <= 5 then
        local closestPlayer, closestPlayerDistance = QBCore.Functions.GetClosestPlayer()
        if closestPlayer == -1 or closestPlayerDistance > 5.0 then
            addPlateAnim(Config.Locale["removeplate"])
            Citizen.Wait(Config.AttachingPlateAnim)
            onRemoveVehiclePlate()
            TriggerServerEvent('ReyMarca_FakePlate:AddOrRemovePlate', "license_plate", 1, false)
        else
            QBCore.Functions.Notify(Config.Locale["nearplayer"], "error", 2500)
        end
    else
        QBCore.Functions.Notify(Config.Locale["novehicle"], "error", 2500)
    end
end)

RegisterCommand('testeo', function () 
    QBCore.Functions.Notify(Config.Locale["nearplayer"], "error", 2500)
end)

RegisterNetEvent("ReyMarca_FakePlate:UseFakePlate")
AddEventHandler("ReyMarca_FakePlate:UseFakePlate", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local vehicle = GetClosestVehicle(coords['x'], coords['y'], coords['z'], 8.0, 0, 70)
    local vehicleDimensions = GetModelDimensions(GetEntityModel(vehicle))*1.2
    local BackOfVehicle = GetEntityCoords(vehicle) + (GetEntityForwardVector(vehicle)*vehicleDimensions.y)
    local vehicleHeading = GetEntityHeading(vehicle)
    local forward = GetEntityForwardVector(playerPed)
    local x, y, z = table.unpack(coords + forward * 1.0)
    local heading = GetEntityHeading(playerPed)
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local vehicleplate =  GetVehicleNumberPlateText(vehicle)
    local nearbyv = GetEntityCoords(vehicle)
    local pos = GetEntityCoords(PlayerPedId())
    local putDist = GetDistanceBetweenCoords(pos, nearbyv)
    if putDist <= 5 then
        local closestPlayer, closestPlayerDistance = QBCore.Functions.GetClosestPlayer()
        if closestPlayer == -1 or closestPlayerDistance > 5.0 then
            SetEntityHeading(playerPed, vehicleHeading)
            TriggerEvent('ReyMarca_FakePlate:puttingKeyEvent')
        else
           if Config.mythic_notify then     
            exports['mythic_notify']:DoCustomHudText('inform', Config.Locale["novehicle"], 5000, { ['background-color'] = '#000000', ['color'] = '#f00000' })  
           elseif Config.pnotify then
            exports.pNotify:SendNotification({text = Config.Locale["novehicle"], type = "error", timeout = 5000})
           else
            QBCore.Functions.Notify(Config.Locale["novehicle"], "error", 2500)
        end
    end
    else
        if Config.mythic_notify then     
        exports['mythic_notify']:DoCustomHudText('inform', Config.Locale["novehicle"], 5000, { ['background-color'] = '#000000', ['color'] = '#f00000' })  
        elseif Config.pnotify then
        exports.pNotify:SendNotification({text = Config.Locale["novehicle"], type = "error", timeout = 5000})
        else
        QBCore.Functions.Notify(Config.Locale["novehicle"], "error", 2500)
    end
end
end)


RegisterNetEvent("ReyMarca_FakePlate:puttingKeyEvent")
AddEventHandler("ReyMarca_FakePlate:puttingKeyEvent", function()

    addPlateAnim(Config.Locale["addplate"])
    Citizen.Wait(Config.AttachingPlateAnim)
    ClearPedTasks(PlayerPedId())
    onAddVehiclePlate()
end)


-------------
--Functions--
-------------

function onRemoveVehiclePlate()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local vehicleplate =  GetVehicleNumberPlateText(vehicle)
    local nearbyv = GetEntityCoords(vehicle)
    local pos = GetEntityCoords(PlayerPedId())
    local putDist = GetDistanceBetweenCoords(pos, nearbyv)
    ClearPedTasks(PlayerPedId())   
    if Config.mythic_notify then     
        exports['mythic_notify']:DoCustomHudText('inform', Config.Locale["stoleplate"]..vehicleplate, 5000, { ['background-color'] = '#000000', ['color'] = '#f00000' })  
        elseif Config.pnotify then
        exports.pNotify:SendNotification({text = Config.Locale["stoleplate"]..vehicleplate, type = "error", timeout = 5000})
        else
        QBCore.Functions.Notify(Config.Locale["stoleplate"]..vehicleplate, "success", 2500)
    end
    SetVehicleNumberPlateText(vehicle, "")
    ClearPedTasksImmediately(PlayerPedId())
end

function onAddVehiclePlate()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local vehicleplate =  GetVehicleNumberPlateText(vehicle)
    local nearbyv = GetEntityCoords(vehicle)
    local pos = GetEntityCoords(PlayerPedId())
    local putDist = GetDistanceBetweenCoords(pos, nearbyv)   
    SetVehicleNumberPlateText(vehicle, vehicleplate1)
    TriggerServerEvent('ReyMarca_FakePlate:AddOrRemovePlate', "license_plate", 1, true)
    ClearPedTasksImmediately(PlayerPedId())
end


function addPlateAnim(msg)
     if Config.progressbar then 
        loadAnimDict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
        TaskPlayAnim(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, -8.0, 12000, 0, 0, false, false, false) 
        exports['progressBars']:startUI(5000, msg)

    elseif Config.mythic_progbar then      
        TriggerEvent("mythic_progbar:client:progress", {
            name = "Nice Name",
            duration = 5000,
            label = msg,
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                anim = "machinic_loop_mechandplayer",
            }
        }, function(status)
            if not status then
               
            end
        end)
    else
        loadAnimDict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
        TaskPlayAnim(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, -8.0, 12000, 0, 0, false, false, false) 
        QBCore.Functions.Notify(msg, "success", 2500)
    end 
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end


--Random Plate--

local NumberCharset = {}
local Charset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end

for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end


---For new random plate--
RegisterNetEvent('ReyMarca_FakePlate:ChangePlate')
AddEventHandler('ReyMarca_FakePlate:ChangePlate', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local vehicleplate = GetVehicleNumberPlateText(vehicle)
    GenerateRandomPlate()
    SetVehicleNumberPlateText(vehicle, generatedPlate)
    if Config.mythic_notify then     
       
        exports['mythic_notify']:DoCustomHudText('inform', Config.Locale["newplate"]..generatedPlate, 5000, { ['background-color'] = '#ffffff', ['color'] = '#000000' })     
  
    elseif Config.pnotify then
        exports.pNotify:SendNotification({text = Config.Locale["newplate"]..generatedPlate, type = "error", timeout = 5000})
    else
        QBCore.Functions.Notify(Config.Locale["newplate"]..generatedPlate, "success", 2500)
    end
    Citizen.Wait(Config.TimeToBackOldPlate*1000)
    SetVehicleNumberPlateText(vehicle, vehicleplate)  
    if Config.mythic_notify then     
       exports['mythic_notify']:DoCustomHudText('inform', Config.Locale["oldplate"]..vehicleplate, 5000, { ['background-color'] = '#ffffff', ['color'] = '#000000' })     
        elseif Config.pnotify then
        exports.pNotify:SendNotification({text = Config.Locale["oldplate"]..vehicleplate, type = "error", timeout = 5000})
       else
        QBCore.Functions.Notify(Config.Locale["oldplate"]..vehicleplate, "success", 2500)
    end
end)

RegisterNetEvent('ReyMarca_FakePlate:AllAction')
AddEventHandler('ReyMarca_FakePlate:AllAction', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local nearbyv = GetEntityCoords(vehicle)
    local pos = GetEntityCoords(PlayerPedId())
    local putDist = GetDistanceBetweenCoords(pos, nearbyv)

    if putDist <= 3 then

        if Config.progressbar then 
            loadAnimDict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
            TaskPlayAnim(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, -8.0, 12000, 0, 0, false, false, false) 
            exports['progressBars']:startUI(Config.TimeToPutFakePlate, Config.Locale["changeplate"])
            Citizen.Wait(Config.TimeToPutFakePlate)
            ClearPedTasksImmediately(PlayerPedId())
            TriggerEvent('ReyMarca_FakePlate:ChangePlate')
        elseif Config.mythic_progbar then      
            TriggerEvent("mythic_progbar:client:progress", {
                name = "Nice Name",
                duration = Config.TimeToPutFakePlate,
                label = Config.Locale["changeplate"],
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                    anim = "machinic_loop_mechandplayer",
                }
            }, function(status)
                if not status then
                    TriggerEvent('ReyMarca_FakePlate:ChangePlate')
                end
            end)
        else
            loadAnimDict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
            TaskPlayAnim(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, -8.0, 12000, 0, 0, false, false, false) 
            QBCore.Functions.Notify(Config.Locale["changeplate"], "success", 2500)

            Citizen.Wait(Config.TimeToPutFakePlate)
            ClearPedTasksImmediately(PlayerPedId())
            TriggerEvent('ReyMarca_FakePlate:ChangePlate')
        end

else 
    if Config.mythic_notify then     
        exports['mythic_notify']:DoCustomHudText('inform', Config.Locale["novehicle"], 5000, { ['background-color'] = '#000000', ['color'] = '#f00000' })  
       elseif Config.pnotify then
        exports.pNotify:SendNotification({text = Config.Locale["novehicle"], type = "error", timeout = 5000})
       else
        QBCore.Functions.Notify(Config.Locale["novehicle"], "error", 2500)
    end   
end
end)



----Functions to get the random plate for the vehicles, and the fake plate.-----

function GetRandomNumber(length)
	Citizen.Wait(0)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

function GetRandomLetter(length)
	Citizen.Wait(0)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
	else
		return ''
	end
end


function GenerateRandomPlate()
    generatedPlate = string.upper(GetRandomLetter(3) .. ' ' .. GetRandomNumber(3))
end
