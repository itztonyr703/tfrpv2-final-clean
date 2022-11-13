Config = {

OnlyZones = false, -- Allow drug growth only in defined zones
GlobalGrowthRate = 20, -- In how many seconds it takes to update the plant (At 100% rate plant will grow 1% every update)
DefaultRate = 48, -- Plants planted outside zone default growth rate percentage

Zones = {

	{
		Coords = vector3(1854.1574707031,4907.66015625,44.745887756348),
		Radius = 100.0,
		GrowthRate = 60.0,
		Display = true,
		DisplayBlip = 469, -- Select blip from (https://docs.fivem.net/docs/game-references/blips/)
		DisplayColor = 2, -- Select blip color from (https://docs.fivem.net/docs/game-references/blips/)
		DisplayText = 'Weed Zone',
		Exclusive = {'weed_lemonhaze_seed'} -- Types of drugs that will be affected in this are.
	}
	
},

PlantWater = {
  ['water'] = 25 -- Item and percent it adds to overall plant water  
},

PlantFood = {
  ['fertilizer'] = 25 -- Item and percent it adds to overall plant food  
},


Plants = { -- Create seeds for drugs
    
    ['weed_lemonhaze_seed'] = {
        Label = 'Lemon Haze', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_lemonhaze', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_white-widow_seed'] = {
        Label = 'White Widow', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_white-widow', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_skunk_seed'] = {
        Label = 'Skunk', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_skunk', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_purple-haze_seed'] = {
        Label = 'Purple Haze', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '127, 0, 255', -- Main color of the plant rgb
        Produce = 'weed_purple-haze', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_og-kush_seed'] = {
        Label = 'OG Kush', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_og-kush', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_amnesia_seed'] = {
        Label = 'Amnesia', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_amnesia', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_ak47_seed'] = {
        Label = 'Ak47', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_ak47', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_blue_dream_seed'] = {
        Label = 'Blue Dream', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '0, 128, 255', -- Main color of the plant rgb
        Produce = 'weed_blue_dream', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_girl_scout_cookies_seed'] = {
        Label = 'Girl Scout Cookies', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '153, 76, 0', -- Main color of the plant rgb
        Produce = 'weed_girl_scout_cookies', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_sour_diesel_seed'] = {
        Label = 'Sour Diesel', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_sour_diesel', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_cheese_seed'] = {
        Label = 'Dinafem Cheese', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_cheese', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_pineapple_express_seed'] = {
        Label = 'Pineapple Express', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_pineapple_express', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_trainwreck_seed'] = {
        Label = 'Trainwreck', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 0', -- Main color of the plant rgb
        Produce = 'weed_trainwreck', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_velvet_runtz_seed'] = {
        Label = 'Velvet Runtz', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_velvet_runtz', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_gelato_seed'] = {
        Label = 'Gelato', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'weed_gelato', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_cherry_pie_seed'] = {
        Label = 'Cherry Pie', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '153, 0, 0', -- Main color of the plant rgb
        Produce = 'weed_cherry_pie', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['weed_lv_pk_seed'] = {
        Label = 'Purple Kush', -- 
        Type = 'weed', -- Type of drug
        Image = 'weed.png', -- Image of plant
        PlantType = 'plant1', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '127, 0, 255', -- Main color of the plant rgb
        Produce = 'weed_lv_pk', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['kratomleaves'] = {
        Label = 'Mitragyna speciosa', -- 
        Type = 'kratom', -- Type of drug
        Image = 'kratomleaves.png', -- Image of plant
        PlantType = 'plant2', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'kratom', -- Item the plant is going to produce when harvested
        Amount = 38, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['opium_poppy_seed'] = {
        Label = 'Opium Poppy', -- 
        Type = 'Opium', -- Type of drug
        Image = 'opium_seed.png', -- Image of plant
        PlantType = 'plant2', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 204, 204', -- Main color of the plant rgb
        Produce = 'opiumflower', -- Item the plant is going to produce when harvested
        Amount = 50, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['ayahuasca_seed'] = {
        Label = 'Ayahuasca Tree', -- 
        Type = 'ayahuasca', -- Type of drug
        Image = 'ayahuasca_seed.png', -- Image of plant
        PlantType = 'plant2', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '122, 232, 19', -- Main color of the plant rgb
        Produce = 'ayahuasca', -- Item the plant is going to produce when harvested
        Amount = 65, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    },
    ['coca_seed'] = {
        Label = 'Coca Plant', -- 
        Type = 'cocaine', -- Type of drug
        Image = 'coca.png', -- Image of plant
        PlantType = 'plant2', -- Choose plant types from (plant1, plant2, small_plant) also you can change plants yourself in main/client.lua line: 2
        Color = '255, 255, 255', -- Main color of the plant rgb
        Produce = 'coca', -- Item the plant is going to produce when harvested
        Amount = 65, -- The max amount you can harvest from the plant
        SeedChance = 90, -- Percent of getting back the seed
        Time = 800 -- Time it takes to harvest in miliseconds
    }

},

ProcessingTables = { -- Create processing table
	
	['cocaine_processing_table'] = {
		Type = 'Cocaine',
		Model = 'bkr_prop_coke_table01a', -- Exanples: bkr_prop_weed_table_01a, bkr_prop_meth_table01a, bkr_prop_coke_table01a
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
    ['codeine'] = {

    	Label = 'codeine',
    	Animation = 'pill', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
            'drunkWalk',
			'outOfBody',
			'intenseEffect',
            'cameraShake',
            'focusEffect',
            'drunkWalk'
    	}
        
    },
    ['weedshake'] = {

    	Label = 'weedshake',
    	Animation = 'blunt', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
			'psycoWalk',
			'intenseEffect',
            'cameraShake',
            'focusEffect',
			'confusionEffect',
			'healthRegen',
			'foodRegen',
			'moreStrength'
    	}       
    },
	    ['weedcupcake'] = {
    	Label = 'weedcupcake',
    	Animation = 'blunt', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
			'drunkWalk',
			'outOfBody',
			'fogEffect',
            'cameraShake',
            'focusEffect',
			'confusionEffect',
			'foodRegen',
			'healthRegen',
			'moreStrength'
    	}       
    },
	    ['weedbrownie'] = {
    	Label = 'weedbrownie',
    	Animation = 'blunt', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
			'drunkWalk',
			'outOfBody',
			'fogEffect',
            'cameraShake',
            'focusEffect',
			'confusionEffect',
			'healthRegen',
			'foodRegen',
			'moreStrength'
    	} 
	},
	    ['heroin'] = {
    	Label = 'heroin',
    	Animation = 'sniff', -- Animations: blunt, sniff, pill
        Time = 40, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
			'drunkWalk',
			'outOfBody',
			'fogEffect',
            'focusEffect',
			'confusionEffect',
			'infinateStamina',
			'healthRegen',
			'moreStrength'
    	} 
	},
	    ['lsd'] = {
    	Label = 'lsd',
    	Animation = 'pill', -- Animations: blunt, sniff, pill
        Time = 40, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
			'drunkWalk',
			'outOfBody',
			'fogEffect',
            'focusEffect',
			'confusionEffect',
			'healthRegen',
			'moreStrength',
			'runningSpeedIncrease'
    	} 
	},
	    ['rosin'] = {
    	Label = 'rosin',
    	Animation = 'pill', -- Animations: blunt, sniff, pill
        Time = 30, -- Time is added on top of 30 seconds
    	Effects = { -- Effects: runningSpeedIncrease, infinateStamina, moreStrength, healthRegen, foodRegen, drunkWalk, psycoWalk, outOfBody, cameraShake, fogEffect, confusionEffect, whiteoutEffect, intenseEffect, focusEffect
			'psycoWalk',
			'outOfBody',
			'fogEffect',
            'cameraShake',
			'confusionEffect',
			'moreStrength',
			'runningSpeedIncrease'
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
            Coords = vector3(76.17, 7183.29, 1.6),
            Heading = 200.0,
            Prices = {
                ['weed_lemonhaze'] = 200 -- Item name and price for 1
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

