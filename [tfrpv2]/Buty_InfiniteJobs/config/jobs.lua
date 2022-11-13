job = {
   
    { 
        [1] = {jobs = "Farmer",img =  "./img/farmer.png",img2 =  "./img/farmer2.png",info = "People are needed to work the city's fields. Most people go to the offices. What will we eat if no one works the fields?" },

        [2] = {
            [1] = {Workclothes = {{x = 2251.64, y = 5155.36, z = 57.88},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 1966.6, y = 5184.72, z = 47.96, h = 183.08},pedmodel = "s_m_m_cntrybar_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_plant_fern_02a",
                nameblip = "Plant",
                text = "Press ~h~[E]~h~",
                { x = 2275.44, y = 5142.6, z = 54.16, objZ= 2 , take = false}, { x = 2287.8, y = 5129.84, z = 51.28, objZ= 2 , take = false}, {x = 2288.6, y = 5143.12, z = 53.28, objZ= 2 , take = false},

                { x = 2280.76, y = 5137.0, z = 52.64, objZ= 2 , take = false}, { x = 2294.6, y = 5136.76, z = 51.96, objZ= 2 , take = false}, {x = 2281.48, y = 5149.92, z = 55.08, objZ= 2 , take = false},
            }},

            [4] = { 
                [1] = {getvehicle =  {{x = 2243.32, y = 5154.08, z = 56.88, h = 138.88}, pedmodel = "a_m_m_farmer_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 2234.96, y = 5155.84, z = 57.36, h = 6.96}}, 
                [3] = {vehiclename = "tractor2"},
                [4] = {vehicle = true}
            }
        },

        [3] = {
            [1] = {anim = "amb@world_human_gardener_plant@male@enter", anim2 = "enter"},
            [2] = {obj = true, nameobj = "bkr_prop_coke_spatula_04", objX = 0.15, objY = 0.11, objZ = 0.02, objrotX = 200.0, objrotY = 260.0,objrotZ = 0.0},
            [3] = {animtime = 5000}
        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },
        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 239,   ['torso_2'] = 18,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 34,
                    ['pants_1'] = 12,   ['pants_2'] = 0,
                    ['shoes_1'] = 24,   ['shoes_2'] = 0,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 27,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 46,
                    ['pants_1'] = 4,   ['pants_2'] = 0,
                    ['shoes_1'] = 72,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0
                }
            },
            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 239, texture = 18},
                        ['arms']    = {item = 34, texture = 0},
                        ['pants']   = {item = 12, texture = 0},
                        ['shoes']   = {item = 24, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 27, texture = 0},
                        ['arms']    = {item = 46, texture = 0},
                        ['pants']   = {item = 4, texture = 0},
                        ['shoes']   = {item = 72, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
   
    { 
        [1] = {jobs = "Electrician",img =  "./img/electrician.png",img2 =  "./img/electrician2.png",info = "In a city as modern as Los Santos, many electricians are needed to maintain the infrastructure." },

        [2] = {
            [1] = {Workclothes = {{x = 722.80, y = -2016.61, z = 29.29},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 729.16, y = -1975.95, z = 28.29, h = 262.92},pedmodel = "s_m_m_lathandy_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_elecbox_12", 
                nameblip = "Electrical Module",
                text = "Press ~h~[E]~h~",   
                { x = 750.70, y = -1971.06, z = 28.19, objZ= 0 , take = false}, {x = 745.38, y = -1971.82, z = 28.19, objZ= 0 , take = false},

                { x = 745.22, y = -1995.55, z = 28.18, objZ= 0 , take = false}, { x = 739.96, y = -1996.74, z = 28.19, objZ= 0 , take = false}, {x = 758.08, y = -1939.81, z = 28.19, objZ= 0 , take = false}, {x = 751.92, y = -1929.02, z = 28.19, objZ= 0 , take = false},
            }},

            [4] = { 
                [1] = {getvehicle =  {{x = 720.36, y = -2028.09, z = 28.43, h = 266.05}, pedmodel = "cs_floyd", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 728.78, y = -2024.48, z = 28.28, h = 358.81}}, 
                [3] = {vehiclename = "burrito"},
                [4] = {vehicle = true}
            }
        },

        [3] = {
            [1] = {anim = "missmechanic", anim2 = "work2_base"},
            [2] = {obj = true, nameobj = "prop_tool_pliers", objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = 300.0, objrotY = 720.0,objrotZ = 330.0},
            [3] = {animtime = 5000}

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 65,   ['torso_2'] = 1,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 33,
                    ['pants_1'] = 38,   ['pants_2'] = 1,
                    ['shoes_1'] = 24,   ['shoes_2'] = 0,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = 141,  ['helmet_2'] = 2,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 59,   ['torso_2'] = 1,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 36,
                    ['pants_1'] = 38,   ['pants_2'] = 1,
                    ['shoes_1'] = 24,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 65, texture = 1},
                        ['arms']    = {item = 33, texture = 0},
                        ['pants']   = {item = 38, texture = 1},
                        ['shoes']   = {item = 24, texture = 0},
                        ['hat'] = {item = 141, texture = 2},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 59, texture = 1},
                        ['arms']    = {item = 36, texture = 0},
                        ['pants']   = {item = 38, texture = 1},
                        ['shoes']   = {item = 24, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Builder",img =  "./img/builder.png",img2 =  "./img/builder2.png",info = "We live in a sprawling city. Big buildings are being built every day. Help build them and earn money from it." },

        [2] = {
            [1] = {Workclothes = {{x = 1391.03, y = -786.16, z = 67.44},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 1299.67, y = -707.78, z = 63.86, h = 184.18},pedmodel = "s_m_y_dockwork_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_ld_rubble_02",
                nameblip = "Stone Waste",
                text = "Press ~h~[E]~h~",
                { x = 1365.03, y = -777.66, z = 65.58, objZ= 0 , take = false}, { x = 1363.47, y = -772.09, z = 65.61, objZ= 0 , take = false}, {x = 1398.17, y = -768.66, z = 65.45, objZ= 0 , take = false},

                { x = 1392.51, y = -773.30, z = 65.46, objZ= 0 , take = false}, { x = 1406.17, y = -746.07, z = 66.18, objZ= 0 , take = false}, {x = 1330.69, y = -708.29, z = 65.07, objZ= 0 , take = false},
            }},

            [4] = { 
                [1] = {getvehicle =  {{x = 1394.57, y = -710.90, z = 66.33, h = 236.45}, pedmodel = "s_m_y_construct_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 1381.32, y = -741.85, z = 66.23, h = 72.07}}, 
                [3] = {vehiclename = "DLoader"},
                [4] = {vehicle = true}
            }
        },

        [3] = {
            [1] = {anim = "melee@large_wpn@streamed_core", anim2 = "ground_attack_-90"},
            [2] = {obj = true, nameobj = "prop_tool_sledgeham",  objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = 300.0, objrotY = 720.0,objrotZ = 330.0},
            [3] = {animtime = 5000}

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 238,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 21,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 35,   ['shoes_2'] = 1,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = 60,  ['helmet_2'] = 4,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 118,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 29,
                    ['pants_1'] = 49,   ['pants_2'] = 0,
                    ['shoes_1'] = 36,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 60,  ['helmet_2'] = 4,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 238, texture = 1},
                        ['arms']    = {item = 21, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 35, texture = 1},
                        ['hat'] = {item = 60, texture = 4},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 118, texture = 0},
                        ['arms']    = {item = 29, texture = 0},
                        ['pants']   = {item = 49, texture = 0},
                        ['shoes']   = {item = 24, texture = 0},
                        ['hat'] = {item = 60, texture = 4},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Gardener",img =  "./img/gardener.png",img2 =  "./img/gardener2.png",info = "The Golf Club pays you to keep the golf grounds in perfect condition. It is an honourable way to earn money." },

        [2] = {
            [1] = {Workclothes = {{x = -1352.64, y = 125.62, z = 56.20},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = -1321.34, y = 63.81, z = 52.51, h = 16.99},pedmodel = "s_m_m_gardener_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_weeds_nxg09",
                nameblip = "Weeds",
                text = "Press ~h~[E]~h~",
                { x = -1323.38, y = 109.69, z = 55.97, objZ= 1 , take = false}, { x = -1270.99, y = 136.44, z = 58.40, objZ= 1 , take = false}, {x = -1221.60, y = 110.46, z = 58.03, objZ= 1 , take = false},
                
                { x = -1286.38, y = 79.39, z = 54.91, objZ= 1 , take = false}, { x = -1325.17, y = 157.66, z = 57.80, objZ= 1 , take = false}, {x = -1367.06, y = 169.34, z = 58.01, objZ= 1 , take = false},
            }},
            
            [4] = { 
                [1] = {getvehicle =  {{x = -1348.18, y = 141.60, z = 55.26, h = 164.58}, pedmodel = "s_m_m_gardener_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1344.60, y = 123.09, z = 55.26, h = 191.45}}, 
                [3] = {vehiclename = "caddy"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@world_human_janitor@male@idle_a", anim2 = "idle_a"},
            [2] = {obj = true, nameobj = "prop_leaf_blower_01",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = 0.0},
            [3] = {animtime = 5000}

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 247,   ['torso_2'] = 7,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 21,
                    ['pants_1'] = 47,   ['pants_2'] = 1,
                    ['shoes_1'] = 94,   ['shoes_2'] = 6,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = 60,  ['helmet_2'] = 4,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 74,   ['torso_2'] = 1,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 24,
                    ['pants_1'] = 49,   ['pants_2'] = 1,
                    ['shoes_1'] = 36,   ['shoes_2'] = 1,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 247, texture = 7},
                        ['arms']    = {item = 21, texture = 0},
                        ['pants']   = {item = 47, texture = 1},
                        ['shoes']   = {item = 94, texture = 6},
                        ['hat'] = {item = 60, texture = 4},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 74, texture = 1},
                        ['arms']    = {item = 24, texture = 0},
                        ['pants']   = {item = 49, texture = 1},
                        ['shoes']   = {item = 36, texture = 1},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Sweeper",img =  "./img/sweeper.png",img2 =  "./img/sweeper2.png",info = "There are a lot of streets and the streets don't clean themselves. Dedicate yourself to cleaning all the dirt off the streets. It is a very honourable job." },

        [2] = { 
            [1] = {Workclothes = {{x = -623.55, y = -119.55, z = 39.61},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = -621.20, y = -139.18, z = 38.03, h = 309.99},pedmodel = "s_m_y_winclean_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_big_shit_02",
                nameblip = "Dirt",
                text = "Press ~h~[E]~h~", 
                { x = -577.31, y = -74.06, z = 42.02, objZ= 1 , take = false}, { x = -527.75, y = -129.83, z = 38.80, objZ= 1 , take = false}, {x = -591.17, y = -180.28, z = 38.03, objZ= 1 , take = false},
                
                { x = -595.98, y = -249.17, z = 36.25, objZ= 1 , take = false}, { x = -527.13, y = -247.28, z = 35.79, objZ= 1 , take = false}, {x = -539.50, y = -212.68, z = 37.65, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = -580.43, y = -80.25, z = 40.89, h = 19.18}, pedmodel = "s_m_y_winclean_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -589.59, y = -90.74, z = 42.34, h = 326.76}}, 
                [3] = {vehiclename = "UtilliTruck2"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@world_human_janitor@male@idle_a", anim2 = "idle_a"}, 
            [2] = {obj = true, nameobj = "prop_tool_broom",  objX = 0.1, objY = 0.0, objZ = 0.0, objrotX = -960.0, objrotY = -400.0, objrotZ = 360.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 59,  ['tshirt_2'] = 0,
                    ['torso_1'] = 1,   ['torso_2'] = 11,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 19,
                    ['pants_1'] = 120,   ['pants_2'] = 1,
                    ['shoes_1'] = 94,   ['shoes_2'] = 6,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 191,  ['tshirt_2'] = 1,
                    ['torso_1'] = 338,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 44,
                    ['pants_1'] = 126,   ['pants_2'] = 1,
                    ['shoes_1'] = 26,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 59, texture = 0},
                        ['torso2']  = {item = 1, texture = 11},
                        ['arms']    = {item = 19, texture = 0},
                        ['pants']   = {item = 120, texture = 1},
                        ['shoes']   = {item = 94, texture = 6},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 191, texture = 1},
                        ['torso2']  = {item = 338, texture = 0},
                        ['arms']    = {item = 44, texture = 0},
                        ['pants']   = {item = 126, texture = 1},
                        ['shoes']   = {item = 26, texture = 0},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Cleaner",img =  "./img/cleaner.png",img2 =  "./img/cleaner2.png",info = "You clean the windows of big offices. You'll get paid well because very few people want to do such back-breaking work." },
            
        [2] = { 
            [1] = {Workclothes = {{x = -1437.88, y = -372.96, z = 38.26},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = -1433.58, y = -389.46, z = 35.49, h = 198.01},pedmodel = "a_m_y_stwhi_02", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_cs_diaphram",
                nameblip = "Dirt",
                text = "Press ~h~[E]~h~",  
                { x = -1436.97, y = -541.41, z = 36.08, objZ= 1 , take = false}, { x = -1435.26, y = -534.07, z = 36.07, objZ= 1 , take = false}, {x = -1434.38, y = -530.53, z = 35.79, objZ= 1 , take = false},
                
                { x = -1436.58, y = -525.22, z = 35.79, objZ= 1 , take = false}, { x = -1439.61, y = -520.84, z = 35.72, objZ= 1 , take = false}, {x = -1444.49, y = -513.75, z = 35.74, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = -1410.87, y = -388.47, z = 35.54, h = 230.70}, pedmodel = "s_m_y_winclean_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1414.24, y = -397.21, z = 35.21, h = 121.75}}, 
                [3] = {vehiclename = "burrito3"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@world_human_maid_clean@", anim2 = "base"},  
            [2] = {obj = true, nameobj = "prop_sponge_01",  objX = 0.1, objY = 0.0, objZ = -0.03, objrotX = 90.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 319,   ['torso_2'] = 2,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 19,
                    ['pants_1'] = 15,   ['pants_2'] = 1,
                    ['shoes_1'] = 94,   ['shoes_2'] = 6,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 1,
                    ['torso_1'] = 224,   ['torso_2'] = 4,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 33,
                    ['pants_1'] = 30,   ['pants_2'] = 0,
                    ['shoes_1'] = 36,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 319, texture = 2},
                        ['arms']    = {item = 19, texture = 0},
                        ['pants']   = {item = 15, texture = 1},
                        ['shoes']   = {item = 94, texture = 6},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 1},
                        ['torso2']  = {item = 224, texture = 4},
                        ['arms']    = {item = 33, texture = 0},
                        ['pants']   = {item = 30, texture = 1},
                        ['shoes']   = {item = 36, texture = 0},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Fruit Shop",img =  "./img/fruitshop.png",img2 =  "./img/fruitshop2.png",info = "The city's fruit shop is looking for people to help them pick fruit from the fruit trees. It's not a difficult job and it pays well." },
            
        [2] = { 
            [1] = {Workclothes = {{x = 417.80, y = 6520.58, z = 27.72},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 310.17, y = 6501.24, z = 28.48, h = 112.49},pedmodel = "a_m_m_hillbilly_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "prop_cs_diaphram",
                nameblip = "Fruit",
                text = "Press ~h~[E]~h~",  
                { x = 378.46, y = 6505.81, z = 27.95, objZ= 1 , take = false}, { x = 378.19, y = 6517.02, z = 28.36, objZ= 1 , take = false}, {x = 363.16, y = 6517.82, z = 28.29, objZ= 1 , take = false},
                  
                { x = 355.70, y = 6505.44, z = 28.48, objZ= 1 , take = false}, { x = 348.04, y = 6517.51, z = 28.75, objZ= 1 , take = false}, {x = 329.86, y = 6531.36, z = 28.59, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = 413.50, y = 6494.67, z = 27.18, h = 191.71}, pedmodel = "a_m_m_hillbilly_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 424.93, y = 6473.00, z = 27.80, h = 60.45}}, 
                [3] = {vehiclename = "kalahari"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@prop_human_movie_bulb@idle_a", anim2 = "idle_a"}, 
            [2] = {obj = true, nameobj = "prop_fruit_basket",  objX = 0.14, objY = -0.25, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = -0.20},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 238,   ['torso_2'] = 2,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 21,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 35,   ['shoes_2'] = 1,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 23,   ['torso_2'] = 2,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 24,
                    ['pants_1'] = 49,   ['pants_2'] = 0,
                    ['shoes_1'] = 36,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 238, texture = 2},
                        ['arms']    = {item = 21, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 35, texture = 1},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 1},
                        ['torso2']  = {item = 23, texture = 2},
                        ['arms']    = {item = 24, texture = 0},
                        ['pants']   = {item = 49, texture = 0},
                        ['shoes']   = {item = 36, texture = 0},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    
    { 
        [1] = {jobs = "Plumber",img =  "./img/plumber.png",img2 =  "./img/plumber2.png",info = "A plumber's job... You're not going to fix normal things and you're not going to be dry either. Fix some of the pipes in the city tunnels." },
            
        [2] = { 
            [1] = {Workclothes = {{x = -1207.61, y = -958.38, z = 2.15},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = -1791.64, y = -970.51, z = 1.25, h = 111.59},pedmodel = "s_m_m_lathandy_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_ind_pipe_01",
                nameblip = "Pipes",
                text = "Press ~h~[E]~h~",                     
                { x = -1214.48, y = -952.87, z = 0.11, objZ= 6 , take = false}, { x = -1232.55, y = -942.58, z = 0.35, objZ= 6 , take = false}, {x = -1250.32, y = -891.60, z = -0.47, objZ= 3 , take = false},
                   
                { x = -1272.59, y = -876.39, z = -0.48, objZ= 3 , take = false}, { x = -1338.00, y = -830.03, z = -0.49, objZ= 3 , take = false}, {x = -1570.83, y = -879.36, z = -0.73, objZ= 3 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = -1214.51, y = -937.65, z = 1.15, h = 131.45}, pedmodel = "s_m_m_lathandy_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1212.86, y = -959.95, z = -1.60, h = 54.76}}, 
                [3] = {vehiclename = "Seashark"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "mini@repair", anim2 = "fixing_a_ped"}, 
            [2] = {obj = true, nameobj = "prop_tool_wrench",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 125,  ['tshirt_2'] = 2,
                    ['torso_1'] = 243,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 16,
                    ['pants_1'] = 94,   ['pants_2'] = 0,
                    ['shoes_1'] = 67,   ['shoes_2'] = 1,
                    ['chain_1'] = 33,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 155,  ['tshirt_2'] = 1,
                    ['torso_1'] = 347,   ['torso_2'] = 1,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 18,
                    ['pants_1'] = 87,   ['pants_2'] = 8,
                    ['shoes_1'] = 70,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 125, texture = 2},
                        ['torso2']  = {item = 243, texture = 0},
                        ['arms']    = {item = 16, texture = 0},
                        ['pants']   = {item = 94, texture = 0},
                        ['shoes']   = {item = 67, texture = 1},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 155, texture = 1},
                        ['torso2']  = {item = 347, texture = 1},
                        ['arms']    = {item = 18, texture = 0},
                        ['pants']   = {item = 87, texture = 8},
                        ['shoes']   = {item = 70, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Butcher",img =  "./img/butcher.png",img2 =  "./img/butcher2.png",info = "You will work in the City Slaughterhouse and will have to cut up a lot of bones, pig carcasses and things of dubious provenance." },
            
        [2] = { 
            [1] = {Workclothes = {{x = 962.20, y = -2189.63, z = 30.51},nameblip = "~h~[JOB]~h~ Work clothes"}},   

            [2] = {payout = {{x = 952.28, y = -2122.00, z = 30.45, h = 163.06},pedmodel = "mp_m_shopkeep_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "",
                nameblip = "Meat",
                text = "Press ~h~[E]~h~",                                   
                { x = 985.19, y = -2122.08, z = 30.48, objZ= 1 , take = false}, { x = 985.56, y = -2118.20, z = 30.76, objZ= 1 , take = false}, {x = 985.72, y = -2116.26, z = 30.76, objZ= 1 , take = false},
                   
                { x = 984.49, y = -2112.53, z = 30.76, objZ= 1 , take = false}, { x = 981.80, y = -2120.93, z = 30.48, objZ= 1 , take = false}, {x = 981.62, y = -2122.37, z = 30.48, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = 969.29, y = -2109.15, z = 30.48, h = 88.59}, pedmodel = "csb_chef", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 965.91, y = -2113.58, z = 29.87, h = 172.71}}, 
                [3] = {vehiclename = "caddy2"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "anim@amb@business@coc@coc_unpack_cut_left@", anim2 = "coke_cut_v1_coccutter"}, 
            [2] = {obj = true, nameobj = "prop_knife",  objX = 0.13, objY = 0.14, objZ = 0.09, objrotX = 40.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 2,
                    ['torso_1'] = 97,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 85,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 54,   ['shoes_2'] = 0,
                    ['chain_1'] = 3,    ['chain_2'] = 0,
                    ['helmet_1'] = 14,  ['helmet_2'] = 3,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 1,
                    ['torso_1'] = 88,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 109,
                    ['pants_1'] = 49,   ['pants_2'] = 0,
                    ['shoes_1'] = 55,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 2},
                        ['torso2']  = {item = 97, texture = 0},
                        ['arms']    = {item = 85, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 54, texture = 0},
                        ['hat'] = {item = 14, texture = 3},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 1},
                        ['torso2']  = {item = 88, texture = 0},
                        ['arms']    = {item = 109, texture = 0},
                        ['pants']   = {item = 49, texture = 0},
                        ['shoes']   = {item = 55, texture = 0},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Engineer",img =  "./img/engineer.png",img2 =  "./img/engineer2.png",info = "Qualified engineers are needed to solve the problems of aircraft arriving at the city's airport. It is a well paid job." },
            
        [2] = { 
            [1] = {Workclothes = {{x = -1070.73, y = -2868.58, z = 13.95},nameblip = "~h~[JOB]~h~ Work clothes"}},        

            [2] = {payout = {{x = -1158.80, y = -2845.90, z = 12.95, h = 147.64},pedmodel = "s_m_y_airworker", pedanim = "WORLD_HUMAN_CLIPBOARD", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "",
                nameblip = "Failure",
                text = "Press ~h~[E]~h~",                                                 
                { x = -1184.05, y = -2909.00, z = 17.09, objZ= 1 , take = false}, { x = -1197.01, y = -2913.59, z = 13.94, objZ= 1 , take = false}, {x = -1184.81, y = -2902.76, z = 13.95, objZ= 1 , take = false},
                  
                { x = -1260.28, y = -2862.33, z = 14.40, objZ= 1 , take = false}, { x = -1263.56, y = -2736.82, z = 13.94, objZ= 1 , take = false}, {x = -1259.23, y = -2738.21, z = 13.94, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = -1110.95, y = -2895.48, z = 12.95, h = 0.00}, pedmodel = "s_m_y_construct_02", pedanim = "WORLD_HUMAN_CAR_PARK_ATTENDANT", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1147.16, y = -2912.26, z = 12.95, h = 144.38}}, 
                [3] = {vehiclename = "caddy3"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "mini@repair", anim2 = "fixing_a_ped"}, 
            [2] = {obj = true, nameobj = "prop_tool_spanner02",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {  
                    ['tshirt_1'] = 59,  ['tshirt_2'] = 0,
                    ['torso_1'] = 146,   ['torso_2'] = 3,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 73,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 54,   ['shoes_2'] = 0,
                    ['chain_1'] = 33,    ['chain_2'] = 0,
                    ['helmet_1'] = 0,  ['helmet_2'] = 3,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 103,   ['torso_2'] = 2,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 40,
                    ['pants_1'] = 61,   ['pants_2'] = 6,
                    ['shoes_1'] = 54,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 59, texture = 0},
                        ['torso2']  = {item = 146, texture = 3},
                        ['arms']    = {item = 73, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 54, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 103, texture = 2},
                        ['arms']    = {item = 40, texture = 0},
                        ['pants']   = {item = 61, texture = 6},
                        ['shoes']   = {item = 54, texture = 0},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Junkyard",img =  "./img/junkyard.png",img2 =  "./img/junkyard2.png",info = "There is still a lot of scrap metal to scrap and sell in the old junkyard. New merchandise arrives every day. It is a dirty but honourable job." },
            
        [2] = { 
            [1] = {Workclothes = {{x = 2404.82, y = 3127.34, z = 48.15},nameblip = "~h~[JOB]~h~ Work clothes"}},        

            [2] = {payout = {{x = 2339.65, y = 3049.59, z = 47.15, h = 0.81},pedmodel = "a_m_m_indian_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },   

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_rub_scrap_06",
                nameblip = "Scrap",
                text = "Press ~h~[E]~h~",                                                                
                { x = 2389.01, y = 3051.03, z = 48.29, objZ= 1 , take = false}, { x = 2419.37, y = 3050.66, z = 48.15, objZ= 1 , take = false}, {x = 2400.05, y = 3032.53, z = 48.15, objZ= 1 , take = false},
                  
                { x = 2396.15, y = 3097.78, z = 48.15, objZ= 1 , take = false}, { x = 2393.72, y = 3073.63, z = 48.15, objZ= 1 , take = false}, {x = 2354.17, y = 3031.72, z = 48.19, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = 2347.59, y = 3074.49, z = 47.15, h = 292.11}, pedmodel = "s_m_m_trucker_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 2353.49, y = 3072.39, z = 47.16, h = 277.75}}, 
                [3] = {vehiclename = "Scrap"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "missheistdockssetup1ig_10@base", anim2 = "talk_pipe_base_worker1"}, 
            [2] = {obj = true, nameobj = "prop_tool_drill",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = -195.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = { 
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 2,
                    ['torso_1'] = 5,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 67,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 54,   ['shoes_2'] = 0,
                    ['chain_1'] = 33,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 3,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 20,  ['tshirt_2'] = 1,
                    ['torso_1'] = 160,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 40,
                    ['pants_1'] = 40,   ['pants_2'] = 1,
                    ['shoes_1'] = 51,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 2},
                        ['torso2']  = {item = 5, texture = 0},
                        ['arms']    = {item = 67, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 54, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 20, texture = 1},
                        ['torso2']  = {item = 160, texture = 0},
                        ['arms']    = {item = 40, texture = 0},
                        ['pants']   = {item = 40, texture = 1},
                        ['shoes']   = {item = 51, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Carpenter",img =  "./img/carpenter.png",img2 =  "./img/carpenter2.png",info = "In the sawmill, carpenters are needed to deal with the raw way. They have even thought of creating furniture with the treated wood - it's a good job!" },
            
        [2] = { 
            [1] = {Workclothes = {{x = -560.56, y = 5282.29, z = 73.05},nameblip = "~h~[JOB]~h~ Work clothes"}},          

            [2] = {payout = {{x = -501.21, y = 5307.89, z = 79.59, h = 213.60},pedmodel = "s_m_m_autoshop_01", pedanim = "WORLD_HUMAN_CLIPBOARD", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "",
                nameblip = "Failure",    
                text = "Press ~h~[E]~h~",                                                                
                { x = -505.59, y = 5264.03, z = 80.64, objZ= 1 , take = false}, { x = -506.31, y = 5261.60, z = 80.61, objZ= 1 , take = false}, {x = -502.84, y = 5256.47, z = 80.61, objZ= 1 , take = false},
                  
                { x = -496.83, y = 5271.74, z = 80.61, objZ= 1 , take = false}, { x = -500.45, y = 5275.69, z = 80.61, objZ= 1 , take = false}, {x = -501.91, y = 5297.74, z = 80.58, objZ= 1 , take = false},
            }},
           
            [4] = {    
                [1] = {getvehicle =  {{x = -568.08, y = 5253.49, z = 69.49, h = 60.11}, pedmodel = "s_m_y_construct_02", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -581.58, y = 5245.37, z = 70.47, h = 69.47}}, 
                [3] = {vehiclename = "Rebel"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "amb@world_human_hammering@male@base", anim2 = "base"}, 
            [2] = {obj = true, nameobj = "prop_tool_hammer",  objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = -1000.0, objrotY = 0.0,objrotZ = -530.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {  
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 2,
                    ['torso_1'] = 224,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 85,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 54,   ['shoes_2'] = 0,
                    ['chain_1'] = 33,    ['chain_2'] = 0,
                    ['helmet_1'] = 14,  ['helmet_2'] = 3,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 118,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 42,
                    ['pants_1'] = 38,   ['pants_2'] = 1,
                    ['shoes_1'] = 52,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 2},
                        ['torso2']  = {item = 224, texture = 0},
                        ['arms']    = {item = 85, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 54, texture = 0},
                        ['hat'] = {item = 14, texture = 3},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 118, texture = 0},
                        ['arms']    = {item = 42, texture = 0},
                        ['pants']   = {item = 38, texture = 1},
                        ['shoes']   = {item = 52, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Harvest",img =  "./img/harvest.png",img2 =  "./img/harvest2.png",info = "The city's vineyards need many people to help pick all the grapes to make wine. Your job is simple, cut the bunches of grapes and store them well for further processing." },
          
        [2] = {     
            [1] = {Workclothes = {{x = -1940.86, y = 1881.38, z = 180.57},nameblip = "~h~[JOB]~h~ Work clothes"}},          
              
            [2] = {payout = {{x = -1972.89, y = 1828.50, z = 181.51, h = 175.60},pedmodel = "a_m_m_hillbilly_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "",
                nameblip = "Grapes",    
                text = "Press ~h~[E]~h~",                                                                                                                               
                { x = -1929.07, y = 1843.07, z = 169.82, objZ= 1 , take = false}, { x = -1895.27, y = 1866.77, z = 161.68, objZ= 1 , take = false}, {x = -1879.86, y = 1881.01, z = 158.44, objZ= 1 , take = false},
                  
                { x = -1865.65, y = 1887.82, z = 153.67, objZ= 1 , take = false}, { x = -1865.85, y = 1902.10, z = 155.49, objZ= 1 , take = false}, {x = -1889.83, y = 1896.24, z = 164.24, objZ= 1 , take = false},  
            }},
           
            [4] = {    
                [1] = {getvehicle =  {{x = -1926.28, y = 1828.35, z = 167.10, h = 56.21}, pedmodel = "a_m_m_farmer_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1945.18, y = 1821.08, z = 171.05, h = 79.18}}, 
                [3] = {vehiclename = "Bodhi2"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "missmechanic", anim2 = "work2_base"}, 
            [2] = {obj = true, nameobj = "p_cs_scissors_s",  objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = -300.0, objrotY = -2020.0,objrotZ = 330.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 238,   ['torso_2'] = 2,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 21,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 35,   ['shoes_2'] = 1,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 118,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 42,
                    ['pants_1'] = 45,   ['pants_2'] = 1,
                    ['shoes_1'] = 36,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 238, texture = 2},
                        ['arms']    = {item = 21, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 35, texture = 1},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 118, texture = 0},
                        ['arms']    = {item = 42, texture = 0},
                        ['pants']   = {item = 45, texture = 1},
                        ['shoes']   = {item = 36, texture = 0},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Digger",img =  "./img/digger.png",img2 =  "./img/digger2.png",info = "Windmill erectors need an excavator to remove some tree stumps from the area where the windmills are to be erected. You will need to use a lot of strength and a good shovel." },
            
        [2] = {    
            [1] = {Workclothes = {{x = 2485.92, y = 1566.09, z = 32.72},nameblip = "~h~[JOB]~h~ Work clothes"}},          

            [2] = {payout = {{x = 2480.89, y = 1487.24, z = 35.20, h = 307.51},pedmodel = "s_m_m_autoshop_01", pedanim = "WORLD_HUMAN_CLIPBOARD", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_tree_stump_01",
                nameblip = "Wooden stump",    
                text = "Press ~h~[E]~h~",                                                                           
                { x = 2476.83, y = 1540.26, z = 35.08, objZ= 2 , take = false}, { x = 2463.22, y = 1544.78, z = 34.87, objZ= 2 , take = false}, {x = 2470.26, y = 1531.46, z = 34.95, objZ= 2 , take = false},
                  
                { x = 2468.31, y = 1525.02, z = 34.97, objZ= 2 , take = false}, { x = 2444.44, y = 1517.44, z = 35.12, objZ= 2 , take = false}, {x = 2438.39, y = 1524.15, z = 34.97, objZ= 2 , take = false},
            }},     
           
            [4] = {      
                [1] = {getvehicle =  {{x = 2495.64, y = 1590.51, z = 31.72, h = 228.95}, pedmodel = "s_m_y_construct_02", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 2501.52, y = 1601.01, z = 31.40, h = 179.92}}, 
                [3] = {vehiclename = "Rebel"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "anim@amb@drug_field_workers@rake@male_a@base", anim2 = "base"}, 
            [2] = {obj = true, nameobj = "prop_tool_shovel",  objX = 0.1, objY = 0.0, objZ = 0.0, objrotX = -960.0, objrotY = -400.0, objrotZ = 360.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 238,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 21,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 35,   ['shoes_2'] = 1,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = 60,  ['helmet_2'] = 4,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 118,   ['torso_2'] = 2,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 42,
                    ['pants_1'] = 45,   ['pants_2'] = 3,
                    ['shoes_1'] = 36,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 238, texture = 0},
                        ['arms']    = {item = 21, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 35, texture = 1},
                        ['hat'] = {item = 60, texture = 4},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 118, texture = 0},
                        ['arms']    = {item = 42, texture = 0},
                        ['pants']   = {item = 45, texture = 3},
                        ['shoes']   = {item = 36, texture = 0},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Stable",img =  "./img/stable.png",img2 =  "./img/stable2.png",info = "A large mansion on the outskirts of the city needs a stable hand to help with the stables. It will be hard work but it will pay well enough." },
          
        [2] = {       
            [1] = {Workclothes = {{x = 1443.94, y = 1131.38, z = 114.33},nameblip = "~h~[JOB]~h~ Work clothes"}},          
              
            [2] = {payout = {{x = 1410.57, y = 1122.69, z = 113.84, h = 229.82},pedmodel = "g_m_m_korboss_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_offroad_bale01",
                nameblip = "Straw bale",      
                text = "Press ~h~[E]~h~",                                                                                                                                       
                { x = 1469.98, y = 1137.86, z = 114.32, objZ= 1 , take = false}, { x = 1459.63, y = 1137.65, z = 114.32, objZ= 1 , take = false}, {x = 1460.84, y = 1087.42, z = 114.33, objZ= 1 , take = false},
                  
                { x = 1461.11, y = 1043.73, z = 114.33, objZ= 1 , take = false}, { x = 1489.48, y = 1037.19, z = 114.15, objZ= 1 , take = false}, {x = 1454.15, y = 1104.69, z = 114.33, objZ= 1 , take = false},  
            }},   
              
            [4] = {    
                [1] = {getvehicle =  {{x = 1483.89, y = 1129.91, z = 113.33, h = 76.95}, pedmodel = "a_m_m_farmer_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 1477.44, y = 1131.80, z = 113.33, h = 89.44}}, 
                [3] = {vehiclename = "Freecrawler"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "amb@world_human_janitor@male@idle_a", anim2 = "idle_a"}, 
            [2] = {obj = true, nameobj = "prop_tool_shovel",   objX = 0.1, objY = 0.0, objZ = 0.0, objrotX = -960.0, objrotY = -400.0, objrotZ = 360.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {   
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 2,
                    ['torso_1'] = 239,   ['torso_2'] = 19,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 114,
                    ['pants_1'] = 82,   ['pants_2'] = 0,
                    ['shoes_1'] = 88,   ['shoes_2'] = 1,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 180,  ['tshirt_2'] = 0,
                    ['torso_1'] = 134,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 20,
                    ['pants_1'] = 54,   ['pants_2'] = 2,
                    ['shoes_1'] = 45,   ['shoes_2'] = 4,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 2},
                        ['torso2']  = {item = 239, texture = 19},
                        ['arms']    = {item = 114, texture = 0},
                        ['pants']   = {item = 82, texture = 0},
                        ['shoes']   = {item = 88, texture = 1},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 180, texture = 0},
                        ['torso2']  = {item = 134, texture = 0},
                        ['arms']    = {item = 20, texture = 0},
                        ['pants']   = {item = 54, texture = 2},
                        ['shoes']   = {item = 45, texture = 4},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Delivery",img =  "./img/delivery.png",img2 =  "./img/delivery2.png",info = "Local burger shop is looking for delivery drivers for its premises. You will be delivering food to customers who order from home." },
          
        [2] = {       
            [1] = {Workclothes = {{x = -1177.79, y = -891.41, z = 13.77},nameblip = "~h~[JOB]~h~ Work clothes"}},             
              
            [2] = {payout = {{x = -1200.40, y = -884.55, z = 12.28, h = 41.03},pedmodel = "csb_bryony", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "prop_offroad_bale01",
                nameblip = "Delivery",        
                text = "Press ~h~[E]~h~",              
                { x = -1034.74, y = -1147.15, z = 2.16, objZ= 0 , take = false}, { x = -1064.18, y = -1159.35, z = 2.16, objZ= 1 , take = false}, {x = -1068.74, y = -1162.39, z = 2.16, objZ= 1 , take = false},
                  
                { x = -1113.94, y = -1193.87, z = 2.38, objZ= 1 , take = false}, { x = -1225.51, y = -1208.38, z = 8.27, objZ= 2 , take = false}, {x = -1219.40, y = -1233.53, z = 7.04, objZ= 1 , take = false},  
            }},           
              
            [4] = {    
                [1] = {getvehicle =  {{x = -1181.85, y = -883.08, z = 12.80, h = 308.46}, pedmodel = "csb_burgerdrug", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1173.06, y = -877.01, z = 13.11, h = 116.37}}, 
                [3] = {vehiclename = "Bagger"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "mp_common", anim2 = "givetake1_a"}, 
            [2] = {obj = true, nameobj = "prop_food_bs_bag_01",   objX = 0.35, objY = 0.11, objZ = 0.0, objrotX = 100.0, objrotY = 300.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = { 
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 2,
                    ['torso_1'] = 9,   ['torso_2'] = 14,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 74,
                    ['pants_1'] = 105,   ['pants_2'] = 0,
                    ['shoes_1'] = 77,   ['shoes_2'] = 3,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['helmet_1'] = -1,  ['helmet_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
                    ['torso_1'] = 36,   ['torso_2'] = 0,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 11,
                    ['pants_1'] = 43,   ['pants_2'] = 0,
                    ['shoes_1'] = 43,   ['shoes_2'] = 1,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 2},
                        ['torso2']  = {item = 9, texture = 14},
                        ['arms']    = {item = 74, texture = 0},
                        ['pants']   = {item = 105, texture = 0},
                        ['shoes']   = {item = 77, texture = 3},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 14, texture = 0},
                        ['torso2']  = {item = 36, texture = 0},
                        ['arms']    = {item = 11, texture = 0},
                        ['pants']   = {item = 43, texture = 0},
                        ['shoes']   = {item = 43, texture = 1},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
    { 
        [1] = {jobs = "Warehouse",img =  "./img/warehouse.png",img2 =  "./img/warehouse2.png",info = "The small airport in the North needs extra help to move some boxes. The small warehouse is packed to the rafters and you will need to pick up the boxes and put them in the van for transport." },
          
        [2] = {         
            [1] = {Workclothes = {{x = 2122.47, y = 4781.95, z = 40.97},nameblip = "~h~[JOB]~h~ Work clothes"}},             
              
            [2] = {payout = {{x = -1200.40, y = -884.55, z = 12.28, h = 41.03},pedmodel = "csb_bryony", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "hei_prop_drug_statue_box_big",
                nameblip = "Boxes",        
                text = "Press ~h~[E]~h~",                                 
                { x = 2145.29, y = 4774.70, z = 41.01, objZ= 1 , take = false}, { x = 2144.67, y = 4776.16, z = 40.98, objZ= 1 , take = false}, {x = 2143.07, y = 4785.46, z = 40.97, objZ= 1 , take = false},
                  
                { x = 2140.40, y = 4789.42, z = 40.97, objZ= 1 , take = false}, { x = 2137.98, y = 4772.30, z = 40.99, objZ= 1 , take = false}, {x = 2141.74, y = 4772.87, z = 41.02, objZ= 1 , take = false},  
            }},           
              
            [4] = {    
                [1] = {getvehicle =  {{x = 2114.13, y = 4764.13, z = 40.06, h = 70.52}, pedmodel = "mp_m_weapexp_01", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 2102.72, y = 4758.42, z = 40.16, h = 13.73}}, 
                [3] = {vehiclename = "youga3"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "amb@world_human_gardener_plant@male@enter", anim2 = "enter"}, 
            [2] = {obj = true, nameobj = "gr_prop_gr_tape_01",   objX = 0.2, objY = 0.0, objZ = 0.00, objrotX = 90.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {Pay = 1550, IncreasePerLVL = 1},
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['esx'] = {
                male = {  
                    ['tshirt_1'] = 59,  ['tshirt_2'] = 0,
                    ['torso_1'] = 146,   ['torso_2'] = 3,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 73,
                    ['pants_1'] = 47,   ['pants_2'] = 0,
                    ['shoes_1'] = 54,   ['shoes_2'] = 0,
                    ['chain_1'] = 33,    ['chain_2'] = 0,
                    ['helmet_1'] = 0,  ['helmet_2'] = 3,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                },
                female = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 54,   ['torso_2'] = 3,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 21,
                    ['pants_1'] = 45,   ['pants_2'] = 1,
                    ['shoes_1'] = 36,   ['shoes_2'] = 0,
                    ['chain_1'] = -1,    ['chain_2'] = 0,
                    ['helmet_1'] = 53,  ['helmet_2'] = 0,
                    ['bproof_1'] = 0,  ['bproof_2'] = 0,
                }
            },

            ['qb'] = {
                male = {
                    outfitData = {
                        ['t-shirt'] = {item = 59, texture = 0},
                        ['torso2']  = {item = 146, texture = 3},
                        ['arms']    = {item = 73, texture = 0},
                        ['pants']   = {item = 47, texture = 0},
                        ['shoes']   = {item = 54, texture = 0},
                        ['hat'] = {item = 0, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                },
                female = {
                    outfitData = {
                        ['t-shirt'] = {item = 15, texture = 0},
                        ['torso2']  = {item = 54, texture = 3},
                        ['arms']    = {item = 21, texture = 0},
                        ['pants']   = {item = 45, texture = 1},
                        ['shoes']   = {item = 36, texture = 0},
                        ['hat'] = {item = 53, texture = 0},
                        ['bag'] = {item = 0, texture = 0},
                        ['glass'] = {item = 0, texture = 0},
                        ['mask'] = {item = 0, texture = 0},
                        ['vest'] = {item = 0, texture = 0},
                    }
                }
            }           
        },
    },
}