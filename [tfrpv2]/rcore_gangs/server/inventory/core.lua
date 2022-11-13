if Config.Inventory == nil or Config.Inventory == 0 then
    if GetResourceState('core_inventory') == 'starting' or GetResourceState('core_inventory') == 'started' then
        Config.Inventory = 8
    end
end

CreateThread(function()
    if Config.Inventory == 8 then
        IsStorageEmpty = function(name)
            local result = DB.fetchScalar('SELECT data FROM coreinventories WHERE name = @name', { ['@name'] = name })
            local items = json.decode(result).content

            return next(items) == nil
        end
    end
end)