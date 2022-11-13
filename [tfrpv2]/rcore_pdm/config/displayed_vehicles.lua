local PDMCamera = {
    vehiclePosition = vector3(-47.6304, -1092.0863, 27.3023),
    vehicleRotation = 164.0,
    cameraPosition = vector3(-41.1731, -1094.6816, 27.2744),

    cameraFov = 60.0,
}

local PlaneShop = {
    vehiclePosition = vector3(-971.32, -2980.02, 13.95),
    vehicleRotation = 129.0,
    cameraPosition = vector3(-984.3, -2972.55, 16.5),
    cameraFov = 60.0,
}

Config.DisplayVehicles = {
    {
        -- name of the job
        Job = "planedealer",

        -- This will lock the display vehicle change option to listed grades only.
        --        Grades = {
        --            ["boss"] = true,
        --            ["other"] = true,
        --        },

        -- Position in the PDM, please keep in mind this position HAS to be in the middle of the thing,
        -- so all vehicles can
        -- spawn and render.
        Position = vector3(-971.32, -2980.02, 13.95),

        -- Do not change.
        Render = false,

        -- camera
        cam = {
            ["car"] = PlaneShop,
        },
        vehicles = {
            [1] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-961.55, -2965.18, 14.59),
                heading = 129.11,
            },
            [2] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-943.59, -2974.92, 14.59),
                heading = 129.11,
            },
            [3] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-962.03, -3006.62, 14.59),
                heading = 346.28,
            },
            [4] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-979.29, -2996.84, 14.59),
                heading = 346.28,
            },
        },
    },
    --------------
    {
        -- name of the job
        Job = "dealer",

        -- This will lock the display vehicle change option to listed grades only.
        --        Grades = {
        --            ["boss"] = true,
        --            ["other"] = true,
        --        },

        -- Position in the PDM, please keep in mind this position HAS to be in the middle of the thing,
        -- so all vehicles can
        -- spawn and render.
        Position = vector3(-25.1937, -1104.3965, 27.2743),

        -- Do not change.
        Render = false,

        -- camera
        cam = {
            ["car"] = PDMCamera,
        },
        vehicles = {
            [1] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-54.7985, -1096.8636, 27.3023),
                heading = 143.15,
            },
            [2] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-47.6304, -1092.0863, 27.3023),
                heading = 143.15,
            },
            [3] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-49.9255, -1083.7585, 27.3023),
                heading = 143.15,
            },
            [4] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-37.1241, -1093.1284, 27.3023),
                heading = 143.15,
            },
            [5] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-42.3003, -1101.4550, 27.3023),
                heading = 143.15,
            },
        },
    },
    --------------
    --[[
    {
        -- name of the job
        Job = "dealer",

        -- This will lock the display vehicle change option to listed grades only.
        --        Grades = {
        --            ["boss"] = true,
        --            ["other"] = true,
        --        },

        -- Position in the PDM, please keep in mind this position HAS to be in the middle of the thing,
        -- so all vehicles can
        -- spawn and render.
        Position = vector3(-147.04, -1173.01, 25.16),

        -- Blip icon ID
        BlipType = 225,

        -- Do not change.
        Render = false,

        -- camera
        cam = {
            ["car"] = PDMCamera,
        },
        vehicles = {
            -- if the job is same, the vehicle index need to start from the last number
            -- like the previous one.
            [5] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-143.5, -1174.89, 24.79),
                heading = 30.1,
            },
            [6] = {
                -- Dont change these!
                -----------------------
                vehicle = "none",
                category = "",
                -----------------------

                pos = vector3(-148.53, -1174.95, 24.52),
                heading = 340.41,
            },
        },
    },
    --]]
    --------------
}