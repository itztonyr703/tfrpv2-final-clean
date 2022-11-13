Config = {}

Config.maximumjob = 5 -- Set the maximum amount of jobs a player can store

Config.command = "jobmenu" -- You can change the command to open the job menu

Config.oxmysql = "new" -- Set this to "new" if you are using the latest version of oxmysql, set to old if you are using the old version of oxmysql.

Config.defaultKeymap = "j" -- Default key map key, players can change the key freely to anything else within their FiveM settings. This is the default key.

Config.cooldownTimer = 1 -- Set the cooldown timer in minutes!

Config.coreName = "qb-core" -- Set the name of the core object. (qb-core)

Config.jobsSetting = {
   ["default"] = {
        color = "#dE685E",
        icon = "fa-solid fa-briefcase",
    },
    ["police"] = {
        color = "#3949a7",
        icon = "fa-solid fa-building-shield",
       zone = {
            coord=vector3(443.92, -983.98, 30.69),
            width=30,
            length = 30,
            debug=false, --Set to true if you want to show green box around of the zone you want in the server for debuging  https://camo.githubusercontent.com/d47d2e9a8da3e209ea4c0fd2fb20a019c51674ad5f62b0b5d4dc389404f999cc/68747470733a2f2f692e696d6775722e636f6d2f496e4b4e616f4c2e6a7067
            zone={},
            isInside=false
        }		
    },
	["ambulance"] = {
        color = "#b284be",
        icon = "fa-solid fa-user-doctor",
    },
    ["realestate"] = {
        color = "#b284be",
        icon = "fa-solid fa-house-building",
    },
    ["taxi"] = {
        color = "#FAB005",
        icon = "fa-solid fa-taxi",
    },
    ["bus"] = {
        color = "#ffe135",
        icon = "fa-solid fa-bus",
    },
    ["dealer"] = {
        color = "#3f7a6e",
        icon = "fa-solid fa-car-mirrors",
    },
    ["mechanic"] = {
        color = "#715ede",
        icon = "fa-solid fa-car-wrench",
    },
    ["judge"] = {
        color = "#b284be",
        icon = "fa-solid fa-scale-balanced",
    },
    ["lawyer"] = {
        color = "#b284be",
        icon = "fa-solid fa-book-section",
    },
    ["reporter"] = {
        color = "#d81504",
        icon = "fa-solid fa-typewriter",
    },
    ["trucker"] = {
        color = "#EFD08E",
        icon = "fa-solid fa-truck-moving",
    },
    ["tow"] = {
        color = "#32cce0",
        icon = "fa-solid fa-truck-tow",
    },
    ["garbage"] = {
        color = "#5ede9e",
        icon = "fa-solid fa-recycle",
    },
    ["hotdog"] = {
        color = "#C57B27",
        icon = "fa-solid fa-hotdog",
	},
    ["beanmachine"] = {
        color = "#3b2f2f",
        icon = "fa-solid fa-mug-hot",
	},
    ["vanilla"] = {
        color = "#4d1a7f",
        icon = "fa-solid fa-alicorn",
    },
    ["burgershot"] = {
        color = "#b31b1b",
        icon = "fa-solid fa-burger",
	},
    ["beamers"] = {
        color = "#1453ae",
        icon = "fa-solid fa-raygun",
    },
	["vapes"] = {
        color = "#ae6f14",
        icon = "fa-solid fa-smoking",
    },
    ["billiards"] = {
        color = "#c41e3a",
        icon = "fa-solid fa-pool-8-ball",
    },
    ["whitewidow"] = {
        color = "#013220",
        icon = "fa-solid fa-cannabis",
    },
    ["judge"] = {
        color = "#b284be",
        icon = "fa-solid fa-gavel",
    },
    ["mayor"] = {
        color = "#b284be",
        icon = "fa-solid fa-user-tie",
	},
    ["lawyer"] = {
        color = "#b284be",
        icon = "fa-solid fa-suitcase",
	},
    ["triads"] = {
        color = "#560319",
        icon = "fa-solid fa-gun",
	},
    ["jokersmc"] = {
        color = "#14a0ae",
        icon = "fa-solid fa-crown",
	},
    ["jestersmc"] = {
        color = "#FE9A2E",
        icon = "fa-solid fa-crown",
	}
}