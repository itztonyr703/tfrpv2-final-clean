fx_version 'cerulean'
game 'gta5'

author 'Kallock - The Goodlife RP Server'
version '1.0.0'

client_script 'client/main.lua'

server_script 'server/main.lua'

shared_scripts {
	'shared.lua'
}

dependencies {
	"qb-target",
	"qb-ambulancejob"
}

escrow_ignore {
    'client/*.lua',
    'server/*.lua',
	'stream/*',
    'shared.lua',
}

lua54 'yes'
dependency '/assetpacks'

