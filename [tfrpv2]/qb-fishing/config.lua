Config = {}

---- MISC ----
Config.Debug = false -- Debug the Fishing Polyzones
Config.FIshermanName = "Fisherman Paul"
---- CRATE CHANCES ----
Config.PercantageBasic = 10 -- How many percantes to get a BASIC CRATE from fishing?
Config.PercantageAdvanced = 5 -- How many percantages to get a ADVCANCED CRATE from fishing | CAN ONLY BE OBTAINED DURING CHALLENGES


---- CRATE ITEMS ----
Config.MaxBasicItems = 4 -- How many items can you get from a basic Crate?! (MINIMUM 1 | MAXIMUM 5)
Config.UltraRareBasic = 10 -- How many percent of getting a Ultra Rare Basic item
Config.UltraRareBasicItem = "goldbar" -- Put in your Ultra Rare basic Item
Config.BasicItems = { -- Basic items you get from a basic crate...
    "fish_bass",
    "fish_bluefish",
}

Config.MaxAdvancedItems = 4 -- How many items can you get from a Advanced Crate?! (MINIMUM 1 | MAXIMUM 5)

Config.Tournaments = {
    DelayStart = 60, -- How many minutes after server restart for the Fishing challenge to start? (Has to be minimum 10 MINUTES)
    Duration = 45, -- How many minutes do you want the tournament to be? (DEAFULT: 60 minutes)
    MinimumPlayers = 3, -- Minimum amount of players required to join a active tournament. (Recomended 3)
    cashReward = true,
    cash = {[1] = {min=4500,max=7500},[2] = {min=1500,max=2500},[3] = 750}, -- Cash reward index must be leaderboard position, Can be table or random amount each time or a static value!
    itemReward = false,
    item = {
        [1] = {
            'cryptostick',
            'ifak'
        },
        [2] = {
            'boombox',
            'kobe_pop'
        },
        [3] = {
            'advancedlockpick',
            'usb_green'
        }
    },
    secondaryItemReward = false,
    secondaryITemChance = 50, -- Percent chance of getting a second item
    secondaryItem = {
        [1] = {
            'weapon_switchblade'
        },
        [2] = {
            'weapon_assaultrifle_mk2'
        },
        [3] = {
            'weapon_katana'
        }
    }
}

---- FISHING ITEMS ----
Config.Fish = {
    ["fish_bass"] = {
        ["price"] = 20, -- 26%
        ["label"] = "Bass"
    },
    ["fish_bluefish"] = {
        ["price"] = 30, -- 26%
        ["label"] = "Bluefish"
    },
    ["fish_cod"] = {
        ["price"] = 40, -- 26%
        ["label"] = "Cod"
    },
    ["fish_flounder"] = {
        ["price"] = 55, -- 10%
        ["label"] = "Flounder"
    },
    ["fish_mackerel"] = {
        ["price"] = 70, -- 10%
        ["label"] = "Mackerel"
    },
    ["fish_dolphin"] = {
        ["price"] = 225, -- 1.33%
        ["label"] = "Dolphin"
    },
    ["fish_shark"] = {
        ["price"] = 250, -- 1.33%
        ["label"] = "Shark"
    },
    ["fish_whale"] = {
        ["price"] = 275, -- 1.33%
        ["label"] = "Whale"
    },
}

---- FISHING BLIPS ----

Config.BlipSale = vector3(-335.05, 6105.95, 31.45)
Config.Blips = { -- https://wiki.rage.mp/index.php?title=Blips
    [1] = {
        label = "Fishing Market", -- Blip name
        coords = vector3(-335.05, 6105.95, 31.45), -- Blip location
        blip = 780, -- Blip icon
        color = 5 -- Blip color
    },
}

---- FISHING ZONES ----

-- has to be made with PZ creator for best results and Vector2's
PolySpots = {
    -- Lake
    [1] = {
        label = "Fishing Lake",
        BlipCoord = vector3(-1578.67, 4364.22, 2.1),
        Blip = 780, -- Blip Icon
        BlipColor = 5, -- Colour of blip
        zones = {
            vector2(-1742.8103027344, 4473.146484375),
            vector2(-1738.25390625, 4468.384765625),
            vector2(-1719.5634765625, 4461.0092773438),
            vector2(-1708.314453125, 4460.703125),
            vector2(-1703.4774169922, 4460.6743164062),
            vector2(-1682.6987304688, 4461.6235351562),
            vector2(-1667.7093505859, 4458.9799804688),
            vector2(-1661.0385742188, 4455.8051757812),
            vector2(-1649.9200439453, 4448.9497070312),
            vector2(-1640.431640625, 4441.7358398438),
            vector2(-1635.9825439453, 4436.90234375),
            vector2(-1626.2581787109, 4421.6674804688),
            vector2(-1620.3200683594, 4408.5346679688),
            vector2(-1608.2520751953, 4384.8442382812),
            vector2(-1592.6380615234, 4361.3491210938),
            vector2(-1586.2081298828, 4354.0981445312),
            vector2(-1572.9410400391, 4344.1586914062),
            vector2(-1554.7176513672, 4338.2348632812),
            vector2(-1530.1942138672, 4339.138671875),
            vector2(-1496.8734130859, 4329.560546875),
            vector2(-1482.0576171875, 4321.2177734375),
            vector2(-1472.1597900391, 4316.5004882812),
            vector2(-1454.6765136719, 4310.3930664062),
            vector2(-1427.5747070312, 4310.7412109375),
            vector2(-1409.7344970703, 4311.0180664062),
            vector2(-1415.8333740234, 4342.7104492188),
            vector2(-1657.5334472656, 4478.25),
            vector2(-1715.185546875, 4511.9887695312)
        },
        minz = -1.2,
        maxz = 15.3,
    },
}