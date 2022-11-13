print("^2Jim^7-^2Consumables ^7v^41^7.^43^7.^42 ^7- ^2Consumables Script by ^1Jimathy^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false,
	Notify = "qb",
	UseProgbar = false,

	Consumables = {
		-- Default QB food and drink item override

		--Effects can be applied here, like stamina on coffee for example
		["vodka"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(2000, 4000), stress = math.random(1, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["beer"] = { 			emote = "beer", 		canRun = false, 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["whiskey"] = { 		emote = "whiskey",  	canRun = false, 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},

		["bud_light"] = { 							canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["coors_light"] = { 						canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["modelo"] = { 								canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["heineken"] = { 							canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["budweiser"] = { 							canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["michelob"] = { 							canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["snow_beer"] = { 							canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["corona"] = { 								canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["guinness"] = { 							canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["brew_dog"] = { 							canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["yosemite_road_chardonnay"] = { 			canRun = false,		emote = "whitewine",time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["yosemite_road_cabernet_sauvignon"] = { 	canRun = false,		emote = "redwine",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["white_claw_black_cherry"] = { 			canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["white_claw_mango"] = { 					canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["white_claw_watermelon"] = { 				canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["white_claw_natural_lime"] = { 			canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["white_claw_ruby_grapefruit"] = { 			canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["white_claw_lemon"] = { 					canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["white_claw_raspberry"] = { 				canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["white_claw_tangerine"] = { 				canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["truly_hard_seltzer_strawberry"] = { 		canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["truly_hard_seltzer_pineapple"] = { 		canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["truly_hard_seltzer_cherry"] = { 			canRun = false,		emote = "cup",  	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["truly_hard_seltzer_lime"] = { 			canRun = false,		emote = "whiskey",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["truly_hard_seltzer_lemon"] = { 			canRun = false,		emote = "whiskey",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["truly_hard_seltzer_watermelon"] = { 		canRun = false,		emote = "whiskey",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["skol"] = { 								canRun = false,		emote = "whiskey",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["tsingtao"] = { 							canRun = false,		emote = "whiskey",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["aperol"] = { 								canRun = false,		emote = "whiskey",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["harbin"] = { 								canRun = false,		emote = "whiskey",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["jagermeister"] = { 						canRun = false,		emote = "whiskey",  time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},

		--restauraunt alcohols
		["ambeer"] = { 			canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["dusche"] = { 			canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["logger"] = { 			canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["pisswasser"] = { 		canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["pisswasser2"] = { 	canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["pisswasser3"] = { 	canRun = false,		emote = "beer",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["tequila"] = { 		canRun = false,		emote = "vodkab",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["triplsec"] = { 		canRun = false,		emote = "ginb",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["gin"] = { 			canRun = false,		emote = "ginb",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
		["rum"] = { 			canRun = false,		emote = "rumb",  	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(15,25), canOD = false }},
	
		--VU Cocktails
		["amarettosour"] = { 		canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["bellini"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["cosmopolitan"] = { 		canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["longisland"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["margarita"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["pinacolada"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["sangria"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["screwdriver"] = { 		canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["strawdaquiri"] = { 		canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["strawmargarita"] = { 		canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},

["amarone"] = { 		emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["barbera"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["dolceto"] = { emote = "whitewine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["housered"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["housewhite"] = { emote = "whitewine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["rosso"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},

	["ambeer"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["dusche"] = { emote = "beer1", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["logger"] = { emote = "beer2", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["pisswasser"] = { emote = "beer4", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["pisswasser2"] = { emote = "beer5", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["pisswasser3"] = { emote = "beer6", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},

	--Jim-Pizzathis-Drinks
	["ecola"] = { emote = "ecola", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10, 20), }},
	["ecolalight"] = { emote = "ecola", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10, 20), }},
	["sprunk"] = { emote = "sprunk", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10, 20), }},
	["sprunklight"] = { emote = "sprunk", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10, 20), }},

	--Jim-Pizzathis-Food
	["tiramisu"] = { emote = "bowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
	["gelato"] = { emote = "bowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
	["medfruits"] = { emote = "pineapple", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},

	["bolognese"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
	["calamari"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
	["meatball"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
	["alla"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
	["pescatore"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},

	["capricciosa"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
	["diavola"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
	["marinara"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
	["margherita"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
	["prosciuttio"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
	["vegetariana"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
	["amarone"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["barbera"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["dolceto"] = { emote = "whitewine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["housered"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["housewhite"] = { emote = "whitewine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
	["rosso"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},

	["ambeer"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["dusche"] = { emote = "beer1", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["logger"] = { emote = "beer2", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["pisswasser"] = { emote = "beer4", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["pisswasser2"] = { emote = "beer5", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
	["pisswasser3"] = { emote = "beer6", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},

		
		-- Billiards bar
		["whiskeysour"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["whiskeysmash"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["bloodandsand"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["zombie"] = { 					canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["margarita"] = { 				canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["maitai"] = { 					canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["appletini"] = { 				canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},
		["bloodymary"] = { 				canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,30), canOD = false }},		
		["glass_whiskeycoke"] = { 		canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["glass_rumlemon"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["glass_vodkalemon"] = { 		canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["glass_rumlemon"] = { 			canRun = false,		emote = "cup",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["pint_ambeer"] = { 			canRun = false,		emote = "beer",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["pint_piswasser"] = { 			canRun = false,		emote = "beer",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["pint_logger"] = { 			canRun = false,		emote = "beer",  time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		["pint_dusche"] = { 			canRun = false,		emote = "beer",	time = math.random(2000, 4000), stress = math.random(2, 6), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = false }},
		
		--gas station food
		["sandwich"] = { 				canRun = false,		emote = "sandwich", time = math.random(2000, 4000), stress = math.random(1, 2), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["twerks_candy"] = { 			canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(1, 2), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["snikkel_candy"] = { 			canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(1, 2), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["tosti"] = { 					canRun = false,		emote = "sandwich", time = math.random(2000, 4000), stress = math.random(1, 3), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["funyuns_onion"] = { 			canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["cheetos_cheese"] = { 			canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["cheetos_hot"] = { 			canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["ruffles_potato_chip"] = { 	canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["doritos_nacho"] = { 			canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["pringles"] = { 				canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["lays_potato"] = { 			canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["cheezit_Baked"] = { 			canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["rice_krispies_treats"] = { 	canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["oreo"] = { 					canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["ding_dongs"] = { 				canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["sunflower_seeds"] = { 		canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["twix"] = { 					canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["mr_goodbar"] = { 				canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["hershey_bar"] = { 			canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["whoopers"] = { 				canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["crunch"] = { 					canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["kit_kat"] = { 				canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["nerds"] = { 					canRun = false,		emote = "egobar", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 1, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["steak_cheese_taquito"] = { 	canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 5, armor = 0, type = "food", stats = { hunger = math.random(15,20), }},
		["beef_mini_tacos"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 5, armor = 0, type = "food", stats = { hunger = math.random(15,20), }},
		["potato_wedges"] = { 			canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 5, armor = 0, type = "food", stats = { hunger = math.random(15,20), }},
		["buffalo_chicken_roller"] = { 	canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 5, armor = 0, type = "food", stats = { hunger = math.random(15,20), }},
		["jalapeno_cheese_taquito"] = { canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 5, armor = 0, type = "food", stats = { hunger = math.random(15,20), }},
		["fruit_medley"] = { 			canRun = false,		emote = "bowl", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		
		--VU Food
		["nplate"] = { 			canRun = false,		emote = "crisps", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["vusliders"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["vutacos"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["tots"] = { 			canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		
		--Jim-BeanMachine food
		["beandonut"] = { 		canRun = false,		emote = "donut2", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["watermelon"] = { 		canRun = false,		emote = "pineapple", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["cheesecake"] = { 		canRun = false,		emote = "donut2", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["crisps"] = { 			canRun = false,		emote = "crisps", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["chocolate"] = { 		canRun = false,		emote = "egobar", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},

		--BurgerShot food
		["shotnuggets"] = { 	canRun = false,		emote = "bsfries", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		["shotrings"] = { 		canRun = false,		emote = "bsfries", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		["shotfries"] = { 		canRun = false,		emote = "bsfries", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		["heartstopper"] = { 	canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 8, armor = 0, type = "food", stats = { hunger = math.random(25,35), }},
		["moneyshot"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["meatfree"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		["bleeder"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["torpedo"] = { 		canRun = false,		emote = "torpedo", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["rimjob"] = { 			canRun = false,		emote = "donut2", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		["creampie"] = { 		canRun = false,		emote = "donut2", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		["cheesewrap"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		["chickenwrap"] = { 	canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 6, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		
		--Billiardsbar food
		["cookedsteakpie"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 4, armor = 0, type = "food", stats = { hunger = math.random(15,30), }},
		["cookedchickenpie"] = { 	canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 4, armor = 0, type = "food", stats = { hunger = math.random(15,30), }},
		["cookedcheesepie"] = { 	canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 4, armor = 0, type = "food", stats = { hunger = math.random(15,30), }},
		["cookedmeatpie"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 4, armor = 0, type = "food", stats = { hunger = math.random(15,30), }},
		["cookedmwburger"] = { 		canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 4, armor = 0, type = "food", stats = { hunger = math.random(15,30), }},
		["cookedmwcburger"] = { 	canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 4, armor = 0, type = "food", stats = { hunger = math.random(15,30), }},
		["cookedmwbcburger"] = { 	canRun = false,		emote = "burger", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 4, armor = 0, type = "food", stats = { hunger = math.random(15,30), }},
				
		--drinks
		["coffee"] = { 			canRun = false,		emote = "coffee", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 4000, thirst = math.random(20,25), }},
		["water_bottle"] = { 	canRun = false,		emote = "drink", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["kurkakola"] = { 		canRun = false,		emote = "ecola", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,15), }},
		["grape"] = { 			canRun = false,		emote = "drink", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,15), }},
		["grapejuice"] = { 		canRun = false,		emote = "drink", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,15), }},
		["cranberry"] = { 		canRun = false,		emote = "drink", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { thirst = math.random(10,15), }},
		["pinejuice"] = { 		canRun = false,		emote = "drink", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { thirst = math.random(10,15), }},

		--Jim-BeanMachine drinks
		["bigfruit"] = { 		canRun = false,		emote = "boba1", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(15,30), }},
		["highnoon"] = { 		canRun = false,		emote = "bmcoffee1", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(15,30), }},
		["speedball"] = { 		canRun = false,		emote = "bmcoffee1", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(15,30), }},
		["gunkaccino"] = { 		canRun = false,		emote = "bmcoffee1", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(15,30), }},
		["bratte"] = { 			canRun = false,		emote = "bmcoffee1", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(15,30), }},
		["flusher"] = { 		canRun = false,		emote = "bmcoffee1", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(15,30), }},
		["ecocoffee"] = { 		canRun = false,		emote = "bmcoffee1", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(15,30), }},
		["caffeagra"] = { 		canRun = false,		emote = "bmcoffee1", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(15,30), }},

		--Billiardsbar drinks
		["cuptea"] = { 			canRun = false,		emote = "drink", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["cupcoffee"] = { 		canRun = false,		emote = "bscoffee", time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(10,20), }},
		["irishcoffee"] = { 	canRun = false,		emote = "bscoffee", time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(10,20), }},
		
		--BurgerShot drinks	
		["milkshake"] = { 		canRun = false,		emote = "drink", 	time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["bscoffee"] = { 		canRun = false,		emote = "bscoffee", time = math.random(2000, 4000), stress = math.random(4, 6), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 6000, thirst = math.random(10,20), }},
		["bscoke"] = { 			canRun = false,		emote = "bscoke", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
	
		--gas station drinks

		["pure_leaf"] = { 						canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["a_and_w_root_beer"] = { 				canRun = false,		emote = "ecola", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["brisk_blackberry_smash"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["brisk_half_and_half"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["brisk_sweet_tea"] = { 				canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["dr_pepper"] = { 						canRun = false,		emote = "ecola", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["sprite"] = { 							canRun = false,		emote = "sprunk", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["mountain_dew"] = { 					canRun = false,		emote = "sprunk", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["pepsi_cola"] = { 						canRun = false,		emote = "ecola", 	time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["gatorade_fierce_grape"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["gatorade_frost_arctic_blitz"] = { 	canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["gatorade_fierce_blue_cherry"] = { 	canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["gatorade_frost_glacier_cherry"] = { 	canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["gatorade_lime_cucumber"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["gatorade_orange"] = { 				canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["gatorade_fruit_punch"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["gatorade_lemon_lime"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
		["red_bull_red_edition"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["red_bull_pear_edition"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["red_bull_peach_edition"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["red_bull_coconut_edition"] = { 		canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["red_bull_blue_edition"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["red_bull_green_edition"] = { 			canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["red_bull_orange_edition"] = { 		canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["monster"] = { 						canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["rockstar"] = { 						canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["bang_energy"] = { 					canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		["slurpee"] = { 						canRun = false,		emote = "cup", 		time = math.random(2000, 4000), stress = math.random(2, 4), heal = 2, armor = 0, type = "drink", stats = { effect = "stamina", time = 8000, thirst = math.random(15,25), }},
		
		--drug effects extra food
		["weedshake"] = { 		canRun = false,		emote = "cup",		time = math.random(1000, 2000), stress = math.random(12, 24), heal = 5, armor = 5, type = "drug", stats = { screen = "rampage", effect = "armor", widepupils = false, canOD = false } },
		["weedcupcake"] = { 	canRun = false,		emote = "egobar",	time = math.random(2000, 4000), stress = math.random(12, 24), heal = 5, armor = 5, type = "drug", stats = { screen = "rampage", effect = "armor", widepupils = false, canOD = false } },
		["weedbrownie"] = { 	canRun = false,		emote = "egobar",	time = math.random(2000, 4000), stress = math.random(12, 24), heal = 5, armor = 5, type = "drug", stats = { screen = "rampage", effect = "armor", widepupils = false, canOD = false } },

		
		--[[----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- Items that effect status changes, like bleeding can cause problems as they are all handled in their own scripts
		-- Testing these but they may be best left handled by default scripts
		["ifaks"] = { 			emote = "oxy", 		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 6, widepupils = false, canOD = false } },
		["bandage"] = { 		emote = "oxy", 		time = math.random(5000, 6000), stress = 0, heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false } }, },
		]]

		--Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
		["joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },

		["cokebaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = true } },
		--["crackbaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = true } },
		["xtcbaggy"] = { 		emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "strength", widepupils = true, canOD = true } },
		["oxy"] = { 			emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = false } },
		["meth"] = { 			emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "stamina", widepupils = false, canOD = true } },
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		--Example item
		--[[ ["heartstopper"] = {
			emote = "burger", 							-- Select an emote from below, it has to be in here
			time = math.random(5000, 6000),				-- Amount of time it takes to consume the item
			stress = math.random(1,2),					-- Amount of stress relief, can be 0
			heal = 0, 									-- Set amount to heal by after consuming
			armor = 5,									-- Amount of armor to add
			type = "food",								-- Type: "alcohol" / "drink" / "food"
			stats = {
				screen = "rampage",						-- The screen effect to be played when after consuming the item
				effect = "heal", 						-- The status effect given by the item, "heal" / "stamina"
				time = 10000,							-- How long the effect should last (if not added it will default to 10000)
				amount = 6,								-- How much the value is changed by per second
				hunger = math.random(10,20),			-- The hunger/thirst stats of the item, if not found in the items.lua
				thirst = math.random(10,20),			-- The hunger/thirst stats of the item, if not found in the items.lua
			},
		}, ]]

	},
	Emotes = {
		["drink"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "prop_ld_flow_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
			{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true }},
		["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
			{ Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
			{ Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
			{ Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
			{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
			{ Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
			{ Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
			{ Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
			{ Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
			{ Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
			{ Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
			{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
			{ Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		--Jim-BeanMachine
		["bmcoffee1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee2", AnimationOptions =
			{ Prop = 'prop_fib_coffee', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["bmcoffee2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee3", AnimationOptions =
			{ Prop = 'ng_proc_coffee_01a', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["bmcoffee3"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee3", AnimationOptions =
			{ Prop = 'v_club_vu_coffeecup', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		--Jim-PizzaThis
		["redwine"] = {"mp_player_intdrink", "loop_bottle", "Red Wine Bottle", AnimationOptions =
			{ Prop = "prop_wine_rose", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["whitewine"] = {"mp_player_intdrink", "loop_bottle", "White Wine Bottle", AnimationOptions =
			{ Prop = "prop_wine_white", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["pizza"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Pizza", AnimationOptions =
			{ Prop = "v_res_tt_pizzaplate", PropBone = 18905, PropPlacement = {0.20, 0.038, 0.051, 15.0, 155.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bowl"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "bowl", AnimationOptions =
			{ Prop = "h4_prop_h4_coke_plasticbowl_01", PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["pineapple"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Pizza", AnimationOptions =
			{ Prop = "prop_pineapple", PropBone = 18905, PropPlacement = {0.10, 0.038, 0.03, 15.0, 50.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["foodbowl"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "bowl", AnimationOptions =
			{ Prop = "prop_cs_bowl_01", PropBone = 28422, PropPlacement = {0.0, 0.0, 0.050, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true, }},
		--Jim-BurgerShot
		["milk"] = {"mp_player_intdrink", "loop_bottle", "Milk", AnimationOptions =
			{ Prop = "v_res_tt_milk", PropBone = 18905, PropPlacement = {0.10, 0.008, 0.07, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bscoke"] = {"mp_player_intdrink", "loop_bottle", "BS Coke", AnimationOptions =
			{ Prop = "prop_food_bs_juice01", PropBone = 18905, PropPlacement = {0.04, -0.10, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bscoffee"] = {"mp_player_intdrink", "loop_bottle", "BS Coffee", AnimationOptions =
			{ Prop = "prop_food_bs_coffee", PropBone = 18905, PropPlacement = {0.08, -0.10, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["glass"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Tall Glass", AnimationOptions =
			{ Prop = 'prop_wheat_grass_glass', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["torpedo"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Torpedo", AnimationOptions =
			{ Prop = "prop_food_bs_burger2", PropBone = 18905, PropPlacement = {0.10, -0.07, 0.091, 15.0, 135.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bsfries"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Fries", AnimationOptions =
			{ Prop = "prop_food_bs_chips", PropBone = 18905, PropPlacement = {0.09, -0.06, 0.05, 300.0, 150.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["donut2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut2", AnimationOptions =
			{ Prop = 'prop_donut_02', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 100.0, 270.0},
				EmoteMoving = true, EmoteLoop = true, }},

		--Jim-CatCafe
		["boba1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 1", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaA', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 2", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaB', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba3"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 3", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaC', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba4"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 4", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaD', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["mochi"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Mochi", AnimationOptions =
			{ Prop = 'denis3d_catcafe_plateD', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		--Jim-Tequilala
		["whiskeyb"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Whiskey Bottle", AnimationOptions =
			{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.08, 0.0, 0.05, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["rumb"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Rum Bottle", AnimationOptions =
			{ Prop = "prop_rum_bottle", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["icream"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Irish Cream Bottle", AnimationOptions =
			{ Prop = "prop_bottle_brandy", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ginb"] =  {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Gin Bottle", AnimationOptions =
			{ Prop = "prop_tequila_bottle", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["vodkab"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Vodka Bottle", AnimationOptions =
			{ Prop = 'prop_vodka_bottle', PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["browncup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Brown Cup", AnimationOptions =
			{ Prop = 'v_serv_bs_mug', PropBone = 28422, PropPlacement = {0.03, -0.02, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Crisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke2"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_c", "Smoke 2", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke3"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_b", "Smoke 3", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke4"] = {"amb@world_human_smoking@female@idle_a", "idle_b", "Smoke 4", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["bong"] = {"anim@safehouse@bong", "bong_stage3", "Bong", AnimationOptions =
			{ Prop = 'hei_heist_sh_bong_01', PropBone = 18905, PropPlacement = {0.10,-0.25,0.0,95.0,190.0,180.0}, }},
		["coffee"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'p_amb_coffeecup_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["whiskey"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Whiskey", AnimationOptions =
			{ Prop = 'prop_drink_whisky', PropBone = 28422, PropPlacement = {0.01, -0.01, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["beer"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Beer", AnimationOptions =
			{ Prop = 'prop_amb_beer_bottle', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["cup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Cup", AnimationOptions =
			{ Prop = 'prop_plastic_cup_02', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["donut"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut", AnimationOptions =
			{ Prop = 'prop_amb_donut', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["burger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Burger", AnimationOptions =
			{ Prop = 'prop_cs_burger_01', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
			{ Prop = 'prop_sandwich_01', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["soda"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Soda", AnimationOptions =
			{ Prop = 'prop_ecola_can', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Ego Bar", AnimationOptions =
			{ Prop = 'prop_choc_ego', PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, }},
		["wine"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Wine", AnimationOptions =
			{ Prop = 'prop_drink_redwine', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["flute"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Flute", AnimationOptions =
			{ Prop = 'prop_champ_flute', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["champagne"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Champagne", AnimationOptions =
			{ Prop = 'prop_drink_champ', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["cigar"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar", AnimationOptions =
			{ Prop = 'prop_cigar_02', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cigar2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar 2", AnimationOptions =
			{ Prop = 'prop_cigar_01', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
			{ Prop = 'p_cs_joint_02', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cig"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cig", AnimationOptions =
			{ Prop = 'prop_amb_ciggy_01', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["clean"] = {"timetable@floyd@clean_kitchen@base", "base", "Clean", AnimationOptions =
			{ Prop = "prop_sponge_01", PropBone = 28422, PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["clean2"] = {"amb@world_human_maid_clean@", "base", "Clean 2", AnimationOptions =
			{ Prop = "prop_sponge_01", PropBone = 28422, PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["coke"] = { "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", "Coke", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
		["oxy"] = { "mp_suicide", "pill", "Oxy", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
	},
}
