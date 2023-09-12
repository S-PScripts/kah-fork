game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
if not game:IsLoaded() then
    game.Loaded:Wait()
end

function say(e)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(e,'All')
    end

local air = Instance.new("Part", workspace)
local idhider = string.rep(0, 500)
local day = math.random(1, 28)
local month = math.random(1, 12)
local year = math.random(2022, 2030)
local death = [[this is a joke roblox  







































-------------------------------------------
! READ CAREFULLY !
-------------------------------------------
In Few Days You Will Be Murdered...
By Anonymous Group From Dark Side Of The Internet
Called: Freeing The World Organization.
Be Aware Of End Of Your Life.
You Will Be Dead At: ]] .. day .. "/" .. month .. "/" .. year .. [[ (Format: DD/MM/YY)


                ]]
wait(0.5)
air.Size = Vector3.new(2000, 1, 2000)
air.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
air.Transparency = 0
air.Anchored = true
wait(0.5)
wait()
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
wait(0.3)
game.Players:Chat('fix')
game.Players:Chat('hint '..death)
game.Players:Chat('music '..idhider..' 7518113786')
game.Players:Chat('freeze all')
game.Players:Chat('blind all')
game.Players:Chat('fogend 0')
game.Players:Chat('fogcolor 1. 1. 1')
say('Join = hKKG63DYey')
say('Join = hKKG63DYey')
say('Join = hKKG63DYey')
say('Join = hKKG63DYey')
say('Join = hKKG63DYey')
say('Join = hKKG63DYey')
say('Join = hKKG63DYey')
say('Join = hKKG63DYey')
wait(2)

for i = 1, 5 do
for i=1,3 do
game.Players:Chat('size all 0.3')
end
game.Players:Chat('freeze all')
for i=1,3 do
game.Players:Chat('size all 10')
end
game.Players:Chat('clone all')
end

wait(2)

while true do wait(0.1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
