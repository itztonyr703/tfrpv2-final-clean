local DISCORD_WEBHOOK = "https://discord.com/api/webhooks/993566413623132320/0D8tXwHAItBr9v9hDQmoxY2qw9wWjeJZaSL_tAr7bvF8AZbqybATLq1LfQUGa9YDRi8Z" --put ur webhook

RegisterServerEvent('log')
AddEventHandler('log', function(data)



    local connect = {
        {
            ["color"] = "125",
            ["title"] = "New Report | " ..data.plate.."-"..data.lastname,
            ["description"] = "Discord Name: \n **"..data.plate.."** \n Report Type: \n **"..data.lastname.."** \n \n What Happened?: \n**"..data.why.."**\n INGAME NAME?:\n **"..data.plate.."**",
	        ["footer"] = {
                ["text"] = "TFRP In Game Reporting",
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = "New Report",  avatar_url = "https://cdn.discordapp.com/attachments/919229938790436925/955490392323788910/sdllogo.jpg",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

