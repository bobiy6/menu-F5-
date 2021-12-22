ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--------- Menu -------

RMenu.Add('by Fox#4490', 'main', RageUI.CreateMenu("by Fox#4490", "Menu Interaction"))
RMenu.Add('by Fox#4490', 'inventaire', RageUI.CreateSubMenu(RMenu:Get('by Fox#4490', 'main'), "Inventaire", "Inventaire"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('by Fox#4490', 'main'), true, true, true, function()

            RageUI.Separator("~g~Votre steam : ~b~"..GetPlayerName(PlayerId()))
            RageUI.Separator("~g~Votre ID : ~b~"..GetPlayerServerId(PlayerId()))

            RageUI.ButtonWithStyle("~b~Inventaire", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
            end, RMenu:Get('by Fox#4490', 'inventaire'))

        end, function()
        end)
    
            RageUI.IsVisible(RMenu:Get('by Fox#4490', 'inventaire'), true, true, true, function()

                RageUI.Separator("~r~↓ Votre inventaire : ↓")

            end, function()
            end)

            Citizen.Wait(0)
        end
    end)






Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 327) then
            RageUI.Visible(RMenu:Get('by Fox#4490', 'main'), not RageUI.Visible(RMenu:Get('by Fox#4490', 'main')))
        end
    end
end)
