local QBCore = exports['qb-core']:GetCoreObject()
local playerMats = {}

QBCore.Functions.CreateUseableItem("yogamat", function(source, item)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)

  if playerMats[src] then
    TriggerClientEvent("QBCore:Notify", src, Locales["alreadyOwnMat"], "error")
    return
  end

  if Player.Functions.RemoveItem("yogamat", 1) then
    playerMats[src] = true
    --TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["yogamat"], "remove")
    TriggerClientEvent("lambra-portableYoga:client:setMat", src)
  end
end)

RegisterNetEvent("lambra-portableYoga:server:pickupMat", function()
  local src = source

  if playerMats[src] then
    playerMats[src] = nil
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("yogamat", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["yogamat"], "add")
  end
end)

AddEventHandler('playerDropped', function()
  local src = source
  if playerMats[src] then playerMats[src] = nil end
end)