local display = false

RegisterCommand("nui", function(source, args)
    SetDisplay(not display)
end)


RegisterNUICallback("exit", function(data)
    chat("exited", {0,255,0})
    SetDisplay(false)
end)

RegisterNUICallback("main", function(data)
    chat(data.text, {0,255,0})
    SetDisplay(false)
end)

RegisterNUICallback("error", function(data)
    chat(data.error, {255,0,0})
    SetDisplay(false)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)

        DisableControlAction(0, 1, display)
        DisableControlAction(0, 2, display)
        DisableControlAction(0, 142, display)
        DisableControlAction(0, 18, display)
        DisableControlAction(0, 322, display)
        DisableControlAction(0, 106, display)
    end
end)

function chat(str, color)
    TriggerEvent(
        'chat:addMessage',
        {
            color = color,
            multiline = true,
            args = {str}
        }
    )
end

RegisterNUICallback("giveWeapon", function()
    local src = source
    local player = PlayerPedId()
    chat('Weapon added', {0,255,0})
    TriggerServerEvent('soviet:server:pistolPurchase')
    SetDisplay(false)
end)

RegisterNUICallback("giveSmg", function()
    local src = source
    local player = PlayerPedId()
    chat('Weapon added', {0,255,0})
    TriggerServerEvent('soviet:server:smgPurchase')
    SetDisplay(false)
end)

RegisterNUICallback("giveCarbine", function()
    local src = source
    local player = PlayerPedId()
    chat('Weapon added', {0,255,0})
    TriggerServerEvent('soviet:server:carbinePurchase')
    SetDisplay(false)
end)

RegisterNUICallback("givePistol50", function()
    local src = source
    local player = PlayerPedId()
    chat('Weapon added', {0,255,0})
    TriggerServerEvent('soviet:server:pistol50Purchase')
    SetDisplay(false)
end)

RegisterNUICallback("givePistolAmmo", function()
    local src = source
    local player = PlayerPedId()
    chat('Weapon added', {0,255,0})
    TriggerServerEvent('soviet:server:pistolAmmoPurchase')
    SetDisplay(false)
end)