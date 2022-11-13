---------------------------------------------------------------
-- Variables
---------------------------------------------------------------
-- for some unknow reason to me... "GetVehicleType" is server sided function only
-- and i have not found anything that would say "hey this is submanire!" so.. i am doing this array list.
local SubmarineList = {
    [GetHashKey("submersible")] = true,
    [GetHashKey("submersible2")] = true,
    [GetHashKey("kosatka")] = true,
}
---------------------------------------------------------------
-- Functions
---------------------------------------------------------------
--- @param vehicle entity
function MakeVehicleTransparent(vehicle)
    CreateThread(function()
        local veh = vehicle
        local fakeTimer = 1
        local anotherFakeTimer = 0
        local vehList = {}
        local posVehicle = GetEntityCoords(vehicle)
        while true do
            Wait(1)
            if #(posVehicle - GetEntityCoords(veh)) > 15 or anotherFakeTimer > 1000 then
                CreateThread(function()
                    local alpha = 125
                    while true do
                        Wait(8)
                        alpha = alpha + 1
                        SetEntityAlpha(vehicle, alpha, false)
                        if alpha == 255 then
                            SetEntityAlpha(vehicle, 255, false)
                            collectgarbage()
                            return
                        end
                    end
                end)
                collectgarbage()
                return
            end

            anotherFakeTimer = anotherFakeTimer + 1
            fakeTimer = fakeTimer - 1
            if fakeTimer == 0 then
                fakeTimer = 150
                vehList = {}
                for k, v in pairs(GetGamePool('CVehicle')) do
                    if #(GetEntityCoords(veh) - GetEntityCoords(v)) < 25 then
                        table.insert(vehList, {
                            vehicle = v,
                        })
                    end
                end
            end

            for k, v in pairs(vehList) do
                if veh ~= v.vehicle then
                    SetEntityNoCollisionEntity(v.vehicle, veh, true)
                end
            end
        end
    end)
end

---------------------------------------------------------------
-- Events
---------------------------------------------------------------
-- when player start viewing vehicle shop
AddEventHandler(TriggerName("ViewingShop"), function()
    Animation.ResetAll()
    Animation.Play("tablet2")
    RemoveAllVehicles()
    ViewingShop = true

    ShowHelpNotification(_U("help_text_list"), false, false, 15000)
end)


--- when player exit UI shop
AddEventHandler(TriggerName("ExitShop"), function()
    DisableKey = false
    local ped = PlayerPedId()
    Animation.ResetAll()
    if TookVehicleOut then
        TookVehicleOut = false
        local model = GetEntityModel(SpawnedVehicle)
        if IsThisModelABoat(model)  or IsThisModelAJetski(model) or SubmarineList[model] then
            TaskWarpPedIntoVehicle( ped , SpawnedVehicle, -1)
            return
        end

        -- key = animation
        -- value = reset ped action
        local randomAnim = {
            {
                anim = "bringiton",
                clear = false,
                canMove = true,
            },
            {
                anim = "adjusttie",
                clear = false,
                canMove = true,
            },
            {
                anim = "comeatmebro",
                clear = false,
                canMove = true,
            },
            {
                anim = "damn",
                clear = false,
                canMove = true,
            },
            {
                anim = "flip",
                clear = false,
                canMove = false,
            },
            {
                anim = "flip2",
                clear = false,
                canMove = false,
            },
            {
                anim = "slide3",
                clear = false,
                canMove = false,
            },
        }

        local finalAnim = randomAnim[math.random(#randomAnim)]
        SetEntityHeading(ped, GetEntityHeading(SpawnedVehicle))
        SetEntityCoords(ped, SpawnedVehiclePos.x, SpawnedVehiclePos.y, SpawnedVehiclePos.z)
        Wait(100)
        Animation.Play(finalAnim.anim)
        Wait(100)

        if finalAnim.canMove == false then
            while IsEntityPlayingAnim(ped, Animation.GetLastAnimationDict(), Animation.GetLastAnimationName(), 3) do
                Wait(100)
            end
            Wait(500)
        end

        TaskEnterVehicle(ped, SpawnedVehicle, -1, -1, 1.0)

        while not IsPedInAnyVehicle(ped, false) do
            Wait(100)
        end

        if finalAnim.clear then
            ClearPedTasksImmediately(ped)
        end
    else
        Animation.Play("think5")
    end

    ViewingShop = false
    TookVehicleOut = false

    SpawnAllVehicles()

    ShowHelpNotification(" ", false, false, 15)
end)

--- will call after vehicle spawn
AddEventHandler(TriggerName("VehicleSpawned"), function(vehicle, IsForRide, properties)
--    local modelName = properties.modelEx
--
--    print(modelName)
    -- preready fro qbcore.
    TriggerEvent("vehiclekeys:client:SetOwner", properties.plate)
    TriggerServerEvent("rcore_garage:GivePlayerKey", properties.plate)
    ShowHelpNotification(" ", false, false, 15)
    TookVehicleOut = true

    local ped = PlayerPedId()
    local NetVehicle = VehToNet(vehicle)
    local pos = GetOffsetFromEntityInWorldCoords(vehicle, -1.5, -4.5, 0.0)

    SpawnedVehiclePos = pos
    SpawnedVehicle = vehicle
    ViewingShop = false

    SetVehicleProperties(vehicle, {
        fuelLevel = 100,
    })

    SetEntityAlpha(vehicle, 125, false)

    MakeVehicleTransparent(vehicle)

    if IsForRide then
        InitRentLogic(NetVehicle, ped, pos)
    end
end)