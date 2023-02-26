local QBCore = exports['qb-core']:GetCoreObject()
local SpawnVehicle = false


--Ped Spawn
function SpawnPed()
  RequestModel( GetHashKey( config.RentalLocations.cars.pedname ) )
  while ( not HasModelLoaded( GetHashKey( config.RentalLocations.cars.pedname ) ) ) do
      Citizen.Wait( 1 )
  end
  carrental = CreatePed(1, config.RentalLocations.cars.pedhash, config.RentalLocations.cars.pedspawn, false, true)
  FreezeEntityPosition(carrental, true)
  SetEntityInvincible(carrental, true)
  SetBlockingOfNonTemporaryEvents(carrental, true)
  TaskStartScenarioInPlace(carrental, 'WORLD_HUMAN_CLIPBOARD', 0, true)

  RequestModel( GetHashKey( config.RentalLocations.aircrafts.pedname ) )
  while ( not HasModelLoaded( GetHashKey( config.RentalLocations.aircrafts.pedname ) ) ) do
      Citizen.Wait( 1 )
  end
  aircraftrental = CreatePed(1, config.RentalLocations.aircrafts.pedhash, config.RentalLocations.aircrafts.pedspawn, false, true)
  FreezeEntityPosition(aircraftrental, true)
  SetEntityInvincible(aircraftrental, true)
  SetBlockingOfNonTemporaryEvents(aircraftrental, true)
  TaskStartScenarioInPlace(aircraftrental, 'WORLD_HUMAN_CLIPBOARD', 0, true)

  RequestModel( GetHashKey( config.RentalLocations.boat.pedname ) )
  while ( not HasModelLoaded( GetHashKey( config.RentalLocations.boat.pedname ) ) ) do
      Citizen.Wait( 1 )
  end
  boatrental = CreatePed(1, config.RentalLocations.boat.pedhash, config.RentalLocations.boat.pedspawn, false, true)
  FreezeEntityPosition(boatrental, true)
  SetEntityInvincible(boatrental, true)
  SetBlockingOfNonTemporaryEvents(boatrental, true)
  TaskStartScenarioInPlace(boatrental, 'WORLD_HUMAN_CLIPBOARD', 0, true)

  RequestModel( GetHashKey( config.RentalLocations.bike.pedname ) )
  while ( not HasModelLoaded( GetHashKey( config.RentalLocations.bike.pedname ) ) ) do
      Citizen.Wait( 1 )
  end
  bikerental = CreatePed(1, config.RentalLocations.bike.pedhash, config.RentalLocations.bike.pedspawn, false, true)
  FreezeEntityPosition(bikerental, true)
  SetEntityInvincible(bikerental, true)
  SetBlockingOfNonTemporaryEvents(bikerental, true)
  TaskStartScenarioInPlace(bikerental, 'WORLD_HUMAN_CLIPBOARD', 0, true)
end

-- Blips
function RentalBlips()
  CarRentalBlip = AddBlipForCoord(config.RentalLocations.cars.pedspawn)
  SetBlipSprite (CarRentalBlip, 225)
  SetBlipDisplay(CarRentalBlip, 6)
  SetBlipScale  (CarRentalBlip, 0.65)
  SetBlipAsShortRange(CarRentalBlip, true)
  SetBlipColour(CarRentalBlip, 2)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentSubstringPlayerName('Car Rental')
  EndTextCommandSetBlipName(CarRentalBlip)

  AirRentalBlip = AddBlipForCoord(config.RentalLocations.aircrafts.pedspawn)
  SetBlipSprite (AirRentalBlip, 307)
  SetBlipDisplay(AirRentalBlip, 6)
  SetBlipScale  (AirRentalBlip, 0.65)
  SetBlipAsShortRange(AirRentalBlip, true)
  SetBlipColour(AirRentalBlip, 2)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentSubstringPlayerName('Aircraft Rentals')
  EndTextCommandSetBlipName(AirRentalBlip)

  BoatRentalBlip = AddBlipForCoord(config.RentalLocations.boat.pedspawn)
  SetBlipSprite (BoatRentalBlip, 427)
  SetBlipDisplay(BoatRentalBlip, 6)
  SetBlipScale  (BoatRentalBlip, 0.65)
  SetBlipAsShortRange(BoatRentalBlip, true)
  SetBlipColour(BoatRentalBlip, 2)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentSubstringPlayerName('Boat Rentals')
  EndTextCommandSetBlipName(BoatRentalBlip)

  BikeRentalBlip = AddBlipForCoord(config.RentalLocations.bike.pedspawn)
  SetBlipSprite (BikeRentalBlip, 226)
  SetBlipDisplay(BikeRentalBlip, 6)
  SetBlipScale  (BikeRentalBlip, 0.65)
  SetBlipAsShortRange(BikeRentalBlip, true)
  SetBlipColour(BikeRentalBlip, 2)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentSubstringPlayerName('Bike Rentals')
  EndTextCommandSetBlipName(BikeRentalBlip)
