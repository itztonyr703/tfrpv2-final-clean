local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = '',
    ['testwebhook'] = '',
    ['playermoney'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['playerinventory'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['robbing'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['cuffing'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['drop'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['trunk'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['stash'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['glovebox'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['banking'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['shops'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['dealers'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['storerobbery'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['powerplants'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['death'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['joinleave'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['ooc'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['report'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['me'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['anticheat'] = '',
    ['weather'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['moneysafes'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['bennys'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['bossmenu'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['robbery'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['casino'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['traphouse'] = '',
    ['911'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
    ['palert'] = '',
    ['house'] = 'https://discord.com/api/webhooks/991923767225884722/kdtl2qedvX8dTsRYWPR43_-W5b2aExOCi5iWo05F9OxlkMH1dyQZz-3ppygFt6H42UOe',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = ''}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
