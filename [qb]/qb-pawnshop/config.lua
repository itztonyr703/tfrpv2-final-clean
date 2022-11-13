Config = {}

Config.PawnLocation = {
    coords = vector3(411.79, 315.82, 103.02),
    length = 2.4,
    width = 1.0,
    heading = 296,
    debugPoly = false,
    minZ = 100.62,
    maxZ = 104.62,
    distance = 2.0
}

Config.BankMoney = true -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = false

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems = {
    [1] = {
        item = 'goldchain',
        price = math.random(50,100)
    },
    [2] = {
        item = 'diamond_ring',
        price = math.random(50,100)
    },
    [3] = {
        item = 'rolex',
        price = math.random(50,100)
    },
    [4] = {
        item = '10kgoldchain',
        price = math.random(50,100)
    },
    [5] = {
        item = 'tablet',
        price = math.random(50,100)
    },
    [6] = {
        item = 'iphone',
        price = math.random(50,100)
    },
    [7] = {
        item = 'samsungphone',
        price = math.random(50,100)
    },
    [8] = {
        item = 'laptop',
        price = math.random(50,100)
	    },
    [9] = {
        item = 'annabelle_pop',
        price = math.random(5,10)
    },
    [10] = {
        item = 'beetlejuice_pop',
        price = math.random(5,10)
    },
    [11] = {
        item = 'kobe_pop',
        price = math.random(5,10)
    },
    [12] = {
        item = 'lebronjames_pop',
        price = math.random(5,10)
	 },
    [8] = {
        item = 'splinter',
        price = math.random(5,10)
	    },
    [9] = {
        item = 'donatello',
        price = math.random(5,10)
    },
    [10] = {
        item = 'pepa',
        price = math.random(5,10)
    },
    [11] = {
        item = 'cable_box',
        price = math.random(5,10)
    },
    [12] = {
        item = 'dvd_player',
        price = math.random(5,10)
    },
    [13] = {
        item = 'projector',
        price = math.random(15,25)
    },
    [14] = {
        item = 'microwave',
        price = math.random(10,20)
    },
    [15] = {
        item = 'toaster',
        price = math.random(10,20)
    },
    [16] = {
        item = 'blender',
        price = math.random(10,20)
    },
    [17] = {
        item = 'ipad',
        price = math.random(20,50)
    },
    [18] = {
        item = 'ipod',
        price = math.random(15,35)
    },
    [19] = {
        item = 'mp3_player',
        price = math.random(5,25)
    },
    [20] = {
        item = 'e_reader',
        price = math.random(5,10)
    },
    [21] = {
        item = 'sony_4k_camera',
        price = math.random(30,65)
    },
    [22] = {
        item = 'nikon_d90',
        price = math.random(30,70)
    },
    [23] = {
        item = 'jbl_bluetooth',
        price = math.random(15,28)
    },
    [24] = {
        item = 'ts_performer_600',
        price = math.random(75,98)
    },
    [25] = {
        item = 'subwoofer',
        price = math.random(25,60)
    },
    [26] = {
        item = 'salt1',
        price = math.random(5,10)
	},
    [27] = {
        item = 'icecube',
        price = math.random(5,10)
	},
    [28] = {
        item = 'tupac2',
        price = math.random(5,10)
	},
    [29] = {
        item = 'fluorescent_tube',
        price = math.random(5,10)
    }	
}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    [1] = {
        item = 'goldchain',
        rewards = {
            [1] = {
                item = 'goldbar',
                amount = 2
            }
        },
        meltTime = 0.15
    },
    [2] = {
        item = 'diamond_ring',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [3] = {
        item = 'rolex',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            },
            [3] = {
                item = 'electronickit',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [4] = {
        item = '10kgoldchain',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 5
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
	[5] = {
        item = 'tech_trash',
        rewards = {
            [1] = {
                item = 'steel',
                amount = 5
            }
        },
        meltTime = 0.15
	},
}
