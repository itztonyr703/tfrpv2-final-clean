QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 550
            },
			['1'] = {
                name = 'Officer',
                payment = 600
            },
			['2'] = {
                name = 'Sergeant',
                payment = 650
            },
			['3'] = {
                name = 'Lieutenant',
				bankAuth = true,
                payment = 700
            },
			['4'] = {
                name = 'Chief',
				isboss = true,
				bankAuth = true,
                payment = 750
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 550
            },
			['1'] = {
                name = 'Paramedic',
                payment = 600
            },
			['2'] = {
                name = 'Doctor',
                payment = 650
            },
			['3'] = {
                name = 'Surgeon',
				bankAuth = true,
                payment = 700
            },
			['4'] = {
                name = 'Chief',
				isboss = true,
				bankAuth = true,
                payment = 750
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'House Sales',
                payment = 175
            },
			['2'] = {
                name = 'Business Sales',
                payment = 200
            },
			['3'] = {
                name = 'Broker',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
				bankAuth = true,
                payment = 300
            },
        },
	},
	['beanmachine'] = {
		label = 'Beanmachine',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Decaf',
                payment = 150
            },
			['1'] = {
                name = 'Regular',
                payment = 175
            },
			['2'] = {
                name = 'Expresso',
                payment = 200
            },
			['3'] = {
                name = 'Manager',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
				bankAuth = true,
                payment = 500
            },
        },
	},
	['vanilla'] = {
		label = 'Vanilla',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Dancer',
                payment = 150
            },
			['1'] = {
                name = 'Bartender',
                payment = 175
            },
			['2'] = {
                name = 'Security',
                payment = 200
            },
			['3'] = {
                name = 'Manager',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
				bankAuth = true,
                payment = 500
            },
        },
	},
	['burgershot'] = {
		label = 'Burgershot Employee',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Burger Flipper',
                payment = 175
            },
			['2'] = {
                name = 'Experienced',
                payment = 200
            },
			['3'] = {
                name = 'Manager',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
				bankAuth = true,
                payment = 500
            },
        },
	},
	['coretto'] = {
		label = 'Cafe Coretto',
		defaultDuty = true,
		grades = {
            ['0'] = { 
			name = 'Recruit', 
			payment = 150 
			},
			['1'] = { 
			name = 'Novice', 
			payment = 175
			},
			['2'] = { 
			name = 'Experienced', 
			payment = 200 
			},
			['3'] = { 
			name = 'Advanced', 
			bankAuth = true,
			payment = 225 
			},
			['4'] = { 
			name = 'CEO', 
			isboss = true,
			bankAuth = true,			
			payment = 500 
			},
        },
	},
	["billiards"] = {
		label = "Red Tails",
		defaultDuty = true,
		grades = {
			['0'] = {
				name = 'Trial',
				payment = 150
		},
			['1'] = {
				name = 'Apprentice Bartender',
				payment = 175
		},
			['2'] = {
				name = 'Bartender',
				payment = 200
        },
			['3'] = {
				name = 'Manager',
                isboss = true,
				bankAuth = true,
				payment = 225
		},
			['4'] = {
				name = 'Owner',
				isboss = true,
				bankAuth = true,
				payment = 500
			},
		},
	},
	['whitewidow'] = {
		label = 'White Widow Employee',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Bud Picker',
                payment = 175
            },
			['2'] = {
                name = 'Experienced',
                payment = 200
            },
			['3'] = {
                name = 'Manager',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
				bankAuth = true,
                payment = 500
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Driver',
                payment = 175
            },
			['2'] = {
                name = 'Event Driver',
                payment = 200
            },
			['3'] = {
                name = 'Sales',
                payment = 225
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 300
            },
        },
	},
	['casino'] = {
		label = 'Casino Employee',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Texas Hold Em',
                payment = 150
            },
			['1'] = {
                name = 'Craps',
                payment = 175
            },
			['2'] = {
                name = 'Poker',
                payment = 200
            },
			['3'] = {
                name = 'Roulette',
                payment = 225
            },
			['4'] = {
                name = 'CEO',
				isboss = true,
                payment = 300
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 150
            },
		},
	},
	 ['trucking'] = {
		label = 'Trucking',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 150
            },
		},
	},
	["gotur"] = {
	label = "Götür",
	defaultDuty = true,
	grades = {
        ['0'] = {
                name = "Messenger",
                payment = 150
            },
	['1'] = {
                name = "Manager",
		isboss = true,
                payment = 175
            },
        },
},
	['cityworker'] = {
    label = 'City Worker',
    defaultDuty = true,
    offDutyPay = false,
    grades = {
        ['0'] = {
            name = 'Employee',
            payment = 150
        },
    },
},
	['dealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 175
            },
			['2'] = {
                name = 'Business Sales',
                payment = 200
            },
			['3'] = {
                name = 'Finance',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
				bankAuth = true,
                payment = 300
            },
        },
	},
	['planedealer'] = {
		label = 'Plane Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 175
            },
			['2'] = {
                name = 'Business Sales',
                payment = 200
            },
			['3'] = {
                name = 'Finance',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
				bankAuth = true,
                payment = 250
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Novice',
                payment = 175
            },
			['2'] = {
                name = 'Experienced',
                payment = 200
            },
			['3'] = {
                name = 'Advanced',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
				bankAuth = true,
                payment = 300
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
				isboss = true,
				bankAuth = true,
                payment = 750
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
				isboss = true,
				bankAuth = true,
                payment = 750
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 150
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 150
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 150
            },
        },
	},
	['warehouse'] = {
		label = 'Warehouse Keeper',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Manager',
                isboss = true,
                payment = 100
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 150
            },
        },
	},
	['triads'] = {
		label = 'Triads',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Member',
                payment = 175
            },
			['2'] = {
                name = 'Enforcer',
                payment = 200
            },
			['3'] = {
                name = 'Officer',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Leader',
				isboss = true,
				bankAuth = true,
                payment = 500	
            },
        },
	},
	['amp'] = {
		label = 'Any Means Possible',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Member',
                payment = 175
            },
			['2'] = {
                name = 'Enforcer',
                payment = 200
            },
			['3'] = {
                name = 'Officer',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'Leader',
				isboss = true,
				bankAuth = true,
                payment = 500	
            },
        },
	},
	['jokersmc'] = {
		label = 'Jokers MC',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Member',
                payment = 175
            },
			['2'] = {
                name = 'Cabinet',
                payment = 200
            },
			['3'] = {
                name = 'VP',
				bankAuth = true,
                payment = 225
            },
			['4'] = {
                name = 'President',
				isboss = true,
				bankAuth = true,
                payment = 500	
            },
        },
	},
}

