name "Jim-Plates"
author "Jimathy"
version "v1.3.2"
description "Plate Changing Script By Jimathy"
fx_version "cerulean"
game "gta5"

client_scripts { 'client.lua' }
server_scripts { 'server.lua', '@oxmysql/lib/MySQL.lua', }
shared_scripts { 'config.lua', }
lua54 'yes'

escrow_ignore { '*.lua*', }
dependency '/assetpacks'