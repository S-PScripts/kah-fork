--[[
.▄▄ ·  ▄ .▄ ▄▄▄· ·▄▄▄▄• ▄▄▄· • ▌ ▄ ·. 
▐█ ▀. ██▪▐█▐█ ▀█ ▪▀·.█▌▐█ ▀█ ·██ ▐███▪
▄▀▀▀█▄██▀▐█▄█▀▀█ ▄█▀▀▀•▄█▀▀█ ▐█ ▌▐▌▐█·
▐█▄▪▐███▌▐▀▐█ ▪▐▌█▌▪▄█▀▐█ ▪▐▌██ ██▌▐█▌
 ▀▀▀▀ ▀▀▀ · ▀  ▀ ·▀▀▀ • ▀  ▀ ▀▀  █▪▀▀▀


Credits : credits to Tokio (tokio#1462) / credits to Emmy (Emmy#0377) / credits to Damix ( Damix2131 on Roblox )


]]--

--[[ 
               ╔═╗╔═╗╔╗╔╔═╗╦╔═╗
               ║  ║ ║║║║╠╣ ║║ ╦
               ╚═╝╚═╝╝╚╝╚  ╩╚═╝
]]--

local prefix = "!" -- Prefix For All Commands



local usersjoined = false -- You are Notified from all users joining the game.
local userscsystem = false -- You Are Notified From all users using "/c system"
local userslogs = false -- You Are Notified From All users using logs

local allplayersperm = false -- When Someone Join, He's Admin By You.
local allplayerskicked = false -- When Someone Join, He's Kicked By You

local antiabusegears = false -- If someone have specific abuse gears, the inventory will be reseted
local antigrayscale = false -- Anti DIO Stop Time
local antikill = false -- Anti Kill
local antijail = false -- Anti Jail
local anticrashnotperm = true -- Anticrash Not Perm Bot. ( Perm Crasher not working, Need Regen Buttons )
local anticrashVG = false -- Anti Vampire Crash 
local antiregenpad = false 
local antivoid = false -- Anti Fall In Void
local antiattach = false -- Anti Users Attaching to something
local anti2pads = false -- Players Can't get more than 1 pad

local mymusiconly = false -- Anti Music From Others
local mymusiconly_ID = 0 -- Id Of Music





























































local namegui = "Shazam"
local Wspamming = "nothing"
local spamming = false
local mousee = game.Players.LocalPlayer:GetMouse()
local Players = game:GetService("Players")
local mod_Data = nil -- Dont edit this is how the mod gets data like Script prefix or modules toggled.
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local Stable_Check = false
local Musiclist_Check = false
local spamdetect = false
local loopdetect = false
local detector = false
local v1 = "PaintPart"
local rfloor = false
local lavafloor = false
local rspeed = .4
local count_text_console = 0
local antispamsp = true
local colorPart = Instance.new("Part", workspace)
local mousee = game.Players.LocalPlayer:GetMouse()
colorPart.Anchored = true
colorPart.Transparency = 1
colorPart.CanCollide = false
spawn(function()
	local Tween = game:GetService("TweenService")
	while true do
		local color = Tween:Create(colorPart, TweenInfo.new(rspeed), {Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))})
		color:Play()
		wait(rspeed)
	end
end)



Quotes = {"This Script Is Bad :C", "no logs for you"}

function shazamnotif(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Shazam"; 
		Text = msg;
		Icon = "rbxthumb://type=Asset&id=8164642876&w=150&h=150",
		Duration = 10;
	})
end

function notif(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Shazam"; 
		Text = msg;
		Icon = "rbxthumb://type=Asset&id=8164642876&w=150&h=150",
		Duration = 5;

	})
end

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "34kTokio" then
			say("The Creator Joined Game !")
		end
	end)
end)

function skydivePad()
	game.Players:Chat(prefix.."smi skydive me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me")
end

function skydivePads()
	game.Players:Chat("skydive me,me,me")
	game.Players:Chat("skydive me,me,me")
	game.Players:Chat("skydive me,me,me")
end

function skydiveMover()
	game.Players:Chat("Skydive me")
end

local function GetPad(msg)
	while PadCheck == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
				local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
				wait(0.125)
				pad.CanCollide = false
				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait(0.125)
				pad.CFrame = padCFrame
				pad.CanCollide = true
			else
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			end
		end
	end
end

function Use_Shazam_Console(text_console)
	if game.CoreGui.Console then
		local Frame = game.CoreGui.Console.Main.Frame
		local script = Instance.new('LocalScript', Frame)

		function textconsole_label(txt)
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.Name == "txt_console" then
					count_text_console = count_text_console + 1
				end
			end
			if count_text_console >= 16 then
				for i,v in pairs(script.Parent:GetChildren()) do
					if v.Name == "txt_console" then
						v:Destroy()
					end
				end
			end
			local newLb = script.Parent.a:Clone()
			newLb.Name = "txt_console"
			newLb.Text = txt
			newLb.Parent = script.Parent
		end

		for _, text in ipairs(text_console) do
			textconsole_label(text)
		end
	else
		notif('Error - Console Not Existing')
	end
end

