----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}
-- Core info settings you can ignore these if you have not edited any core functions in your city
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    TargetName = 'qb-target', -- The name of your third eye targeting. Default; qb-target
    MenuName = 'qb-menu', -- The name of your menu. Default; qb-menu
    AddStressEvent = 'hud:server:GainStress' -- Event to remove stress from player. Default; 'hud:server:GainStress'
}

-- Blips
Config.Blips = {
    UseBlips = true, -- Enables map blips
    Blips = { -- Blips for hunting stores
        {title='Hunting', colour=1, id=141, x = -774.36, y = 5602.99, z = 34.31, scale = 0.6},
        {title='Hunting', colour=1, id=141, x = -795.09, y = -1026.83, z = 13.31, scale = 0.6},
--        {title='Hunting', colour=5, id=141, x = -774.98, y = 26.88, z = 46.67, scale = 0.6} -- I would suggest not using a blip for illegal dealer :)
    } 
}

-- Hunting zones
Config.Zones = {
    UseZones = true, -- Enables map zones 
    Zones = { -- Hunting circle zones you can add more here. These zones are purely visual we use them entirely in RP they do not affect the script in anyway.
        {title='Hunting Zone', colour=5, id=141, x = -1186.72, y = 3853.52, z = 489.94, scale = 0.6, zonecolour = 2, radius = 950.00},
        {title='Hunting Zone', colour=5, id=141, x = 772.84, y = 5461.14, z = 560.18, scale = 0.6, zonecolour = 2, radius = 950.00}
    }
}

-- Ped settings
Config.Peds = {
    {name = 'Dusty', x = -770.99, y = 5595.89, z = 33.49, h = 168.1, hash = 0x45348DBB, model = 'mp_m_exarmy_01', scenario = 'WORLD_HUMAN_SMOKING', icon = 'fas fa-paw', label = 'Speak to Dusty', event = 'boii-hunting:client:HuntingStoreMain', distance = 1.0}, -- Hunting store ped/hide buyer
    {name = 'Sho', x = -795.0, y =  -1027.11, z = 13.31, h = 142.38, hash = 0x352A026F, model = 'g_m_m_korboss_01', scenario = 'WORLD_HUMAN_SMOKING', icon = 'fas fa-clipboard', label = 'Speak to Sho', event = 'boii-hunting:client:MeatStoreMain', distance = 1.0}, -- Meat buyer sho noodles
    {name = 'Gustavo', x = 90.2, y = 298.13, z = 110.21, h = 331.31, hash = 0xB585B217, model = 'ig_gustavo', scenario = 'WORLD_HUMAN_SMOKING', icon = 'fab fa-drupal', label = 'Speak to Gustavo', event = 'boii-hunting:client:ExoticAnimalsMenu', distance = 1.0} -- Exotic animal dealer
}

-- Skinning settings
Config.Skinning = {
    Item = 'weapon_knife',
    Stress = math.random(1,4) -- Amount of stress gained by skinning animals
}

-- Weapon settings
Config.Weapons = {
    BlockPlayerFire = true,-- Enables shooting protection so players cannot kill other players with weapons listed below; true = enabled, false = disabled
    BlockedWeapons = { -- Blocked weapons list
        'weapon_musket',
        'weapon_sniperrifle'
    }
}

-- Store settings
Config.Stores = {
    Hunting = {
        UseTimes = false, -- Toggle time locks for hunting store; true = active; false = disabled
        StartTime = 10, -- Time to open hunting store
        EndTime = 18, -- Time to close hunting store
        NoLicense = { -- Accessed without hunting license
            [1] = { name = 'weapon_knife',          price = 100,    amount = 10, info = {}, type = 'item', slot = 1 },
        },
        License = { -- Accessed with hunting license **DO NOT SET AMOUNT HIGHER THAN 1 FOR WEAPONS OR YOU WILL DUPLICATE SERIAL NUMBERS**
            [1] = { name = 'weapon_knife',          price = 100,    amount = 5, info = {}, type = 'item', slot = 1, isgun = false },
            [2] = { name = 'snp_ammo',              price = 550,    amount = 5, info = {}, type = 'item', slot = 2, isgun = false },
            [3] = { name = 'weapon_huntingrifle',   price = 8500,   amount = 1, info = {}, type = 'item', slot = 3, isgun = true },  
        }
    },
    Meat = {
        UseTimes = false, -- Toggle time locks for meat store; true = active; false = disabled
        StartTime = 10, -- Time to open meat store
        EndTime = 18 -- Time to close meat store
    },
    Exotic = {
        UseTimes = false, -- Toggle time locks for exotic store; true = active; false = disabled
        StartTime = 10, -- Time to open exotic store
        EndTime = 18 -- Time to close exotic store
    },
    Selling = {
        MoneyType = 'bank', -- Money type rewarded for selling; 'cash', 'bank', 'crypto' etc...
        Prices = {
            ['skin_rat'] = 100,
            ['skin_rabbit'] = 100,
            ['skin_pig'] = 200,
            ['skin_cow'] = 250,
            ['skin_deer'] = 250,
            ['skin_boar'] = 250,
            ['skin_coyote'] = 100,
            ['skin_mtlion'] = 300,
            ['skin_stingray'] = 300,
            ['skin_dolphin'] = 300,
            ['skin_shark'] = 300,
            ['skin_whale'] = 300,
            ['meat_rat'] = 100,
            ['meat_rabbit'] = 100,
            ['meat_chickenhawk'] = 100,
            ['meat_cormorant'] = 100,
            ['meat_chicken'] = 10,
            ['meat_pig'] = 200,
            ['meat_cow'] = 250,
            ['meat_deer'] = 200,
            ['meat_boar'] = 250,
            ['meat_coyote'] = 100,
            ['meat_mtlion'] = 300,
            ['meat_stingray'] = 300,
            ['meat_dolphin'] = 300,
            ['meat_shark'] = 300,
            ['meat_whale'] = 300
        }
    } 
}

