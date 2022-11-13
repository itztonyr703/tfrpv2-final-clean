-- NOTE AND READ THIS!

-- Well this is kinda risky to have because
-- the Boss of the PDM has ability to change the vehicle price
-- so i am saving the original price player bought the vehicle for
-- why? Because if he bought for 100$ and he is going to sell it he would get 60$ right?
-- but what if some smartass thought about  changing the vehicle pr ice to 1000000$? You see the point?
-- he would get much much more money than the original price.


-- do we want to player have ability to sell vehicles back?
Config.EnableSellOption = true

-- How much percentage player will obtain from original price?
-- player will recieve only 60% of the price.
Config.SellVehicleFeePercent = 75

Config.SellVehicleMarker = {
    {
        pos = vector3(-25.4450, -1073.4537, 27.8977),
        rotation = true,
        type = 29,

        color = { r = 0, g = 200, b = 0, a = 125 },

        -- the dealer is job in the mysql table, so the system knows where to look to sell the vehicle.
        job = "dealer",
    },
}