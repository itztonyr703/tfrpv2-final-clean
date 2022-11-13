---------------------------------------------------------------
-- Functions
---------------------------------------------------------------
--- @param Key string
--- Will spawn displayed vehicles in PDM
function SpawnVehicles(Key)
    for k, v in pairs(DisplayedVehicles) do
        local section
        for key, value in pairs(Config.DisplayVehicles) do
            if value.Job == k and key == Key then
                section = value
                break
            end
        end

        if section then
            for key, value in pairs(v) do
                local carInfo = section.vehicles[key]
                if carInfo then
                    SpawnLocalVehicle(value.model, carInfo.pos, carInfo.heading, function(vehicle)
                        local modelName = GetVehicleModelName(GetEntityModel(vehicle))

                        value.vehicle = vehicle
                        carInfo.model = value.model
                        carInfo.category = value.category

                        local spec = ""

                        if value.vip_price then
                            spec = _U("display_data_spec", value.vip_price)
                        end

                        local text = _U("display_data", modelName, value.price and ("$" .. CommaValue(value.price)) or "Can't buy with money", spec, value.instock or "∞")

                        if value.floatText == nil then
                            local floatText = create3DText(text)

                            floatText.setRenderDistance(carInfo.text3Distance or 5)

                            floatText.setPosition(carInfo.pos + vector3(0, 0, 2))

                            floatText.setScale(vector3(0.4, 0.4, 0.4))

                            floatText.render()

                            value.floatText = floatText
                        else
                            value.floatText.setText(text)
                        end

                        SetEntityCollision(vehicle, true, true)
                        if value.extra then
                            SetVehicleProperties(vehicle, value.extra)
                        end
                        FreezeEntityPosition(vehicle, true)
                        SetVehicleOnGroundProperly(vehicle)
                    end)
                end
            end
            break
        end
    end
end

--- @param Key string
--- Will remove displayed vehicles in PDM
function RemoveVehicles(Key)
    for k, v in pairs(DisplayedVehicles) do
        local section
        for key, value in pairs(Config.DisplayVehicles) do
            if value.Job == k and key == Key then
                section = value
                break
            end
        end

        if section then
            for key, value in pairs(v) do
                local carInfo = section.vehicles[key]
                if carInfo then
                    DeleteEntity(value.vehicle)
                end
            end
            break
        end
    end
end

--- @param Key string
--- Will spawn displayed vehicles in PDM
function SpawnAllVehicles()
    local pos = GetEntityCoords(PlayerPedId())
    for k, v in pairs(DisplayedVehicles) do
        local sectionInfo
        for key, value in pairs(Config.DisplayVehicles) do
            if value.Job == k then
                sectionInfo = value
                break
            end
        end

        if sectionInfo and #(sectionInfo.Position - pos) < 35 then
            if sectionInfo.Render == false then
                for key, value in pairs(v) do
                    local carInfo = sectionInfo.vehicles[key]
                    if carInfo then
                        sectionInfo.Render = true
                        SpawnLocalVehicle(value.model, carInfo.pos, carInfo.heading, function(vehicle)
                            local modelName = GetVehicleModelName(GetEntityModel(vehicle))

                            value.vehicle = vehicle
                            carInfo.model = value.model
                            carInfo.category = value.category

                            local spec = ""

                            if value.vip_price then
                                spec = _U("display_data_spec", value.vip_price)
                            end

                            local colorStock = "~b~"

                            if (value.instock or 0) > 50 then
                                colorStock = "~Y~"
                            end
                            if (value.instock or 0) > 100 then
                                colorStock = "~o~"
                            end
                            if (value.instock or 0) > 150 then
                                colorStock = "~b~"
                            end

                            local text = _U("display_data", modelName, value.price and ("$" .. CommaValue(value.price)) or "Can't buy with money", spec, colorStock .. ((value.instock == 0 and "~r~none~w~" or value.instock) or "∞"))


                            if value.floatText == nil then
                                local floatText = create3DText(text)

                                floatText.setRenderDistance(carInfo.text3Distance or 5)

                                floatText.setPosition(carInfo.pos + vector3(0, 0, 2))

                                floatText.setScale(vector3(0.4, 0.4, 0.4))

                                floatText.render()

                                value.floatText = floatText
                            else
                                value.floatText.setText(text)
                            end

                            SetEntityCollision(vehicle, true, true)
                            if value.extra then
                                SetVehicleProperties(vehicle, value.extra)
                            end
                            FreezeEntityPosition(vehicle, true)
                            SetVehicleOnGroundProperly(vehicle)
                        end)
                    end
                end
            end
        end
    end