-- Animal settings
Config.Animals = {
    sharkhammer = {
        animalhash = GetHashKey('a_c_sharkhammer'), -- Animal ped hash
        skinningtime = math.random(7500,12500), -- Time taken to skin animal
        items = {
            {
                item = 'skin_shark', -- Item to reward
                min = 1, -- Min amount to reward
                max = 4, -- Max amount to reward
            },
            {
                item = 'meat_shark', -- Item to reward
                min = 1, -- Min amount to reward
                max = 3, -- Max amount to reward
            },
        },
    },
	sharktiger = {
        animalhash = GetHashKey('a_c_sharktiger'), 
        skinningtime = math.random(7500,12500),
        items = {
            {
                item = 'skin_shark',
                min = 1,
                max = 4,
            },
            {
                item = 'meat_shark',
                min = 1,
                max = 3,
            },
        },
    },
    killerwhale = { 
        animalhash = GetHashKey('a_c_killerwhale'), 
        skinningtime = math.random(10500,17500),
        items = {
            {
                item = 'skin_whale',
                min = 1,
                max = 6,
            },
            {
                item = 'meat_whale',
                min = 1,
                max = 6,
            },
        },
    },
	humpback = {
        animalhash = GetHashKey('a_c_humpback'), 
        skinningtime = math.random(10500,17500),
        items = {
            {
                item = 'skin_whale',
                min = 1,
                max = 8,
            },
            {
                item = 'meat_whale',
                min = 1,
                max = 8,
            },
        },
    },
	stingray = { 
        animalhash = GetHashKey('a_c_stingray'), 
        skinningtime = math.random(6500,10500),
        items = {
            {
                item = 'skin_stingray',
                min = 1,
                max = 2,
            },
            {
                item = 'meat_stingray',
                min = 1,
                max = 2,
            },
        },
    },
	dolphin = { 
        animalhash = GetHashKey('a_c_dolphin'), 
        skinningtime = math.random(6500,10500),
        items = {
            {
                item = 'skin_dolphin',
                min = 1,
                max = 2,
            },
            {
                item = 'meat_dolphin',
                min = 1,
                max = 2,
            },
        },
    },
	boar = {
        animalhash = GetHashKey('a_c_boar'), 
        skinningtime = math.random(4500,8500),
        items           = {
            {
                item = 'skin_boar',
                min = 1,
                max = 4,
            },
            {
                item = 'meat_boar',
                min = 1,
                max = 3,
            },
        },
    },
    chickenhawk = {
        animalhash = GetHashKey('a_c_chickenhawk'),
        skinningtime = math.random(3500,6750),
        items = {
            {
                item = 'meat_chickenhawk',
                min = 1,
                max = 3,
            },
        },
    },
    cormorant = {
        animalhash = GetHashKey('a_c_cormorant'), 
        skinningtime = math.random(4000,7000),
        items = {
            {
                item = 'meat_cormorant',
                min = 1,
                max = 3,
            },
        },
    },
	chicken = { 
        animalhash = GetHashKey('a_c_hen'),
        skinningtime = math.random(3500,5850),
        items = {
			{
                item = 'meat_chicken',
                min = 1,
                max = 3,
            },
        },
    },
    coyote = {
        animalhash = GetHashKey('a_c_coyote'),
        skinningtime = math.random(4500,9500),
        items = {
            {
                item = 'skin_coyote',
                min = 1,
                max = 3,
            },
            {
                item = 'meat_coyote',
                min = 1,
                max = 2,
            },
        },
    },
    deer = {
        animalhash = GetHashKey('a_c_deer'), 
        skinningtime = math.random(4200,9900), 
        items = {
            {
                item = 'skin_deer',
                min = 1,
                max = 3,
            },
            {
                item = 'meat_deer',
                min = 1,
                max = 3,
            },
        },
    },
    mtlion = {
        animalhash = GetHashKey('a_c_mtlion'), 
        skinningtime = math.random(6500,10500),
        items = {
            {
                item = 'skin_mtlion',
                min = 1,
                max = 2,
            },
            {
                item = 'meat_mtlion',
                min = 1,
                max = 3,
            },
        },
    },
    rabbit = { 
        animalhash = GetHashKey('a_c_rabbit_01'),
        skinningtime = math.random(4500,6500),
        items = {
            {
                item = 'skin_rabbit',
                min = 1,
                max = 1,
            },
			{
                item = 'meat_rabbit',
                min = 1,
                max = 3,
            },
        },
    },
	cow = {
        animalhash = GetHashKey('a_c_cow'),
        skinningtime = math.random(4500,7500),
        items = {
            {
                item = 'skin_cow',
                min = 1,
                max = 4,
            },
			{
                item = 'meat_cow',
                min = 1,
                max = 3,
            },
        },
    },
	rat = {
        animalhash = GetHashKey('a_c_rat'),
        skinningtime = math.random(4500,5500),
        items = {
            {
                item = 'skin_rat',
                min = 1,
                max = 1,
            },
			{
                item = 'meat_rat',
                min = 1,
                max = 2,
            },
        },
    }
}