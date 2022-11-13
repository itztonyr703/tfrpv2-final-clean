print("^2Jim^7-^2Recycle v^42^7.^45 ^7- ^2Recycling Script by ^1Jimathy^7")

Config = {
	Lan = "en",
	Debug = false, -- Toggle Debug Mode
	Blips = true, -- Enable Blips?
	BlipNamer = false, -- Enable to Name Blips different things, disable if you already have too many blips as this will group them together
	Pedspawn = true, -- Do you want to spawn peds for main locations?
	img = "qb-inventory/html/images/", -- Set this to your inventory
	JimMenu = true, -- If using updated qb-menu icons, set this true
	JobRole = nil, -- Whats the job role you want to use this? "nil" for none
	EnableOpeningHours =false, -- Enable opening hours? If disabled you can always open the pawnshop.
	OpenHour = 9, -- From what hour should the pawnshop be open?
	CloseHour = 21, -- From what hour should the pawnshop be closed?
	PayAtDoor = nil, -- Set to nil stop turn this off, set to a number to enable

	useQBLock = false, -- Enable to use qb-lock instead of qb-skillbar when searching

	OutsideTele = vector4(747.13, -1401.0, 26.55, 186.18),
	InsideTele = vector4(993.35, -3097.52, -39.0, 185.62),

	Locations =  {
		['Recycle'] = {
			{ name = "Recycle Center", coords = vector4(744.37, -1402.54, 26.56, 261.42), blipTrue = true, sprite = 365, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
		},
		['Trade'] ={
			{ name = "Recyclable Trader", coords = vector4(996.73, -3099.0, -39.0, 267.59), blipTrue = false, sprite = 365, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
		},
		['BottleBanks'] = {
			{ name = "Bottle Bank", coords = vector4(757.06, -1399.68, 26.57 , 178.1), blipTrue = false, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
			{ name = "Bottle Bank", coords = vector4(84.01, -220.32, 54.64 , 337.89), blipTrue = false, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
			{ name = "Bottle Bank", coords = vector4(31.88, -1315.58, 29.52 , 357.19), blipTrue = false, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
			{ name = "Bottle Bank", coords = vector4(29.08, -1769.99, 29.61 , 50.0), blipTrue = false, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
			{ name = "Bottle Bank", coords = vector4(394.08, -877.48, 29.35 , 310.12), blipTrue = false, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
			{ name = "Bottle Bank", coords = vector4(-1267.97, -812.08, 17.11 , 128.12), blipTrue = false, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
		},
	},
	Prices = {
		['copper'] = 45,
		['plastic'] = 35,
		['metalscrap'] = 35,
		['steel'] = 45,
		['glass'] = 35,
		['iron'] = 45,
		['rubber'] = 35,
		['aluminum'] = 45,
		['bottle'] = 20,
		['can'] = 20,
		['tech_trash'] = 45,
		['cloth'] = 20,
	},
	TradeTable = {
		"copper",
		"plastic",
		"metalscrap",
		"steel",
		"glass",
		"iron",
		"rubber",
		"aluminum",
		"bottle",
		"can",
		"tech_trash",
		"cloth",
		"copper",
		"plastic",
		"metalscrap",
		"steel",
		"glass",
		"iron",
		"rubber",
		"aluminum",
		"bottle",
		"can",
		"tech_trash",
		"cloth",
		"copper",
		"plastic",
		"metalscrap",
		"steel",
		"glass",
		"iron",
		"rubber",
		"aluminum",
		"bottle",
		"can",
		"tech_trash",
		"cloth",
	},
	DumpItems = {
		"lockpick",
		"can",
		"bottle",
		"snikkel_candy",
		"rubber",
		"plastic",
		"tech_trash",
		"cable_box",
		"dvd_player",
		"projector",
		"fluorescent_tube",
		"microwave",
	 	"toaster",
		"blender",
		"ipad",
		"ipod",
		"mp3_player",
		"e_reader",
		"sony_4k_camera",
		"nikon_d90",
		"ts_performer_600",
		"subwoofer",
		"jbl_bluetooth",
	},
	ScrapItems = {
		"steel",
		"copper",
		"iron",
		"glass",
		"bottle",
		"can",
		"tech_trash",
		"cloth",
	},
	RecycleAmounts = {
		recycleMin = 10,
		recycleMax = 25,

		tenMin = 10,
		tenMax = 18,

		hundMin = 19,
		hundMax = 24,

		thouMin = 25,
		thouMax = 30,
	}
}

Loc = {}
