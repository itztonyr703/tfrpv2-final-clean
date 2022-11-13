Config = {}

--- ### Framework Settings ### ---

Config.QBCoreNewversion = true

if Config.QBCoreNewversion then
    Config.CoreName = "QBCore"
    Config.Core = exports['qb-core']:GetCoreObject()
    Config.CoreNotify = "QBCore:Notify"
else
    Config.CoreName = "QBCore:GetObject"
    Config.Core = nil
    TriggerEvent(Config.CoreName, function(obj) Config.Core = obj end)
    Config.CoreNotify = "QBCore:Notify"
end

--- ### Phone settings ### ---

Config.KeyMapping       = true                 --## This setting is for those using slotted inventory. (Prevents key operation)
Config.OpenPhone        = 'p'   --## Phone open key ## https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.Locale           = 'en'
Config.RegisterCommand  = "TooglePhone"        -- commandName
Config.ItemName         = {           -- # item name
                            "phone",
                            "pink_phone",
                            "gold_phone"
                        }

Config.PropActive       = true
Config.CryptoName       = "crypto"
Config.HospitalAmbulanceAlert = true
Config.Fahrenheit       = true
Config.EyeTarget        = true                 -- required qb-target (You can use it for contacts sharing and phone booth)
Config.TargetExport     = "qb-target"           -- exports["qb-target"]  -- Resource Name
Config.UsableItem       = true                  -- If you want to use without items set it to false
Config.AirDropID        = false                -- Activate the AirDrop feature if you want the player to see the ID.
Config.AutoMessageDelete    = true             -- Automatically deletes messages (Messages,Mail,Group Messages,Tinder Messages,Yellow Pages)
Config.AutoDeleteTime       = 7                -- How many days ago you want to delete data
Config.AutoWantedTime       = 7                -- How many days ago you want to delete data (Automatic deletion of wanted people in MDT application after how many days if deletion is forgotten)


--- ### Voice settings ### ---

Config.MumbleExport     = "mumble-voip"       -- exports["mumble-voip"] -- Resource Name
Config.PMAVoiceExport   = "pma-voice"         -- exports["pma-voice"]   -- Resource Name
Config.UseMumbleVoIP    = false  -- Use Frazzle's Mumble-VoIP Resource https://github.com/FrazzIe/mumble-voip
Config.PMAVoice         = true  -- Use Pma-Voice Resource (Recomended!) https://github.com/AvarianKnight/pma-voice
Config.UseTokoVoIP      = false
Config.SaltyChat        = false  -- SaltyChat (Only v2.6 and lower | Not tested in v2.6 higher versions)

--- ## CALL COMMAND ### ---

Config.CallAnswer = "answer"  -- quick answer (registercommand)
Config.EndCall = "endcall"  -- to close call (registercommand)

-- ### BILLING APP ### ---
Config.qbmanagement       = true

-- ### Business APP ### ---
Config.JobGrade           = { -- Business level (Invoice cancellation authorization)
    ["police"] = 4,
    ["ambulance"] = 4,
    ["mechanic"] = 4,
	['realestate'] = 4,
	['beanmachine'] = 4,
	['vanilla'] = 4,
	['burgershot'] = 4,
	['coretto'] = 4,
	["billiards"] = 4,
	['whitewidow'] = 4,
	['casino'] = 4,
	['dealer'] = 4,
	['planedealer'] = 4,
	['mechanic'] = 4,
	['judge'] = 4,
	['lawyer'] = 4
}

-- ### TAXI APP ### ---
Config.TaxiPrice        = 75     -- Taxi Price ( 75$/KM )
Config.TaxiJobCode      = "taxi"  -- Job Code

-- ### House APP ### ---
Config.loafHouse        = false   -- Activate if you are using Loaf House (https://store.loaf-scripts.com/package/4310850)

-- ### BANK APP ### ---
Config.BankTransferCom      = 10     -- Bank transfer commission rate
Config.OfflineBankTransfer  = false

-- ### GARAGE APP ### ---
Config.qbGarages        = true   -- Set to false if you are not using qb-garages
Config.cdGarages        = false  -- Activate if you are using Codesign Garage (https://codesign.pro/package/4206352)
Config.loafGarages      = false  -- Activate if you are using Loaf Garage (https://store.loaf-scripts.com/package/4310876)

Config.OwnedVehicles    = "player_vehicles"   -- ## SQL TABLE NAME (VEHICLES)
Config.ValespawnRadius  = 30.0   -- Distance to spaw your car
Config.ValePrice        = 1000    -- Vale Price
Config.ValeNPC          = false   -- Activate if you want the valet to bring the car to you.

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}


Config.Carhashdebug = false  -- car hash (f8)

-- ### CAR SELLER ### ---

Config.OfflineCarSeller = true

Config.CarsSellerBlacklist = {
    [-1216765807] = true,
    [-12162765807] = true
}

-- ### BILLING APP ### --- (/billing id amount label)
Config.BillingCommissions = { -- This is a percentage (0.10) == 10% ( Must be active to receive commission - If the player is not in the game, she/he cannot receive a commission.)
	mechanic = 0.05,
	ambulance = 0.10,
    police = 0.10,
	burgershot = 0.10,
	vanilla = 0.10,
	beanmachine = 0.10,
	corettos = 0.10,
	billiardsbar = 0.10,
	whitewidow = 0.10
}
Config.BillingJob = {
    mechanic = true,
    ambulance = true,
    police = true,
	mechanic = true,
	burgershot = true,
	vanilla = true,
	beanmachine = true,
	corettos = true,
	billiardsbar = true,
	whitewidow = true
}

-- ### YellowPages APP ### ---
Config.YellowpagesPrice = 100

-- ### Twitter APP ### ---
Config.TwitterVerifyCommand = "twitterverify"

-- ### Instagram APP ### ---
Config.InstagramVerifyCommand = "instagramverify"

-- ### Instagram APP ### ---
Config.RaceAutCommand = "raceaut"
Config.qbcoreaut = "god"  --- qb-core authorization system


--## PHONE Box --##
Config.PhoneBox = false
Config.PhoneBoxKey = "E"
Config.PhoneBoxRegCom = "phonebox"
Config.PhoneBoothMoney = { actived = true, money = 500 }
Config.PhoneBoothModel = {
	[1281992692] = true,
    [1158960338] = true,
    [295857659] = true,
    [-78626473] = true,
    [-2103798695] = true,
    [1511539537] = true,
    [-1559354806] = true
}
Config.PhoneBootNumber = "22222"



--## Crypto ##--

Config.Crytos = {
    ["bitcoin"] = false,
    ["ethereum"] = false,
    ["tether"] = false,
    ["binance-usd"] =false,
    ["uniswap"] = false,
    ["binancecoi"] = false,
    ["terra-luna"] = false,
    ["avalanche-2"] = false,
    ["cardano"] = false,
    ["ripple"] = false,
    ["usd-coin"] = false,
    ["dogecoin"] = false,
    ["litecoin"] = false,
    ["chainlink"] = false,
    ["stellar"] = false,
    ["tron"] = false,
    ["eos"] = false,
    ["monero"] = false,
    ["iota"] = false
}