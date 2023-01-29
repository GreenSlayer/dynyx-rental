local QBCore = exports['qb-core']:GetCoreObject()
local SpawnVehicle = false


CreateThread(function()
  exports['qb-target']:AddBoxZone("rentvehicle", vector3(110.51, -1091.03, 29.3), 1.5, 1.5, {
    name = "rentvehicle",
    heading = 15,
    debugPoly = false,
    minZ = 27.0,
    maxZ = 32.0,
  }, {
    options = {
      {
        type = "client",
        event = "dynyx-rental:OpenCarRental",
        icon = 'fas fa-car',
        label = 'Rent Vehicle'
      },
    },
    distance = 2.0
  })
  exports['qb-target']:AddBoxZone("rentAir", vector3(-1621.33, -3152.94, 13.99), 1.5, 1.5, {
    name = "rentAir",
    heading = 0,
    debugPoly = false,
    minZ = 10.0,
    maxZ = 15.0,
  }, {
    options = {
      {
        type = "client",
        event = "dynyx-rental:OpenAirRental",
        icon = 'fas fa-plane',
        label = 'Rent Vehicle'
      },
    },
    distance = 2.0
  })
end)


RegisterNetEvent('dynyx-rental:OpenCarRental', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Buffalo",
          txt = "$750.00",
          params = {
              event = "dynyx-rental:RentBuffalo",
          }
      },
      {
          id = 2,
          header = "Bison",
          txt = "$500.00",
          params = {
              event = "dynyx-rental:RentBison",
          }
      },
      {
          id = 3,
          header = "Sanchez",
          txt = "$2500.00",
          params = {
              event = "dynyx-rental:RentSanchez",
          }
      },
      {
          id = 4,
          header = "Futo",
          txt = "$600.00",
          params = {
              event = "dynyx-rental:RentFuto",
          }
      },
      {
        id = 5,
        header = "Moped",
        txt = "$750.00",
        params = {
            event = "dynyx-rental:RentMoped",
        }
    },
    {
      id = 6,
      header = "Limo",
      txt = "$1500.00",
      params = {
          event = "dynyx-rental:RentLimo",
      }
  },
  {
    id = 7,
    header = "Tour Bus",
    txt = "$800.00",
    params = {
        event = "dynyx-rental:RentTourBus",
    }
},
{
  id = 8,
  header = "Taco Truck",
  txt = "$800.00",
  params = {
      event = "dynyx-rental:RentTaco",
  }
},
{
  id = 9,
  header = "Shuttle Bus",
  txt = "$800.00",
  params = {
      event = "dynyx-rental:RentRentalBus",
  }
},
{
  id = 10,
  header = "Return Vehicle",
  params = {
      event = "dynyx-rental:ReturnVehicle",

  }
},
  })
end)




RegisterNetEvent('dynyx-rental:RentBuffalo', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'buffalo',
              money = config.VehiclePrices.buffalo,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentBison', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'bison',
              money = config.VehiclePrices.bison,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentFuto', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'futo',
              money = config.VehiclePrices.futo,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentSanchez', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'sanchez',
              money = config.VehiclePrices.sanchez,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentMoped', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'faggio',
              money = config.VehiclePrices.faggio,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentLimo', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'stretch',
              money = config.VehiclePrices.stretch,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentTourBus', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'tourbus',
              money = config.VehiclePrices.tourbus,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentTaco', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",
          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'taco',
              money = config.VehiclePrices.taco,
          }
        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentRentalBus', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenCarRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startrental",
            args = {
              model = 'rentalbus',
              money = config.VehiclePrices.rentalbus,
          }

        }
    },
  })
end)


--Ped Spawn for vehicle rental

CreateThread(function()
  RequestModel( GetHashKey( config.RentalLocations.cars.pedname ) )
  while ( not HasModelLoaded( GetHashKey( config.RentalLocations.cars.pedname ) ) ) do
      Citizen.Wait( 1 )
  end
  carrental = CreatePed(1, config.RentalLocations.cars.pedhash, config.RentalLocations.cars.pedspawn, false, true)
  FreezeEntityPosition(carrental, true)
  SetEntityInvincible(carrental, true)
  SetBlockingOfNonTemporaryEvents(carrental, true)
  TaskStartScenarioInPlace(carrental, 'WORLD_HUMAN_CLIPBOARD', 0, true)
end)



