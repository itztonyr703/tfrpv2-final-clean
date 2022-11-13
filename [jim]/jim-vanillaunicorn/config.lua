print("^2Jim^7-^2VanillaUnicorn v^41^7.^46^7.^43 ^7- ^2Vanilla Unicorn Job Script by ^1Jimathy^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false,  -- false to remove green boxes
	img = "qb-inventory/html/images/", -- Change this to your inventory's name and image folder (SET TO "" IF YOU HAVE DOUBLE IMAGES)
	JimShop = false, -- Enable this to use jim-shops for buying ingredients
	CheckMarks = true, -- If true this will show the player if they have the correct items to be able to craft the items
--	TipCost = 100, -- How much a Stripper Tip costs
--	TipStress = 5, -- How much stress relief per tip
	Notify = "qb",

	MLO = "gabz",		--Set to "van" for the default interior
						--Set to "gabz" for Gabz VU interior

	Locations = {
		{
			zoneEnable = true,
			job = "vanilla",
			label = "Vanilla Unicorn",
			zones = {
				vector2(106.45397186279, -1340.5074462891),
				vector2(72.271331787109, -1276.0433349609),
				vector2(146.02534484863, -1265.64453125),
				vector2(164.9525604248, -1292.0209960938)
			},
			blip = vector3(111.05, -1287.96, 28.26),
			blipcolor = 61,
			garage = { spawn = vector4(151.4, -1287.78, 28.68, 210.15),
				out = vector4(149.0, -1290.0, 30.10, 303.09),
				list = { "panto", "burrito3" }
			},
			--Custom DJ Booth Stuff
			Booth = {
				enableBooth = false, -- Set false if using external DJ/Music stuff.
				DefaultVolume = 0.1, -- 0.01 is lowest, 1.0 is max
				radius = 30, -- The radius of the sound from the booth
				coords = vector3(120.0, -1281.72, 29.48), -- Where the booth is located
				playing = false,
			},
		},
	},
	DrinkItems = {
		label = "Drinks Store",
		slots = 2,
		items = {
--			[1] = { name = "cranberry", price = 1, amount = 50, info = {}, type = "item", slot = 1, },
--			[2] = { name = "gin", price = 1, amount = 50, info = {}, type = "item", slot = 2, },
--			[3] = { name = "rum", price = 1, amount = 50, info = {}, type = "item", slot = 3, },
--			[4] = { name = "amaretto", price = 1, amount = 50, info = {}, type = "item", slot = 4, },
--			[5] = { name = "vodka", price = 1, amount = 50, info = {}, type = "item", slot = 5, },
--			[6] = { name = "midori", price = 1, amount = 50, info = {}, type = "item", slot = 6, },
--			[7] = { name = "pinejuice", price = 1, amount = 50, info = {}, type = "item", slot = 7, },
--			[8] = { name = "prosecco", price = 1, amount = 50, info = {}, type = "item", slot = 8, },
--			[9] = { name = "tequila", price = 1, amount = 50, info = {}, type = "item", slot = 9, },
--			[10] = { name = "triplsec", price = 1, amount = 50, info = {}, type = "item", slot = 10, },
--			[11] = { name = "orange", price = 1, amount = 50, info = {}, type = "item", slot = 11, },
--			[12] = { name = "lime", price = 1, amount = 50, info = {}, type = "item", slot = 12, },
--			[13] = { name = "lemon", price = 1, amount = 50, info = {}, type = "item", slot = 13, },
--			[14] = { name = "peach", price = 1, amount = 50, info = {}, type = "item", slot = 14, },
--			[15] = { name = "strawberry", price = 1, amount = 50, info = {}, type = "item", slot = 15, },
--			[16] = { name = "mintleaf", price = 1, amount = 50, info = {}, type = "item", slot = 16, },
--			[17] = { name = "cubasil", price = 1, amount = 50, info = {}, type = "item", slot = 17, },
			[1] = { name = "sprunk", price = 2, amount = 50, info = {}, type = "item", slot = 1, },
			[2] = { name = "ecola", price = 2, amount = 50, info = {}, type = "item", slot = 2, },
		},
	},
	FoodItems = {
		label = "Toy Store",
		slots = 2,
		items = {
--			[1] = { name = "meat", price = 2, amount = 50, info = {}, type = "item", slot = 1, },
--			[2] = { name = "nachos", price = 1, amount = 50, info = {}, type = "item", slot = 2, },
--			[3] = { name = "potato", price = 1, amount = 50, info = {}, type = "item", slot = 3, },
--			[4] = { name = "lettuce", price = 1, amount = 50, info = {}, type = "item", slot = 4, },
--			[5] = { name = "cheddar", price = 1, amount = 50, info = {}, type = "item", slot = 5, },
--			[6] = { name = "chocolate", price = 1, amount = 50, info = {}, type = "item", slot = 6, },
--			[7] = { name = "crisps", price = 1, amount = 50, info = {}, type = "item", slot = 7, },
--			[8] = { name = "sprunklight", price = 2, amount = 50, info = {}, type = "item", slot = 8, },
--			[9] = { name = "ecolalight", price = 2, amount = 50, info = {}, type = "item", slot = 9, },
			[1] = { name = "annabelle_pop", price = 10, amount = 50, info = {}, type = "item", slot = 1, },
			[2] = { name = "beetlejuice_pop", price = 10, amount = 50, info = {}, type = "item", slot = 2, },
		},
	},
}
Crafting = {
	Cocktails = {
		{ ['amarettosour'] = { ['amaretto'] = 1, ['lemon'] = 1, } },
		{ ['bellini'] = { ['prosecco'] = 1, ['peach'] = 1, } },
		{ ['cosmopolitan'] = { ['vodka'] = 1, ['orange'] = 1,	['cranberry'] = 1, ['cubasil'] = 1,	} },
		{ ['longisland'] = { ['gin'] = 1, ['tequila'] = 1, ['vodka'] = 1, ['ecola'] = 1, ['lemon'] = 1, } },
		{ ['margarita'] = { ['tequila'] = 1, ['lime'] = 1, ['orange'] = 1, } },
		{ ['pinacolada'] = { ['rum'] = 1, ['pinejuice'] = 1, } },
		{ ['sangria'] = { ['prosecco'] = 1, ['sprunk'] = 1, ['orange'] = 1, ['mintleaf'] = 1, } },
		{ ['screwdriver'] = { ['vodka'] = 1, ['orange'] = 1, } },
		{ ['strawdaquiri'] = { ['rum'] = 1, ['strawberry'] = 1,	} },
		{ ['strawmargarita'] = { ['tequila'] = 1, ['strawberry'] = 1, } },
	},
	Food = {
		{ ['vusliders'] = { ['meat'] = 1, ['lettuce'] = 1, } },
		{ ['vutacos'] = { ['meat'] = 1, ['lettuce'] = 1, } },
		{ ['nplate'] = { ['nachos'] = 1, ['cheddar'] = 1, } },
		{ ['tots'] = { ['potato'] = 1, } },
	},
	Beer = {
		{ ['ambeer'] = { } },
		{ ['dusche'] = { } },
		{ ['logger'] = { } },
		{ ['pisswasser'] = { } },
		{ ['pisswasser2'] = { } },
		{ ['pisswasser3'] = { } },
	},
}