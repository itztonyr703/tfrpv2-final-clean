local QBCore = exports['qb-core']:GetCoreObject()

local PlayerJob = {}
RegisterNetEvent('QBCore:Client:OnPlayerLoaded') AddEventHandler('QBCore:Client:OnPlayerLoaded', function() QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job end) end)
RegisterNetEvent('QBCore:Client:OnJobUpdate') AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo end)
AddEventHandler('onResourceStart', function(resource) if GetCurrentResourceName() ~= resource then return end QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job end) end)

function jobCheck()
	if Config.Debug then print("^5Debug^7: ^3jobCheck^7: ^2Checking for correct job role^7...") end
	local check = false
	for k, v in pairs(Config.JobRoles) do
		if k == PlayerJob.name and PlayerJob.grade.level >= v then check = true
			if Config.Debug then print("^5Debug^7: ^3jobCheck^7: ^2Found correct job role ^7'^6"..PlayerJob.name.."^7'") end
		end
	end
	if Config.Debug and check == false then print("^5Debug^7: ^3jobCheck^7: ^2Job role not found^7") end
	return check
end

function trim(value)
	if not value then return nil end
	--if Config.Debug then print("^5Debug^7: ^trim^7: ^2Trimming plate ^7'^6"..value.."^7'") end
    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
end

RegisterNetEvent('jim-plates:client:setplate:Menu', function(item)
	if item then -- If item has been used check if job is needed
		if Config.ItemRequireJob and not jobCheck() then TriggerEvent("QBCore:Notify", "Only selected job are allowed to do this", "error") return end
	end
	if not item then -- If Item hasn't been used (/command) then check if job is needed
		if Config.ComRequireJob and not jobCheck() then TriggerEvent("QBCore:Notify", "Only selected job are allowed to do this", "error")	return end
	end
	local playerPed	= PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	--Allows use outside and inside vehicle
	local vehicle = nil
	if not IsPedInAnyVehicle(playerPed, false) then vehicle = GetClosestVehicle(GetEntityCoords(playerPed), 4.5, 0, 71)
	else vehicle = GetVehiclePedIsIn(playerPed, false) end

	--Grabs vehicle/owners info
	if DoesEntityExist(vehicle) then
		if Config.Debug then print("^5Debug^7: ^3getInfo^7: ^2Using vehicle's current plate ^7[^6"..trim(GetVehicleNumberPlateText(vehicle)).."^7] ^2to find player info from server^7") end
		local p = promise.new()
		QBCore.Functions.TriggerCallback('jim-plates:getInfo', function(cb) p:resolve(cb) end, trim(GetVehicleNumberPlateText(vehicle)))
		if Citizen.Await(p) == "Not Found" then TriggerEvent("QBCore:Notify", "Vehicle not owned", "error") return
		else playerinfo = Citizen.Await(p) end
	else
		TriggerEvent("QBCore:Notify", "No Vehicle Nearby", "error")
		return
	end
	if Config.Debug then print("^5Debug^7: ^3getInfo^7: ^2Info database result: ^7'^6"..playerinfo.."^7'") end

	--Trigger animation
	TriggerEvent('animations:client:EmoteCommandStart', {"clipboard"})

	--Grab car info if its available in the shared.
	if Config.Debug then print("^5Debug^7: ^3GetDisplayName^7: ^2Seraching ^4QBCore^7.^4Shared^6.^4Vehicles^7...") end
	local model = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
	if QBCore.Shared.Vehicles[GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)):lower()] then model = QBCore.Shared.Vehicles[GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)):lower()].name end

	if Config.Debug then print("^5Debug^7: ^3GetDisplayName^7: ^2Result^7: '^6"..model.."^7'") end
	if Config.Debug then print("^5Debug^7: ^3setPlate^7: ^2Attempting to display ^4qb^7-^4input ^2menu^7...") end

    local dialog = exports['qb-input']:ShowInput({
        header = "<center><img src=https://i.imgur.com/ojBmBHi.png width=100px>"..
				"<br>- Customise Plates - <br>"..
				"<br>Owner: "..playerinfo..
				"<br>Vehicle: "..model.."<br>"..
				"<br>Current Plate: ["..trim(GetVehicleNumberPlateText(vehicle)).."]<br>",
        submitText = "Submit",
        inputs = { { type = 'text', isRequired = true, name = 'plate', text = 'Max 8 Characters' } } })
	if dialog then
        if not dialog.plate then return end
        TriggerEvent('jim-plates:client:setplate', dialog.plate, vehicle, item)
    end
	TriggerEvent('animations:client:EmoteCommandStart', {"c"})