RegisterNetEvent('dynyx-rental:startrental')
AddEventHandler('dynyx-rental:startrental', function(data)
  local money =data.money
  local model = data.model
  local player = PlayerPedId()
  if IsAnyVehicleNearPoint(config.RentalLocations.cars.vehiclespawn.x, config.RentalLocations.cars.vehiclespawn.y, config.RentalLocations.cars.vehiclespawn.z, 2.5) then
    QBCore.Functions.Notify("There is a Vehicle in the Way.", "error")
    return
  end

  if IsAnyPedNearPoint(config.RentalLocations.cars.vehiclespawn.x, config.RentalLocations.cars.vehiclespawn.y, config.RentalLocations.cars.vehiclespawn.z, 2.5) then
    QBCore.Functions.Notify("There is a Player in the way.", "error")
    return
  end

  QBCore.Functions.TriggerCallback("dynyx-rental:CheckMoney",function(money)
    if money then
      QBCore.Functions.SpawnVehicle(model, function(vehicle)
        QBCore.Functions.Progressbar("random_task", "Renting Vehicle", 3000, false, true, {
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
        }, {
          animDict = "mp_action",
          anim = "thanks_male_06",
          flags = 18,
       }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_action", "thanks_male_06", 1.0)
      end, function() -- Cancel
         StopAnimTask(PlayerPedId(), "mp_action", "thanks_male_06", 1.0)
       end)
        SetEntityHeading(vehicle, 340.0)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicle))
        exports[config.Fuelexport]:SetFuel(vehicle, 100.0)
        SpawnVehicle = true
      end, config.RentalLocations.cars.vehiclespawn, true)
      Wait(1000)
      local vehicle = GetVehiclePedIsIn(player, false)
      TriggerServerEvent('dynyx-rental:getpapers', GetVehicleNumberPlateText(vehicle), model)
    else
      QBCore.Functions.Notify("Not Enough Money", "error")
    end
  end, money)
end)

RegisterNetEvent('dynyx-rental:ReturnVehicle', function()
  if SpawnVehicle then
    QBCore.Functions.Progressbar("random_task", "Returning Keys", 3000, false, true, {
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
    }, {
      animDict = "random@atm_robbery@return_wallet_male",
      anim = "return_wallet_positive_a_male",
      flags = 18,
   }, {}, {}, function() -- Done
    StopAnimTask(PlayerPedId(), "random@atm_robbery@return_wallet_male", "return_wallet_positive_a_male", 1.0)
  end, function() -- Cancel
     StopAnimTask(PlayerPedId(), "random@atm_robbery@return_wallet_male", "return_wallet_positive_a_male", 1.0)
   end)
      local Player = QBCore.Functions.GetPlayerData()
      QBCore.Functions.Notify("Thanks for returning the vehicle", "success")
      TriggerServerEvent('dynyx-rental:takepapers')
      local car = GetVehiclePedIsIn(PlayerPedId(),true)
      NetworkFadeOutEntity(car, true,false)
      Citizen.Wait(3000)
      QBCore.Functions.DeleteVehicle(car)
  else 
    QBCore.Functions.Notify("There is no Vehicle to Return", "error")
  end
  SpawnVehicle = false
end)


CreateThread(function()
  MakeBlips()
end)

function MakeBlips()
  CarRentalBlip = AddBlipForCoord(vector3(111.4223, -1081.24, 29.192))
  SetBlipSprite (CarRentalBlip, 225)
  SetBlipDisplay(CarRentalBlip, 6)
  SetBlipScale  (CarRentalBlip, 0.65)
  SetBlipAsShortRange(CarRentalBlip, true)
  SetBlipColour(CarRentalBlip, 50)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentSubstringPlayerName('Car Rental')
  EndTextCommandSetBlipName(CarRentalBlip)

  AirRentalBlip = AddBlipForCoord(vector3(-1621.42, -3152.44, 13.99))
  SetBlipSprite (AirRentalBlip, 307)
  SetBlipDisplay(AirRentalBlip, 6)
  SetBlipScale  (AirRentalBlip, 0.85)
  SetBlipAsShortRange(AirRentalBlip, true)
  SetBlipColour(AirRentalBlip, 69)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentSubstringPlayerName('Aircraft Rentals')
  EndTextCommandSetBlipName(AirRentalBlip)
end  

----------------------------------------------------------------- AIR RENTAL


RegisterNetEvent('dynyx-rental:OpenAirRental', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Micro Light (Plane)",
          txt = "$2500.00",
          params = {
              event = "dynyx-rental:RentMicroLight",
          }
      },
      {
          id = 2,
          header = "Duster (Plane)",
          txt = "$3000.00",
          params = {
              event = "dynyx-rental:RentDuster",
          }
      },
      {
          id = 3,
          header = "Mammatus (Plane)",
          txt = "$5000.00",
          params = {
              event = "dynyx-rental:RentMammatus",
          }
      },
      {
          id = 4,
          header = "Stunt (Plane)",
          txt = "$4000.00",
          params = {
              event = "dynyx-rental:RentStunt",
          }
      },
      {
        id = 5,
        header = "Shamal (Plane)",
        txt = "$7500.00",
        params = {
            event = "dynyx-rental:RentShamal",
        }
    },
    {
      id = 6,
      header = "Velum (Plane)",
      txt = "$6500.00",
      params = {
          event = "dynyx-rental:RentVelum",
      }
  },
  {
    id = 7,
    header = "Vestra (Plane)",
    txt = "$6500.00",
    params = {
        event = "dynyx-rental:RentVestra",
    }
},
{
  id = 8,
  header = "Alpha Z1 (Plane)",
  txt = "$10000.00",
  params = {
      event = "dynyx-rental:RentAlphaZ1",
  }
},
{
  id = 9,
  header = "Dodo (Plane)",
  txt = "$5000.00",
  params = {
      event = "dynyx-rental:RentDodo",
  }
},
{
  id = 10,
  header = "Sea Sparrow (Helicopters)",
  txt = "$2500.00",
  params = {
      event = "dynyx-rental:RentSeaSparrow",
  }
},
{
  id = 11,
  header = "Sparrow (Helicopters)",
  txt = "$2000.00",
  params = {
      event = "dynyx-rental:RentSparrow",
  }
},
{
  id = 12,
  header = "Frogger (Helicopters)",
  txt = "$3500.00",
  params = {
      event = "dynyx-rental:RentFrogger",
  }
},
{
  id = 13,
  header = "Havok (Helicopters)",
  txt = "$2000.00",
  params = {
      event = "dynyx-rental:RentHavok",
  }
},
{
  id = 14,
  header = "Return Vehicle",
  params = {
      event = "dynyx-rental:ReturnVehicle",

  }
},
  })
