Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = false
Config.EnableProne = false
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 50 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.DisableAmbience = false -- Disabled distance sirens, distance car alarms, etc

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 7, 9, 13, 17, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

Config.Density = {
    ['parked'] = 0.5,
    ['vehicle'] = 0.5,
    ['multiplier'] = 0.5,
    ['peds'] = 0.5,
    ['scenario'] = 0.5,
}

ConsumablesEat = {
     ["sandwich"] = math.random(10, 15),
    ["tosti"] = math.random(5, 10),
    ["twerks_candy"] = math.random(5, 10),
    ["snikkel_candy"] = math.random(5, 10),
    ["funyuns_onion"] = math.random(10, 15),
    ["cheetos_cheese"] = math.random(10, 15),
    ["cheetos_hot"] = math.random(10, 15),
    ["ruffles_potato_chip"] = math.random(10, 15),
    ["doritos_nacho"] = math.random(10, 15),
    ["pringles"] = math.random(5, 15),
    ["rice_krispies_treats"] = math.random(5, 10),
    ["lays_potato"] = math.random(5, 10),
    ["cheezit_Baked"] = math.random(5, 10),
    ["oreo"] = math.random(5, 10),
    ["ding_dongs"] = math.random(5, 10),
    ["sunflower_seeds"] = math.random(5, 15),
    ["twix"] = math.random(5, 10),
    ["mr_goodbar"] = math.random(5, 10),
    ["hershey_bar"] = math.random(5, 10),
    ["whoopers"] = math.random(5, 10),
    ["crunch"] = math.random(5, 10),
    ["kit_kat"] = math.random(5, 10),
    ["nerds"] = math.random(5, 10),
    ["steak_cheese_taquito"] = math.random(15, 20),
    ["beef_mini_tacos"] = math.random(15, 20),
    ["potato_wedges"] = math.random(15, 20),
    ["buffalo_chicken_roller"] = math.random(15, 20),
    ["jalapeno_cheese_taquito"] = math.random(15, 20),
    ["fruit_medley"] = math.random(15, 25),
	["b-hotdog"] = math.random(35, 45),
    ["b-burger"] = math.random(35, 45),
    ["b-brisket"] = math.random(35, 45),
    ["b-chicken"] = math.random(35, 45),
    ["b-ribs"] = math.random(35, 45),
    ["b-jacket"] = math.random(35, 45),
	["candycorn"] = math.random(5, 20),
    ["candyghosts"] = math.random(5, 20),
    ["candygreen"] = math.random(5, 20),
    ["candygum"] = math.random(5, 20),
    ["candygumworm"] = math.random(5, 20),
    ["candypumpkins"] = math.random(5, 20),
}

ConsumablesDrink = {
     ["water_bottle"] = math.random(5, 20),
    ["kurkakola"] = math.random(5, 10),
    ["coffee"] = math.random(40, 50),
	["redslushy"] = math.random(15, 25),
    ["orangeslushy"] = math.random(15, 25),
    ["blueslushy"] = math.random(15, 25),
    ["yellowslushy"] = math.random(15, 25),
    ["greenslushy"] = math.random(15, 25),
    ["rainbowslushy"] = math.random(15, 25),
    ["pure_leaf"] = math.random(5, 15),
	["a_and_w_root_beer"] = math.random(5, 12),
	["brisk_blackberry_smash"] = math.random(5, 12),
	["brisk_half_and_half"] = math.random(5, 12),
	["brisk_sweet_tea"] = math.random(5, 12),
	["dr_pepper"] = math.random(5, 10),
	["sprite"] = math.random(5, 10),
	["mountain_dew"] = math.random(5, 10),
	["pepsi_cola"] = math.random(5, 10),
	["gatorade_fierce_grape"] = math.random(10, 20),
	["gatorade_strawberry_lemonade"] = math.random(10, 20),
	["gatorade_frost_arctic_blitz"] = math.random(10, 20),
	["gatorade_fierce_blue_cherry"] = math.random(10, 20),
	["gatorade_frost_glacier_cherry"] = math.random(10, 20),
	["gatorade_lime_cucumber"] = math.random(10, 20),
	["gatorade_orange"] = math.random(10, 20),
	["gatorade_fruit_punch"] = math.random(10, 20),
	["gatorade_lemon_lime"] = math.random(10, 20),
	["red_bull_red_edition"] = math.random(10, 20),
	["red_bull_pear_edition"] = math.random(10, 20),
	["red_bull_peach_edition"] = math.random(10, 20),
	["red_bull_coconut_edition"] = math.random(10, 20),
	["red_bull_blue_edition"] = math.random(10, 20),
	["red_bull_green_edition"] = math.random(10, 20),
	["red_bull_orange_edition"] = math.random(10, 20),
}

