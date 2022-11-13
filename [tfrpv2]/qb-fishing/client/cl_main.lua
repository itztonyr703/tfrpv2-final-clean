local QBCore = exports['qb-core']:GetCoreObject()
local inFishingZone = false
local listen = false
local Casting = false
local FishingRod = false
local FishingHandler = nil

-- functions
local function PlayAnimation(ped, dict, anim, flag)
    QBCore.Functions.RequestAnimDict(dict)
    TaskPlayAnim(ped, dict, anim, 1.0, -1.0, 1.0, flag, 0, 0, 0, 0)
    RemoveAnimDict(dict)
end

local function CastBait()
    if inFishingZone then
        QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasItem)
            if hasItem then
                TriggerServerEvent("QBCore:Server:RemoveItem", "fishingbait", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["fishingbait"], "remove")
                local ped = PlayerPedId()
                Casting = true

                PlayAnimation(ped, "mini@tennis", "forehand_ts_md_far", 48)

                while IsEntityPlayingAnim(ped, "mini@tennis", "forehand_ts_md_far", 3) do
                    Wait(0)
                end

                PlayAnimation(ped, "amb@world_human_stand_fishing@idle_a", "idle_c", 11)

                local randomBait = (math.random(10,30))

                QBCore.Functions.Notify(Lang:t('info.waiting_fish'), "success", "10000")

                local interupted = false

                while randomBait >= 1 do
                    Wait(1000)
                    randomBait = randomBait - 1

                    if not IsEntityPlayingAnim(ped, "amb@world_human_stand_fishing@idle_a", "idle_c", 3) then
                        interupted = true
                        break
                    end
                end

                if interupted then
                    ClearPedTasks(ped)
                    Casting = false
                end

                if Casting then
                    local seconds = math.random(20,35)
                    local circles = 1
                    local caughtFish = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)

                    if caughtFish then
                        RequestAnimDict('anim@heists@ornate_bank@hack')
                        RequestModel('a_c_fish')
                
                        while not HasAnimDictLoaded('anim@heists@ornate_bank@hack') or not HasModelLoaded('a_c_fish') do
                        Wait(0)
                        end
                        
                        TaskPlayAnim(ped, "anim@heists@ornate_bank@hack", "hack_enter", 1.0, 1.0, 2575, 0, 0, 0, 0, 0)
                
                        Wait(800)
                
                        local boneIndex = GetPedBoneIndex(ped, 0xfa70)
                        local bonePos = GetWorldPositionOfEntityBone(ped, boneIndex)
                        local FishPed = CreatePed(28, GetHashKey('a_c_fish'), bonePos.x, bonePos.y, bonePos.z, true, true, true)
                        AttachEntityToEntity(FishPed, ped, GetPedBoneIndex(ped, 57005), 0.1, 0, -0.1, -45.0, 45.0, 0.0, true, true, false, true, 1, true)
                        Wait(1750)

                        DeletePed(FishPed)
                        TriggerServerEvent("qb-fishing:receiveFish")
                        Casting = false
                        local luck = math.random(1,100)
                        if luck <= 33 then 
                            TriggerServerEvent('hud:server:RelieveStress', math.random(1,3))
                        end
                    else
                        QBCore.Functions.Notify(Lang:t('error.loose_fish'), "error")
                        Casting = false
                    end
                    startListening4Control()
                    Wait(100)

                    ClearPedTasksImmediately(ped)
                else
                    QBCore.Functions.Notify(Lang:t('error.intterupted'), "error")
                    startListening4Control()
                end
            else
                QBCore.Functions.Notify(Lang:t('error.no_bait'), "error")
                startListening4Control()
            end
        end, 'fishingbait', 1) 
    end
end
local function GenerateFishingRod()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local RodHash = 'prop_fishing_rod_02'
    QBCore.Functions.LoadModel(RodHash)
    FishingHandler = CreateObject(RodHash, pos, true)
    AttachEntityToEntity(FishingHandler, ped, GetPedBoneIndex(ped, 18905), 0.1, 0.05, 0, 80.0, 120.0, 160.0, true, true, false, true, 1, true)
    SetModelAsNoLongerNeeded(RodHash)
end

function startListening4Control()
    listen = true
    CreateThread(function()
        while listen do
            if IsControlJustReleased(0, 38) then -- E
                if not Casting then
                    listen = false
                    CastBait()
                else
                    QBCore.Functions.Notify(Lang:t('error.already_casted'), "error")
                end
            end
            Wait(5)
        end
    end)
end