function Create_Shazam_Console(text_console)
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Console = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local _Close = Instance.new("TextButton")
	local _Delete = Instance.new("TextButton")
	local Frame = Instance.new("Frame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local a = Instance.new("TextLabel")

	--Properties:

	Console.Name = "Console"
	Console.Parent = game.CoreGui
	Console.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = Console
	Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Main.BackgroundTransparency = 0.500
	Main.Position = UDim2.new(0.692519605, 0, 0.140303031, 0)
	Main.Size = UDim2.new(0, 350, 0, 450)

	UICorner.Parent = Main

	_Close.Name = "_Close"
	_Close.Parent = Main
	_Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_Close.BorderColor3 = Color3.fromRGB(255, 205, 0)
	_Close.Position = UDim2.new(0.897142887, 0, 0.0133333337, 0)
	_Close.Size = UDim2.new(0, 20, 0, 20)
	_Close.Font = Enum.Font.SourceSans
	_Close.Text = "X"
	_Close.TextColor3 = Color3.fromRGB(255, 255, 255)
	_Close.TextSize = 18.000
	_Close.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	_Delete.Name = "_Delete"
	_Delete.Parent = Main
	_Delete.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_Delete.BorderColor3 = Color3.fromRGB(255, 205, 0)
	_Delete.Position = UDim2.new(0.795714319, 0, 0.0133333337, 0)
	_Delete.Size = UDim2.new(0, 20, 0, 20)
	_Delete.Font = Enum.Font.SourceSans
	_Delete.Text = "D"
	_Delete.TextColor3 = Color3.fromRGB(255, 255, 255)
	_Delete.TextSize = 18.000
	_Delete.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	Frame.Parent = Main
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.Position = UDim2.new(0.068571426, 0, 0, 0)

	UIGridLayout.Parent = Frame
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 100, 0, 18)

	a.Name = "a"
	a.Parent = Frame
	a.BackgroundTransparency = 1.000
	a.Size = UDim2.new(200, 18, 200, 18)
	a.ZIndex = 8
	a.Font = Enum.Font.Arial
	a.Text = ""
	a.TextColor3 = Color3.fromRGB(255, 255, 255)
	a.TextSize = 18.000
	a.TextStrokeTransparency = 0.800
	a.TextXAlignment = Enum.TextXAlignment.Left
	a.TextYAlignment = Enum.TextYAlignment.Top

	-- Scripts:

	local function BQSJW_fake_script() -- _Close._function 
		local script = Instance.new('LocalScript', _Close)

		script.Parent.MouseButton1Click:Connect(function()
			script.Parent.Parent:TweenPosition(UDim2.new(0.694, 0, 1, 0))
			repeat wait() until script.Parent.Parent:TweenPosition(UDim2.new(0.694, 0, 1, 0))
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(BQSJW_fake_script)()
	local function NZFSZS_fake_script() -- _Delete._function 
		local script = Instance.new('LocalScript', _Delete)

		script.Parent.MouseButton1Click:Connect(function()
			for i,v in pairs(script.Parent.Parent.Frame:GetChildren()) do
				if v.Name == "txt_console" then
					v:Destroy()
				end
			end
		end)
	end
	coroutine.wrap(NZFSZS_fake_script)()
	local function UAUVFCI_fake_script() -- Main._Open 
		local script = Instance.new('LocalScript', Main)

		script.Parent:TweenPosition(UDim2.new(0.694, 0, 0.19, 0))
	end
	coroutine.wrap(UAUVFCI_fake_script)()
	local function QNDOO_fake_script() -- Frame.LocalScript 
		local script = Instance.new('LocalScript', Frame)

		function textconsole_label(txt)
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.Name == "txt_console" then
					count_text_console = count_text_console + 1
				end
			end
			if count_text_console >= 16 then
				for i,v in pairs(script.Parent:GetChildren()) do
					if v.Name == "txt_console" then
						v:Destroy()
					end
				end
			end
			local newLb = script.Parent.a:Clone()
			newLb.Name = "txt_console"
			newLb.Text = txt
			newLb.Parent = script.Parent
		end

		for _, text in ipairs(text_console) do
			textconsole_label(text)
		end
	end
	coroutine.wrap(QNDOO_fake_script)()
	local function RKLQ_fake_script() -- Console.LocalScript 
		local script = Instance.new('LocalScript', Console)

		script.Parent.ResetOnSpawn = false
	end
	coroutine.wrap(RKLQ_fake_script)()

end


Players.LocalPlayer.Chatted:Connect(function(msg)
	CancelTeleport = true
	local amount = nil

	if string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
		Shazam_Console(
			{
				"─────────────────",
				"Shazam Console v1",
				"─────────────────",
				"",
				"This Is A Test",
				"This Is A Test",
				"This Is A Test",
				"This Is A Test"
			}
		)
		wait(5)
		Use_Shazam_Console(
			{
				"Shazam Console v2",
				"This Is A Test"
			}
		)
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."rrej" then
		local x = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = v.playing
			end
		end
		if #x > 0 then
			say("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			notif("Unable to Locate Server")
		end
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."rej" then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."rjg" then
		local x = {}
		local amount = nil
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.playing == tonumber(string.sub(msg:lower(),6)) and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = tonumber(string.sub(msg:lower(),6))
			end
		end
		if #x > 0 then
			say("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			notif("Unable to Locate Server")
		end
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."srj" then
		while true do
			wait(1)
			local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
			local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
			for _, s in pairs(ServersToTP.data) do
				if s.playing ~= s.maxPlayers then
					TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
				end
			end
			wait(0.1)
		end
	end

	if string.sub(msg:lower(), 0, 19) == prefix.."color all original" then
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		local remote = game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls
		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v4 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Bright green"))
						}
					remote:InvokeServer(v1, v4)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v5 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
					remote:InvokeServer(v1, v5)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
						local v6 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Brick yellow"))
							}
						remote:InvokeServer(v1, v6)
					end

					if v.Name == "SmoothBlockModel40" then
						local v7 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright green"))
							}
						remote:InvokeServer(v1, v7)
					end

					if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
						local v8 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright red"))
							}
						remote:InvokeServer(v1, v8)
					end

					if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
						local v9 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark orange"))
							}
						remote:InvokeServer(v1, v9)
					end

					if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
						local v10 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
							}
						remote:InvokeServer(v1, v10)
					end

					if v.Name == "SmoothBlockModel112" then
						local v11 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium blue"))
							}
						remote:InvokeServer(v1, v11)
					end

					if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
						local v12 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Reddish brown"))
							}
						remote:InvokeServer(v1, v12)
					end

					if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
						local v13 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Sand red"))
							}
						remote:InvokeServer(v1, v13)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
						local v14 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
							}
						remote:InvokeServer(v1, v14)
					end

					if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
						local v15 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Deep blue"))
							}
						remote:InvokeServer(v1, v15)
					end

					if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
						local v16 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Institutuional white"))
							}
						remote:InvokeServer(v1, v16)
					end

					if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v17 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Lime green"))
							}
						remote:InvokeServer(v1, v17)
					end

					if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v18 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium Stone grey"))
							}
						remote:InvokeServer(v1, v18)
					end

					if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
						local v19 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("New yeller"))
							}
						remote:InvokeServer(v1, v19)
					end

					if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
						local v20 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really black"))
							}
						remote:InvokeServer(v1, v20)
					end

					if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
						local v21 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really red"))
							}
						remote:InvokeServer(v1, v21)
					end

					if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
						local v22 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Toothpaste"))
							}
						remote:InvokeServer(v1, v22)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v23 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Really red"))
						}
					remote:InvokeServer(v1, v23)
				end

				for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
					if v:IsA("Part") then
						local v24 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Teal"))
							}
						remote:InvokeServer(v1, v24)
					end
				end
			end)
		end
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."taxicrash" then
		while true do
			wait(0.35)
			game.Players:Chat('gear others 253519495')
		end
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."ccrash" then
		local str = [[ 









#______________________#
|     Server Crashed   |
#______________________#

                ]]
		game.Players:Chat("blind others")
		game.Players:Chat("h " ..str)
		game.Players:Chat("skydive others")
		wait(1)
		for i = 1,200 do
			game.Players:Chat("clone all,all")
		end
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."jorgekit" then
		local plr = string.sub(msg:lower(), 11)
		game.Players:Chat('gear '..plr..' 156467990')
		game.Players:Chat('gear '..plr..' 130113146')
		game.Players:Chat('gear '..plr..' 18474459')
		game.Players:Chat('gear '..plr..' 11999247')
		game.Players:Chat('gear '..plr..' 93136802')
		game.Players:Chat('gear '..plr..' 341110180')
		game.Players:Chat('gear '..plr..' 477910063')
		game.Players:Chat('gear '..plr..' 130113061')
		game.Players:Chat('gear '..plr..' 107458483')
		game.Players:Chat('gear '..plr..' 298085284')
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."lexiokit" then		
		local plr = string.sub(msg:lower(), 11)
		game.Players:Chat('gear '..plr..' 477910063')
		game.Players:Chat('gear '..plr..' 130113146')
		game.Players:Chat('gear '..plr..' 159229806')
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."tokiokit" then		
		local plr = string.sub(msg:lower(), 11)
		game.Players:Chat('gear '..plr..' 159229806')
		game.Players:Chat('gear '..plr..' 159229806')
		game.Players:Chat('gear '..plr..' 159229806')
		game.Players:Chat('gear '..plr..' 139577901')
		game.Players:Chat('gear '..plr..' 139577901')
		game.Players:Chat('gear '..plr..' 139577901')
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."coolguykit" then		
		local plr = string.sub(msg:lower(), 11)
		game.Players:Chat('gear '..plr..' 159229806')
		game.Players:Chat('gear '..plr..' 159229806')
		game.Players:Chat('gear '..plr..' 159229806')
		game.Players:Chat('gear '..plr..' 139577901')
		game.Players:Chat('gear '..plr..' 139577901')
		game.Players:Chat('gear '..plr..' 139577901')
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."megakit" then		
		local plr = string.sub(msg:lower(), 10)
		game.Players:Chat('gear '..plr..' 108158379')
		game.Players:Chat('gear '..plr..' 80661504')
		game.Players:Chat('gear '..plr..' 233520257')
		game.Players:Chat('gear '..plr..' 73829193')
		game.Players:Chat('gear '..plr..' 69499437')
		game.Players:Chat('gear '..plr..' 139577901')
		game.Players:Chat('gear '..plr..' 2544549379')
		game.Players:Chat('gear '..plr..' 120307951')
		game.Players:Chat('gear '..plr..' 99119240')
		game.Players:Chat('gear '..plr..' 93136802')
		game.Players:Chat('gear '..plr..' 80597060')
		game.Players:Chat('gear '..plr..' 159229806')
		game.Players:Chat('gear '..plr..' 77443461')
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."ufo" then
		local plr = string.sub(msg:lower(), 6)
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("unsize "..plr)
		game.Players:Chat("size "..plr.." 4")
		game.Players:Chat("paint "..plr.." brown")
		game.Players:Chat("name "..plr.." Ufo")
		wait(0.25)
		game.Players:Chat("removelimbs "..plr)
		game.Players:Chat("dog "..plr)
		game.Players:Chat("rainbowify "..plr)
		game.Players:Chat("spin "..plr)
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."clone" then
		local LocalPlayer = game.Players.LocalPlayer
		local PlrChar = workspace:WaitForChild(LocalPlayer.Name)
		local amount = string.sub(msg:lower(), 8)
		amount = tonumber(amount)
		if amount > 99 then return notif("you are being rate limited") end
		local a = 0
		for i,v in pairs(workspace:GetChildren()) do
			if v.Name == PlrChar.Name then
				a += 1
			end
		end
		notif("spawning "..tostring(amount).." clones...")
		for i = 1,amount do
			game.Players:Chat("gear me 72644644")
		end
		repeat wait()
		until #LocalPlayer.Backpack:GetChildren() == amount
		for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
			v.Parent = PlrChar
			v:Activate()
			PlrChar.Humanoid:UnequipTools(v)
			delay(5, function()
				v.Parent = LocalPlayer.Backpack
				wait()
				v.Parent = nil
			end)
		end
		repeat wait()
			local b = 0
			for i,v in pairs(workspace:GetChildren()) do
				if v.Name == PlrChar.Name then
					b += 1
				end
			end
		until b == a+amount
		notif("clones has been spawned")
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."smi" then
		local plr = string.sub(msg:lower(), 6)
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
		game.Players:Chat(""..plr.."")
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."fixbp" then
		local plr = string.sub(msg:lower(), 8)
		game.Players:Chat(prefix.."trap "..plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500.99981689453, 0.10156404972076, 0))
		wait(0.10)
		game.Players:Chat("jail me")
		game.Players:Chat("tp "..plr.." me")
		wait(0.25)

		local target = Workspace_Folder.Baseplate
		function movepart()
			local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
			local looping = true
			spawn(function()
				while true do
					game:GetService('RunService').Heartbeat:Wait()
					game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
					cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
					if not looping then break end
				end
			end)
			spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
			wait(0.25)
			looping = false
		end
		movepart()
		wait(0.75)

		game.Players:Chat("tp me "..plr)
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."padban" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Pad_Ban, v.Name)
				notif("Banned "..v.Name.." from pads.")
			end
		end
	end



	if string.sub(msg:lower(), 0, 9) == prefix.."unpadban" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Pad_Ban) do
					if b == v.Name then
						table.remove(Pad_Ban, a)
						notif("Unbanned "..v.Name.." from pads.")
					end
				end
			end
		end
	end -- table.remove(list1, i)

	if string.sub(msg:lower(), 0, 5) == prefix.."kick" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 7)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Kick, v.Name)
				notif("Kicked "..v.Name.." from game.")
			end
		end
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."unkick" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Kick) do
					if b == v.Name then
						table.remove(Kick, a)
						notif("UnKicked "..v.Name.." from game.")
					end
				end
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."kickall" then
		allplayerskicked = not allplayerskicked
		notif("Kicking Everyone is now set to "..tostring(allplayerskicked))
	end

	if string.sub(msg:lower(), 0, 3) == prefix.."pa" then
		PadCheck = true
		GetPad(msg)
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."nonpa" then
		PadCheck = false
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."permall" then
		allplayersperm = not allplayersperm
		notif("Perm For Everyone is now set to "..tostring(allplayersperm))
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."infjump" then
		InfiniteJumpEnabled = true
		game:GetService("UserInputService").JumpRequest:connect(function()
			if InfiniteJumpEnabled then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."attach" then
		notif("We wont put your camera in the right place for ya xd")
		game.Players:Chat("stun me")
		wait(2.4)
		game.Players:Chat("punish me")
		wait(1.7)
		game.Players:Chat("unpunish me")
		notif("Attached Unless your camera wasn't in the right place xd")
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."stop" then
		notif("Stopped teskker...")
		spamming = false
		rfloor = false
		spamdetect = false
		loopdetect = false
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."clicktp" then
		notif("Gave you the clicktp tool")
		plr = game.Players.LocalPlayer
		mouse = plr:GetMouse()
		hum = plr.Character.HumanoidRootPart
		local tptool = Instance.new("Tool", plr.Backpack)

		tptool.Name = "ClickTP"
		tptool.CanBeDropped = false
		tptool.RequiresHandle = false

		tptool.Activated:Connect(function()
			if mouse.Target then
				hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
			end
		end)
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."clearlogs" then
		notif("Cleared!")
		for i = 1,100 do
			game.Players:Chat("ff "..Quotes[math.random(1, #Quotes)])
		end
		wait(0.05)
		game.Players:Chat("unff all")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."super " then
		notif("Spamming!")
		for i = 1,100 do
			game.Players:Chat(string.sub(msg:lower(), 8))
		end
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."spam " then
		notif("Spamming!")
		Wspamming = string.sub(msg:lower(), 7)
		spamming = true
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."pads" then
		notif("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."skydive" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."house" then
		notif("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
	end -- CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))

	if string.sub(msg:lower(), 0, 6) == prefix.."spawn" then
		notif("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."reg" then
		notif("Pads regenerated!")
		regen()
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."reset" then
		game.Players.LocalPlayer.Character:Destroy()
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."crash" then
		game.Players:Chat("Blind All")
		local str = [[ 









________________________

        Crashed By Shazam
________________________
        
        Link In Chat

                ]]
		game.Players:Chat("h " ..str)
		game.Players:Chat("music 7391060600")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("-------------","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("tokon.site.xyz/tokio","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("-------------","All")
		wait(1.5)
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."boom" then
		local str = [[ 









________________________
        This Game Exploded !
        So Join Another Server
________________________

                ]]
		game.Players:Chat("h " ..str)
		game.Players:Chat("music 7300716987")
		game.Players:Chat("blind all")
		wait(1.5)
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."fastboom" then
		notif("Shutdown Server")
		wait(0.75)
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
	end

	if string.sub(msg:lower(), 0, 13) == prefix.."bind respawn" then
		notif("respawn is now bound to '"..string.sub(msg:lower(), 15, 15).."'")
		respawn_keybind = string.sub(msg:lower(), 15, 15)
	end

	if string.sub(msg:lower(), 0, 11) == prefix.."bind reset" then
		notif("reset is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		reset_keybind = string.sub(msg:lower(), 13, 13)
	end

	if string.sub(msg:lower(), 0, 16) == prefix.."bind forcefield" then
		notif("forcefield is now bound to '"..string.sub(msg:lower(), 18, 18).."'")
		forcefield_keybind = string.sub(msg:lower(), 18, 18)
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."bind fly" then
		notif("fly is now bound to '"..string.sub(msg:lower(), 11, 11).."'")
		fly_keybind = string.sub(msg:lower(), 11, 11)
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."bind teleport" then
		notif("teleport is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		teleport_keybind = string.sub(msg:lower(), 16, 16)
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."bind pads" then
		notif("pads is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		pads_keybind = string.sub(msg:lower(), 13, 13)
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."bind attachto" then
		notif("attachto is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		AttachTO_keybind = string.sub(msg:lower(), 16, 16)
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."bok" then
		notif("Now making person bok...")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 6)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6))
		wait(3)
		game.Players:Chat("kill "..string.sub(msg:lower(), 6))
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."trap" then
		notif("Trapped person!")
		game.Players:Chat("freeze "..string.sub(msg:lower(), 7))
		game.Players:Chat("name "..string.sub(msg:lower(), 7).." ")
		game.Players:Chat("thaw "..string.sub(msg:lower(), 7))
	end

	if string.sub(msg:lower(), 0, 3) == prefix.."ds" then
		notif("Setting up dancing swords script!")
		game.Players:Chat("hat me 0000000000000000004506945409") -- Sword 1
		game.Players:Chat("hat me 0000000000000000004794315940") -- Sword 2
		game.Players:Chat("hat me 0000000000000000004315489767") -- Sword 3
		game.Players:Chat("hat me 0000000000000000004458601937") -- Sword 4
		game.Players:Chat("gear me 000000000000000000212641536") -- Boombox
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."lua" then
		loadstring(string.sub(msg:lower(), 6))()
	end

	if string.sub(msg:lower(), 0, 12) == prefix.."moveobbybox" then
		if Stable_Check == false then
			notif("Moving Obby Box")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
				if v.CFrame.Y < 500 then
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

					local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local looping = true

					spawn(function()
						while true do
							game:GetService('RunService').Heartbeat:Wait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
							if not looping then break end
						end
					end)
					spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
					wait(0.3)
					looping = false
					game.Players:Chat("skydive me")
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving Obby Box")
		else
			notif("Already Moving, Please Wait")
		end
	end



	if string.sub(msg:lower(), 0, 15) == prefix.."moveobbybricks" then
		game.Players:Chat(prefix.."nok")
		wait(0.05)
		if Stable_Check == false then
			notif("Moving Obby Bricks")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
				if v.CFrame.Y < 500 then
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

					local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local looping = true

					spawn(function()
						while true do
							game:GetService('RunService').Heartbeat:Wait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
							if not looping then break end
						end
					end)
					spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
					wait(0.3)
					looping = false
					game.Players:Chat("skydive me")
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.75)
				end
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving Obby Kill Bricks")
		else
			notif("Already Moving, Please Wait")
		end
	end	

	if string.sub(msg:lower(), 0, 19) == prefix.."movebuildingbricks" then
		if Stable_Check == false then
			notif("Moving Building Bricks")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Building Bricks"]:GetChildren()) do
				if v.CFrame.Y < 500 then
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

					local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local looping = true

					spawn(function()
						while true do
							game:GetService('RunService').Heartbeat:Wait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
							if not looping then break end
						end
					end)
					spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
					wait(0.30)
					looping = false
					skydiveMover()
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving Building Bricks")
		else
			notif("Already Moving, Please Wait")
		end
	end

	if string.sub(msg:lower(), 0, 13) == prefix.."movedividers" then
		if Stable_Check == false then
			notif("Moving Admin Dividers")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Admin Dividers"]:GetChildren()) do
				if v.CFrame.Y < 500 then
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

					local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local looping = true

					spawn(function()
						while true do
							game:GetService('RunService').Heartbeat:Wait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
							if not looping then break end
						end
					end)
					spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
					wait(0.3)
					looping = false
					skydiveMover()
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving Admin Dividers")
		else
			notif("Already Moving, Please Wait")
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."control" then
		local plr = string.sub(msg:lower(), 10)
		game.Players:Chat("dog me,"..plr)
		game.Players:Chat("tp me "..plr)
		wait(1)
		game.Players:Chat("punish me,"..plr)
		game.Players:Chat("undog me,"..plr)
		wait(0.25)
		game.Players:Chat("unpunish me,"..plr)
		game.Players:Chat("invis me")
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."shazamchat" then
		local message = string.sub(msg:lower(), 13)
		game.Players:Chat('euros '..message)
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."shazamplayers" then
		game.Players:Chat('pesos me')
	end

	if string.sub(msg:lower(), 0, 12) == prefix.."createplace" then
		if Stable_Check == false then
			rfloor = false
			notif("Creating Tokio's Place")
			Stable_Check = true
			if Workspace_Folder["Basic House"].SmoothBlockModel100.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel100.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel100.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)

			if Workspace_Folder["Basic House"].SmoothBlockModel102.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel102.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel102.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel104.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel104.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel104.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel107.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel107.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel107.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel109.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel109.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel109.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel110.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel110.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel110.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel111.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel111.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel111.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel119.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel119.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel119.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel12.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel12.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel12.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel120.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel120.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel120.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel123.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel123.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel123.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel124.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel124.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel124.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel125.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel125.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel125.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel127.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel127.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel128.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel128.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel128.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel128.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel133.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel133.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel133.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel136.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel136.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel136.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel137.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel137.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel137.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel138.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel138.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel138.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel139.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel139.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel139.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel141.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel141.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel141.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel143.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel143.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel143.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel149.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel149.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel149.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel151.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel151.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel151.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel152.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel152.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel152.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel153.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel153.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel153.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel156.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel156.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel156.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel157.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel157.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel157.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel158.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel158.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel158.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel16.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel16.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel16.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel163.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel163.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel163.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel167.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel167.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel167.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel168.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel168.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel168.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel169.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel169.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel169.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel17.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel17.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel17.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel170.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel170.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel170.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel172.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel172.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel172.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel177.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel177.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel177.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel18.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel18.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel18.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel180.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel180.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel180.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel184.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel184.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel184.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel187.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel187.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel187.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel188.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel188.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel188.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel189.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel189.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel189.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel19.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel19.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel19.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel193.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel193.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel193.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel2.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel2.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel2.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel200.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel200.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel200.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel202.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel202.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel202.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel21.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel21.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel21.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel214.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel214.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel214.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel215.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel215.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel215.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel216.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel216.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel216.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel219.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel219.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel219.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel220.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel220.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel220.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel221.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel221.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel221.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel222.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel222.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel222.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel225.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel225.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel225.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel227.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel227.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel227.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel229.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel229.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel229.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel23.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel23.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel23.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel230.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel230.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel230.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel231.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel231.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel231.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel25.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel25.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel25.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel28.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel28.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel28.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel32.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel32.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel32.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel33.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel33.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel33.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel34.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel34.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel34.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel42.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel42.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel42.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel44.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel44.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel44.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel47.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel47.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel47.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel54.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel54.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel54.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel55.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel55.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel55.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel58.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel58.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel58.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel59.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel59.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel59.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel6.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel6.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel6.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel61.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel61.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel61.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel62.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel62.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel62.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel63.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel63.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel63.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel74.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel74.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel74.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel76.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel76.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel76.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel77.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel77.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel77.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel78.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel78.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel78.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel79.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel79.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel79.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel80.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel80.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel80.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel84.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel84.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel84.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel86.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel86.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel86.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel87.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel87.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel87.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel88.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel88.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel88.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel90.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel90.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel90.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel91.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel91.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel91.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel92.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel92.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel92.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel94.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel94.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel94.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel95.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel95.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel95.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel96.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel96.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel96.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end



			if Workspace_Folder["Basic House"].SmoothBlockModel103.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel103.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel103.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel105.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel105.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel105.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel106.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel106.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel106.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel108.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel108.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel108.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end    

			if Workspace_Folder["Basic House"].SmoothBlockModel113.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel113.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel113.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel114.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel114.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel114.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel115.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel115.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel115.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel116.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel116.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel116.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel118.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel118.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel118.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel122.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel122.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel122.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel129.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel129.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel129.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel13.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel13.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel13.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel130.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel130.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel130.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel131.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel131.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel131.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel132.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel132.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel132.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel134.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel134.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel134.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel135.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel135.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel135.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel14.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel14.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel14.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel140.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel140.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel140.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel142.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel142.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel142.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel147.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel147.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel147.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel15.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel15.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel15.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel154.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel154.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel154.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel164.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel164.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel164.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel166.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel166.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel166.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel173.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel173.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel173.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel176.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel176.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel176.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel179.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel179.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel179.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel185.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel185.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel185.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel186.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel186.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel186.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel190.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel190.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel190.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel191.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel191.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel191.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel196.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel196.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel196.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel197.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel197.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel197.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel198.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel198.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel198.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel201.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel201.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel201.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel203.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel203.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel203.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel205.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel205.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel205.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel207.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel207.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel207.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel208.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel208.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel208.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel209.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel209.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel209.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")

				if Workspace_Folder["Basic House"].SmoothBlockModel210.CFrame.Y < 500 then
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local looping = true
					spawn(function()
						while true do
							game:GetService('RunService').Heartbeat:Wait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel210.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel210.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
							if not looping then break end
						end
					end)
					spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
					wait(0.3)
					looping = false
					game.Players:Chat("skydive me")
					wait(0.3)
					game.Players:Chat("respawn me")
					wait(0.2)
				end

				wait(0.2)
			end


			if Workspace_Folder["Basic House"].SmoothBlockModel211.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel211.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel211.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel213.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel213.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel213.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel218.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel218.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel218.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel22.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel22.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel22.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel223.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel223.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel223.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel224.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel224.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel224.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel226.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel226.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel226.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel26.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel26.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel26.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel29.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel29.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel29.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel30.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel30.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel30.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel31.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel31.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel31.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel36.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel36.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel36.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel37.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel37.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel37.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel39.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel39.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel39.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel48.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel48.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel48.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel41.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel41.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel41.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel49.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel49.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel49.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel51.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel51.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel51.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel56.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel56.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel56.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel67.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel67.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel67.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel68.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel68.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel68.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel69.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel69.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel69.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel70.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel70.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel70.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel72.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel72.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel72.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel75.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel75.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel75.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel8.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel8.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel8.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel85.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel85.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel85.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel93.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel93.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel93.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel98.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel98.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel98.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel52.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel52.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel52.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel97.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel97.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel97.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel1.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel1.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel1.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel3.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel3.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel3.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel5.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel5.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel5.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel9.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel9.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel9.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel160.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel160.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel160.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel162.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel162.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel162.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel178.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel178.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel178.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end

			if Workspace_Folder["Basic House"].SmoothBlockModel165.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder["Basic House"].SmoothBlockModel165.CFrame * CFrame.new(-1*(Workspace_Folder["Basic House"].SmoothBlockModel165.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.3)
				game.Players:Chat("respawn me")
				wait(0.2)
			end










			-- -- -- -- -- -- -- -- --


			wait(0.5)
			game.Players:Chat(prefix.."rfloor")
			Stable_Check = false
			notif("Done Creating Place")
		else
			notif("Already Moving, Please Wait")
		end
	end

	-- -- -- -- -- -- -- -- -- 

	if string.sub(msg:lower(), 0, 10) == prefix.."movehouse" then
		if Stable_Check == false then
			notif("Moving House")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
				if v.CFrame.Y < 500 then
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

					local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local looping = true

					spawn(function()
						while true do
							game:GetService('RunService').Heartbeat:Wait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
							if not looping then break end
						end
					end)
					spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
					wait(0.3)
					looping = false
					skydiveMover()
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving House")
		else
			notif("Already Moving, Please Wait")
		end
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."movepads" then
		if Stable_Check == false then
			notif("Moving Admin Pads")
			Stable_Check = true
			for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
				if v.Name == "Head" then
					if v.CFrame.Y < 500 then
						repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

						local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						local looping = true

						spawn(function()
							while true do
								game:GetService('RunService').Heartbeat:Wait()
								game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
								cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
								if not looping then break end
							end
						end)
						spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
						wait(0.3)
						looping = false
						skydivePads()
						wait(0.2)
						game.Players:Chat("respawn me")
						wait(0.2)
					end
				end
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving Admin Pads")
		else
			notif("Already Moving, Please Wait")
		end
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."mrp" then
		local locatepad = "_"
		if Stable_Check == false then
			notif("Moving Admin Reset Pad")
			if Admin_Folder.Regen.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				skydivePad()
				wait(2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving Admin Reset Pad")
		else
			notif("Already Moving, Please Wait")
		end
	end


	if string.sub(msg:lower(), 0, 14) == prefix.."movebaseplate" then
		if Stable_Check == false then
			notif("Moving Basteplate")
			Stable_Check = true
			if Workspace_Folder.Baseplate.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Baseplate.CFrame * CFrame.new(-1*(Workspace_Folder.Baseplate.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				skydiveMover()
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving Basteplate")
		else
			notif("Already Moving, Please Wait")
		end
	end



	if string.sub(msg:lower(), 0, 15) == prefix.."setspawnpoints" then
		local playername = string.sub(msg:lower(), 17)

		if Stable_Check == false then
			notif("Moving")
			Stable_Check = true
			if Workspace_Folder.Spawn1.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn1.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn1.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving")
		else
			notif("Already Moving, Please Wait")
		end
		if Stable_Check == false then
			notif("Moving")
			Stable_Check = true
			if Workspace_Folder.Spawn2.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn2.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn2.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving")
		else
			notif("Already Moving, Please Wait")
		end
		if Stable_Check == false then
			notif("Moving")
			Stable_Check = true
			if Workspace_Folder.Spawn3.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn3.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn3.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			notif("Done Moving")
		else
			notif("Already Moving, Please Wait")
		end
	end



	if string.sub(msg:lower(), 0, 18) == prefix.."findresetshortcut" then
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(-6.38259602, 12037.6162, 94.9227524)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.1)
		pl.CFrame = location
		notif("Done Trying Find Reset Pad (Shortcut Version)")
	end

	if string.sub(msg:lower(), 0, 13) == prefix.."tptoresetpad" then
		local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		cf.CFrame = Admin_Folder.Regen.CFrame
		notif("Done Trying Find Reset Pad")
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."detectpad" then
		spamdetect = true
		detector = false
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."detect" then
		loopdetect = true
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."nok" then
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump1.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump2.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump3.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump4.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump5.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump6.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump7.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump8.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9.TouchInterest:destroy()
	end


	if string.sub(msg:lower(), 0, 10) == prefix.."disablerc" then
		notif('You Are The Only One Being Fixed RighClick, Not Others.')
		game.Players:Chat('gear me 4842207161')
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."fixrc" then
		notif('You Are The Only One Being Fixed RighClick, Not Others.')
		task.spawn(function()
			local lp = game.Players.LocalPlayer
			local ui = game:GetService("UserInputService")
			local l__ContextActionService__7 = game:GetService("ContextActionService");
			local l__RunService__1 = game:GetService('RunService')
			l__ContextActionService__7:UnbindAction("ShoulderCameraSprint");
			l__RunService__1:UnbindFromRenderStep("ShoulderCameraUpdate");
			l__ContextActionService__7:UnbindAction("ShoulderCameraZoom");
			while true do
				repeat game:GetService'RunService'.Heartbeat:Wait() until game.Workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable
				l__RunService__1:UnbindFromRenderStep("ShoulderCameraUpdate");
				l__ContextActionService__7:UnbindAction("ShoulderCameraZoom");
				l__ContextActionService__7:UnbindAction("ShoulderCameraSprint");
				local wepsys = game:GetService("ReplicatedStorage"):FindFirstChild('WeaponsSystem')
				if not wepsys then return end
				for i,v in pairs(wepsys:GetDescendants()) do
					if v:IsA("Script") then
						v.Disabled = true
					end
					v:Destroy()
				end
				local wep = lp.PlayerGui:FindFirstChild("ClientWeaponsScript")
				local gui = lp.PlayerGui:FindFirstChild("WeaponsSystemGui")
				local sc = lp.PlayerScripts:FindFirstChild("ClientWeaponsScript")
				if wep then wep.Disabled = true wep:Destroy() end
				if gui then gui:Destroy() end
				if sc then
					sc.Disabled = true
					sc:Destroy()
				end
				ui.MouseIconEnabled = true
				game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
				game.Workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid
				lp.Character.Humanoid.AutoRotate = true
			end
		end)
	end
	if string.sub(msg:lower(), 0, 10) == prefix.."whitelist" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 12)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Whitelist, v.Name)
				notif("Whitelisted "..v.Name)
			end
		end
	end

	if string.sub(msg:lower(), 0, 12) == prefix.."unwhitelist" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 14)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Whitelist) do
					if b == v.Name then
						table.remove(Whitelist, a)
						notif("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."cdadmin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 10)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Admin, v.Name)
				game.Players:Chat('pm '..v.Name..' You Are Now Admin')
				notif("CdAdmin "..v.Name)
			end
		end
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."uncdadmin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 12)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Admin) do
					if b == v.Name then
						table.remove(Admin, a)
						game.Players:Chat('pm '..v.Name..' You Are Now Not Admin')
						notif("UnCdAdmin "..v.Name)
					end
				end
			end
		end
	end


	if string.sub(msg:lower(), 0, 7) == prefix..'rfloor' then
		local LocalPlayer = game.Players.LocalPlayer
		local PlrChar = workspace:WaitForChild(LocalPlayer.Name)
		rfloor = true
		notif("rainbow floor running")
		game.Players:Chat("gear me 18474459")
		PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
		while rfloor == true do
			PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = workspace.Terrain._Game.Workspace.Baseplate, Color = colorPart.Color})
		end
		repeat wait()
		until rfloor == false
		paint:Disconnect()
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."allpads" then
		local LocalPlayer = game.Players.LocalPlayer
		local PlrChar = workspace:WaitForChild(LocalPlayer.Name)
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
			firetouchinterest(PlrChar["Left Leg"], v.Head, 0)
			firetouchinterest(PlrChar["Left Leg"], v.Head, 1)
			wait()
		end
	end


	if string.sub(msg:lower(), 0, 7) == prefix.."set jp" then
		local Power = tonumber(string.sub(msg:lower(), 9))
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Power
	end

	if string.sub(msg:lower(), 0, 17) == prefix.."color all random" then
		notif("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then !spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."creator" then
		local player = string.sub(msg:lower(), 10)
		game.Players:Chat("char "..player.." 904433379")
		game.Players:Chat("name "..player.." ")
	end

	if string.sub(msg:lower(), 0, 6) == "/reset" then
		game.Players.LocalPlayer.Character:Destroy()
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."rocket" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("dog "..player)
		wait(0.25)
		game.Players:Chat("size "..player.." 0.3")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."rrocket" then
		local player = string.sub(msg:lower(), 10)
		game.Players:Chat("trail "..player.." rainbow")
		game.Players:Chat("dog "..player)
		wait(0.25)
		game.Players:Chat("size "..player.." 0.3")
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."disguise" then
		local player = string.sub(msg:lower(), 11)
		game.Players:Chat("char "..player.." "..math.random(1000000000, 2147483647))
		game.Players:Chat("name "..player)
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."noob" then
		local player = string.sub(msg:lower(), 7)
		game.Players:Chat("char "..player.." 4")
		wait(1)
		game.Players:Chat("size "..player.." 0000000000000000000.8")
		game.Players:Chat("name "..player.." Yellow")
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."rat" then
		local player = string.sub(msg:lower(),  6)
		game.Players:Chat("char "..player.." 6")
		wait(1)
		game.Players:Chat("hat "..player.." 0000000000000000006203125039")
		game.Players:Chat("name "..player.." Rat")
		game.Players:Chat("size "..player.." 0000000000000000000.8")
		game.Players:Chat("speed "..player.." 00000000000000000026")
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."titan" then
		local player = string.sub(msg:lower(),  8)
		game.Players:Chat("char "..player.." 4")
		wait(1)
		game.Players:Chat("paint "..player.." red")
		game.Players:Chat("name "..player.." Titan")
		game.Players:Chat("size "..player.." 0000000000000000005")
		game.Players:Chat("speed "..player.." 00000000000000000024")
		game.Players:Chat("pants "..player.." 0000000000000000001187508947")
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."tnt" then
		local player = string.sub(msg:lower(),  6)
		game.Players:Chat("removepants "..player)
		game.Players:Chat("removeshirt "..player)
		game.Players:Chat("paint "..player.." red")
		game.Players:Chat("name "..player.." TNT")
		wait(1)
		game.Players:Chat("bonfire "..player)
		wait(2)
		game.Players:Chat("explode "..player)
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."tnt" then
		local player = string.sub(msg:lower(),  6)
		game.Players:Chat("removepants "..player)
		game.Players:Chat("removeshirt "..player)
		game.Players:Chat("paint "..player.." red")
		game.Players:Chat("name "..player.." TNT")
		wait(1)
		game.Players:Chat("bonfire "..player)
		wait(2)
		game.Players:Chat("explode "..player)
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."theme1" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("time 19")
		game.Players:Chat("outdoorambient 250 100 250")
		game.Players:Chat("music 6554661697")
		local str = [[ 









________________________
        Theme Loaded
________________________

                ]]
		game.Players:Chat("h " ..str)
	end


	if string.sub(msg:lower(), 0, 7) == prefix.."theme2" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 600")
		game.Players:Chat("fogcolor 300 0 800")
		game.Players:Chat("music 2200651887")
		local str = [[ 









________________________
        Theme Loaded
________________________

                ]]
		game.Players:Chat("h " ..str)
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."theme3" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 25")
		game.Players:Chat("fogcolor 255 255 51")
		game.Players:Chat("music 2590490779")
		local str = [[ 









________________________
        Theme Loaded
________________________

                ]]
		game.Players:Chat("h " ..str)
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."theme5" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("fogend 75")
		game.Players:Chat("fogcolor 0 155 255")
		game.Players:Chat("music 1137959605")
		local str = [[ 









________________________
        Theme Loaded
________________________

                ]]
		game.Players:Chat("h " ..str)
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."theme6" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 46")
		game.Players:Chat("fogcolor 250 83 255")
		game.Players:Chat("music 3650040936")
		local str = [[ 









________________________
        Theme Loaded
________________________

                ]]
		game.Players:Chat("h " ..str)
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."theme7" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 1000")
		game.Players:Chat("fogcolor 37 355 55")
		game.Players:Chat("music 6741702853")
		local str = [[ 









________________________
        Theme Loaded
________________________

                ]]
		game.Players:Chat("h " ..str)
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."swordfight" then
		local str = [[ 









________________________
       Sword Fight !
________________________

                ]]
		game.Players:Chat("h " ..str)
		wait(0.25)
		game.Players:Chat("tp others me")
		game.Players:Chat(prefix.."trap others")
		game.Players:Chat("h 3")
		game.Players:Chat("h 3")
		game.Players:Chat("h 3")
		wait(1)
		game.Players:Chat("h 2")
		game.Players:Chat("h 2")
		game.Players:Chat("h 2")
		wait(1)
		game.Players:Chat("h 1")
		game.Players:Chat("h 1")
		game.Players:Chat("h 1")
		wait(1)
		game.Players:Chat("h 0")
		game.Players:Chat("h 0")
		game.Players:Chat("h 0")
		game.Players:Chat("reset others")
		game.Players:Chat("sword others")
	end

	if string.sub(msg:lower(), 0, 18) == prefix.."trybypassantilogs" then
		game.Players:Chat("logs me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me me")
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."mesk" then
		game.Players:Chat("freeze me")
		game.Players:Chat("gold me")
		game.Players:Chat("name me Say I need admin for admin")
		wait(1)
		game.Players:Chat("clone me")
		game.Players:Chat("respawn me")
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."antishut" then
		local str = [[





IO SEC FOR TOUCH
   Admin Pad
		]]
		local sts = [[





   IO Sec
  Expired
		]]
		game.Players:Chat("name others" ..str)
		fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
		wait(10)
		game.Players:Chat("name others" ..sts)
		game.Players:Chat(prefix.."anticrashnp")
	end


	if string.sub(msg:lower(), 0, 7) == prefix.."amesk" then
		game.Players:Chat("freeze me")
		game.Players:Chat("name me All Pads Is Taken For Anti Crash | Say I need admin for admin")
		wait(1)
		game.Players:Chat("clone me")
		game.Players:Chat("respawn me")
	end


	if string.sub(msg:lower(), 0, 7) == prefix.."pmesk" then
		game.Players:Chat("freeze me")
		game.Players:Chat("name me All Welcome To | Tokio's Place")
		game.Players:Chat("ghost me")
		wait(1)
		game.Players:Chat("clone me")
		game.Players:Chat("respawn me")
	end



	if string.sub(msg:lower(), 0, 7) == prefix.."theme4" then
		game.Players:Chat("fix")
		game.Players:Chat("clr")
		game.Players:Chat("time 0")
		game.Players:Chat("fogcolor 0 0 0")
		game.Players:Chat("fogend 25")
		game.Players:Chat("music 143382469")
		local str = [[ 









________________________
        Theme Loaded
________________________

                ]]
		game.Players:Chat("h " ..str)
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."playbackspeed" then
		local newPlaybackSpeed = tonumber(string.sub(msg:lower(), 16))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.PlaybackSpeed = newPlaybackSpeed
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."volume" then
		local newVolume = tonumber(string.sub(msg:lower(), 9))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.Volume = newVolume
	end
end)

function regen()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 1)
end




