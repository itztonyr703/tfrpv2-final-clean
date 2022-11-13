print("^2Jim^7-^2ClosedShops ^2v^41^7.^47^7 ^7- ^2ClosedShops Script by ^1Jimathy^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/jixelpatterns

Config = {
	Debug = false, -- Debugging mode
	Lan = "en", -- Set locale file here
	img = "qb-inventory/html/images/", -- Set this to get correct "buying menu" images
	Notify = "qb",

	Renewed = true, -- If "false" use qb-management, if "true" use Renewed-Banking

	qsinventory = false, -- Enable support for qs-inventory stashes

	Shops = {
		['beanmachine'] = {
			enable = true,
			location = vector4(114.78, -1035.18, 29.34, 70.0),
			ped = `A_F_Y_Hipster_02`,
			--prop = `prop_vend_coffe_01`,
			itemlist = {
				--Drinks
				['highnoon'] = 300,
				['speedball'] = 300,
				['gunkaccino'] = 300,
				['bratte'] = 300,
				['flusher'] = 300,
				['ecocoffee'] = 300,
				['caffeagra'] = 300,
				['bigfruit'] = 250,
				['watermelon'] = 250,
				['cheesecake'] = 200,
				['donut'] = 200,
			},
		},
		['burgershot'] = {
			enable = true,
			location = vector4(-1187.05, -876.65, 13.75, 32.0),
			ped = `U_M_Y_BurgerDrug_01`,
			--prop = `prop_vend_snak_01`,
			itemlist = {
				--Drinks
				['bscoke'] = 250,
				['milkshake'] = 250,
				['bscoffee'] = 250,
				--Food
				['heartstopper'] = 300,
				['shotfries'] = 250,
				['shotnuggets'] = 250,
				['shotrings'] = 250,
				['moneyshot'] = 300,
				['meatfree'] = 300,
				['bleeder'] = 300,
				['torpedo'] = 300,
				['cheesewrap'] = 300,
				['chickenwrap'] = 300,
				['rimjob'] = 250,
				['creampie'] = 250,
			},
		},
		['catcafe'] = {
			enable = false,
			location = vector4(-579.49, -1070.62, 22.33, 180.0),
			--ped = `A_F_Y_Hipster_02`,
			prop = `prop_vend_snak_01`,
			NoLimitStash = true,
			itemlist = {
				--Drinks
				['bobatea'] = 100,
				['bbobatea'] = 100,
				['gbobatea'] = 100,
				['obobatea'] = 100,
				['pbobatea'] = 100,
				['mocha'] = 100,
				--Food
				['bmochi'] = 100,
				['gmochi'] = 100,
				['omochi'] = 100,
				['pmochi'] = 100,
				['riceball'] = 100,
				['bento'] = 100,
				['purrito'] = 100,
				['nekocookie'] = 100,
				['nekodonut'] = 100,
				['cake'] = 100,
				['cakepop'] = 100,
				['pancake'] = 100,
				['pizza'] = 100,
				['miso'] = 100,
				['ramen'] = 100,
				['noodlebowl'] = 100,
			},
		},
		['henhouse'] = {
			enable = false,
			location = vector4(-296.48, 6259.31, 31.49, 255.0),
			--ped = `S_M_M_AmmuCountry`,
			prop = `prop_vend_snak_01`,
			itemlist = {
				--Drinks
				['tillie'] = 100,
				['b52'] = 100,
				['brussian'] = 100,
				['bkamikaze'] = 100,
				['cappucc'] = 100,
				['ccookie'] = 100,
				['iflag'] = 100,
				['kamikaze'] = 100,
				['sbullet'] = 100,
				['voodoo'] = 100,
				['woowoo'] = 100,
				--Food
				['friedpick'] = 100,
				['maccheese'] = 100,
				['bplate'] = 100,
				['cplate'] = 100,
				['splate'] = 100,
				['rplate'] = 100,
				['nplate'] = 100,
				['wings'] = 100,
			},
		},
		['pizzathis'] = {
			enable = true,
			location = vector4(-1189.56, -1416.98, 4.38, 137.41),
			ped = `S_M_Y_Chef_01`,
			--prop = `prop_vend_snak_01`,
			itemlist = {
				--Food
				['capricciosabox'] = 300,
				['diavolabox'] = 300,
				['marinarabox'] = 300,
				['margheritabox'] = 300,
				['prosciuttiobox'] = 300,
				['vegetarianabox'] = 300,
				['bolognese'] = 300,
				['calamari'] = 300,
				['meatball'] = 300,
				['alla'] = 300,
				['pescatore'] = 300,
			},
		},
		['popsdiner'] = {
			enable = false,
			location = vector4(1577.99, 6458.41, 25.32, 157.0),
			--ped = `S_M_Y_Chef_01`,
			prop = `prop_vend_snak_01`,
			itemlist = {
				--Food
				['baconeggs'] = 100,
				['bltsandwich'] = 100,
				['cheeseburger'] = 100,
				['cheesesandwich'] = 100,
				['eggsandwich'] = 100,
				['grilledwrap'] = 100,
				['hamburger'] = 100,
				['hamcheesesandwich'] = 100,
				['hamsandwich'] = 100,
				['ranchwrap'] = 100,
				['sausageeggs'] = 100,
				['steakburger'] = 100,
				['toastbacon'] = 100,
				['tunasandwich'] = 100,
				['veggiewrap'] = 100,
			},
		},
		['tequilala'] = {
			enable = false,
			location = vector4(-562.61, 274.47, 83.02, 172.0),
			--ped = `A_F_Y_Hipster_02`,
			prop = `prop_vend_snak_01`,
			itemlist = {
				['b52'] = 100,
				['brussian'] = 100,
				['bkamikaze'] = 100,
				['cappucc'] = 100,
				['ccookie'] = 100,
				['iflag'] = 100,
				['kamikaze'] = 100,
				['sbullet'] = 100,
				['voodoo'] = 100,
				['woowoo'] = 100,
			},
		},
		['vanilla'] = {
			enable = true,
			location = vector4(129.87, -1305.12, 29.22, 216.0),
			ped = `CSB_Stripper_02`,
			--prop = `prop_vend_snak_01`,
			itemlist = {
				--Drinks
				['amarettosour'] = 300,
				['bellini'] = 300,
				['cosmopolitan'] = 300,
				['longisland'] = 300,
				['margarita'] = 300,
				['pinacolada'] = 300,
				['sangria'] = 300,
				['screwdriver'] = 300,
				['strawdaquiri'] = 300,
				['strawmargarita'] = 300,
				--Food
				['vusliders'] = 250,
				['vutacos'] = 250,
				['nplate'] = 250,
				['tots'] = 250,
			},
		},
		['bakery'] = {
			enable = false,
			location = vector4(49.42, -134.08, 55.46, 160.14),
			ped = `S_M_Y_Chef_01`,
			--prop = `prop_vend_snak_01`,
			itemlist = {
				--Drinks
				['milkshake'] = 100,
				['strawberrymilkshake'] = 100,
				['chocolatemilkshake'] = 100,
				--Food
				['tbcake'] = 100,
				['tbchoccake'] = 100,
				['tbbirthdaycake'] = 100,
				['tbcookie'] = 100,
				['tbcupcake'] = 100,
				['tbsweetroll'] = 100,
				['tbdonut'] = 100,
				['tblongjohn'] = 100,
				['tbcroissant'] = 100,
				['tbchoccroiss'] = 100,
			},
		},
	},
}

Loc = {}