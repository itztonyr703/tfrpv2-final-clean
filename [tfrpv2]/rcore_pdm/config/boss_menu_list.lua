local MarkerSpawnerStyle = {
    style = 31,
    size = vector3(1.0, 1.0, 1.0),
    color = { r = 125, g = 255, b = 125, a = 200 },
    rotate = true,
}

local PDMCamera = {
    vehiclePosition = vector3(-47.04, -1096.54, 26.42),
    vehicleRotation = 164.0,
    cameraPosition = vector3(-48.95, -1102.02, 27.42),
    cameraFov = 60.0,
}

local PDMSpawn = {
    { pos = vector3(-49.73, -1077.09, 26.86), heading = 69.0 },
}

local PlaneShop = {
    vehiclePosition = vector3(-971.32, -2980.02, 13.95),
    vehicleRotation = 129.0,
    cameraPosition = vector3(-984.3, -2972.55, 16.5),
    cameraFov = 60.0,
}

local PlaneSpawn = {
    { pos = vector3(-964.51, -3163.42, 13.94), heading = 56.0 },
}

Config.BossMarkerList = {
 
    -- must be uniq name
    ["boss_menu_airplane"] = {
        -- Marker position with interactive menu
        Position = vector3(-955.14, -2974.86, 13.95),

        -- Marker style
        MarkerSpawnerStyle = MarkerSpawnerStyle,

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "planedealer",

        -- What grade is allowed to open this & see marker?
        Grades = {"boss", "2"},

        -- Will this boss menu allow to change the vehicles price from game?
        ChangingPriceEnabled = false,

        -- Where vehicle will spawn?
        SpawnPoints = PlaneSpawn,

        -- Society name
        Society = "planedealer",

        -- Society name
        SocietyLabel = "dealer plane",

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["car"] = PlaneShop,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["pdm_boss_menu_1"] = {
        -- Marker position with interactive menu
        Position = vector3(-27.92, -1108.88, 27.27),

        -- Marker style
        MarkerSpawnerStyle = MarkerSpawnerStyle,

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "dealer",

        -- What grade is allowed to open this & see marker?
        Grades = {"Manager", "4"},

        -- Will this boss menu allow to change the vehicles price from game?
        ChangingPriceEnabled = true,

        -- Where vehicle will spawn?
        SpawnPoints = PDMSpawn,

        -- Society name
        Society = "dealer",

        -- Society name
        SocietyLabel = "dealer",

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["car"] = PDMCamera,
        },
    },
    -----------
    -----------
}