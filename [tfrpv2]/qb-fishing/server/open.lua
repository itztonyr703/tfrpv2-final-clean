local QBCore = exports['qb-core']:GetCoreObject()

---- ** Receiving Fish ** ----
RegisterServerEvent('qb-fishing:receiveFish', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local luck = math.random(1, 100)
	local item = ""
	if luck == 100 then
		item = "fish_whale"
	elseif luck == 99 then
		item = "fish_shark"
	elseif luck == 98 then
		item = "fish_dolphin"
	elseif luck >= 88 and luck <= 97 then
		item = "fish_mackerel"
	elseif luck >= 78 and luck <= 87 then
		item = "fish_flounder"
	elseif luck >= 52 and luck <= 77 then
		item ="fish_cod"
	elseif luck >= 26 and luck <= 52 then
		item ="fish_bluefish"
	elseif luck >= 1 and luck <= 25 then
		item ="fish_bass"
	end
	Player.Functions.AddItem(item, 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
	TournamentFish(item) -- DO NOT CHANGE THIS OR YOUR TOURNAMENTS WILL NOT WORK
end)


---- ** Sell Fish ** ----

local sellables = {
    fish_mackerel = Config.Fish["fish_mackerel"]["price"],
    fish_flounder = Config.Fish["fish_flounder"]["price"],
    fish_cod = Config.Fish["fish_cod"]["price"],
    fish_bluefish = Config.Fish["fish_bluefish"]["price"],
    fish_bass = Config.Fish["fish_bass"]["price"],
	fish_dolphin = Config.Fish["fish_dolphin"]["price"],
	fish_shark = Config.Fish["fish_shark"]["price"],
	fish_whale = Config.Fish["fish_whale"]["price"]
}

RegisterServerEvent("qb-fishing:server:SellFish", function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local totalprice = 0
	for k,v in pairs(sellables) do
		local item = Player.Functions.GetItemByName(k)
		if item ~= nil then
			local amount = 0
			if Player.Functions.RemoveItem(k, item.amount) then
				amount = (v * item.amount)
				totalprice += amount
			end
			TriggerEvent('qb-log:server:CreateLog', 'fishing', Config.FIshermanName, 'orange', ("%s(%s) has sold %s %s for the price of %s"):format(tostring(Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname), Player.PlayerData.citizenid, item.amount, Config.Fish[k].label, amount))
		end
	end
	Player.Functions.AddMoney('cash', totalprice)
	TriggerClientEvent("QBCore:Notify", src, 'You sold all your fish for '..totalprice, 'success')
end)
