fx_version 'cerulean'
game 'gta5'

description 'cdev-multijob'
version '1.5'
author 'Community Development Team | https://discord.gg/communitydev'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
}

client_scripts {
	'client.lua',
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/ComboZone.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}

ui_page 'html/index.html'

files {
    'html/*.html',
    'html/*.css',
    'html/*.js',
}

lua54 'yes'

escrow_ignore {
    'config.lua', --Configuration file
    'locales/en.lua' -- Language translation File, change to your language file if you have any.
}
dependency '/assetpacks'