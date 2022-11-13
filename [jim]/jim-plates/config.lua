print("^2Jim^7-^2Plates v^41^7.^43^7.^42 ^7- ^2Plate Changing Script by ^1Jimathy^7")

Config = {
	Debug = false,

	JobRoles = {
		--["Job Name"] = Grade,
		["police"] = 1,
		["mechanic"] = 0,
	},

	Command = "setplate", -- The default command for chaing plates "setplate".
	ComRequireJob = true, -- Set "true" if you want the command to require a job role
	UseCommand = true, -- Set "true" if you want to use "/" commands.

	CharacterReq = false, -- Set "true" if you have issues with other scripts not working correctly after
							-- This limits the plates to 8 letters as other/older scripts may not support less than 8
							-- For example some garage/vehiclekey scripts may break when spawning a car because its retrieving the licence wrong

	UseItem = false, -- Set "true" if you want to use the plate item.
	ItemRequireJob = true, -- Set "true" if you want the item to require a job role
	ItemRemoval = false, -- Set "true" if you want the plate item to be removed on use.

	Filter = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ" -- Allowed letters/numbers. Symbols don't work
													-- Don't touch unless you wan't to limit certain letters
}