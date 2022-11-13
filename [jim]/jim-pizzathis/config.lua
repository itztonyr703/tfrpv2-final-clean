print("^2Jim^7-^2PizzaThis ^7v^41^7.^46^7.^44 ^7- ^2PizzaThis Job Script by ^1Jimathy^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false,
	Lan = "en", -- Pick your language here
	img = "qb-inventory/html/images/", -- Change this to your inventory's name and image folder (SET TO "" IF YOU HAVE DOUBLE IMAGES)
	JimShop = false, -- If true shops will open in jim-shops
	CheckMarks = true, -- If true this will show the player if they have the correct items to be able to craft the items
	Notify = "qb",

		--Simple Toy Reward Support
	RewardItem = "", --Set this to the name of an item eg "bento"
	RewardPool = { -- Set this to the list of items to be given out as random prizes when the item is used - can be more or less items in the list
		"",
		"",
		"",
	},
	Locations = {
		{	zoneEnable = true,
			job = "coretto", -- Set this to the required job
			label = "Cafe Coretto", -- Set this to the required job
			zones = {
				vector2(-1160.4217529297, -1400.3071289063),
				vector2(-1190.361328125, -1420.1987304688),
				vector2(-1210.0433349609, -1393.1787109375),
				vector2(-1185.5769042969, -1386.7896728516),
				vector2(-1192.8680419922, -1371.0689697266),
				vector2(-1183.0363769531, -1365.9942626953)
			},
			blip = vector3(-1188.63, -1405.32, 4.47),
			blipcolor = 2,
			garage = { spawn = vector4(-1179.57, -1394.96, 4.68, 215.13),
			out = vector4(-1183.89, -1398.61, 4.69, 301.86),
			list = { "baller3", } },
		},
	},
	DrinkItems = {
		label = "Drinks Store",
		slots = 5,
		items = {
			{ name = "vodka", price = 2, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "sprunk", price = 2, amount = 50, info = {}, type = "item", slot = 2, },
			{ name = "sprunklight", price = 2, amount = 50, info = {}, type = "item", slot = 3, },
			{ name = "ecola", price = 2, amount = 50, info = {}, type = "item", slot = 4, },
			{ name = "ecolalight", price = 2, amount = 50, info = {}, type = "item", slot = 5, },
		}
	},
	WineItems = {
		label = "Wine Store",
		slots = 5,
		items = {
			{ name = "amarone", price = 5, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "barbera", price = 5, amount = 50, info = {}, type = "item", slot = 2, },
			{ name = "dolceto", price = 5, amount = 50, info = {}, type = "item", slot = 3, },
			{ name = "housered", price = 5, amount = 50, info = {}, type = "item", slot = 4, },
			{ name = "housewhite", price = 5, amount = 50, info = {}, type = "item", slot = 5, },
			{ name = "rosso", price = 5, amount = 50, info = {}, type = "item", slot = 5, },
		}
	},

	FoodItems = {
		label = "Food Fridge Store",
		slots = 10,
		items = {
			{ name = "sauce", price = 2, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "pasta", price = 2, amount = 50, info = {}, type = "item", slot = 2, },
			{ name = "olives", price = 2, amount = 50, info = {}, type = "item", slot = 3, },
			{ name = "basil", price = 2, amount = 50, info = {}, type = "item", slot = 4, },
			{ name = "mozz", price = 2, amount = 50, info = {}, type = "item", slot = 5, },
			{ name = "lettuce", price = 2, amount = 50, info = {}, type = "item", slot = 6, },
			{ name = "pizzmushrooms", price = 2, amount = 50, info = {}, type = "item", slot = 7, },
			{ name = "tiramisu", price = 4, amount = 50, info = {}, type = "item", slot = 8, },
			{ name = "gelato", price = 4, amount = 50, info = {}, type = "item", slot = 9, },
			{ name = "medfruits", price = 4, amount = 50, info = {}, type = "item", slot = 10, },
		}
	},
	FreezerItems = {
		label = "Freezer Store",
		slots = 2,
		items = {
			{ name = "meat", price = 5, amount = 50, info = {}, type = "item", slot = 1, },
			{ name = "squid", price = 5, amount = 50, info = {}, type = "item", slot = 2, },
		}
	},
}
Crafting = {
	Beer = {
		{ ['ambeer'] = { } },
		{ ['dusche'] = { } },
		{ ['logger'] = { } },
		{ ['pisswasser'] = { } },
		{ ['pisswasser2'] = { } },
		{ ['pisswasser3'] = { } },
	},
	Base = {
		{ ['pizzabase'] = { ['pizzadough'] = 1, ['sauce'] = 1, } },
	},
	Oven = {
		{ ['bolognese'] = { ['meat'] = 1, ['sauce'] = 1, } },
		{ ['calamari'] = { ['squid'] = 1, ['sauce'] = 1, } },
		{ ['meatball'] = { ['meat'] = 1, ['pasta'] = 1, } },
		{ ['alla'] = { ['ham'] = 1, ['pasta'] = 1, ['vodka'] = 1, } },
		{ ['pescatore'] = { ['squid'] = 1, } },
	},
	PizzaOven = {
		{ ['margheritabox'] = { ['pizzabase'] = 1, ['mozz'] = 1, } },
		{ ['marinarabox'] = { ['pizzabase'] = 1, ['basil'] = 1, } },
		{ ['prosciuttiobox'] = { ['pizzabase'] = 1, ['mozz'] = 1, ['ham'] = 1, ['pizzmushrooms'] = 1, } },
		{ ['diavolabox'] = { ['pizzabase'] = 1, ['mozz'] = 1, ['salami'] = 1, ['basil'] = 1, } },
		{ ['capricciosabox'] = { ['pizzabase'] = 1, ['ham'] = 1, ['pizzmushrooms'] = 1, ['olives'] = 1, } },
		{ ['vegetarianabox'] = { ['pizzabase'] = 1, ['mozz'] = 1, ['lettuce'] = 1, ['basil'] = 1, } },
	},
	ChoppingBoard = {
		{ ['salami'] = { ['meat'] = 1, } },
		{ ['ham'] = { ['meat'] = 1, } },
	},
}

Loc = {}