local RunService = game:GetService("RunService")

function transformToColor3(col) -- Oofkohls
	local r = col.r
	local g = col.g
	local b = col.b
	return Color3.new(r,g,b);
end

game.Players.PlayerAdded:Connect(function(plr)
	if plr.Name == "me_" then
		game.Players:Chat('setgrav me')
	end
	if usersjoined == true then
		notif(plr.Name.." has joined the game!")
	end
	if allplayersperm == true then
		game.Players:Chat(prefix..'cdadmin '..plr.Name)
	end
	if allplayerskicked == true then
		game.Players:Chat(prefix..'kick '..plr.Name)
	end
end)

Spawn(function()
	while true do
		wait(0.05)

		if spamming == true then
			game.Players:Chat(Wspamming)
		end
		if spamdetect == true then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
		end
		if antiabusegears == true then
			for i, player in pairs(game:GetService("Players"):GetPlayers()) do
				if player.Character then
					if player.Character:FindFirstChild("SeaThemedCrossbow") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("unsize "..plrname))
					end
					if player.Character:FindFirstChild("DaggerOfShatteredDimensions") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("unsize "..plrname))
					end
					if player.Character:FindFirstChild("SeaThemedCrossbow") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("unsize "..plrname))
					end
					if player.Character:FindFirstChild("PortableJustice") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("unsize "..plrname))
					end
				end
			end
		end
		if anticrashVG == true then
			for i, player in pairs(game:GetService("Players"):GetPlayers()) do
				if player.Character then
					if player.Character:FindFirstChild("VampireVanquisher") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("unsize "..plrname))
						wait(0.28)
					end
					if player.Character:FindFirstChild("HumanoidRootPart") then
						if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
							local plrname = player.Name
							game.Players:Chat(("reset "..plrname))
							game.Players:Chat(("unclone "..plrname))
							wait(0.28)
						end
					end
				end
			end
		end

		if antijailgearban == true then
			if game.Players.LocalPlayer.Character:FindFirstChild("Part") then
				game.Players.LocalPlayer.Character:FindFirstChild("Part"):Destroy()
				wait(0.25)
				game.Players:Chat("speed me 16")
				game.Players:Chat(prefix.."set jp 50")
			end
		end
	end
end)

--------------------------------------

function shazamdatabase()
	game.Players:Chat('pesos me')
end

