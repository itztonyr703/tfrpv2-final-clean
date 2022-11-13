name "Jim-BurgerShot"
author "Jimathy"
version "v2.3.6"
description "BurgerShot Script By Jimathy"
fx_version "cerulean"
game "gta5"

shared_scripts { 'config.lua', 'locales/*.lua',	'shared/*.lua' }
server_scripts { 'server/*.lua' }
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
	'client/*.lua'
}

lua54 'yes'

escrow_ignore {
	'*.lua',
	'client/*.lua',
	'server/*.lua',
    'locales/*.lua',
}
dependency '/assetpacks'