end)

RegisterNetEvent('dynyx-rental:RentMicroLight', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'microlight',
              money = config.VehiclePrices.microlight,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentDuster', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'duster',
              money = config.VehiclePrices.duster,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentMammatus', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'mammatus',
              money = config.VehiclePrices.mammatus,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentStunt', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'stunt',
              money = config.VehiclePrices.stunt,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentShamal', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'shamal',
              money = config.VehiclePrices.shamal,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:Rentvelum', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'velum',
              money = config.VehiclePrices.velum,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentVestra', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'vestra',
              money = config.VehiclePrices.vestra,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentAlphaZ1', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'alphaz1',
              money = config.VehiclePrices.alphaz1,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentDodo', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'dodo',
              money = config.VehiclePrices.dodo,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentSeaSparrow', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'seasparrow',
              money = config.VehiclePrices.seasparrow,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentSparrow', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'seasparrow2',
              money = config.VehiclePrices.seasparrow2,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentHavok', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'havok',
              money = config.VehiclePrices.havok,
          }

        }
    },
  })
end)

RegisterNetEvent('dynyx-rental:RentFrogger', function()
  exports['qb-menu']:openMenu({
      {
          id = 1,
          header = "Back",
          params = {
              event = "dynyx-rental:OpenAirRental",

          }
      },
      {
        id = 2,
        header = "Confirm Purchase",
        params = {
            event = "dynyx-rental:startAirRental",
            args = {
              model = 'frogger',
              money = config.VehiclePrices.frogger,
          }

        }
    },
  })
end)

-- Ped Spawn for Aircraft 

CreateThread(function()
  RequestModel( GetHashKey( config.RentalLocations.aircrafts.pedname ) )
  while ( not HasModelLoaded( GetHashKey( config.RentalLocations.aircrafts.pedname ) ) ) do
      Citizen.Wait( 1 )
  end
  aircraftrental = CreatePed(1, config.RentalLocations.aircrafts.pedhash, config.RentalLocations.aircrafts.pedspawn, false, true)
  FreezeEntityPosition(aircraftrental, true)
  SetEntityInvincible(aircraftrental, true)
  SetBlockingOfNonTemporaryEvents(aircraftrental, true)
  TaskStartScenarioInPlace(aircraftrental, 'WORLD_HUMAN_CLIPBOARD', 0, true)
end)

RegisterNetEvent('dynyx-rental:startAirRental', function(data)
  local player = PlayerPedId()
  local money = data.money
  local model = data.model
  if IsAnyVehicleNearPoint(config.RentalLocations.aircrafts.vehiclespawn.x, config.RentalLocations.aircrafts.vehiclespawn.y, config.RentalLocations.aircrafts.vehiclespawn.z, 2.5) then
    QBCore.Functions.Notify("There is a Vehicle in the Way.", "error")
    return
  end

  if IsAnyPedNearPoint(config.RentalLocations.aircrafts.vehiclespawn.x, config.RentalLocations.aircrafts.vehiclespawn.y, config.RentalLocations.aircrafts.vehiclespawn.z, 2.5) then
    QBCore.Functions.Notify("There is a Player in the way.", "error")
    return
  end

  QBCore.Functions.TriggerCallback("dynyx-rental:CheckMoney",function(money)
    if money then
      QBCore.Functions.SpawnVehicle(model, function(vehicle)
        QBCore.Functions.Progressbar("random_task", "Renting AirCraft", 3000, false, true, {
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
        }, {
          animDict = "mp_action",
          anim = "thanks_male_06",
          flags = 18,
       }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_action", "thanks_male_06", 1.0)
      end, function() -- Cancel
         StopAnimTask(PlayerPedId(), "mp_action", "thanks_male_06", 1.0)
       end)
        SetEntityHeading(vehicle, 340.0)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicle))
        exports[config.Fuelexport]:SetFuel(vehicle, 100.0)
        SpawnVehicle = true
      end, config.RentalLocations.aircrafts.vehiclespawn, true)
      Wait(1000)
      local vehicle = GetVehiclePedIsIn(player, false)
      TriggerServerEvent('dynyx-rental:getpapers', GetVehicleNumberPlateText(vehicle), model)
    else
      QBCore.Functions.Notify("Not Enough Money", "error")
    end
  end, money)
end)