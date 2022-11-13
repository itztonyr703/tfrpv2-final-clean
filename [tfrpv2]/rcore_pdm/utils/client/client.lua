------------------------
-- Optional to change --
------------------------
-- variables for esx_vehicleshop

local PlateLetters  = Config.PlateLetters
local PlateNumbers  = Config.PlateNumbers
local PlateUseSpace = Config.PlateUseSpace

--Taken from esx_vehicleshop for optimalization purpose.
local NumberCharset = {}
local Charset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end

for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

--Taken from esx_vehicleshop for optimalization purpose.
function GetRandomNumber(length)
    Wait(0)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
    else
        return ''
    end
end

--Taken from esx_vehicleshop for optimalization purpose.
function GetRandomLetter(length)
    Wait(0)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
    else
        return ''
    end
end

-- variable that holds new plates
local ClaimedPlates = {}

-- get list of plates
function GetPlateList()
    local data = nil
    callCallback(TriggerName("getPlateList"), function(cb)
        data = cb
    end)
    while not data do
        Wait(0)
    end
    ClaimedPlates = {}
    return data
end

exports("GetPlateList", GetPlateList)

function ResetPlateList()
    ClaimedPlates = {}
end

exports("ResetPlateList", ResetPlateList)

--Taken from esx_vehicleshop for optimalization purpose.
function GeneratePlate(plates)
    local generatedPlate
    local doBreak = false
    while true do
        Wait(0)
        math.randomseed(GetGameTimer())
        if PlateUseSpace then
            generatedPlate = string.upper(GetRandomLetter(PlateLetters) .. ' ' .. GetRandomNumber(PlateNumbers))
        else
            generatedPlate = string.upper(GetRandomLetter(PlateLetters) .. GetRandomNumber(PlateNumbers))
        end
        if not plates[generatedPlate] and not ClaimedPlates[generatedPlate] then
            doBreak = true
            ClaimedPlates[generatedPlate] = true
        end

        if doBreak then
            break
        end
    end
    return generatedPlate
end

exports("GeneratePlate", GeneratePlate)

function showNotification(text, type)
    SendNUIMessage({
        type = "error_message",
        message = text,
        alert = type,
    })
end

-- Will return a vehicle model name.
--- @param hash integer
function GetVehicleModelName(hash)
    local modelName = GetLabelText(GetDisplayNameFromVehicleModel(hash))
    modelName = GetModelNameByHash(hash) or (modelName == "NULL" and _U("no_name_found") or modelName)
    return modelName
end

RegisterNetEvent(TriggerName("notification"))
AddEventHandler(TriggerName("notification"), function(msg)
    SendNUIMessage({
        type = "error_message",
        message = msg,
    })
end)

function showHelpNotification(text)
    BeginTextCommandDisplayHelp("THREESTRINGS")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, 5000)
end