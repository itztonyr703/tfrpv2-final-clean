if Config.Inventory == nil or Config.Inventory == 0 then
    if GetResourceState('inventory') == 'starting' or GetResourceState('inventory') == 'started' then
        Config.Inventory = 2
    end
end

CreateThread(function()
    if Config.Inventory == 2 then
        GetInventoryItems = function()
            local items = {}
        
            for _, item in pairs(GetInventory()) do
                table.insert(items, item.count > 0 and item or nil)
            end
        
            return items
        end
        
        OpenStorage = function()
            TriggerEvent('inventory:openInventory', {
                id = MyGang.tag,
                type = 'inventory',
                save = true,
                title = MyGang.tag,
                delay = 1000,
                weight = 300,
            })
        end

        OpenPlayerInventory = function(player)
            TriggerEvent('inventory:openPlayerInventory', GetPlayerServerId(player), true)
        end
    end
end)