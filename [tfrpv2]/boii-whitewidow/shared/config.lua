----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}
-- Core settings you can ignore these if you have not renamed your core
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    TargetName = 'qb-target', -- The name of your third eye targeting. Default; qb-target
    MenuName = 'qb-menu', -- The name of your menu. Default; qb-menu
    InputName = 'qb-input', -- The name of your input menu for billing. Default; qb-input
    SkillBarName = 'qb-skillbar', -- The name of your skillbar. Default; qb-skillbar
    ItemCheckEvent = 'QBCore:Functions:HasItem', -- The name of your item check event. Default; 'QBCore:HasItem'
    MetaDataEvent = 'QBCore:Server:SetMetaData', -- The name of your set metadata event. Default; 'QBCore:Server:SetMetaData'
    DutyEvent = 'QBCore:ToggleDuty', -- The name of your duty event. Default; 'QBCore:ToggleDuty'
    AddStressEvent = 'hud:server:GainStress', -- Event to remove stress from player. Default; 'hud:server:GainStress'
    RemoveStressEvent = 'hud:server:RelieveStress', -- Event to remove stress from player. Default; 'hud:server:RelieveStress'
    BossMenuEvent = 'qb-bossmenu:client:OpenMenu', -- Name of your boss menu event. Default; 'qb-bossmenu:client:OpenMenu'
    PhoneEvent = 'qb-phone:RefreshPhone', -- The name of your phone event this is needed for billing. Default; 'qb-phone:RefreshPhone'
    ClothingEvent = 'qb-clothing:client:openOutfitMenu', -- The name of your clothing event this is needed to open outfit menu. Default; 'qb-clothing:client:OpenOutfitMenu'
    FuelEvent = 'ps-fuel' -- The name of your fuel event. Default; LegacyFuel
}
-- Blips
Config.UseBlips = true -- Enable blips
Config.Blips = {
	{title='White Widow', colour=52, id=469, x = 193.24, y = -244.53, z = 54.07, scale = 0.7},
}
-- MLO version toggle
Config.MLOVersion = 'v2' -- MLO Version options; 'v1' or 'v2' -- 'v2' = https://mosbaekdesign.com/vare/white-widow-cannabis-cafe-shop-mlo-v2-update/
-- Job settings
Config.JobSettings = {
    JobName = 'whitewidow', -- Name of your job in your `qb-core/shared/jobs.lua`
    MenuItem = 'wwmenu', -- Name of your menu item
    Locations = {
        Duty = {{name = 'ww_duty', coords = vector3(198.6, -248.76, 54.1), length = 0.6, width = 1.0, heading = 135.00, debugPoly = false, minZ = 50.5, maxZ = 54.5, distance = 1.5}},
        Boss = {{name = 'ww_bossmenu', coords =  vector3(175.76, -258.07, 54.13), length = 5.0, width = 1.0, heading = 5.00, debugPoly = false, minZ = 50.73, maxZ = 54.73, distance = 1.5}},
        JobStorage = {{name = 'ww_jobstorage', coords = vector3(194.13, -256.09, 54.1), length = 6.0, width = 1.0, heading = 70.00, debugPoly = false, minZ = 50.70, maxZ = 54.70, distance = 1.5}},
        BossStorage = {{name = 'ww_bossstorage', coords = vector3(182.16, -259.53, 54.13), length = 0.6, width = 1.2, heading = 70.00, debugPoly = false, minZ = 50.33, maxZ = 54.33, distance = 1.5}},
        Tray = {{name = 'ww_tray', coords = vector3(200.24, -244.15, 54.1), length = 0.8, width = 1.0, heading = 190.00, debugPoly = false, minZ = 50.30, maxZ = 54.30, distance = 1.0}},
        Rolling = {{name = 'ww_rolling', coords = vector3(180.89, -247.97, 53.31), length = 1.4, width = 2.0, heading = 340.00, debugPoly = false, minZ = 49.51, maxZ = 53.51, distance = 1.0}},
        JobStore = {{name = 'ww_jobshop', coords = vector3(195.32, -252.75, 54.1), length = 6.0, width = 1.0, heading = 70.00, debugPoly = false, minZ = 50.90, maxZ = 54.90, distance = 1.0}},
        SnackTable = {{name = 'ww_snacktable', coords = vector3(194.16, -268.88, 54.1), length = 0.6, width = 2.8, heading = 70.00, debugPoly = false, minZ = 50.5, maxZ = 54.5, distance = 1.0}},
        Clothing = {
            {name = 'ww_wardrobe1', coords = vector3(167.68, -242.9, 54.13), length = 0.4, width = 2.8, heading = 70.00, debugPoly = false, minZ = 50.53, maxZ = 54.53, distance = 2.0}
        },
        Trimming = {
            {name = 'ww_trim1', coords = vector3(178.11, -253.06, 53.31), length = 1.0, width = 2.0, heading = 340.00, debugPoly = false, minZ = 49.71, maxZ = 53.71, distance = 1.5} 
        },
        Harvest = {
            Strain1 = {
                {name = 'ww_strain1_1', coords = vector3(182.21, -250.68, 53.31), length = 1.0, width = 0.6, heading = 335.00, debugPoly = false, minZ = 51.31, maxZ = 55.31, distance = 1.5},
            },
            Strain2 = {
                {name = 'ww_strain2_1', coords = vector3(183.82, -251.26, 53.31), length = 1.0, width = 0.6, heading = 340.00, debugPoly = false, minZ = 51.31, maxZ = 55.31, distance = 1.5},    
            },
            Strain3 = {
                {name = 'ww_strain3_1', coords = vector3(181.14, -253.96, 53.31), length = 1.0, width = 0.6, heading = 160.50, debugPoly = false, minZ = 51.11, maxZ = 55.11, distance = 1.5},
            },
            Strain4 = {
                {name = 'ww_strain4_1', coords = vector3(182.18, -254.34, 53.31), length = 1.0, width = 0.6, heading = 160.50, debugPoly = false, minZ = 51.11, maxZ = 55.11, distance = 1.5},
            },
            Strain5 = {
                {name = 'ww_strain5_1', coords = vector3(183.27, -254.73, 53.31), length = 1.0, width = 0.6, heading = 160.50, debugPoly = false, minZ = 51.11, maxZ =  55.11, distance = 1.5},
            },
            Strain6 = {
                {name = 'ww_strain6_1', coords = vector3(185.0, -249.95, 53.31), length = 1.0, width = 0.6, heading = 70.00, debugPoly = false, minZ = 51.11, maxZ = 55.11, distance = 1.5},
            },
            Strain7 = {
                {name = 'ww_strain7_1', coords = vector3(184.04, -249.56, 53.31), length = 1.0, width = 0.6, heading = 70.00, debugPoly = false, minZ = 51.11, maxZ = 55.11, distance = 1.5},
            },
            Strain8 = {
                {name = 'ww_strain8_1', coords = vector3(182.87, -249.15, 53.31), length = 1.0, width = 0.6, heading = 70.00, debugPoly = false, minZ = 51.11, maxZ = 55.11, distance = 1.5},
            }
        },
        BongTables = {
            {name = 'ww_bongtable1', coords = vector3(188.93, -265.12, 54.1), length = 1.5, width = 2.5, heading = 160.00, debugPoly = false, minZ = 50.10, maxZ = 54.10, distance = 1.5},
            {name = 'ww_bongtable2', coords = vector3(193.57, -233.17, 54.1), length = 2.5, width = 0.8, heading = 350.00, debugPoly = false, minZ = 50.30, maxZ = 54.30, distance = 1.5},
        },
        Edibles = {
            {name = 'ww_ediblestable', coords = vector3(178.04, -250.39, 53.31), length = 3.0, width = 1.0, heading = 157.63, debugPoly = false, minZ = 49.51, maxZ = 53.51, distance = 1.5},
        },
        V1Garage = {
            {name = 'ww_garage', coords = vector3(186.55, -264.83, 50.38), length = 6.0, width = 6.0, heading = 70.00, debugPoly = false, minZ = 49.18, maxZ = 53.18, distance = 6.0},
        }
    },
    Raid = {
        JobName = 'police', -- Name of your police job in your `qb-core/shared/
        ForceEntryTime = math.random(8,15), -- Time in (s) for police to force entry into storages
        ForceEntryAnimationDict = 'mini@safe_cracking',
        ForceEntryAnimation = 'door_open_succeed_stand',
        ForceEntryFlags = 49,
    },
    Stores = {
        JobStore = {
              [1] = { name = 'lighter',           				price = 1,    amount = 1000, info = {}, type = 'item', slot = 1 }, -- Required
            [2] = { name = 'ocb_paper',     					price = 1,    amount = 1000, info = {}, type = 'item', slot = 2 }, -- Required     
            [3] = { name = 'drug_grinder',      				price = 25,   amount = 1000, info = {}, type = 'item', slot = 3 }, -- Required
            [4] = { name = 'empty_weed_bag',    				price = 1,    amount = 1000, info = {}, type = 'item', slot = 4 }, -- Required
            [5] = { name = 'drug_shears',       				price = 25,   amount = 1000, info = {}, type = 'item', slot = 5 }, -- Required
			[6] = { name = 'gelatine',       					price = 1, 	  amount = 1000, info = {}, type = 'item', slot = 6 }, -- Required
			[7] = { name = 'rawhoney',       					price = 1, 	  amount = 1000, info = {}, type = 'item', slot = 7 }, -- Required
			[8] = { name = 'gummybearmould',       				price = 25,   amount = 1000, info = {}, type = 'item', slot = 8 }, -- Required
			[9] = { name = "water",           					price = 2,    amount = 1000, info = {}, type = "item", slot = 9 }, 
			[10] = { name = "fertilizer",      	   				price = 2, 	  amount = 1000, info = {}, type = "item", slot = 10 }, 	 
			[11] = { name = "banana_kush_bag",         			price = 25,   amount = 1000, info = {}, type = "item", slot = 11 },
			[12] = { name = "weed_white-widow",             	price = 25,   amount = 1000, info = {}, type = "item", slot = 12 }, 
			[13] = { name = "weed_skunk",         				price = 25,   amount = 1000, info = {}, type = "item", slot = 13 },
			[14] = { name = "weed_purple-haze",             	price = 25,   amount = 1000, info = {}, type = "item", slot = 14 }, 
			[15] = { name = "weed_og-kush",         			price = 25,   amount = 1000, info = {}, type = "item", slot = 15 },
			[16] = { name = "weed_amnesia",             		price = 25,   amount = 1000, info = {}, type = "item", slot = 16 }, 
			[17] = { name = "weed_ak47",         			 	price = 25,   amount = 1000, info = {}, type = "item", slot = 17 },
			[18] = { name = "weed_blue_dream",         			price = 25,   amount = 1000, info = {}, type = "item", slot = 18 },
			[19] = { name = "weed_girl_scout_cookies",          price = 25,   amount = 1000, info = {}, type = "item", slot = 19 }, 
			[20] = { name = "weed_sour_diesel",         		price = 25,   amount = 1000, info = {}, type = "item", slot = 20 },
			[21] = { name = "weed_cheese",         				price = 25,   amount = 1000, info = {}, type = "item", slot = 21 },
			[22] = { name = "weed_pineapple_express",         	price = 25,   amount = 1000, info = {}, type = "item", slot = 22 },
			[23] = { name = "weed_trainwreck",             		price = 25,   amount = 1000, info = {}, type = "item", slot = 23 }, 
			[24] = { name = "weed_velvet_runtz",         		price = 25,   amount = 1000, info = {}, type = "item", slot = 24 },
			[25] = { name = "weed_gelato",         				price = 25,   amount = 1000, info = {}, type = "item", slot = 25 },
			[26] = { name = "weed_cherry_pie",         			price = 25,   amount = 1000, info = {}, type = "item", slot = 26 },
			[27] = { name = "weed_lv_pk",            			price = 25,   amount = 1000, info = {}, type = "item", slot = 27 }, 
			[28] = { name = "weed_lemonhaze_seed",         		price = 10,   amount = 1000, info = {}, type = "item", slot = 28 },
			[29] = { name = "weed_blue_dream_seed",          	price = 10,   amount = 1000, info = {}, type = "item", slot = 29 },
			[30] = { name = "weed_girl_scout_cookies_seed",  	price = 10,   amount = 1000, info = {}, type = "item", slot = 30 },
			[31] = { name = "weed_sour_diesel_seed",         	price = 10,   amount = 1000, info = {}, type = "item", slot = 31 },
			[32] = { name = "weed_cheese_seed",             	price = 10,   amount = 1000, info = {}, type = "item", slot = 32 }, 
			[33] = { name = "weed_pineapple_express_seed",      price = 10,   amount = 1000, info = {}, type = "item", slot = 33 },
			[34] = { name = "weed_trainwreck_seed",             price = 10,   amount = 1000, info = {}, type = "item", slot = 34 }, 
			[35] = { name = "weed_velvet_runtz_seed",         	price = 10,   amount = 1000, info = {}, type = "item", slot = 35 },
			[36] = { name = "weed_gelato_seed",         		price = 10,   amount = 1000, info = {}, type = "item", slot = 36 },
			[37] = { name = "weed_cherry_pie_seed",         	price = 10,   amount = 1000, info = {}, type = "item", slot = 37 },
			[38] = { name = "weed_lv_pk_seed",         			price = 10,   amount = 1000, info = {}, type = "item", slot = 38 },
			[39] = { name = "weed_white-widow_seed",            price = 10,   amount = 1000, info = {}, type = "item", slot = 39 }, 
			[40] = { name = "weed_skunk_seed",         			price = 10,   amount = 1000, info = {}, type = "item", slot = 40 },
			[41] = { name = "weed_purple-haze_seed",         	price = 10,   amount = 1000, info = {}, type = "item", slot = 41 },
			[42] = { name = "weed_og-kush_seed",             	price = 10,   amount = 1000, info = {}, type = "item", slot = 42 }, 
			[43] = { name = "weed_amnesia_seed",         		price = 10,   amount = 1000, info = {}, type = "item", slot = 43 },
			[44] = { name = "weed_ak47_seed",         			price = 10,   amount = 1000, info = {}, type = "item", slot = 44 },
			[45] = { name = "weedshake",         				price = 25,   amount = 1000, info = {}, type = "item", slot = 45 },
			[46] = { name = "weedcupcake",         				price = 25,   amount = 1000, info = {}, type = "item", slot = 46 },
			[47] = { name = "weedbrownie",         				price = 25,   amount = 1000, info = {}, type = "item", slot = 47 },
			[48] = { name = "icecube",         					price = 25,   amount = 1,   info = {}, type = "item", slot = 48 },
			[49] = { name = "tupac2",         					price = 25,   amount = 1,   info = {}, type = "item", slot = 49 },
			[50] = { name = "bong",         					price = 25,   amount = 1,   info = {}, type = "item", slot = 50 },
			[51] = { name = "wwmenu",         					price = 0,   amount = 1,   info = {}, type = "item", slot = 51 },
        },
        SnackTable = { -- Example food items not required for script to function change these to whatever food your city uses
         [1] = { name = "sprite",       	   price = 2,    amount = 100,  info = {}, type = "item", slot = 1 }, 
		[2] = { name = "brisk_sweet_tea",      price = 3, 	 amount = 100,  info = {}, type = "item", slot = 2 }, 
		[3] = { name = "cheetos_cheese",       price = 4,    amount = 100,  info = {}, type = "item", slot = 3 }, 
		[4] = { name = "doritos_nacho",        price = 4,    amount = 100,  info = {}, type = "item", slot = 4 }, 		
        }
    }, 
    Harvest = {
        HarvestItem = 'drug_shears', -- Item required to harvest plants
        ProgressAnimationDict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@',
        ProgressAnimation = 'weed_crouch_checkingleaves_idle_01_inspector',
        ProgressFlags = 49,
        SkillBarAnimationDict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@',
        SkillBarAnimation = 'weed_spraybottle_crouch_idle_01_inspector',
        Strain1 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_skunk_cbd_crop',   label = 'CBD Skunk Crop',    amount = 3},
            }
        },
        Strain2 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_og-kush_cbd_crop',   label = 'CBD OG-Kush Crop',    amount = 3},
            }
        },
        Strain3 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_white-widow_cbd_crop',   label = 'CBD White-Widow Crop',    amount = 3},
            }
        },
        Strain4 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_ak47_cbd_crop',   label = 'CBD AK47 Crop',    amount = 3},
            }
        },
        Strain5 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4), -- Duration of skill bar
            SkillBarPosistion = math.random(10, 30), -- Start position of skill bar
            SkillBarWidth = math.random(10, 20), -- Width of skill bar
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_amnesia_cbd_crop',   label = 'CBD Amnesia Crop',    amount = 3},
            }
        },
        Strain6 = {
            Time = math.random(8,15), -- Time in (s) to harvest skunk crops
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest skunk crops
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_purple-haze_cbd_crop',   label = 'CBD Purple-Haze Crop',    amount = 3},
            }
        },
        Strain7 = {
            Time = math.random(8,15), -- Time in (s) to harvest skunk crops
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest skunk crops
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_gelato_cbd_crop',   label = 'CBD Gelato Crop',    amount = 3},
            }
        },
        Strain8 = {
            Time = math.random(8,15), -- Time in (s) to harvest skunk crops
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest skunk crops
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_zkittlez_cbd_crop',   label = 'CBD Zkittlez Crop',    amount = 3},
            }
        }
    },
    Trimming = {
        ProgressAnimationDict = 'amb@prop_human_parking_meter@female@base',
        ProgressAnimation = 'base_female',
        ProgressFlags = 49,
        ProgressProp = 'h4_prop_h4_weed_bud_02b',
        ProgressBone =  28422,
        ProgressCoords = vector3(0.09, -0.075, 0.0),
        ProgressRotation = vector3(-90.0, 0.0, 0.0),
        Strain1 = {
            Time = math.random(6,11), -- Time in (s) to trim skunk crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_skunk_cbd',   label = 'CBD Skunk: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',             label = 'Trimming Shears'},
                ['2'] = { name = 'weed_skunk_cbd_crop',     label = 'CBD Skunk Crop',   amount = 3},
                ['3'] = { name = 'empty_weed_bag',          label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain2 = {
            Time = math.random(6,11), -- Time in (s) to trim kush crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_og-kush_cbd',   label = 'CBD OG-Kush: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',             label = 'Trimming Shears'},
                ['2'] = { name = 'weed_og-kush_cbd_crop',   label = 'CBD OG-Kush Crop',   amount = 4},
                ['3'] = { name = 'empty_weed_bag',          label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain3 = {
            Time = math.random(8,15), -- Time in (s) to trim white-widow crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_white-widow_cbd',   label = 'CBD White-Widow: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',                 label = 'Trimming Shears'},
                ['2'] = { name = 'weed_white-widow_cbd_crop',   label = 'CBD White-Widow Crop',   amount = 6},
                ['3'] = { name = 'empty_weed_bag',              label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain4 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_ak47_cbd',   label = 'CBD AK47: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',             label = 'Trimming Shears'},
                ['2'] = { name = 'weed_ak47_cbd_crop',      label = 'CBD AK47 Crop',   amount = 8},
                ['3'] = { name = 'empty_weed_bag',          label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain5 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_amnesia_cbd',   label = 'CBD Amnesia: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',             label = 'Trimming Shears'},
                ['2'] = { name = 'weed_amnesia_cbd_crop',   label = 'CBD Amnesia Crop',   amount = 3},
                ['3'] = { name = 'empty_weed_bag',          label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain6 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_purple-haze_cbd',   label = 'CBD Purple-Haze: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',                 label = 'Trimming Shears'},
                ['2'] = { name = 'weed_purple-haze_cbd_crop',   label = 'CBD Purple-Haze Crop',   amount = 5},
                ['3'] = { name = 'empty_weed_bag',              label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain7 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_gelato_cbd',   label = 'CBD Gelato: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',                 label = 'Trimming Shears'},
                ['2'] = { name = 'weed_gelato_cbd_crop',        label = 'CBD Gelato Crop',   amount = 5},
                ['3'] = { name = 'empty_weed_bag',              label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain8 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_zkittlez_cbd',   label = 'CBD Zkittlez: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',                 label = 'Trimming Shears'},
                ['2'] = { name = 'weed_zkittlez_cbd_crop',      label = 'CBD Zkittlez Crop',   amount = 5},
                ['3'] = { name = 'empty_weed_bag',              label = 'Resealable Bags',  amount = 14},
            }
        }
    },
    JointRolling = {
        ProgressAnimationDict = 'amb@prop_human_parking_meter@female@base', -- Animation dictionary for progress bar
        ProgressAnimation = 'base_female', -- Animation for progress bar
        ProgressFlags = 49, -- Animation flags for progress bar
        Strain1 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_skunk_cbd_joint',   label = 'CBD Skunk: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'ocb_paper',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain2 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_og-kush_cbd_joint',   label = 'CBD OG-Kush: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'ocb_paper',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain3 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_white-widow_cbd_joint',   label = 'CBD White-Widow: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'ocb_paper',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain4 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_ak47_cbd_joint',   label = 'CBD AK47: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'ocb_paper',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain5 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_amnesia_cbd_joint',   label = 'CBD Amnesia: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'ocb_paper',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain6 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_purple-haze_cbd_joint',   label = 'CBD Purple-Haze: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'ocb_paper',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain7 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_gelato_cbd_joint',   label = 'CBD Gelato: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'ocb_paper',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain8 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_zkittlez_cbd_joint',   label = 'CBD Zkittlez: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'ocb_paper',   label = 'Rolling Papers', amount = 2},
            },
        }
    },
    Edibles = {
        ProgressAnimationDict = 'amb@prop_human_bbq@male@idle_a',
        ProgressAnimation = 'idle_b',
        ProgressFlags = 49,
        Strain1 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 1
            ReturnItem = {
                ['1'] = { name = 'gummy_skunk_cbd',   label = 'CBD Gummybear: Skunk', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain2 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 2
            ReturnItem = {
                ['1'] = { name = 'gummy_og-kush_cbd',   label = 'CBD Gummybear: OG-Kush', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 1},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 1},
            },
        },
        Strain3 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 3
            ReturnItem = {
                ['1'] = { name = 'gummy_white-widow_cbd',   label = 'CBD Gummybear: White-Widow', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain4 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 4
            ReturnItem = {
                ['1'] = { name = 'gummy_ak47_cbd',   label = 'CBD Gummybear: AK47', amount = 4},
            },
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain5 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 5
            ReturnItem = {
                ['1'] = { name = 'gummy_amnesia_cbd',   label = 'CBD Gummybear: Amnesia', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            }, 
        },
        Strain6 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 6
            ReturnItem = {
                ['1'] = { name = 'gummy_purple-haze_cbd',   label = 'CBD Gummybear: Purple-Haze', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain7 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 7
            ReturnItem = {
                ['1'] = { name = 'gummy_gelato_cbd',   label = 'CBD Gummybear: Gelato', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            }, 
        },
        Strain8 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 8
            ReturnItem = {
                ['1'] = { name = 'gummy_zkittlez_cbd',   label = 'CBD Gummybear: Zkittlez', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            }, 
        },
    },
    Garage = {
        MoneyType = 'bank', -- Money type used for vehicle deposits
        Vehicle = 'speedo', -- White widow company vehicle use any vehicle you want here
        Deposit = 100, -- Price to take out company van will return 50%
        Heading = 246.68, -- Vehicle spawn heading
        Spawn = vector4(198.13, -269.06, 49.99, 246.68), -- Vehicle spawn location
        --<!>-- ONLY USED IF USING MLO VERSION V2 OTHERWISE IGNORE --<!>--
        V2Garage = {
            Heading = 246.29, -- Vehicle spawn heading for v2 garage
            Spawn = vector4(188.64, -265.6, 50.36, 246.29), -- Vehicle spawn location for v2 garage
            Peds = {
                {name = 'Garage', x = 184.21, y = -264.95, z = 50.38, h = 254.53, hash = 0xF06B849D, model = 'a_m_y_musclbeac_02', scenario = 'WORLD_HUMAN_CLIPBOARD'} -- Garage ped for Whitewidow MLO v2
            },
        }           
    }
} 
-- Drug settings
Config.DrugSettings = {
    Joints = {
        ScreenEffects = true, -- Toggle screen effects; true = enabled, false = disabled
        SmokeItem = 'lighter', -- Item required to smoke joints
        ProgressAnimationDict = 'timetable@gardener@smoking_joint', -- Animation dictionary for progress bar
        ProgressAnimation = 'smoke_idle', -- Animation for progress bar
        ProgressFlags = 49, -- Animation flags for progress bar
        Strain1 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain2 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain3 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain4 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain5 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain6 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain7 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain8 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        }
    },
    BongTables = {
        ScreenEffects = true, -- Toggle screen effects; true = enabled, false = disabled
        SmokeItem = 'lighter', -- Item required to smoke bongs
        Prop = 'prop_bong_01', -- Bong prop
        ProgressAnimationDict = 'anim@safehouse@bong', -- Animation dictionary for progress bar
        ProgressAnimation = 'bong_stage3', -- Animation for progress bar
        Strain1 = { 
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain2 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain3 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain4 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain5 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain6 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain7 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain8 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        }
    },
    Edibles = {
        ScreenEffects = true, -- Toggle screen effects; true = enabled, false = disabled
        ProgressAnimationDict = 'mp_suicide', -- Animation dictionary for progress bar
        ProgressAnimation = 'pill', -- Animation for progress bar
        ProgressFlags = 49, -- Animation flags for progress bar
        Strain1 = { 
            Time = math.random(2,3), -- Time in (s) to consume edibles
            Stress = math.random(1,3), -- Amount of stress relived by consuming edibles
            Armour = math.random(1,3), -- Amount of armour to gain by consuming edibles
        },
        Strain2 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            Stress = math.random(1,3), -- Amount of stress relived by consuming edibles
            Armour = math.random(1,3), -- Amount of armour to gain by consuming edibles
        },
        Strain3 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            Stress = math.random(1,3), -- Amount of stress relived by consuming edibles
            Armour = math.random(1,3), -- Amount of armour to gain by consuming edibles
        },
        Strain4 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            Stress = math.random(1,3), -- Amount of stress relived by consuming edibles
            Armour = math.random(1,3), -- Amount of armour to gain by consuming edibles
        },
        Strain5 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            Stress = math.random(1,3), -- Amount of stress relived by consuming edibles
            Armour = math.random(1,3), -- Amount of armour to gain by consuming edibles
        },
        Strain6 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            Stress = math.random(1,3), -- Amount of stress relived by consuming edibles
            Armour = math.random(1,3), -- Amount of armour to gain by consuming edibles
        },
        Strain7 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            Stress = math.random(1,3), -- Amount of stress relived by consuming edibles
            Armour = math.random(1,3), -- Amount of armour to gain by consuming edibles
        },
        Strain8 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            Stress = math.random(1,3), -- Amount of stress relived by consuming edibles
            Armour = math.random(1,3), -- Amount of armour to gain by consuming edibles
        }
    }
}
