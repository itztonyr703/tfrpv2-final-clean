Config = {

OnlyZones = false, -- Allow drug growth only in defined zones
GlobalGrowthRate = 10, -- In how many seconds it takes to update the plant (At 100% rate plant will grow 1% every update)
DefaultRate = 10, -- Plants planted outside zone default growth rate percentage

Zones = {

	{
		Coords = vector3(1854.1574707031,4907.66015625,44.745887756348),
		Radius = 100.0,
		GrowthRate = 30.0,
		Display = true,
		DisplayBlip = 469, -- Select blip from (https://docs.fivem.net/docs/game-references/blips/)
		DisplayColor = 2, -- Select blip color from (https://docs.fivem.net/docs/game-references/blips/)
		DisplayText = 'Weed Zone',
		Exclusive = {'weed_lemonhaze_seed'} -- Types of drugs that will be affected in this are.
	}
	
},

PlantWater = {
  ['water'] = 10 -- Item and percent it adds to overall plant water  
},

PlantFood = {
  ['fertilizer'] = 15 -- Item and percent it adds to overall plant food  
},


Plants = { -- Create seeds for drugs
    
    ['weed_lemonhaze_seed'] = {
        Label = 'Lemon Haze', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_lemonhaze', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_white-widow_seed'] = {
        Label = 'White Widow', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_white-widow', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_skunk_seed'] = {
        Label = 'Skunk', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_skunk', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_purple-haze_seed'] = {
        Label = 'Purple Haze', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '127, 0, 255', -- Main color of the plant rgb
        Produce = 'weed_purple-haze', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_og-kush_seed'] = {
        Label = 'OG Kush', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_og-kush', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_amnesia_seed'] = {
        Label = 'Amnesia', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_amnesia', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_ak47_seed'] = {
        Label = 'Ak47', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_ak47', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_blue_dream_seed'] = {
        Label = 'Blue Dream', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '0, 128, 255', -- Main color of the plant rgb
        Produce = 'weed_blue_dream', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_girl_scout_cookies_seed'] = {
        Label = 'Girl Scout Cookies', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '153, 76, 0', -- Main color of the plant rgb
        Produce = 'weed_girl_scout_cookies', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_sour_diesel_seed'] = {
        Label = 'Sour Diesel', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_sour_diesel', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_cheese_seed'] = {
        Label = 'Dinafem Cheese', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_cheese', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_pineapple_express_seed'] = {
        Label = 'Pineapple Express', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_pineapple_express', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_trainwreck_seed'] = {
        Label = 'Trainwreck', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_trainwreck', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_velvet_runtz_seed'] = {
        Label = 'Velvet Runtz', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_velvet_runtz', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_gelato_seed'] = {
        Label = 'Gelato', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_gelato', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_cherry_pie_seed'] = {
        Label = 'Cherry Pie', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '153, 0, 0', -- Main color of the plant rgb
        Produce = 'weed_cherry_pie', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['weed_lv_pk_seed'] = {
        Label = 'Purple Kush', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '127, 0, 255', -- Main color of the plant rgb
        Produce = 'weed_lv_pk', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['kratomleaves'] = {
        Label = 'Mitragyna speciosa', -- 
        Type = 'kratom', -- Type of drug
        Image = 'coca.png', -- Image of plant
        PlantType = 'plant2', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'kratom', -- Item the plant is going to produce when harvested
        Amount = 25, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['opium_poppy_seed'] = {
        Label = 'Opium Poppy', -- 
        Type = 'Opium', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant2', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 204, 204', -- Main color of the plant rgb
        Produce = 'opiumflower', -- Item the plant is going to produce when harvested
        Amount = 6, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['ayahuasca_seed'] = {
        Label = 'Ayahuasca Tree', -- 
        Type = 'ayahuasca', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'ayahuasca', -- Item the plant is going to produce when harvested
        Amount = 14, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    },
    ['coca_seed'] = {
        Label = 'Coca Plant', -- 
        Type = 'cocaine', -- Type of drug
        Image = 'coca.png', -- Image of plant
        PlantType = 'plant2', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 255', -- Main color of the plant rgb
        Produce = 'coca', -- Item the plant is going to produce when harvested
        Amount = 12, -- The max amount you can harvest from the plant
        SeedChance = 50, -- Percent of getting back the seed
        Time = 3000 -- Time it takes to harvest in miliseconds
    }

},

ProcessingTables = { -- Create processing table

        ['opium_processing_table'] = {

            Type = 'opium',
            Model = 'bkr_prop_meth_table01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 204, 204', -- Color in RGB
            Item = 'opium', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['opiumflower'] = 3
            }

            },

        ['dmt_processing_table'] = {

            Type = 'dmt',
            Model = 'bkr_prop_meth_table01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '204, 0, 204', -- Color in RGB
            Item = 'dmt', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['ayahuasca'] = 3
            }

            }, 			

        ['mdma_processing_table'] = {

            Type = 'MDMA',
            Model = 'bkr_prop_meth_table01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '204, 204, 0', -- Color in RGB
            Item = 'mdma', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['amphetamines'] = 3,
				['ketamine'] = 1
            }

            },

        ['ketamine_processing_table'] = {

            Type = 'ketamine',
            Model = 'bkr_prop_meth_table01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '122, 232, 19', -- Color in RGB
            Item = 'ketamine', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['arketamine'] = 3,
				['esketamine'] = 1
            }

            },			
			
        ['codeine_processing_table'] = {

            Type = 'ketamine',
            Model = 'bkr_prop_meth_table01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 255', -- Color in RGB
            Item = 'ketamine', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['opium'] = 3
            }

            },
			
        ['weed_blue_dream_processing_table'] = {

            Type = 'Blue Dream joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '0, 128, 255', -- Color in RGB
            Item = 'weed_blue_dream_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_blue_dream'] = 2
            }

            },
			
        ['weed_girl_scout_cookies_processing_table'] = {

            Type = 'Girl Scout Cookies joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 255', -- Color in RGB
            Item = 'weed_girl_scout_cookies_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_girl_scout_cookies'] = 2
            }

            },
			
        ['weed_sour_diesel_processing_table'] = {

            Type = 'Sour Diesel joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 0', -- Color in RGB
            Item = 'weed_sour_diesel_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_sour_diesel'] = 2
            }

            },
			
        ['weed_cheese_processing_table'] = {

            Type = 'Cheese joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 0', -- Color in RGB
            Item = 'weed_cheese_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_cheese'] = 2
            }

            },
        
		['weed_pineapple_express_processing_table'] = {

            Type = 'Pinapple express joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 0', -- Color in RGB
            Item = 'weed_pineapple_express_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_pineapple_express'] = 2
            }

            },
        
		['weed_trainwreck_table'] = {

            Type = 'Trainwreck joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 0', -- Color in RGB
            Item = 'weed_trainwreck_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_trainwreck'] = 2
            }

            },
        
		['weed_velvet_runtz_processing_table'] = {

            Type = 'runtz joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 255', -- Color in RGB
            Item = 'weed_velvet_runtz_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_velvet_runtz'] = 2
            }

            },
        
		['weed_gelato_processing_table'] = {

            Type = 'Gelato joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 255', -- Color in RGB
            Item = 'weed_gelato_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_gelato'] = 2
            }

            },
        
		['weed_cherry_pie_processing_table'] = {

            Type = 'Cherry Pie joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '153, 0, 0', -- Color in RGB
            Item = 'weed_cherry_pie_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_cherry_pie'] = 2
            }

            },
        
		['weed_lv_pk_processing_table'] = {

            Type = 'Purple Kush joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '127, 0, 255', -- Color in RGB
            Item = 'weed_lv_pk_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_lv_pk'] = 2
            }

            },
        
		['weed_white-widow_processing_table'] = {

            Type = 'White widow joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 255', -- Color in RGB
            Item = 'weed_white-widow_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_white-widow'] = 2
            }

            },
        
		['weed_skunk_processing_table'] = {

            Type = 'Skunk joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 255', -- Color in RGB
            Item = 'weed_skunk_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_skunk'] = 2
            }

            },
        
		['weed_purple-haze_processing_table'] = {

            Type = 'Purple haze joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '127, 0, 255', -- Color in RGB
            Item = 'weed_purple-haze_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_purple-haze'] = 2
            }

            },
        
		['weed_og-kush_processing_table'] = {

            Type = 'OG Kush joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 0', -- Color in RGB
            Item = 'weed_og-kush_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_og-kush'] = 2
            }

            },
			        
		['weed_amnesia_processing_table'] = {

            Type = 'Amnesia joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 255', -- Color in RGB
            Item = 'weed_amnesia_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_amnesia'] = 2
            }

            },
			        
		['weed_ak47_processing_table'] = {

            Type = 'AK47 joint table',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 0', -- Color in RGB
            Item = 'weed_ak47_joint', -- Processed item
            Time = 17, -- Time in seconds to process 1 item
            Ingrediants = {
                ['weed_ak47'] = 2
            }

            },
															
        ['cocaine_processing_table'] = {

            Type = 'Cocaine',
            Model = 'bkr_prop_weed_table_01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
            Color = '255, 255, 255', -- Color in RGB
            Item = 'cocaine', -- Processed item
            Time = 10, -- Time in seconds to process 1 item
            Ingrediants = {
                ['coca'] = 3,
                ['fuel'] = 1
            }

            }

},

