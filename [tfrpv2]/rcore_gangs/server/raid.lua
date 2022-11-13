-- AllowedRaids = {}

-- RegisterCommand('policeraidgangclosest', function(source, args)
--     if IsPlayerAllowed(source) then
--         local targetServerId = tonumber(args[1])

--         if targetServerId == nil then
--             return ShowNotification(source, 'Player not found')
--         end

--         if GetPlayerPed(targetServerId) == 0 then
--             return ShowNotification(source, 'Player not found')
--         end

--         local ped = GetPlayerPed(targetServerId)
--         local coords = GetEntityCoords(ped)

--         if AllowedRaids[targetServerId] then
--             ShowNotification(Source, 'This player is already raiding another gang')
--             return
--         end

--         local dbGangData = GetRaidableGangs()

--         for _, gang in pairs(dbGangData) do
--             local gangCheckpoints = json.decode(gang.checkpoints)

--             if gangCheckpoints and gangCheckpoints.storageCheckpoint then
--                 local storageVec = vector3(gangCheckpoints.storageCheckpoint.x, gangCheckpoints.storageCheckpoint.y, gangCheckpoints.storageCheckpoint.z)

--                 if #(storageVec - coords) < 20.0 then
--                     AllowedRaids[targetServerId] = {
--                         storagePos = storageVec,
--                         gangId = gang.id,
--                     }

--                     TriggerClientEvent('rcore_gangs:allowRaid', targetServerId, gang.tag, storageVec)

--                     SetTimeout(10 * 60 * 1000, function()
--                         AllowedRaids[targetServerId] = nil
--                     end)

--                     break
--                 end
--             end
--         end
--     end
-- end)

-- RegisterCommand("printraidablegangs", function(source)
--     if source == 0 then
--         tprint(AllowedRaids)
--     end
-- end, true)

-- function GetRaidableGangs()
--     return DB.fetchAll([[
--         SELECT
--             gangs.id,
--             gangs.name AS gangName,
--             gangs.color AS color,
--             gangs.tag AS tag,
--             gangs.checkpoints as checkpoints
--         FROM gangs
--     ]])
-- end

-- function tprint (tbl, indent)
--     if not indent then indent = 0 end
--     for k, v in pairs(tbl) do
--       formatting = string.rep("  ", indent) .. k .. ": "
--       if type(v) == "table" then
--         print(formatting)
--         tprint(v, indent+1)
--       elseif type(v) == 'boolean' then
--         print(formatting .. tostring(v))      
--       else
--         print(formatting .. v)
--       end
--     end
--   end