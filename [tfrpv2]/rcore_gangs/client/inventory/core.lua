if Config.Inventory == nil or Config.Inventory == 0 then
    if GetResourceState('core_inventory') == 'starting' or GetResourceState('core_inventory') == 'started' then
        Config.Inventory = 8
    end
end

CreateThread(function()
    if Config.Inventory == 8 then
        GetInventoryItems = function()
            return GetInventory()
        end

        OpenStorage = function()
            TriggerServerEvent('core_inventory:server:openInventory', MyGang.tag, 'stash')
        end

        OpenPlayerInventory = function(player)
            TriggerServerEvent('core_inventory:server:openInventory', GetPlayerServerId(player), 'otherplayer')
        end
    end
end)