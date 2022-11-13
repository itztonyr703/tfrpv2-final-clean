Config = {}

Config.Image = "qb-inventory/html/images/" -- image folder for your inventory
Config.MoneyType = 'markedbills' -- type example 'dirtymoney' or 'markedbills'
Config.CutPercentage = 82 -- percentage of cash player gets when washed : example 10 = 10% / 50 = 50% / 100 = 100%  / 200 = 200% (double)
Config.MinAmount = 100 -- minimum amount of dirty money you set to wash
Config.CheckTime = 44000 -- amount of time in milliseconds needed to check your dirty money

Config.TokensNeeded = 1 -- amount of tokens needed to wash money
-- NPC SETTINGS --

Config.Invincible = true -- Is the ped going to be invincible?
Config.Frozen = true -- Is the ped frozen in place?
Config.Stoic = true -- Will the ped react to events around them?
Config.FadeIn = true -- Will the ped fade in and out based on the distance. (Looks a lot better.)
Config.DistanceSpawn = 20.0 -- Distance before spawning/despawning the ped. (GTA Units.)

Config.MinusOne = true -- Leave this enabled if your coordinates grabber does not -1 from the player coords.

Config.GenderNumbers = { -- No reason to touch these.
	['male'] = 4,
	['female'] = 5
}

Config.MoneywashPedList = { -- ped used to start the weedrun

	{
        model = `s_m_m_dockwork_01`,
        coords = vector4(1118.7757, -3193.39, -40.39196, 178.332), -- moneywash inside
        gender = 'male',
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

	{
        model = `s_m_m_dockwork_01`,
        coords = vector4(1135.8205, -3232.052, 5.8982782, 16.234655), -- moneywash outside
        gender = 'male',
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

}