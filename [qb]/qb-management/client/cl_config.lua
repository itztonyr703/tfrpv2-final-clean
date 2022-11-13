-- Zones for Menues
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
        vector3(461.45, -986.2, 30.73),
    },
    ['ambulance'] = {
        vector3(335.46, -594.52, 43.28),
    },
	['realestate'] = {
        vector3(-1556.14, -574.71, 108.53),
    },
    ['mechanic'] = {
        vector3(123.65, -3028.33, 7.04),
    },
	['burgershot'] = {
        vector3(-1178.6, -897.01, 13.97),
	},
	['whitewidow'] = {
        vector3(175.76, -258.07, 54.13),
    },
	['billiards'] = {
        vector3(-1579.19, -984.37, 13.11),
	},
}

Config.BossMenuZones = {
    ['police'] = {
        { coords = vector3(461.45, -986.2, 30.73), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 } ,
    },
    ['ambulance'] = {
        { coords = vector3(335.46, -594.52, 43.28), length = 1.2, width = 0.6, heading = 341.0, minZ = 43.13, maxZ = 43.73 },
    },
	['realestate'] = {
        { coords = vector3(-1556.6, -575.78, 108.53), length = 1.0, width = 0.45, heading = 37.0, minZ = 105.13, maxZ = 109.13 },
    },
    ['mechanic'] = {
        { coords = vector3(123.65, -3028.33, 7.04), length = 0.1, width = 0.4, heading = 340.0, minZ = 5.34, maxZ = 7.14 },
    },
	['burgershot'] = {
        { coords = vector3(-1178.6, -897.01, 13.97), length = 0.1, width = 0.4, heading = 315.0, minZ = 10.07, maxZ = 14.07 },
    },
	['whitewidow'] = {
        { coords = vector3(373.57, -823.88, 29.3), length = 0.5, width = 0.5, heading = 0.0, minZ = 25.5, maxZ = 29.5 },
	},
	['billiards'] = {
        { coords = vector3(-1578.73, -983.9, 13.11), length = 0.6, width = 0.4, heading = 230.0, minZ = 9.11, maxZ = 13.11 },
	},
	['whitewidow'] = {
        { coords = vector3(175.76, -258.07, 54.13), length = 5.0, width = 1.0, heading = 5.00, minZ = 50.73, maxZ = 54.73 },
	},
}

Config.GangMenus = {
    ['triads'] = {
        vector3(1393.32, 1160.21, 114.34),
    },
	['jokersmc'] = {
        vector3(1393.32, 1160.21, 114.34),
    },
}

Config.GangMenuZones = {
   ['triads'] = {
        { coords = vector3(-646.54, -1243.03, 11.55), length = 0.6, width = 0.6, heading = 15, minZ = 7.95, maxZ = 11.95 },
    },
	['jokersmc'] = {
        { coords = vector3(-1192.93, -1179.95, 11.84), length = 0.6, width = 0.6, heading = 0, minZ = 8.04, maxZ = 12.04 },
    },
}