function Guiscript()
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Shazam = {
		Shazam = Instance.new("ScreenGui"),
		Client = Instance.new("Frame"),
		Explorer = Instance.new("Frame"),
		Keys_Infos = Instance.new("TextButton"),
		UICorner = Instance.new("UICorner"),
		Themes = Instance.new("TextButton"),
		UICorner_2 = Instance.new("UICorner"),
		Contraction = Instance.new("TextButton"),
		UICorner_3 = Instance.new("UICorner"),
		ScrollingFrame = Instance.new("ScrollingFrame"),
		Contractions = Instance.new("TextLabel"),
		UICorner_4 = Instance.new("UICorner"),
		CrashGame = Instance.new("Frame"),
		UICorner_5 = Instance.new("UICorner"),
		configname = Instance.new("TextLabel"),
		click = Instance.new("TextButton"),
		FakeCrashGame = Instance.new("Frame"),
		UICorner_6 = Instance.new("UICorner"),
		configname_2 = Instance.new("TextLabel"),
		click_2 = Instance.new("TextButton"),
		BoomCrash = Instance.new("Frame"),
		UICorner_7 = Instance.new("UICorner"),
		configname_3 = Instance.new("TextLabel"),
		click_3 = Instance.new("TextButton"),
		configdescription = Instance.new("TextLabel"),
		TaxiCrash = Instance.new("Frame"),
		UICorner_8 = Instance.new("UICorner"),
		configname_4 = Instance.new("TextLabel"),
		click_4 = Instance.new("TextButton"),
		configdescription_2 = Instance.new("TextLabel"),
		ObbyBox = Instance.new("Frame"),
		UICorner_9 = Instance.new("UICorner"),
		configname_5 = Instance.new("TextLabel"),
		click_5 = Instance.new("TextButton"),
		ObbyBricks = Instance.new("Frame"),
		UICorner_10 = Instance.new("UICorner"),
		configname_6 = Instance.new("TextLabel"),
		click_6 = Instance.new("TextButton"),
		RegenPad = Instance.new("Frame"),
		UICorner_11 = Instance.new("UICorner"),
		configname_7 = Instance.new("TextLabel"),
		click_7 = Instance.new("TextButton"),
		AdminPads = Instance.new("Frame"),
		UICorner_12 = Instance.new("UICorner"),
		configname_8 = Instance.new("TextLabel"),
		click_8 = Instance.new("TextButton"),
		Dividers = Instance.new("Frame"),
		UICorner_13 = Instance.new("UICorner"),
		configname_9 = Instance.new("TextLabel"),
		click_9 = Instance.new("TextButton"),
		Allpads = Instance.new("Frame"),
		UICorner_14 = Instance.new("UICorner"),
		configname_10 = Instance.new("TextLabel"),
		click_10 = Instance.new("TextButton"),
		Regen = Instance.new("Frame"),
		UICorner_15 = Instance.new("UICorner"),
		configname_11 = Instance.new("TextLabel"),
		click_11 = Instance.new("TextButton"),
		Silent = Instance.new("Frame"),
		UICorner_16 = Instance.new("UICorner"),
		configname_12 = Instance.new("TextLabel"),
		value = Instance.new("TextBox"),
		Themes_2 = Instance.new("TextLabel"),
		UICorner_17 = Instance.new("UICorner"),
		Theme1 = Instance.new("Frame"),
		UICorner_18 = Instance.new("UICorner"),
		configname_13 = Instance.new("TextLabel"),
		click_12 = Instance.new("TextButton"),
		Theme2 = Instance.new("Frame"),
		UICorner_19 = Instance.new("UICorner"),
		configname_14 = Instance.new("TextLabel"),
		click_13 = Instance.new("TextButton"),
		Theme3 = Instance.new("Frame"),
		UICorner_20 = Instance.new("UICorner"),
		configname_15 = Instance.new("TextLabel"),
		click_14 = Instance.new("TextButton"),
		Theme4 = Instance.new("Frame"),
		UICorner_21 = Instance.new("UICorner"),
		configname_16 = Instance.new("TextLabel"),
		click_15 = Instance.new("TextButton"),
		Theme5 = Instance.new("Frame"),
		UICorner_22 = Instance.new("UICorner"),
		configname_17 = Instance.new("TextLabel"),
		click_16 = Instance.new("TextButton"),
		Theme6 = Instance.new("Frame"),
		UICorner_23 = Instance.new("UICorner"),
		configname_18 = Instance.new("TextLabel"),
		click_17 = Instance.new("TextButton"),
		Theme7 = Instance.new("Frame"),
		UICorner_24 = Instance.new("UICorner"),
		configname_19 = Instance.new("TextLabel"),
		click_18 = Instance.new("TextButton"),
		Config = Instance.new("TextLabel"),
		UICorner_25 = Instance.new("UICorner"),
		Antiabusegears = Instance.new("Frame"),
		UICorner_26 = Instance.new("UICorner"),
		configpart = Instance.new("Frame"),
		value_2 = Instance.new("TextButton"),
		configname_20 = Instance.new("TextLabel"),
		prefix = Instance.new("Frame"),
		UICorner_27 = Instance.new("UICorner"),
		prefixpart = Instance.new("Frame"),
		prefix_2 = Instance.new("TextBox"),
		prefixtitle = Instance.new("TextLabel"),
		Antigrayscale = Instance.new("Frame"),
		UICorner_28 = Instance.new("UICorner"),
		configpart_2 = Instance.new("Frame"),
		value_3 = Instance.new("TextButton"),
		configname_21 = Instance.new("TextLabel"),
		Antikill = Instance.new("Frame"),
		UICorner_29 = Instance.new("UICorner"),
		configpart_3 = Instance.new("Frame"),
		value_4 = Instance.new("TextButton"),
		configname_22 = Instance.new("TextLabel"),
		Antijail = Instance.new("Frame"),
		UICorner_30 = Instance.new("UICorner"),
		configpart_4 = Instance.new("Frame"),
		value_5 = Instance.new("TextButton"),
		configname_23 = Instance.new("TextLabel"),
		Anticrashnotperm = Instance.new("Frame"),
		UICorner_31 = Instance.new("UICorner"),
		configpart_5 = Instance.new("Frame"),
		value_6 = Instance.new("TextButton"),
		configname_24 = Instance.new("TextLabel"),
		AnticrashVG = Instance.new("Frame"),
		UICorner_32 = Instance.new("UICorner"),
		configpart_6 = Instance.new("Frame"),
		value_7 = Instance.new("TextButton"),
		configname_25 = Instance.new("TextLabel"),
		Antipad = Instance.new("Frame"),
		UICorner_33 = Instance.new("UICorner"),
		configpart_7 = Instance.new("Frame"),
		value_8 = Instance.new("TextButton"),
		configname_26 = Instance.new("TextLabel"),
		musicid = Instance.new("Frame"),
		UICorner_34 = Instance.new("UICorner"),
		box = Instance.new("Frame"),
		value_9 = Instance.new("TextBox"),
		title = Instance.new("TextLabel"),
		mymusiconly = Instance.new("Frame"),
		UICorner_35 = Instance.new("UICorner"),
		configpart_8 = Instance.new("Frame"),
		value_10 = Instance.new("TextButton"),
		configname_27 = Instance.new("TextLabel"),
		Antivoid = Instance.new("Frame"),
		UICorner_36 = Instance.new("UICorner"),
		configpart_9 = Instance.new("Frame"),
		value_11 = Instance.new("TextButton"),
		configname_28 = Instance.new("TextLabel"),
		Antiattach = Instance.new("Frame"),
		UICorner_37 = Instance.new("UICorner"),
		configpart_10 = Instance.new("Frame"),
		value_12 = Instance.new("TextButton"),
		configname_29 = Instance.new("TextLabel"),
		Anti2Pads = Instance.new("Frame"),
		UICorner_38 = Instance.new("UICorner"),
		configpart_11 = Instance.new("Frame"),
		value_13 = Instance.new("TextButton"),
		configname_30 = Instance.new("TextLabel"),
		allplayersperm = Instance.new("Frame"),
		UICorner_39 = Instance.new("UICorner"),
		configpart_12 = Instance.new("Frame"),
		value_14 = Instance.new("TextButton"),
		configname_31 = Instance.new("TextLabel"),
		allplayerskicked = Instance.new("Frame"),
		UICorner_40 = Instance.new("UICorner"),
		configpart_13 = Instance.new("Frame"),
		value_15 = Instance.new("TextButton"),
		configname_32 = Instance.new("TextLabel"),
		userscsystem = Instance.new("Frame"),
		UICorner_41 = Instance.new("UICorner"),
		configpart_14 = Instance.new("Frame"),
		value_16 = Instance.new("TextButton"),
		configname_33 = Instance.new("TextLabel"),
		userslogs = Instance.new("Frame"),
		UICorner_42 = Instance.new("UICorner"),
		configpart_15 = Instance.new("Frame"),
		value_17 = Instance.new("TextButton"),
		configname_34 = Instance.new("TextLabel"),
		usersjoined = Instance.new("Frame"),
		UICorner_43 = Instance.new("UICorner"),
		configpart_16 = Instance.new("Frame"),
		value_18 = Instance.new("TextButton"),
		configname_35 = Instance.new("TextLabel"),
		Keys = Instance.new("TextLabel"),
		UICorner_44 = Instance.new("UICorner"),
		ReOpen = Instance.new("Frame"),
		UICorner_45 = Instance.new("UICorner"),
		keypart = Instance.new("Frame"),
		key = Instance.new("TextBox"),
		keyname = Instance.new("TextLabel"),
		Fly = Instance.new("Frame"),
		UICorner_46 = Instance.new("UICorner"),
		keypart_2 = Instance.new("Frame"),
		key_2 = Instance.new("TextBox"),
		keyname_2 = Instance.new("TextLabel"),
		Respawn = Instance.new("Frame"),
		UICorner_47 = Instance.new("UICorner"),
		keypart_3 = Instance.new("Frame"),
		key_3 = Instance.new("TextBox"),
		keyname_3 = Instance.new("TextLabel"),
		Reset = Instance.new("Frame"),
		UICorner_48 = Instance.new("UICorner"),
		keypart_4 = Instance.new("Frame"),
		key_4 = Instance.new("TextBox"),
		keyname_4 = Instance.new("TextLabel"),
		Pads = Instance.new("Frame"),
		UICorner_49 = Instance.new("UICorner"),
		keypart_5 = Instance.new("Frame"),
		key_5 = Instance.new("TextBox"),
		keyname_5 = Instance.new("TextLabel"),
		Config_2 = Instance.new("TextButton"),
		UICorner_50 = Instance.new("UICorner"),
		Title = Instance.new("Frame"),
		_Shazam = Instance.new("TextLabel"),
		_Close = Instance.new("TextButton"),
	}

	--Properties:

	Shazam.Shazam.Name = "Shazam"
	Shazam.Shazam.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Shazam.Shazam.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Shazam.Shazam.ResetOnSpawn = false

	Shazam.Client.Name = "Client"
	Shazam.Client.Parent = Shazam.Shazam
	Shazam.Client.Active = true
	Shazam.Client.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Shazam.Client.Position = UDim2.new(0.250207096, 0, 0.119425237, 0)
	Shazam.Client.Selectable = true
	Shazam.Client.Draggable = true
	Shazam.Client.Size = UDim2.new(0, 530, 0, 332)

	Shazam.Explorer.Name = "Explorer"
	Shazam.Explorer.Parent = Shazam.Client
	Shazam.Explorer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.Explorer.BorderColor3 = Color3.fromRGB(37, 255, 55)
	Shazam.Explorer.BorderSizePixel = 0
	Shazam.Explorer.Position = UDim2.new(0, 0, 0.202064246, 0)
	Shazam.Explorer.Size = UDim2.new(0, 140, 0, 264)

	Shazam.Keys_Infos.Name = "Keys_Infos"
	Shazam.Keys_Infos.Parent = Shazam.Explorer
	Shazam.Keys_Infos.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Shazam.Keys_Infos.Position = UDim2.new(0.0497512817, 0, 0.267234802, 0)
	Shazam.Keys_Infos.Size = UDim2.new(0, 123, 0, 40)
	Shazam.Keys_Infos.AutoButtonColor = false
	Shazam.Keys_Infos.Font = Enum.Font.SourceSans
	Shazam.Keys_Infos.Text = "Keys"
	Shazam.Keys_Infos.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Keys_Infos.TextSize = 18.000
	Shazam.Keys_Infos.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	Shazam.UICorner.Parent = Shazam.Keys_Infos

	Shazam.Themes.Name = "Themes"
	Shazam.Themes.Parent = Shazam.Explorer
	Shazam.Themes.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Shazam.Themes.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Themes.Position = UDim2.new(0.0497512817, 0, 0.46723488, 0)
	Shazam.Themes.Size = UDim2.new(0, 123, 0, 40)
	Shazam.Themes.AutoButtonColor = false
	Shazam.Themes.Font = Enum.Font.SourceSans
	Shazam.Themes.Text = "Themes"
	Shazam.Themes.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Themes.TextSize = 18.000
	Shazam.Themes.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	Shazam.UICorner_2.Parent = Shazam.Themes

	Shazam.Contraction.Name = "Contraction"
	Shazam.Contraction.Parent = Shazam.Explorer
	Shazam.Contraction.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Shazam.Contraction.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Contraction.Position = UDim2.new(0.0568941385, 0, 0.0727273226, 0)
	Shazam.Contraction.Size = UDim2.new(0, 124, 0, 40)
	Shazam.Contraction.AutoButtonColor = false
	Shazam.Contraction.Font = Enum.Font.SourceSans
	Shazam.Contraction.Text = "Contractions"
	Shazam.Contraction.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Contraction.TextSize = 18.000
	Shazam.Contraction.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	Shazam.UICorner_3.Parent = Shazam.Contraction

	Shazam.ScrollingFrame.Parent = Shazam.Explorer
	Shazam.ScrollingFrame.Active = true
	Shazam.ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Shazam.ScrollingFrame.BorderSizePixel = 0
	Shazam.ScrollingFrame.Position = UDim2.new(0.997832358, 0, 0, 0)
	Shazam.ScrollingFrame.Size = UDim2.new(0, 389, 0, 264)
	Shazam.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 25, 0)

	Shazam.Contractions.Name = "Contractions"
	Shazam.Contractions.Parent = Shazam.ScrollingFrame
	Shazam.Contractions.BackgroundColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.Contractions.Position = UDim2.new(0.0320000015, 0, 0.00300000003, 0)
	Shazam.Contractions.Size = UDim2.new(0, 364, 0, 40)
	Shazam.Contractions.Font = Enum.Font.SourceSansItalic
	Shazam.Contractions.Text = "Contractions"
	Shazam.Contractions.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Contractions.TextSize = 25.000

	Shazam.UICorner_4.Parent = Shazam.Contractions

	Shazam.CrashGame.Name = "CrashGame"
	Shazam.CrashGame.Parent = Shazam.Contractions
	Shazam.CrashGame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.CrashGame.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.CrashGame.BorderSizePixel = 0
	Shazam.CrashGame.Position = UDim2.new(0.00839669257, 0, 1.57500005, 0)
	Shazam.CrashGame.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_5.Parent = Shazam.CrashGame

	Shazam.configname.Name = "configname"
	Shazam.configname.Parent = Shazam.CrashGame
	Shazam.configname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname.BackgroundTransparency = 1.000
	Shazam.configname.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname.Font = Enum.Font.SourceSans
	Shazam.configname.Text = "Crash Game"
	Shazam.configname.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname.TextSize = 20.000

	Shazam.click.Name = "click"
	Shazam.click.Parent = Shazam.CrashGame
	Shazam.click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click.BackgroundTransparency = 1.000
	Shazam.click.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click.Font = Enum.Font.SourceSans
	Shazam.click.Text = ""
	Shazam.click.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click.TextSize = 1.000

	Shazam.FakeCrashGame.Name = "FakeCrashGame"
	Shazam.FakeCrashGame.Parent = Shazam.Contractions
	Shazam.FakeCrashGame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.FakeCrashGame.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.FakeCrashGame.BorderSizePixel = 0
	Shazam.FakeCrashGame.Position = UDim2.new(0.00800000038, 0, 2.9749999, 0)
	Shazam.FakeCrashGame.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_6.Parent = Shazam.FakeCrashGame

	Shazam.configname_2.Name = "configname"
	Shazam.configname_2.Parent = Shazam.FakeCrashGame
	Shazam.configname_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_2.BackgroundTransparency = 1.000
	Shazam.configname_2.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_2.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_2.Font = Enum.Font.SourceSans
	Shazam.configname_2.Text = "Fake Crash"
	Shazam.configname_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_2.TextSize = 20.000

	Shazam.click_2.Name = "click"
	Shazam.click_2.Parent = Shazam.FakeCrashGame
	Shazam.click_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_2.BackgroundTransparency = 1.000
	Shazam.click_2.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_2.Font = Enum.Font.SourceSans
	Shazam.click_2.Text = ""
	Shazam.click_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_2.TextSize = 1.000

	Shazam.BoomCrash.Name = "BoomCrash"
	Shazam.BoomCrash.Parent = Shazam.Contractions
	Shazam.BoomCrash.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.BoomCrash.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.BoomCrash.BorderSizePixel = 0
	Shazam.BoomCrash.Position = UDim2.new(0.00800000038, 0, 4.375, 0)
	Shazam.BoomCrash.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_7.Parent = Shazam.BoomCrash

	Shazam.configname_3.Name = "configname"
	Shazam.configname_3.Parent = Shazam.BoomCrash
	Shazam.configname_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_3.BackgroundTransparency = 1.000
	Shazam.configname_3.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_3.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_3.Font = Enum.Font.SourceSans
	Shazam.configname_3.Text = "Boom Crash"
	Shazam.configname_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_3.TextSize = 20.000

	Shazam.click_3.Name = "click"
	Shazam.click_3.Parent = Shazam.BoomCrash
	Shazam.click_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_3.BackgroundTransparency = 1.000
	Shazam.click_3.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_3.Font = Enum.Font.SourceSans
	Shazam.click_3.Text = ""
	Shazam.click_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_3.TextSize = 1.000

	Shazam.configdescription.Name = "configdescription"
	Shazam.configdescription.Parent = Shazam.BoomCrash
	Shazam.configdescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configdescription.BackgroundTransparency = 1.000
	Shazam.configdescription.Position = UDim2.new(0.634155035, 0, 0, 0)
	Shazam.configdescription.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configdescription.Font = Enum.Font.SourceSans
	Shazam.configdescription.Text = " - Crash + Effects"
	Shazam.configdescription.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configdescription.TextSize = 20.000

	Shazam.TaxiCrash.Name = "TaxiCrash"
	Shazam.TaxiCrash.Parent = Shazam.Contractions
	Shazam.TaxiCrash.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.TaxiCrash.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.TaxiCrash.BorderSizePixel = 0
	Shazam.TaxiCrash.Position = UDim2.new(0.00800000038, 0, 5.7750001, 0)
	Shazam.TaxiCrash.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_8.Parent = Shazam.TaxiCrash

	Shazam.configname_4.Name = "configname"
	Shazam.configname_4.Parent = Shazam.TaxiCrash
	Shazam.configname_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_4.BackgroundTransparency = 1.000
	Shazam.configname_4.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_4.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_4.Font = Enum.Font.SourceSans
	Shazam.configname_4.Text = "Taxi Crash"
	Shazam.configname_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_4.TextSize = 20.000

	Shazam.click_4.Name = "click"
	Shazam.click_4.Parent = Shazam.TaxiCrash
	Shazam.click_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_4.BackgroundTransparency = 1.000
	Shazam.click_4.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_4.Font = Enum.Font.SourceSans
	Shazam.click_4.Text = ""
	Shazam.click_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_4.TextSize = 1.000

	Shazam.configdescription_2.Name = "configdescription"
	Shazam.configdescription_2.Parent = Shazam.TaxiCrash
	Shazam.configdescription_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configdescription_2.BackgroundTransparency = 1.000
	Shazam.configdescription_2.Position = UDim2.new(0.634155035, 0, 0, 0)
	Shazam.configdescription_2.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configdescription_2.Font = Enum.Font.SourceSans
	Shazam.configdescription_2.Text = " - Spam Taxi Gear"
	Shazam.configdescription_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configdescription_2.TextSize = 20.000

	Shazam.ObbyBox.Name = "ObbyBox"
	Shazam.ObbyBox.Parent = Shazam.Contractions
	Shazam.ObbyBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.ObbyBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.ObbyBox.BorderSizePixel = 0
	Shazam.ObbyBox.Position = UDim2.new(0.00800000038, 0, 8.52500057, 0)
	Shazam.ObbyBox.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_9.Parent = Shazam.ObbyBox

	Shazam.configname_5.Name = "configname"
	Shazam.configname_5.Parent = Shazam.ObbyBox
	Shazam.configname_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_5.BackgroundTransparency = 1.000
	Shazam.configname_5.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_5.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_5.Font = Enum.Font.SourceSans
	Shazam.configname_5.Text = "Move Obby Box"
	Shazam.configname_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_5.TextSize = 20.000

	Shazam.click_5.Name = "click"
	Shazam.click_5.Parent = Shazam.ObbyBox
	Shazam.click_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_5.BackgroundTransparency = 1.000
	Shazam.click_5.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_5.Font = Enum.Font.SourceSans
	Shazam.click_5.Text = ""
	Shazam.click_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_5.TextSize = 1.000

	Shazam.ObbyBricks.Name = "ObbyBricks"
	Shazam.ObbyBricks.Parent = Shazam.Contractions
	Shazam.ObbyBricks.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.ObbyBricks.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.ObbyBricks.BorderSizePixel = 0
	Shazam.ObbyBricks.Position = UDim2.new(0.00800000038, 0, 9.92500019, 0)
	Shazam.ObbyBricks.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_10.Parent = Shazam.ObbyBricks

	Shazam.configname_6.Name = "configname"
	Shazam.configname_6.Parent = Shazam.ObbyBricks
	Shazam.configname_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_6.BackgroundTransparency = 1.000
	Shazam.configname_6.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_6.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_6.Font = Enum.Font.SourceSans
	Shazam.configname_6.Text = "Move Obby Bricks"
	Shazam.configname_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_6.TextSize = 20.000

	Shazam.click_6.Name = "click"
	Shazam.click_6.Parent = Shazam.ObbyBricks
	Shazam.click_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_6.BackgroundTransparency = 1.000
	Shazam.click_6.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_6.Font = Enum.Font.SourceSans
	Shazam.click_6.Text = ""
	Shazam.click_6.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_6.TextSize = 1.000

	Shazam.RegenPad.Name = "RegenPad"
	Shazam.RegenPad.Parent = Shazam.Contractions
	Shazam.RegenPad.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.RegenPad.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.RegenPad.BorderSizePixel = 0
	Shazam.RegenPad.Position = UDim2.new(0.00800000038, 0, 11.3249998, 0)
	Shazam.RegenPad.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_11.Parent = Shazam.RegenPad

	Shazam.configname_7.Name = "configname"
	Shazam.configname_7.Parent = Shazam.RegenPad
	Shazam.configname_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_7.BackgroundTransparency = 1.000
	Shazam.configname_7.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_7.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_7.Font = Enum.Font.SourceSans
	Shazam.configname_7.Text = "Move Regen Pad"
	Shazam.configname_7.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_7.TextSize = 20.000

	Shazam.click_7.Name = "click"
	Shazam.click_7.Parent = Shazam.RegenPad
	Shazam.click_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_7.BackgroundTransparency = 1.000
	Shazam.click_7.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_7.Font = Enum.Font.SourceSans
	Shazam.click_7.Text = ""
	Shazam.click_7.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_7.TextSize = 1.000

	Shazam.AdminPads.Name = "AdminPads"
	Shazam.AdminPads.Parent = Shazam.Contractions
	Shazam.AdminPads.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.AdminPads.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.AdminPads.BorderSizePixel = 0
	Shazam.AdminPads.Position = UDim2.new(0.00800000038, 0, 12.7250004, 0)
	Shazam.AdminPads.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_12.Parent = Shazam.AdminPads

	Shazam.configname_8.Name = "configname"
	Shazam.configname_8.Parent = Shazam.AdminPads
	Shazam.configname_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_8.BackgroundTransparency = 1.000
	Shazam.configname_8.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_8.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_8.Font = Enum.Font.SourceSans
	Shazam.configname_8.Text = "Move Admin Pads"
	Shazam.configname_8.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_8.TextSize = 20.000

	Shazam.click_8.Name = "click"
	Shazam.click_8.Parent = Shazam.AdminPads
	Shazam.click_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_8.BackgroundTransparency = 1.000
	Shazam.click_8.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_8.Font = Enum.Font.SourceSans
	Shazam.click_8.Text = ""
	Shazam.click_8.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_8.TextSize = 1.000

	Shazam.Dividers.Name = "Dividers"
	Shazam.Dividers.Parent = Shazam.Contractions
	Shazam.Dividers.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Dividers.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Dividers.BorderSizePixel = 0
	Shazam.Dividers.Position = UDim2.new(0.00800000038, 0, 14.125, 0)
	Shazam.Dividers.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_13.Parent = Shazam.Dividers

	Shazam.configname_9.Name = "configname"
	Shazam.configname_9.Parent = Shazam.Dividers
	Shazam.configname_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_9.BackgroundTransparency = 1.000
	Shazam.configname_9.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_9.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_9.Font = Enum.Font.SourceSans
	Shazam.configname_9.Text = "Move Admin Dividers"
	Shazam.configname_9.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_9.TextSize = 20.000

	Shazam.click_9.Name = "click"
	Shazam.click_9.Parent = Shazam.Dividers
	Shazam.click_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_9.BackgroundTransparency = 1.000
	Shazam.click_9.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_9.Font = Enum.Font.SourceSans
	Shazam.click_9.Text = ""
	Shazam.click_9.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_9.TextSize = 1.000

	Shazam.Allpads.Name = "Allpads"
	Shazam.Allpads.Parent = Shazam.Contractions
	Shazam.Allpads.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Allpads.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Allpads.BorderSizePixel = 0
	Shazam.Allpads.Position = UDim2.new(0.00800000038, 0, 16.875, 0)
	Shazam.Allpads.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_14.Parent = Shazam.Allpads

	Shazam.configname_10.Name = "configname"
	Shazam.configname_10.Parent = Shazam.Allpads
	Shazam.configname_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_10.BackgroundTransparency = 1.000
	Shazam.configname_10.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_10.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_10.Font = Enum.Font.SourceSans
	Shazam.configname_10.Text = "Take All Pads"
	Shazam.configname_10.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_10.TextSize = 20.000

	Shazam.click_10.Name = "click"
	Shazam.click_10.Parent = Shazam.Allpads
	Shazam.click_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_10.BackgroundTransparency = 1.000
	Shazam.click_10.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_10.Font = Enum.Font.SourceSans
	Shazam.click_10.Text = ""
	Shazam.click_10.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_10.TextSize = 1.000

	Shazam.Regen.Name = "Regen"
	Shazam.Regen.Parent = Shazam.Contractions
	Shazam.Regen.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Regen.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Regen.BorderSizePixel = 0
	Shazam.Regen.Position = UDim2.new(0.00800000038, 0, 18.1749992, 0)
	Shazam.Regen.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_15.Parent = Shazam.Regen

	Shazam.configname_11.Name = "configname"
	Shazam.configname_11.Parent = Shazam.Regen
	Shazam.configname_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_11.BackgroundTransparency = 1.000
	Shazam.configname_11.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_11.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_11.Font = Enum.Font.SourceSans
	Shazam.configname_11.Text = "Regen All Pads"
	Shazam.configname_11.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_11.TextSize = 20.000

	Shazam.click_11.Name = "click"
	Shazam.click_11.Parent = Shazam.Regen
	Shazam.click_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_11.BackgroundTransparency = 1.000
	Shazam.click_11.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_11.Font = Enum.Font.SourceSans
	Shazam.click_11.Text = ""
	Shazam.click_11.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_11.TextSize = 1.000

	Shazam.Silent.Name = "Silent"
	Shazam.Silent.Parent = Shazam.Contractions
	Shazam.Silent.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Silent.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Silent.BorderSizePixel = 0
	Shazam.Silent.Position = UDim2.new(0.00800000038, 0, 19.5750008, 0)
	Shazam.Silent.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_16.Parent = Shazam.Silent

	Shazam.configname_12.Name = "configname"
	Shazam.configname_12.Parent = Shazam.Silent
	Shazam.configname_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_12.BackgroundTransparency = 1.000
	Shazam.configname_12.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_12.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_12.Font = Enum.Font.SourceSans
	Shazam.configname_12.Text = "Silent Command"
	Shazam.configname_12.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_12.TextSize = 20.000

	Shazam.value.Name = "value"
	Shazam.value.Parent = Shazam.Silent
	Shazam.value.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.value.BorderColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value.Position = UDim2.new(0.425414354, 0, 0, 0)
	Shazam.value.Size = UDim2.new(0, 185, 0, 40)
	Shazam.value.Font = Enum.Font.SourceSans
	Shazam.value.Text = ""
	Shazam.value.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.value.TextSize = 14.000

	Shazam.Themes_2.Name = "Themes"
	Shazam.Themes_2.Parent = Shazam.ScrollingFrame
	Shazam.Themes_2.BackgroundColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.Themes_2.Position = UDim2.new(0.0320000015, 0, 0.00300000003, 0)
	Shazam.Themes_2.Size = UDim2.new(0, 364, 0, 40)
	Shazam.Themes_2.Visible = false
	Shazam.Themes_2.Font = Enum.Font.SourceSansItalic
	Shazam.Themes_2.Text = "Themes"
	Shazam.Themes_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Themes_2.TextSize = 25.000

	Shazam.UICorner_17.Parent = Shazam.Themes_2

	Shazam.Theme1.Name = "Theme1"
	Shazam.Theme1.Parent = Shazam.Themes_2
	Shazam.Theme1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Theme1.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Theme1.BorderSizePixel = 0
	Shazam.Theme1.Position = UDim2.new(0.00839669257, 0, 1.57500005, 0)
	Shazam.Theme1.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_18.Parent = Shazam.Theme1

	Shazam.configname_13.Name = "configname"
	Shazam.configname_13.Parent = Shazam.Theme1
	Shazam.configname_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_13.BackgroundTransparency = 1.000
	Shazam.configname_13.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_13.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_13.Font = Enum.Font.SourceSans
	Shazam.configname_13.Text = "Theme 1"
	Shazam.configname_13.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_13.TextSize = 20.000

	Shazam.click_12.Name = "click"
	Shazam.click_12.Parent = Shazam.Theme1
	Shazam.click_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_12.BackgroundTransparency = 1.000
	Shazam.click_12.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_12.Font = Enum.Font.SourceSans
	Shazam.click_12.Text = ""
	Shazam.click_12.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_12.TextSize = 1.000

	Shazam.Theme2.Name = "Theme2"
	Shazam.Theme2.Parent = Shazam.Themes_2
	Shazam.Theme2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Theme2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Theme2.BorderSizePixel = 0
	Shazam.Theme2.Position = UDim2.new(0.00800000038, 0, 2.9749999, 0)
	Shazam.Theme2.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_19.Parent = Shazam.Theme2

	Shazam.configname_14.Name = "configname"
	Shazam.configname_14.Parent = Shazam.Theme2
	Shazam.configname_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_14.BackgroundTransparency = 1.000
	Shazam.configname_14.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_14.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_14.Font = Enum.Font.SourceSans
	Shazam.configname_14.Text = "Theme 2"
	Shazam.configname_14.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_14.TextSize = 20.000

	Shazam.click_13.Name = "click"
	Shazam.click_13.Parent = Shazam.Theme2
	Shazam.click_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_13.BackgroundTransparency = 1.000
	Shazam.click_13.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_13.Font = Enum.Font.SourceSans
	Shazam.click_13.Text = ""
	Shazam.click_13.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_13.TextSize = 1.000

	Shazam.Theme3.Name = "Theme3"
	Shazam.Theme3.Parent = Shazam.Themes_2
	Shazam.Theme3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Theme3.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Theme3.BorderSizePixel = 0
	Shazam.Theme3.Position = UDim2.new(0.00800000038, 0, 4.375, 0)
	Shazam.Theme3.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_20.Parent = Shazam.Theme3

	Shazam.configname_15.Name = "configname"
	Shazam.configname_15.Parent = Shazam.Theme3
	Shazam.configname_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_15.BackgroundTransparency = 1.000
	Shazam.configname_15.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_15.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_15.Font = Enum.Font.SourceSans
	Shazam.configname_15.Text = "Theme 3"
	Shazam.configname_15.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_15.TextSize = 20.000

	Shazam.click_14.Name = "click"
	Shazam.click_14.Parent = Shazam.Theme3
	Shazam.click_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_14.BackgroundTransparency = 1.000
	Shazam.click_14.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_14.Font = Enum.Font.SourceSans
	Shazam.click_14.Text = ""
	Shazam.click_14.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_14.TextSize = 1.000

	Shazam.Theme4.Name = "Theme4"
	Shazam.Theme4.Parent = Shazam.Themes_2
	Shazam.Theme4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Theme4.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Theme4.BorderSizePixel = 0
	Shazam.Theme4.Position = UDim2.new(0.00800000038, 0, 5.7750001, 0)
	Shazam.Theme4.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_21.Parent = Shazam.Theme4

	Shazam.configname_16.Name = "configname"
	Shazam.configname_16.Parent = Shazam.Theme4
	Shazam.configname_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_16.BackgroundTransparency = 1.000
	Shazam.configname_16.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_16.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_16.Font = Enum.Font.SourceSans
	Shazam.configname_16.Text = "Theme 4"
	Shazam.configname_16.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_16.TextSize = 20.000

	Shazam.click_15.Name = "click"
	Shazam.click_15.Parent = Shazam.Theme4
	Shazam.click_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_15.BackgroundTransparency = 1.000
	Shazam.click_15.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_15.Font = Enum.Font.SourceSans
	Shazam.click_15.Text = ""
	Shazam.click_15.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_15.TextSize = 1.000

	Shazam.Theme5.Name = "Theme5"
	Shazam.Theme5.Parent = Shazam.Themes_2
	Shazam.Theme5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Theme5.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Theme5.BorderSizePixel = 0
	Shazam.Theme5.Position = UDim2.new(0.00800000038, 0, 7.17500019, 0)
	Shazam.Theme5.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_22.Parent = Shazam.Theme5

	Shazam.configname_17.Name = "configname"
	Shazam.configname_17.Parent = Shazam.Theme5
	Shazam.configname_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_17.BackgroundTransparency = 1.000
	Shazam.configname_17.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_17.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_17.Font = Enum.Font.SourceSans
	Shazam.configname_17.Text = "Theme 5"
	Shazam.configname_17.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_17.TextSize = 20.000

	Shazam.click_16.Name = "click"
	Shazam.click_16.Parent = Shazam.Theme5
	Shazam.click_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_16.BackgroundTransparency = 1.000
	Shazam.click_16.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_16.Font = Enum.Font.SourceSans
	Shazam.click_16.Text = ""
	Shazam.click_16.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_16.TextSize = 1.000

	Shazam.Theme6.Name = "Theme6"
	Shazam.Theme6.Parent = Shazam.Themes_2
	Shazam.Theme6.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Theme6.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Theme6.BorderSizePixel = 0
	Shazam.Theme6.Position = UDim2.new(0.00800000038, 0, 8.52500057, 0)
	Shazam.Theme6.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_23.Parent = Shazam.Theme6

	Shazam.configname_18.Name = "configname"
	Shazam.configname_18.Parent = Shazam.Theme6
	Shazam.configname_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_18.BackgroundTransparency = 1.000
	Shazam.configname_18.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_18.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_18.Font = Enum.Font.SourceSans
	Shazam.configname_18.Text = "Theme 6"
	Shazam.configname_18.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_18.TextSize = 20.000

	Shazam.click_17.Name = "click"
	Shazam.click_17.Parent = Shazam.Theme6
	Shazam.click_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_17.BackgroundTransparency = 1.000
	Shazam.click_17.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_17.Font = Enum.Font.SourceSans
	Shazam.click_17.Text = ""
	Shazam.click_17.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_17.TextSize = 1.000

	Shazam.Theme7.Name = "Theme7"
	Shazam.Theme7.Parent = Shazam.Themes_2
	Shazam.Theme7.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Theme7.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Theme7.BorderSizePixel = 0
	Shazam.Theme7.Position = UDim2.new(0.00800000038, 0, 9.92500019, 0)
	Shazam.Theme7.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_24.Parent = Shazam.Theme7

	Shazam.configname_19.Name = "configname"
	Shazam.configname_19.Parent = Shazam.Theme7
	Shazam.configname_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_19.BackgroundTransparency = 1.000
	Shazam.configname_19.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_19.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_19.Font = Enum.Font.SourceSans
	Shazam.configname_19.Text = "Theme 7"
	Shazam.configname_19.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_19.TextSize = 20.000

	Shazam.click_18.Name = "click"
	Shazam.click_18.Parent = Shazam.Theme7
	Shazam.click_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.click_18.BackgroundTransparency = 1.000
	Shazam.click_18.Size = UDim2.new(0, 360, 0, 40)
	Shazam.click_18.Font = Enum.Font.SourceSans
	Shazam.click_18.Text = ""
	Shazam.click_18.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.click_18.TextSize = 1.000

	Shazam.Config.Name = "Config"
	Shazam.Config.Parent = Shazam.ScrollingFrame
	Shazam.Config.BackgroundColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.Config.Position = UDim2.new(0.0315594114, 0, 0.00287182909, 0)
	Shazam.Config.Size = UDim2.new(0, 364, 0, 40)
	Shazam.Config.Visible = false
	Shazam.Config.Font = Enum.Font.SourceSansItalic
	Shazam.Config.Text = "Config"
	Shazam.Config.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Config.TextSize = 25.000

	Shazam.UICorner_25.Parent = Shazam.Config

	Shazam.Antiabusegears.Name = "Antiabusegears"
	Shazam.Antiabusegears.Parent = Shazam.Config
	Shazam.Antiabusegears.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Antiabusegears.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Antiabusegears.BorderSizePixel = 0
	Shazam.Antiabusegears.Position = UDim2.new(0.00290218811, 0, 2.57499933, 0)
	Shazam.Antiabusegears.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_26.Parent = Shazam.Antiabusegears

	Shazam.configpart.Name = "configpart"
	Shazam.configpart.Parent = Shazam.Antiabusegears
	Shazam.configpart.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_2.Name = "value"
	Shazam.value_2.Parent = Shazam.configpart
	Shazam.value_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_2.BackgroundTransparency = 1.000
	Shazam.value_2.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_2.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_2.Font = Enum.Font.SourceSans
	Shazam.value_2.Text = "off"
	Shazam.value_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_2.TextSize = 30.000
	Shazam.value_2.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_2.TextStrokeTransparency = 0.000

	Shazam.configname_20.Name = "configname"
	Shazam.configname_20.Parent = Shazam.Antiabusegears
	Shazam.configname_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_20.BackgroundTransparency = 1.000
	Shazam.configname_20.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_20.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_20.Font = Enum.Font.SourceSans
	Shazam.configname_20.Text = "Anti Abusegears"
	Shazam.configname_20.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_20.TextSize = 20.000

	Shazam.prefix.Name = "prefix"
	Shazam.prefix.Parent = Shazam.Config
	Shazam.prefix.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.prefix.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.prefix.BorderSizePixel = 0
	Shazam.prefix.Position = UDim2.new(0.00290218811, 0, 1.27499962, 0)
	Shazam.prefix.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_27.Parent = Shazam.prefix

	Shazam.prefixpart.Name = "prefixpart"
	Shazam.prefixpart.Parent = Shazam.prefix
	Shazam.prefixpart.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.prefixpart.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.prefixpart.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.prefixpart.Size = UDim2.new(0, 50, 0, 40)

	Shazam.prefix_2.Name = "prefix"
	Shazam.prefix_2.Parent = Shazam.prefixpart
	Shazam.prefix_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.prefix_2.BackgroundTransparency = 1.000
	Shazam.prefix_2.Position = UDim2.new(-0.0116667151, 0, 0, 0)
	Shazam.prefix_2.Size = UDim2.new(0, 50, 0, 40)
	Shazam.prefix_2.Font = Enum.Font.SourceSans
	Shazam.prefix_2.Text = "!"
	Shazam.prefix_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.prefix_2.TextSize = 30.000
	Shazam.prefix_2.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.prefix_2.TextStrokeTransparency = 0.000

	Shazam.prefixtitle.Name = "prefixtitle"
	Shazam.prefixtitle.Parent = Shazam.prefix
	Shazam.prefixtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.prefixtitle.BackgroundTransparency = 1.000
	Shazam.prefixtitle.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.prefixtitle.Size = UDim2.new(0, 96, 0, 40)
	Shazam.prefixtitle.Font = Enum.Font.SourceSans
	Shazam.prefixtitle.Text = "Prefix"
	Shazam.prefixtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.prefixtitle.TextSize = 20.000

	Shazam.Antigrayscale.Name = "Antigrayscale"
	Shazam.Antigrayscale.Parent = Shazam.Config
	Shazam.Antigrayscale.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Antigrayscale.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Antigrayscale.BorderSizePixel = 0
	Shazam.Antigrayscale.Position = UDim2.new(0.00290218811, 0, 3.79999924, 0)
	Shazam.Antigrayscale.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_28.Parent = Shazam.Antigrayscale

	Shazam.configpart_2.Name = "configpart"
	Shazam.configpart_2.Parent = Shazam.Antigrayscale
	Shazam.configpart_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_2.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_2.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_2.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_3.Name = "value"
	Shazam.value_3.Parent = Shazam.configpart_2
	Shazam.value_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_3.BackgroundTransparency = 1.000
	Shazam.value_3.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_3.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_3.Font = Enum.Font.SourceSans
	Shazam.value_3.Text = "off"
	Shazam.value_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_3.TextSize = 30.000
	Shazam.value_3.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_3.TextStrokeTransparency = 0.000

	Shazam.configname_21.Name = "configname"
	Shazam.configname_21.Parent = Shazam.Antigrayscale
	Shazam.configname_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_21.BackgroundTransparency = 1.000
	Shazam.configname_21.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_21.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_21.Font = Enum.Font.SourceSans
	Shazam.configname_21.Text = "Anti grayscale"
	Shazam.configname_21.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_21.TextSize = 20.000

	Shazam.Antikill.Name = "Antikill"
	Shazam.Antikill.Parent = Shazam.Config
	Shazam.Antikill.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Antikill.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Antikill.BorderSizePixel = 0
	Shazam.Antikill.Position = UDim2.new(0.00290218811, 0, 5.02499914, 0)
	Shazam.Antikill.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_29.Parent = Shazam.Antikill

	Shazam.configpart_3.Name = "configpart"
	Shazam.configpart_3.Parent = Shazam.Antikill
	Shazam.configpart_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_3.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_3.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_3.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_4.Name = "value"
	Shazam.value_4.Parent = Shazam.configpart_3
	Shazam.value_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_4.BackgroundTransparency = 1.000
	Shazam.value_4.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_4.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_4.Font = Enum.Font.SourceSans
	Shazam.value_4.Text = "off"
	Shazam.value_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_4.TextSize = 30.000
	Shazam.value_4.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_4.TextStrokeTransparency = 0.000

	Shazam.configname_22.Name = "configname"
	Shazam.configname_22.Parent = Shazam.Antikill
	Shazam.configname_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_22.BackgroundTransparency = 1.000
	Shazam.configname_22.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_22.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_22.Font = Enum.Font.SourceSans
	Shazam.configname_22.Text = "Anti kill"
	Shazam.configname_22.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_22.TextSize = 20.000

	Shazam.Antijail.Name = "Antijail"
	Shazam.Antijail.Parent = Shazam.Config
	Shazam.Antijail.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Antijail.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Antijail.BorderSizePixel = 0
	Shazam.Antijail.Position = UDim2.new(0.00290218741, 0, 6.34999943, 0)
	Shazam.Antijail.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_30.Parent = Shazam.Antijail

	Shazam.configpart_4.Name = "configpart"
	Shazam.configpart_4.Parent = Shazam.Antijail
	Shazam.configpart_4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_4.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_4.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_4.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_5.Name = "value"
	Shazam.value_5.Parent = Shazam.configpart_4
	Shazam.value_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_5.BackgroundTransparency = 1.000
	Shazam.value_5.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_5.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_5.Font = Enum.Font.SourceSans
	Shazam.value_5.Text = "off"
	Shazam.value_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_5.TextSize = 30.000
	Shazam.value_5.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_5.TextStrokeTransparency = 0.000

	Shazam.configname_23.Name = "configname"
	Shazam.configname_23.Parent = Shazam.Antijail
	Shazam.configname_23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_23.BackgroundTransparency = 1.000
	Shazam.configname_23.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_23.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_23.Font = Enum.Font.SourceSans
	Shazam.configname_23.Text = "Anti jail"
	Shazam.configname_23.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_23.TextSize = 20.000

	Shazam.Anticrashnotperm.Name = "Anticrashnotperm"
	Shazam.Anticrashnotperm.Parent = Shazam.Config
	Shazam.Anticrashnotperm.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Anticrashnotperm.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Anticrashnotperm.BorderSizePixel = 0
	Shazam.Anticrashnotperm.Position = UDim2.new(0.00290218741, 0, 7.59999943, 0)
	Shazam.Anticrashnotperm.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_31.Parent = Shazam.Anticrashnotperm

	Shazam.configpart_5.Name = "configpart"
	Shazam.configpart_5.Parent = Shazam.Anticrashnotperm
	Shazam.configpart_5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_5.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_5.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_5.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_6.Name = "value"
	Shazam.value_6.Parent = Shazam.configpart_5
	Shazam.value_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_6.BackgroundTransparency = 1.000
	Shazam.value_6.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_6.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_6.Font = Enum.Font.SourceSans
	Shazam.value_6.Text = "on"
	Shazam.value_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_6.TextSize = 30.000
	Shazam.value_6.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_6.TextStrokeTransparency = 0.000

	Shazam.configname_24.Name = "configname"
	Shazam.configname_24.Parent = Shazam.Anticrashnotperm
	Shazam.configname_24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_24.BackgroundTransparency = 1.000
	Shazam.configname_24.Position = UDim2.new(0.0678566396, 0, 0, 0)
	Shazam.configname_24.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_24.Font = Enum.Font.SourceSans
	Shazam.configname_24.Text = "Anti Crash Not Perm"
	Shazam.configname_24.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_24.TextSize = 20.000

	Shazam.AnticrashVG.Name = "AnticrashVG"
	Shazam.AnticrashVG.Parent = Shazam.Config
	Shazam.AnticrashVG.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.AnticrashVG.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.AnticrashVG.BorderSizePixel = 0
	Shazam.AnticrashVG.Position = UDim2.new(0.00290218741, 0, 8.75, 0)
	Shazam.AnticrashVG.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_32.Parent = Shazam.AnticrashVG

	Shazam.configpart_6.Name = "configpart"
	Shazam.configpart_6.Parent = Shazam.AnticrashVG
	Shazam.configpart_6.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_6.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_6.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_6.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_7.Name = "value"
	Shazam.value_7.Parent = Shazam.configpart_6
	Shazam.value_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_7.BackgroundTransparency = 1.000
	Shazam.value_7.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_7.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_7.Font = Enum.Font.SourceSans
	Shazam.value_7.Text = "off"
	Shazam.value_7.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_7.TextSize = 30.000
	Shazam.value_7.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_7.TextStrokeTransparency = 0.000

	Shazam.configname_25.Name = "configname"
	Shazam.configname_25.Parent = Shazam.AnticrashVG
	Shazam.configname_25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_25.BackgroundTransparency = 1.000
	Shazam.configname_25.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_25.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_25.Font = Enum.Font.SourceSans
	Shazam.configname_25.Text = "Anti Vampire Crash"
	Shazam.configname_25.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_25.TextSize = 20.000

	Shazam.Antipad.Name = "Antipad"
	Shazam.Antipad.Parent = Shazam.Config
	Shazam.Antipad.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Antipad.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Antipad.BorderSizePixel = 0
	Shazam.Antipad.Position = UDim2.new(0.00290218741, 0, 10.0999994, 0)
	Shazam.Antipad.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_33.Parent = Shazam.Antipad

	Shazam.configpart_7.Name = "configpart"
	Shazam.configpart_7.Parent = Shazam.Antipad
	Shazam.configpart_7.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_7.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_7.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_7.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_8.Name = "value"
	Shazam.value_8.Parent = Shazam.configpart_7
	Shazam.value_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_8.BackgroundTransparency = 1.000
	Shazam.value_8.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_8.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_8.Font = Enum.Font.SourceSans
	Shazam.value_8.Text = "off"
	Shazam.value_8.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_8.TextSize = 30.000
	Shazam.value_8.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_8.TextStrokeTransparency = 0.000

	Shazam.configname_26.Name = "configname"
	Shazam.configname_26.Parent = Shazam.Antipad
	Shazam.configname_26.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_26.BackgroundTransparency = 1.000
	Shazam.configname_26.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_26.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_26.Font = Enum.Font.SourceSans
	Shazam.configname_26.Text = "Anti Pad"
	Shazam.configname_26.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_26.TextSize = 20.000

	Shazam.musicid.Name = "musicid"
	Shazam.musicid.Parent = Shazam.Config
	Shazam.musicid.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.musicid.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.musicid.BorderSizePixel = 0
	Shazam.musicid.Position = UDim2.new(-0.00259231776, 0, 16.2749996, 0)
	Shazam.musicid.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_34.Parent = Shazam.musicid

	Shazam.box.Name = "box"
	Shazam.box.Parent = Shazam.musicid
	Shazam.box.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.box.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.box.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.box.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_9.Name = "value"
	Shazam.value_9.Parent = Shazam.box
	Shazam.value_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_9.BackgroundTransparency = 1.000
	Shazam.value_9.Position = UDim2.new(-0.0116667151, 0, 0, 0)
	Shazam.value_9.Size = UDim2.new(0, 50, 0, 40)
	Shazam.value_9.Font = Enum.Font.SourceSans
	Shazam.value_9.Text = "0"
	Shazam.value_9.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_9.TextSize = 30.000
	Shazam.value_9.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_9.TextStrokeTransparency = 0.000

	Shazam.title.Name = "title"
	Shazam.title.Parent = Shazam.musicid
	Shazam.title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.title.BackgroundTransparency = 1.000
	Shazam.title.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.title.Size = UDim2.new(0, 96, 0, 40)
	Shazam.title.Font = Enum.Font.SourceSans
	Shazam.title.Text = "Music ID"
	Shazam.title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.title.TextSize = 20.000

	Shazam.mymusiconly.Name = "mymusiconly"
	Shazam.mymusiconly.Parent = Shazam.Config
	Shazam.mymusiconly.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.mymusiconly.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.mymusiconly.BorderSizePixel = 0
	Shazam.mymusiconly.Position = UDim2.new(-0.00259231869, 0, 17.6000004, 0)
	Shazam.mymusiconly.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_35.Parent = Shazam.mymusiconly

	Shazam.configpart_8.Name = "configpart"
	Shazam.configpart_8.Parent = Shazam.mymusiconly
	Shazam.configpart_8.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_8.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_8.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_8.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_10.Name = "value"
	Shazam.value_10.Parent = Shazam.configpart_8
	Shazam.value_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_10.BackgroundTransparency = 1.000
	Shazam.value_10.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_10.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_10.Font = Enum.Font.SourceSans
	Shazam.value_10.Text = "off"
	Shazam.value_10.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_10.TextSize = 30.000
	Shazam.value_10.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_10.TextStrokeTransparency = 0.000

	Shazam.configname_27.Name = "configname"
	Shazam.configname_27.Parent = Shazam.mymusiconly
	Shazam.configname_27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_27.BackgroundTransparency = 1.000
	Shazam.configname_27.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_27.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_27.Font = Enum.Font.SourceSans
	Shazam.configname_27.Text = "My Music Only"
	Shazam.configname_27.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_27.TextSize = 20.000

	Shazam.Antivoid.Name = "Antivoid"
	Shazam.Antivoid.Parent = Shazam.Config
	Shazam.Antivoid.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Antivoid.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Antivoid.BorderSizePixel = 0
	Shazam.Antivoid.Position = UDim2.new(0.00290218741, 0, 11.3499994, 0)
	Shazam.Antivoid.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_36.Parent = Shazam.Antivoid

	Shazam.configpart_9.Name = "configpart"
	Shazam.configpart_9.Parent = Shazam.Antivoid
	Shazam.configpart_9.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_9.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_9.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_9.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_11.Name = "value"
	Shazam.value_11.Parent = Shazam.configpart_9
	Shazam.value_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_11.BackgroundTransparency = 1.000
	Shazam.value_11.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_11.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_11.Font = Enum.Font.SourceSans
	Shazam.value_11.Text = "off"
	Shazam.value_11.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_11.TextSize = 30.000
	Shazam.value_11.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_11.TextStrokeTransparency = 0.000

	Shazam.configname_28.Name = "configname"
	Shazam.configname_28.Parent = Shazam.Antivoid
	Shazam.configname_28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_28.BackgroundTransparency = 1.000
	Shazam.configname_28.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_28.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_28.Font = Enum.Font.SourceSans
	Shazam.configname_28.Text = "Anti Void"
	Shazam.configname_28.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_28.TextSize = 20.000

	Shazam.Antiattach.Name = "Antiattach"
	Shazam.Antiattach.Parent = Shazam.Config
	Shazam.Antiattach.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Antiattach.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Antiattach.BorderSizePixel = 0
	Shazam.Antiattach.Position = UDim2.new(0.00290218741, 0, 12.5249996, 0)
	Shazam.Antiattach.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_37.Parent = Shazam.Antiattach

	Shazam.configpart_10.Name = "configpart"
	Shazam.configpart_10.Parent = Shazam.Antiattach
	Shazam.configpart_10.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_10.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_10.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_10.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_12.Name = "value"
	Shazam.value_12.Parent = Shazam.configpart_10
	Shazam.value_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_12.BackgroundTransparency = 1.000
	Shazam.value_12.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_12.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_12.Font = Enum.Font.SourceSans
	Shazam.value_12.Text = "off"
	Shazam.value_12.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_12.TextSize = 30.000
	Shazam.value_12.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_12.TextStrokeTransparency = 0.000

	Shazam.configname_29.Name = "configname"
	Shazam.configname_29.Parent = Shazam.Antiattach
	Shazam.configname_29.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_29.BackgroundTransparency = 1.000
	Shazam.configname_29.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_29.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_29.Font = Enum.Font.SourceSans
	Shazam.configname_29.Text = "Anti Attach"
	Shazam.configname_29.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_29.TextSize = 20.000

	Shazam.Anti2Pads.Name = "Anti2Pads"
	Shazam.Anti2Pads.Parent = Shazam.Config
	Shazam.Anti2Pads.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Anti2Pads.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Anti2Pads.BorderSizePixel = 0
	Shazam.Anti2Pads.Position = UDim2.new(-0.00259231823, 0, 13.8499994, 0)
	Shazam.Anti2Pads.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_38.Parent = Shazam.Anti2Pads

	Shazam.configpart_11.Name = "configpart"
	Shazam.configpart_11.Parent = Shazam.Anti2Pads
	Shazam.configpart_11.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_11.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_11.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_11.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_13.Name = "value"
	Shazam.value_13.Parent = Shazam.configpart_11
	Shazam.value_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_13.BackgroundTransparency = 1.000
	Shazam.value_13.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_13.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_13.Font = Enum.Font.SourceSans
	Shazam.value_13.Text = "off"
	Shazam.value_13.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_13.TextSize = 30.000
	Shazam.value_13.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_13.TextStrokeTransparency = 0.000

	Shazam.configname_30.Name = "configname"
	Shazam.configname_30.Parent = Shazam.Anti2Pads
	Shazam.configname_30.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_30.BackgroundTransparency = 1.000
	Shazam.configname_30.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_30.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_30.Font = Enum.Font.SourceSans
	Shazam.configname_30.Text = "Anti 2 Pads"
	Shazam.configname_30.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_30.TextSize = 20.000

	Shazam.allplayersperm.Name = "allplayersperm"
	Shazam.allplayersperm.Parent = Shazam.Config
	Shazam.allplayersperm.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.allplayersperm.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.allplayersperm.BorderSizePixel = 0
	Shazam.allplayersperm.Position = UDim2.new(-0.00259231869, 0, 20.6499996, 0)
	Shazam.allplayersperm.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_39.Parent = Shazam.allplayersperm

	Shazam.configpart_12.Name = "configpart"
	Shazam.configpart_12.Parent = Shazam.allplayersperm
	Shazam.configpart_12.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_12.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_12.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_12.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_14.Name = "value"
	Shazam.value_14.Parent = Shazam.configpart_12
	Shazam.value_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_14.BackgroundTransparency = 1.000
	Shazam.value_14.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_14.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_14.Font = Enum.Font.SourceSans
	Shazam.value_14.Text = "off"
	Shazam.value_14.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_14.TextSize = 30.000
	Shazam.value_14.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_14.TextStrokeTransparency = 0.000

	Shazam.configname_31.Name = "configname"
	Shazam.configname_31.Parent = Shazam.allplayersperm
	Shazam.configname_31.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_31.BackgroundTransparency = 1.000
	Shazam.configname_31.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_31.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_31.Font = Enum.Font.SourceSans
	Shazam.configname_31.Text = "All Players Perm"
	Shazam.configname_31.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_31.TextSize = 20.000

	Shazam.allplayerskicked.Name = "allplayerskicked"
	Shazam.allplayerskicked.Parent = Shazam.Config
	Shazam.allplayerskicked.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.allplayerskicked.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.allplayerskicked.BorderSizePixel = 0
	Shazam.allplayerskicked.Position = UDim2.new(-0.00259231869, 0, 21.9499989, 0)
	Shazam.allplayerskicked.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_40.Parent = Shazam.allplayerskicked

	Shazam.configpart_13.Name = "configpart"
	Shazam.configpart_13.Parent = Shazam.allplayerskicked
	Shazam.configpart_13.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_13.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_13.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_13.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_15.Name = "value"
	Shazam.value_15.Parent = Shazam.configpart_13
	Shazam.value_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_15.BackgroundTransparency = 1.000
	Shazam.value_15.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_15.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_15.Font = Enum.Font.SourceSans
	Shazam.value_15.Text = "off"
	Shazam.value_15.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_15.TextSize = 30.000
	Shazam.value_15.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_15.TextStrokeTransparency = 0.000

	Shazam.configname_32.Name = "configname"
	Shazam.configname_32.Parent = Shazam.allplayerskicked
	Shazam.configname_32.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_32.BackgroundTransparency = 1.000
	Shazam.configname_32.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.configname_32.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_32.Font = Enum.Font.SourceSans
	Shazam.configname_32.Text = "All Players Kicked"
	Shazam.configname_32.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_32.TextSize = 20.000

	Shazam.userscsystem.Name = "userscsystem"
	Shazam.userscsystem.Parent = Shazam.Config
	Shazam.userscsystem.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.userscsystem.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.userscsystem.BorderSizePixel = 0
	Shazam.userscsystem.Position = UDim2.new(0.00290218694, 0, 24.2749996, 0)
	Shazam.userscsystem.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_41.Parent = Shazam.userscsystem

	Shazam.configpart_14.Name = "configpart"
	Shazam.configpart_14.Parent = Shazam.userscsystem
	Shazam.configpart_14.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_14.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_14.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_14.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_16.Name = "value"
	Shazam.value_16.Parent = Shazam.configpart_14
	Shazam.value_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_16.BackgroundTransparency = 1.000
	Shazam.value_16.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_16.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_16.Font = Enum.Font.SourceSans
	Shazam.value_16.Text = "off"
	Shazam.value_16.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_16.TextSize = 30.000
	Shazam.value_16.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_16.TextStrokeTransparency = 0.000

	Shazam.configname_33.Name = "configname"
	Shazam.configname_33.Parent = Shazam.userscsystem
	Shazam.configname_33.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_33.BackgroundTransparency = 1.000
	Shazam.configname_33.Position = UDim2.new(0.172829017, 0, 0.025000006, 0)
	Shazam.configname_33.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_33.Font = Enum.Font.SourceSans
	Shazam.configname_33.Text = "Notification /c system"
	Shazam.configname_33.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_33.TextSize = 20.000

	Shazam.userslogs.Name = "userslogs"
	Shazam.userslogs.Parent = Shazam.Config
	Shazam.userslogs.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.userslogs.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.userslogs.BorderSizePixel = 0
	Shazam.userslogs.Position = UDim2.new(0.00290218694, 0, 25.5, 0)
	Shazam.userslogs.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_42.Parent = Shazam.userslogs

	Shazam.configpart_15.Name = "configpart"
	Shazam.configpart_15.Parent = Shazam.userslogs
	Shazam.configpart_15.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_15.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_15.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_15.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_17.Name = "value"
	Shazam.value_17.Parent = Shazam.configpart_15
	Shazam.value_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_17.BackgroundTransparency = 1.000
	Shazam.value_17.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_17.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_17.Font = Enum.Font.SourceSans
	Shazam.value_17.Text = "off"
	Shazam.value_17.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_17.TextSize = 30.000
	Shazam.value_17.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_17.TextStrokeTransparency = 0.000

	Shazam.configname_34.Name = "configname"
	Shazam.configname_34.Parent = Shazam.userslogs
	Shazam.configname_34.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_34.BackgroundTransparency = 1.000
	Shazam.configname_34.Position = UDim2.new(0.172829017, 0, 0.025000006, 0)
	Shazam.configname_34.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_34.Font = Enum.Font.SourceSans
	Shazam.configname_34.Text = "Notification :logs"
	Shazam.configname_34.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_34.TextSize = 20.000

	Shazam.usersjoined.Name = "usersjoined"
	Shazam.usersjoined.Parent = Shazam.Config
	Shazam.usersjoined.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.usersjoined.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.usersjoined.BorderSizePixel = 0
	Shazam.usersjoined.Position = UDim2.new(0.00290218694, 0, 26.7749996, 0)
	Shazam.usersjoined.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_43.Parent = Shazam.usersjoined

	Shazam.configpart_16.Name = "configpart"
	Shazam.configpart_16.Parent = Shazam.usersjoined
	Shazam.configpart_16.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.configpart_16.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.configpart_16.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.configpart_16.Size = UDim2.new(0, 50, 0, 40)

	Shazam.value_18.Name = "value"
	Shazam.value_18.Parent = Shazam.configpart_16
	Shazam.value_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_18.BackgroundTransparency = 1.000
	Shazam.value_18.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Shazam.value_18.Size = UDim2.new(0, 50, 0, 39)
	Shazam.value_18.Font = Enum.Font.SourceSans
	Shazam.value_18.Text = "off"
	Shazam.value_18.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.value_18.TextSize = 30.000
	Shazam.value_18.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.value_18.TextStrokeTransparency = 0.000

	Shazam.configname_35.Name = "configname"
	Shazam.configname_35.Parent = Shazam.usersjoined
	Shazam.configname_35.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_35.BackgroundTransparency = 1.000
	Shazam.configname_35.Position = UDim2.new(0.172829017, 0, 0.025000006, 0)
	Shazam.configname_35.Size = UDim2.new(0, 96, 0, 40)
	Shazam.configname_35.Font = Enum.Font.SourceSans
	Shazam.configname_35.Text = "Notification New Player"
	Shazam.configname_35.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.configname_35.TextSize = 20.000

	Shazam.Keys.Name = "Keys"
	Shazam.Keys.Parent = Shazam.ScrollingFrame
	Shazam.Keys.BackgroundColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.Keys.Position = UDim2.new(0.0320000015, 0, 0.00300000003, 0)
	Shazam.Keys.Size = UDim2.new(0, 364, 0, 40)
	Shazam.Keys.Visible = false
	Shazam.Keys.Font = Enum.Font.SourceSansItalic
	Shazam.Keys.Text = "Keys"
	Shazam.Keys.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Keys.TextSize = 25.000

	Shazam.UICorner_44.Parent = Shazam.Keys

	Shazam.ReOpen.Name = "ReOpen"
	Shazam.ReOpen.Parent = Shazam.Keys
	Shazam.ReOpen.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.ReOpen.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.ReOpen.BorderSizePixel = 0
	Shazam.ReOpen.Position = UDim2.new(-0.000302995963, 0, 1.29999959, 0)
	Shazam.ReOpen.Size = UDim2.new(0, 364, 0, 40)

	Shazam.UICorner_45.Parent = Shazam.ReOpen

	Shazam.keypart.Name = "keypart"
	Shazam.keypart.Parent = Shazam.ReOpen
	Shazam.keypart.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.keypart.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.keypart.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.keypart.Size = UDim2.new(0, 50, 0, 40)

	Shazam.key.Name = "key"
	Shazam.key.Parent = Shazam.keypart
	Shazam.key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.key.BackgroundTransparency = 1.000
	Shazam.key.Position = UDim2.new(-0.0116667151, 0, 0, 0)
	Shazam.key.Size = UDim2.new(0, 50, 0, 40)
	Shazam.key.Font = Enum.Font.SourceSans
	Shazam.key.Text = "r"
	Shazam.key.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.key.TextSize = 30.000
	Shazam.key.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.key.TextStrokeTransparency = 0.000

	Shazam.keyname.Name = "keyname"
	Shazam.keyname.Parent = Shazam.ReOpen
	Shazam.keyname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname.BackgroundTransparency = 1.000
	Shazam.keyname.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.keyname.Size = UDim2.new(0, 96, 0, 40)
	Shazam.keyname.Font = Enum.Font.SourceSans
	Shazam.keyname.Text = "Open GUI"
	Shazam.keyname.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname.TextSize = 20.000

	Shazam.Fly.Name = "Fly"
	Shazam.Fly.Parent = Shazam.Keys
	Shazam.Fly.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Fly.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Fly.BorderSizePixel = 0
	Shazam.Fly.Position = UDim2.new(-0.000302995963, 0, 2.59999967, 0)
	Shazam.Fly.Size = UDim2.new(0, 364, 0, 40)

	Shazam.UICorner_46.Parent = Shazam.Fly

	Shazam.keypart_2.Name = "keypart"
	Shazam.keypart_2.Parent = Shazam.Fly
	Shazam.keypart_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.keypart_2.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.keypart_2.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.keypart_2.Size = UDim2.new(0, 50, 0, 40)

	Shazam.key_2.Name = "key"
	Shazam.key_2.Parent = Shazam.keypart_2
	Shazam.key_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.key_2.BackgroundTransparency = 1.000
	Shazam.key_2.Position = UDim2.new(-0.0116667151, 0, 0, 0)
	Shazam.key_2.Size = UDim2.new(0, 50, 0, 40)
	Shazam.key_2.Font = Enum.Font.SourceSans
	Shazam.key_2.Text = "f"
	Shazam.key_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.key_2.TextSize = 30.000
	Shazam.key_2.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.key_2.TextStrokeTransparency = 0.000

	Shazam.keyname_2.Name = "keyname"
	Shazam.keyname_2.Parent = Shazam.Fly
	Shazam.keyname_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname_2.BackgroundTransparency = 1.000
	Shazam.keyname_2.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.keyname_2.Size = UDim2.new(0, 96, 0, 40)
	Shazam.keyname_2.Font = Enum.Font.SourceSans
	Shazam.keyname_2.Text = "Fly"
	Shazam.keyname_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname_2.TextSize = 20.000

	Shazam.Respawn.Name = "Respawn"
	Shazam.Respawn.Parent = Shazam.Keys
	Shazam.Respawn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Respawn.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Respawn.BorderSizePixel = 0
	Shazam.Respawn.Position = UDim2.new(0.00793876313, 0, 3.97499967, 0)
	Shazam.Respawn.Size = UDim2.new(0, 362, 0, 40)

	Shazam.UICorner_47.Parent = Shazam.Respawn

	Shazam.keypart_3.Name = "keypart"
	Shazam.keypart_3.Parent = Shazam.Respawn
	Shazam.keypart_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.keypart_3.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.keypart_3.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.keypart_3.Size = UDim2.new(0, 50, 0, 40)

	Shazam.key_3.Name = "key"
	Shazam.key_3.Parent = Shazam.keypart_3
	Shazam.key_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.key_3.BackgroundTransparency = 1.000
	Shazam.key_3.Position = UDim2.new(-0.0116667151, 0, 0, 0)
	Shazam.key_3.Size = UDim2.new(0, 50, 0, 40)
	Shazam.key_3.Font = Enum.Font.SourceSans
	Shazam.key_3.Text = "x"
	Shazam.key_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.key_3.TextSize = 30.000
	Shazam.key_3.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.key_3.TextStrokeTransparency = 0.000

	Shazam.keyname_3.Name = "keyname"
	Shazam.keyname_3.Parent = Shazam.Respawn
	Shazam.keyname_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname_3.BackgroundTransparency = 1.000
	Shazam.keyname_3.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.keyname_3.Size = UDim2.new(0, 96, 0, 40)
	Shazam.keyname_3.Font = Enum.Font.SourceSans
	Shazam.keyname_3.Text = "Respawn"
	Shazam.keyname_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname_3.TextSize = 20.000

	Shazam.Reset.Name = "Reset"
	Shazam.Reset.Parent = Shazam.Keys
	Shazam.Reset.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Reset.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Reset.BorderSizePixel = 0
	Shazam.Reset.Position = UDim2.new(0.0024442568, 0, 5.32499933, 0)
	Shazam.Reset.Size = UDim2.new(0, 364, 0, 40)

	Shazam.UICorner_48.Parent = Shazam.Reset

	Shazam.keypart_4.Name = "keypart"
	Shazam.keypart_4.Parent = Shazam.Reset
	Shazam.keypart_4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.keypart_4.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.keypart_4.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.keypart_4.Size = UDim2.new(0, 50, 0, 40)

	Shazam.key_4.Name = "key"
	Shazam.key_4.Parent = Shazam.keypart_4
	Shazam.key_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.key_4.BackgroundTransparency = 1.000
	Shazam.key_4.Position = UDim2.new(-0.0116667151, 0, 0, 0)
	Shazam.key_4.Size = UDim2.new(0, 50, 0, 40)
	Shazam.key_4.Font = Enum.Font.SourceSans
	Shazam.key_4.Text = "c"
	Shazam.key_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.key_4.TextSize = 30.000
	Shazam.key_4.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.key_4.TextStrokeTransparency = 0.000

	Shazam.keyname_4.Name = "keyname"
	Shazam.keyname_4.Parent = Shazam.Reset
	Shazam.keyname_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname_4.BackgroundTransparency = 1.000
	Shazam.keyname_4.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.keyname_4.Size = UDim2.new(0, 96, 0, 40)
	Shazam.keyname_4.Font = Enum.Font.SourceSans
	Shazam.keyname_4.Text = "Reset"
	Shazam.keyname_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname_4.TextSize = 20.000

	Shazam.Pads.Name = "Pads"
	Shazam.Pads.Parent = Shazam.Keys
	Shazam.Pads.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.Pads.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Shazam.Pads.BorderSizePixel = 0
	Shazam.Pads.Position = UDim2.new(0.00244425633, 0, 6.72499943, 0)
	Shazam.Pads.Size = UDim2.new(0, 364, 0, 40)

	Shazam.UICorner_49.Parent = Shazam.Pads

	Shazam.keypart_5.Name = "keypart"
	Shazam.keypart_5.Parent = Shazam.Pads
	Shazam.keypart_5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Shazam.keypart_5.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Shazam.keypart_5.Position = UDim2.new(0.746794939, 0, 0, 0)
	Shazam.keypart_5.Size = UDim2.new(0, 50, 0, 40)

	Shazam.key_5.Name = "key"
	Shazam.key_5.Parent = Shazam.keypart_5
	Shazam.key_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.key_5.BackgroundTransparency = 1.000
	Shazam.key_5.Position = UDim2.new(-0.0116667151, 0, 0, 0)
	Shazam.key_5.Size = UDim2.new(0, 50, 0, 40)
	Shazam.key_5.Font = Enum.Font.SourceSans
	Shazam.key_5.Text = "v"
	Shazam.key_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.key_5.TextSize = 30.000
	Shazam.key_5.TextStrokeColor3 = Color3.fromRGB(255, 205, 0)
	Shazam.key_5.TextStrokeTransparency = 0.000

	Shazam.keyname_5.Name = "keyname"
	Shazam.keyname_5.Parent = Shazam.Pads
	Shazam.keyname_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname_5.BackgroundTransparency = 1.000
	Shazam.keyname_5.Position = UDim2.new(0.051282052, 0, 0, 0)
	Shazam.keyname_5.Size = UDim2.new(0, 96, 0, 40)
	Shazam.keyname_5.Font = Enum.Font.SourceSans
	Shazam.keyname_5.Text = "Tp To Pads"
	Shazam.keyname_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.keyname_5.TextSize = 20.000

	Shazam.Config_2.Name = "Config"
	Shazam.Config_2.Parent = Shazam.Explorer
	Shazam.Config_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Shazam.Config_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Config_2.Position = UDim2.new(0.0497512817, 0, 0.678787947, 0)
	Shazam.Config_2.Size = UDim2.new(0, 123, 0, 40)
	Shazam.Config_2.AutoButtonColor = false
	Shazam.Config_2.Font = Enum.Font.SourceSans
	Shazam.Config_2.Text = "Config"
	Shazam.Config_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam.Config_2.TextSize = 18.000
	Shazam.Config_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	Shazam.UICorner_50.Parent = Shazam.Config_2

	Shazam.Title.Name = "Title"
	Shazam.Title.Parent = Shazam.Client
	Shazam.Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Shazam.Title.BorderSizePixel = 0
	Shazam.Title.Size = UDim2.new(0, 530, 0, 67)

	Shazam._Shazam.Name = "_Shazam"
	Shazam._Shazam.Parent = Shazam.Title
	Shazam._Shazam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam._Shazam.BackgroundTransparency = 1.000
	Shazam._Shazam.BorderSizePixel = 0
	Shazam._Shazam.Size = UDim2.new(0, 100, 0, 40)
	Shazam._Shazam.Font = Enum.Font.SourceSansSemibold
	Shazam._Shazam.Text = "Shazam"
	Shazam._Shazam.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam._Shazam.TextSize = 25.000
	Shazam._Shazam.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	Shazam._Close.Name = "_Close"
	Shazam._Close.Parent = Shazam.Title
	Shazam._Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shazam._Close.BackgroundTransparency = 1.000
	Shazam._Close.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Shazam._Close.Position = UDim2.new(0.909090936, 0, 0, 0)
	Shazam._Close.Size = UDim2.new(0, 50, 0, 40)
	Shazam._Close.Font = Enum.Font.SourceSans
	Shazam._Close.Text = "X"
	Shazam._Close.TextColor3 = Color3.fromRGB(255, 255, 255)
	Shazam._Close.TextSize = 30.000
	Shazam._Close.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Shazam._Close.TextStrokeTransparency = 0.000

	-- Scripts:

	local function HSGESAB_fake_script() -- Shazam.Keys_Infos._script 
		local script = Instance.new('LocalScript', Shazam.Keys_Infos)

		local visible_3 = script.Parent.Parent.ScrollingFrame.Keys
		local visible_1 = script.Parent.Parent.ScrollingFrame.Contractions
		local visible_2 = script.Parent.Parent.ScrollingFrame.Themes
		local visible_4 = script.Parent.Parent.ScrollingFrame.Config
		local object_1 = script.Parent.Parent.Keys_Infos
		local object_2 = script.Parent.Parent.Themes
		local object_3 = script.Parent.Parent.Contraction
		local object_4 = script.Parent.Parent.Config
		script.Parent.MouseButton1Click:Connect(function()
			visible_1.Visible = false
			visible_2.Visible = false
			visible_3.Visible = true
			visible_4.Visible = false
			object_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_1.BackgroundColor3 = Color3.fromRGB(255, 205, 0)
			object_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		end)
	end
	coroutine.wrap(HSGESAB_fake_script)()
	local function KRPCMTC_fake_script() -- Shazam.Themes._script 
		local script = Instance.new('LocalScript', Shazam.Themes)

		local visible_3 = script.Parent.Parent.ScrollingFrame.Keys
		local visible_1 = script.Parent.Parent.ScrollingFrame.Contractions
		local visible_2 = script.Parent.Parent.ScrollingFrame.Themes
		local visible_4 = script.Parent.Parent.ScrollingFrame.Config
		local object_1 = script.Parent.Parent.Keys_Infos
		local object_2 = script.Parent.Parent.Themes
		local object_3 = script.Parent.Parent.Contraction
		local object_4 = script.Parent.Parent.Config
		script.Parent.MouseButton1Click:Connect(function()
			visible_1.Visible = false
			visible_2.Visible = true
			visible_3.Visible = false
			visible_4.Visible = false
			object_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_2.BackgroundColor3 = Color3.fromRGB(255, 205, 0) 
			object_4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		end)
	end
	coroutine.wrap(KRPCMTC_fake_script)()
	local function KOUJVQX_fake_script() -- Shazam.Contraction._script 
		local script = Instance.new('LocalScript', Shazam.Contraction)

		local visible_3 = script.Parent.Parent.ScrollingFrame.Keys
		local visible_1 = script.Parent.Parent.ScrollingFrame.Contractions
		local visible_2 = script.Parent.Parent.ScrollingFrame.Themes
		local visible_4 = script.Parent.Parent.ScrollingFrame.Config
		local object_1 = script.Parent.Parent.Keys_Infos
		local object_2 = script.Parent.Parent.Themes
		local object_3 = script.Parent.Parent.Contraction
		local object_4 = script.Parent.Parent.Config
		script.Parent.MouseButton1Click:Connect(function()
			visible_1.Visible = true
			visible_2.Visible = false
			visible_3.Visible = false
			visible_4.Visible = false
			object_3.BackgroundColor3 = Color3.fromRGB(255, 205, 0)
			object_1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		end)
	end
	coroutine.wrap(KOUJVQX_fake_script)()
	local function HZBK_fake_script() -- Shazam.click._script 
		local script = Instance.new('LocalScript', Shazam.click)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'crash')
		end)
	end
	coroutine.wrap(HZBK_fake_script)()
	local function XFMCCJ_fake_script() -- Shazam.click_2._script 
		local script = Instance.new('LocalScript', Shazam.click_2)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'ccrash')
		end)
	end
	coroutine.wrap(XFMCCJ_fake_script)()
	local function OALFL_fake_script() -- Shazam.click_3._script 
		local script = Instance.new('LocalScript', Shazam.click_3)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'boom')
		end)
	end
	coroutine.wrap(OALFL_fake_script)()
	local function MPPXLUP_fake_script() -- Shazam.click_4._script 
		local script = Instance.new('LocalScript', Shazam.click_4)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'taxicrash')
		end)
	end
	coroutine.wrap(MPPXLUP_fake_script)()
	local function XBFWDU_fake_script() -- Shazam.click_5._script 
		local script = Instance.new('LocalScript', Shazam.click_5)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'moveobbybox')
		end)
	end
	coroutine.wrap(XBFWDU_fake_script)()
	local function TAQW_fake_script() -- Shazam.click_6._script 
		local script = Instance.new('LocalScript', Shazam.click_6)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'moveobbybricks')
		end)
	end
	coroutine.wrap(TAQW_fake_script)()
	local function DICKN_fake_script() -- Shazam.click_7._script 
		local script = Instance.new('LocalScript', Shazam.click_7)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'mrp')
		end)
	end
	coroutine.wrap(DICKN_fake_script)()
	local function FCRT_fake_script() -- Shazam.click_8._script 
		local script = Instance.new('LocalScript', Shazam.click_8)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'movepads')
		end)
	end
	coroutine.wrap(FCRT_fake_script)()
	local function JDPTYBP_fake_script() -- Shazam.click_9._script 
		local script = Instance.new('LocalScript', Shazam.click_9)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'movedividers')
		end)
	end
	coroutine.wrap(JDPTYBP_fake_script)()
	local function UBGFR_fake_script() -- Shazam.click_10._script 
		local script = Instance.new('LocalScript', Shazam.click_10)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'allpads')
		end)
	end
	coroutine.wrap(UBGFR_fake_script)()
	local function ISBG_fake_script() -- Shazam.click_11._script 
		local script = Instance.new('LocalScript', Shazam.click_11)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'reg')
		end)
	end
	coroutine.wrap(ISBG_fake_script)()
	local function OYQNENU_fake_script() -- Shazam.click_12._script 
		local script = Instance.new('LocalScript', Shazam.click_12)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'theme1')
		end)
	end
	coroutine.wrap(OYQNENU_fake_script)()
	local function HXOUPOY_fake_script() -- Shazam.click_13._script 
		local script = Instance.new('LocalScript', Shazam.click_13)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'theme2')
		end)
	end
	coroutine.wrap(HXOUPOY_fake_script)()
	local function DYIKWY_fake_script() -- Shazam.click_14._script 
		local script = Instance.new('LocalScript', Shazam.click_14)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'theme3')
		end)
	end
	coroutine.wrap(DYIKWY_fake_script)()
	local function LUGTGH_fake_script() -- Shazam.click_15._script 
		local script = Instance.new('LocalScript', Shazam.click_15)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'theme4')
		end)
	end
	coroutine.wrap(LUGTGH_fake_script)()
	local function ZLSI_fake_script() -- Shazam.click_16._script 
		local script = Instance.new('LocalScript', Shazam.click_16)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'theme5')
		end)
	end
	coroutine.wrap(ZLSI_fake_script)()
	local function HVIEY_fake_script() -- Shazam.click_17._script 
		local script = Instance.new('LocalScript', Shazam.click_17)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'theme6')
		end)
	end
	coroutine.wrap(HVIEY_fake_script)()
	local function AMGWZKR_fake_script() -- Shazam.click_18._script 
		local script = Instance.new('LocalScript', Shazam.click_18)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix..'theme7')
		end)
	end
	coroutine.wrap(AMGWZKR_fake_script)()
	local function SSES_fake_script() -- Shazam.value_2._script 
		local script = Instance.new('LocalScript', Shazam.value_2)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				antiabusegears = true
			else
				script.Parent.Text = "off"
				antiabusegears = false
			end
		end)
	end
	coroutine.wrap(SSES_fake_script)()
	local function LIOTLJL_fake_script() -- Shazam.prefix.prefix_script 
		local script = Instance.new('LocalScript', Shazam.prefix)

		local prefixpart = script.Parent.prefixpart.prefix
		local RunService = game:GetService("RunService")
		RunService.RenderStepped:Connect(function()
			prefix = prefixpart.Text
		end)





	end
	coroutine.wrap(LIOTLJL_fake_script)()
	local function VHYIRZR_fake_script() -- Shazam.value_3._script 
		local script = Instance.new('LocalScript', Shazam.value_3)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				antigrayscale = true
			else
				script.Parent.Text = "off"
				antigrayscale = false
			end
		end)
	end
	coroutine.wrap(VHYIRZR_fake_script)()
	local function MRNE_fake_script() -- Shazam.value_4._script 
		local script = Instance.new('LocalScript', Shazam.value_4)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				antikill = true
			else
				script.Parent.Text = "off"
				antikill = false
			end
		end)
	end
	coroutine.wrap(MRNE_fake_script)()
	local function CRXJDZ_fake_script() -- Shazam.value_5._script 
		local script = Instance.new('LocalScript', Shazam.value_5)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				antijail = true
			else
				script.Parent.Text = "off"
				antijail = false
			end
		end)
	end
	coroutine.wrap(CRXJDZ_fake_script)()
	local function GWAEUUA_fake_script() -- Shazam.value_6._script 
		local script = Instance.new('LocalScript', Shazam.value_6)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				anticrashnotperm = true
			else
				script.Parent.Text = "off"
				anticrashnotperm = false
			end
		end)
	end
	coroutine.wrap(GWAEUUA_fake_script)()
	local function ZGEFAYD_fake_script() -- Shazam.value_7._script 
		local script = Instance.new('LocalScript', Shazam.value_7)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				anticrashVG = true
			else
				script.Parent.Text = "off"
				anticrashVG = false
			end
		end)
	end
	coroutine.wrap(ZGEFAYD_fake_script)()
	local function JSSXMD_fake_script() -- Shazam.value_8._script 
		local script = Instance.new('LocalScript', Shazam.value_8)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				antipad = true
			else
				script.Parent.Text = "off"
				antipad = false
			end
		end)
	end
	coroutine.wrap(JSSXMD_fake_script)()
	local function ATZWHI_fake_script() -- Shazam.musicid.music_script 
		local script = Instance.new('LocalScript', Shazam.musicid)

		local music = script.Parent.box.value
		local RunService = game:GetService("RunService")
		RunService.RenderStepped:Connect(function()
			mymusiconly_ID = music.Text
		end)





	end
	coroutine.wrap(ATZWHI_fake_script)()
	local function KIFEVQ_fake_script() -- Shazam.value_10._script 
		local script = Instance.new('LocalScript', Shazam.value_10)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				mymusiconly = true
			else
				script.Parent.Text = "off"
				mymusiconly = false
			end
		end)
	end
	coroutine.wrap(KIFEVQ_fake_script)()
	local function QIAB_fake_script() -- Shazam.value_11._script 
		local script = Instance.new('LocalScript', Shazam.value_11)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				antivoid = true
			else
				script.Parent.Text = "off"
				antivoid = false
			end
		end)
	end
	coroutine.wrap(QIAB_fake_script)()
	local function ZLAYTQ_fake_script() -- Shazam.value_12._script 
		local script = Instance.new('LocalScript', Shazam.value_12)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				antiattach = true
			else
				script.Parent.Text = "off"
				antiattach = false
			end
		end)
	end
	coroutine.wrap(ZLAYTQ_fake_script)()
	local function LHWQM_fake_script() -- Shazam.value_13._script 
		local script = Instance.new('LocalScript', Shazam.value_13)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				anti2pads = true
			else
				script.Parent.Text = "off"
				anti2pads = false
			end
		end)
	end
	coroutine.wrap(LHWQM_fake_script)()
	local function LMGX_fake_script() -- Shazam.value_14._script 
		local script = Instance.new('LocalScript', Shazam.value_14)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				allplayersperm = true
			else
				script.Parent.Text = "off"
				allplayersperm = false
			end
		end)
	end
	coroutine.wrap(LMGX_fake_script)()
	local function EAIOWEP_fake_script() -- Shazam.value_15._script 
		local script = Instance.new('LocalScript', Shazam.value_15)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				allplayerskicked = true
			else
				script.Parent.Text = "off"
				allplayerskicked = false
			end
		end)
	end
	coroutine.wrap(EAIOWEP_fake_script)()
	local function PVERIN_fake_script() -- Shazam.value_16._script 
		local script = Instance.new('LocalScript', Shazam.value_16)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				userscsystem = true
			else
				script.Parent.Text = "off"
				userscsystem = false
			end
		end)
	end
	coroutine.wrap(PVERIN_fake_script)()
	local function QWANP_fake_script() -- Shazam.value_17._script 
		local script = Instance.new('LocalScript', Shazam.value_17)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				userslogs = true
			else
				script.Parent.Text = "off"
				userslogs = false
			end
		end)
	end
	coroutine.wrap(QWANP_fake_script)()
	local function WAJWGEM_fake_script() -- Shazam.value_18._script 
		local script = Instance.new('LocalScript', Shazam.value_18)

		script.Parent.MouseButton1Click:Connect(function()
			if script.Parent.Text == "off" then
				script.Parent.Text = "on"
				usersjoined = true
			else
				script.Parent.Text = "off"
				usersjoined = false
			end
		end)
	end
	coroutine.wrap(WAJWGEM_fake_script)()
	local function UEMIQ_fake_script() -- Shazam.Keys.keys_script 
		local script = Instance.new('LocalScript', Shazam.Keys)
		local mousee = game.Players.LocalPlayer:GetMouse()
		local shazam = script.Parent.Parent.Parent.Parent.Parent.Client
		local RunService = game:GetService("RunService")
		local opengui_key = script.Parent.ReOpen.keypart.key
		local fly_key = script.Parent.Fly.keypart.key
		local respawn_key = script.Parent.Respawn.keypart.key
		local reset_key = script.Parent.Reset.keypart.key
		local tppads_key = script.Parent.Pads.keypart.key
		RunService.RenderStepped:Connect(function()
			local opengui_key = script.Parent.ReOpen.keypart.key
			local fly_key = script.Parent.Fly.keypart.key
			local respawn_key = script.Parent.Respawn.keypart.key
			local reset_key = script.Parent.Reset.keypart.key
			local tppads_key = script.Parent.Pads.keypart.key
		end)
		mousee.KeyDown:connect(function(key)
			if key:lower() == opengui_key.Text then
				shazam.Visible = true
				script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.25, 0, 0.119, 0))
			end
			if key:lower() == fly_key.Text then
				game.Players:Chat("fly me")
			end
			if key:lower() == respawn_key.Text then
				game.Players.LocalPlayer.Character:Destroy()
			end
			if key:lower() == reset_key.Text then
				game.Players:Chat("reset me")
			end
			if key:lower() == tppads_key.Text then
				game.Players:Chat(prefix.."pads")
			end
			if key:lower() == Enum.KeyCode.Return then
				local command = script.Parent.Parent.Parent.Contraction.Silent.value.Text
				game.Players:Chat(command)
			end
		end)
	end
	coroutine.wrap(UEMIQ_fake_script)()
	local function XOKN_fake_script() -- Shazam.Config_2._script 
		local script = Instance.new('LocalScript', Shazam.Config_2)

		local visible_3 = script.Parent.Parent.ScrollingFrame.Keys
		local visible_1 = script.Parent.Parent.ScrollingFrame.Contractions
		local visible_2 = script.Parent.Parent.ScrollingFrame.Themes
		local visible_4 = script.Parent.Parent.ScrollingFrame.Config
		local object_1 = script.Parent.Parent.Keys_Infos
		local object_2 = script.Parent.Parent.Themes
		local object_3 = script.Parent.Parent.Contraction
		local object_4 = script.Parent.Parent.Config
		script.Parent.MouseButton1Click:Connect(function()
			visible_1.Visible = false
			visible_2.Visible = false
			visible_3.Visible = false
			visible_4.Visible = true
			object_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			object_4.BackgroundColor3 = Color3.fromRGB(255, 205, 0)
		end)
	end
	coroutine.wrap(XOKN_fake_script)()
	local function XNQOCCF_fake_script() -- Shazam._Close._script 
		local script = Instance.new('LocalScript', Shazam._Close)

		local client = script.Parent.Parent.Parent.Parent.Client
		script.Parent.MouseButton1Click:Connect(function()
			script.Parent.Parent.Parent:TweenPosition(UDim2.new(0.25, 0, 1, 0))
			repeat wait() until script.Parent.Parent.Parent:TweenPosition(UDim2.new(0.25, 0, 1, 0))
			client.Visible = false
		end)
	end
	coroutine.wrap(XNQOCCF_fake_script)()
	local function YDEDDTQ_fake_script() -- Shazam.Client.LocalScript 
		local script = Instance.new('LocalScript', Shazam.Client)

		local client = script.Parent.Parent.Client
		client.Draggable = true
	end
	coroutine.wrap(YDEDDTQ_fake_script)()
	local function YCEA_fake_script() -- Shazam.Shazam.LocalScript 
		local script = Instance.new('LocalScript', Shazam.Shazam)

		script.Parent.ResetOnSpawn = false
	end
	coroutine.wrap(YCEA_fake_script)()