end  


CreateThread(function()
  SpawnPed()
  RentalBlips()
  exports['qb-target']:AddBoxZone("rentvehicle", config.RentalLocations.cars.pedspawn, 1.5, 1.5, {
    name = "rentvehicle",
    heading = 15,
    debugPoly = false,
    minZ = 27.0,
    maxZ = 32.0,
  }, {
    options = {
      {
        type = "client",
        event = "dynyx-rental:client:OpenCarRental",
        icon = 'fas fa-car',
        label = 'Rent Vehicle'
      },
      {
        type = "client",
        event = "dynyx-rental:ReturnVehicle",
        icon = 'fa-solid fa-rotate-left',
        label = 'Return Vehicle'
      },
    },
    distance = 2.0
  })
  exports['qb-target']:AddBoxZone("rentAir", config.RentalLocations.aircrafts.pedspawn, 1.5, 1.5, {
    name = "rentAir",
    heading = 0,
    debugPoly = false,
    minZ = 10.0,
    maxZ = 15.0,
  }, {
    options = {
      {
        type = "client",
        event = "dynyx-rental:client:OpenAirRental",
        icon = 'fas fa-plane',
        label = 'Rent Vehicle'
      },
      {
        type = "client",
        event = "dynyx-rental:ReturnVehicle",
        icon = 'fa-solid fa-rotate-left',
        label = 'Return Vehicle'
      },
    },
    distance = 2.0
  })
  exports['qb-target']:AddBoxZone("rentBoat", config.RentalLocations.boat.pedspawn, 1.5, 1.5, {
    name = "rentBoat",
    heading = 0,
    debugPoly = false,
    minZ = 0.5,
    maxZ = 3.0,
  }, {
    options = {
      {
        type = "client",
        event = "dynyx-rental:client:OpenBoatRental",
        icon = 'fa-solid fa-sailboat',
        label = 'Rent Vehicle'
      },
      {
        type = "client",
        event = "dynyx-rental:ReturnVehicle",
        icon = 'fa-solid fa-rotate-left',
        label = 'Return Vehicle'
      },
    },
    distance = 2.0
  })
  exports['qb-target']:AddBoxZone("rentBike", config.RentalLocations.bike.pedspawn, 1.5, 1.5, {
    name = "rentBike",
    heading = 0,
    debugPoly = false,
    minZ = 1.5,
    maxZ = 5.0,
  }, {
    options = {
      {
        type = "client",
        event = "dynyx-rental:client:OpenBikeRental",
        icon = 'fa-solid fa-bicycle',
        label = 'Rent Vehicle'
      },
      {
        type = "client",
        event = "dynyx-rental:ReturnVehicle",
        icon = 'fa-solid fa-rotate-left',
        label = 'Return Vehicle'
      },
    },
    distance = 3.0
  })
end)

--Emails functions

function CarRStartEmail()
  TriggerServerEvent('qb-phone:server:sendNewMail', {
    sender = 'Car Rental',
    subject = 'Purchase Complete',
    message = 'Thanks you for your purchase, be sure to return your rental vehicle.',
    button = {}
})
end

function AirRStartEmail()
  TriggerServerEvent('qb-phone:server:sendNewMail', {
    sender = 'Aircraft Rental',
    subject = 'Purchase Complete',
    message = 'Thanks you for your purchase, be sure to return your rental vehicle.',
    button = {}
})
end

function BoatRStartEmail()
  TriggerServerEvent('qb-phone:server:sendNewMail', {
    sender = 'Boat Rental',
    subject = 'Purchase Complete',
    message = 'Thanks you for your purchase, be sure to return your rental vehicle.',
    button = {}
})
end

function BikeRStartEmail()
  TriggerServerEvent('qb-phone:server:sendNewMail', {
    sender = 'Bike Rental',
    subject = 'Purchase Complete',
    message = 'Thanks you for your purchase, be sure to return your rental vehicle.',
    button = {}
})
end


----------------------------------------------------------------------------------------------------------
------------------------------------------CAR RENTAL------------------------------------------------------
----------------------------------------------------------------------------------------------------------

