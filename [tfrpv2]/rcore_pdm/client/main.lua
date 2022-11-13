---------------------------------------------------------------
-- Variable list
---------------------------------------------------------------
ESX = nil
QBCore = nil
PlayerData = {}
TookVehicleOut = false
DisplayMarkers = {}
DisplayedVehicles = {}
SpawnedVehiclePos = vector3(0, 0, 0)
SpawnedVehicle = nil
ViewingShop = false
---------------------------------------------------------------
-- Functions
---------------------------------------------------------------
--- @param msg string
--- @param thisFrame boolean
--- @param beep boolean
--- @param duration integer
--- Will display a help text in game
function ShowHelpNotification(msg, thisFrame, beep, duration)
    AddTextEntry('rcore_pdm_help_msg', msg)

    if thisFrame then
        DisplayHelpTextThisFrame('rcore_pdm_help_msg', false)
    else
        if beep == nil then beep = false end
        BeginTextCommandDisplayHelp('rcore_pdm_help_msg')
        EndTextCommandDisplayHelp(0, false, beep, duration)
    end
end

--- @param job string
--- @param GradeArray table
--- will return true/False if player is in this grade.
function IsAtJob(job, GradeArray)
    if PlayerData == nil or PlayerData.job == nil then
        return false
    end
    if GradeArray == nil then
        return PlayerData.job.name == job
    end

    return PlayerData.job.name == job and GradeArray[PlayerData.job.grade_name]
end

--- @param amount integer
--- add comma to separate thousands
--- stolen from: http://lua-users.org/wiki/FormattingNumbers
function CommaValue(amount)
    local formatted = amount
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k == 0) then
            break
        end
    end
    return formatted
end

-- Will update all variables for job from framework QBCore
function UpdatePlayerDataForQBCore()
    local pData = QBCore.Functions.GetPlayerData()

    local jobName = "none"
    local gradeName = "none"

    if pData.job then
        jobName = pData.job.name or "none"

        if pData.job.grade then
            gradeName = pData.job.grade.name
        end
    end

    PlayerData = {
        job = {
            name = jobName,
            grade_name = gradeName,
        }
    }
end

---------------------------------------------------------------
-- Threads
---------------------------------------------------------------
-- Will save a es_extended modul into local variable "ESX"
-- will prepare markers for displaying vehicle also
-- + will create blip on map
CreateThread(function()
    if Config.Framework == ES then
        -- if we cant load ESX we simply kill the timer and tell
        -- to change esx shared object.
        local tries = 10
        while not ESX do
            Wait(100)
            TriggerEvent(Config.ESX, function(obj) ESX = obj end)
            tries = tries - 1
            if tries == 0 then
                print("You forgot to change ESX shared object in config, please do it now or the script wont work properly.")
                break
            end
        end

        -- we will check if player is loaded so we can dedicate what markers for garage we will hide
        if ESX and ESX.IsPlayerLoaded() then
            PlayerData = ESX.GetPlayerData()
            TriggerEvent(TriggerName("PlayerLoaded"))
        end
    end

    if Config.Framework == QB then
        QBCore = Config.GetQBCoreObject()

        if QBCore and QBCore.Functions.GetPlayerData() then
            UpdatePlayerDataForQBCore()
            TriggerEvent(TriggerName("PlayerLoaded"))
        end
    end
end)

-- Will create markers that will despawn rented vehicle
CreateThread(function()
    for k, v in pairs(Config.VehicleDeleteMarkers) do
        local marker = createMarker()

        marker.setRenderDistance(10)
        marker.setPosition(v.pos or vector3(0, 0, 0))
        marker.setRotation(v.rotation or false)
        marker.setType(v.type or 1)

        marker.setInRadius(2.5)

        marker.setKeys(v.keys or { 38 })

        marker.on("enter", function()
            showHelpNotification(_U("return_vehicle_key"))
        end)

        marker.on("key", function()
            TriggerServerEvent(TriggerName("DeleteVehicle"), VehToNet(GetVehiclePedIsIn(PlayerPedId(), false)))
        end)
    end
end)

-- Will create blips on the map
CreateThread(function()
    for k, v in pairs(Config.BlipList) do
        createBlip(v.Options.name, v.Sprite, v.Position, v.Options)
    end
end)

-- Will fetch from server the displayed vehicles from database
CreateThread(function()
    TriggerServerEvent(TriggerName("UpdateDisplayedVehicles"), true)
end)

-- Will block keys if player is viewing menu
CreateThread(function()
    while true do
        Wait(0)
        if ViewingShop then
            DisableControlAction(2, 37, true)
            HideHudComponentThisFrame(22)
        else
            Wait(1500)
        end
    end
end)
---------------------------------------------------------------
-- Events
---------------------------------------------------------------
--- Will update visibility for player markers
AddEventHandler(TriggerName("PlayerLoaded"), function()
    for k, v in pairs(DisplayMarkers) do
        local grades = {}
        for key, value in pairs(Config.DisplayVehicles) do
            if value.Job == k then
                grades = value.Grades
                break
            end
        end

        local Show = IsAtJob(k, grades)

        for key, value in pairs(v) do
            if Show then
                value.render()
            else
                value.stopRender()
            end
        end
    end
end)
----------------------------------------------------
-- QBCORE
----------------------------------------------------
-- Will load player job + update markers
RegisterNetEvent(Config.OnPlayerLoaded, function()
    UpdatePlayerDataForQBCore()
    TriggerEvent(TriggerName("PlayerLoaded"))
end)

-- Will load player job + update markers
RegisterNetEvent(Config.OnJobUpdate, function()
    UpdatePlayerDataForQBCore()
    TriggerEvent(TriggerName("PlayerLoaded"))
end)

----------------------------------------------------
-- ESX
----------------------------------------------------
--- Will update player cached job
RegisterNetEvent(Config.PlayerLoaded, function(xPlayer)
    PlayerData = xPlayer
    TriggerEvent(TriggerName("PlayerLoaded"))
end)

--- Will update player cached job
RegisterNetEvent(Config.SetJob, function(job)
    PlayerData.job = job
    TriggerEvent(TriggerName("PlayerLoaded"))
end)

----------------------------------------------------
-- Others
----------------------------------------------------
-- Will delete all vehicles if the script stopped
AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() then
        RemoveAllVehicles()
    end
end)