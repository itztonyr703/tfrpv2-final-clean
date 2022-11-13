Config = {}

Config.QBMenuName = 'qb-menu'
Config.QBCoreName = 'qb-core'
Config.QBTargetName = 'qb-target'
Config.InventoryName = 'qb-inventory'
Config.QBInputName = 'qb-input'
Config.QBPhoneName = 'qb-phone'
Config.PhoneName = 'gksphone' -- Can be qb-phone or gksphone (Maybe later can i'll update to use qs-smartphone)
Config.DebugPoly = false
Config.BillingAfterMailTime = 1 -- Time to receive bill after receive mail to take vehicle back (in minutes)
Config.PriceMultiplier = 10 -- The fees price multiplier (It multipliers vehicle price)

Config.RentalSpots = {
    ["GoKart"] = {
        ["SpotName"] = "GoKart",
        ["LabelSpotName"] = "Go Kart Rental",
        ["PedCoords"] = vector3(-162.6, -2130.98, 15.71),
        ["PedHeading"] = 199.63,
        ["MapBlipSprite"] = 309,
        ["MapBlipColour"] = 0,
        ["TargetIcon"] = "fas fa-car",
        ["PedModel"] = "a_f_m_eastsa_01",
        ["PedModelHash"] = 0x9D3DCB7A,
        ["VehicleSpawnLocation"] = vector4(-158.88, -2134.54, 16.71, 197.1),
        ["AvailableVehicles"] = {
            [1] = { VehicleSpawnName = "veto", VehicleLableName = "Veto", RentPrice = 2, MenuIcon = "fas fa-car" },
            [2] = { VehicleSpawnName = "veto2", VehicleLableName = "Veto 2", RentPrice = 2, MenuIcon = "fas fa-car" },
            [3] = { VehicleSpawnName = "caddy2", VehicleLableName = "Caddy", RentPrice = 2, MenuIcon = "fas fa-car" },
        },
    },
}

Lang = {
    ["MenuHeader"] = "Renting Menu",
    ["CloseMenu"] = "Close menu",
    ["InputHeader"] = "How much time you want to rent the kart?",
    ["Submit"] = "Submit",
    ["InputText"] = "Time (In minutes)",
    ["AlreadyRenting"] = "You are already renting a kart...",
    ["NoMoney"] = "You dont have money for this...",
    ["CancelCurrentRenting"] = "Cancel current renting",
    ["ConfirmMenuHeader"] = "You are sure you want to rent this kart?",
    ["Yes"] = "Yes",
    ["No"] = "No",
    ["MailSender"] = "Rent a kart department",
    ["MailSubject"] = "Go Kart renting",
    ["MailMessage"] = "Your renting time as been ended. <br> You have 5 minutes to take the Go Kart back to our department or you will need to pay more for renting! <br> Best regards Rent a kart department",
    ["MailMessage2"] = "Your time is ending for your rental, please bring it back to avoid more fees...",
    ["PerMinute"] = " per minute",
}