-- Spots
CreateThread(function()
    for k, v in pairs(PolySpots) do
        local FishingBlip = AddBlipForCoord(PolySpots[k].BlipCoord)
        SetBlipSprite(FishingBlip, PolySpots[k].Blip)
        SetBlipAsShortRange(FishingBlip, true)
        SetBlipScale(FishingBlip, 0.8)
        SetBlipColour(FishingBlip, PolySpots[k].BlipColor)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(PolySpots[k].label)
        EndTextCommandSetBlipName(FishingBlip)

        local FishSpot = PolyZone:Create(PolySpots[k].zones, {
            name = PolySpots[k].label,
            minZ = 	PolySpots[k].minz,
            maxZ = PolySpots[k].maxz,
            debugPoly = false
        })

        FishSpot:onPlayerInOut(function(isPointInside)
            if isPointInside then
                inFishingZone = true
                exports["fjam-ui"]:showInteraction(Lang:t('info.fish_zone'), 'water')
            else
                exports["fjam-ui"]:hideInteraction()
                FishingRod = false
                listen = false
                inFishingZone = false
                DeleteEntity(FishingHandler)
            end
        end)
    end
end)

-- Fishing Rod

RegisterNetEvent('qb-fishing:StartFishing', function()
    if not FishingRod then
        local ped = PlayerPedId()
        if not IsPedInAnyVehicle(ped, false) then
            if IsPedSwimming(ped) then return QBCore.Functions.Notify(Lang:t('info.no_swim'), "error") end 
            if inFishingZone then
                QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasItem)
                    if hasItem then
                        FishingRod = true
                        GenerateFishingRod()
                        CastBait()
                        startListening4Control()


                        exports["fjam-ui"]:showInteraction(Lang:t('interactions.bait_throw'), 'water')
                    else
                        QBCore.Functions.Notify(Lang:t('error.no_bait'), "error", 4500)
                    end
                end, 'fishingbait', 1)
            else 
                QBCore.Functions.Notify(Lang:t('info.not_suiteable'), "error", 4500)
            end
        else
            QBCore.Functions.Notify(Lang:t('info.in_car'), "error", 4500)
        end
    else
        QBCore.Functions.Notify(Lang:t('info.rod_hands'), "error", 4500)
    end
end)


RegisterNetEvent('qb-fishing:client:FishingMenu', function()
   
    local loadedSettings = false

    local context = {
        {
            header =("%s"):format(Config.FIshermanName),
            txt = Lang:t('menu.fish_desciption'),
            isMenuHeader = true,
        },
        {
            header = Lang:t('menu.tour_header'),
            txt = Lang:t('menu.tour_txt'),
            params = {
                event = "qb-fishing:client:TournamentList",  
            },
        },
    }

    QBCore.Functions.TriggerCallback("qb-fishing:server:loadMainMenu",function(settings)
        if not settings.registered then
            context[#context+1] = {
                header = Lang:t('menu.notif_header'),
                txt = Lang:t('menu.notif_txt'),
                params = {
                    isServer = true,
                    event = "qb-fishing:server:toggleNotifications",
                },
            }
        else
            context[#context+1] = {
                header = Lang:t('menu.notif_header'),
                txt = Lang:t('menu.notif_stoptxt'),
                params = {
                    isServer = true,
                    event = "qb-fishing:server:toggleNotifications",
                },
            }
        end
        loadedSettings = true
    end)
    while loadedSettings == false do Wait(50) end
    context[#context+1] = {
        header = Lang:t('menu.sell_head'),
        txt = Lang:t('menu.sell_txt'),
        params = {
            event = "qb-fishing:client:sellfish"
        }
    }
    exports['qb-menu']:openMenu(context)
end)

