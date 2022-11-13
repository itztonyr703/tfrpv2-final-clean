-- RegisterNetEvent('rcore_gangs:allowRaid', function(gangTag, storagePos)

--     local timer = 0
--     local endRaidAt = GetGameTimer() + 10 * 60 * 1000

--     if MyGang and MyGang.tag == gangTag then
--         return
--     end

--     while GetGameTimer() < endRaidAt do
--         Wait(0)

--         local storageDistance = #(GetEntityCoords(PlayerPedId()) - storagePos)

--         if storageDistance < 5.0 then
--             local pos = storagePos
--             local x, y, z = pos.x, pos.y, pos.z

--             Draw3dText(x, y, z, _U('checkpoint_label_storage'):format('~s~'))
--             DrawMarker(2, x, y, z - 0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4, 0.2, 255, 0, 0, 196, false, true, 2, nil, nil, false)

--             if storageDistance < 1.2 then
--                 if IsControlJustPressed(0, 38) then
--                     if timer < GetGameTimer() then
--                         timer = GetGameTimer() + 2 * 1000

--                         local tmpGang = MyGang
--                         MyGang = {tag = gangTag}
--                         OpenStorage()
--                         MyGang = tmpGang
--                     end
--                 end
--             end
--         end
--     end
-- end)