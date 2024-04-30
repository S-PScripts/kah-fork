-- KillerSploit BETAv1.1.6
-- say "cmds" for the list of current commands
-- i'd really love your feedback and suggestions! also dont expect too much yet the script's still in its early development
-- Credits to gamingkhoaito#1014 and haroldjd2017ipad#4295 for this amazing script :D
-- anyways enjoy

local msg = function(msg) game.Players:Chat("h                                                                                                                             "..msg.."                                                                                                                                                          ") end
local chat = function(...)game.Players:Chat(...)end
local say = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = ">"
local LocalPlayer = game.Players.LocalPlayer
local idhider = string.rep(0, 500)
local commands = { }
local PlrChar = workspace:WaitForChild(LocalPlayer.Name)
local version_ = "IsJKPu-OWvGZ5-B2zmhN"
local RunService = game:GetService("RunService")

local spamming = false
local DiscoFog = false
local antiMusic = false
local antiOof = false
local AntiBlind = false
local safeSpamming = false
local AntiCrash = false
local AntiFling = false
local Playing = false
local antivg = false
local antipunish = false
local noadminp_ = false
local AntiFreeze = false

local killer = nil 

local spamSpeed = 0
local MusicLocked = "0"
local ssloopCount = 40

local banGearTargets = { }
local floorkilltargets = { }
local gameEliminated = { }
local gamePlayers = { }
local banGearTargets2 = { }

local songList = {
	"lol",
	"ASTRONOMIA (coffin dance oof version)",
	"Who (Ft. Shiloh Dynasty)",
	"Santa Tell Me",
	"Running in the 90s (Epic death sound cover)",
	"CRAB RAVE OOF",
	"Undertale Rick roll",
	"#BrooklynBloodPop!",
	"Among Us Drip",
	"Baby I'm Yours",
	"kitchen in the dungeon"
}

songID = {
	"6754519148",
	"4948489007",
	"4461953104",
	"2546949814",
	"3307959033",
	"2590490779",
	"332422144",
	"6371179964",
	"6486359635",
	"2649314010",
	"5648499584"
}



function notif(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "KillerSploit"; 
		Text = msg; 
		Duration = 5;
	})
end

if _G.KillerSploitExecuted then return notif("KillerSploit is already executed") end
_G.KillerSploitExecuted = true

function remind(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Reminder"; 
		Text = msg; 
		Duration = 5;
	})
end

notif("Starting up...")

function infnotif(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "noobus infinitus"; 
		Text = msg; 
		Duration = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999;
	})
end

notif("checking version...")
if loadstring(game:HttpGet("https://pastebin.com/raw/BnVvL2wB", true))() ~= version_ then 
	notif("you are using outdated version of KillerSploit")
	return loadstring(game:HttpGet("https://pastebin.com/raw/B0WsGJyx", true))() 
end

notif("loading commands...")

local function movePart(target, plr)
	local size = target.Size
	local pos = target.Position
	local size2 = PlrChar["Torso"].Size
	local size3 = PlrChar["Right Arm"].Size
	local sss = true
	local eee = true
	local oldPos = PlrChar.HumanoidRootPart.CFrame
	spawn(function()
		while sss do
			PlrChar.Humanoid:ChangeState(11)
			PlrChar.HumanoidRootPart.CFrame = CFrame.new(pos.X, pos.Y, pos.Z-(size.X/2)-size2.X/2) * CFrame.Angles(0, math.rad(90), 0)
			game.Players:Chat("unpunish me")
			wait()
		end
	end) 
	wait(.3)
	sss = false
	if plr then
		chat("tp me "..plr)
		chat("tp me "..plr)
	else
		for i = 1, 10 do 
			chat("skydive me")
		end
	end
	LocalPlayer.CharacterAdded:Connect(function(char)
		if eee then
			eee = false
		end
	end)
	chat("reset me")
	repeat wait()
	until eee == false
end

local Pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads
local Players = game:GetService("Players")
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

local function getAdmins()
	local S = pcall(function()
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")) do
			firetouchinterest(PlrChar["Left Leg"], v.Head, 0)
			firetouchinterest(PlrChar["Left Leg"], v.Head, 1)
			wait()
		end
	end)
	if not S then
		notif("An error occured!")
	end
end

local function Regen()
	local S = pcall(function()
		fireclickdetector(workspace.Terrain._Game.Admin.Regen.ClickDetector, 1)
		fireclickdetector(workspace.Terrain._Game.Admin.Regen.ClickDetector, 0)
	end)
	if not S then
		notif("Regen pad not found!")
	end
end

