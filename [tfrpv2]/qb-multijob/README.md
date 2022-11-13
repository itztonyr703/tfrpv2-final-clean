# QB_MULTI JOB
Created by the Community Development (cDev) Team! 
https://discord.gg/communitydev

# INSTALLATION
Simple two step process

# Dependencies

[polyzone](https://github.com/qbcore-framework/PolyZone)

# Step One (SQL)
```
import database.sql to your Database 
```
# Step Two (resources.cfg OR server.cfg)
```
ensure qb-multijob
```

# QB-MANAGEMENT RESOURCE
Update the code in line 156-196 with the following

```
-- Fire Employee
RegisterNetEvent('qb-bossmenu:server:FireEmployee', function(target)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Employee = QBCore.Functions.GetPlayerByCitizenId(target)
    local EmployeeCurrentJob=Employee.PlayerData.job.name
    if not Player.PlayerData.job.isboss then ExploitBan(src, 'FireEmployee Exploiting') return end
    local data = {
        jobname = EmployeeCurrentJob,
        citizenid = target
    }
    if Employee then
        if target ~= Player.PlayerData.citizenid then
            if Employee.Functions.SetJob("unemployed", '0') then
                QBCore.Functions.TriggerCallback('qb-multijob:server:deletePlayerJobFire', function(cb)
					if cb then
                         TriggerClientEvent('QBCore:Notify', src, "Member has been fired", "success")
					else
                         TriggerClientEvent('QBCore:Notify', src, "Something went wrong", "error")
					end
				 end,source,data)
                TriggerEvent("qb-log:server:CreateLog", "bossmenu", "Job Fire", "red", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. ' successfully fired ' .. Employee.PlayerData.charinfo.firstname .. " " .. Employee.PlayerData.charinfo.lastname .. " (" .. Player.PlayerData.job.name .. ")", false)
                TriggerClientEvent('QBCore:Notify', src, "Employee fired!", "success")
                TriggerClientEvent('QBCore:Notify', Employee.PlayerData.source , "You have been fired! Good luck.", "error")
            else
                TriggerClientEvent('QBCore:Notify', src, "Error..", "error")
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "You can\'t fire yourself", "error")
        end
    else
        local player = MySQL.Sync.fetchAll('SELECT * FROM players WHERE citizenid = ? LIMIT 1', { target })
        if player[1] ~= nil then
            Employee = player[1]
            local job = {}
            job.name = "unemployed"
            job.label = "Unemployed"
            job.payment = QBCore.Shared.Jobs[job.name].grades['0'].payment or 500
            job.onduty = true
            job.grade.isboss = false
            job.grade = {}
            job.grade.name = nil
            job.grade.level = 0

            QBCore.Functions.TriggerCallback('qb-multijob:server:deletePlayerJobFire', function(cb)
                if cb then
                     QBCore.Functions.Notify("Member has been fired", "success")
                else
                     QBCore.Functions.Notify("Something went wrong", "error")
                end
             end,data)
            MySQL.Async.execute('UPDATE players SET job = ? WHERE citizenid = ?', { json.encode(job), target })
            TriggerClientEvent('QBCore:Notify', src, "Employee fired!", "success")
            TriggerEvent("qb-log:server:CreateLog", "bossmenu", "Job Fire", "red", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. ' successfully fired ' .. Employee.PlayerData.charinfo.firstname .. " " .. Employee.PlayerData.charinfo.lastname .. " (" .. Player.PlayerData.job.name .. ")", false)
        else
            TriggerClientEvent('QBCore:Notify', src, "Civilian not in city.", "error")
        end
    end
    TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)
```
## Translation
```
Copy the en.lua file in the locales folder and name it to your language and change the contents from fxmanifest.lua as well from "en.lua" to your language, so example "es.lua" 
```