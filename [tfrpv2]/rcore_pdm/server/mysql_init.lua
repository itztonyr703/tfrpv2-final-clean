---------------------------------------------------------------
-- Variables
---------------------------------------------------------------
DisplayedVehiclesLoaded = false
---------------------------------------------------------------
-- One time init
---------------------------------------------------------------
MySQL.ready(function()
    local result = MySQL.Sync.fetchAll('SELECT * FROM `categories_vehicles`', {})
    for key, value in pairs(result) do
        if not CategoriesName[value.job] then
            CategoriesName[value.job] = {}
        end

        CategoriesName[value.job][tostring(value.name)] = value.label
    end

    loadDisplayedVehicles()
end)
---------------------------------------------------------------
-- Functions
---------------------------------------------------------------
-- will load and save into cache vehicles from DB
function loadDisplayedVehicles()
    DisplayedVehicles = {}

    for k, v in pairs(Config.DisplayVehicles) do
        DisplayedVehicles[v.Job] = {}
    end

    local data = MySQL.Sync.fetchAll('SELECT * FROM vehiclesdisplayed', {})

    for k, v in pairs(data) do
        local model

        if tonumber(v.model) ~= nil then
            model = tonumber(v.model)
        else
            model = string.lower(v.model)
        end

        local filter = {
            ['@category'] = v.category,
            ['@job'] = v.job,
        }

        local result = MySQL.Sync.fetchAll('SELECT * FROM `vehicles_to_buy` WHERE category = @category AND job = @job', filter)
        for key, value in pairs(result) do
            if string.lower(value.model) == model or GetHashKey(value.model) == model then
                if DisplayedVehicles[v.job] == nil then
                    DisplayedVehicles[v.job] = {}
                end
                DisplayedVehicles[v.job][v.index] = {
                    model = model,
                    category = CategoriesName[v.job][v.category],
                    extra = v.extra,
                    price = value.price,
                    vip_price = value.vip_price,
                    name = value.name,
                    instock = value.instock,
                }
            end
        end
    end

    DisplayedVehiclesLoaded = true
end