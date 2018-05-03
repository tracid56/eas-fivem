function SendAlert(msg, msg2)
    SendNUIMessage({
        type = "alert",
        enable = true,
        issuer  = msg,
        message = msg2
    })
end

RegisterNetEvent("alert:Send")
AddEventHandler("alert:Send", function(msg)
    for i, v in pairs(Config.EAS.Departments) do
        if msg == i then
            DisplayOnscreenKeyboard(1, "", "", "", "", "", "", 600)
            while (UpdateOnscreenKeyboard() == 0) do
                DisableAllControlActions(0);
                Wait(0);
            end
            if (GetOnscreenKeyboardResult()) then
                local msg2 = GetOnscreenKeyboardResult()
                msg = Config.EAS.Departments[i].name
                SendAlert(msg, msg2)
            end
        end
    end
end)