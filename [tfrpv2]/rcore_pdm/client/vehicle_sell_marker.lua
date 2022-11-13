local LastJob = ""


-- Whenever player goes there, he will be able to sell the vehicle he is in.
-- If he have bought it, and the dealer have this kind of vehicle.
CreateThread(function()
    if Config.EnableSellOption then
        for k, v in pairs(Config.SellVehicleMarker) do
            local marker = createMarker()

            marker.setRenderDistance(10)
            marker.setPosition(v.pos or vector3(0, 0, 0))
            marker.setRotation(v.rotation or false)
            marker.setType(v.type or 1)

            marker.setColor(v.color or { r = 0, g = 255, b = 0, a = 125 })

            marker.setInRadius(2.5)

            marker.setKeys(v.keys or { 38 })

            marker.on("enter", function()
                if not IsPedInAnyVehicle(PlayerPedId(), false) then
                    showHelpNotification(_U("you_need_to_be_in_vehicle"))
                else
                    showHelpNotification(_U("sell_vehicle"))
                end
            end)

            marker.on("key", function()
                if IsPedInAnyVehicle(PlayerPedId(), false) then
                    callCallback(TriggerName("GetVehicleHistoryInfo"), function(hisVehicle, price)
                        LastJob = v.job
                        if hisVehicle == true then
                            SetNuiFocus(true, true)
                            SendNUIMessage({
                                type = "ShowSellPrice",
                                money = tonumber(price) * (Config.SellVehicleFeePercent / 100),
                                percentage = Config.SellVehicleFeePercent,
                            })
                        end
                        if not hisVehicle then
                            showHelpNotification(_U("not_your_vehicle"))
                        end
                        if hisVehicle == 3 then
                            showHelpNotification(_U("cant_buy_back"))
                        end
                    end, GetVehicleProperties(GetVehiclePedIsIn(PlayerPedId(), false)).plate, v.job)
                end
            end)
        end
    end
end)

--- player choosed something
RegisterNUICallback("refund", function(data)
    callCallback(TriggerName("SellThisVehicle"), function(Sold)
        if Sold then
            DoScreenFadeOut(350)
            Wait(450)
            DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            Wait(100)
            DoScreenFadeIn(100)
        end
    end, GetVehicleProperties(GetVehiclePedIsIn(PlayerPedId(), false)).plate, data.typeSelected, LastJob)
end)