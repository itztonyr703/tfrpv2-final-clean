Config = {}

Config.UseOkokTextUI = false -- true = okokTextUI (I recommend you using this since it is way more optimized than the default ShowHelpNotification) | false = ShowHelpNotification

Config.Key = 38 -- [E] Key to open the interaction, check here the keys ID: https://docs.fivem.net/docs/game-references/controls/#controls

Config.HideMinimap = true -- If true it'll hide the minimap when the Crafting menu is opened

Config.ShowBlips = false -- If true it'll show the crafting blips on the map

Config.ShowFloorBlips = true -- If true it'll show the crafting markers on the floor

Config.UseXP = true -- If you want to use the XP system or not

Config.MaxLevel = 20 -- Max level on the workbenches

Config.StartEXP = 100 -- First level XP

Config.LevelMultiplier = 1.05 -- How much the XP needed increases per level (1.05 = 5% | level 1 = 100 | level 2 = 205 | etc...)

Config.GiveXPOnCraftFailed = true -- If the player receives XP when he fails the craft of an item

Config.itemNames = { -- format: id = label
	goldbar = 'Example Gold Bar',
	weapon_assaultrifle = 'Assault Rifle',
	radio = 'Example Radio',
	weapon_microsmg = 'Micro SMG',
	weapon_sawnoffshotgun = 'Saw Off Shotgun',
	weapon_assaultrifle_mk2 = 'Assault Rifle Mk2',
	weapon_heavyshotgun = 'Heavy Shotgun',
	weapon_dbshotgun = 'DB Shotgun',
	diamond_ring = 'Diamond ring',
	phone = 'Example Phone',
	weapon_minismg = 'Mini SMG',
	weapon_machinepistol = 'TEC-9',
	pistol_extendedclip = 'Pistol Extended Clip',
	pistol_suppressor = 'Pistol Suppressor',
	assaultrifle_extendedclip = 'Assaultrifle Extended Clip',
	assaultrifle_drum = 'Assaultrifle Drum',
	smg_drum = 'SMG Drum',
	smg_extendedclip = 'SMG Extended Clip',
	microsmg_extendedclip = 'Mico SMG Extended Clip',
	smg_scope = 'SMG Scope',
	rubber = 'Rubber',
	steel = 'Steel',
	iron = 'Iron',
	metalscrap = 'Metal Scrap',	
	microsmg_extendedclip = 'Micro SMG Extended Clip',
	combatpistol_extendedclip = 'Combat Pistol Extended Clip',
	vintagepistol_extendedclip = 'Vintage Pistol Extended Clip',
	heavypistol_grip = 'Heavy Pistol Grip',
	heavypistol_extendedclip = 'Heavy Pistol Extended Clip',
	snspistol_grip = 'Sns Pistol Grip',
	snspistol_extendedclip = 'Sns Pistol Extended Clip',
	pistol50_extendedclip = 'Pistol .50 Extended Clip',
	appistol_extendedclip = 'Appistol Extended Clip',
	weapontint_plat = 'Platinum weapon paint',	
	weapontint_orange = 'Orange weapon paint',
	weapontint_green = 'Green weapon paint',
	weapontint_pink = 'Pink weapon paint',
	weapontint_black = 'Black weapon paint',
	weapontint_gold = 'Gold weapon paint',
	assaultrifle_luxuryfinish = 'Assaultrifle luxuryfinish',
	sawnoffshotgun_luxuryfinish = 'Sawnoffshotgun luxuryfinish',
	smg_luxuryfinish = 'SMG luxuryfinish',
	microsmg_luxuryfinish = 'Micro SMG luxuryfinish',
	revolver_vipvariant = 'Revolver weapon paint',
	revolver_bodyguardvariant = 'Revolver luxuryfinish',	
	pistol50_luxuryfinish = 'Pistol .50 luxuryfinish',
	appistol_luxuryfinish = 'Appistol luxuryfinish',
	combatpistol_luxuryfinish = 'Combat Pistol luxuryfinish',
	pistol_luxuryfinish = 'Pistol luxuryfinish',
	goldchain = 'Example Chain',
	paintcan = 'Paintcan',	
	weapon_gusenberg = 'Gusenberg',
	mg_ammo = 'MG Ammo',
	smg_ammo = 'SMG Ammo',
	pistol_ammo = 'Pistol Ammo',	
	gusenberg_extendedclip = 'Gusenberg EXT Clip',
	rifle_ammo = 'Rifle Ammo',
	weapon_pumpshotgun = 'Pump Shotgun',
	shotgun_ammo = 'Shotgun Ammo',
	gunpowder = 'Gunpowder',
	tech_trash = 'Tech Trash',
	lockpick = 'Lockpick',
	screwdriverset = 'Screw Driverset',
	bandage = 'Bandage',	
	radioscanner = 'Radio Scanner',
	handcuffs = 'Handcuffs',
	armor = 'Armor',
	drill = 'Drill',
	leather = 'Leather',
	gatecrack = 'Gatecrack',
	sulfur = 'Sulfur',
	carbon = 'Carbon',
	potassium_nitrate = 'Potassium Nitrate',
	refined_steel = 'Refined Steel',
	refined_iron = 'Refined Iron',
	gallery_aquamarinering = 'Aquamarine ring',
	gallery_citrinering = 'Citrine ring',
	gallery_diamondring = 'Diamond Ring',
	gallery_jadering = 'jade Ring',
	gallery_onyxring = 'Onyx Ring',
	gallery_rubyring = 'Ruby Ring',
	gallery_sapphirering = 'Sapphire Ring',
	gallery_tanzanitering = 'Tanzanite Ring',
	weapon_m70 = 'M70',
	weapon_ak47 = 'AK47',
	weapon_uzi = 'UZI',
	weapon_de = 'Deagle',
	weapon_fnx45 = 'FN FNX-45',
	weapon_m9 = 'Beretta M9A3',
	weapon_katana = 'Katana',
	weapon_sledgehammer = 'Sledgehammer',
	wine = 'Wine',
	weed_lv_pk = 'Purple Kush 2g',
	weedfilterbag = 'Filter Bag for Rosin',
	rosincontainer = 'Rosin Container',
	rosin = 'Rosin',
	opium = 'Opium',
	opiumflower = 'Opiumflower',
	dmt = 'Dmt',
	ayahuasca = 'Ayahuasca',
	mdma = 'MDMA',
	amphetamines = 'Amphetamines',
	ketamine = 'Ketamine',
	arketamine = 'Arketamine',
	esketamine = 'Esketamine',
	codeine = 'Codeine',
	leather = 'Leather',
	skin_cow = 'Cow Hide',
}