RegisterNetEvent("qb-fishing:client:TournamentList", function()
    local loadedSettings = false

    local context = {
        {
            header = ("%s"):format(Config.FIshermanName),
            txt = Lang:t('menu.fish_desciption'),
            isMenuHeader = true,
        }
    }

    QBCore.Functions.TriggerCallback("qb-fishing:server:loadTournamentMenu",function(settings)
        if not settings.status and settings.active then
            table.insert(context, {
                header = Lang:t('tournament.status'):format(settings.activeFishers),
                txt = Lang:t('tournament.signup'):format(Config.Fish[settings.currentMode].label),
                params = {
                    event = "qb-fishing:client:joinTournament",
                    args = settings.currentMode
                },
            })
        elseif settings.status and settings.active then
            table.insert(context, {
                header = Lang:t('tournament.status'):format(settings.activeFishers),
                txt = Lang:t('tournament.leaderboard'):format(settings.totalCaught, settings.highestCaught, Config.Fish[settings.currentMode].label),
                isMenuHeader = true
            })
        else
            table.insert(context, {
                header = Lang:t('tournament.idle_head'),
                txt = Lang:t('tournament.idle_txt'),
                isMenuHeader = true,
            })
        end

        if settings.history ~= false then
            local amount = tonumber(JoinID)
            table.insert(context, {
                header = Lang:t('tournament.history_head'),
                txt = Lang:t('tournament.history_txt'):format(#settings.history),
                params = {
                    event = "qb-fishing:client:tournamentHistory",
                    args = settings.currentMode
                },
            })
        end
        loadedSettings = true
    end)
    while loadedSettings == false do Wait(50) end
    exports['qb-menu']:openMenu(context)
end)

RegisterNetEvent('qb-fishing:client:tournamentHistory', function(data)
    local loadedSettings = false
    local menu = {{header = ("%s"):format(Config.FIshermanName),txt = Lang:t('menu.fish_desciption'),isMenuHeader = true}}
    QBCore.Functions.TriggerCallback("qb-fishing:server:loadHistoryMenu",function(settings)
        if settings.history ~= false then
            for k=1, #settings.history do
                if Config.Tournaments.MinimumPlayers <= #settings.history[k] and settings.history[k][1].citizenid then
                    table.insert(menu, {
                        header = Lang:t('tournament.claim_head'):format(settings.history[k][1].matchId, Config.Fish[settings.history[k][1].type].label),
                        txt = Lang:t('tournament.claim_txt'),
                        params = {
                            event = "qb-fishing:client:tournamentHistoryData",
                            args = {
                                tournament = settings.history[k],
                                cacheId = k
                            }
                        },
                    })
                else
                    table.insert(menu, {
                        header = Lang:t('tournament.claim_head'):format(settings.history[k][1].matchId, Config.Fish[settings.history[k][1].type].label),
                        txt = Lang:t('tournament.cancelled_txt'),
                        isMenuHeader = true,
                    })

                end
            end
        end
        loadedSettings = true
    end)
    while loadedSettings == false do Wait(50) end

    exports['qb-menu']:openMenu(menu)

end)

local winners = {[1]= '🥇', [2]= '🥈', [3]= '🥉',}
RegisterNetEvent('qb-fishing:client:tournamentHistoryData', function(data)
    local menu = {{header = ("%s"):format(Config.FIshermanName),txt = Lang:t('menu.fish_desciption'),isMenuHeader = true}}

    for k=1, #data.tournament do
        if k<4 then 
            if data.tournament[k].citizenid == QBCore.Functions.GetPlayerData().citizenid then
                if not data.tournament[k].isClaimed then
                    table.insert(menu, {
                        header = ("%s %s"):format(winners[k], data.tournament[k].name),
                        txt = Lang:t('tournament.reward_claim'):format(data.tournament[k].score, Config.Fish[data.tournament[1].type].label),
                        params = {
                            isServer = true,
                            event = "qb-fishing:server:claimTournamentReward",
                            args = {
                                tournamentId = data.cacheId
                            }
                        },
                    })
                else 
                    table.insert(menu, {
                        header = ("%s %s"):format(winners[k], data.tournament[k].name),
                        txt = Lang:t('tournament.reward_claimed'):format(data.tournament[k].score, Config.Fish[data.tournament[1].type].label),
                        isMenuHeader = true,
                    }) 
                end
            else
                table.insert(menu, {
                    header = ("%s %s"):format(winners[k], data.tournament[k].name),
                    txt = ("%s - %s"):format(data.tournament[k].score, Config.Fish[data.tournament[1].type].label),
                    isMenuHeader = true,
                })
            end
        else
            table.insert(menu, {
                header = data.tournament[k].name,
                txt = ("%s - %s"):format(data.tournament[k].score, Config.Fish[data.tournament[1].type].label),
                isMenuHeader = true,
            })
        end
    end
    exports['qb-menu']:openMenu(menu)
end)

RegisterNetEvent('qb-fishing:client:joinTournament', function(data)
    TriggerServerEvent('qb-fishing:server:SignINTournament', Config.Fish[data].label)
end)


RegisterNetEvent('qb-fishing:client:sellfish', function()
    TriggerServerEvent('qb-fishing:server:SellFish')
end)

RegisterNetEvent('qb-fishing:client:OpenCrate', function(Crate)
    if Crate == "basic" then 
        RequestAnimDict("mp_arresting")
        while (not HasAnimDictLoaded("mp_arresting")) do
            Wait(10)
        end
        TaskPlayAnim(PlayerPedId(), "mp_arresting" ,"a_uncuff" ,8.0, -8.0, -1, 1, 0, false, false, false )
        Wait(5)

        TriggerServerEvent("InteractSound_SV:PlayOnSource", "boxopen", 0.8)

        QBCore.Functions.Progressbar("qb-fishingCrate", "Opening Crate", 3500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            QBCore.Functions.Notify("Crate Opened", "success", 4500)
            TriggerServerEvent('qb-fishing:server:CrateOpened', Crate)
        end)
    elseif Crate == "advanced" then

    end
end)

CreateThread(function()
    for k, v in pairs(Config.Blips) do
        local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
        SetBlipSprite(blip, v.blip)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, v.color)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.label)
        EndTextCommandSetBlipName(blip)
    end
end)