name "Jim-ClosedShops"
author "Jimathy"
version "v1.6.1"
description "Closed Shop Script By Jimathy"
fx_version "cerulean"
game "gta5"

dependencies { 'qb-input', 'qb-menu', 'qb-target' }

client_scripts { 'client.lua' }
server_scripts { '@oxmysql/lib/MySQL.lua', 'server.lua', }
shared_scripts { 'config.lua', 'functions.lua'}

lua54 'yes'

escrow_ignore { '*.lua*', }
dependency '/assetpacks'