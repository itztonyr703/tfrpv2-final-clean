Config = {}

-- locales
Config.Locale = "en"

ES = "1"
QB = "2"

-- debug prints
Config.Debug = false

-- framework
-- 1 = esx
-- 2 = qbcore
Config.Framework = "2"

-- do we still use old table "player_boats"? if yes switch this to true
Config.OldQbDiving = false

-- if you have newer QBCore for some reason older didnt trimmed plate and newer does.
-- Switch this to true/false trim/not trim the plate :D
Config.TrimPlate = true

Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

if Config.Framework == "2" then
    Config.PlateLetters  = 4
    Config.PlateNumbers  = 4
    Config.PlateUseSpace = false
end

-- event for setjob
-- Use "KM" or "MI"
Config.MileageFormat = "MI"

-- will return max speed vehicle
Config.GetVehicleEstimatedMaxSpeed = function(vehicle)
    if Config.MileageFormat == "MI" then
        return math.ceil(GetVehicleModelEstimatedMaxSpeed(GetEntityModel(vehicle)) * 2.24) or 200
    end
    return math.ceil(GetVehicleModelEstimatedMaxSpeed(GetEntityModel(vehicle)) * 3.605936) or 200
end

------------------------------------------------
-- ESX Stuffs
------------------------------------------------
-- ESX object
Config.ESX = "esx:getSharedObject"

-- event for player loaded
Config.PlayerLoaded = "esx:playerLoaded"

-- event for setjob
Config.SetJob = "esx:setJob"
------------------------------------------------
-- QBCore Stuffs
------------------------------------------------
-- event for player loaded
Config.OnPlayerLoaded = "QBCore:Client:OnPlayerLoaded"

-- event for setjob
Config.OnJobUpdate = "QBCore:Client:OnJobUpdate"

-- 1 = rockstar License
-- 2 = steam
Config.QBCoreIdentifierType = "1"

Config.GetQBCoreObject = function()
    -- Choose your objectType or made here your own.
    local objectType = "1"

    if objectType == "1" then
        return exports['qb-core']:GetCoreObject()
    end

    if objectType == "2" then
        return exports['qb-core']:GetSharedObject()
    end

    if objectType == "3" then
        local QBCore = nil
        local breakPoint = 0
        while not QBCore do
            Wait(100)
            TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)

            breakPoint = breakPoint + 1
            if breakPoint == 25 then
                print(string.format("^1[%s]^7 Could not load the sharedobject, are you sure it is called ^1˙QBCore:GetObject˙^7?", GetCurrentResourceName()))
                break
            end
        end

        return QBCore
    end
end

------------------------------------------------
-- Config
------------------------------------------------
-- is the npc who is taking back the car unkillable? Prevent player from stealing cars :D
Config.GodModeNPC = true

-- Should be NPC agresive if he gets attacked?
Config.IsNpcAgresive = false

-- default job for civil vehicles
Config.DefaultJob = "civ"

-- if this will be set on false, players wont be able to test any vehicle.
Config.EnableTryOutVehicle = true

-- how many seconds player is able to have the rented vehicle?
Config.MaximumSecondsToRent = 5 * 60

-- it will cost player $5000 to try the vehicle he is viewing.
-- if there is no for the category filled price, this price will be used as default.
Config.CostForTryOut = 0

-- This will set a custom value price to the category
Config.CategoryPriceTestDrive = {
    -- category with ID 0 will cost 3500 to test vehicle out.
    ["compacts"] = 0,
}

-- This will set a custom value price to the category
Config.CategoryVehiclePriceTestDrive = {
    -- category with ID 0 will cost 3500 to test vehicle out.
    ["compacts"] = {
        [GetHashKey("blista")] = 0,
    },
}

-- How many percent goes to the society?
-- 75 = 75% of the price means from 10,000$ the society will recieve 7,500$
Config.HowManyPercentGoesToSocity = 75

-- if some vehicle missing name, you can set it here!
Config.VehiclesName = {
    --["police"] = "police vehicle my god!",
}

-- Do you want to allow vehicle rotation?
-- will save few ms if disabled.
Config.DisableVehicleRotation = false

-- color list where player can switch on keys (arrow up, arrow down)
Config.VehicleColorList = {
    { label = 'Black', color1 = 0, color2 = 0, pearlescentColor = 0 },
    { label = 'Red', color1 = 28, color2 = 28, pearlescentColor = 0 },
    { label = 'Green', color1 = 55, color2 = 55, pearlescentColor = 0 },
    { label = 'Blue', color1 = 79, color2 = 79, pearlescentColor = 0 },
    { label = 'Light blue', color1 = 70, color2 = 70, pearlescentColor = 0 },
    { label = 'White', color1 = 134, color2 = 134, pearlescentColor = 0 },
    { label = 'Brown', color1 = 97, color2 = 97, pearlescentColor = 0 },
    { label = 'Yellow', color1 = 88, color2 = 88, pearlescentColor = 0 },
    { label = 'Orange', color1 = 41, color2 = 41, pearlescentColor = 0 },
    { label = 'Gray', color1 = 18, color2 = 18, pearlescentColor = 0 },
}

-- i dont recommend touching this, if you dont know what you're doing then just dont...
-- i beg you please
-- this will tell script what details you want to show in NUI has to be edited in javascript aswell
-- this table is exactly same like from function ESX.Game.GetVehicleProperties
Config.GetDetailsFromVehicle = function(vehicleData, vehicleEntity)
    if vehicleData and vehicleData.fuelLevel and vehicleData.fuelLevel >= 100 then
        vehicleData.fuelLevel = 100
    end

    local MaxGear = 5
    local MaxPassangers = 4

    if DoesEntityExist(vehicleEntity) then
        MaxGear = GetVehicleHighGear(vehicleEntity)
        MaxPassangers = GetVehicleMaxNumberOfPassengers(vehicleEntity) + 1
    end

    return {
        data_1 = MaxPassangers,
        data_2 = MaxGear, -- max gear
        data_3 = 100, -- fuel
        data_4 = vehicleData.dirtLevel or math.random(7), -- dirt level
        plate = vehicleData.plate, -- plate
    }
end

-- Key to open shop
Config.InteractKeys = { 38 }

-- default camera pos / rot list
Config.CameraPosition = {
    ["car"] = {
        vehiclePosition = vector3(227.87, -991.2, -99.9),
        vehicleRotation = 180.0,
        cameraPosition = vector3(224.49, -995.24, -98),
        cameraFov = 50.0,
    },
    ["airplane"] = {
        vehiclePosition = vector3(-979.82, -2994.58, 13.0),
        vehicleRotation = 66.0,
        cameraPosition = vector3(-980.74, -2986.21, 15.5),
        cameraFov = 50.0,
    },
    ["heli"] = {
        vehiclePosition = vector3(-1112.48, -2883.94, 13.0),
        vehicleRotation = 333.0,
        cameraPosition = vector3(-1101.52, -2880.72, 15.5),
        cameraFov = 50.0,
    },
--    ["boat"] = {
--        vehiclePosition = vector3(-725.34, -1354.72, 0.55),
--        vehicleRotation = 150.0,
--        cameraPosition = vector3(-725.81, -1363.4, 3.0),
--       cameraFov = 50.0,
--    },
}

-- Do no turn to true... Check a youtube tutorial how to do it correctly
-- Youtube tutorial: https://www.youtube.com/watch?v=UwCMurVE3aM
Config.PDMScreenShot = false

-- Well, some folks want it only as a catalog. So alright then :D
Config.DisableBuying = false