fx_version 'cerulean'
game 'gta5'

author 'FjamZoo#0001 & uShifty#1733'
description 'Renewed Fishing'
version '1.0.0'
 
lua54 'yes'
 
client_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
	"client/functions.lua",
	"client/main.lua",
	'client/cl_main.lua'
}

server_scripts {
	"server/*.lua"
}

shared_scripts {
	'@qb-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
	"config.lua",
}

escrow_ignore {
	'config.lua',
	'locales/*.lua', -- Change to the language you want
	'server/open.lua',
	'client/cl_main.lua',
	'read/*'
}


dependency '/assetpacks'