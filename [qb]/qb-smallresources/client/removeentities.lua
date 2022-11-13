local objects = {
    {x = 266.09, y = -349.35, z = 44.74, model = "prop_sec_barier_02b"},
    {x = 285.28, y = -355.78, z = 45.13, model = "prop_sec_barier_02a"},
	{x = 230.94, y = -816.41, z = 29.31, model = "prop_sec_barier_base_01"},
	{x = 206.51, y = -803.25, z = 29.98, model = "prop_sec_barier_base_01"},
	{x = 206.08, y = -804.38, z = 30.0, model = "prop_bollard_02a"},
	{x = 205.67, y = -805.49, z = 29.98, model = "prop_bollard_02a"},
	{x = 205.19, y = -806.83, z = 29.98, model = "prop_bollard_02a"},
	{x = 230.92, y = -816.15, z = 30.17, model = "prop_sec_barrier_ld_01a"},
	{x = 206.53, y = -803.48, z = 30.95, model = "prop_sec_barrier_ld_01a"},
	{x = 801.48, y = -3149.99, z = 4.87, model = "prop_sec_barier_base_01"},
	{x = 797.22, y = -3153.83, z = 4.87, model = "prop_sec_barier_base_01"},
	{x = 793.07, y = -3157.61, z = 4.87, model = "prop_sec_barier_base_01"},
	{x = 788.33, y = -3161.73, z = 4.88, model = "prop_sec_barier_base_01"},
	{x = 1095.93, y = -3313.27, z = 4.93, model = "prop_sec_barier_base_01"},
	{x = 1095.76, y = -3320.29, z = 4.91, model = "prop_sec_barier_base_01"},
	{x = 1095.69, y = -3333.26, z = 4.91, model = "prop_sec_barier_base_01"},
	{x = 1095.75, y = -3326.58, z = 4.91, model = "prop_sec_barier_base_01"},
	{x = 1095.46, y = -3333.11, z = 5.84, model = "prop_sec_barrier_ld_02a"},
	{x = 1095.7, y =  -3313.12, z = 5.85, model = "prop_sec_barrier_ld_02a"},
	{x = 1095.53, y =  -3320.14, z = 5.84, model = "prop_sec_barrier_ld_02a"},
	{x = 801.68, y =  -3150.1, z = 5.91, model = "prop_sec_barrier_ld_02a"},
	{x = 797.41, y =  -3153.95, z = 5.91, model = "prop_sec_barrier_ld_02a"},
	{x = 793.26, y =  -3157.74, z = 5.92, model = "prop_sec_barrier_ld_02a"},
	{x = 788.49, y =  -3161.82, z = 5.92, model = "prop_sec_barrier_ld_02a"},
	{x = -2287.56, y = 3175.45, z = 31.81, model = "prop_mb_ordance_02"},
	{x = -2286.44, y = 3189.82, z = 31.82, model = "prop_mb_ordance_02"},
	{x = -2288.88, y = 3192.52, z = 31.82, model = "prop_mb_ordance_02"},
	{x = -2145.51, y = 3010.09, z = 31.81, model = "prop_mb_ordance_02"},
	{x = -2057.02, y = 3133.01, z = 31.81, model = "prop_mb_ordance_02"},
	{x = -1904.33, y = 3041.73, z = 31.81, model = "prop_mb_ordance_02"},
	{x = -1785.71, y = 2996.54, z = 31.82, model = "prop_mb_ordance_02"},
	{x = -2195.95, y = 3226.55, z = 31.81, model = "prop_mb_ordance_02"},
	{x = -2237.51, y = 3279.73, z = 31.81, model = "prop_mb_ordance_02"},
	{x = -2247.0, y = 3276.35, z = 31.81, model = "prop_mb_ordance_02"},
	--testing mlo prop removal
	{x = -1150.41, y = 360.47, z = 70.32, model = "prop_patio_lounger1"},
	{x = -1150.46, y = 362.14, z = 70.32, model = "prop_patio_lounger1"},
	{x = -1150.54, y = 364.78, z = 70.32, model = "prop_patio_lounger1"},
	{x = -1150.72, y = 366.41, z = 70.32, model = "prop_patio_lounger1"},	
	{x = -1166.58, y = 377.16, z = 70.31, model = "prop_patio_lounger1"},
	{x = -1165.48, y = 378.38, z = 70.32, model = "prop_patio_lounger1"},
	{x = -1163.55, y = 380.20, z = 70.32, model = "prop_patio_lounger1"},
	{x = -1162.35, y = 381.34, z = 70.32, model = "prop_patio_lounger1"},
	{x = -1154.82, y = 378.05, z = 70.32, model = "prop_patio_lounger1"},
	{x = -1153.55, y = 376.34, z = 70.31, model = "prop_patio_lounger1"},
	{x = -1150.40, y = 361.29, z = 70.32, model = "prop_parasol_01_down"},
	{x = -1153.93, y = 377.09, z = 70.31, model = "prop_parasol_01_down"},
	{x = -1150.40, y = 365.49, z = 70.32, model = "prop_parasol_01"},
	{x = -1163.05, y = 380.91, z = 70.31, model = "prop_parasol_01"},
	{x = -1166.10, y = 378.02, z = 70.31, model = "prop_parasol_01"},
	{x = -1145.36, y = 355.06, z = 70.32, model = "prop_table_07"},
	{x = -1144.25, y = 357.65, z = 70.32, model = "prop_table_07"},
	{x = -1141.60, y = 361.04, z = 70.32, model = "prop_table_07"},
}

CreateThread(function()
    while true do
        for k in pairs(objects) do
            local ent = GetClosestObjectOfType(objects[k].x, objects[k].y, objects[k].z, 2.0, GetHashKey(objects[k].model), false, false, false)

            SetEntityAsMissionEntity(ent, true, true)
            DeleteObject(ent)
            SetEntityAsNoLongerNeeded(ent)
        end

        Wait(5000)
    end
end)
