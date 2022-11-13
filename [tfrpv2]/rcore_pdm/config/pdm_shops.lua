local PDMCamera = {
    vehiclePosition = vector3(-47.6304, -1092.0863, 27.3023),
    vehicleRotation = 164.0,
    cameraPosition = vector3(-41.1731, -1094.6816, 27.2744),
    cameraOffsetRotation = vector3(-5.0, 0.0, 0.0),
    cameraFov = 60.0,
}

local PlaneShop = {
    vehiclePosition = vector3(-971.32, -2980.02, 13.95),
    vehicleRotation = 129.0,
    cameraPosition = vector3(-984.3, -2972.55, 16.5),
    cameraOffsetRotation = vector3(0, 0, 0),
    cameraFov = 60.0,
}

local PDMSpawn = {
    { pos = vector3(-10.7249, -1085.3984, 27.0472), heading = 69.0 },
}

local PlaneSpawn = {
    { pos = vector3(-964.51, -3163.42, 13.94), heading = 56.0 },
}

Config.ShopList = {

    -- must be uniq name
    ["plane_shop_4"] = {
        -- what type it is?
        Type = "plane",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = false,

        -- What text will the 3D text have?
        FloatText = "",

        -- a custom enter message
        --CustomEnterMessage = "Hit ~INPUT_CONTEXT~ to view the bike shop!",

        -- Marker position with interactive menu
        Position = vector3(-975.19, -2987.52, 13.95),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 7,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "planedealer",

        -- Society name
        Society = "society_planedealer",

        -- Where vehicle will spawn?
        SpawnPoints = PlaneSpawn,

        -- This will lock the marker to be visible and functional for only one job
        -- RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be blocked in this particual shop?
        --BlockedVehiclesToTestDrive = {
        -- GetHashKey("sultan"),
        --},

        -- What vehicles will be whitelisted in this particual shop?
        --WhitelistedVehiclesToTestDrive = {},

        -- this will block every vehicle in the category
        BlockedVehiclesToDriveCategories = { "heli", "small_plane" },

        -- This will block categories with name "6" and "2", the rest will be displayed.
        --BlackListedCategories = {
        --"motorcycles", "super"
        --},

        -- This will only allow to display category "6" and "2" nothing else will be displayed
        --CategoriesAllowed = {
        --"motorcycles",
        --},

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["plane"] = PlaneShop,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["plane_shop_3"] = {
        -- what type it is?
        Type = "plane",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = false,

        -- What text will the 3D text have?
        FloatText = "",

        -- a custom enter message
        --CustomEnterMessage = "Hit ~INPUT_CONTEXT~ to view the bike shop!",

        -- Marker position with interactive menu
        Position = vector3(-957.65, -2997.97, 13.95),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 7,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "planedealer",

        -- Society name
        Society = "society_planedealer",

        -- Where vehicle will spawn?
        SpawnPoints = PlaneSpawn,

        -- This will lock the marker to be visible and functional for only one job
        -- RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be blocked in this particual shop?
        --BlockedVehiclesToTestDrive = {
        -- GetHashKey("sultan"),
        --},

        -- What vehicles will be whitelisted in this particual shop?
        --WhitelistedVehiclesToTestDrive = {},

        -- this will block every vehicle in the category
        BlockedVehiclesToDriveCategories = { "heli", "small_plane" },

        -- This will block categories with name "6" and "2", the rest will be displayed.
        --BlackListedCategories = {
        --"motorcycles", "super"
        --},

        -- This will only allow to display category "6" and "2" nothing else will be displayed
        --CategoriesAllowed = {
        --"motorcycles",
        --},

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["plane"] = PlaneShop,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["plane_shop_2"] = {
        -- what type it is?
        Type = "plane",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = false,

        -- What text will the 3D text have?
        FloatText = "",

        -- a custom enter message
        --CustomEnterMessage = "Hit ~INPUT_CONTEXT~ to view the bike shop!",

        -- Marker position with interactive menu
        Position = vector3(-948.48, -2984.41, 13.95),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 7,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "planedealer",

        -- Society name
        Society = "society_planedealer",

        -- Where vehicle will spawn?
        SpawnPoints = PlaneSpawn,

        -- This will lock the marker to be visible and functional for only one job
        -- RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be whitelisted in this particual shop?
        --WhitelistedVehiclesToTestDrive = {},

        -- this will block every vehicle in the category
        BlockedVehiclesToDriveCategories = { "heli", "small_plane" },

        -- this will block every vehicle in the category
        --BlockedVehiclesToDriveCategories = {
        --"motorcycles", "super"
        --},

        -- This will block categories with name "6" and "2", the rest will be displayed.
        --BlackListedCategories = {
        --"motorcycles", "super"
        --},

        -- This will only allow to display category "6" and "2" nothing else will be displayed
        --CategoriesAllowed = {
        --"motorcycles",
        --},

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["plane"] = PlaneShop,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["plane_shop_1"] = {
        -- what type it is?
        Type = "plane",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = false,

        -- What text will the 3D text have?
        FloatText = "🛵\n\n   bikes + motobikes",

        -- a custom enter message
        --CustomEnterMessage = "Hit ~INPUT_CONTEXT~ to view the bike shop!",

        -- Marker position with interactive menu
        Position = vector3(-966.48, -2974.41, 13.95),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 7,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "planedealer",

        -- Society name
        Society = "society_planedealer",

        -- Where vehicle will spawn?
        SpawnPoints = PlaneSpawn,

        -- This will lock the marker to be visible and functional for only one job
        -- RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be blocked in this particual shop?
        --BlockedVehiclesToTestDrive = {
        -- GetHashKey("sultan"),
        --},

        -- What vehicles will be whitelisted in this particual shop?
        WhitelistedVehiclesToTestDrive = {},

        -- What vehicles will be whitelisted in this particual shop?
        --WhitelistedVehiclesToTestDrive = {},

        -- this will block every vehicle in the category
        BlockedVehiclesToDriveCategories = { "heli", "small_plane" },

        -- This will only allow to display category "6" and "2" nothing else will be displayed
        --CategoriesAllowed = {
        --"motorcycles",
        --},

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["plane"] = PlaneShop,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["pdm_shop_1"] = {
        -- what type it is?
        Type = "car",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = true,

        -- What text will the 3D text have?
        FloatText = "🛵\n\n   bikes + motobikes",

        -- a custom enter message
        CustomEnterMessage = "Hit ~INPUT_CONTEXT~ to view the bike shop!",

        -- Marker position with interactive menu
        Position = vector3(-51.3436, -1094.7834, 27.2744),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 37,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 247, g = 113, b = 104, a = 125 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "dealer",

        -- Society name
        Society = "society_dealer",

        -- Where vehicle will spawn?
        SpawnPoints = PDMSpawn,

        -- This will lock the marker to be visible and functional for only one job
        -- RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be blocked in this particual shop?
        --BlockedVehiclesToTestDrive = {
        -- GetHashKey("sultan"),
        --},

        -- What vehicles will be whitelisted in this particual shop?
        --WhitelistedVehiclesToTestDrive = {
        -- GetHashKey("sultan"),
        --},

        -- this will block every vehicle in the category
        --BlockedVehiclesToDriveCategories = {
        --"motorcycles", "super"
        --},

        -- This will block categories with name "6" and "2", the rest will be displayed.
        --BlackListedCategories = {
        --"motorcycles", "super"
        --},

        -- This will only allow to display category "6" and "2" nothing else will be displayed
        CategoriesAllowed = {
            "motorcycles",
        },

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["car"] = PDMCamera,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["pdm_shop_2"] = {
        -- what type it is?
        Type = "car",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = true,

        -- What text will the 3D text have?
        FloatText = "🏎️\n\n   fast vehicles",

        -- a custom enter message
        CustomEnterMessage = "Hit ~INPUT_CONTEXT~ to open vehicle with really fast and furious vehicles!",

        -- Marker position with interactive menu
        Position = vector3(-46.8631, -1095.9652, 27.2744),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 31,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 167, g = 189, b = 250, a = 200 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "dealer",

        -- Society name
        Society = "society_dealer",

        -- Where vehicle will spawn?
        SpawnPoints = PDMSpawn,

        -- This will lock the marker to be visible and functional for only one job
        -- RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be blocked in this particual shop?
        BlockedVehiclesToTestDrive = {-- GetHashKey("sultan"),
        },

        -- What vehicles will be blocked in this particual shop?
        WhitelistedVehiclesToTestDrive = {-- GetHashKey("sultan"),
        },

        -- this will block every vehicle in the category
        BlockedVehiclesToDriveCategories = {--"motorcycles", "super"
        },

        -- This will block categories with name "6" and "2", the rest will be displayed.
        --BlackListedCategories = {
        --"motorcycles", "super"
        --},

        -- This will only allow to display category "6" and "2" nothing else will be displayed
        CategoriesAllowed = {
            "muscle", "sports", "sportsclassics", "super"
        },

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["car"] = PDMCamera,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["pdm_shop_3"] = {
        -- what type it is?
        Type = "car",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = true,

        -- What text will the 3D text have?
        FloatText = "🚃\n\n   big cars!",

        -- a custom enter message
        CustomEnterMessage = "Hit ~INPUT_CONTEXT~ best vehicle shop for kidnap... i mean for moving furniture!",

        -- Marker position with interactive menu
        Position = vector3(-51.2505, -1087.4174, 27.2744),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 39,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 125, g = 227, b = 0, a = 200 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "dealer",

        -- Society name
        Society = "society_dealer",

        -- Where vehicle will spawn?
        SpawnPoints = PDMSpawn,

        -- This will lock the marker to be visible and functional for only one job
        -- RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be blocked in this particual shop?
        BlockedVehiclesToTestDrive = {-- GetHashKey("sultan"),
        },

        -- What vehicles will be blocked in this particual shop?
        WhitelistedVehiclesToTestDrive = {-- GetHashKey("sultan"),
        },

        -- this will block every vehicle in the category
        BlockedVehiclesToDriveCategories = {--"0",
        },

        -- This will block categories with name "6" and "2", the rest will be displayed.
        --BlackListedCategories = {
        --"motorcycles", "super"
        --},

        -- This will only allow to display category "6" and "2" nothing else will be displayed
        CategoriesAllowed = {
            "suvs", "vans"
        },

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["car"] = PDMCamera,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["pdm_shop_4"] = {
        -- what type it is?
        Type = "car",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = true,

        -- What text will the 3D text have?
        FloatText = "🚗\n\n   other cars",

        -- a custom enter message
        CustomEnterMessage = "Hit ~INPUT_CONTEXT~ to open boring cheap vehicles",

        -- Marker position with interactive menu
        Position = vector3(-38.5328, -1100.0435, 27.2744),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 36,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 49, g = 224, b = 111, a = 125 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "dealer",

        -- Society name
        Society = "society_dealer",

        -- Where vehicle will spawn?
        SpawnPoints = PDMSpawn,

        -- This will lock the marker to be visible and functional for only one job
        -- RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be blocked in this particual shop?
        BlockedVehiclesToTestDrive = {-- GetHashKey("sultan"),
        },

        -- What vehicles will be blocked in this particual shop?
        WhitelistedVehiclesToTestDrive = {-- GetHashKey("sultan"),
        },

        -- this will block every vehicle in the category
        BlockedVehiclesToDriveCategories = {--"0",
        },

        -- This will block categories with name "6" and "2", the rest will be displayed.
        --BlackListedCategories = {
        --"motorcycles", "super"
        --},

        -- This will only allow to display category "6" and "2" nothing else will be displayed
        CategoriesAllowed = {
            "sedans", "offroad", "coupes", "compacts"
        },

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["car"] = PDMCamera,
        },
    },
    -----------
    -----------
    -- must be uniq name
    ["pdm_shop_5"] = {
        -- what type it is?
        Type = "car",

        -- do not change
        Busy = false,

        -- shall we enable 3D text?
        Enable3DText = true,

        -- What text will the 3D text have?
        FloatText = "🚗\n\n   All in",

        -- a custom enter message
        CustomEnterMessage = "Hit ~INPUT_CONTEXT~ to open vehicle shop",

        -- Marker position with interactive menu
        Position = vector3(-40.7393, -1094.6791, 27.2744),

        -- Marker style
        MarkerSpawnerStyle = {
            style = 36,
            size = vector3(1.0, 1.0, 1.0),
            color = { r = 49, g = 224, b = 111, a = 125 },
            rotate = true,
            face = false,
        },

        -- This will select only surten vehicles, if left nil everything will break.
        Job = "dealer",

        -- Society name
        Society = "society_dealer",

        -- Where vehicle will spawn?
        SpawnPoints = PDMSpawn,

        -- This will lock the marker to be visible and functional for only one job
        --RenderJob = "dealer",

        -- Custom message for marker enter
        --CustomEnterMessage = "Damn a custom message!",

        -- What vehicles will be blocked in this particual shop?
        BlockedVehiclesToTestDrive = {-- GetHashKey("sultan"),
        },

        -- What vehicles will be blocked in this particual shop?
        WhitelistedVehiclesToTestDrive = {-- GetHashKey("sultan"),
        },

        -- this will block every vehicle in the category
        BlockedVehiclesToDriveCategories = {--"0",
        },

        -- This will block categories with name "6" and "2", the rest will be displayed.
        --BlackListedCategories = {
        --"motorcycles", "super"
        --},

        -- This will only allow to display category "6" and "2" nothing else will be displayed
--        CategoriesAllowed = {
--            "sedans", "offroad", "coupes", "compacts"
--        },

        -- A custom camera position?
        CameraPositions = {
            -- same ID's like from "Config.CameraPosition"
            ["car"] = PDMCamera,
        },
    },
    -----------
    -----------
}