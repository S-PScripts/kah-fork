repeat
    wait()
until game:IsLoaded()
repeat wait() until game.Players ~= nil
repeat wait() until game.Workspace ~= nil

local loadtime = os.clock()

getgenv().loaded = false
if getgenv().loaded == true then
    print("Script Is Literally Loaded. [qa.lua]")
    else
        getgenv().loaded = true
end
workspace.FallenPartsDestroyHeight = "nan"

local function c(m)
    game.Players:Chat(m)
end

local function h(text)
	game.StarterGui:SetCore("SendNotification", {
		Title = "[qa.lua]"; 
		Text = text; 
		Duration = 5;
	})
end

local function StartMsg()
    c("h \n\n\n [qa.lua] Executed. \n\n\n")
    c("reset all [qa.lua]")
    c("fix [qa.lua]")
    c("clr [qa.lua]")
end

-- copied from infinite yield alright?
function toClipboard(String)
	local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
	if clipBoard then
		clipBoard(String)
		h('Copied to clipboard')
	else
		h("Your exploit doesn't have the ability to use the clipboard")
	end
end

local function equiptools()
    for _, v in ipairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
        if v:IsA('Tool') then
        v.Parent = game.Players.LocalPlayer.Character
        end
    end
end

local function usetool(amount, time)
    for _, v in ipairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
        if v:IsA('Tool') then
        v.Parent = game.Players.LocalPlayer.Character
        coroutine.wrap(function()
            for _ = 1, amount do
                v:Activate()
                task.wait(time)
                end
            end)()
        end
    end
end

local function regen()
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end

--[[

// todo list:

> skid more code
> add more stuff to afk
> add anwsers to questions like "can i have admin"
> complain about life as always :trollface:

]]
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Apperance = LocalPlayer.UserId
local mouse = LocalPlayer:GetMouse()
local Char = LocalPlayer.Character
local time = 0
fireclickdetector = fireclickdetector or click_detector
local ping =
    coroutine.wrap(
    function()
        ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
    end
)()


function say(i)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL")
end
local prefix = "+"

local padbans = {}
local gearbanned = {}
local tools = {"DrumKit", "DriveBloxUltimateCar", "HotPotato", "BlueBucket", "ZombieStaff", "AlienEgg", "BarrelOfMonkeys", "AnAlpacaYouKnow", "IceStaff", "Transmorpher", "BoneSword", "WormholeTunneler", "TurkeyTool", "GiantAnimeHammer", "SubspaceTripmine", "FakeChartreusePeriastron", "RageTable", "AzureDragonMagicSlayerSword", "SwordOfSwords", "SkeletonScythe", "SwordOfDarkness", "SwordOfLight", "DaggerOfShatteredDimensions", "BodySwapPotion", "LaserFingerPointers", "PrettyPrettyPrincessSceptor", "BlizzardWand", "SeaThemedCrossbow", "SentryTurret", "Cauldron", "RCTank", "PaintBucket", "PortableJustice", "StatueStaffOfStonyJustice", "Tactical Airstrike", "SuperFlyGoldBoombox", "Easterbomby", "AzurePeriastron", "IvoryPeriastron", "CrimsonPeriastron", "GrimgoldPeriastron", "ChartreusePeriastron", "AmethystPeriastron", "NoirPeriastron", "RainbowPeriastron", "FestivePeriastron", "FallPeriastron", "JoyfulPeriastron", "ALSIceBucketChallenge", "VampireVanquisher", "BuildDelete", "StamperTool", "Reset", "Clone Part", "BuildInsert", "BuildMaterial", "BuildSurface", "BuildColor", "RotateTool", "Dragger", "Part Dragger", "WiringTool", "LinkedSword", "Railgun", "GearRecycler", "RemoteExplosiveDetonator", "TeddyTrap", "Bombo'sSurvivalKnife", "FuseBomb", "SnakeSpell", "Gear Cloner", "Taser", "TommyGun", "PhoenixPet", "IceBird", "HyperlaserGun", "RedHyperLaser", "MagicCarpet", "ExplodingLabExperiment", "ThumbnailCamera", "TwoSeaterRainbowMagicCarpet", "RainbowMagicCarpet", "AttackDoge", "OmegaRainbowSword", "BeachUmbrella", "StepGun", "SteampunkGlove", "BlackHoleGenerator"}
local blacklisted = {"lastcmd", "n0tbsy", "surakurd", "kermmid", "tcqf", "wrydioda4", "jordypower13", "xNorthh", "AC_Sam", "ghostroblox978", "efhbuyfqebukqrgbj", "gklow1", "CoolAnimalLover6", "ImagineAb_using", "hxetsyx", "crazy_gammer8", "xvoqsv", "1x1x1xlc", "Cameroncrowson16", "Xxsecretname_proxX", "me_funzysass", "Exprvssed", "AyItsRachel", "Dipaus_1", "Korabi_Dev", "BANNter_Original", "t_echr"}
local softblacklisted = {"LukasThaiGood"}
local whitelisted = {"0020_531", "lonelystreetcat", "erllzqrx", "Joeyplayzgame_stoiu"}
local rejoined = {}

