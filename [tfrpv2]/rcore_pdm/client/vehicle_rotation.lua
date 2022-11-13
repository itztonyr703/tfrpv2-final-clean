if not Config.DisableVehicleRotation then
    -- We will rotate the vehicle if player wish to, right/left
    -- by keys mouse wheel up/down
    CreateThread(function()
        while true do
            Wait(1)
            if CurrentGarage == nil then
                Wait(1500)
            else
                HideHudComponentThisFrame(1)
                HideHudComponentThisFrame(2)
                HideHudComponentThisFrame(3)
                HideHudComponentThisFrame(4)
                HideHudComponentThisFrame(6)
                HideHudComponentThisFrame(7)
                HideHudComponentThisFrame(8)
                HideHudComponentThisFrame(9)
                HideHudComponentThisFrame(13)
                HideHudComponentThisFrame(17)
                HideHudComponentThisFrame(19)
                HideHudComponentThisFrame(20)
            end
            if IsControlPressed(0, 96) then
                if rotationVehicle then
                    rotationVehicle = rotationVehicle - 3
                    SetEntityHeading(spawnedVehicle, rotationVehicle)
                    playerMovedVehicle = true
                end
            end
            if IsControlPressed(0, 97) then
                if rotationVehicle then
                    rotationVehicle = rotationVehicle + 3
                    SetEntityHeading(spawnedVehicle, rotationVehicle)
                    playerMovedVehicle = true
                end
            end
        end
    end)

    -- Will rotate vehicle it self
    CreateThread(function()
        while true do
            Wait(16)
            if CurrentGarage == nil then
                Wait(1500)
            end
            if not playerMovedVehicle and rotationVehicle ~= nil then
                rotationVehicle = rotationVehicle + 0.1
                SetEntityHeading(spawnedVehicle, rotationVehicle)
            end
        end
    end)

    -- Reset the cooldown for rotate
    CreateThread(function()
        while true do
            Wait(6000)
            playerMovedVehicle = false
        end
    end)
end