end

--------------------------------------

spawn(function()
	while true do
		wait(5)
		for i, player in pairs(game:GetService("Players"):GetPlayers()) do
			if player.Character:FindFirstChild("VampireVanquisher") then
				if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
					notif("Server crashed by vampiretool (Maybe?)")
				end
			end
		end
	end
end)

Spawn(function()
	while true do
		wait(0.05)
		if antigrayscale == true then
			if game.Workspace.CurrentCamera:FindFirstChild("GrayScale") then
				game.Workspace.CurrentCamera:FindFirstChild("GrayScale"):Destroy()
			end
		end

		if antikill == true then
			for q,player in pairs(game.Players:GetChildren()) do
				for i,v in pairs(Ignore) do
					if player.Name == Ignore[i] then
						if player.Character.Humanoid.Health == 0 then
							game.Players:Chat("reset "..Ignore[i])
						end
					end
				end
			end
			if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
				game.Players:Chat("reset me")
			end
		end

		if antijail == true then
			for i,plr in pairs(Ignore) do
				if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.."'s jail") then
					game.Players:Chat("unjail "..string.sub(plr,0,4):lower())
				end
			end
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name.."'s jail") then
				game.Players:Chat("unjail me")
			end
		end

		if mymusiconly == true then
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				if game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..mymusiconly_ID then
				else
					game.Players:Chat("music "..mymusiconly_ID)
				end
			end
			if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				game.Players:Chat("music "..mymusiconly_ID)
			end
		end
	end
