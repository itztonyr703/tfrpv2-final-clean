Thank you for your purchase <3 I hope you have fun with this script and that it brings jobs and RP to your server

If you need support I now have a discord available, it helps me keep track of issues and give better support.

https://discord.gg/xKgQZ6wZvS

-------------------------------------------------------------------------------------------------
									INFORMATION
-------------------------------------------------------------------------------------------------
This script was built around qb-garages and a recent version of qb-core

The way this script works is that it essentially changes the owner(citizenID) of the vehicle in the player_vehicles database
The trunk and glovebox stashes are then renamed to match the new plate of the vehicle

Sometimes there are issues with other/older scripts
Setting Config.CharacterReq to true limits the plates to 8 characters and stops issues

This information is taken from my discord:

This is an awkward one and I hate to pass the blame.
When the plates are changed, they change in the database and then change the physical plates of the car.

If you have a plate with less than 8 letters on this can cause issues with other scripts as when scripts get plate info it sees it as: `__TEST__`

When needs to be done is an event needs to be added above the function that is being called and failing to get the correct plate:
```lua
function trim(value)
    if not value then return nil end
    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
end
```

Then in the event where it "most likely" says GetNumberPlateText(plate)
This needs to be changed to trim(GetNumberPlateText(plate))

This will then trim the spaces from the text it retrieves making it `TEST` instead of `__TEST__`

-------------------------------------------------------------------------------------------------
									INSTALLATION
-------------------------------------------------------------------------------------------------

Add the item images to your inventory script

[qb] > qb-inventory > html > images

-------------------------------------------------------------------------------------------------

THIS GOES IN YOUR ITEMS.LUA IN qb-core:

Under the QBShared.Items = {
	--Cocktails
	["newplate"] = {["name"] = "newplate", ["label"] = "New Plate", ["weight"] = 200, ["type"] = "item", ["image"] = "plate.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "" },

-------------------------------------------------------------------------------------------------

Update v1.3.3:
	- QBCore Item updates

Update v1.3.2:
	- Fix for the item being removed from every player that has one
	- Added Config option to stop plates being under 8 letters, keep plates 8 letters stops the issues with other scripts

Update v1.3.1:
	- Fix the vehicle properties being updated by everyone in the server at once and breaking it

Update v1.3:
	- Fix notifying every player of plate changes
	- Add QB-Log support for completed plate change

Update v1.2:
	- Add debug mode + Debug Messages
	- Fix the plates not updating correctly for other players

Update v1.1:
	- Refactor/Update code
	- Added install.md for changelog and item.lua info
	- Letters `whitelist` filter is now in the config
	- /setplate changes
		- Change `setplate` command in the config
		- Enable or disable the /command
	- Added `newplate` item
		- Config option to change if it requires a job role to be used
		- Config option to change if it is removed on change
	- Optimized loading of database info
