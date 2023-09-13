local blacklisted = {""}

if game.Players.LocalPlayer.Name == blacklisted then return print("you are blacklisted!!!!") end

if game.PlaceId == 112420803 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Kohls Admin House", "Sentinel")
    local Main = Window:NewTab("Main")
    local Player = Window:NewTab("Player")
    local Other = Window:NewTab("Other")

    local MainSection = Main:NewSection("Main")
    local PlayerSection = Player:NewSection("Player")
    local OtherSection = Other:NewSection("Other")

    PlayerSection:NewSlider("Walkspeed", "Self-explanatory", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Self-explanatory.", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

    MainSection:NewButton("Give Admin", "Gives the user admin", function()
        local plrname = game.Players.LocalPlayer.Character.Name
        local oldcframe = workspace.Terrain._Game.Admin.Pads["Touch to get admin"].Head.CFrame
        local cframe_plr = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        workspace.Terrain._Game.Admin.Pads["Touch to get admin"].Head.CFrame =  cframe_plr
        workspace.Terrain._Game.Admin.Pads["Touch to get admin"].Head.CFrame = oldcframe
        if not workspace.Terrain._Game.Admin.Pads["Touch to get admin"] then
            fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
        end
        if workspace.Terrain._Game.Admin.Pads[plrname] then
            print("You already have admin!!!!")
        end
    end)

    OtherSection:NewButton("Pads", "TP to pads", function()
        local cframe_plr = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local pads = workspace.Terrain._Game.Admin.Pads["Touch to get admin"]
        cframe_plr = pads.CFrame
    end)
end
