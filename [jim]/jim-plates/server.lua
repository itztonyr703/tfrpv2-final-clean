local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
	if Config.UseCommand then
		QBCore.Commands.Add(Config.Command, "Change the vehicles Plate", {}, false, function(source, args) TriggerClientEvent("jim-plates:client:setplate:Menu", source, false) end)
	end
	if Config.UseItem then
		QBCore.Functions.CreateUseableItem("newplate", function(source, item) TriggerClientEvent("jim-plates:client:setplate:Menu", source, true) end)
	end
end)

RegisterNetEvent("jim-plates:server:setplate", function(data)
	local src = source
	data.src = src
	--Check if owner is online before changing the plates.
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Check if owner is online before changing the plates^7...") end
	local playercheck = MySQL.Sync.fetchAll('SELECT citizenid FROM player_vehicles WHERE plate = ?', {data.currentplate})
	local playeronline = false
	for k, v in pairs(QBCore.Functions.GetPlayers()) do
		local Player = QBCore.Functions.GetPlayer(v)
		if Player ~= nil then if Player.PlayerData.citizenid == playercheck[1].citizenid then
			playeronline = true
			if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Player Online^7!") end
		end end
	end
	if playeronline == false then
		if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Player ^1NOT ^2Online^7!") end
		TriggerClientEvent("QBCore:Notify", src, "Owner not online, cannot customise", "error")
		return
	end

	--Check if plate is already in use
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Check if ^7'^2new^7' ^2plate is already in use^7...") end
	local platecheck = MySQL.Sync.fetchAll('SELECT plate FROM player_vehicles WHERE plate = ?', {data.newplate})
	if platecheck[1] ~= nil then
		if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Plate already in use^7.") end
		TriggerClientEvent("QBCore:Notify", src, "Vehicle Plate already exists!", "error")
		return
	else if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Plate not in use^7.") end end

	--Grab table id from database
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Grabbing database ID of the vehicle to start transfer^7...") end
	local result = MySQL.Sync.fetchAll('SELECT id FROM player_vehicles WHERE plate = ?', {data.currentplate})
	MySQL.Async.execute('UPDATE player_vehicles SET plate = ? WHERE id = ?', {data.newplate, result[1].id})
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Plate entry changed for correct vehicle database ID^7.") end

	--Update the cars actual physical plate
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Updating physical plate on the current car^7...") end

	TriggerClientEvent("jim-plates:updatePlate", -1, data)

	--Wait for database to catch up for next steps
	Wait(500)

	--Give the owner of the vehicle the keys to the updated vehicle.
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Grabbing vehicle owners citizenID to give new vehicle keys^7...") end
	local citizenid = MySQL.Sync.fetchAll('SELECT citizenid FROM player_vehicles WHERE plate = ?', {data.newplate})
	for k, v in pairs(QBCore.Functions.GetPlayers()) do
		local Player = QBCore.Functions.GetPlayer(v)
		if Player ~= nil then
			if Player.PlayerData.citizenid == citizenid[1].citizenid then
				if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Giving new keys of vehicle^7[^6"..data.newplate.."^7] ^2to ^7'^6"..citizenid[1].citizenid.."^7'(^6"..Player.PlayerData.source.."^7)") end
				TriggerClientEvent("vehiclekeys:client:SetOwner", Player.PlayerData.source, data.newplate)
			end
		end
	end

	--Update trunk database with new plate
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Transferring ^4trunkitems ^2to new vehicle plate^7...") end
	local trunktrans = MySQL.Sync.fetchAll('SELECT id FROM trunkitems WHERE plate = ?', {data.currentplate})
	Wait(100)
	if trunktrans[1] ~= nil then MySQL.Async.execute('UPDATE trunkitems SET plate = ? WHERE id = ?', {data.newplate, trunktrans[1].id}) end
	--Update glovebox database with new plate
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Transferring ^4gloveboxitems ^2to new vehicle plate^7...") end
	local glovetrans = MySQL.Sync.fetchAll('SELECT id FROM gloveboxitems WHERE plate = ?', {data.currentplate})
	Wait(100)
	if glovetrans[1] ~= nil then MySQL.Async.execute('UPDATE gloveboxitems SET plate = ? WHERE id = ?', {data.newplate, glovetrans[1].id}) end

end)

--This call back checks for the players name, but also by doing this checks if the vehicles owned.
QBCore.Functions.CreateCallback('jim-plates:getInfo', function(source, cb, plate)
	local citizenid = MySQL.Sync.fetchAll('SELECT citizenid FROM player_vehicles WHERE plate = ?', {plate})
	if citizenid[1] ~= nil then
		for k, v in pairs(QBCore.Functions.GetPlayers()) do
			local Player = QBCore.Functions.GetPlayer(v)
			if Player ~= nil then
				if Player.PlayerData.citizenid == citizenid[1].citizenid then
				result = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname
				end
			end
		end
	else result = "Not Found" end
	cb(result)
end)

RegisterNetEvent("jim-plates:saveInfo", function(mods, plate)
	local result = MySQL.Sync.fetchAll('SELECT * FROM player_vehicles WHERE plate = ?', {plate})
	if result[1] then
		if Config.Debug then print("^5Debug^7: ^3saveInfo^7: ^2Vehicle Mods ^7- [^6"..plate.."^7]") end
		MySQL.Async.execute('UPDATE player_vehicles SET mods = ? WHERE plate = ?', {json.encode(mods), plate})
	end
end)

RegisterNetEvent("jim-plates:server:removeplate", function()
	if QBCore.Functions.GetPlayer(src).Functions.RemoveItem("newplate", 1) then
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["newplate"], "remove", 1)
	end
end)