
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('ReyMarca_FakePlate:AddOrRemovePlate')
AddEventHandler('ReyMarca_FakePlate:AddOrRemovePlate', function(item, quantity, remove)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player ~= nil then
        if remove == true then
            Player.Functions.RemoveItem(item, quantity)
        elseif remove == false then
            Player.Functions.AddItem(item, quantity)
        end
    end
end)

QBCore.Functions.CreateUseableItem("license_plate", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent("ReyMarca_FakePlate:UseFakePlate", source, item.name)
	end
end)

QBCore.Functions.CreateUseableItem("fake_plate", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent("ReyMarca_FakePlate:AllAction", source, item.name)
	end
end)

QBCore.Functions.CreateUseableItem("advancedlockpick", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent("ReyMarca_FakePlate:UseRemovePlate", source, item.name)
	end
end)


