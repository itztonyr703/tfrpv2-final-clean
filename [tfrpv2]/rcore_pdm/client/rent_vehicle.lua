local seconds

function showSubtitle(message)
    BeginTextCommandPrint('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandPrint(1000, 1)
end

function InitRentLogic(NetVehicle, ped, pos)
    seconds = Config.MaximumSecondsToRent
    TriggerServerEvent(TriggerName("IsVehicleValid"), NetVehicle, seconds + 30)
    CreateThread(function()
        local veh
        local warning = 5
        TriggerServerEvent(TriggerName("PutIntoCache"), NetVehicle)
        while seconds ~= 0 do
            if NetworkDoesEntityExistWithNetworkId(NetVehicle) then
                veh = NetToVeh(NetVehicle)
            else
                veh = -1
            end

            seconds = seconds - 1
            warning = warning - 1

            if GetVehiclePedIsIn(ped, false) == veh or warning >= 0 then
                showSubtitle(_U("minutes_left", math.floor((seconds / 60) % 60), tonumber(seconds % 60)))
            end
            Wait(1000)
        end

        if NetworkDoesEntityExistWithNetworkId(NetVehicle) then
            veh = NetToVeh(NetVehicle)
        else
            veh = 0
        end

        if GetVehiclePedIsIn(ped, false) ~= veh then
            TriggerServerEvent(TriggerName("DeleteVehicle"), NetVehicle)
            return
        end

        TaskLeaveVehicle(ped, veh, 0)

        CreateThread(function()
            while true do
                Wait(100)
                local VehEntering = GetVehiclePedIsTryingToEnter(ped)
                if VehEntering == veh then
                    ClearPedTasksImmediately(ped)
                end
                if not DoesEntityExist(veh) then
                    break
                end
            end
        end)

        while GetVehiclePedIsIn(ped, false) ~= 0 do
            Wait(33)
        end

        pos = GetOffsetFromEntityInWorldCoords(veh, -1.5, -4.5, 0.0)

        createLocalPed(4, GetHashKey("a_m_y_business_02"), pos, 0, function(npc)
            if Config.GodModeNPC then
                SetEntityInvincible(npc, true)
                if not Config.IsNpcAgresive then
                    SetBlockingOfNonTemporaryEvents(npc, true)
                end
            end

            SetEntityAlpha(npc, 0, false)
            TaskEnterVehicle(npc, veh, -1, -1, 1.0)
            CreateThread(function()
                local alpha = 0
                while true do
                    Wait(1)
                    alpha = alpha + 2
                    SetEntityAlpha(npc, alpha, false)
                    if alpha >= 255 then
                        collectgarbage()
                        SetEntityAlpha(npc, 255, false)
                        return
                    end
                end
            end)

            while GetVehiclePedIsIn(npc, false) ~= 0 do
                Wait(2000)
                TaskEnterVehicle(npc, veh, -1, -1, 1.0)
            end

            TaskVehicleDriveWander(npc, veh, 50.0, 2)
        end)
    end)
end