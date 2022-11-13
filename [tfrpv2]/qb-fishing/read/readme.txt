You must have the most up to date QBCore with locale system, and QB-Target 5.0 or greater.


Drop the script into your resources, make sure you have polyzones installed or it will not work.

and then make sure to drop these items into youre shared/items.lua, I just marked the rarest fish as illegal as thats something your Police force could RP it as thats all up to you!

	-- // Fishing Items
	["fishingbait"] 				 	 = {["name"] = "fishingbait",	 					["label"] = "Fish Bait", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "fishingbait.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Your rod is only as good as your bait"},
	["fishingrod"] 		 			 	 = {["name"] = "fishingrod", 						["label"] = "Fishing Rod", 				["weight"] = 10000, 	["type"] = "item", 		["image"] = "fishing_rod.png",		 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A rod used for fishing..."},

	-- // Common Fish
	['fish_bass'] 						 = {['name'] = 'fish_bass', 					  	['label'] = 'Bass', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_bass.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Common Fish of the Sea'},
	['fish_bluefish'] 					 = {['name'] = 'fish_bluefish', 					['label'] = 'Bluefish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_bluefish.png',				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Common Fish of the Sea'},
	['fish_cod'] 						 = {['name'] = 'fish_cod', 				  			['label'] = 'Cod', 						['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_cod.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Common Fish of the Sea'},

	-- // Rare Fish
	['fish_flounder']		 			 = {['name'] = 'fish_flounder',	 					['label'] = 'Flounder', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_flounder.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Rare Fish of the Sea'},
	['fish_mackerel'] 					 = {['name'] = 'fish_mackerel', 					['label'] = 'Mackerel', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_mackerel.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Rare Fish of the Sea'},

	-- // Illegal Fish
	['fish_dolphin'] 					 = {['name'] = 'fish_dolphin', 					['label'] = 'Dolphin', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_dolphin.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Illegal Fish of the Sea'},
	['fish_shark'] 				 		 = {['name'] = 'fish_shark', 					['label'] = 'Baby Shark', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_shark.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Illegal Fish of the Sea'},
	['fish_whale'] 				 		 = {['name'] = 'fish_whale', 					['label'] = 'Baby Whale', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_whale.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Illegal Fish of the Sea'},