end

--- Will all remove displayed vehicles in PDM
function RemoveAllVehicles()
    for k, v in pairs(DisplayedVehicles) do
        local sectionInfo
        for key, value in pairs(Config.DisplayVehicles) do
            if value.Job == k then
                sectionInfo = value

                if sectionInfo then
                    sectionInfo.Render = false
                    for key, value in pairs(v) do
                        local carInfo

                        carInfo = sectionInfo.vehicles[key]

                        if carInfo then
                            if value.floatText then
                                value.floatText.destroy()
                                value.floatText = nil
                            end
                            DeleteEntity(value.vehicle)
                        end
                    end
                end
            end
        end
    end
end

---------------------------------------------------------------
-- Threads
---------------------------------------------------------------
-- Will save a es_extended modul into local variable "ESX"
-- will prepare markers for displaying vehicle also
-- + will create blip on map
CreateThread(function()
    -- will create all markers for displaying vehicles
    -- they will be seen only for employees
    for k, v in pairs(Config.DisplayVehicles) do
        DisplayMarkers[v.Job] = {}

        for key, value in pairs(v.vehicles) do
            local marker = createMarker()

            marker.setRenderDistance(value.markerDistance or 5)
            marker.setPosition(value.pos)
            marker.setRotation(true)
            marker.setType(30)
            marker.setJob(v.Job)

            marker.setInRadius(2.5)

            marker.setKeys({ 47, 74 })

            marker.on("enter", function()
                showHelpNotification(_U("display_vehicle"))
            end)

            marker.on("key", function(keyPressed)
                if keyPressed == 47 then
                    TriggerEvent(TriggerName("OpenVehicleBossMenu"), v.Job, {
                        Position = vector3(0, 0, 0),
                        MarkerSpawnerStyle = { style = 31, size = vector3(1.0, 1.0, 1.0), color = { r = 125, g = 255, b = 125, a = 200 }, rotate = true, },
                        Job = v.Job,
                        Grades = {},
                        SpawnPoints = { { pos = vector3(-49.73, -1077.09, 26.86), heading = 69.0 }, },
                        Society = "society_dealer",
                        SocietyLabel = "dealer",
                        CameraPositions = v.cam,
                    }, true, true, {
                        model = value.model,
                        category = value.category,
                        index = key,
                    })
                end

                if keyPressed == 74 then
                    TriggerServerEvent(TriggerName("RemoveDisplayedVehicle"), {
                        model = value.model,
                        category = value.category,
                        index = key,
                        Job = v.Job,
                    })
                    value.model = nil
                    Animation.Play("think5")
                end
            end)

            DisplayMarkers[v.Job][key] = marker
        end
    end
end)

-- Will create vehicles if player is nearby the PDM
CreateThread(function()
    local ped, pos
    while true do
        Wait(2500)
        ped = PlayerPedId()
        pos = GetEntityCoords(ped)
        if DisplayedVehicles ~= nil and ViewingShop == false then
            for k, v in pairs(Config.DisplayVehicles) do
                if #(v.Position - pos) < 35 then
                    if v.Render == false then
                        v.Render = true

                        -- for unknow reasons to me... i need to trigger this more than once?
                        -- because it wont delete all vehicles if this is triggered just once????
                        -- please... somebody help me.
                        ClearAreaOfVehicles(v.Position.x, v.Position.y, v.Position.z, 35.0, false, false, false, false, false)
                        ClearAreaOfVehicles(v.Position.x, v.Position.y, v.Position.z, 35.0, false, false, false, false, false)
                        ClearAreaOfVehicles(v.Position.x, v.Position.y, v.Position.z, 35.0, false, false, false, false, false)
                        SpawnVehicles(k)
                    end
                else
                    if v.Render == true then
                        v.Render = false
                        RemoveVehicles(k)
                    end
                end
            end
        end
    end
end)
---------------------------------------------------------------
-- Events
---------------------------------------------------------------
--- Will call whenever player updated something about vehicles. Bought, etc.
RegisterNetEvent(TriggerName("UpdateDisplayedVehicles"))
AddEventHandler(TriggerName("UpdateDisplayedVehicles"), function(data)
    if DisplayedVehicles ~= nil then
        RemoveAllVehicles()
    end

    DisplayedVehicles = data
    if ViewingShop == false then
        SpawnAllVehicles()
    end
end)