Drugs = { -- Create you own drugs
    
    ['opium'] = {

    	Label = 'opium',
    	Animation = 'pill', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
            'intenseEffect',
            'whiteoutEffect',
            'intenseEffect',
            'drunkWalk'
    	}
        
    },
    ['dmt'] = {

    	Label = 'dmt',
    	Animation = 'pill', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
            'outOfBody',
			'confusionEffect',
			'whiteoutEffect',
            'intenseEffect',
            'focusEffect',
            'drunkWalk'
    	}
        
    },
    ['ketamine'] = {

    	Label = 'ketamine',
    	Animation = 'pill', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
            'intenseEffect',
            'whiteoutEffect',
            'intenseEffect',
            'drunkWalk'
    	}
        
    },
    ['mdma'] = {

    	Label = 'mdma',
    	Animation = 'pill', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
            'outOfBody',
			'confusionEffect',
			'whiteoutEffect',
            'intenseEffect',
            'focusEffect',
            'drunkWalk'
    	}
        
    },

    ['cocaine'] = {

        Label = 'Cocaine',
        Animation = 'sniff', -- Animations: blunt, sniff, pill
        Time = 60, -- Time is added on top of 30 seconds
        Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
            'runningSpeedIncrease',
            'infinateStamina',
            'fogEffect',
            'psycoWalk'
        }
        
    }

},

Dealers = {
    
        {
            Ped = 'g_m_importexport_01',
            Coords = vector3(167.51689147949,6631.5473632813,30.527015686035),
            Heading = 200.0,
            Prices = {
                ['weed_lemonhaze'] = 10 -- Item name and price for 1
            }
        }

},



Text = { 
    ['planted'] = 'Seed was planted!',
    ['feed'] = 'Plant was fed!',
    ['water'] = 'Plant was watered!',
    ['destroy'] = 'Plant was destroyed!',
    ['harvest'] = 'You harvested the plant!',
    ['cant_plant'] = 'You cant plant here!',
    ['processing_table_holo'] = '~r~E~w~  Processing Table',
    ['cant_hold'] = 'You dont have space for this item!',
    ['missing_ingrediants'] = 'You dont have these ingrediants',
    ['dealer_holo'] = '~g~E~w~  Sell drugs',
    ['sold_dealer'] = 'You sold drugs to dealer! +$',
    ['no_drugs'] = 'You dont have enough drugs'
}

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
        --exports['mythic_notify']:DoHudText('error', msg)

end

