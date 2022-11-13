Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'HOME' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.Toggle = true -- If this is false the scoreboard stays open only when you hold the OpenKey button, if this is true the scoreboard will be openned and closed with the OpenKey button

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 48) -- It returns 48 if it cant find the Convar Int

-- Minimum Police for Actions
Config.IllegalActions = {
    ["gunplay"] = {
        minimumPolice = 3,
        busy = false,
        label = "Gun Play",
    },
	["storerobbery"] = {
        minimumPolice = 2,
        busy = false,
        label = "Store Robbery",
    },
	["drugselling"] = {
        minimumPolice = 2,
        busy = false,
        label = "Drug Selling",
    },
    ["bankrobbery"] = {
        minimumPolice = 3,
        busy = false,
        label = "Bank Robbery"
    },
    ["jewelery"] = {
        minimumPolice = 3,
        busy = false,
        label = "Jewelery"
    },
    ["pacific"] = {
        minimumPolice = 6,
        busy = false,
        label = "Pacific Bank"
    },
    ["heists"] = {
        minimumPolice = 8,
        busy = false,
        label = "Heists"
    }
}

-- Show ID's for all players or Opted in Staff
Config.ShowIDforALL = false