end)

function start(plr)
	plr.Chatted:Connect(function(msg)
		Spawn(function()
			for i,player in pairs(Admin) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == ":" then
						command = ""
						game.Players:Chat("pm "..plr.Name.." your command Contains a : at the start of it, please dont.")
					end
					if string.sub(command, 1, 1) == "/" then
						command = ""
					end
					if string.sub(command, 1, 1) == prefix then
						command = ""
					end

					if string.sub(command, 1, 5) == "music" then
						local MUSIC = string.sub(command, 7)
						game.Players:Chat("music "..MUSIC)
					elseif string.sub(command, 1, 2) == "m " then
						local message = string.sub(command, 3)
						game.Players:Chat('m '..plr.Name..': '..message)
					elseif string.sub(command, 1, 7) == "size me" then
						local NUMBER = string.sub(command, 9)
						game.Players:Chat("size "..plr.Name.." "..NUMBER)
					elseif string.sub(command, 1, 12) == "jumppower me" then
						local JPP = string.sub(command, 14)
						game.Players:Chat("jumppower "..plr.Name.." "..JPP)
					elseif string.sub(command, 1, 7) == "name me" then
						local NAME = string.sub(command, 9)
						game.Players:Chat("name "..plr.Name.." "..NAME)
					elseif string.sub(command, 1, 7) == "message" then
						local message = string.sub(command, 9)
						game.Players:Chat('message '..plr.Name..': '..message)
					elseif string.sub(command, 1, 3) == "pm " then
						game.Players:Chat("pm "..plr.Name.." You cant use 'privatemessage' sorry!")
					elseif string.sub(command, 1, 5) == "hint " then
						local message = string.sub(command, 6)
						game.Players:Chat('h '..plr.Name..': '..message)
					elseif string.sub(command, 1, 2) == "h " then
						local message = string.sub(command, 3)
						game.Players:Chat('h '..plr.Name..': '..message)
					elseif string.sub(command, 1, 4) == "logs" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'logs' sorry!")
					elseif string.sub(command, 1, 4) == "cmds" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'commands' sorry!")
					elseif string.sub(command, 1, 8) == "commands" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'commands' sorry!")
					elseif string.sub(command, 1, 9) == "musiclist" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'musiclist' sorry!")
					elseif string.sub(command, 1, 11) == "packagelist" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'packagelist' sorry!")
					else
						game.Players:Chat(command)
					end
				end
			end
		end)
		Spawn(function()
			for i,player in pairs(Whitelist) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == prefix then
						if string.sub(command, 2, 5) == "move" then
							game.Players:Chat("pm "..plr.Name.." Cant move the core player sorry!")
						else
							game.Players:Chat(command)
						end
					end
				end
			end
		end)
		Spawn(function()
			if string.sub(msg:lower(),0,8) == "unpunish" or string.sub(msg:lower(),0,9) == ":unpunish" or string.sub(msg:lower(),0,3) == "sit" or string.sub(msg:lower(),0,4) == ":sit" or string.sub(msg:lower(),0,4) == "stun" or string.sub(msg:lower(),0,5) == ":stun" then
				if antiattach == true then
					local killoff = true
					for i,ignore in pairs(Ignore) do
						if ignore[i] == plr.Name then
							killoff = false
						end
					end
					if plr.Name == game.Players.LocalPlayer.Name then
						killoff = false
					end
					if killoff == true then
						game.Players:Chat("reset "..plr.Name)
					end
				end
			end
		end)
		Spawn(function()
			if spamdetect == true then
				if game:GetService("Workspace").Terrain["_Game"].Admin.Regen then 
					spamdetect = false
					wait(0.25)
					local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					cf.CFrame = Admin_Folder.Regen.CFrame
					notif('Regen Pad Has Been Found !')
				end
			end
		end)
		Spawn(function()
			if Superlogs == true then
				if string.sub(msg,1,5) == "euros" then
					msg = ""
				elseif string.sub(msg,1,8) == "pesos me" then
					msg = ""
				elseif string.sub(msg,1,6) == "sec me" then
					msg = ""
				else
					print("["..plr.Name.."]: "..msg)
				end
			end
			if string.sub(msg,1,6) == "handes" then
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
					Text = "ShortcutChat ["..plr.Name..getTag().."]: "..string.sub(msg,8);
					TextStrokeTransparency = 0.75;
					Font = Enum.Font.SourceSansBold;
					Color = Color3.new(128,0,0);
					FontSize = Enum.FontSize.Size18;
				})
			end
			if string.sub(msg,1,5) == "euros" then
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
					Text = "ShazamChat ["..plr.Name.."]: "..string.sub(msg,7);
					Font = Enum.Font.Arial;
					Color = Color3.new(0.984314, 1, 0.0235294);
					FontSize = Enum.FontSize.Size18;
				})
			end
			if string.sub(msg,1,8) == "pesos me" then
				local player = plr.Name
				if player == game.Players.LocalPlayer.Name then
					local nothing = "_"
				else
					table.insert(ShazamUsers, player)
					notif(player..' using shazam')
				end
				game.Players:Chat('sec me')
			end
			if string.sub(msg,1,6) == "sec me" then
				local player = plr.Name
				table.insert(ShazamUsers, player)
				notif(player..' using shazam')
			end
		end)
		
		if string.sub(msg:lower(), 0, 9) == "/c system" then
			local player = plr.Name
			if userscsystem == true then
				if player == game.Players.LocalPlayer.Name then
					notif("You can use /c system !")
				else
					notif(player.." using /c system !")
				end
			end
		end
		if string.sub(msg:lower(), 0, 4) == "logs" or string.sub(msg:lower(), 0, 5) == ":logs" or string.sub(msg:lower(), 0, 6) == "::logs" then
			local player = plr.Name
			if userscsystem == true then
				if player == game.Players.LocalPlayer.Name then
					notif("logs detected from you.")
				else
					notif(player.." using logs")
				end
			end
		end
	end)