ConsumablesAlcohol = {
   ["whiskey"] = math.random(10, 20),
    ["beer"] = math.random(10, 20),
    ["vodka"] = math.random(10, 20),
	["bud_light"] = math.random(10, 20),
	["coors_light"] = math.random(10, 20),
	["yosemite_road_chardonnay"] = math.random(10, 20),
	["white_claw_black_cherry"] = math.random(10, 20),
	["white_claw_mango"] = math.random(10, 20),
	["white_claw_watermelon"] = math.random(10, 20),
	["white_claw_natural_lime"] = math.random(10, 20),
	["white_claw_ruby_grapefruit"] = math.random(10, 20),
	["white_claw_lemon"] = math.random(10, 20),
	["white_claw_raspberry"] = math.random(10, 20),
	["white_claw_tangerine"] = math.random(10, 20),
	["modelo"] = math.random(10, 20),
	["truly_hard_seltzer_strawberry"] = math.random(10, 20),
	["truly_hard_seltzer_pineapple"] = math.random(10, 20),
	["truly_hard_seltzer_cherry"] = math.random(10, 20),
	["truly_hard_seltzer_lime"] = math.random(10, 20),
	["truly_hard_seltzer_lemon"] = math.random(10, 20),
	["truly_hard_seltzer_watermelon"] = math.random(10, 20),
	["yosemite_road_cabernet_sauvignon"] = math.random(10, 20),
	["heineken"] = math.random(10, 20),
	["budweiser"] = math.random(10, 20),
	["michelob"] = math.random(10, 20),
	["snow_beer"] = math.random(10, 20),
	["skol"] = math.random(10, 20),
	["tsingtao"] = math.random(10, 20),
	["harbin"] = math.random(10, 20),
	["corona"] = math.random(10, 20),
	["guinness"] = math.random(10, 20),
	["brew_dog"] = math.random(10, 20),
	["aperol"] = math.random(10, 20),
	["jagermeister"] = math.random(10, 20),
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = true,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
	[`cargobob`] = true,
	[`cargobob2`] = true,
	[`cargobob3`] = true,
	[`cargobob4`] = true,
	[`skylift`] = true,
	[`valkyrie`] = true,
	[`valkyrie2`] = true,
	[`annihilator2`] = true,
	[`chernobog`] = true,
	[`minitank`] = true,
	[`thruster`] = true,
	[`blazer5`] = true,
	[`dune2`] = true,
	[`dune3`] = true,
	[`insurgent`] = true,
	[`insurgent2`] = true,
	[`nightshark`] = true,
	[`technical`] = true,
	[`technical2`] = true,
	[`zhaba`] = true,
	[`besra`] = true,
	[`bombushka`] = true,
	[`blimp2`] = true,
	[`cargoplane`] = true,
	[`nokota`] = true,
	[`pyro`] = true,
	[`rogue`] = true,
	[`starling`] = true,
	[`tula`] = true,
	[`volatol`] = true,
	[`alkonost`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ humaine labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [4] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}
