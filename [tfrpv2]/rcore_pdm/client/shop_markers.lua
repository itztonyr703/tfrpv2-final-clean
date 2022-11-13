-- Will create logic for opening vehicle shop with possibility to buy a vehicle
CreateThread(function()
    for k, v in pairs(Config.ShopList) do

        if v.Enable3DText then
            local floatText = create3DText(v.FloatText)

            floatText.setRenderDistance(5)

            floatText.setRenderJob(v.RenderJob)

            floatText.setPosition((v.Position + vector3(0, 0, .75)) or vector3(0, 0, 0))

            floatText.setScale(vector3(0.4, 0.4, 0.4))

            floatText.render()
        end

        local marker = createMarker()

        marker.setRenderJob(v.RenderJob)

        marker.setType(v.MarkerSpawnerStyle.style or 36)

        marker.setPosition(v.Position or vector3(0, 0, 0))
        marker.setScale(v.MarkerSpawnerStyle.size or vector3(1, 1, 1))
        marker.setColor(v.MarkerSpawnerStyle.color or { r = 0, g = 125, b = 0, a = 125 })

        marker.setRotation(v.MarkerSpawnerStyle.rotate or false)

        marker.setFaceCamera(v.MarkerSpawnerStyle.face or false)

        marker.setKeys(Config.InteractKeys)

        marker.on("enter", function()
            if v.CustomEnterMessage then
                showHelpNotification(v.CustomEnterMessage)
            else
                showHelpNotification(_U("open_shop"))
            end
        end)

        marker.on("leave", function()
            TriggerServerEvent(TriggerName("SetBusyShopMarker"), k, false)
        end)

        marker.on("key", function()
            if v.Busy == false then
                v.Busy = true
                TriggerServerEvent(TriggerName("SetBusyShopMarker"), k, true)
                callCallback(TriggerName("getVehicleData"), function(data)
                    VehicleSellData = data
                    for k, v in pairs(data) do
                        for key, value in pairs(v[v.order].vehicle) do
                            if not IsModelInCdimage(value.model) then
                                print("Vehicle model doesnt exists!", value.model)
                                VehicleSellData[v.job][v.order].vehicle[key] = nil
                            end
                        end
                    end
                    v.SpawnAfterBuy = true

                    OpenVehicleShop(k, v, false, false)
                    DisableSection = false
                    DataGarage = {
                        key = k,
                        value = v,
                    }
                end)
            else
                showHelpNotification(_U("occupied"))
            end
        end)

        CachedMarkers[k] = marker
    end
    TriggerServerEvent(TriggerName("ClaimCachedMarkers"))
end)
