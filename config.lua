config = {}

config.Fuelexport = "LegacyFuel" -- Your Fuel Script

config.RentalLocations = {
    cars = { -- This is the section for the car rental 
		pedname = "a_m_y_business_02", -- Ped name 
        pedhash = 0xB3B3F5E6, -- Ped Hash of the pedname
        pedspawn = vector4(110.87, -1090.64, 28.3, 36.98), -- This is where the ped spawns
        heading = 340.0, -- heading of where the vehicle spawns
        vehiclespawn = vector4(111.4223, -1081.24, 29.192, 340.0), -- Location where the vehicle spawns after being purchased
    },
	aircrafts = { -- This is the section for the aircraft rental 
		pedname = "s_m_y_pilot_01", -- Ped name 
        pedhash = 0xAB300C07, -- Ped Hash of the pedname
        pedspawn = vector4(-1621.47, -3152.91, 12.99, 50.67), -- This is where the ped spawns
        heading = 328.47, -- heading of where the vehicle spawns
        vehiclespawn = vector4(-1650.13, -3139.16, 13.99, 328.47), -- Location where the vehicle spawns after being purchased
	},
    boat = { -- This is the section for the boat rental 
		pedname = "ig_beverly", -- Ped name 
        pedhash = 0xBDA21E5C, -- Ped Hash of the pedname
        pedspawn = vector4(-803.64, -1495.89, 0.6, 293.86), -- This is where the ped spawns
        heading = 107.13, -- heading of where the vehicle spawns
        vehiclespawn = vector4(-813.58, -1508.73, -0.47, 112.02), -- Location where the vehicle spawns after being purchased
	},
    bike = { -- This is the section for the bike rental 
		pedname = "a_m_y_beach_02", -- Ped name 
        pedhash = 0x23C7DC11, -- Ped Hash of the pedname
        pedspawn = vector4(-1109.73, -1694.07, 3.56, 310.4), -- This is where the ped spawns
        heading = 317.04, -- heading of where the vehicle spawns
        vehiclespawn = vector4(-1102.61, -1699.68, 4.37, 317.04), -- Location where the vehicle spawns after being purchased
	},
}

config.CarRental = { -- This is where you will edit the price and vehicle name, you can also remove vehicles or add
    [1] = {
        header = 'Buffalo', -- Name that will show up in the menu
        carhash = 'buffalo', -- The vehicle spawn code or model name
        price = 750, -- the price to rent the vehicle
    },
    [2] = {
        header = 'Bison',
        carhash = 'bison',
        price = 500,
    },
    [3] = {
        header = 'Sanchez',
        carhash = 'sanchez',
        price = 2500,
    },
    [4] = {
        header = 'Futo',
        carhash = 'futo',
        price = 600,
    },
    [5] = {
        header = 'Moped',
        carhash = 'faggio',
        price = 750,
    },
    [6] = {
        header = 'Limo',
        carhash = 'stretch',
        price = 1500,
    },
    [7] = {
        header = 'Tour Bus',
        carhash = 'tourbus',
        price = 800,
    },
    [8] = {
        header = 'Taco Truck',
        carhash = 'taco',
        price = 800,
    },
    [9] = {
        header = 'Shuttle Bus',
        carhash = 'rentalbus',
        price = 800,
    },
}

config.AirRental = { -- This is where you will edit the price and vehicle name, you can also remove vehicles or add
    [1] = {
        header = 'Micro Light', -- Name that will show up in the menu
        carhash = 'mircolight', -- The vehicle spawn code or model name
        price = 2500, -- the price to rent the vehicle
    },
    [2] = {
        header = 'Duster',
        carhash = 'duster',
        price = 3000,
    },
    [3] = {
        header = 'Mammatus',
        carhash = 'mammatus',
        price = 5000,
    },
    [4] = {
        header = 'Stunt',
        carhash = 'stunt',
        price = 4000,
    },
    [5] = {
        header = 'Shamal',
        carhash = 'shamal',
        price = 7500,
    },
    [6] = {
        header = 'Velum',
        carhash = 'velum',
        price = 6500,
    },
    [7] = {
        header = 'Vestra',
        carhash = 'vestra',
        price = 6500,
    },
    [8] = {
        header = 'Alpha Z1',
        carhash = 'alphaz1',
        price = 10000,
    },
    [9] = {
        header = 'Dodo',
        carhash = 'dodo',
        price = 5000,
    },
    [10] = {
        header = 'Sea Sparrow',
        carhash = 'seasparrow',
        price = 2500,
    },
    [11] = {
        header = 'Sparrow',
        carhash = 'seasparrow2',
        price = 2000,
    },
    [12] = {
        header = 'Frogger',
        carhash = 'frogger',
        price = 3500,
    },
    [13] = {
        header = 'Havok',
        carhash = 'havok',
        price = 2000,
    },
}

config.BoatRental = { -- This is where you will edit the price and vehicle name, you can also remove vehicles or add
    [1] = {
        header = 'Tropic Yacht', -- Name that will show up in the menu
        carhash = 'tropic', -- The vehicle spawn code or model name
        price = 2500, -- the price to rent the vehicle
    },
    [2] = {
        header = 'Sun Trap',
        carhash = 'suntrap',
        price = 2000,
    },
    [3] = {
        header = 'Jetmax',
        carhash = 'jetmax',
        price = 4500,
    },
    [4] = {
        header = 'Speeder',
        carhash = 'speeder',
        price = 6500,
    },
    [5] = {
        header = 'Sea Shark',
        carhash = 'seashark',
        price = 3500,
    },
    [6] = {
        header = 'Dinghy Yacht',
        carhash = 'dinghy',
        price = 6000,
    },
}

config.BikeRental = { -- This is where you will edit the price and vehicle name, you can also remove vehicles or add
    [1] = {
        header = 'BMX', -- Name that will show up in the menu
        carhash = 'bmx', -- The vehicle spawn code or model name
        price = 500, -- the price to rent the vehicle
    },
    [2] = {
        header = 'Cruiser',
        carhash = 'cruiser',
        price = 1000,
    },
    [3] = {
        header = 'Fixter',
        carhash = 'fixter',
        price = 1500,
    },
    [4] = {
        header = 'Scorcher',
        carhash = 'scorcher',
        price = 2000,
    },
    [5] = {
        header = 'Pro 1',
        carhash = 'tribike',
        price = 2500,
    },
    [6] = {
        header = 'Pro 2',
        carhash = 'tribike2',
        price = 3000,
    },
    [7] = {
        header = 'Pro 2',
        carhash = 'tribike3',
        price = 4000,
    },
}





