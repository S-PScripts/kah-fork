repeat wait() until game:IsLoaded() 

fireclickdetector = fireclickdetector or click_detector
local ping = coroutine.wrap(function() ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() end)()

local function c(m) game.Players:Chat(m) end
function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
local prefix = "+"

local bangears = {}
local blacklisted = {}

local function equiptools()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
        if v:IsA('Tool') then
        v.Parent = game.Players.LocalPlayer.Character
       end
    end
end

local afk = false
local autoanwser = false

local time = 0
local WS = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local function fp(Player)
    for _, v in pairs(game.Players:GetPlayers()) do
        if Player:lower() == v.Name:lower():sub(1, string.len(Player)) or Player:lower() == v.DisplayName:lower():sub(1, string.len(Player)) then
            return v.Name
        end
    end
end

Players.LocalPlayer.Chatted:Connect(function(msg)
    local sp = msg:split(" ")
    local t = sp[2]
    local plr = fp(t)
    local ags = string.rep(0, math.random(20, 500)) -- anti ban for spamming gear command
    local acs = string.rep(" ", math.random(20, 500)) -- anti ban for normal commands
    if string.sub(msg, 1, #prefix+7) == prefix..'gearban' then
        table.insert(bangears, plr)
        c("gear me "..ags.."82357101")
        repeat task.wait(time) until LocalPlayer.Backpack:FindFirstChild('PortableJustice')
        LocalPlayer.Backpack.PortableJustice.Parent = LocalPlayer.Character
        repeat task.wait(time) until workspace[game.Players.LocalPlayer.Name].PortableJustice:FindFirstChild('MouseClick')
        local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[plr].Character.HumanoidRootPart.CFrame
        c("unff "..plr)
            repeat 
            coroutine.wrap(function()
            workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[plr]) 
            end)()
            task.wait(time) 
        until game.Players[plr].Character:FindFirstChild('DisableBackpack')
        LocalPlayer.CharacterAdded:wait()
        repeat task.wait(time) until LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
        LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
    end
end)

spawn(function()
    while true do task.wait(time)
        local function chat(m) game.Players:Chat(m) end
        local StarterGui = game:GetService("StarterGui")
            if game.Players.LocalPlayer.Character:FindFirstChild('DisableBackpack') then
                chat("reset me")
                StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
            end
            for i, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player.Character then
                    if player.Character:FindFirstChild("HumanoidRootPart") and not player.Localplayer.Character:FindFirstChild("HumanoidRootPart") then
                        local size = player.Character.HumanoidRootPart.Size
                    if size ~= Vector3.new(2, 2, 1) then
                        local Name = player.Name
                    chat('unsize ' ..Name)
                    chat('pm/ '..Name..' Sorry but changing size is disabled in this server. Please check other server!')
                    end
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso").ChildAdded:Connect(function(fling)
                        local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
                        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                    end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
                    if autoanwser == true then
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..Name.." "..Message, "All")
                    end
                    if afk == true then
                        local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame ~= oldpos then
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
                        end 
                    end
                end
            end
        end
     end
end)

game.Players.PlayerAdded:Connect(function(plr)
    game.Players:Chat("h/ \n \n \n Welcome "..plr.DisplayName.." To Hell! (DMX) \n \n \n")
    for i, v in pairs(game.Workspace:GetChildren()) do
        if table.find(gearban, plr) then
        game.Players:Chat(prefix.. "gearban " ..plr)
        game.Players:Chat("pm/"..plr.." Rejoin Won't Help You With Ungearban!")
        end
    end
end)