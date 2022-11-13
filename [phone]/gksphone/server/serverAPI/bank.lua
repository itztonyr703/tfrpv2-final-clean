-- BANK --

RegisterServerEvent('gksphone:transferPhoneNumber')
AddEventHandler('gksphone:transferPhoneNumber', function(to, totaltt)
    local _source = source
    local xPlayer = Config.Core.Functions.GetPlayer(_source)
    local TotalMoney = tonumber(totaltt)

    local zPlayer = Config.Core.Functions.GetPlayerByPhone(to)

    if Config.BankTransferCom ~= 0 then
        local yuzde = TotalMoney * (Config.BankTransferCom / 100)
        TotalMoney = TotalMoney + math.floor(yuzde + 0.5)
    end
    local balance = 0
    if zPlayer ~= nil then
        local zPlayerIden = zPlayer.PlayerData.citizenid
        local name = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname
        local name2 = zPlayer.PlayerData.charinfo.firstname .. " " .. zPlayer.PlayerData.charinfo.lastname
        balance = xPlayer.PlayerData.money["bank"]
        if xPlayer.PlayerData.citizenid == zPlayerIden then
            TriggerClientEvent('gksphone:notifi', _source, { title = _U('bank_title'), message = _U('bank_yourself'), img = '/html/static/img/icons/wallet.png' })
        else
            if balance <= 0 or balance < tonumber(TotalMoney) or tonumber(TotalMoney) <= 0 then
                TriggerClientEvent('gksphone:notifi', _source, { title = _U('bank_title'), message = _U('bank_nomoney'), img = '/html/static/img/icons/wallet.png' })
            else
                xPlayer.Functions.RemoveMoney('bank', tonumber(TotalMoney), "Bank depost")
                zPlayer.Functions.AddMoney('bank', tonumber(totaltt), "Bank depost")
                -- advanced notification with bank icon
                TriggerClientEvent('gksphone:notifi', zPlayer.PlayerData.source, { title = _U('bank_title'), message = name2 .. _U('bank_transfer'), img = '/html/static/img/icons/wallet.png' })

                TriggerClientEvent('gksphone:notifi', _source, { title = _U('bank_title'), message = name .. _U('bank_transfer'), img = '/html/static/img/icons/wallet.png' })


                MySQL.Async.execute("INSERT INTO gksphone_bank_transfer (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {
                    ["@type"] = 1,
                    ["@identifier"] = xPlayer.PlayerData.citizenid,
                    ["@price"] = TotalMoney,
                    ["@name"] = name
                }, function(results)
                end)


                MySQL.Async.execute("INSERT INTO gksphone_bank_transfer (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {
                    ["@type"] = 2,
                    ["@identifier"] = zPlayerIden,
                    ["@price"] = totaltt,
                    ["@name"] = name2
                }, function(resultss)
                end)

                if tonumber(TotalMoney) >= Cfg.BankLimit then
                    BankTrasnfer(name, xPlayer.PlayerData.citizenid, tonumber(TotalMoney), name2, zPlayerIden)
                end
                TriggerEvent('gksphone:server:bank_gettransferinfo', zPlayer.PlayerData.source)
            end
        end
    elseif Config.OfflineBankTransfer then
        local zPlayerIden = GetIdentifierByPhoneNumberBank(to)
        if zPlayerIden ~= nil then
            balance = xPlayer.PlayerData.money["bank"]
            local name2 = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname
            if xPlayer.PlayerData.citizenid == zPlayerIden then
                TriggerClientEvent('gksphone:notifi', _source, { title = _U('bank_title'), message = _U('bank_yourself'), img = '/html/static/img/icons/wallet.png' })
            else
                if balance <= 0 or balance < tonumber(TotalMoney) or tonumber(TotalMoney) <= 0 then
                    TriggerClientEvent('gksphone:notifi', _source, { title = _U('bank_title'), message = _U('bank_nomoney'), img = '/html/static/img/icons/wallet.png' })
                else

                    MySQL.Async.fetchAll("SELECT money FROM players WHERE citizenid = @identifier", {
                        ['@identifier'] = zPlayerIden,
                    }, function(result)

                        g = json.decode(result[1].money)


                        g['bank'] = g['bank'] + (totaltt);


                        xPlayer.Functions.RemoveMoney('bank', tonumber(TotalMoney), "Bank depost")


                        MySQL.Async.execute('UPDATE players SET `money` = @bank WHERE `citizenid` = @identifier', {
                            ['@identifier'] = zPlayerIden,
                            ['@bank'] = json.encode(g),
                        })

                    end)

                    MySQL.Async.fetchAll("SELECT charinfo FROM players WHERE citizenid = @identifier", {
                        ['@identifier'] = zPlayerIden,
                    }, function(bilgi)
                        local deneme = json.decode(bilgi[1].charinfo)

                        if tonumber(TotalMoney) >= Cfg.BankLimit then
                            BankTrasnfer(deneme.firstname .. " " .. deneme.lastname, xPlayer.PlayerData.citizenid, tonumber(TotalMoney), name2, zPlayerIden)
                        end

                        TriggerClientEvent('gksphone:notifi', _source, { title = _U('bank_title'), message = deneme.firstname .. " " .. deneme.firstname .. _U('bank_transfer'), img = '/html/static/img/icons/wallet.png' })
                        MySQL.Async.execute("INSERT INTO gksphone_bank_transfer (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {
                            ["@type"] = 1,
                            ["@identifier"] = xPlayer.PlayerData.citizenid,
                            ["@price"] = TotalMoney,
                            ["@name"] = deneme.firstname .. " " .. deneme.lastname
                        }, function()
                        end)

                    end)

                    MySQL.Async.execute("INSERT INTO gksphone_bank_transfer (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {
                        ["@type"] = 2,
                        ["@identifier"] = zPlayerIden,
                        ["@price"] = totaltt,
                        ["@name"] = name2
                    }, function()
                    end)

                end
            end
        else
            TriggerClientEvent('gksphone:notifi', _source, { title = _U('bank_title'), message = _U('bank_systemnophone'), img = '/html/static/img/icons/wallet.png' })
        end
    else
        TriggerClientEvent('gksphone:notifi', _source, { title = _U('bank_title'), message = _U('bank_tranfail'), img = '/html/static/img/icons/wallet.png' })
    end
    TriggerEvent('gksphone:server:bank_gettransferinfo', _source)
