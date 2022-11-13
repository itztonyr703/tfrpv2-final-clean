--- This all is stolen from es_extended 1.2 for working purpose, its better if the esx things will be there than on heavily modified version on
--- someone else server so the script wont work inteded as it should have been.

local entityEnumerator = {
    __gc = function(enum)
        if enum.destructor and enum.handle then
            enum.destructor(enum.handle)
        end

        enum.destructor = nil
        enum.handle = nil
    end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end

        local enum = { handle = iter, destructor = disposeFunc }
        setmetatable(enum, entityEnumerator)

        local next = true
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next

        enum.destructor, enum.handle = nil, nil
        disposeFunc(iter)
    end)
end

function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function IsSpawnPointClear(coords, radius)
    local vehicles = GetVehiclesInArea(coords, radius)

    return #vehicles == 0
end

function GetVehiclesInArea(coords, area)
    local vehicles = GetVehicles()
    local vehiclesInArea = {}

    for i = 1, #vehicles, 1 do
        local vehicleCoords = GetEntityCoords(vehicles[i])
        local distance = #(vehicleCoords - coords)
        if distance <= area then
            table.insert(vehiclesInArea, vehicles[i])
        end
    end

    return vehiclesInArea
end

function GetVehicles()
    local vehicles = {}

    for vehicle in EnumerateVehicles() do
        if NetworkGetEntityIsNetworked(vehicle) ~= false then
            table.insert(vehicles, vehicle)
        end
    end

    return vehicles
end

-----------------------------------------
function RemoveVehicle(vehicle)
    DeleteEntity(vehicle)
end

function SpawnVehicle(modelName, coords, heading, cb)
    local model = (type(modelName) == 'number' and modelName or GetHashKey(modelName))

    Citizen.CreateThread(function()
        if not IsModelInCdimage(model) then
            print("Vehicle model doesnt exists!", model)
        end
        if not HasModelLoaded(model) and IsModelInCdimage(model) then
            RequestModel(model)

            while not HasModelLoaded(model) do
                Wait(1)
            end
        end

        local vehicle = CreateVehicle(model, coords.x, coords.y, coords.z, heading, true, false)
        local networkId = NetworkGetNetworkIdFromEntity(vehicle)
        local timeout = 0

        SetNetworkIdCanMigrate(networkId, true)
        SetEntityAsMissionEntity(vehicle, true, false)
        SetVehicleHasBeenOwnedByPlayer(vehicle, true)
        SetVehicleNeedsToBeHotwired(vehicle, false)
        SetVehRadioStation(vehicle, 'OFF')
        SetModelAsNoLongerNeeded(model)
        RequestCollisionAtCoord(coords.x, coords.y, coords.z)

        -- we can get stuck here if any of the axies are "invalid"
        while not HasCollisionLoadedAroundEntity(vehicle) and timeout < 2000 do
            Citizen.Wait(0)
            timeout = timeout + 1
        end

        if cb then
            cb(vehicle)
        end
    end)
end

function SpawnLocalVehicle(modelName, coords, heading, cb)
    local model = (type(modelName) == 'number' and modelName or GetHashKey(modelName))
    Citizen.CreateThread(function()
        if not IsModelInCdimage(model) then
            print("Vehicle model doesnt exists!", model)
        end
        if not HasModelLoaded(model) and IsModelInCdimage(model) then
            RequestModel(model)

            while not HasModelLoaded(model) do
                Wait(1)
            end
        end

        local vehicle = CreateVehicle(model, coords.x, coords.y, coords.z, heading, false, false)
        local timeout = 0

        SetEntityAsMissionEntity(vehicle, true, false)
        SetVehicleHasBeenOwnedByPlayer(vehicle, true)
        SetVehicleNeedsToBeHotwired(vehicle, false)
        SetVehRadioStation(vehicle, 'OFF')
        SetModelAsNoLongerNeeded(model)
        RequestCollisionAtCoord(coords.x, coords.y, coords.z)
        SetEntityCollision(vehicle, false, true)

        SetVehicleDirtLevel(vehicle, 0.0)

        -- we can get stuck here if any of the axies are "invalid"
        while not HasCollisionLoadedAroundEntity(vehicle) and timeout < 2000 do
            Citizen.Wait(0)
            timeout = timeout + 1
        end

        if cb then
            cb(vehicle)
        end
    end)
end