for _,v in pairs(game.Players:GetChildren()) do
    if v.Name == game.Players.LocalPlayer then
    if v.Name == table.find(blacklisted, v.Name) then
        while true do task.wait()
                say("[qa.lua] Im Blacklisted From The Script! Leaving Game.")
                while true do end
            end
        end
    end
end

local function humanoid()
        local player = game.Players.LocalPlayer
            if player.Character then
                if player.Character:FindFirstChild("Humanoid") then
                    player.Character.Humanoid.Name = "1"
                        end
                            local l = player.Character["1"]:Clone()
                            l.Parent = player.Character
                        l.Name = "Humanoid"
                    player.Character["1"]:Destroy()
            workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
        player.Character.Animate.Disabled = true
        end
end

local function randomserverhop()
    while task.wait(time) do
    local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100"))
        for i,v in pairs(Servers.data) do
            if v.playing ~= v.maxPlayers then
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
            end
        end
    end
end
local function rejoin()
    while task.wait(time) do
    game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId, game.JobId,game:GetService'Players'.LocalPlayer)
    end
end

local afk = false
local autoanwser = false
local UserInputService = game:GetService("UserInputService")
local function fp(Player)
    for _, v in pairs(game.Players:GetPlayers()) do
        if
            Player:lower() == v.Name:lower():sub(1, string.len(Player)) or
                Player:lower() == v.DisplayName:lower():sub(1, string.len(Player))
         then
            return v.Name
        end
    end
end

lava = false
slock = false

coroutine.wrap(function()
while task.wait(time) do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name == table.find(softblacklisted, v.Name) then
            repeat
                game.Players:Chat("punish " ..v.Name .. " [qa.lua] "..math.random(0, 9999999999))
                game.Players:Chat("blind " ..v.Name.. " [qa.lua] "..math.random(0, 9999999999))
            until
            game.Lighting:FindFirstChild(v.Name)
            end
        end
    end
end)()
for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
v.CanTouch = false
end

gearblacklist = false
antisize = false
antipunish = false
antifreeze = false
antikill = false
antiseizure = false
antimsg = false
antijail = false
antifling = false
antiblind = false
antiaddon = false
antistun = false

