

-- meeting created by Nova
Config.DoorList['triads-meeting'] = {
    doorRate = 1.0,
    objName = -1592535808,
    distance = 2,
    fixText = false,
    objYaw = 212.31954956055,
    doorLabel = 'meeting',
    doorType = 'door',
    authorizedGangs = { ['triads'] = 0 },
    objCoords = vec3(-650.955627, -1233.176636, 11.748600),
    authorizedJobs = { ['triads'] = 0 },
    locked = true,
}

-- bathroom created by Nova
Config.DoorList['triads-bathroom'] = {
    doorRate = 1.0,
    objName = -1592535808,
    distance = 2,
    fixText = false,
    objYaw = 32.319553375244,
    doorLabel = 'bathroom',
    doorType = 'door',
    authorizedGangs = { ['triads'] = 0 },
    objCoords = vec3(-642.642456, -1238.405640, 11.748600),
    authorizedJobs = { ['triads'] = 0 },
    locked = true,
}

-- office created by Nova
Config.DoorList['triads-office'] = {
    doorRate = 1.0,
    objName = -1592535808,
    distance = 2,
    fixText = false,
    objYaw = 212.31956481934,
    doorLabel = 'office',
    doorType = 'door',
    authorizedGangs = { ['triads'] = 0 },
    objCoords = vec3(-649.851013, -1242.966064, 11.748600),
    authorizedJobs = { ['triads'] = 0 },
    locked = true,
}

-- bar created by Nova
Config.DoorList['triads-bar'] = {
    doors = {
        {objName = -932312205, objYaw = 302.31958007813, objCoords = vec3(-643.390015, -1235.914795, 10.570587)},
        {objName = -932312205, objYaw = 122.31952667236, objCoords = vec3(-644.381531, -1234.347656, 10.570587)}
    },
    doorRate = 1.0,
    doorLabel = 'bar',
    doorType = 'doublesliding',
    authorizedJobs = { ['triads'] = 0 },
    distance = 2,
    authorizedGangs = { ['triads'] = 0 },
    locked = true,
}

-- front created by Nova
Config.DoorList['triads-front'] = {
    doors = {
        {objName = 1215119726, objYaw = 172.31953430176, objCoords = vec3(-639.829529, -1248.908203, 11.945559)},
        {objName = -636132164, objYaw = 352.31958007813, objCoords = vec3(-637.369324, -1249.239990, 11.945559)}
    },
    doorRate = 1.0,
    doorLabel = 'front',
    doorType = 'double',
    authorizedJobs = { ['triads'] = 0 },
    distance = 2,
    authorizedGangs = { ['triads'] = 0 },
    locked = true,
}

-- back created by Nova
Config.DoorList['triads-back'] = {
    doors = {
        {objName = -636132164, objYaw = 122.31954193115, objCoords = vec3(-644.483337, -1227.172607, 11.682079)},
        {objName = 1215119726, objYaw = 302.31954956055, objCoords = vec3(-643.156067, -1229.270508, 11.682079)}
    },
    doorRate = 1.0,
    doorLabel = 'back',
    doorType = 'double',
    authorizedJobs = { ['triads'] = 0 },
    distance = 2,
    authorizedGangs = { ['triads'] = 0 },
    locked = true,
}