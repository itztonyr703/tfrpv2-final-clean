local ActivaCamera = "default"
local disc = ""
local savedData = ""


local CameraPositions = {
    ["default"] = {
        vehiclePosition = vector3(227.87, -991.2, -99.9),
        vehicleRotation = 180.0,
        cameraOffsetRotation = vector3(-10, 0, -45),
        cameraFov = 50.0,
    }
}

local VehiclesToScreenShot = {}

local OffsetVehicleCategory = {--[1] = vector3(0, 0, 0.33),
}

local OffSetForModel = {
    ["tribike2"] = vector3(0, 0, 0.33),
}

local AceList = {}

local function IsAceAllowed(ace)
    return AceList[ace] or false
end

function IsVehicleOnListAlready(hash)
    for k, v in pairs(VehiclesToScreenShot) do
        if v == hash then
            return true
        end
    end
    return false
end

CreateThread(function()
    TriggerServerEvent(TriggerName("loadPerms"))
    TriggerServerEvent(TriggerName("oujeee"))
end)

RegisterNetEvent(TriggerName("loadPerms"))
AddEventHandler(TriggerName("loadPerms"), function(key, value)
    AceList[key] = value
end)

RegisterNetEvent(TriggerName("oujeee"))
AddEventHandler(TriggerName("oujeee"), function(url)
    disc = url
end)

--add_ace group.admin screenshot.save
--add_ace group.admin screenshot.screenshot

RegisterCommand('savemodel', function(source, args, user)
    if IsAceAllowed("command.save") then
        if args[1] then
            local hash = GetHashKey(args[1])

            if IsVehicleOnListAlready(hash) then
                TriggerEvent('chat:addMessage', { args = { '^1 This vehicle is already on the screenshot list!' } })
                return
            end

            table.insert(VehiclesToScreenShot, hash)
            TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', 'Model saved ' .. hash } })
        else
            local model = GetEntityModel(GetVehiclePedIsIn(PlayerPedId(), false))

            if IsVehicleOnListAlready(model) then
                TriggerEvent('chat:addMessage', { args = { '^1 This vehicle is already on the screenshot list!' } })
                return
            end

            if model ~= 0 then
                table.insert(VehiclesToScreenShot, model)
                TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', 'Model saved ' .. model } })
            else
                TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', 'Invalid model!' } })
            end
        end
    else
        TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', 'Not enough permissions!' } })
    end
end)

RegisterCommand('clearmodels', function(source, args, user)
    if IsAceAllowed("command.screenshot") then
        VehiclesToScreenShot = {}
    end
end)

RegisterCommand('pdmdebug', function(source, args, user)
    if IsAceAllowed("command.screenshot") then
        Config.PDMScreenShot = not Config.PDMScreenShot
        TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', string.format('Debug status: %s', Config.PDMScreenShot) } })
    end
end)

RegisterCommand('startscreenshot', function(source, args, user)
    savedData = ""
    if IsAceAllowed("command.screenshot") then
        CreateThread(function()
            local WaitTime = 500
            local vehicle = nil
            local CarPos = CameraPositions[ActivaCamera]
            local camera = nil
            local lastPos = GetEntityCoords(PlayerPedId())

            SetEntityCoords(PlayerPedId(), CarPos.vehiclePosition)
            SetEntityVisible(PlayerPedId(), false, 0)
            for k, v in pairs(VehiclesToScreenShot) do
                local offset = OffSetForModel[v]
                if type(v) == "string" then
                    v = GetHashKey(v)
                end
                RequestModel(v)

                Wait(WaitTime)
                DeleteEntity(vehicle)
                vehicle = CreateVehicle(v, CarPos.vehiclePosition.x, CarPos.vehiclePosition.y, CarPos.vehiclePosition.z, CarPos.vehicleRotation, false, false)
                Wait(100)
                if vehicle ~= 0 then
                    local offsetCategory = OffsetVehicleCategory[GetVehicleClass(vehicle)]

                    local size = #GetModelDimensions(v)

                    local x = (size / 3.0 * 100) * (3.0 / 100)
                    local y = (size / 2.35 * 100) * (3.0 / 100)
                    local z = (size / 11.75 * 100) * (3.0 / 100)

                    if offset then
                        x = x - offset.x
                        y = y - offset.y
                        z = z - offset.z
                    end

                    if offsetCategory then
                        x = x - offsetCategory.x
                        y = y - offsetCategory.y
                        z = z - offsetCategory.z
                    end

                    local pos = GetOffsetFromEntityInWorldCoords(vehicle, x, y, z)

                    if not camera then
                        camera = createCamera("garage_screenshots", pos, CarPos.cameraRotation, CarPos.cameraFov)
                        Wait(33)
                        camera.render()
                    end
                    camera.setCoords(pos)
                    camera.setRotation(CarPos.cameraOffsetRotation)
                    Wait(1000)
                    exports['screenshot-basic']:requestScreenshotUpload(disc, 'files[]', function(data)
                        local resp = json.decode(data)
                        TriggerServerEvent(TriggerName("takeScreenshot"), v, resp.attachments[1].proxy_url)
                        savedData = savedData .. 'CustomImages["'.. v ..'"] = "'.. resp.attachments[1].proxy_url ..'";\n'
                    end)
                end
            end
            Wait(WaitTime)
            stopRendering()
            DeleteEntity(vehicle)
            SetEntityVisible(PlayerPedId(), true, 0)
            if camera then
                camera.destroy()
            end
            SetEntityCoords(PlayerPedId(), lastPos)

            Wait(1500)
            SetNuiFocus(true, true)
            SendNUIMessage({
                type = "display_for_copy",
                text = savedData,
            })
        end)
    else
        TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', 'Not enough permissions!' } })
    end
end)