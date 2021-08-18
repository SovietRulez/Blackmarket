RegisterServerEvent('soviet:server:pistolPurchase')
AddEventHandler('soviet:server:pistolPurchase', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money['cash'] >= 10000 then
        Player.Functions.RemoveMoney('cash', 10000)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weapon_pistol"], "add")
        TriggerClientEvent('QBCore:Notify', source, "Purchased Pistol", 'success', 10000)
        Player.Functions.AddItem("weapon_pistol", 1)
    else
        TriggerClientEvent('QBCore:Notify', source, "You dont have enough money", 'error', 10000)
    end
end)

RegisterServerEvent('soviet:server:smgPurchase')
AddEventHandler('soviet:server:smgPurchase', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money['cash'] >= 10000 then
        Player.Functions.RemoveMoney('cash', 10000)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weapon_microsmg"], "add")
        TriggerClientEvent('QBCore:Notify', source, "Purchased Micro SMG", 'success', 10000)
        Player.Functions.AddItem("weapon_microsmg", 1)
    else
        TriggerClientEvent('QBCore:Notify', source, "You dont have enough money", 'error', 10000)
    end
end)


RegisterServerEvent('soviet:server:carbinePurchase')
AddEventHandler('soviet:server:carbinePurchase', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money['cash'] >= 10000 then
        Player.Functions.RemoveMoney('cash', 10000)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weapon_carbinerifle"], "add")
        TriggerClientEvent('QBCore:Notify', source, "Purchased Carbine Rifle", 'success', 10000)
        Player.Functions.AddItem("weapon_carbinerifle", 1)
    else
        TriggerClientEvent('QBCore:Notify', source, "You dont have enough money", 'error', 10000)
    end
end)

RegisterServerEvent('soviet:server:pistol50Purchase')
AddEventHandler('soviet:server:pistol50Purchase', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money['cash'] >= 10000 then
        Player.Functions.RemoveMoney('cash', 10000)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weapon_pistol50"], "add")
        TriggerClientEvent('QBCore:Notify', source, "Purchased 50 cal pistol", 'success', 10000)
        Player.Functions.AddItem("weapon_pistol50", 1)
    else
        TriggerClientEvent('QBCore:Notify', source, "You dont have enough money", 'error', 10000)
    end
end)

RegisterServerEvent('soviet:server:pistolAmmoPurchase')
AddEventHandler('soviet:server:pistolAmmoPurchase', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money['cash'] >= 10000 then
        Player.Functions.RemoveMoney('cash', 10000)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["pistol_ammo"], "add")
        TriggerClientEvent('QBCore:Notify', source, "Purchased Pistol Bullets", 'success', 10000)
        Player.Functions.AddItem("pistol_ammo", 5)
    else
        TriggerClientEvent('QBCore:Notify', source, "You dont have enough money", 'error', 10000)
    end
end)