game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
if not game:IsLoaded() then
    game.Loaded:Wait()
end

function say(e)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(e,'All')
    end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, 1000003, -1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1101734, 33651680, -33531784))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, -1000003, -1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, -1000000, -3))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(3, -1000000, 1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, -3, -1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-1000000, -3, 1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, 3, 1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, 1000003, 1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, -1000003, 1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(454545, 150000, -678678))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(306712, 420552, 398158))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-1000000, 1000003, 1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-1000000, 1000003, -1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-1000000, -1000003, -1000000))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(45400, -49860, 56673))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(56470, -48312, 28578))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(75304, -49638, 47300))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(34120, -48830, 30233))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(34120, -48830, 30233))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(77822, -49751, 79116))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(42682, -29202, 29886))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(51052, -49558, 34068))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-251773, 1000003, 382563))
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.70000005, -25.5899963))
wait(3)
local root = game.Players.LocalPlayer.Character.HumanoidRootPart
root.Anchored = true
repeat 
wait()
root.CFrame = CFrame.new(-7.165, root.Position.Y+2000 , 94.743)
until workspace.Terrain._Game.Admin:FindFirstChild("Regen")
root.Anchored = false
root.CFrame = workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0,3,0)

if workspace.Terrain._Game.Admin:FindFirstChild("Regen") then
print("regen was found (time to crash funny print)")
    wait(0.1)
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
    wait(0.1)
    local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i, pad in pairs(pads) do
			Spawn(function()
				pad.PrimaryPart = pad:FindFirstChild("Head")
				local pos = pad.PrimaryPart.CFrame
				wait(0)
				pad.PrimaryPart.CanCollide = false
				pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait(0)
				pad:SetPrimaryPartCFrame(pos)
				pad.PrimaryPart.CanCollide = true
                end)
            end
		wait(0.1)
    local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i, pad in pairs(pads) do
			Spawn(function()
				pad.PrimaryPart = pad:FindFirstChild("Head")
				local pos = pad.PrimaryPart.CFrame
				wait(0)
				pad.PrimaryPart.CanCollide = false
				pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait(0)
				pad:SetPrimaryPartCFrame(pos)
				pad.PrimaryPart.CanCollide = true
                end)
            end
    wait(0.2)
game.Players:Chat('respawn others')
game.Players:Chat('clr')
game.Players:Chat('fix')
say('DIY Scripts on top!')
say('Free Scripts ONLY on DIY Scripts')
say('dsc.gg/rp4aKk5UBz')
wait(0.1)
game.Players:Chat('fogend 1')
game.Players:Chat('fogcolor 1.1.1')
game.Players:Chat('time 1')
wait(1)
for i=1,8 do
    for i=1,3 do
    game.Players:Chat('size all 0.3')
    end
    game.Players:Chat('freeze all')
    for i=1,3 do
    game.Players:Chat('size all 10')
    end
    game.Players:Chat('clone all')
    end
end
wait(0.2)

while true do wait()
local servers = {}
for _, server in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
   if type(server) == "table" and server.maxPlayers > server.playing and server.id ~= game.JobId then
        table.insert(servers, server.id)
    end
end
if #servers > 0 then
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)])
else
    warn("Couldn't find a server :sob:")
end
end
