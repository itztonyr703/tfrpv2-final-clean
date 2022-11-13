print("QB-DJBooth v1.1 by Jimathy")

Config = {
	Lan = "en",
	Debug = false, -- Set to true to show target locations
	Locations = {
		{ -- Vanilla Unicorn DJ Booth
			job = "vanilla", -- Set this to required job role
			enableBooth = true, -- option to disable rather than deleting code
			DefaultVolume = 0.1, -- 0.01 is lowest, 1.0 is max
			radius = 40, -- The radius of the sound from the booth
			coords = vector3(120.0, -1281.72, 29.48), -- Where the booth is located
		},
		{ -- Sisyphus Theater
			job = "public", -- "public" makes it so anyone can add music.
			enableBooth = true,
			DefaultVolume = 0.15,
			radius = 200,
			coords = vector3(206.9, 1181.04, 226.51),
			soundLoc = vector3(212.32, 1155.87, 227.01), -- Add sound origin location if you don't want the music to play from the dj booth
		},
		{ -- GabzTuners Radio Prop
			job = "mechanic",
			enableBooth = true,
			DefaultVolume = 0.05,
			radius = 50,
			coords = vector3(151.98, -3016.97, 7.04),
		},
		{ -- Bean Machine
			job = "beanmachine",
			enableBooth = true,
			DefaultVolume = 0.05,
			radius = 30,
			coords = vector3(122.65, -1046.36, 29.28),
		},
		{ -- Burgershot
			job = "burgershot",
			enableBooth = true,
			DefaultVolume = 0.05,
			radius = 40,
			coords = vector3(-1192.21, -898.6, 13.97),
		},
		{ -- Red Tails
			job = "billiards",
			enableBooth = true,
			DefaultVolume = 0.05,
			radius = 40,
			coords = vector3(-1589.18, -998.63, 13.08),
		},					
		{ -- Yacht
			job = "public",
			enableBooth = true,
			DefaultVolume = 0.05,
			radius = 100,
			coords = vector3(-2085.09, -1014.02, 8.97),
		},			
		{ -- whitewidow
			job = "whitewidow",
			enableBooth = true,
			DefaultVolume = 0.05,
			radius = 30,
			coords = vector3(188.78, -246.88, 54.1),
		},
		{ --triads
			gang = "triads",
			enableBooth = true,
			DefaultVolume = 0.05,
			radius = 30,
			coords = vector3(-650.81, -1240.97, 11.55),
		},
		{ -- Cafe Corettos jim-pizzathis
			job = "coretto",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vector3(-1193.53, -1403.26, 4.47),
		},
		{ -- Tequilala bar (ingame mlo)
			job = "tequilala",
			enableBooth = false,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vector3(-549.68, 282.64, 82.98),
		},
		{ -- Gabz Popsdiner Radio Prop
			job = "public",
			enableBooth = false,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vector3(1595.53, 6453.02, 26.165),
			prop = `prop_boombox_01`
		},
		{ -- Jokers MC
			gang = "jokersmc",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vector3(-1190.79, -1196.43, 6.12),
			soundLoc = vector3(-1184.94, -1184.79, 6.12), -- Add sound origin location if you don't want the music to play from the dj booth
		},
		{ -- postal 6067 AJ
			job = "public",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 40,
			coords = vector3(-64.36, 833.03, 227.75),
		},
		{ -- postal 7055 Nova Joe
			job = "public",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 40,
			coords = vector3(-1174.89, 362.94, 71.69),
		},
	},
}

Loc = {}
