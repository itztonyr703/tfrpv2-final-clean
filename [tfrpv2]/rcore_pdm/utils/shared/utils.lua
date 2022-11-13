Locales = {}

--- trigger name
--- @param name string
function TriggerName(name)
    return string.format('%s:%s', GetCurrentResourceName(),name)
end

--- this is for translation
--- @param str string
--- @param ... parameters
function _U(str, ...)
    if type(Locales) ~= "table" then
        return string.format("[%s] the locales is wrong type, it is not a table..", GetCurrentResourceName())
    end
    if not Locales[Config.Locale] then
        return string.format("[%s] The language does not exists: %s", GetCurrentResourceName(), Config.Locale)
    end
    if not Locales[Config.Locale][str] then
        return string.format("[%s] There isnt such [%s] translation", GetCurrentResourceName(), str)
    end
    return string.format(Locales[Config.Locale][str], ...)
end

--- will merge two tables together
--- @param t1 table
--- @param t2 table
function tableMerge(t1, t2)
    for k, v in pairs(t2) do
        if _G["type"](v) == "table" then
            if _G["type"](t1[k] or false) == "table" then
                tableMerge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

-- this will deep copy whole table
--- @param object table
function deepCopy(object)
    local lookup_table = {}
    local function _copy(object)
        if _G["type"](object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end

    return _copy(object)
end
