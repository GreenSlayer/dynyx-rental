local QBCore = exports['qb-core']:GetCoreObject()

--[[
RegisterServerEvent('dynyx-rental:getpapers')
AddEventHandler('dynyx-rental:getpapers', function(plate, model, money)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local info = {}
    info.citizenid = Player.PlayerData.citizenid
    info.firstname = Player.PlayerData.charinfo.firstname
    info.lastname = Player.PlayerData.charinfo.lastname
    info.plate = plate
    info.model = model
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items["rentalpapers"], 'add')
    Player.Functions.AddItem('rentalpapers', 1, false, info)
    Player.Functions.RemoveMoney('bank', money, "vehicle-rental")
end)

]]--


RegisterNetEvent('dynyx-rental:getpapers', function(licenseplate, model)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local info = {
        name = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname.." "..Player.PlayerData.citizenid,
        veh = QBCore.Shared.Vehicles[model]["brand"].." "..QBCore.Shared.Vehicles[model]["name"],
        plate = licenseplate
    }
    Player.Functions.AddItem("rentalpapers", 1, false, info)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rentalpapers'], "add")
end)

QBCore.Functions.CreateCallback('dynyx-rental:CheckMoney',function(source, cb, money)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money.cash >= money then
        cb(true)
        Player.Functions.RemoveMoney('cash', money)
    else
        cb(false)
    end
end)

RegisterServerEvent('dynyx-rental:takepapers', function(plate, model)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items["rentalpapers"], 'remove')
    Player.Functions.RemoveItem('rentalpapers', 1, false, info)
end)


