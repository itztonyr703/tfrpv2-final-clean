RegisterNetEvent(TriggerName("takeScreenshot"))
AddEventHandler(TriggerName("takeScreenshot"), function(model, url)
    local source = source
    if IsPlayerAceAllowed(source, "command.screenshot") then
        local file = io.open('RCORE_PDM_SCREENSHOTS.js', 'a')

        file:write('CustomImages["'.. model ..'"] = "'.. url ..'";\n')
        file:close()
        TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Model saved!' } })
    end
end)

--add_ace group.admin command.save allow
--add_ace group.admin command.screenshot allow

RegisterNetEvent(TriggerName("loadPerms"))
AddEventHandler(TriggerName("loadPerms"), function()
    local source = source
    TriggerClientEvent(TriggerName("loadPerms"), source, "command.screenshot", IsPlayerAceAllowed(source, "command.screenshot"))
    TriggerClientEvent(TriggerName("loadPerms"), source, "command.save", IsPlayerAceAllowed(source, "command.save"))
end)

RegisterNetEvent(TriggerName("oujeee"))
AddEventHandler(TriggerName("oujeee"), function()
    if IsPlayerAceAllowed(source, "command.screenshot") then
        TriggerClientEvent(TriggerName("oujeee"), source, Config.ScreenshotWebhook)
    end
end)