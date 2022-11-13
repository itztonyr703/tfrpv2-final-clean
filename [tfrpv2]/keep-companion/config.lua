Config = Config or {}

-- server and client
Config.MaxActivePetsPetPlayer = 6
Config.DataUpdateInterval = 10

Config.Settings = {
    let_players_cutomize_their_pet_after_purchase = true,
    callCompanionDuration = 2, -- sec
    despawnDuration = 3, -- sec
    itemUsageCooldown = 1, -- sec
    PetMiniMap = { showblip = true, sprite = 442, colour = 2, shortRange = false },
    petMenuKeybind = 'k' -- keybind (players can change bind)
}

Config.Balance = {
    afk = {
        -- 60-sec passed after the player is AFK pet will wander in area
        -- 100-sec after when the player is AFK pet will start doing animation
        -- after 120-sec passes timer will start over from 0
        afkTimerRestAfter = 120, -- sec
        wanderingInterval = 20,
        animationInterval = 90
    }, -- sec pet gonna go wandering around player after player is AFK for a certain time

    petting_stress_relief = math.random(12, 24)
}


-- distincts are needed for animations and to know if pet can hunt or not
-- in my testing generaly small animals can't hunt.
-- so potentially you won't need to change distinct value!
-- distinct = "yes dog" ==> means this pet can hunt
-- distinct = "no dog" ==> means this dog can't hunt

Config.pets = {
    [1] = {
        name = 'keepcompanionwesty',
        model = 'A_C_Westy',
        maxHealth = 150,
        distinct = 'no dog'
    },
    [2] = {
        name = 'keepcompanionshepherd',
        model = 'A_C_shepherd',
        maxHealth = 250,
        distinct = 'no dog'
    },
    [3] = {
        name = 'keepcompanionrottweiler',
        model = 'A_C_Rottweiler',
        maxHealth = 300,
        distinct = 'no dog'
    },
    [4] = {
        name = 'keepcompanionretriever',
        model = 'A_C_Retriever',
        maxHealth = 300,
        distinct = 'no dog'
    },
    [5] = {
        name = 'keepcompanionpug',
        model = 'A_C_Pug',
        maxHealth = 150,
        distinct = 'no dog'
    },
    [6] = {
        name = 'keepcompanionpoodle',
        model = 'A_C_Poodle',
        maxHealth = 150,
        distinct = 'no dog'
    },

    [7] = {
        name = 'keepcompanionmtlion2',
        model = 'A_C_Panther',
        maxHealth = 350,
        distinct = 'no cat',
    },
    [8] = {
        name = 'keepcompanionmtlion',
        model = 'A_C_MtLion',
        maxHealth = 350,
        distinct = 'no cat'
    },
    [9] = {
        name = 'keepcompanioncat',
        model = 'A_C_Cat_01',
        maxHealth = 150,
        distinct = 'no cat'
    },
    [10] = {
        name = 'keepcompanionhusky',
        model = 'A_C_Husky',
        maxHealth = 350,
        distinct = 'no dog'
    },
    [11] = {
        name = 'keepcompanionhen',
        model = 'A_C_Hen',
        maxHealth = 350,
        distinct = 'no hen'
    },
    [12] = {
        name = 'keepcompanionrabbit',
        model = 'A_C_Rabbit_01',
        maxHealth = 350,
        distinct = 'no rabbit'
    },
    [13] = {
        name = 'keepcompanioncoyote',
        model = 'A_C_Coyote',
        maxHealth = 350,
        distinct = 'no cat'
    }
}

Config.core_items = {
    -- don't change table keys
    ['collar'] = {
        item_name = 'collarpet',
        settings = {
            duration = 10
        }
    },
    ['nametag'] = {
        item_name = 'petnametag',
        settings = {
            duration = 10
        }
    },
    ['firstaid'] = {
        item_name = 'firstaidforpet',
        settings = {
            duration = 2,
            healing_duration_multiplier = 1,
            revive_duration_multiplier = 1,
            heal_amount = 25, --(percent) 25% of their max health
            revive_heal_bonuses = 75 --(additive) base health to stay alive is 100 it mean 100 + revive_amount
        }
    },
    ['groomingkit'] = {
        item_name = 'petgroomingkit',
        }
    }


-- K9 Settings
Config.inventory_name = 'qb-inventory'
local illegal_items = {

}

Config.k9 = {
    illegal_items = illegal_items,
    models = {

    }
}
