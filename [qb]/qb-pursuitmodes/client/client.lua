local QBCore = exports['qb-core']:GetCoreObject()
local Gear = 0

RegisterKeyMapping('pursuit', 'Pursuit Modes (POLICE ONLY)', 'keyboard', 'p')


local settings = {
    [1] = {
        ["Name"] = "A",
        ["Turbo"] = false,
        ["Engine"] = -1,
        ["Brakes"] = -1,
        ["Transmission"] = -1,
        ["XenonHeadlights"] = 0,
        ["handling"] = "fInitialDriveForce",
        ["handlingMultiplier"] = 0.90
    }, 
    [2] = {
        ["Name"] = "A+",
        ["Turbo"] = false,
        ["Engine"] = 2,
        ["Brakes"] = 1,
        ["Transmission"] = 2,
        ["XenonHeadlights"] = 1,
        ["handling"] = "fInitialDriveForce",
        ["handlingMultiplier"] = 1.0
    },
    [3] = {
        ["Name"] = "S",
        ["Turbo"] = true,
        ["Engine"] = 3,
        ["Brakes"] = 1,
        ["Transmission"] = 2,
        ["XenonHeadlights"] = 1,
        ["handling"] = "fInitialDriveForce",
        ["handlingMultiplier"] = 1.05
    },
    [4] = {
        ["Name"] = "S+",
        ["Turbo"] = true,
        ["Engine"] = 4,
        ["Brakes"] = 2,
        ["Transmission"] = 4,
        ["XenonHeadlights"] = 1,
        ["handling"] = "fInitialDriveForce",
        ["handlingMultiplier"] = 1.2
    },
}


RegisterCommand('pursuit', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local CurClass = GetVehicleClass(vehicle)
    if CurClass == 18 then
        local PlayerData = QBCore.Functions.GetPlayerData()
        local job = PlayerData.job.name
        if job == "police" or job == "bcso" or job == "parkranger" or job == "ambulance" then
            if Gear >= 5 then 
                Gear = 1
            else
                Gear = Gear + 1
            end
            Wait(math.random(250,350))
            SetVehicleModKit(vehicle, 0)
            SetVehicleXenonLightsColour(vehicle, 0)
            ToggleVehicleMod(vehicle, 18, settings[Gear]["Turbo"])
            SetVehicleMod(vehicle, 11, settings[Gear]["Engine"], false) -- Engine
            SetVehicleMod(vehicle, 12, settings[Gear]["Brakes"], false) -- Brakes
            SetVehicleMod(vehicle, 13, settings[Gear]["Transmission"], false) -- Transmission
            ToggleVehicleMod(vehicle, 22, settings[Gear]["XenonHeadlights"]) -- XenonHeadlights

            SetVehicleHandlingFloat(vehicle, 'CHandlingData', settings[Gear]["handling"], GetVehicleHandlingFloat(vehicle, 'CHandlingData', settings[Gear]["handling"])*settings[Gear]["handlingMultiplier"])
            
            QBCore.Functions.Notify("Pursuit mode changed to: "..settings[Gear]["Name"], "success", 4500)
        end
    end
end, false)