local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Functions.CreateUseableItem("gallery_aquamarinering", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
if Player.Functions.RemoveItem(item.name, 1, item.slot) then
      TriggerClientEvent("dynyx-rings:client:aquamarine", source, item.name)
  end
end)

QBCore.Functions.CreateUseableItem("gallery_citrinering", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
if Player.Functions.RemoveItem(item.name, 1, item.slot) then
      TriggerClientEvent("dynyx-rings:client:citrine", source, item.name)
  end
end)

QBCore.Functions.CreateUseableItem("gallery_diamondring", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
if Player.Functions.RemoveItem(item.name, 1, item.slot) then
      TriggerClientEvent("dynyx-rings:client:diamond", source, item.name)
  end
end)

QBCore.Functions.CreateUseableItem("gallery_jadering", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
if Player.Functions.RemoveItem(item.name, 1, item.slot) then
      TriggerClientEvent("dynyx-rings:client:jade", source, item.name)
  end
end)

QBCore.Functions.CreateUseableItem("gallery_onyxring", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
if Player.Functions.RemoveItem(item.name, 1, item.slot) then
      TriggerClientEvent("dynyx-rings:client:onyx", source, item.name)
  end
end)

QBCore.Functions.CreateUseableItem("gallery_rubyring", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
if Player.Functions.RemoveItem(item.name, 1, item.slot) then
      TriggerClientEvent("dynyx-rings:client:ruby", source, item.name)
  end
end)

QBCore.Functions.CreateUseableItem("gallery_sapphirering", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
if Player.Functions.RemoveItem(item.name, 1, item.slot) then
      TriggerClientEvent("dynyx-rings:client:sapphire", source, item.name)
  end
end)

QBCore.Functions.CreateUseableItem("gallery_tanzanitering", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
if Player.Functions.RemoveItem(item.name, 1, item.slot) then
      TriggerClientEvent("dynyx-rings:client:tanzanite", source, item.name)
  end
end)