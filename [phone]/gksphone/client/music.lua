local xSound = exports.xsound
local streamer = false
local musicdata = {}
local musicloop = false

RegisterNetEvent('gksphone:server:music', function(type, sid, url, coords, volume, loop)
    if type == "play" and not streamer then
        if musicdata[sid] then
            xSound:Destroy(sid)
        end
        musicdata[sid] = true
        xSound:PlayUrlPos(sid, url, 1, coords)
        xSound:Distance(sid, 8)
        xSound:setVolumeMax(sid, 0.1)
        xSound:onPlayStart(sid, function(event) -- event argument returns getInfo(id)
            CreateThread(function()
                while true do
                    Wait(100)
                    local test = false
                    if xSound:soundExists(sid) then
                        if xSound:isPlaying(sid) then
                            local player = GetPlayerFromServerId(sid)
                            if player ~= -1 then
                                local ped = GetPlayerPed(player)
                                local kordinat = GetEntityCoords(ped)
                                xSound:Position(sid, kordinat)
                                if IsPedInAnyVehicle(ped, true) == 1 then
                                    local vehicle = GetVehiclePedIsIn(ped, false)
                                    if GetEntitySpeed(vehicle) * 3.6 > 60.0 then
                                        xSound:Distance(sid, 20)
                                    elseif GetEntitySpeed(vehicle) * 3.6 > 120.0 then
                                        xSound:Distance(sid, 50)
                                    elseif GetEntitySpeed(vehicle) * 3.6 == 0.0 then
                                        xSound:Distance(sid, 8)
                                    end
                                end

                                if test then
                                    xSound:setVolumeMax(sid, event.volume)
                                    test = false
                                end
                            else
                                test = true
                                xSound:setVolumeMax(sid, 0.0)
                            end
                        end
                    else
                        xSound:Destroy(sid)
                        musicdata[sid] = nil
                        break
                    end
                end
            end)
        end)
    end
    if type == "destroy" then
        if musicdata[sid] then
            xSound:Destroy(sid)
        end
    end
    if type == "pause" then
        if musicdata[sid] then
            if xSound:soundExists(sid) then
                if xSound:isPlaying(sid) then
                    xSound:Pause(sid)
                end
            end
        end
    end
    if type == "resume" then
        if musicdata[sid] then
            if xSound:soundExists(sid) then
                if not xSound:isPlaying(sid) then
                    xSound:Resume(sid)
                end
            end
        end
    end
    if type == "volume" then
        if musicdata[sid] then
            if xSound:soundExists(sid) then
                if xSound:isPlaying(sid) then
                    if volume then
                        xSound:setVolumeMax(sid, volume.volume)
                    end
                end
            end
        end
    end
    if type == "loop" then
        if musicdata[sid] then
            if xSound:soundExists(sid) then
                if xSound:isPlaying(sid) then
                    xSound:setSoundLoop(sid, loop)
                end
            end
        end
    end
end)



RegisterNUICallback('youtplayTEST', function(data, cb)
    TriggerServerEvent('gksphone:server:musicAll', "play", data.link)
    if musicloop then
        SetTimeout(400, function()
            TriggerServerEvent('gksphone:server:musicAll', "loop", nil, nil, true)
        end)
    end
    cb('ok')
end)

RegisterNUICallback('youtstopAWA', function(data, cb)
    TriggerServerEvent("gksphone:server:musicAll", "destroy")
    cb('ok')
end)

RegisterNUICallback('musicDevametGKS', function(data, cb)
    TriggerServerEvent("gksphone:server:musicAll", "resume")
    cb('ok')
end)

RegisterNUICallback('musicDuraklatATA', function(data, cb)
    TriggerServerEvent("gksphone:server:musicAll", "pause")
    cb('ok')
end)

RegisterNUICallback('BNEstreamerMod', function(data, cb)
    streamer = data
    cb('ok')
end)

RegisterNUICallback('musicappvolume', function(volume, cb)
    TriggerServerEvent('gksphone:server:musicAll', "volume", nil, volume)
    cb('ok')
end)

RegisterNUICallback('musicapploop', function(data,cb)
    musicloop = data.loop
    if musicloop then
        TriggerServerEvent('gksphone:server:musicAll', "loop", nil, nil, true)
    end
    cb('ok')
end)