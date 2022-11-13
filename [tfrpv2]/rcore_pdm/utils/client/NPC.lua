--- Stolen from https://github.com/Isigar/relisoft_core/blob/master/client/natives/ped.lua

local PED_NETWORKED = true
local PED_NON_NETWORKED = false

function createPed(pedType, model, position, heading, cb)
    requestModel(model, function()
        local ped = CreatePed(pedType, model, position.x, position.y, position.z, heading, PED_NETWORKED, false)
        SetModelAsNoLongerNeeded(model)
        cb(ped)
    end)
end

function createLocalPed(pedType, model, position, heading, cb)
    requestModel(model, function()
        local ped = CreatePed(pedType, model, position.x, position.y, position.z, heading, PED_NON_NETWORKED, false)
        SetModelAsNoLongerNeeded(model)
        cb(ped)
    end)
end

function requestModel(modelName,cb)
    if type(modelName) ~= 'number' then
        modelName = tonumber(modelName)
    end

    local breaker = 0

    RequestModel(modelName)

    while not HasModelLoaded(modelName) do
        Wait(1)
        breaker = breaker + 1
        if breaker >= 100 then
            break
        end
    end

    if breaker >= 100 then
        cb(false)
    else
        cb(true)
    end
end