Players.LocalPlayer.Chatted:Connect(
    function(msg)
        local sp = msg:split(" ")
        local t = sp[2]
        local ags = string.rep(0, math.random(20, 500)) -- anti ban for spamming gear command
        local acs = string.rep(" ", math.random(20, 500)) -- anti ban for normal commands
        local randomchar = math.random(1, 178000000)
        local Players = game:GetService('Players')
        local LP = Players.LocalPlayer
        local function c(m) game.Players:Chat(m) end



        if string.sub(msg, 1, #prefix + 4) == prefix .. "tlag" then
            for i = 1, 5 do
            c("gear me " ..ags.. "169602103")
            end
            repeat task.wait() until #game.Players.LocalPlayer.Backpack:GetChildren() >= 5
            equiptools()
            for i = 1, 500 do
                for i = 1, 500 do
                game.Players.LocalPlayer.Character.RocketJumper.FireRocket:FireServer(Vector3.new(math.random(-200,200),math.random(0,200),math.random(-200,200)),Vector3.new(math.random(-200,200), math.random(0,50), math.random(-200,200)))
                end
            end
        end

        if string.sub(msg, 1, #prefix + 7) == prefix.."musicid" then
            toClipboard(string.sub(tostring(game.Workspace.Terrain._Game.Folder.Sound.SoundId), 33))
        end

        if string.sub(msg, 1, #prefix + 10) == prefix .. "forceleave" then
            game:Shutdown()
        end

        if string.sub(msg, 1, #prefix + 7) == prefix .. "copypos" then
            local plr = fp(t)
            if plr == nil then
                plr = LocalPlayer.Name
            end
            local pos = game.Players[plr].Character.HumanoidRootPart.Position
            local final = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
            toClipboard(final)
        end

        if string.sub(msg, 1, #prefix + 4) == prefix .. "shop" then
            c("h Serverhopping. [qa.lua]")
            randomserverhop()
        end
        if string.sub(msg, 1, #prefix + 2) == prefix .. "rj" then
                c("h Rejoining. [qa.lua]")
                rejoin()
        end

        if string.sub(msg, 1, #prefix + 8) == prefix .. "antipunish" then
            antipunish = not antipunish
            if antipunish then
                h("Antipunish On!")
            else
                h("Antipunish Off")
            end
        end

        if string.sub(msg, 1, #prefix + 8) == prefix .. "antistun" then
            antistun = not antistun
            if antistun then
                h("Antistun On!")
            else
                h("Antistun Off")
            end
        end

        if string.sub(msg, 1, #prefix + 8) == prefix .. "antisize" then
            antisize = not antisize
            if antisize then
                h("Antisize On!")
            else
                h("Antisize Off")
            end
        end

        if string.sub(msg, 1, #prefix + 9) == prefix .. "antiaddon" then
            antiaddon = not antiaddon
            if antiaddon then
                h("Antiaddon On!")
            else
                h("Antiaddon Off")
            end
        end

        if string.sub(msg, 1, #prefix + 8) == prefix .. "antiblind" then
            antiblind = not antiblind
            if antiblind then
                h("Antiblind On!")
            else
                h("Antiblind Off")
            end
        end

        if string.sub(msg, 1, #prefix + 9) == prefix .. "antifling" then
            antifling = not antifling
            if antifling then
                h("Antifling On!")
            else
                h("Antifling Off")
            end
        end

        if string.sub(msg, 1, #prefix + 8) == prefix .. "antijail" then
            antijail = not antijail
            if antijail then
                h("Antijail On!")
            else
                h("Antijail Off")
            end
        end

        if string.sub(msg, 1, #prefix + 7) == prefix .. "antimsg" then
            antimsg = not antimsg
            if antimsg then
                h("Antimsg On!")
            else
                h("Antimsg Off")
            end
        end

        if string.sub(msg, 1, #prefix + 11) == prefix .. "antiseizure" then
            antiseizure = not antiseizure
            if antiseizure then
                h("Antiseizure On!")
            else
                h("Antiseizure Off")
            end
        end

        if string.sub(msg, 1, #prefix + 8) == prefix .. "antikill" then
            antikill = not antikill
            if antikill then
                h("Antikill On!")
            else
                h("Antikill Off")
            end
        end

        if string.sub(msg, 1, #prefix + 10) == prefix .. "antifreeze" then
            antifreeze = not antifreeze
            if antifreeze then
                h("Antifreeze On!")
            else
                h("Antifreeze Off")
            end
        end

        if string.sub(msg, 1, #prefix + 5) == prefix .. "gbl" then
            gearblacklist = not gearblacklist
            if gearblacklist then
                h("Gearblacklist On!")
            else
                h("Gearblacklist Off")
            end
        end

        if string.sub(msg, 1, #prefix + 5) == prefix .. "slock" then
            slock = not slock
            if slock then
                h("Serverlock On!")
            else
                h("Serverlock Off")
            end
        end

        if string.sub(msg, 1, #prefix + 3) == prefix .. "nok" then
            if lava == false then
                lava = true
                for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
                v.CanTouch = true
                end
                else
                lava = false
                for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
                v.CanTouch = false
                end
            end
        end
        if string.sub(msg, 1, #prefix + 4) == prefix .. "kick" then
            print('Calling Kick Function')
            local plr = fp(t)
            h("Kicking " ..plr)
            gearblacklist = false
            antisize = false
            c("char " ..acs.. "" ..plr.. " " ..randomchar)task.wait(time)
            c("blind " ..acs.. "" ..plr)task.wait(time)
            c("invis " ..acs.. "" ..plr)task.wait(time)
            c("ff " ..plr.. " me [qa.lua]")task.wait(time)
            c("size " .. plr .. " nan")task.wait(time)
            for i = 1,3 do
                c("freeze " ..acs.. "" ..plr.. " [qa.lua]")
                c("undog " ..acs.. "" ..plr.. " [qa.lua]")
            end task.wait(time)
            c("size " ..acs.. "" ..plr.. " 2")task.wait(time)
            c("noclip  " ..acs.. "" ..plr.. " [qa.lua]")task.wait(time)
            c("invis  " ..acs.. "" ..plr.. " [qa.lua]")task.wait(time)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character.Humanoid
            humanoid.Seated:Connect(function(active, seat)
                humanoid:ChangeState(Enum.HumanoidStateType.Running)
            end)
            for i = 1,10 do local ags2 = string.rep(0, math.random(20, 500)) c("gear me " .. ags2 .. "25741198") end
            repeat wait() until #game.Players.LocalPlayer.Backpack:GetChildren() >= 7
            task.wait()
            usetool(10, 0)
            c("tp " ..plr.. " me [qa.lua]")
            repeat task.wait(time) usetool(10, 0) LP.Character.HumanoidRootPart.CFrame = Players[plr].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,1) until game.Players[plr].Character:FindFirstChildOfClass("Tool")
            task.wait(time + 0.5)
            c('clear ing! [qa.lua]')
        end

        if string.sub(msg, 1, #prefix + 7) == prefix .. "gearban" then
            local plr = fp(t)
            table.insert(gearbanned, plr)
            c("gear me " .. ags .. "82357101")
            repeat
                task.wait(time)
            until LocalPlayer.Backpack:FindFirstChild("PortableJustice")
            LocalPlayer.Backpack.PortableJustice.Parent = LocalPlayer.Character
            repeat
                task.wait(time)
            until workspace[game.Players.LocalPlayer.Name].PortableJustice:FindFirstChild("MouseClick")
            local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players[plr].Character.HumanoidRootPart.CFrame
            c("unff " .. plr .. " [qa.lua]")
            repeat
                coroutine.wrap(
                    function()
                        workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[plr])
                    end
                )()
                task.wait(time)
            until game.Players[plr].Character:FindFirstChild("DisableBackpack")
            LocalPlayer.CharacterAdded:wait()
            repeat
                task.wait(time)
            until LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
        end
    end
)
coroutine.wrap(function()
    while antistun do task.wait(time)
        if game.Players.LocalPlayer.Character:FindFirstChild("Addon") then
            game.Players:Chat("undog me [qa.lua] "  ..math.random(0, 999999))
        end
    end
end)()
coroutine.wrap(function()
    while antiaddon do task.wait(time)
        if game.Players.LocalPlayer.Character:FindFirstChild("Addon") then
            game.Players:Chat("undog me [qa.lua] "  ..math.random(0, 999999))
        end
    end
end)()
coroutine.wrap(function()
    while antiblind do task.wait(time)
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EFFECTGUIBLIND") then
            game.Players.LocalPlayer.PlayerGui.EFFECTGUIBLIND:Destroy()
        end
    end
end)()
coroutine.wrap(function()
    while antifling do task.wait(time)
        local afling = game.Players.LocalPlayer.Character:WaitForChild("Torso").ChildAdded:Connect(function(fling)
            local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
        end)
    end
end)()
coroutine.wrap(function()
    while antijail do task.wait(time)
        if game.Workspace.Terrain._Game.Folder:FindFirstChild(game.Players.LocalPlayer.Name.."'s jail") then
            game.Players:Chat("unjail me [qa.lua] "  ..math.random(0, 999999))
        end
    end
end)()
coroutine.wrap(function()
    while antimsg do task.wait(time)
        for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
            if v.Name == "HintGUI" or v.Name == "MessageGUI" then
                v.Destroy()
            end
        end
        for i, v2 in pairs(workspace.Terrain._Game.Folder:GetChildren()) do
            if v2.Name == "Message" then
                v2:Destroy()
            end
        end
    end
end)()
coroutine.wrap(function()
    while antiseizure do task.wait(time)
        if game.Players.LocalPlayer.Character:FindFirstChild("Seizure") then
            game.Players:Chat("unseizure me [qa.lua] " ..math.random(0, 999999))
        end
    end
end)()
coroutine.wrap(function()
    while antipunish do task.wait(time)
        if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
            game.Players:Chat("unpunish me [qa.lua] " ..math.random(0, 999999))
        end
    end
end)()
coroutine.wrap(function()
    while antifreeze do task.wait(time)
        if game.Players.LocalPlayer.Character:FindFirstChild("ice") then
            game.Players:Chat("thaw me [qa.lua] " ..math.random(0, 999999))
        end
    end
end)()
coroutine.wrap(function()
    while antikill do task.wait(time)
        local function chat(m)
            game.Players:Chat(m)
        end
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 and workspace:FindFirstChild(game.Players.LocalPlayer.Name) then
            chat("reset me [qa.lua] " ..math.random(0, 999999))
        end
    end
end)()
coroutine.wrap(function()
    while task.wait(time) do
        local function chat(m)
            game.Players:Chat(m)
        end
        for i, v2 in pairs(game.Workspace:GetChildren()) do
            if v2:IsA("Part") and v2.Name == "SubspaceTripmine" then
                chat("clr [qa.lua]  " ..math.random(100, 1000000))
            end
        end
    end
end)()
coroutine.wrap(function()
    while task.wait(time) do
        for i, v2 in pairs(workspace.Terrain._Game.Admin.Pads:GetChildren()) do
            repeat wait() until v2
            if v2:IsA("Model") then
                if v2.Name ~= "Touch to get admin" then
                        if v2:FindFirstChild("Head") then
                            local head = v2.Head
                            if head.Transparency ~= 0 then
                            head.Transparency = 0
                        end
                    end
                end
            end
            if v2.Name == "Touch to get admin" then
                    if v2:FindFirstChild("Head") then
                    local head = v2.Head
                    if head.Transparency ~= 0 then
                        head.Transparency = 0
                    end
                end
            end
        end
    end
end)()

coroutine.wrap(function()
    while task.wait(time) do
    for i, v in pairs(game.Players:GetChildren()) do
        local name = v.Name
        for i, v2 in pairs(workspace:GetChildren()) do
            if v2:IsA("Model") and v2.Name == name.."'s Particles" or v2.Name == "Rocket" then
                v2:Destroy()
                end
            end
        end
    end
end)()
coroutine.wrap(function()
    while task.wait(time) do
    for _,v in pairs(workspace.Terrain._Game.Workspace:GetChildren()) do
        if v:IsA("Part") then
                v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
           end
        end
    end
end)()
coroutine.wrap(
    function()
        while task.wait(time) do
            local randomnumber = math.random(100, 1000000)
            local StarterGui = game:GetService("StarterGui")
            local function chat(m)
                game.Players:Chat(m)
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("DisableBackpack") then
                chat("reset me [qa.lua] "..randomnumber)
                StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
            end
        end
    end
)()
coroutine.wrap(
    function()
        while task.wait() do
            for i = 1, 15 do
            local randomnumber = math.random(100, 1000000)
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            if not character then
                repeat character = LocalPlayer.CharacterAdded:Wait() until LocalPlayer:FindFirstChild("Character")
              end
            if character ~= nil then
            repeat task.wait() character:WaitForChild("Head") character:WaitForChild("Torso") character:WaitForChild("HumanoidRootPart") until character:FindFirstChild('Head') and character:FindFirstChild('Torso')  and character:FindFirstChild("HumanoidRootPart")
            end
                if character:FindFirstChild('Head') and character:FindFirstChild('Torso') and character:FindFirstChild("HumanoidRootPart") then
              local HeadPos, TorsoPos = character.Head.Position, character.Torso.Position
              if HeadPos == TorsoPos then
                game.Players:Chat("reset all [qa.lua] "..randomnumber)
              else
                repeat task.wait() character:WaitForChild("Head") character:WaitForChild("Torso") character:WaitForChild("HumanoidRootPart") until character:FindFirstChild('Head') and character:FindFirstChild('Torso') and character:FindFirstChild("HumanoidRootPart") or LocalPlayer.CharacterAdded:Wait()
            end
              end
            end
        end
end)()
coroutine.wrap(
    function()
        while task.wait(time) do
      if not antisize then wait() end
            local function chat(m)
                game.Players:Chat(m)
            end
            for i, player in pairs(game:GetService("Players"):GetPlayers()) do
                for i, player in pairs(game:GetService("Players"):GetPlayers()) do
                    if player.Character then
                        if player.Character:FindFirstChild("HumanoidRootPart") then
                        local size = player.Character.HumanoidRootPart.Size
                        if size.Y ~= 2 then
                            local randomnumber = math.random(1, 99999999)
                            local Name = player.Name
                            chat("unsize " .. Name .. " [qa.lua] " ..randomnumber)
                            chat(
                                "pm " ..
                                    Name ..
                                        " Sorry but changing size is disabled in this server. Please check other server! [qa.lua]"
                            )
                            end
                        end
                    end
                end
            end
        end
    end
)()

game.Players.PlayerAdded:Connect(
    function(plr)
        repeat wait() until plr and plr.Name
        coroutine.wrap(
			function()
				wait(1)
                local function chat(m)
                    game.Players:Chat(m)
                end
                if slock == true then
                    if table.find(whitelisted, plr.Name) then
                    say("Whitelisted User Joined! " ..plr.Name.. " [qa.lua]")
                else
                    chat(prefix.. "kick " ..plr.Name)
                 end
                end
                if table.find(blacklisted, plr.Name) then
                        chat(prefix.. "kick " ..plr.Name)
                    end
                if table.find(rejoined, plr.Name) then
                    game.Players:Chat("pm " ..plr.Name.. " Welcome Back!, You Just Came Back To The Hell! [qa.lua]")
                end
                if table.find(gearbanned, plr.Name) then
                    chat(prefix.. "gearban " ..plr.Name)
                end
                        if plr.Name == "Damix2131" then
                        game.Players:Chat("h \n\n\n Damix Is Here! [qa.lua] \n\n\n")
                    else
                        game.Players:Chat("h \n\n\n Welcome " .. plr.Name .. " To Hell! [qa.lua] \n\n\n")
                    end
            end)()
    end
)

game.Players.PlayerRemoving:Connect(
    function(plr)
        table.insert(rejoined, plr.Name)
        game.Players:Chat("h \n\n\n Bye Bye " .. plr.Name .. " From Hell! [qa.lua] \n\n\n")
    end
)

workspace.ChildRemoved:Connect(function(loplr)
    if loplr.Name == game.Players.LocalPlayer.Name then
        workspace:WaitForChild(game.Players.LocalPlayer.Name)
        workspace[game.Players.LocalPlayer.Name].DescendantAdded:Connect(function()
            if game.Players.LocalPlayer.Character then
                if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                    if game.Players.LocalPlayer.Character.Torso:FindFirstChild("BodyForce") then
                        game.Players.LocalPlayer.Character.Torso:FindFirstChild("BodyForce").Force = Vector3.new(0,0,0)
                        wait()
                        game.Players.LocalPlayer.Character.Torso:FindFirstChild("BodyForce"):Destroy()
                        repeat wait()
                        until not game.Players.LocalPlayer.Character.Torso:FindFirstChild("BodyForce")
                    end
                end
            end
        end)
        if game.Players.LocalPlayer.Character then
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                 game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                end)
            end
        end
    end
end)

for i,plr in pairs(game.Players:GetPlayers()) do
     if plr.Name ~= game.Players.LocalPlayer.Name then
        plr.CharacterAdded:Connect(function()
            plr.Character.ChildAdded:Connect(function(v)
                if gearblacklist then
                    if table.find(tools, v.Name) then
                        if not string.find(plr.Name:lower(), "me_", 1, true) or string.find(plr.Name:lower(), "all_", 1, true) then
                            c("removetools "..plr.Name)
                            c("pm "..plr.Name.." Sorry "..v.Name.." is blacklisted from this server. [qa.lua]")
                        else
                            c("removetools others")
                            c("pm "..plr.Name.." Sorry "..v.Name.." is blacklisted from this server. [qa.lua]")
                    	end
                    end
                end
            end)
            plr.Backpack.ChildAdded:Connect(function(v)
                if gearblacklist then
                    if table.find(tools, v.Name) then
                        if not string.find(plr.Name:lower(), "me_", 1, true) or string.find(plr.Name:lower(), "all_", 1, true) then
                            c("removetools "..plr.Name)
                            c("pm "..plr.Name.." Sorry "..v.Name.." is blacklisted from this server. [qa.lua]")
                        else
                            c("removetools others")
                            c("pm "..plr.Name.." Sorry "..v.Name.." is blacklisted from this server. [qa.lua]")
            			end
            		end
            	end
            end)
        end)
    end
end

game.Players.ChildAdded:Connect(function(plr)
    if plr.Name ~= game.Players.LocalPlayer.Name then
        plr.CharacterAdded:Connect(function()
            plr.Character.ChildAdded:Connect(function(v)
                if gearblacklist then
                    if table.find(tools, v.Name) then
                        if not string.find(plr.Name:lower(), "me_", 1, true) or string.find(plr.Name:lower(), "all_", 1, true) then
                            c("removetools "..plr.Name)
                            c("pm "..plr.Name.." Sorry "..v.Name.." is blacklisted from this server. [qa.lua]")
                        else
                            c("removetools others")
                            c("pm "..plr.Name.." Sorry "..v.Name.." is blacklisted from this server. [qa.lua]")
                    	end
                    end
                end
            end)
            plr.Backpack.ChildAdded:Connect(function(v)
                    if gearblacklist then
            			if table.find(tools, v.Name) then
            				if not string.find(plr.Name:lower(), "me_", 1, true) or string.find(plr.Name:lower(), "all_", 1, true) then
                				c("removetools "..plr.Name)
                				c("pm "..plr.Name.." Sorry "..v.Name.." is blacklisted from this server. [qa.lua]")
            				else
            					c("removetools others")
                				c("pm "..plr.Name.." Sorry "..v.Name.." is blacklisted from this server. [qa.lua]")
            			end
            		end
            	end
            end)
        end)
    end
end)

repeat task.wait() until game:GetService("Workspace").Terrain._Game.Workspace:FindFirstChild("Chimney")
game:GetService("Workspace").Terrain._Game.Workspace.Chimney.Smoke.Enabled = true
game:GetService("Workspace").Terrain._Game.Workspace.Chimney.Smoke.Opacity = 1
game:GetService("Workspace").Terrain._Game.Workspace.Chimney.Smoke.Size = 9
game:GetService("Workspace").Terrain._Game.Workspace.Chimney.Smoke.RiseVelocity = 15
game:GetService("Workspace").Terrain._Game.Workspace.Chimney.Smoke.Color = Color3.fromRGB(100, 100, 100)

for i,v in pairs(workspace:GetChildren())do
    if v:IsA("BasePart") and v.Locked == true then
        v.Locked = false
    end
end

StartMsg()
print("Loaded in "..tostring(os.clock()-loadtime).."s")

--[[
    
    // credits 
        Tokio for coroutine wraps and explaining tables
        TheKillerCrum for fixing kick, toggable nok and chimney script
        supertea_yaytest2 [on roblox] FOR SHOWING ME EASIER WAY TO MAKE KILL BRICK

        ]]
