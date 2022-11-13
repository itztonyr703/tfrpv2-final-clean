Config = {
	Guild_ID = '912866691522908200', -- Set to the ID of your guild (or your Primary guild if using Multiguild)
  Multiguild = false, -- Set to true if you want to use multiple guilds
  Guilds = {
    ["tfrp"] = "912866691522908200", -- Replace this with a name, like "main"
  },
	Bot_Token = 'OTg4NzQ1MzE2OTY4ODQxMjU2.GAJZzD.YAQFdOHF3_3CuJBkd3GyEN5oIS2o0kBUGXtD0s',
	RoleList = {923397351350091776},
	CacheDiscordRoles = true, -- true to cache player roles, false to make a new Discord Request every time
	CacheDiscordRolesTime = 60, -- if CacheDiscordRoles is true, how long to cache roles before clearing (in seconds)
}

Config.Splash = {
	Header_IMG = 'https://i.imgur.com/tPrUEOV.jpg',
	Enabled = true,
	Wait = 10, -- How many seconds should splash page be shown for? (Max is 12)
	Heading1 = "Welcome to Bloodline RP",
	Heading2 = "Make sure to check our Discord for more information",
	Discord_Link = 'https://discord.gg/bloodlinerp',
	Website_Link = '',
}