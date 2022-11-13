Configuration = {

    framework = 'qbcore',  -- framework "esx" or "qbcore"

    QBtrigger = 'qb-core',

    Mysql = 'oxmysql',  -- oxmysql, mysql-async or ghmattisql

    UseKeys = true,
    UseFuel = true,
    UseDeleteVehicle = false,
    UseAppearance = false,

    NPC = {
        {x = -551.4, y = -201.34, z = 38.23, h = 325.53},
        {x = -265.76, y = -963.24, z = 31.22, h = 208.86}, --> here you can add more
    },

    NPCmodel = "cs_barry",

    Payment_type = "cash", --bank or cash

    Gender = "0" -- Here you can put how to detect the gender of your character ("0" or "male")

}

Target = {
    UseTarget = false, 

    Coords = vector3(-542.96, -207.84, 37.64),

    TargetExport = 'qb-target',

    ["Home"] = {
        Text = 'WORK CENTRE', 
        Icon = 'fa fa-briefcase'        
    },

    ["Workclothes"] = {
        [1] = {
            Text = 'START WORK', 
            Icon = 'fa fa-user-circle-o' 
        },
        [2] = {
            Text = 'REMOVE JOB', 
            Icon = 'fa fa-sign-out' 
        }
    },

    ["Vehicle"] = {
        [1] = {
            Text = 'TAKE VEHICLE', 
            Icon = 'fa fa-car' 
        },
        [2] = {
            Text = 'SAVE VEHICLE', 
            Icon = 'fa fa-car' 
        }
    },

    ["Tool"] = {
        [1] = {
            Text = 'TAKE TOOL', 
            Icon = 'fa fa-wrench' 
        },
        [2] = {
            Text = 'SAVE TOOL', 
            Icon = 'fa fa-wrench' 
        }
    },

    ["Job"] = {
        Text = 'WORK', 
        Icon = 'fa fa-hand-rock-o' 
    },

    ["Payout"] = {
        Text = 'COLLECT PAYMENT', 
        Icon = 'fa fa-money' 
    }

}