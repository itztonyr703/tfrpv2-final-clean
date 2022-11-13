local blips = {
    -- {title="", colour=, id=, x=, y=, z=},

    {title="Drag Strip", colour=0, id=38, x = -2044.97, y = 3008.01, z = 32.81},
	{title="Realtor", colour=8, id=350, x = -1581.35, y = -558.81, z =  34.95},
 }

 --[[Info- To disable a blip add "--" before the blip line
 To add a blip just copy and paste a line and change the info and location if needed

 DO NO REPOST, DESTROY OR CLAIM MY SCRIPTS
 
 Made By TheYoungDevelopper]]
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)