end

function getTag()
	local Tag = game.Players.LocalPlayer.UserId
	Tag = string.gsub(Tag, "0", "9")
	Tag = string.gsub(Tag, "1", "8")
	Tag = string.gsub(Tag, "2", "7")
	Tag = string.gsub(Tag, "3", "6")
	Tag = string.gsub(Tag, "4", "5")
	Tag = string.gsub(Tag, "5", "4")
	Tag = string.gsub(Tag, "6", "3")
	Tag = string.gsub(Tag, "7", "2")
	Tag = string.gsub(Tag, "8", "1")
	Tag = string.gsub(Tag, "9", "0")
	return string.sub(Tag,0,4)
end

-- Toki Toki
Pad_Ban = {} -- People who are banned from pads
Whitelist = {} -- Whitelisted players
Admin = {} -- People you gave admin for the game
Kick = {}

Ignore = {game.Players.LocalPlayer.Name} -- Ignored from some antis (Antiattch)

-- Dont edit
-- Dont edit
ShazamUsers = {}
-- Database stuff
-- Database stuff


MPS_Users = {}
MPS = {}
MPS_Max = {}


drinks = {"Coke","Milk","Sprit","Cognac","Coffee","Chocolate milk","Hot Chocolate","Ice cream"}

for i,v in pairs(game.Players:GetChildren()) do
	start(v)
