game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 6) == ":house" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-29.0648632, 7.85896826, 73.8250351, 0.999998808, 4.69892676e-08, -0.00155096618, -4.68835246e-08, 1, 6.82139998e-08, 0.00155096618, -6.81412047e-08, 0.999998808)
        end
end)
 
 game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 6) == ":spawn" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37.5425644, 1.80732727, -25.333395, -0.999980152, 0, 0.00630147522, 0, 1, 0, -0.00630147522, 0, -0.999980152)
        end
 end)
 
 game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 6) == ":regen" then
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (   -7.45691586, 8.62999058, 94.4823227, -0.99999845, -9.28177144e-08, -0.00174821995, -9.28509678e-08, 1, 1.8940268e-08, 0.00174821995, 1.91025631e-08, -0.99999845)
 end
     
 end)
 
 game.Players.LocalPlayer.Chatted:Connect(function(msg)
     if string.sub(msg:lower(), 0, 7) == ":getpad" then 
         plr = game:GetService("Players").LocalPlayer

X1 = plr.Character:FindFirstChild("HumanoidRootPart").CFrame.X
Y1 = plr.Character:FindFirstChild("HumanoidRootPart").CFrame.Y
Z1 = plr.Character:FindFirstChild("HumanoidRootPart").CFrame.Z
wait(0.001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame= CFrame.new(-32.9446106, 8.6299963, 94.2264557, -0.999785066, 8.04972444e-09, -0.0207333937, 7.24179605e-09, 1, 3.90425576e-08, 0.0207333937, 3.88840178e-08, -0.999785066)
wait(0.001)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+5,Z1)
     end
     
 end)
 game.Players.LocalPlayer.Chatted:Connect(function(msg)
         
    if string.sub(msg:lower(), 0, 9) == ":infyield" then
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   
end
    end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
        Character:WaitForChild("Humanoid").Died:Connect(function()
                game.Players:Chat("reload me")
        end)

end)
game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 4) == ":nok" then
        for _, i in pairs(game.Workspace.Terrain._Game.Workspace:FindFirstChild("Obby"):GetChildren()) do
            if i:FindFirstChild("TouchInterest") then
                i:FindFirstChild("TouchInterest"):Destroy()
            end
        end
end
end)

game.Players.PlayerAdded:Connect(function(plr)
game.Players:Chat("h/ \n \n \n Glee Hub: "..plr.DisplayName.." Just joined \n \n \n")
end)

local antip = true
task.spawn(function()
while antip do
task.wait()
if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
game.Players:Chat("unpunish me "..math.random(10, 1000))
end
wait()
end
end)
etgenv().antikek = true
task.spawn(function()
while getgenv().antikek do
task.wait()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v.Name == "HotPotato" then
v:Destroy()
end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.Name == "HotPotato" then
v:Destroy()
end
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 8) == ":clicktp" then
            
            game.Players:Chat("pm overglee hold ctrl and click to where u wanna tp --GleeHub")
            
                       local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
end
    end)



getgenv().antikek = true
task.spawn(function()
while getgenv().antikek do
task.wait()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v.Name == "BlueBucket" then
v:Destroy()
end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.Name == "BlueBucket" then
v:Destroy()
end
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 7) == ":rejoin" then
local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer



ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)



ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
end
    end)
