Config = {
	Default_Prio = 500000, -- This is the default priority value if a discord isn't found
	AllowedPerTick = 2, -- How many players should we allow to connect at a time?
	CheckForGhostUsers = 40, -- How many seconds should the script check for ghosts users in the queue?
	HostDisplayQueue = true,
	onlyActiveWhenFull = true,
	Requirements = { -- A player must have the identifier to be allowed into the server
		Discord = true,
		Steam = false
	},
	WhitelistRequired = true, -- If this option is set to true, a player must have a role in Config.Rankings to be allowed into the server
	Debug = true,
	Webhook = '',
	Displays = {
		Prefix = '[BadgerDiscordQueue]',
		ConnectingLoop = { 
			'🦡🌿🦡🌿🦡🌿',
			'🌿🦡🌿🦡🌿🦡',
			'🦡🌿🦡🌿🦡🥦',
			'🌿🦡🌿🦡🥦🦡',
			'🦡🌿🦡🥦🦡🥦',
			'🌿🦡🥦🦡🥦🦡',
			'🦡🥦🦡🥦🦡🥦',
			'🥦🦡🥦🦡🥦🦡',
			'🦡🥦🦡🥦🦡🌿',
			'🥦🦡🥦🦡🌿🦡',
			'🦡🥦🦡🌿🦡🌿',
			'🥦🦡🌿🦡🌿🦡',
		},
		Messages = {
			MSG_CONNECTING = 'You are being connected [{QUEUE_NUM}/{QUEUE_MAX}]: ', -- Default message if they have no discord roles 
			MSG_CONNECTED = 'You are up! You are being connected now :)',
			MSG_DISCORD_REQUIRED = 'Your Discord was not detected... You are required to have Discord to play on this server...',
			MSG_STEAM_REQUIRED = 'Your Steam was not detected... You are required to have Steam to play on this server...',
			MSG_NOT_WHITELISTED = 'You do not have 2.0 whitelist role for this server... You are not whitelisted. Please join our discord to get whitelisted.',
		},
	},
}

Config.Rankings = {
	-- LOWER NUMBER === HIGHER PRIORITY 
	-- ['roleID'] = {rolePriority, connectQueueMessage},
	['923397351350091776'] = {500, "You are being connected (you are not as special as Badger) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['925698294473166858'] = {100, "You are being connected (Staff Queue) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Staff 
	['921971377764982784'] = {50, "You are being connected (Admin Queue) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Admin
	['446318170173603850'] = {1, "You are being connected (Founder Queue) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Founder
}