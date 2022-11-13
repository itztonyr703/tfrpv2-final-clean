Config = {
    Debug = false, -- Displays polyzones. (Green Boxes)
    MaxInvWeight = 360000, -- Set this to your inventory's max weight.

    -- ## Exports
    CoreExport = 'qb-core',
    TargetExport = 'qb-target',
    MenuExport = 'qb-menu',
    FuelExport = 'ps-fuel',
    VehicleKeysTrigger = "vehiclekeys:client:SetOwner",

    -- ## Items
    PhoneItem = "phone", 
    OxyItem = 'oxy',
    SusPackItem = 'suspackage',
    DirtyCashItem = 'markedbills',

    -- ## Blips
    -- Blip Sprites - https://docs.fivem.net/docs/game-references/blips/
    BlipScale = 1.25, -- Blip Size
    PickupCarBlipSprite = 523,
    PickupCarBlipLabel = "Pickup Car", 
    PickupPackagesBlipSprite = 568,
    PickupPackagesBlipLabel = "Pickup Packages",
    SellAreaBlipSprite = 51,
    SellAreaBlipLabel = "Sell Area",
    JobEndBlipSprite = 357,
    JobEndBlipLabel = "Return Job Vehicle",

    -- ## Chances
    PoliceAlertChance = 12,

    -- ## Job Configs
    JobMenuHeader = "Oxy Runs", -- Menu for job start.
    JobStartPrice = 1000,
    CleanMoney = true, -- True will check for DirtyCashItem and clean it to cash.
    Deliveries = math.random(5, 8), -- Amount of deliveries per run.
    ResetTime = 10, -- How often sell spots are reset. (In Minutes)
    OxyReward = math.random(1, 2), -- How much oxy given per sale.
    DirtyItemValue = math.random(241, 432), -- How much clean cash is exhanged for one DirtyCashItem.
    Payout = math.random(350, 600), -- Cash payed upon job finish MULTIPLIED by amount drop-offs.

    -- ## Waits / Timings
    PackageGrabTime = math.random(2000, 2900), -- Progress bar time when picking up packages.
    DeliverTime = math.random(2000, 2900), -- Progress bar time when dropping package into buyer's vehicle.
    BuyInfoWait = math.random(2000, 3200),
    JobVehicleWait = math.random(10000, 15000),
    PackagePedWaitTime = math.random(10000, 15000),
    SellLocationWait = math.random(10000, 15000),
    BuyerSpawnWait = math.random(15000, 25000),

    -- ## Peds / Locations
    JobStartPed = 'a_m_y_stwhi_01',
    JobStartPedLocation = vector4(182.76, -1836.83, 28.1, 138.05),
    PackagePed = 'cs_chengsr',
    PackagePedLocations = { vector4(-15.88, -1295.54, 29.35, 187.96), vector4(-1193.23, -1510.38, 4.37, 308.69) },
    JobEndPed = 'g_f_y_vagos_01',
    JobEndLocation = vector4(1560.79, -2165.73, 77.49, 264.04),
    BuyerPeds = { 'g_m_m_chigoon_02', 'a_f_y_eastsa_02', 'a_m_m_golfer_01', 'a_m_m_skater_01', 'a_m_y_bevhills_01' },
    BuyerVehicles = { 'dominator', 'warrener', 'asterope', 'schafter2', 'primo' },
    VehicleLocations = {
        {
            vehicle = "felon",
            vehiclePos = vector4(357.01, -1848.68, 27.98, 137.1),
        },
        {
            vehicle = "sultan",
            vehiclePos = vector4(900.21, -1067.11, 32.22, 359.53), 
        },
        {
            vehicle = "bison",
            vehiclePos = vector4(-1531.77, -982.57, 12.55, 139.66),
        },
        {
            vehicle = "blista",
            vehiclePos = vector4(-1440.957, -367.29, 42.89, 34.94),
        }
    },
    SellZones = {
    {
            label = "Pink Cage",
            busy = false,
            waypoint = vector3(323.63, -184.99, 57.39),
            buyerSpawn = vector4(351.18, -132.84, 65.55, 339.5),
            buyerEndpoint = vector3(329.68, -183.91, 57.67),
            zones = {
                vector2(349.1067199707, -197.12756347656),
                vector2(308.88522338867, -182.44351196289),
                vector2(316.93676757812, -157.05372619629),
                vector2(358.19366455078, -167.19665527344)
            },
		 {
          label = "Mirror Park",
        busy = false,
        waypoint = vector3(1373.07, -751.25, 66.65),
        buyerspawn = vector4(1279.16, -672.13, 65.69, 277.04),
        buyerendpoint = vector3(1373.07, -751.25, 66.65),
        zones = {
            vector2(1336.3704833984, -710.78173828125),
            vector2(1409.4986572266, -724.12884521484),
            vector2(1392.6414794922, -777.1650390625),
            vector2(1324.1107177734, -761.55755615234)
            },
		 {
       label = "Grove",
        busy = false,
        waypoint = vector3(205.45, -1859.72, 27.17),
        buyerspawn = vector4(104.09, -1826.47, 25.73, 319.25),
        buyerendpoint = vector3(205.45, -1859.72, 27.17),
        zones = {
            vector2(248.71383666992, -1862.2700195312),
            vector2(221.42712402344, -1900.1218261719),
            vector2(153.52754211426, -1846.8552246094),
            vector2(176.37135314941, -1808.4464111328)
            },
		 {
       label = "LSIA",
        busy = false,
        waypoint = vector3(-956.7, -2583.82, 13.42),
        buyerspawn = vector4(-830.42, -2492.24, 13.42, 103.18),
        buyerendpoint = vector3(-951.24, -2587.76, 13.42),
        zones = {
            vector2(-911.6572265625, -2581.1262207031),
            vector2(-956.18823242188, -2653.0632324219),
            vector2(-999.46276855469, -2620.4880371094),
            vector2(-983.00665283203, -2548.361328125)
            },
		 {
      label = "Vespucci Docks",
        busy = false,
        waypoint = vector3(-638.27, -1200.26, 12.43),
        buyerspawn = vector4(-724.3, -1143.99, 10.2, 126.58),
        buyerendpoint = vector3(-638.27, -1200.26, 12.43),
        zones = {
            vector2(-686.7294921875, -1200.2427978516),
            vector2(-613.13879394531, -1143.4273681641),
            vector2(-557.66143798828, -1199.564453125),
            vector2(-626.5869140625, -1260.1951904297)
            },
		 {
     label = "Under PD",
        busy = false,
        waypoint = vector3(429.82, -1486.78, 28.81),
        buyerspawn = vector4(401.22, -1497.74, 28.88, 29.35),
        buyerendpoint = vector3(430.07, -1486.67, 29.22),
        zones = {
            vector2(448.41711425781, -1444.1407470703),
            vector2(482.0739440918, -1524.4293212891),
            vector2(421.02056884766, -1544.9866943359),
            vector2(379.46813964844, -1481.0804443359)
            },
        }
    }
}
}
}
}
}
}