end

function say(msg)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

Spawn(function()
	while true do
		for i,v in pairs(MPS_Users) do
			if MPS[i] >= MPS_Max[i] then
				MPS_Max[i] = MPS[i]
				MPS[i] = 0
			end
		end
		wait(1)
	end
end)

Spawn(function()
	while true do
		wait(0.003)
		local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		if antivoid == true then
			if CF.Y < 0 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(CF.X, 3, CF.Z))
			end
		end
	end
end) -- Spawn 2 position CFrame.new(Vector3.new(-41, 3.7, -15.589996337891)) -28.6829948, 8.2299995, 66.4913253

local CancelTeleport = false

Spawn(function()
	while true do
		for i,player in pairs(Pad_Ban) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == player.."'s admin" then
					game.Players:Chat("respawn "..player)
					game.Players:Chat("h Sorry "..player.." your banned from pads")
					regen()
					game.Players:Chat("speed "..player.." 0.1")
				end
			end
		end
		if anti2pads == true then
			for i,v in pairs(game.Players:GetChildren()) do
				local times = 0
				for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
					if pad.Name == v.Name.."'s admin" then
						times = times + 1
					end
				end
				if times >= 2 then
					game.Players:Chat("fling "..v.Name)
					regen()
				end
			end
		end
		wait(0.25)
	end
end)
--

Spawn(function()
	game.Players:Chat(prefix.."pa")
	Guiscript()
	shazamnotif('For Reopen Gui, Press R')
	if antipad == true then
		game.Players:Chat(prefix.."mrp")
	end
	shazamdatabase()
end)


RunService.RenderStepped:Connect(function()
	if anticrashnotperm == true then	
		local LocalPlayer = game.Players.LocalPlayer
		local PlrChar = workspace:WaitForChild(LocalPlayer.Name)
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
			firetouchinterest(PlrChar["Left Leg"], v.Head, 0)
			firetouchinterest(PlrChar["Left Leg"], v.Head, 1)
			wait()
		end
	end
	for i,player in pairs(Kick) do
		if game.Players:FindFirstChild(player) then
			if game.Workspace[player]:WaitForChild('Torso') then
				game.Players:Chat('setgrav '..player..' inf')
			end
		else
			local _4 = "_4" 
		end
	end
end)

--[[
.▄▄ ·  ▄ .▄ ▄▄▄· ·▄▄▄▄• ▄▄▄· • ▌ ▄ ·. 
▐█ ▀. ██▪▐█▐█ ▀█ ▪▀·.█▌▐█ ▀█ ·██ ▐███▪
▄▀▀▀█▄██▀▐█▄█▀▀█ ▄█▀▀▀•▄█▀▀█ ▐█ ▌▐▌▐█·
▐█▄▪▐███▌▐▀▐█ ▪▐▌█▌▪▄█▀▐█ ▪▐▌██ ██▌▐█▌
 ▀▀▀▀ ▀▀▀ · ▀  ▀ ·▀▀▀ • ▀  ▀ ▀▀  █▪▀▀▀


Credits : credits to Tokio (tokio#1462) / credits to Emmy (Emmy#0377) / credits to Damix ( Damix2131 on Roblox )
]]--
