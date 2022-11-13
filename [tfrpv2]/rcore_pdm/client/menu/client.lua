CachedMenu = {}
--------------
-- Sending info about changing item in menu
--------------
RegisterKey(function()
    SendNUIMessage({ type_menu = "up" })
end, "menuapiup_pdm", "Key up", "UP")

RegisterKey(function()
    SendNUIMessage({ type_menu = "down" })
end, "menuapidown_pdm", "Key down", "DOWN")
--------------
-- Sending info about selecting item
--------------
RegisterKey(function()
    SendNUIMessage({ type_menu = "enter" })
end, "menuapie_pdm", "Key E", "E")

RegisterKey(function()
    SendNUIMessage({ type_menu = "enter" })
end, "menuapienter_pdm", "Key ENTER", "RETURN")
--------------
-- closing menu keys
--------------
RegisterKey(function()
    CloseAll()
end, "menuapiesc_pdm", "Key ESC", "escape")

RegisterKey(function()
    CloseAll()
end, "menuapiescaper_pdm", "Key backspace", "back")
--------------