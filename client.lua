function DrawText3D(coords, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(coords, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        local inZone = true
        for locationName, locationData in pairs(Config.BlackMarket) do 
            local distance = #(coords - locationData.coords)
        if  distance <= 3 then
            DrawText3D(locationData.coords, "~r~Black market~r~")
        end
        if IsControlJustReleased(0, 38) then
            print("good")
            SetDisplay(true)
        end
    end
end
end)