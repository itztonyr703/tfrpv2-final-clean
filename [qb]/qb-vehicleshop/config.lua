Config = {}

Config.PlateLetters  = 4
Config.PlateNumbers  = 4
Config.PlateUseSpace = false

Config.SpawnVehicle = true  -- TRUE if you want spawn vehicle when buy

Config.TestDrive = true     -- TRUE if you want enable test drive
Config.TestDriveTime = 30   -- TIME in SEC

Config.Blips = {
    [1] = {
        blip = vector3(-25.97, -1102.49, 27.27),
        blipname = 'Luxury Dealer',
        blipsprite = 523,
        blipcolor = 2,
		showblip = true
    },
	[2] = {
        blip = vector3(-733.0, -1339.27, 1.6),
        blipname = 'Boat Shop',
        blipsprite = 410,
        blipcolor = 0,
		showblip = true
    },
}

Config.Shops = {
    [1] = {
        category = 'police',
        coords = vector3(441.84, -976.4, 25.7),
        spawnvehicle = vector4(449.9, -1019.27, 28.49, 88.6), -- Display Point
        cameracoords = vector3(446.0, -1012.65, 28.54), -- Where To Create Camera
        pointcamera = vector3(446.72, -1014.28, 28.55), -- Where To Point Camera
        buyspawn = vector4(440.87, -1017.5, 28.71, 83.58), -- Where Vehicle Spawns on Buy
        testdrive = vector4(434.68, -1018.6, 28.83, 93.34) -- Where Vehicle Spawns on Test Drive
    },
    [2] = {
        category = 'personal',
        coords = vector3(-25.97, -1102.49, 27.27),
        spawnvehicle = vector4(-14.65, -1100.16, 26.92, 71.14), -- Display Point
        cameracoords = vector3(-20.29, -1097.38, 27.06), -- Where To Create Camera
        pointcamera = vector3(-16.73, -1098.8, 26.94), -- Where To Point Camera
        buyspawn = vector4(-13.85, -1091.36, 27.06, 153.3), -- Where Vehicle Spawns on Buy
        testdrive = vector4(-13.85, -1091.36, 27.06, 153.3) -- Where Vehicle Spawns on Test Drive
	},
    [3] = {
        category = 'boats',
        coords = vector3(-733.0, -1339.27, 1.6),
        spawnvehicle = vector4(-709.33, -1337.73, 0.04, 117.83), -- Display Point
        cameracoords = vector3(-707.67, -1352.03, 1.6), -- Where To Create Camera
        pointcamera = vector3(-707.67, -1352.03, 1.6), -- Where To Point Camera 
        buyspawn = vector4(-727.41, -1347.31, -0.4, 141.65), -- Where Vehicle Spawns on Buy
	},
	[4] = {
        category = 'emergency',
        coords = vector3(340.28, -575.19, 28.8),
        spawnvehicle = vector4(325.81, -582.17, 28.8, 165.37), -- Display Point
        cameracoords = vector3(332.9, -584.74, 28.8), -- Where To Create Camera
        pointcamera = vector3(329.02, -582.4, 28.8), -- Where To Point Camera 
        buyspawn = vector4(328.19, -570.74, 28.8, 334.24), -- Where Vehicle Spawns on Buy
	},
}