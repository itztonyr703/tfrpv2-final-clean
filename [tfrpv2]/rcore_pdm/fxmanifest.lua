fx_version 'cerulean'
games { 'gta5' }

client_scripts {
    "utils/shared/*.lua",

    "config.lua",
    "config/displayed_vehicles.lua",
    "config/pdm_shops.lua",
    "config/boss_menu_list.lua",
    "config/sell_vehicle.lua",

    "client/anim/*.lua",
    "client/utils/utils.lua",
    "client/utils/blip.lua",

    "client/menu/client.lua",
    "client/menu/events.lua",

    "client/menu/exports/*.lua",
    "client/menu/system/*.lua",
    "client/menu/module/*.lua",

    "client/main.lua",
    "client/client_protected.lua",
    "client/shop_markers.lua",
    "client/boss_menu.lua",
    "client/display_vehicles.lua",
    "client/shop_events.lua",
    "client/rent_vehicle.lua",
    "client/vehicle_rotation.lua",

    "utils/client/*.lua",
    "utils/locales/*.lua",
    "config/vehicledelete.lua",
    "config/blip_list.lua",

    "client/vehicle_sell_marker.lua",

    "utils/screenshot/client.lua",
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "utils/shared/*.lua",

    "config.lua",
    "config/displayed_vehicles.lua",
    "config/sell_vehicle.lua",
    "server_config.lua",
    "config/pdm_shops.lua",

    "config/boss_menu_list.lua",

    "utils/server/*.lua",
    "server/*.lua",

    "utils/screenshot/server.lua",
}

escrow_ignore {
    "utils/shared/*.lua",
    "utils/locales/*.lua",

    "config.lua",
    "config/pdm_shops.lua",
    "config/boss_menu_list.lua",
    "config/blip_list.lua",

    "client/boss_menu.lua",
    "client/main.lua",
    "client/display_vehicles.lua",
    "client/shop_events.lua",
    "client/shop_markers.lua",
    "client/rent_vehicle.lua",
    "client/vehicle_rotation.lua",

    "client/utils/blip.lua",
    "client/utils/utils.lua",

    "client/menu/*.lua",
    "client/menu/system/*.lua",
    "client/menu/module/*.lua",
    "client/menu/exports/*.lua",

    "server/init.lua",
    "server/main.lua",
    "server/mysql_init.lua",
    "server/server.lua",
    "server/payment_method.lua",
    "server/on_action_event.lua",
    "server/sell_vehicle_server.lua",

    "utils/client/*.lua",
    "utils/server/*.lua",
    "config/vehicledelete.lua",
    "config/sell_vehicle.lua",
    "config/displayed_vehicles.lua",

    "client/vehicle_sell_marker.lua",

    "server_config.lua",

    "utils/screenshot/*.lua",
}

files {
    "html/*.html",
    "html/scripts/*.js",
    "html/img/*.jpg",
    "html/css/*.css",
}

lua54 "yes"

ui_page "html/index.html"

dependencies {
    '/server:4752',
}
dependency '/assetpacks'