---------------------------------------------------------------
-- Function list
---------------------------------------------------------------
-- Will register a key bind for action defined in "fc" argument name
--- @param fc function
--- @param uniqid string
--- @param description string
--- @param key string
function RegisterKey(fc, uniqid, description, key)
    RegisterCommand(uniqid, fc, false)
    RegisterKeyMapping(uniqid, description, 'keyboard', key)
end

-- This function will return class name for vehicle
--- @param vehicle int
function GetVehicleClassName(vehicle)
    local carClassNumber = GetVehicleClass(vehicle)
    local ClassNameArray = {
        [0] = _U("Compacts"),
        [1] = _U("Sedans"),
        [2] = _U("SUVs"),
        [3] = _U("Coupes"),
        [4] = _U("Muscle"),
        [5] = _U("Sports Classics"),
        [6] = _U("Sports"),
        [7] = _U("Super"),
        [8] = _U("Motorcycles"),
        [9] = _U("Off-road"),
        [10] = _U("Industrial"),
        [11] = _U("Utility"),
        [12] = _U("Vans"),
        [13] = _U("Cycles"),
        [14] = _U("Boats"),
        [15] = _U("Helicopters"),
        [16] = _U("Planes"),
        [17] = _U("Service"),
        [18] = _U("Emergency"),
        [19] = _U("Military"),
        [20] = _U("Commercial"),
        [21] = _U("Trains"),
    }
    return ClassNameArray[carClassNumber] or _U("other")
end