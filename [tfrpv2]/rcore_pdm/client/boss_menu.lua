---------------------------------------------------------------
-- Variable list
---------------------------------------------------------------
DisableKey = false
---------------------------------------------------------------
-- Events
---------------------------------------------------------------
-- will create all markers for boss menu in PDM
AddEventHandler(TriggerName("ScriptLoaded"), function()
    for k, v in pairs(Config.BossMarkerList) do
        local marker = createMarker()

        marker.setType(v.MarkerSpawnerStyle.style or 31)

        marker.setPosition(v.Position or vector3(0, 0, 0))
        marker.setScale(v.MarkerSpawnerStyle.size or vector3(1, 1, 1))
        marker.setColor(v.MarkerSpawnerStyle.color or { r = 0, g = 125, b = 0, a = 125 })

        marker.setRotation(v.MarkerSpawnerStyle.rotation or true)

        marker.setKeys(Config.InteractKeys)

        marker.on("enter", function()
            showHelpNotification(_U("open_boss_menu"))
            DisableKey = false
        end)

        marker.on("leave", function()
            CloseAll()
            DisableKey = false
        end)

        marker.setJob(v.Job)

        local newGrades = {}

        for _, grade in pairs(v.Grades) do
            newGrades[grade] = true
        end

        marker.setGrades(newGrades)

        marker.on("key", function()
            local Menu = CreateMenu("boss_pdm_menu")

            Menu.SetMenuTitle(_U("boss_title_menu"))

            Menu.SetProperties({
                float = "right",
                position = "middle",
            })

            local index = 1
            Menu.AddItem(index, _U("boss_stock_shop"), function()
                TriggerEvent(TriggerName("OpenVehicleBossMenu"), k, v, false, false)
            end)

            if v.ChangingPriceEnabled then
                index = index + 1
                Menu.AddItem(index, _U("change_price_vehicle"), function()
                    TriggerEvent(TriggerName("OpenVehicleBossMenu"), k, v, true, false)
                end)
            end

            index = index + 1
            Menu.AddItem(index, _U("boss_action_menu"), function()
                TriggerEvent('esx_society:openBossMenu', v.Job, function(data, menu)
                    menu.close()
                end)
                -- qb-managment
                TriggerEvent("qb-bossmenu:client:OpenMenu")
                -- qb-bossmenu
                -- https://tenor.com/view/facepalm-really-stressed-mad-angry-gif-16109475
                TriggerEvent("qb-bossmenu:client:openMenu")
                DisableKey = false
            end)

            Menu.OnSelectEvent(function(index, data)
                CloseAll()
            end)

            if not DisableKey then
                Menu.Open()
            end
            DisableKey = true
        end)

        TriggerEvent(TriggerName("InsertMarkerToCache"), marker)
    end
    TriggerEvent(TriggerName("PlayerLoaded"))
end)