end)

RegisterServerEvent('gksphone:gks:aracisatt')
AddEventHandler('gksphone:gks:aracisatt', function(a, b, c)

    local src = source
    local satici = Config.Core.Functions.GetPlayer(src)
    local bidentifier = satici.PlayerData.citizenid
    local zPlayer = Config.Core.Functions.GetPlayerByCitizenId(a)

    if zPlayer ~= nil then
        local balance = satici.PlayerData.money["bank"]
        if bidentifier == zPlayer.PlayerData.citizenid then
            TriggerClientEvent('gksphone:notifi', src, { title = _U('cars_title'), message = _U('carseller_ownbuy'), img = '/html/static/img/icons/carsales.png' })
        else

            if balance < tonumber(c) then

                TriggerClientEvent('gksphone:notifi', src, { title = _U('cars_title'), message = _U('carseller_nobank'), img = '/html/static/img/icons/carsales.png' })
            else

                local carcheck = MySQL.scalar.await('SELECT id FROM gksphone_vehicle_sales WHERE plate = ? AND owner = ? ', {b, a})

                if carcheck then

                    TriggerClientEvent('gksphone:gks:ucardel', -1, b)

                    satici.Functions.RemoveMoney('bank', tonumber(c), "Bank depost")
                    zPlayer.Functions.AddMoney('bank', tonumber(c), "Bank depost")
                    TriggerEvent('gksphone:notifi', zPlayer.PlayerData.source, { title = _U('vale_title'), message = _U('car_seller'), img = '/html/static/img/icons/vale.png' })


                    TriggerClientEvent('gksphone:notifi', src, { title = _U('cars_title'), message = _U('carseller_buyvehicle'), img = '/html/static/img/icons/carsales.png' })
                    TriggerClientEvent('gksphone:notifi', zPlayer.PlayerData.source, { title = _U('cars_title'), message = _U('carseller_soldvehicle'), img = '/html/static/img/icons/carsales.png' })

                    MySQL.Async.execute('UPDATE ' .. Config.OwnedVehicles .. ' SET `citizenid` = @owneryeni, `carseller` = @carseller, `license` = @license, `garage` = @garage WHERE `citizenid` = @owner AND `plate` = @plate', {
                        ['@owner'] = a,
                        ['@license'] = satici.PlayerData.license,
                        ['@plate'] = b,
                        ['@owneryeni'] = bidentifier,
                        ['@carseller'] = 0,
                        ['@garage'] = nil,
                    })

                    MySQL.Async.execute("INSERT INTO gksphone_bank_transfer (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {
                        ["@type"] = 1,
                        ["@identifier"] = bidentifier,
                        ["@price"] = tonumber(c),
                        ["@name"] = b .. ' Araba Alımı'
                    })

                    MySQL.Async.execute("INSERT INTO gksphone_bank_transfer (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {
                        ["@type"] = 2,
                        ["@identifier"] = zPlayer.PlayerData.citizenid,
                        ["@price"] = tonumber(c),
                        ["@name"] = b .. ' Araba Satışı'
                    })

                    MySQL.Async.execute('DELETE FROM gksphone_vehicle_sales WHERE owner = @owner AND plate = @plate', {
                        ['@owner'] = a,
                        ['@plate'] = b,
                    }, function()
                    end)

                    TriggerClientEvent('gksphone:client:getsellercardel', -1, {id= carcheck, plate= b})

                    local name = satici.PlayerData.charinfo.firstname .. " " .. satici.PlayerData.charinfo.lastname
                    local name2 = zPlayer.PlayerData.charinfo.firstname .. " " .. zPlayer.PlayerData.charinfo.lastname

                    TriggerEvent('gksphone:carsellernew', a, name2, bidentifier, name, b, c)  -- webhook

                else
                    TriggerClientEvent('gksphone:notifi', src, { title = _U('cars_title'), message = _U('carseller_notbuyvehicle'), img = '/html/static/img/icons/carsales.png' })
                end


            end


        end

    elseif Config.OfflineCarSeller then

        balance = satici.PlayerData.money["bank"]

        if balance < tonumber(c) then

            TriggerClientEvent('gksphone:notifi', src, { title = _U('cars_title'), message = _U('carseller_nobank'), img = '/html/static/img/icons/carsales.png' })
        else

            MySQL.Async.fetchAll("SELECT money FROM players WHERE citizenid = @identifier", {
                ['@identifier'] = a,
            }, function(result)
                g = json.decode(result[1].money)
                g['bank'] = g['bank'] + (c);
                TriggerClientEvent('gksphone:gks:ucardel', -1, b)
                satici.Functions.RemoveMoney('bank', tonumber(c), "Bank depost")
                MySQL.Async.execute('UPDATE ' .. Config.OwnedVehicles .. ' SET `citizenid` = @owneryeni, `carseller` = @carseller, `license` = @license WHERE `citizenid` = @owner AND `plate` = @plate', {
                    ['@owner'] = a,
                    ['@license'] = satici.PlayerData.license,
                    ['@plate'] = b,
                    ['@owneryeni'] = bidentifier,
                    ['@carseller'] = 0,
                })
                MySQL.Async.execute('UPDATE players SET `money` = @bank WHERE `citizenid` = @identifier', {
                    ['@identifier'] = a,
                    ['@bank'] = json.encode(g),
                })
            end)


            MySQL.Async.execute("INSERT INTO gksphone_bank_transfer (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {
                ["@type"] = 1,
                ["@identifier"] = bidentifier,
                ["@price"] = c,
                ["@name"] = b .. ' Car purchase'
            }, function()
            end)


            MySQL.Async.execute("INSERT INTO gksphone_bank_transfer (type, identifier, price, name) VALUES (@type, @identifier, @price, @name)", {
                ["@type"] = 2,
                ["@identifier"] = a,
                ["@price"] = c,
                ["@name"] = b .. ' Car sale'
            }, function()
            end)

            local name = satici.PlayerData.charinfo.firstname .. " " .. satici.PlayerData.charinfo.lastname
            local name2 = "Offline " .. a


            TriggerEvent('gksphone:carsellernew', a, name2, bidentifier, name, b, c)
            TriggerClientEvent('gksphone:notifi', src, { title = _U('cars_title'), message = _U('carseller_buyvehicle'), img = '/html/static/img/icons/carsales.png' })

            MySQL.Async.execute('DELETE FROM gksphone_vehicle_sales WHERE owner = @owner AND plate = @plate', {
                ['@owner'] = a,
                ['@plate'] = b,
            }, function()

            end)

            TriggerClientEvent('gksphone:client:getsellercardel', -1, {id= carcheck, plate= b})

        end
    end
end)

RegisterServerEvent('gksphone:server:bank_gettransferinfo')
AddEventHandler('gksphone:server:bank_gettransferinfo', function(denemee)
    if denemee ~= nil then
        local sourcePlayer = tonumber(denemee)
        BankGetBilling(sourcePlayer)
        local xPlayer = Config.Core.Functions.GetPlayer(sourcePlayer)
        TriggerClientEvent('gksphone:client:setBankBalance', sourcePlayer, xPlayer.PlayerData.money.bank)
    end
end)


function BankGetBilling(test)
    local xPlayer = Config.Core.Functions.GetPlayer(test)
    MySQL.Async.fetchAll([===[
        SELECT * FROM gksphone_bank_transfer WHERE identifier = @identifier ORDER BY time DESC LIMIT 10
        ]===], { ['@identifier'] = xPlayer.PlayerData.citizenid }, function(bankkkkk)
        TriggerClientEvent('gksphone:client:bank_gettransferinfo', test, bankkkkk)
    end)
end

-- BANK --
