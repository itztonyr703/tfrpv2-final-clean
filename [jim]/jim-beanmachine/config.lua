print("^2Jim^7-^2BeanMachine ^7v^41^7.^43^7.^44 ^7- ^2BeanMachine Script by ^1Jimathy^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/jixelpatterns

Config = {
	Debug = false,  -- false to remove green boxes
	Lan = "en", -- change the language

	img = "qb-inventory/html/images/", -- Change this to your inventory's name and image folder

	JimConsumables = true, -- Enable this to disable this scripts control of food/drink items
	JimShop = false, -- If true shops will open in jim-shops

	CheckMarks = true, -- If true this will show the player if they have the correct items to be able to craft the items

	Notify = "qb",

		--Simple Toy Reward Support - disabled if JimConsumables are true
	RewardItem = "", --Set this to the name of an item eg "bento"
	RewardPool = { -- Set this to the list of items to be given out as random prizes when the item is used - can be more or less items in the list
		"",
		"",
		"",
	},

	FoodItems = {
		label = "Food Store",
		slots = 2,
		items = {
			{ name = "splinter", price = 10, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "donatello", price = 10, amount = 50, info = {}, type = "item", slot = 2, },
		
		},
	},
	DesertItems = {
		label = "Desert Store",
		slots = 1,
		items = {
			{ name = "beandonut", price = 2, amount = 50, info = {}, type = "item", slot = 1, },
		},
	},
	SodaItems = {
		label = "Soda Storage",
		slots = 4,
		items = {
			{ name = "ecola", price = 2, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "ecolalight", price = 2, amount = 50, info = {}, type = "item", slot = 2, },
			{ name = "sprunk", price = 2, amount = 50, info = {}, type = "item", slot = 3, },
			{ name = "sprunklight", price = 2, amount = 50, info = {}, type = "item", slot = 4, },
		},
	},
	Locations = {
		["beangabzlegion"] = {
			zoneEnable = true,
			label = "Bean Machine(Legion)",
			job = "beanmachine",
			zones = {
				vector2(137.44329833984, -1019.5242919922),
				vector2(122.99235534668, -1058.451171875),
				vector2(101.35326385498, -1048.4799804688),
				vector2(115.27521514893, -1011.9081420898)
			},
			garage = { spawn = vector4(130.93, -1032.04, 28.76, 340.2),
						out = vector4(129.41, -1031.15, 29.43, 253.32),
						list = { "panto", } },
			blip = vector3(120.27, -1038.09, 29.28),
			blipcolor = 56,
		},
		["beanunclejust"] = {
			zoneEnable = false,
			label = "Bean Machine(Vinewood)",
			job = "beanmachine",
			zones = {
				vector2(-649.89886474609, 259.69918823242),
				vector2(-611.98547363281, 257.3210144043),
				vector2(-614.646484375, 203.47846984863),
				vector2(-649.29040527344, 203.21409606934)
			},
			garage = { spawn = vector4(-631.99, 207.03, 73.31, 93.9),
						out = vector4(-632.39, 209.14, 74.32, 179.94),
						list = { "panto", } },
			blip = vector3(-629.63, 234.39, 81.88),
			blipcolor = 56,
		},
		["beanrflx"] = {
			zoneEnable = false,
			label = "Bean Machine(Legion)",
			job = "beanmachine",
			zones = {
				vector2(271.67, -955.77),
				vector2(291.9, -954.33),
				vector2(291.61, -986.73),
				vector2(261.14, -973.50)
			},
			garage = { spawn = vector4(278.17, -956.56, 28.6, 269.1),
						out = vector4(277.52, -958.44, 29.4, 356.56),
						list = { "panto", } },
			blip = vector3(281.54, -965.68, 29.42),
			blipcolor = 56,
		},
	},
}

Crafting = {
	Slush = {
		{ ['bigfruit'] = { ['watermelon'] = 1, ['water_bottle'] = 1, ['orange'] = 1, ['sugar'] = 1, }, },
	},
	Drinks = {
		{ ['highnoon'] = { ['beancoffee'] = 1, ['water_bottle'] = 1, ['orange'] = 1, }, },
		{ ['speedball'] = { ['beancoffee'] = 3, ['sugar'] = 1, }, },
		{ ['gunkaccino'] = { ['beancoffee'] = 1, ['sugar'] = 2, ['cheesecake'] = 1, }, },
		{ ['bratte'] = { ['beancoffee'] = 2, ['sugar'] = 5, }, },
		{ ['flusher'] = { ['beancoffee'] = 1, ['water_bottle'] = 1, ['orange'] = 1, ['chickenbreast'] = 1, }, },
		{ ['ecocoffee'] = { ['beancoffee'] = 1, ['water_bottle'] = 1, ['milk'] = 1, ['plastic'] = 1, }, },
		{ ['caffeagra'] = { ['beancoffee'] = 1, ['rhinohorn'] = 2, ['oystershell'] = 1, }, },
	},
}

Loc = {}