local function ConnectP(plr)
	spawn(function()
		repeat wait()
		until plr.Character ~= nil
		local ban_gear2 = false
		for i,v in pairs(banGearTargets2) do
			if v == plr.Name then
				ban_gear2 = true
			end
		end
		if ban_gear2 then
			local OldPos = PlrChar.HumanoidRootPart.CFrame
			chat("gear me 82357101")
			local tool = LocalPlayer.Backpack:WaitForChild("PortableJustice")
			PlrChar.Humanoid:EquipTool(tool)
			chat("tp me "..plr.Name)
			repeat tool:WaitForChild("MouseClick"):FireServer(plr.Character) wait()
			until plr.Character:FindFirstChild("Part")
			chat("reset "..plr.Name)
			PlrChar.HumanoidRootPart.CFrame = OldPos
			PlrChar.Humanoid.Jump = true
			PlrChar.Humanoid:UnequipTools(tool)
			tool.Parent = nil
		end
	end)
	local db1 = false
	local db2 = false
	RunService.RenderStepped:Connect(function()
		pcall(function()
			local c_ = false
			for i,v in pairs(banGearTargets) do
				if plr == v then
					c_ = true
				end
			end
			local tool = plr.Backpack:FindFirstChildOfClass("Tool") or plr.Character:FindFirstChildOfClass("Tool")
			if plr.Backpack:FindFirstChild("VampireVanquisher") or plr.Character:FindFirstChild("VampireVanquisher") then
				if not db2 and antivg then
					db2 = true
					chat("ungear "..plr.Name)
					chat("pm "..plr.Name.." [Automatic] you can't have vampire gear lol")
					delay(.3, function()
						db2 = false
					end)
				end
			end
			if tool and c_ then
				if not db1 then
					db1 = true
					chat("ungear "..plr.Name)
					chat("pm "..plr.Name.." [Automatic] you are banned for using gears in this server lol")
					delay(.3, function()
						db1 = false
					end)
				end
			end
			local _c2 = false
			for i,v in pairs(plr.Backpack:GetChildren()) do
				if v.Name ~= "Bombo'sSurvivalKnife" and v.Name ~= "Torch" then
					_c2 = true
				end
			end
			if plr.Character:FindFirstChildOfClass("Tool").Name ~= "Torch" and plr.Character:FindFirstChildOfClass("Tool").Name ~= "Bombo'sSurvivalKnife" then
				_c2 = true
			end
			if _c2 and Playing then
				chat("ungear "..plr.Name)
				chat("gear "..plr.Name.." 31839337")
				if plr == killer then
					chat("gear "..plr.Name.." 121946387")
				end
				chat("pm "..plr.Name.." other gears are not allowed during a game")
			end
		end) 
	end)
	plr.Chatted:Connect(function(m)
		if m:lower() == "/c system" and plr ~= LocalPlayer then
			msg(plr.Name.." is using /c system lol (imagine using /c system)")
		end
		if string.sub(m, 0, 1) == ":" then
			m = string.sub(m, 2, #m)
		end
		m = m:lower()
		local mm_ = m:split(" ")
		if mm_[1] == "size" and AntiCrash then
			if mm_[3] == "0.3" or mm_[3] == ".3" then
				local t
				if mm_[2] == "me" then
					t = plr.Name
				elseif mm_[2] == "all" then
					t = "all"
				end
				for i = 1, 3 do chat("reset "..t) wait() end
				msg("[Automatic] "..plr.Name.." failed to crash the server")
			end
		end
		local t_251 = RemoveSpaces(m:lower())
		if t_251 == "clr" or t_251 == "music" or t_251 == "clear" then
			if antiMusic then
				chat("music 000000000000000000000000000000000000000000000000000000000000000000000000"..MusicLocked)
				msg("[Automatic] current music is locked")
			end 
		elseif m:lower() == "fix" and Playing then
			wait()
			chat("time 0")
			chat("fogend 25")
			chat("fogcolor 0 0 0")
		end
	end)
	if plr ~= game.Players.LocalPlayer then
		plr.CharacterAdded:Connect(function(char)
			local check2 = false
			for i,v in pairs(floorkilltargets) do
				if v == plr then
					check2 = true
				end
			end
			if check2 then
				chat("kill "..plr.Name)
			end
			char.ChildAdded:Connect(function(I)
				local C = false
				for i,v in pairs(gameEliminated) do
					if v == plr then
						C = true
					end
				end
				if I.Name == "ForceField" and not C and Playing then
					chat("unff "..plr.Name)
				end
			end)
		end)
	end
	repeat wait()
	until plr.Character ~= nil
	local ChAr = plr.Character
	ChAr.ChildAdded:Connect(function(I)
		local C = false
		for i,v in pairs(gameEliminated) do
			if v == plr then
				C = true
			end
		end
		if I.Name == "ForceField" and not C and Playing then
			chat("unff "..plr.Name)
		end
	end)
end

game.Players.PlayerRemoving:Connect(function(plr)
	for i,v in pairs(gamePlayers) do
		if v == plr and Playing then
			table.remove(gamePlayers, i)
			msg(plr.Name.." has been eliminated")
			say(plr.Name.." has been eliminated")
		end
	end
end)

PlrChar.ChildAdded:Connect(function(I)
	if I.Name == "ice" and AntiFreeze then
		chat("thaw me")
	end
end)

LocalPlayer.CharacterAdded:Connect(function(char)
	PlrChar = char
	PlrChar:WaitForChild("Humanoid").Died:Connect(function()
		if antiOof then
			chat("reset me")
		end
	end)
	PlrChar.ChildAdded:Connect(function(I_)
		if I_.Name == "ice" and AntiFreeze then
			chat("thaw me")
		end
	end)
	PlrChar:WaitForChild("Torso").ChildAdded:Connect(function(I)
		if I.Name == "BFRC" and AntiFling then
			PlrChar.Humanoid.Sit = false
			local loop = true
			delay(.3, function()
				loop = false
			end)
			while loop do
				PlrChar.Torso.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				wait()
			end
			wait()
			I:Destroy()
		end
	end)
end)

game.Lighting.ChildAdded:Connect(function(I)
	if I == PlrChar and antipunish then
		chat("unpunish me")
	end
	if noadminp_ then
		wait()
		PlrChar.Parent = workspace
	end
end)

PlrChar:WaitForChild("Humanoid").Died:Connect(function()
	if antiOof then
		chat("reset me")
	end
end)

PlrChar:WaitForChild("Torso").ChildAdded:Connect(function(I)
	if I.Name == "BFRC" and AntiFling then
		PlrChar.Humanoid.Sit = false
		local loop = true
		delay(.3, function()
			loop = false
		end)
		while loop do
			PlrChar.Torso.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
			wait()
		end
		wait()
		I:Destroy()
	end
end)

for i,v in pairs(game.Players:GetPlayers()) do
	ConnectP(v)
end
wait()
game.Players.PlayerAdded:Connect(ConnectP)

local Folder243 = workspace.Terrain._Game.Folder
Folder243.ChildAdded:Connect(function(A)
	if A:IsA("Sound") then
		local Id = tostring(A.SoundId)
		if string.sub(Id, 33, #Id) ~= MusicLocked and antiMusic then
			chat("music 0000000000000000000000000000000000000000000000000000000000000000000000000000000"..MusicLocked)
			msg("[Automatic] current music is locked")
		end
		if Playing and string.sub(Id, 33, #Id) ~= "143382469" then
			chat("music 143382469")
		end
	end
end)

LocalPlayer:WaitForChild("PlayerGui").ChildAdded:Connect(function(I)
	if I.Name == "EFFECTGUIBLIND" and AntiBlind then
		wait()
		I:Destroy()
	end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if string.sub(msg:lower(), 0, 1) == prefix then 
		if msg:split(prefix)[1] == "" then
			local msgs = msg:split(prefix)
			msgs = msgs[2]:split(" ")
			msgs[1] = msgs[1]:lower()
			local cmd = msgs[1]
			if cmd == "spam" or cmd == "sspam" or cmd == "play" or cmd == "paintm" or cmd == "sm" or cmd == "msg" then
				table.remove(msgs, 1)
				for i,v in pairs(msgs) do
					if i ~= #msgs then 
						table.remove(msgs, i)
						table.insert(msgs, i, v.." ")
					end
				end
				commands[cmd](table.concat(msgs))
			else
				if msgs[2] then
					commands[msgs[1]](msgs[2])
				else
					commands[msgs[1]]()
				end
			end
		end
	end
end)

wait()

commands.dsaok = function()
	local Char = game.Players.LocalPlayer.Character
	local wob = game:GetService("Workspace").Terrain["_Game"].Workspace.Obby
	for i,v in pairs(wob:GetChildren()) do
		v.TouchInterest:Destroy()
	end
	notif("you are now immune to obby kill parts")
end

commands.resetp = function()
	local s = pcall(function()
		Regen()
	end)
end

commands.admins = function()
	getAdmins()
end

commands.unspam = function()
	spamming = false
	safeSpamming = false
	notif("spamming has been stopped")
end

wait()

commands.ssloop = function(num)
	local A = tonumber(num)
	if A ~= nil then
		ssloopCount = A
		notif("safe spam repeat count has been set to "..ssloopCount)
	elseif A == nil then
		notif("invalid argument")
	end
end

wait()

commands.sspam = function(cmd)
	if not safeSpamming then
		safeSpamming = true
		notif("safe spamming")
		for i = 0, ssloopCount do
			if not safeSpamming then 
				break
			end
			chat(cmd)
			wait(spamSpeed)
		end
		safeSpamming = false
		notif("safe spam finished")
	else
		notif("safe spam is already running, please wait")
	end
end

wait()

commands.spam = function(cmd)
	if not spamming then
		notif("spamming")
		spamming = true
		spawn(function()
			while spamming do
				--Regen()
				--getAdmins()
				wait()
			end
		end)
		delay(300, function()
			if spamming then
				remind("you are currently spamming "..cmd)
			end
		end)
		while spamming do
			chat(cmd.." "..tostring(math.random(0, 100)))
			wait(spamSpeed)
		end
	else
		notif("you are already spamming")
	end
end

wait()

commands.spamspeed = function(speed)
	spamSpeed = tonumber(speed)
	notif("spam speed has been set to "..spamSpeed)
end

wait()

commands.prefix = function(str)
	if #str == 1 then
		prefix = str
		notif("prefix has been changed to "..str)
	else
		notif("prefix should be 1 character only")
	end
end
wait()
commands.serhop = function()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
			amount = v.playing
		end
	end
	if #x > 0 then
		notif("Joining a server with "..amount.." Players")
		wait(0.25)
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	else
		notif("waiting for available server...")
	end
end

wait()

commands.lag = function()
	getAdmins()
	notif("lagging the server...")
	for i = 1, 20 do
		chat("gear me 253519495")
	end
	repeat wait()
	until #LocalPlayer.Backpack:GetChildren() == 20
	for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
		PlrChar.Humanoid:EquipTool(v)
		PlrChar:WaitForChild("DriveBloxUltimateCar")
		v:Activate()
		delay(3, function()
			v.Parent = nil
		end)
	end
end

wait()

commands.discofog = function()
	getAdmins()
	if not DiscoFog then
		DiscoFog = true
		chat("fogend 0 0 0")
		chat("time 0")
		chat("ambient 255 255 255")
		chat("colorshiftbottom 255 255 255")
		chat("ambient 255 255 255")
		chat("outdoorambient 255 255 255")
		chat("colorshifttop 255 255 255")
		spawn(function()
			while DiscoFog do
				chat("fogcolor "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)))
				wait()
			end
		end)
		notif("disco fog enabled")
	else
		notif("disco fog is already running")
	end
end
wait()
commands.undiscofog = function()
	if DiscoFog then
		DiscoFog = false
		wait(.2)
		chat("fix")
		notif("disco fog disabled")
	end
end

wait()

commands.bangears = function(target) 
	if target:lower() == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			chat("ungear "..v.Name)
			table.insert(banGearTargets, #banGearTargets+1, v)
		end
		msg("all people has been banned for using gears in this server except for me")
	else
		local Target = FindPlayer(target)
		if Target then
			table.insert(banGearTargets, #banGearTargets+1, Target)
			chat("ungear "..Target.Name)
			msg(Target.Name.." has been banned for using gears in this server")
		else
			notif("player not found")
		end
	end
end

wait()

commands.unbangears = function(P)
	if P:lower() == "all" then
		banGearTargets = { }
		msg("everybody has been unbanned for using gears in this server")
	else
		local Target = FindPlayer(P)
		if Target then
			local A
			for i,v in pairs(banGearTargets) do
				if v == Target then
					A = i
				end
			end
			if A then
				table.remove(banGearTargets, A)
				msg(Target.Name.." has been unbaned for using gears in this server")
			else
				notif("this player is not banned from using gears")
			end
		else
			notif("player not found")
		end
	end
end

wait()

commands.floorkill = function(P)
	if P:lower() == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			table.insert(floorkilltargets, #floorkilltargets, v)
		end
		notif("floorkilling everyone else")
	else
		local Target = FindPlayer(P)
		if Target then
			table.insert(floorkilltargets, #floorkilltargets+1, Target)
			notif("floorkilling "..Target.Name)
		else
			notif("player not found")
		end
	end
end

wait()

commands.unfloorkill = function(P)
	if P:lower() == "all" then 
		floorkilltargets = { }
		notif("floorkilling has been stopped for everyone")
	else
		local Target = FindPlayer(P)
		if Target then
			local A = nil
			for i,v in pairs(floorkilltargets) do
				if v == Target then
					A = i
				end
			end
			if A then
				table.remove(floorkilltargets, A)
				notif("floorkilling has been stopped for "..Target.Name)
			else
				notif("you are not floorkilling this guy")
			end
		else
			notif("player not found")
		end
	end
end

wait()

commands.void = function(P)
	local Target = FindPlayer(P)
	if Target then
		local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
		local OldPos = Root.CFrame
		Root.CFrame = CFrame.new(0, -200, 0)
		wait(.45)
		chat("tp "..Target.Name.." me")
		chat("unfly "..Target.Name)
		wait()
		Root.CFrame = OldPos
		notif(Target.Name.." has been sent to the void")
	else
		notif("player not found")
	end
end

wait()

commands.rej = function()
	notif("rejoining...")
	wait(.7)
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.id == game.JobId then
			x[#x + 1] = v.id
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
		end
	end
end

wait()

commands.antimusic = function(toggle)
	if toggle == "on" then
		antiMusic = true
		local Id = tostring(Folder243.Sound.SoundId)
		notif("The current music has been locked")
		MusicLocked = string.sub(Id, 33, #Id)
	elseif toggle == "off" then
		antiMusic = false
		MusicLocked = "0"
		notif("The current music has been unlocked")
	end
end

wait()

commands.antiblind = function(toggle)
	if toggle == "on" then
		AntiBlind = true
		notif("Anti blind activated")
	elseif toggle == "off" then
		AntiBlind = false
		notif("Anti blind deactivated")
	end
end

wait()

commands.antikill = function(toggle)
	if toggle == "on" then
		antiOof = true
		notif("Anti kill activated")
	elseif toggle == "off" then
		antiOof = false
		notif("Anti kill deactivated")
	end
end

wait()

commands.ascend = function(P)
	local Target = FindPlayer(P)
	if Target then
		chat("setgrav "..Target.Name.." -500")
		chat("jump "..Target.Name)
		notif(Target.Name.." has been ascended")
	else
		notif("player not found")
	end
end

wait()

local timestop = false
commands.zw = function()
	notif("doing za warudo")
	loadstring(game:HttpGet("https://pastebin.com/raw/3MsUFtCK"))()
end

commands.kc = function()
	notif("action running")
	chat("music 5779908464")
	wait(1.1)
	chat("music 3280066384")
	chat("fix")
	wait(.1)
	chat("time 0")
	wait(.1)
	chat("time 12")
	wait(.1)
	chat("time 0")
	wait(.5)
	chat("colorshifttop 100000 0 0")
	chat("colorshiftbottop 100000 0 0")
	chat("fogcolor 255 0 0")
	chat("fogend 0")
	wait(.4)
	chat("colorshifttop 0 0 0")
	chat("colorshiftbottop 0 0 0")
	chat("fogcolor 231 84 128")
	wait(.6)
	chat("fogcolor 0 0 0")
	chat("fogend 50")
	wait(.1)
	chat("noclip me")
	chat(prefix.."spam speed others 0")
	wait(1.9)
	chat("music 3373991228")
	wait(.1)
	chat("colorshifttop 100000 0 0")
	chat("colorshiftbottop 100000 0 0")
	wait(.7)
	chat("fix")
	wait(.1)
	chat("music")
	chat("clip me")
	wait(.1)
	chat(prefix.."unspam")
	wait(.3)
	chat("speed all 16")
end

wait()

commands.movebp = function()
	notif("moving baseplate...")
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	movePart(workspace.Terrain._Game.Workspace.Baseplate)
	chat("fly me")
	notif("baseplate has been moved")
	PlrChar.HumanoidRootPart.CFrame = Oldpos
end

wait()

commands.anticrash = function(toggle)
	if toggle == "on" then
		AntiCrash = true
		notif("Anti crash has been enabled")
	elseif toggle == "off"  then
		AntiCrash = false
		notif("Anti crash has been disabled")
	end
end

wait()

commands.tohouse = function()
	local s = pcall(function()
		PlrChar.HumanoidRootPart.CFrame = CFrame.new(-29.809, 8.229, 72.000)
	end)
	if s then 
		notif("teleported you to the house")
	else
		notif("an error occured")
	end
end

wait()

commands.tospawn = function()
	local s = pcall(function()
		PlrChar.HumanoidRootPart.CFrame = CFrame.new(-41, 3.700, -25.589)
	end)
	if s then 
		notif("teleported you to the spawn")
	else
		notif("an error occured")
	end
end

wait()

commands.antifling = function(toggle)
	if toggle == "on" then
		AntiFling = true
		notif("Anti fling activated")
	elseif toggle == "off" then
		AntiFling = false
		notif("Anti fling disabled")
	end
end

wait()

commands.toregen = function()
	local Pos
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "Regen" then
			Pos = v.Position
		end
	end
	if Pos ~= nil then
		PlrChar.HumanoidRootPart.CFrame = CFrame.new(Pos.X, Pos.Y+3, Pos.Z)
		notif("teleported you to the regen pad")
	else
		notif("regen pad not found")
	end
end

wait()

commands.songlist = function()
	print("---------------------SONG LIST--------------------------")
	for i,v in pairs(songList) do
		print(i..". "..v)
	end
	print("--------------------------------------------------------")
	notif("press F9 to view the list of songs")
end                             

wait()

commands.play = function(song)
	local found = false
	local Song
	for i,v in pairs(songList) do
		if (v:lower().." "):match('^'.. song:lower()) then
			found = true
			Song = v
			chat("music 00000000000000000000000000000000000000000000000000000000000000000000000000"..songID[i])
		end
	end
	if found then
		msg("now playing: "..Song)
	else
		notif("song not found")
	end
end

wait()

commands.table = function()
	notif("throwing tables...")
	for i = 0, 50 do
		chat("gear me 243788010")
		local gear = LocalPlayer.Backpack:WaitForChild("RageTable")
		PlrChar.Humanoid:EquipTool(gear)
		gear:Activate()
		PlrChar.Humanoid:UnequipTools(gear)
		delay(5, function()
			gear.Parent = nil
		end)
		wait()
	end
	notif("tables has been thrown")
end

wait()

commands.bomb = function()
	notif("planting bombs...")
	for i = 0, 50 do
		chat("gear me 11999247")
		local gear = LocalPlayer.Backpack:WaitForChild("SubspaceTripmine")
		PlrChar.Humanoid:EquipTool(gear)
		gear:Activate()
		PlrChar.Humanoid:UnequipTools(gear)
		delay(5, function()
			gear.Parent = nil
		end)
		wait()
	end
	notif("bombs has been planted")
end

wait()

commands.paintm = function(color)
	local function getcolor(colorstring)
		local a = colorstring:split(" ")
		return(Color3.fromRGB(unpack(a)))
	end
	chat("gear me 18474459")
	if color == "random " then
		color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
	else
		color = getcolor(color)
	end
	PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
	for _,I in pairs(game.Workspace:GetDescendants()) do
		spawn(function()
			local IsPart = pcall(function()
				if I.Color then
				end
			end)
			if IsPart then
				PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = I, Color = color})
			end
		end)
	end
	wait()
	PlrChar.Humanoid:UnequipTools(PlrChar.PaintBucket)
	LocalPlayer.Backpack.PaintBucket.Parent = nil
end

wait()

commands.setspawnpoint = function(target)
	local target = FindPlayer(target)
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	if target then
		local spawns = { }
		for i,v in pairs(workspace.Terrain._Game.Workspace:GetChildren()) do
			if string.sub(v.Name, 0, 5) == "Spawn" then
				table.insert(spawns, #spawns+1, v)
			end
		end
		for i,v in pairs(spawns) do
			movePart(v, target.Name)
			wait(.3)
		end
		notif("spawn point location has been changed")
		PlrChar.HumanoidRootPart.CFrame = Oldpos
	else
		notif("player not found")
	end
end

wait()

commands.moveregen = function()
	notif("moving regen pad...")
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	movePart(workspace.Terrain._Game.Admin.Regen)
	notif("regen pad has been moved")
	PlrChar.HumanoidRootPart.CFrame = Oldpos
end

wait()

commands.movepads = function()
	notif("moving pads...")
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")) do
		movePart(v.Head)
		wait(.2)
	end
	notif("admin pads has been moved")
	PlrChar.HumanoidRootPart.CFrame = Oldpos
end

wait()

commands.antivg = function(toggle)
	if toggle == "on" then
		antivg = true
		notif("anti vampire gear activated")
	elseif toggle == "off" then
		antivg = false
		notif("anti vampire gear deactivated")
	end
end

wait()

commands.blender = function(target)
	local target = FindPlayer(target)
	if target then
		chat("jail "..target.Name)
		chat("stun "..target.Name)
		chat("spin "..target.Name)
		chat("fire "..target.Name)
		chat("name "..target.Name.." help me")
		notif("success")
	else
		notif("player not found")
	end
end

wait()

commands.game = function()
	Playing = true
	local plrCount = 0
	local timer = 120
	local start = 5
	chat("m we will be playing horor game")
	repeat
		msg("game begins in "..tostring(start))
		wait(1)
		start -= 1
	until start == 0
	chat("h the game has began!")
	spawn(function()
		wait(1)
		while true do
			if timer ~= 0 then
				msg("the game will end in "..tostring(timer).." seconds")
			end
			timer -= 1
			if timer <= 0 then
				if Playing and plrCount ~= 1 then
					Playing = false
					chat("fix")
					local results = ""
					for i,v in pairs(gamePlayers) do
						pcall(function()
							if not v.Backpack:FindFirstChild("Bombo'sSurvivalKnife") and not v.Character:FindFirstChild("Bombo'sSurvivalKnife") then
								if i ~= #gamePlayers then
									results = results..v.Name..", "
								else
									results = results..v.Name
								end
							end
						end)
					end
					msg("the game has ended")
					chat("m the game has ended! winners are: "..results)
					say("the game has ended! winners are: "..results)
					chat("ungear all")
					gamePlayers = { }
					gameEliminated = { }
					killer = nil
				end
				break
			end
			wait(1)
		end
	end)
	chat("time 0")
	chat("unff all")
	chat("name all      ")
	chat("fogend 25")
	chat("fogcolor 0 0 0")
	chat("gear all 31839337")
	chat("gear random 121946387")
	chat("music 143382469")
	say("we will be playing horor game")
	say("the killer needs to kill all people within 2 minutes to win and the innocents should survive within 2 minutes to win")
	say("theres a killer with knife which is random")
	say("who ever survives the longest wins")
	say("if you have knife it means you are the killer and you need to kill everybody to win")
	for i,v in pairs(game.Players:GetPlayers()) do
		table.insert(gamePlayers, #gamePlayers+1, v)
		plrCount += 1
		local s = true
		local s2 = true
		v.Character.Humanoid.Died:Connect(function()
			if s and Playing then
				s = false
				plrCount -= 1
				if plrCount ~= 1 then
					if v.Backpack:FindFirstChild("Bombo'sSurvivalKnife") or v.Character:FindFirstChild("Bombo'sSurvivalKnife") then
						chat("m the killer has died! game over")
						say("the killer has died! game over")
						local results = ""
						for i,v in pairs(gamePlayers) do
							pcall(function()
								if not v.Backpack:FindFirstChild("Bombo'sSurvivalKnife") and not v.Character:FindFirstChild("Bombo'sSurvivalKnife") then
									if i ~= #gamePlayers then
										results = results..v..", "
									else
										results = results..v
									end
								end
							end)
						end
						if results ~= "" then
							chat("m survivors: "..results)
							say("survivors: "..results)
						end
						chat("ungear all")
						gamePlayers = { }
						gameEliminated = { }
						timer = 0
						Playing = false
						chat("fix")
						killer = nil
					else
						local E
						for ii,vv in pairs(gamePlayers) do
							if v == vv then
								E = ii
							end
						end
						chat("m "..v.Name.." has been eliminated")
						pcall(function()
							table.remove(gamePlayers, E)
						end)
						say(v.Name.." has been eliminated")
						table.insert(gameEliminated, #gameEliminated+1, v)
					end
				elseif plrCount == 1 then
					chat("m the killer "..killer.Name.." has won the game! Game Over")
					say("the killer "..killer.Name.." has won the game! Game Over")
					killer = nil
					chat("ungear all")
					Playing = false
					chat("fix")
					gameEliminated = { }
					gamePlayers = { }
					timer = 0
				end
			end
		end)
		v.CharacterAdded:Connect(function(char)
			if s2 and Playing then
				s2 = false
				char:WaitForChild("HumanoidRootPart")
				wait()
				chat("name "..v.Name.." eliminated")
				chat("ff "..v.Name)
			end
		end)
	end
	repeat wait()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Backpack:FindFirstChild("Bombo'sSurvivalKnife") or v.Character:FindFirstChild("Bombo'sSurvivalKnife") then
				killer = v
			end
		end
	until killer ~= nil
	chat("speed "..killer.Name.." 20")
	for i,v in pairs(game.Players:GetPlayers()) do
		if v == killer then
			chat("pm "..v.Name.." You are the killer! You have to find and kill everbody to win before the game ends.")
		else
			chat("pm "..v.Name.." You are a survivor! You have to survive from the killer until the game ends to win")
		end
	end
end

wait()

commands.noob = function(target)
	local target = FindPlayer(target)
	if target then
		chat("char "..target.Name.." 18")
		notif("turned "..target.Name.." to noob")
	else
		notif("player not found")
	end
end

wait()

commands.bacon = function(target)
	local target = FindPlayer(target)
	if target then
		chat("char "..target.Name.." 2568447690")
		notif("turned "..target.Name.." to bacon")
	else
		notif("player not found")
	end
end

wait()

commands.antipunish = function(toggle)
	if toggle == "on" then
		antipunish = true
		notif("anti punish enabled")
	elseif toggle == "off" then
		antipunish = false
		notif("anti punish disabled")
	end
end

wait()

commands.thief = function(target)
	if target:lower() == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			chat("unhat "..v.Name)
			chat("name "..v.Name.." Thief")
			chat("speed "..v.Name.." 30")
			chat("trail "..v.Name.." black")
			chat("paint "..v.Name.." black")
			chat("hat "..v.Name.." 20642008")
			chat("hat "..v.Name.." 4855031321")
			chat("hat "..v.Name.." 4904891637")
			chat("shirt "..v.Name.." 4656776376")
			chat("pants "..v.Name.." 129459077")
			chat("hat "..v.Name.." 4531231804")
		end
		notif("morphed everyone into thief")
	else
		local target = FindPlayer(target)
		if target then
			chat("unhat "..target.Name)
			chat("name "..target.Name.." Thief")
			chat("speed "..target.Name.." 30")
			chat("trail "..target.Name.." black")
			chat("paint "..target.Name.." black")
			chat("hat "..target.Name.." 20642008")
			chat("hat "..target.Name.." 4855031321")
			chat("hat "..target.Name.." 4904891637")
			chat("shirt "..target.Name.." 4656776376")
			chat("pants "..target.Name.." 129459077")
			chat("hat "..target.Name.." 4531231804")
			notif("morphed "..target.Name.." into thief")
		else
			notif("player not found")
		end
	end
end

wait()

commands.hacker = function(target)
	if target:lower() == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			chat("unhat "..v.Name)
			chat("hat "..v.Name.." 13702134")
			chat("shirt "..v.Name.." 4800661980")
			chat("pants "..v.Name.." 3149138619")
			chat("hat "..v.Name.." 4995698441")
			chat("name "..v.Name.." Hacker")
			chat("speed "..v.Name.." 30")
			chat("trail "..v.Name.." green")
			chat("paint "..v.Name.." black")
		end
		notif("morphed everyone into hacker")
	else
		local target = FindPlayer(target)
		if target then
			chat("unhat "..target.Name)
			chat("hat "..target.Name.." 13702134")
			chat("shirt "..target.Name.." 4800661980")
			chat("pants "..target.Name.." 3149138619")
			chat("hat "..target.Name.." 4995698441")
			chat("name "..target.Name.." Hacker")
			chat("speed "..target.Name.." 30")
			chat("trail "..target.Name.." green")
			chat("paint "..target.Name.." black")
			notif("morphed "..target.Name.." into hacker")
		else
			notif("player not found")
		end
	end
end

wait()

commands.drop = function(gear)
	for i = 1,50 do
		chat("gear me "..tostring(gear))
		LocalPlayer.Backpack.ChildAdded:Wait()
		local gear = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
		PlrChar.Humanoid:EquipTool(gear)
		gear.Parent = workspace
	end
end

wait()

commands.crash = function()
	local Char = workspace:WaitForChild(game.Players.LocalPlayer.Name)
	local Backpack = game.Players.LocalPlayer:WaitForChild("Backpack")

	chat("fogend 0 0 0")
	chat("time 0")
	chat("ambient 255 255 255")
	chat("colorshiftbottom 255 255 255")
	chat("ambient 255 255 255")
	chat("outdoorambient 255 255 255")
	chat("colorshifttop 255 255 255")

	spawn(function()
		while true do
			chat("fogcolor "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)))
			wait()
		end
	end)

	local songs = {
		"3307959033",
		"474545527",
		"2590490779",
		"332422144",
		"909787925",
		"6371179964",
		"6486359635",
		"2325704183",
		"3590110076",
		"6700586581",
		"727097532"
	}

	wait()
	chat("m HEHE BOI")
	chat("name all rip")
	chat("music "..songs[math.random(1, #songs)])

	wait(1.5)

	chat("blind all")
	msg("GET CRASHED | crashed by killer s_plo_it")
	chat("blind all")
	chat("gear me 94794847")

	wait(.5)

	pcall(function() Char.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher) end)
	say("Killer S,plo-it is on top!")
	say("kohls admin house crash")
	say("GET CRASHED")
	say("POV: you dont have perm admin")

	wait(.3)
	pcall(function() Char.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher) end)

	spawn(function()
		while wait() do
			chat("gear me 94794847")
			pcall(function() Char.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher) end)
		end
	end)

	delay(2, function()
		notif("Server has been fucked")
	end)

	while wait() do
		for i = 1,3 do chat("size all 0.3") end
		chat("freeze all")
		for i = 1,3 do chat("size all 10") end
		chat("clone all")
	end
end

wait()

commands.bangears2 = function(target)
	local target = FindPlayer(target)
	if target then
		table.insert(banGearTargets2, #banGearTargets2+1, target.Name)
		local OldPos = PlrChar.HumanoidRootPart.CFrame
		chat("gear me 82357101")
		local tool = LocalPlayer.Backpack:WaitForChild("PortableJustice")
		PlrChar.Humanoid:EquipTool(tool)
		chat("tp me "..target.Name)
		repeat tool:WaitForChild("MouseClick"):FireServer(target.Character) wait()
		until target.Character:FindFirstChild("Part")
		chat("reset "..target.Name)
		PlrChar.HumanoidRootPart.CFrame = OldPos
		PlrChar.Humanoid.Jump = true
		PlrChar.Humanoid:UnequipTools(tool)
		tool.Parent = nil
		msg(target.Name.." has been banned from using gears in this server")
	else
		notif("player not found")
	end
end

wait()

commands.noadminp = function(toggle)
	if toggle == "on" then
		noadminp_ = true
		notif("enabled")
	elseif toggle == "off" then
		noadminp_ = false
		notif("disabled")
	end
end

wait()

commands.antifreeze = function(toggle)
	if toggle == "on" then
		AntiFreeze = true
		notif("anti freeze enabled")
	elseif toggle == "off" then
		AntiFreeze = false
		notif("antifreeze disabled")
	end
end

wait()

commands.invite = function()
	say("cool server, gg/b Q-n 9 xA-x G- QA.  ( organization )  ,     not only that, join these as well gg/z. ch -Uq GA a -G z (Shade server)")
end

wait()

commands.glitchbp = function()
	notif("glitching the baseplate...")
	PlrChar.HumanoidRootPart.CFrame = CFrame.new(-89.960, 3.700, -32.345)
	chat("gear me 19704064")
	chat("gear me 32356064")
	local LocalPlayer = game.Players.LocalPlayer
	local Backpack = LocalPlayer.Backpack
	local Humanoid = workspace:WaitForChild(LocalPlayer.Name):WaitForChild("Humanoid")
	local ice = Backpack:WaitForChild("IceStaff")
	local rocket = Backpack:WaitForChild("BigRocketLauncher")
	
	ice:WaitForChild("LocalScript"):Destroy()
	rocket:WaitForChild("Client"):Destroy()

	Tool = ice
	Handle = Tool:WaitForChild("Handle")

	Players = game:GetService("Players")
	RunService = game:GetService("RunService")
	UserInputService = game:GetService("UserInputService")

	Animations = {}
	LocalObjects = {}

	ServerControl = Tool:WaitForChild("ServerControl")
	ClientControl = Tool:WaitForChild("ClientControl")

	InputCheck = Instance.new("ScreenGui")
	InputCheck.Name = "InputCheck"
	InputButton = Instance.new("ImageButton")
	InputButton.Name = "InputButton"
	InputButton.Image = ""
	InputButton.BackgroundTransparency = 1
	InputButton.ImageTransparency = 1
	InputButton.Size = UDim2.new(1, 0, 1, 0)
	InputButton.Parent = InputCheck

	Rate = (1 / 60)

	ToolEquipped = false

	function SetAnimation(mode, value)
		if mode == "PlayAnimation" and value and ToolEquipped and Humanoid then
			for i, v in pairs(Animations) do
				if v.Animation == value.Animation then
					v.AnimationTrack:Stop()
					table.remove(Animations, i)
				end
			end
			local AnimationTrack = Humanoid:LoadAnimation(value.Animation)
			table.insert(Animations, {Animation = value.Animation, AnimationTrack = AnimationTrack})
			AnimationTrack:Play(value.FadeTime, value.Weight, value.Speed)
		elseif mode == "StopAnimation" and value then
			for i, v in pairs(Animations) do
				if v.Animation == value.Animation then
					v.AnimationTrack:Stop(value.FadeTime)
					table.remove(Animations, i)
				end
			end
		end
	end

	function CheckIfAlive()
		return (((Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Player and Player.Parent) and true) or false)
	end

	function Equipped(Mouse)
		Character = Tool.Parent
		Player = Players:GetPlayerFromCharacter(Character)
		Humanoid = Character:FindFirstChild("Humanoid")
		ToolEquipped = true
		if not CheckIfAlive() then
			return
		end
		Spawn(function()
			PlayerMouse = Mouse
			Mouse.Button1Down:connect(function()
				InvokeServer("Button1Click", {Down = true})
			end)
			Mouse.Button1Up:connect(function()
				InvokeServer("Button1Click", {Down = false})
			end)
			local PlayerGui = Player:FindFirstChild("PlayerGui")
			if PlayerGui then
				if UserInputService.TouchEnabled then
					InputCheckClone = InputCheck:Clone()
					InputCheckClone.InputButton.InputBegan:connect(function()
						InvokeServer("Button1Click", {Down = true})
					end)
					InputCheckClone.InputButton.InputEnded:connect(function()
						InvokeServer("Button1Click", {Down = false})
					end)
					InputCheckClone.Parent = PlayerGui
				end
			end
		end)
	end

	function Unequipped()
		LocalObjects = {}
		if InputCheckClone and InputCheckClone.Parent then
			InputCheckClone:Destroy()
		end
		for i, v in pairs(Animations) do
			if v and v.AnimationTrack then
				v.AnimationTrack:Stop()
			end
		end
		for i, v in pairs({ObjectLocalTransparencyModifier}) do
			if v then
				v:disconnect()
			end
		end
		Animations = {}
		ToolEquipped = false
	end

	function InvokeServer(mode, value)
		pcall(function()
			local ServerReturn = ServerControl:InvokeServer(mode, value)
			return ServerReturn
		end)
	end
	print("A")
	repeat wait()
	until game.Players.LocalPlayer.Character
	print("B")

	local sizeY = workspace.Terrain._Game.Workspace.Baseplate.Size.Y/2
	local posY = workspace.Terrain._Game.Workspace.Baseplate.Position.Y

	function OnClientInvoke(mode, value)
		if mode == "PlayAnimation" and value and ToolEquipped and Humanoid then
			SetAnimation("PlayAnimation", value)
		elseif mode == "StopAnimation" and value then
			SetAnimation("StopAnimation", value)
		elseif mode == "PlaySound" and value then
			value:Play()
		elseif mode == "StopSound" and value then
			value:Stop()
		elseif mode == "MousePosition" then
			print("C")
			local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			return ((PlayerMouse and {Position = Vector3.new(pos.X*1.2,posY+sizeY,pos.Z*1.2), Target = workspace.Terrain._Game.Workspace.Baseplate}) or nil)
		elseif mode == "SetLocalTransparencyModifier" and value and ToolEquipped then
			pcall(function()
				local ObjectFound = false
				for i, v in pairs(LocalObjects) do
					if v == value then
						ObjectFound = true
					end
				end
				if not ObjectFound then
					table.insert(LocalObjects, value)
					if ObjectLocalTransparencyModifier then
						ObjectLocalTransparencyModifier:disconnect()
					end
					ObjectLocalTransparencyModifier = RunService.RenderStepped:connect(function()
						for i, v in pairs(LocalObjects) do
							if v.Object and v.Object.Parent then
								local CurrentTransparency = v.Object.LocalTransparencyModifier
								if ((not v.AutoUpdate and (CurrentTransparency == 1 or  CurrentTransparency == 0)) or v.AutoUpdate) then
									v.Object.LocalTransparencyModifier = v.Transparency
								end
							else
								table.remove(LocalObjects, i)
							end
						end
					end)
				end
			end)
		end
	end
	ClientControl.OnClientInvoke = OnClientInvoke
	Tool.Equipped:connect(Equipped)
	Tool.Unequipped:connect(Unequipped)
	
	local Tool564523412 = rocket

	local MouseLoc = Tool564523412:WaitForChild("MouseLoc",10)

	function MouseLoc.OnClientInvoke()
		return workspace:WaitForChild("IceWall"):WaitForChild("IceBlock").Position
	end
	PlrChar.Humanoid.Jump = true
	Humanoid:EquipTool(ice)
	ice:Activate()
	workspace:WaitForChild("IceWall"):WaitForChild("IceBlock")
	Humanoid:UnequipTools(ice)
	ice.Parent = nil
	Humanoid:EquipTool(rocket)
	rocket:Activate()
	workspace:WaitForChild("Part")
	wait(.3)
	PlrChar.Humanoid:UnequipTools(rocket)
	rocket.Parent = nil
	chat("clr")
	chat("fly me")
	msg("baseplate has been glitched LOL")
end

wait()

commands.shutdown = function()
	delay(2, function()
		notif("the server has been shutdown")
	end)
	while wait() do
		for i = 1,3 do chat("size all 0.3") end
		chat("freeze all")
		for i = 1,3 do chat("size all 10") end
		chat("clone all")
	end
end

wait()

commands.sm = function(hey)
	msg("Server Message: "..hey)
end

wait()

commands.msg = function(str)
	msg(str)
end

wait()

commands.movebricks = function()
	notif("moving obby bricks...")
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
		movePart(v)
		wait(.2)
	end
	notif("obby bricks has been moved")
	PlrChar.HumanoidRootPart.CFrame = Oldpos
end

wait()

commands.cmds = function()
	notif("press F9 for a list of current of commands")
	wait(.1)
	print("wow looks like you outsmarted my outsmarting, congrats ig xd")
	print("oh well, these are the current commands i can do")
	print("---------------------MAIN COMMANDS--------------------------")
	print("*main commands have a fixed prefix of '>'*")
	print(prefix.."prefix -- changes the command prefix")
	print(prefix.."songlist -- list of playable songs in this script")
	print(prefix.."bangears2 [target] -- ban the target from gears but remake version")
	print(prefix.."crash -- Lmao")
	--print(">charlist -- list of current chars within the script")
	print(prefix.."noadminp [on/off] -- unpunish urself if not admin or perm")
	print(prefix.."invite -- displays discord invite")
	print(prefix.."rej -- BRUH MAKES YOU REJOIN OFC")
	print(prefix.."serhop -- ok this is an abbreviation of server hop, not the name of my physics teacher")
	print(prefix.."dsaok -- disables the obby kill blocks, weird name for a command innit")
	print(prefix.."movebp -- pretty explanatory")
	print(prefix.."resetp -- reset the admin pads")
	print(prefix.."un/spam [command] -- bruh")
	print(prefix.."spamspeed [num] -- sets the intervals for spamming")
	print(prefix.."sspam -- safer spam, it only runs at a certain limit tho (it's safer because it avoids warns/bans, hopefully)")
	print(prefix.."ssloop [num] -- sets the amount of times the safe spam command will repeat")
	print(prefix.."lag [target] -- lags a player? jokes on you this lags the whole server")
	print(prefix.."void [target] -- my Stand, Cream, shall send the target to the emptiness of the dark realm.")
	print(prefix.."ascend [target] -- makes a player literally transcend")
	print(prefix.."kc -- erase time thing")
	print(prefix.."zw -- stop time thing")
	print(prefix.."floorkill/unfk [target] -- kills a player everytime they respawn")
	print(prefix.."play [musicname] -- play my favorite songs! also what are you doing at my spotify playlist")
	print(prefix.."antifreeze [on/off] -- self explanatory")
	print(prefix.."bangears/unbg [target] -- explanatory as well")
	print(prefix.."un/discofog [interval] -- rainbow fog ooooo very naysu")
	print(prefix.."antimusic [on/off] -- locks the recently played music (credits to shade for this :D)")
	--print(prefix.."songinfo -- displays the details of the current playing song")
	print(prefix.."antikill [on/off]-- self explanatory")
	print(prefix.."antiblind [on/off]-- self explanatory")
	print(prefix.."anticrash [on/off]-- self explanatory (not accurate)")
	print(prefix.."antifling [on/off]-- self explanatory")
	print(prefix.."tohouse -- teleports you to the house")
	print(prefix.."tospawn -- teleports you to the spawn")
	print(prefix.."toregen -- teleports you to the regen pad")
	print(prefix.."table -- throws alot of explosive table")
	print(prefix.."bomb -- plants alot of bombs")
	print(prefix.."paintm [color3] -- paints the whole map")
	print(prefix.."admins -- gets all the admin pads")
	print(prefix.."setspawnpoint [target] -- sets the spawn point near the target")
	print(prefix.."moveregen -- moves then regen pad")
	print(prefix.."movepads -- moves all the admin pads")
	print(prefix.."antivg -- prevents people from having vampire gear")
	print(prefix.."blender [target] -- do something funny on the target")
	print(prefix.."game -- starts a horor game")
	print(prefix.."bacon [target] -- turns the target into bacon")
	print(prefix.."noob [target] -- turns the target into noob")
	print(prefix.."antipunish [on/off] -- self explanatory")
	print(prefix.."thief [target] -- morphs someone into thief")
	print(prefix.."hacker [target] -- morphs someone into hacker")
	print(prefix.."drop [gear ID] -- drops alot of gear")
	print(prefix.."glitchbp -- glitches the baseplate")
	print(prefix.."sm [message] -- server message")
	print(prefix.."msg [message] -- you will see")
	print(prefix.."shutdown -- instantly shutdown the fucking server")
	print(prefix.."movebricks -- move obby bricks")
	print("i'd really love your feedback on this one, and your suggestions are a lot of help :D")
	print("------------------------------------------------------------")
end                             

notif("killer sploit loaded")
wait(5)
notif("Credits to gamingkhoaito#1014 and haroldjd2017ipad#4295 for this amazing script :D")
