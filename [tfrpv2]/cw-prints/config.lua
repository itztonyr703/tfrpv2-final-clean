Config = {}

Config.JobIsRequired = true
Config.AllowedJobs = {
    ['whitewidow'] = { doors = 4, print = 4},
}

-- Setup for the shop + interaction area
Config.UseInteractionPoint = true -- set this to false if you don't want to use the stock locations
Config.UseShop = true -- set this to false if you don't want to use the shop entrance/exit

Config.Locations = {
    shopEntranceCoords = vector3(-1335.18, -338.17, 36.69),
    shopExitCoords = vector3(1173.75, -3196.44, -39.01),
    interactionPoint = vector3(1163.63, -3197.35, -37.99)
}

-- Setup for making ALL printer props interactable
Config.UseAllPrinters = false -- set this to true if you want ALL printer props (defined in Config.PrinterProps) to be interactable 
Config.PrinterProps = {
    "prop_printer_01",
    "prop_printer_02",
    "v_res_printer"
}

-- Setup for spawning printers
Config.UsePrinterSpawns = false -- set this to true if you want to spawn specific printers that are interactable
Config.PrinterSpawns = {
    { prop = "prop_printer_01", coords = vector4(1157.08, -3190.4, -38.16, 85.72)},
    { prop = "prop_printer_02", coords = vector4(1157.08, -3191.4, -38.16, 81.72)},
    { prop = "v_res_printer", coords = vector4(1157.08, -3192.1, -38.16, 82.72)},
}


-- General Setup
Config.Texts = {
    cardMakerHeader = "Business Card Maker 2000 (©1987)",
    cardMakerSubmit = "Create"
}

Config.Items = {
    { value = "business_card", text = "Business Card" },
    { value = "coupon", text = "Coupon" },
    { value = "flyer", text = "Flyer" },
    { value = "menu", text = "Menu" },
}

Config.Cost = 0
