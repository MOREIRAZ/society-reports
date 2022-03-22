local DISCORD_WEBHOOK = "" --put ur webhook

RegisterServerEvent('log')
AddEventHandler('log', function(data)



    local connect = {
        {
            ["color"] = "125",
            ["title"] = "New Report | " ..data.plate.."-"..data.lastname,
            ["description"] = "Discord Name: \n **"..data.plate.."** \n Report Type: \n **"..data.lastname.."** \n \n What Happened?: \n**"..data.why.."**\n INGAME NAME?:\n **"..data.plate.."**",
	        ["footer"] = {
                ["text"] = "societydevelopment",
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = "New Report",  avatar_url = "https://cdn.discordapp.com/attachments/919229938790436925/955490392323788910/sdllogo.jpg",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

