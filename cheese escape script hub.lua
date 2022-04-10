if game.PlaceId == 5777099015 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Cheese Escape V1", "Synapse")

-- PLAYER
local Tab = Window:NewTab("Main")
local Tab3 = Window:NewTab("Locations")
local Tab2 = Window:NewTab("Credits")
local Section = Tab:NewSection("Player")
Section:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewDropdown("Get Items", "Gives you item in-game", {"White Key", "Red Key", "Yellow Key", "Red Cheese", "Purple Key", "Blue Key", "Board", "Green Key"}, function(currentOption)
    if currentOption == "Purple Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-295.502, 122.143, 497.47))
    elseif currentOption == "Red Cheese" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-12.8112, 5.32002, -120.23))
    elseif currentOption == "Green Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-279.602, 1.29329, -38.6))
    elseif currentOption == "Red Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(70.8, 1.2, -448.4))
    elseif currentOption == "Blue Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-110.59, 44.5, -91.75))
    elseif currentOption == "Board" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-200.902, 1.29329, -166.9))
    elseif currentOption == "Yellow Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(64.2217, 26.8933, -481.77))
    elseif currentOption == "White Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-20.5016, 5.14329, -80.52))
    end
end)

Section:NewButton("Get All Cheese", "Gives you all cheese's in-game", function()
    for _, v in pairs (game.Workspace.FindCheese:GetDescendants())do
   if v.Name == 'Cheese' then
    fireclickdetector(v.ClickDetector)
         end
     end
end)


-- CLIENT
local Section2 = Tab:NewSection("Stuff")

Section2:NewButton("Open Spawn Door", "Opens Spawn Door", function()
    local toggle = off
    wait()
    toggle = on
    repeat wait()
    fireclickdetector(game.Workspace.Cheese.ClickDetector)
    until toggle
end)

Section2:NewLabel("Locked Door Code: 3842")


-- Credits
local Section3 = Tab2:NewSection("Credits")

Section3:NewLabel("Made by IceyTamim - FrostedTamim")

-- Locations
local Section4 = Tab3:NewSection("Locations")

Section4:NewButton("Spawn", "Spawn's Location", function()
        game.Players.LocalPlayer.Character:MoveTo(game.Workspace.SpawnLocation.Position)
    end)
end
