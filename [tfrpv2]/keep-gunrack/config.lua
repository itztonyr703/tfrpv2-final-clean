Config = Config or {}

local whitelist = {
     models = {
          -- if a vehicle model exist in models script will skip class check!
          -- 'fiat600',
		  'um14charger',
		  'um18charger',
		  'um18taurus',
		  'um19tahoe',
		  'um20explorer',
		  'v11vic',
		  'v12caprice',
		  'v13explorer',
		  'v14charger',
		  'v14ram',
		  'v14tahoe',
		  'v16explorer',
		  'v18charger',
		  'v18taurus',
		  'v19tahoe',
		  'v21durango',
		  'vf150',
		  'valorharley',
		  'speedchargerrb',
		  'speedmustangrb',
		  'speedcamarorb',
		  'speeddemonrb',
		  'sahpheli',
     },

     classes = {
          -- https://docs.fivem.net/natives/?_0x29439776AAA00A62
          18 -- emergency
     }
}

Config.gunrack = {
     keybind = 'y',
     install_duration = 3, --sec
     opening_duration = 3, --sec
     while_open_animation = true, -- while inventory screen is on
     slots = 5,
     size = 50000,
     whitelist = whitelist
}
