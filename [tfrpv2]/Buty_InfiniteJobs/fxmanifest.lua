fx_version 'cerulean'
game 'gta5'
author 'ButyCall#8291'

lua54 'yes'


client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

shared_script{
    'config/config.lua',
    'config/jobs.lua',
    'config/translations.lua',
    'config/config_function.lua',
}

ui_page "html/index.html"

files {
    'html/index.html',
    'html/script.js',
    'html/style.css',
    'html/img/*'
}

escrow_ignore {
    'config/config.lua',
    'config/jobs.lua',
    'config/translations.lua',
    'config/config_function.lua',
}
dependency '/assetpacks'