RegisterNetEvent("dynyx-rental:client:OpenCarRental", function()
  local CarRental = {
      {
          header = 'Current Available Rentals',
          icon = 'fa-solid fa-square-info',
          isMenuHeader = true
      }
  }
  for k, v in pairs(config.CarRental) do
    CarRental[#CarRental + 1] = {
          header = v.header,
          txt = '$' ..v.price..'.00',
          params = {
              event = 'dynyx-rental:client:CarConfirm',
              args = {
                model = v.carhash,
                money = v.price,
            }
          }
      }
  end
  exports['qb-menu']:openMenu(CarRental)
end)

--submenu
RegisterNetEvent('dynyx-rental:client:CarConfirm', function(data)
  local money = data.money
  local model = data.model
  exports['qb-menu']:openMenu({
      {
          header = 'Go Back',
          icon = 'fa solid fa-less-than',
          params = {
            event = 'dynyx-rental:client:OpenCarRental',
        }
      },
      {
          header = 'Confirm Purchase',
          icon = 'fa-solid fa-square-check',
          params = {
              event = 'dynyx-rental:startrental',
              args = {
                model = data.model,
                money = data.money,
              }
          }
      },
      {
        header = 'Cancel Purchase',
        icon = 'fa-solid fa-square-xmark',
        params = {
          event = 'close edit later',
      }
    }
  })
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
        QBCore.Functions.Progressbar("random_task", "Renting", 3000, false, true, {
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
        SetEntityHeading(vehicle, config.RentalLocations.cars.heading)
        CarRStartEmail()
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

----------------------------------------------------------------------------------------------------------
------------------------------------------AIR RENTAL------------------------------------------------------
----------------------------------------------------------------------------------------------------------

RegisterNetEvent("dynyx-rental:client:OpenAirRental", function()
  local AirRental = {
      {
          header = 'Current Available Rentals',
          icon = 'fa-solid fa-square-info',
          isMenuHeader = true
      }
  }
  for k, v in pairs(config.AirRental) do
    AirRental[#AirRental + 1] = {
          header = v.header,
          txt = '$' ..v.price..'.00',
          params = {
              event = 'dynyx-rental:client:AirConfirm',
              args = {
                model = v.carhash,
                money = v.price,
            }
          }
      }
  end
  exports['qb-menu']:openMenu(AirRental)
end)

--submenu
RegisterNetEvent('dynyx-rental:client:AirConfirm', function(data)
  local money = data.money
  local model = data.model
  exports['qb-menu']:openMenu({
      {
          header = 'Go Back',
          icon = 'fa solid fa-less-than',
          params = {
            event = 'dynyx-rental:client:OpenAirRental',
        }
      },
      {
          header = 'Confirm Purchase',
          icon = 'fa-solid fa-square-check',
          params = {
              event = 'dynyx-rental:client:startAirRental',
              args = {
                model = data.model,
                money = data.money,
              }
          }
      },
      {
        header = 'Cancel Purchase',
        icon = 'fa-solid fa-square-xmark',
    }
  })
end)

RegisterNetEvent('dynyx-rental:client:startAirRental', function(data)
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
        QBCore.Functions.Progressbar("random_task", "Renting", 3000, false, true, {
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
        SetEntityHeading(vehicle, config.RentalLocations.aircrafts.heading)
        AirRStartEmail()
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

----------------------------------------------------------------------------------------------------------
------------------------------------------BOATS RENTAL----------------------------------------------------
----------------------------------------------------------------------------------------------------------

RegisterNetEvent("dynyx-rental:client:OpenBoatRental", function()
  local BoatRental = {
      {
          header = 'Current Available Rentals',
          icon = 'fa-solid fa-square-info',
          isMenuHeader = true
      }
  }
  for k, v in pairs(config.BoatRental) do
    BoatRental[#BoatRental + 1] = {
          header = v.header,
          txt = '$' ..v.price..'.00',
          params = {
              event = 'dynyx-rental:client:BoatConfirm',
              args = {
                model = v.carhash,
                money = v.price,
            }
          }
      }
  end
  exports['qb-menu']:openMenu(BoatRental)
end)

--submenu
RegisterNetEvent('dynyx-rental:client:BoatConfirm', function(data)
  local money = data.money
  local model = data.model
  exports['qb-menu']:openMenu({
      {
          header = 'Go Back',
          icon = 'fa solid fa-less-than',
          params = {
            event = 'dynyx-rental:client:OpenBoatRental',
        }
      },
      {
          header = 'Confirm Purchase',
          icon = 'fa-solid fa-square-check',
          params = {
              event = 'dynyx-rental:client:startBoatRental',
              args = {
                model = data.model,
                money = data.money,
              }
          }
      },
      {
        header = 'Cancel Purchase',
        icon = 'fa-solid fa-square-xmark',
    }
  })
end)

RegisterNetEvent('dynyx-rental:client:startBoatRental', function(data)
  local player = PlayerPedId()
  local money = data.money
  local model = data.model
  if IsAnyVehicleNearPoint(config.RentalLocations.boat.vehiclespawn.x, config.RentalLocations.boat.vehiclespawn.y, config.RentalLocations.boat.vehiclespawn.z, 2.5) then
    QBCore.Functions.Notify("There is a Vehicle in the Way.", "error")
    return
  end

  if IsAnyPedNearPoint(config.RentalLocations.boat.vehiclespawn.x, config.RentalLocations.boat.vehiclespawn.y, config.RentalLocations.boat.vehiclespawn.z, 2.5) then
    QBCore.Functions.Notify("There is a Player in the way.", "error")
    return
  end

  QBCore.Functions.TriggerCallback("dynyx-rental:CheckMoney",function(money)
    if money then
      QBCore.Functions.SpawnVehicle(model, function(vehicle)
        QBCore.Functions.Progressbar("random_task", "Renting", 3000, false, true, {
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
        SetEntityHeading(vehicle, config.RentalLocations.boat.heading)
        BoatRStartEmail()
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicle))
        exports[config.Fuelexport]:SetFuel(vehicle, 100.0)
        SpawnVehicle = true
      end, config.RentalLocations.boat.vehiclespawn, true)
      Wait(1000)
      local vehicle = GetVehiclePedIsIn(player, false)
      TriggerServerEvent('dynyx-rental:getpapers', GetVehicleNumberPlateText(vehicle), model)
    else
      QBCore.Functions.Notify("Not Enough Money", "error")
    end
  end, money)
end)

----------------------------------------------------------------------------------------------------------
------------------------------------------BIKES RENTAL----------------------------------------------------
----------------------------------------------------------------------------------------------------------

RegisterNetEvent("dynyx-rental:client:OpenBikeRental", function()
  local BikeRental = {
      {
          header = 'Current Available Rentals',
          icon = 'fa-solid fa-square-info',
          isMenuHeader = true
      }
  }
  for k, v in pairs(config.BikeRental) do
    BikeRental[#BikeRental + 1] = {
          header = v.header,
          txt = '$' ..v.price..'.00',
          params = {
              event = 'dynyx-rental:client:BikeConfirm',
              args = {
                model = v.carhash,
                money = v.price,
            }
          }
      }
  end
  exports['qb-menu']:openMenu(BikeRental)
end)

--submenu
RegisterNetEvent('dynyx-rental:client:BikeConfirm', function(data)
  local money = data.money
  local model = data.model
  exports['qb-menu']:openMenu({
      {
          header = 'Go Back',
          icon = 'fa solid fa-less-than',
          params = {
            event = 'dynyx-rental:client:OpenBikeRental',
        }
      },
      {
          header = 'Confirm Purchase',
          icon = 'fa-solid fa-square-check',
          params = {
              event = 'dynyx-rental:client:startBikeRental',
              args = {
                model = data.model,
                money = data.money,
              }
          }
      },
      {
        header = 'Cancel Purchase',
        icon = 'fa-solid fa-square-xmark',
    }
  })
end)

RegisterNetEvent('dynyx-rental:client:startBikeRental', function(data)
  local player = PlayerPedId()
  local money = data.money
  local model = data.model
  if IsAnyVehicleNearPoint(config.RentalLocations.bike.vehiclespawn.x, config.RentalLocations.bike.vehiclespawn.y, config.RentalLocations.bike.vehiclespawn.z, 2.5) then
    QBCore.Functions.Notify("There is a Vehicle in the Way.", "error")
    return
  end

  if IsAnyPedNearPoint(config.RentalLocations.bike.vehiclespawn.x, config.RentalLocations.bike.vehiclespawn.y, config.RentalLocations.bike.vehiclespawn.z, 2.5) then
    QBCore.Functions.Notify("There is a Player in the way.", "error")
    return
  end

  QBCore.Functions.TriggerCallback("dynyx-rental:CheckMoney",function(money)
    if money then
      QBCore.Functions.SpawnVehicle(model, function(vehicle)
        QBCore.Functions.Progressbar("random_task", "Renting", 3000, false, true, {
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
        SetEntityHeading(vehicle, config.RentalLocations.bike.heading)
        BikeRStartEmail()
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicle))
        exports[config.Fuelexport]:SetFuel(vehicle, 100.0)
        SpawnVehicle = true
      end, config.RentalLocations.bike.vehiclespawn, true)
      Wait(1000)
      local vehicle = GetVehiclePedIsIn(player, false)
      TriggerServerEvent('dynyx-rental:getpapers', GetVehicleNumberPlateText(vehicle), model)
    else
      QBCore.Functions.Notify("Not Enough Money", "error")
    end
  end, money)
end)