Config.Crafting = {
	{
		coordinates = vector3(-583.58, -287.69, 41.69), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'lockpick', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 75, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = false, -- if true = is item | if false = is weapon
				time = 6, -- Time to craft (in seconds)
				levelNeeded = 0, -- What level he needs to craft this item
				xpPerCraft = 10, -- How much XP he receives after crafting this item
				recipe = { -- Recipe to craft it
					{'refined_steel', 1, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'screwdriverset', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 20,
				recipe = { -- Recipe to craft it
					{'refined_steel', 1, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'bandage', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 3,
				xpPerCraft = 15,
				recipe = { -- Recipe to craft it
					{'cloth', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'radioscanner', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'tech_trash', 15, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'handcuffs', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 3,
				xpPerCraft = 15,
				recipe = { -- Recipe to craft it
					{'refined_steel', 4, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'leather', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 6, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 1,
				recipe = { -- Recipe to craft it
					{'skin_cow', 2, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'armor', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 5,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'leather', 15, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
		},
	},
	{
		coordinates = vector3(-630.1, -2350.92, 13.95), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'weapon_assaultrifle', -- Item id and name of the image
				amount = 0,
				successCraftPercentage = 75, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = false, -- if true = is item | if false = is weapon
				time = 6, -- Time to craft (in seconds)
				levelNeeded = 3, -- What level he needs to craft this item
				xpPerCraft = 100, -- How much XP he receives after crafting this item
				recipe = { -- Recipe to craft it
					{'refined_steel', 30, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 15, true},
					{'rubber', 45, true},
				},
				job = { -- What jobs can craft this item in this workbench
					'police'
				},
			},
			{
				item = 'weapon_assaultrifle_mk2', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 25,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'refined_steel', 40, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 25, true},
					{'rubber', 55, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_sawnoffshotgun', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 20, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 12, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_heavyshotgun', -- Item id and name of the image
				amount = 5,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 28, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 20, true},
					{'rubber', 32, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_dbshotgun', -- Item id and name of the image
				amount = 10,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 80,
				recipe = { -- Recipe to craft it
					{'refined_steel', 32, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 18, true},
					{'rubber', 38, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- Tier 4
					''
				},
			},
		},
	},
{
		coordinates = vector3(-382.62, 6087.74, 39.61), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'mg_ammo', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'steel', 10, true}, -- item/amount/if the item should be removed when crafting
					{'gunpowder', 5, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gusenberg_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'steel', 50, true}, -- item/amount/if the item should be removed when crafting
					{'iron', 50, true},
					{'rubber', 5, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'pistol_ammo', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'steel', 5, true}, -- item/amount/if the item should be removed when crafting
					{'gunpowder', 5, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'smg_ammo', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'steel', 8, true}, -- item/amount/if the item should be removed when crafting
					{'gunpowder', 5, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'rifle_ammo', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'steel', 15, true}, -- item/amount/if the item should be removed when crafting
					{'gunpowder', 5, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'shotgun_ammo', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 80,
				recipe = { -- Recipe to craft it
					{'steel', 15, true}, -- item/amount/if the item should be removed when crafting
					{'gunpowder', 5, true},
				},
				job = { -- What jobs can craft this item in this workbench - Tier 3
					''
				},
			},
		},
	},
{
		coordinates = vector3(-1604.57, 5197.38, 4.31), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'gunpowder', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 1,
				recipe = { -- Recipe to craft it
					{'sulfur', 8, true}, -- item/amount/if the item should be removed when crafting
					{'carbon', 8, true},
					{'potassium_nitrate', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench - Tier 3
					''
				},
			},
		},
	},

{
		coordinates = vector3(2730.51, 1508.07, 34.31), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'Attachment', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'pistol_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 75, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = false, -- if true = is item | if false = is weapon
				time = 6, -- Time to craft (in seconds)
				levelNeeded = 0, -- What level he needs to craft this item
				xpPerCraft = 25, -- How much XP he receives after crafting this item
				recipe = { -- Recipe to craft it
					{'metalscrap', 240, false}, -- item/amount/if the item should be removed when crafting
					{'steel', 250, true},
					{'rubber', 60, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'pistol_suppressor', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 25,
				recipe = { -- Recipe to craft it
					{'metalscrap', 265, true}, -- item/amount/if the item should be removed when crafting
					{'steel', 285, true},
					{'rubber', 75, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'assaultrifle_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 4,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'metalscrap', 290, true},
					{'steel', 305, true},
					{'rubber', 85, true},
					{'smg_extendedclip', 1, true},-- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'assaultrifle_drum', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 4,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'metalscrap', 305, true},
					{'steel', 340, true},
					{'rubber', 110, true},
					{'smg_extendedclip', 2, true},-- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'smg_drum', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 35,
				recipe = { -- Recipe to craft it
					{'metalscrap', 330, true},
					{'steel', 365, true},
					{'rubber', 130, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'smg_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 35,
				recipe = { -- Recipe to craft it
					{'metalscrap', 355, true},
					{'steel', 390, true},
					{'rubber', 145, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'microsmg_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 35,
				recipe = { -- Recipe to craft it
					{'metalscrap', 370, true},
					{'steel', 435, true},
					{'rubber', 155, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'smg_scope', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 35,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'combatpistol_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 25,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'vintagepistol_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 25,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'heavypistol_grip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 25,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'heavypistol_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 25,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'snspistol_grip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 25,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'snspistol_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 25,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'pistol50_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 35,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'appistol_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'metalscrap', 400, true},
					{'steel', 469, true},
					{'rubber', 170, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'weapontint_plat', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 50,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'weapontint_orange', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'weapontint_green', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'weapontint_pink', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'weapontint_black', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'weapontint_gold', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 25,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'assaultrifle_luxuryfinish', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 25,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'sawnoffshotgun_luxuryfinish', -- Item id and name of the image 
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 15,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'smg_luxuryfinish', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 10,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'microsmg_luxuryfinish', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 10,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'revolver_vipvariant', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 5,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'revolver_bodyguardvariant', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 25,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'pistol50_luxuryfinish', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 5,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'appistol_luxuryfinish', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 5,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
				{
				item = 'combatpistol_luxuryfinish', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 5,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'pistol_luxuryfinish', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 15,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'metalscrap', 5, true}, -- item/amount/if the item should be removed when crafting
					{'rubber', 10, true},
					{'paintcan', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench -- Tier 2
					''
				},
			},
		},
	},
	{
		coordinates = vector3(1333.46, 4390.41, 44.34), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'opium', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'opiumflower', 5, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
	{
		coordinates = vector3(-3167.52, 1093.72, 24.36), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'dmt', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'ayahuasca', 5, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
	{
		coordinates = vector3(2591.74, 434.5, 108.61), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'mdma', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'amphetamines', 5, true}, -- item/amount/if the item should be removed when crafting
					{'ketamine', 2, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
	{
		coordinates = vector3(843.1, -3031.6, 24.08), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'ketamine', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'arketamine', 5, true}, -- item/amount/if the item should be removed when crafting
					{'esketamine', 2, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
	{
		coordinates = vector3(979.46, -1982.46, 30.65), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'codeine', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 5,
				recipe = { -- Recipe to craft it
					{'opium', 3, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
	{
		coordinates = vector3(1459.23, 1134.53, 114.32), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'weapon_microsmg', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 12, true},
					{'rubber', 20, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_minismg', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 15, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_machinepistol', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 80,
				recipe = { -- Recipe to craft it
					{'refined_steel', 18, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 10, true},
					{'rubber', 20, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
{
		coordinates = vector3(-2321.4, 226.91, 167.6), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'weapon_ak47', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'refined_steel', 35, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 16, true},
					{'rubber', 20, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_m70', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 38, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 20, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_sledgehammer', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 10, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 5, true},
					{'rubber', 15, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_gusenberg', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 75, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = false, -- if true = is item | if false = is weapon
				time = 6, -- Time to craft (in seconds)
				levelNeeded = 5, -- What level he needs to craft this item
				xpPerCraft = 100, -- How much XP he receives after crafting this item
				recipe = { -- Recipe to craft it
					{'refined_steel', 30, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 21, true},
					{'rubber', 30, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_mac10', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 75, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = false, -- if true = is item | if false = is weapon
				time = 6, -- Time to craft (in seconds)
				levelNeeded = 3, -- What level he needs to craft this item
				xpPerCraft = 100, -- How much XP he receives after crafting this item
				recipe = { -- Recipe to craft it
					{'refined_steel', 30, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 21, true},
					{'rubber', 30, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gusenberg_extendedclip', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'steel', 50, true}, -- item/amount/if the item should be removed when crafting
					{'iron', 50, true},
					{'rubber', 5, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_fnx45', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 80,
				recipe = { -- Recipe to craft it
					{'refined_steel', 15, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 5, true},
					{'rubber', 15, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
{
		coordinates = vector3(-2292.76, 193.04, 167.6), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'weapon_uzi', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'refined_steel', 35, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 16, true},
					{'rubber', 20, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_m9', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 38, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 20, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_de', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 10, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 5, true},
					{'rubber', 15, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'weapon_katana', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 80,
				recipe = { -- Recipe to craft it
					{'refined_steel', 15, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 5, true},
					{'rubber', 15, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
{
		coordinates = vector3(-1807.5933, 1900.6230, 139.2874), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'General', -- Title
		tableID = 'general1', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'gallery_aquamarinering', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 5, -- Time to craft (in seconds)
				levelNeeded = 2,
				xpPerCraft = 50,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 12, true},
					{'rubber', 20, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gallery_citrinering', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 15, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gallery_jadering', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 15, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gallery_onyxring', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 15, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gallery_rubyring', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 15, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gallery_sapphirering', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 15, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gallery_tanzanitering', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 4, -- Time to craft (in seconds)
				levelNeeded = 1,
				xpPerCraft = 65,
				recipe = { -- Recipe to craft it
					{'refined_steel', 25, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 15, true},
					{'rubber', 25, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
			{
				item = 'gallery_diamondring', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 100, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 3, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 80,
				recipe = { -- Recipe to craft it
					{'refined_steel', 18, true}, -- item/amount/if the item should be removed when crafting
					{'refined_iron', 10, true},
					{'rubber', 20, true}, -- item/amount/if the item should be removed when crafting
				},
				job = { -- What jobs can craft this item in this workbench -- TIER 1
					''
				},
			},
		},
	},
		{
		coordinates = vector3(1414.46, -731.91, 67.46), -- coordinates of the table
		radius = 1, -- radius of the table
		maxCraftRadius = 5, -- if you are further it will stop the craft
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = "Crafting"}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'Rosin Processing', -- Title
		tableID = 'rosinprocessing', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe
			{
				item = 'rosin', -- Item id and name of the image
				amount = 1,
				successCraftPercentage = 80, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
				isItem = true, -- if true = is item | if false = is weapon
				time = 10, -- Time to craft (in seconds)
				levelNeeded = 0,
				xpPerCraft = 1,
				recipe = { -- Recipe to craft it
					{'weed_lv_pk', 1, true}, -- item/amount/if the item should be removed when crafting
					{'weedfilterbag', 1, true},
					{'rosincontainer', 1, true},
				},
				job = { -- What jobs can craft this item in this workbench
					''
				},
			},
		},
	},
}

-------------------------- DISCORD LOGS

-- To set your Discord Webhook URL go to server.lua, line 3

Config.BotName = 'TFRP Crafting Logs' -- Write the desired bot name

Config.ServerName = 'TFRP 2.0' -- Write your server's name

Config.IconURL = 'https://imgur.com/10mX0nK' -- Insert your desired image link

Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html

Config.StartCraftWebhookColor = '16127'

Config.ConcludeCraftWebhookColor = '65352'

Config.AnticheatProtectionWebhookColor = '16776960'

Config.FailWebhookColor = '16711680'