end)

RegisterNetEvent('jim-plates:client:setplate', function(arg, vehicle, item)
	if Config.Debug then print("^5Debug^7: ^3setplate^7: ^2New plate info received, capitilizing: '^6"..arg.."^7' ^2into ^7'^6"..arg:upper().."^7'") end
	local plateinfo = arg:upper()

	--Check for illegal characters
	local input = plateinfo:gsub("[^"..Config.Filter.."]", "")
	if Config.Debug then print("^5Debug^7: ^3setplate^7: ^2Filtering out blacklisted characters ^7'^6"..input.."^7'") end

	--If letters have been removed then show error
	if string.len(tostring(input)) ~= string.len(tostring(plateinfo)) then
		TriggerEvent("QBCore:Notify", "Plate contained illegal characters!", "error")
		if Config.Debug then print("^5Debug^7: ^3setplate^7: ^2Blacklisted letters found^7. ^1Cancelling^7") end
		return
	end

	--Check plate length, I had issues with it being more or less than 8 so I've set a hard limit
	if Config.Debug then print("^5Debug^7: ^3setplate^7: ^2Checking plate length^7...") end

	if string.len(tostring(plateinfo)) > 8 then
		TriggerEvent("QBCore:Notify", "Name Too Long", "error")
		TriggerEvent("jim-mechanic:plate:client:setplate:Menu")
		if Config.Debug then print("^5Debug^7: ^3setplate^7: ^2Plate too long^7: '^6"..string.len(tostring(plateinfo)).." Letters^7' (^18 Max^7)") end
		return
	elseif (string.len(tostring(plateinfo)) < 8 and Config.CharacterReq) then TriggerEvent("QBCore:Notify", "Name Too Short", "error") TriggerEvent("jim-mechanic:plate:client:setplate:Menu") return end

	--Start changing server side stuff
	if Config.Debug then print("^5Debug^7: ^3setplate^7: ^2Accepted^7, sending info to server side^7...") end

	TriggerServerEvent("jim-plates:server:setplate", { vehicle = VehToNet(vehicle), currentplate = string.gsub(string.upper(GetVehicleNumberPlateText(vehicle)), "%s+", ""), newplate = input, item = item })

end)

RegisterNetEvent("jim-plates:updatePlate", function(data)
	if Config.Debug then print("^5Debug^7: ^3updatePlate^7: ^2Converitng vehicle ^4NetID^7[^6"..data.vehicle.."^7] ^2back to ^4EntityID^7[^6"..NetToVeh(data.vehicle).."^7]") end
	local vehicle = NetToVeh(data.vehicle)

	if data.src == QBCore.Functions.GetPlayerData().source then
		TriggerEvent("QBCore:Notify", "Vehicle Plates updated to: ["..data.newplate.."]", "success")
		local Player = QBCore.Functions.GetPlayerData()
		TriggerServerEvent('qb-log:server:CreateLog', 'vehicleupgrades', GetCurrentResourceName() .." - "..Player.charinfo.firstname.." "..Player.charinfo.lastname.."("..Player.id..") ["..Player.citizenid.."]", 'lightgreen',
		"Player changing plate of vehicle [**"..trim(GetVehicleNumberPlateText(vehicle)).."**] to [**"..data.newplate.."**]")

		--Update database mod data to reflect the changes
		if Config.Debug then print("^5Debug^7: ^3updatePlate^7: ^2Saving ^4VehicleProperties^2 to assure changes^7...") end
		TriggerServerEvent("jim-plates:saveInfo", QBCore.Functions.GetVehicleProperties(vehicle), data.newplate)

		-- Remove item from player if set to
		if data.item == true and Config.ItemRemoval then
			if Config.Debug then print("^5Debug^7: ^ItemRemoval^7: ^2Removing plate from players inventory^7...") end
			TriggerServerEvent("jim-plates:server:removeplate")
		end
	end
	--Update cars physical plate
	if Config.Debug then print("^5Debug^7: ^3updatePlate^7: ^2Setting vehicle plate^7: [^6"..data.newplate.."^7]") end
	SetVehicleNumberPlateText(vehicle, data.newplate)
end)