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

local antiabusegears = true -- If someone have specific abuse gears, the inventory will be reseted

local usersjoined = true -- You are Notified from all users joining the game.
local userscsystem = true -- You Are Notified From all users using "/c system"
local userslogs = false -- You Are Notified From All users using logs
local allplayersperm = false -- When Someone Join, He's Admin By You.

local AllowMessages = true  
local allowads = true -- (Clearlogs, Anticrash msg, etc)

local antigrayscale = true -- Anti DIO Stop Time
local antikill = false -- Anti Kill
local antijail = false -- Anti Jail

local anticrashnotperm = true -- Anticrash Not Perm Bot. ( Perm Crasher not working, Need Regen Buttons )
local anticrashVG = true -- Anti Vampire Crash 
local antipad = false

local mymusiconly = false -- Anti Music From Others
local mymusiconly_ID = 0 -- Id Of Music

local Superlogs = true -- Every chat /w /t /c /e etc will print into console
local padsEnforcement = false -- Protection for not users using 2 admin pads
local antiattach = false -- Anti Users Attaching to something
local antivoid = true -- Anti Fall In Void


























































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

Players.LocalPlayer.Chatted:Connect(function(msg)
	CancelTeleport = true
	local amount = nil

	if string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
		notif("Cmds Printed In Console")
		local str = [[
		.▄▄ ·  ▄ .▄ ▄▄▄· ·▄▄▄▄• ▄▄▄· • ▌ ▄ ·. 
		▐█ ▀. ██▪▐█▐█ ▀█ ▪▀·.█▌▐█ ▀█ ·██ ▐███▪
		▄▀▀▀█▄██▀▐█▄█▀▀█ ▄█▀▀▀•▄█▀▀█ ▐█ ▌▐▌▐█·
		▐█▄▪▐███▌▐▀▐█ ▪▐▌█▌▪▄█▀▐█ ▪▐▌██ ██▌▐█▌
		 ▀▀▀▀ ▀▀▀ · ▀  ▀ ·▀▀▀ • ▀  ▀ ▀▀  █▪▀▀▀
		]]
		print(prefix.."cmds")
		print("--------------")
		print(prefix.."rrej")
		print(prefix.."rej")
		print(prefix.."rjg")
		print(prefix.."srj")
		print(prefix.."sch")
		print("----------------")
		print(prefix.."color all original")
		print(prefix.."color all random")
		print("----------------")
		print(prefix.."creator")
		print("----------------")
		print(prefix.."ccrash")
		print(prefix.."boom")
		print(prefix.."fastboom")
		print(prefix.."crash")
		print("----------------")
		print(prefix.."padban")
		print(prefix.."unpadban")
		print("----------------")
		print(prefix.."kick")
		print(prefix.."unkick")
		print("----------------")
		print(prefix.."cdadmin")
		print(prefix.."uncdadmin")
		print("----------------")
		print(prefix.."pa")
		print(prefix.."nonpa")
		print(prefix.."removeperm")
		print(prefix.."createperm")
		print("----------------")
		print(prefix.."ufo")
		print(prefix.."smi")	
		print(prefix.."fixbp")
		print(prefix.."infjump")
		print(prefix.."attach")
		print(prefix.."stop")
		print(prefix.."clicktp")
		print(prefix.."clearlogs")
		print(prefix.."super")
		print(prefix.."spam")
		print(prefix.."pads")
		print(prefix.."skydive")
		print(prefix.."house")
		print(prefix.."spawn")
		print(prefix.."reg")
		print(prefix.."por")
		print("----------------")
		print(prefix.."bind respawn")
		print(prefix.."bind reset")
		print(prefix.."bind forcefield")
		print(prefix.."bind fly")
		print(prefix.."bind teleport")
		print(prefix.."bind pads")
		print(prefix.."bind attachto")
		print("----------------")
		print(prefix.."trap")
		print(prefix.."ds")
		print(prefix.."lua")
		print(prefix.."moveobbybricks")
		print(prefix.."movebuildingbricks")
		print(prefix.."moveadmindividers")
		print(prefix.."createplace")
		print(prefix.."movehouse")
		print(prefix.."movepads")
		print(prefix.."mrp")
		print(prefix.."movebaseplate")
		print(prefix.."setspawnpoints")
		print(prefix.."findresetshortcut")
		print(prefix.."findmyreset")
		print(prefix.."tptoresetpad")
		print(prefix.."reset")
		print("----------------")
		print(prefix.."detect")
		print(prefix.."detectregen")
		print("----------------")
		print(prefix.."nok")
		print(prefix.."bok")
		print("----------------")
		print(prefix.."disablerc")
		print("----------------")
		print(prefix.."ignore")
		print(prefix.."prefix..")
		print(prefix.."unignore")
		print("----------------")
		print(prefix.."whitelist")
		print(prefix.."unwhitelist")
		print("----------------")
		print(prefix.."cdadmin")
		print(prefix.."uncdadmin")
		print("----------------")
		print(prefix.."allpads")
		print("----------------")
		print(prefix.."set jp")
		print("----------------")
		print(prefix.."rocket")
		print(prefix.."rrocket")
		print("----------------")
		print(prefix.."disguise")
		print(prefix.."noob")
		print(prefix.."rat")
		print(prefix.."titan")
		print(prefix.."tnt")
		print("----------------")
		print(prefix.."theme1")
		print(prefix.."theme2")
		print(prefix.."theme3")
		print(prefix.."theme4")
		print(prefix.."theme5")
		print(prefix.."theme6")
		print(prefix.."theme7")
		print("----------------")
		print(prefix.."antishut")
		print("----------------")
		print(prefix.."mesk")
		print(prefix.."amesk")
		print(prefix.."pmesk")
		print("----------------")
		print(prefix.."playbackspeed")
		print(prefix.."volume")
		print("----------------")
		print(prefix.."anticrashvg")
		print(prefix.."anticrashnp")
		print(prefix.."anticrashl2")
		print(prefix.."antijailgearban")
		print(prefix.."antigrayscale")
		print(prefix.."antikill")
		print(prefix.."antijail")
		print(prefix.."antilogs")
		print(prefix.."mymusiconly")
		print(prefix.."mymusicid")
		print(prefix.."superlogs")
		print(prefix.."padsenforcement")
		print(prefix.."everyonecommands")
		print(prefix.."antiattach")
		print(prefix.."antivoid")
		print("----------------")
		print(prefix.."trybypassantilogs")
		print("----------------")
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

	if string.sub(msg:lower(), 0, 10) == prefix.."ccrash" then
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

	if string.sub(msg:lower(), 0, 3) == prefix.."pa" then
		PadCheck = true
		GetPad(msg)
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."nonpa" then
		PadCheck = false
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."createperm" then
		allplayersperm = true
		notif('All Players Will be CdAdmin')
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."removeperm" then
		allplayersperm = false
		notif('All Players Will Not Be CdAdmin')
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
		if allowads == true then
			game.Players:Chat("unff all")
		end
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

	if string.sub(msg:lower(), 0, 10) == prefix.."pads" then
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
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("gg/TMUsCcYK9d","All")
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

	if string.sub(msg:lower(), 0, 18) == prefix.."moveadmindividers" then
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
		notif("Click 1 RC will now be disabled for EVERYONE!")
		game.Players:Chat("gear me 0000000000000000004842207161")
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

	if string.sub(msg:lower(), 0, 12) == prefix.."anticrashvg" then
		anticrashVG = not anticrashVG
		notif("anticrashVG is now set to "..tostring(anticrashVG))
	end

	if string.sub(msg:lower(), 0, 12) == prefix.."anticrashnp" then
		anticrashnotperm = not anticrashnotperm
		notif("anticrashNotPerm is now set to "..tostring(anticrashnotperm))
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."antigrayscale" then
		antigrayscale = not antigrayscale
		notif("antigrayscale is now set to "..tostring(antigrayscale))
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."antikill" then
		antikill = not antikill
		notif("antikill is now set to "..tostring(antikill))
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."antijail" then
		antijail = not antijail
		notif("antijail is now set to "..tostring(antijail))
	end

	if string.sub(msg:lower(), 0, 12) == prefix.."mymusiconly" then
		mymusiconly = not mymusiconly
		notif("mymusiconly is now set to "..tostring(mymusiconly))
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."mymusicid" then
		mymusiconly_ID = tonumber(string.sub(msg:lower(), 15))
		notif("mymusiconly_id is now set to "..tostring(mymusiconly_ID))
		mymusiconly = true
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."superlogs" then
		Superlogs = not Superlogs
		notif("Superlogs is now set to "..tostring(Superlogs))
	end

	if string.sub(msg:lower(), 0, 16) == prefix.."padsenforcement" then
		padsEnforcement = not padsEnforcement
		notif("padsEnforcement is now set to "..tostring(padsEnforcement))
	end

	if string.sub(msg:lower(), 0, 18) == prefix.."antiattach" then
		antiattach = not antiattach
		notif("antiattach is now set to "..tostring(antiattach))
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."antivoid" then
		antivoid = not antivoid
		notif("antivoid is now set to "..tostring(antivoid))
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
	if usersjoined == true then
		notif(plr.Name.." has joined the game!")
	end
	if allplayersperm == true then
		game.Players:Chat(prefix..'cdadmin '..plr.Name)
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
						if AllowMessages == true then
							if allowads == true then
								game.Players:Chat("h "..plrname.." failed to crash the server")
							else
								game.Players:Chat("h "..plrname.." failed to crash the server")
							end
						end
						wait(0.28)
					end
					if player.Character:FindFirstChild("HumanoidRootPart") then
						if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
							local plrname = player.Name
							game.Players:Chat(("reset "..plrname))
							game.Players:Chat(("unclone "..plrname))
							if AllowMessages == true then
								if allowads == true then
									game.Players:Chat("h "..plrname.." failed to crash the server ")
								else
									game.Players:Chat("h "..plrname.." failed to crash the server")
								end
							end
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
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("h Cant remove my gears xd. ")
					else
						game.Players:Chat("h Cant remove my gears xd.")
					end
				end
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

	local Shazam = Instance.new("ScreenGui")
	local Client = Instance.new("Frame")
	local Explorer = Instance.new("Frame")
	local Keys_Infos = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local Themes = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local Contraction = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local _TF = Instance.new("Frame")
	local _1 = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local _2 = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local _3 = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local _4 = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local _5 = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local _6 = Instance.new("TextButton")
	local UICorner_9 = Instance.new("UICorner")
	local _7 = Instance.new("TextButton")
	local UICorner_10 = Instance.new("UICorner")
	local _CF = Instance.new("Frame")
	local Fly = Instance.new("TextLabel")
	local Reset = Instance.new("TextLabel")
	local Respawn = Instance.new("TextLabel")
	local Pads = Instance.new("TextLabel")
	local _KIF = Instance.new("Frame")
	local _crash = Instance.new("TextButton")
	local UICorner_11 = Instance.new("UICorner")
	local _boom = Instance.new("TextButton")
	local UICorner_12 = Instance.new("UICorner")
	local _FastBoom = Instance.new("TextButton")
	local UICorner_13 = Instance.new("UICorner")
	local _fake = Instance.new("TextButton")
	local UICorner_14 = Instance.new("UICorner")
	local _C = Instance.new("TextLabel")
	local _M = Instance.new("TextLabel")
	local _Box = Instance.new("TextButton")
	local UICorner_15 = Instance.new("UICorner")
	local _lines = Instance.new("TextButton")
	local UICorner_16 = Instance.new("UICorner")
	local silent = Instance.new("TextBox")
	local _enter = Instance.new("TextButton")
	local UICorner_17 = Instance.new("UICorner")
	local _S = Instance.new("TextLabel")
	local _Pads = Instance.new("TextButton")
	local UICorner_18 = Instance.new("UICorner")
	local _Regen = Instance.new("TextButton")
	local UICorner_19 = Instance.new("UICorner")
	local Title = Instance.new("Frame")
	local _Shazam = Instance.new("TextLabel")
	local _Close = Instance.new("TextButton")

	--Properties:

	Shazam.Name = "Shazam"
	Shazam.Parent = game.CoreGui
	Shazam.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Client.Name = "Client"
	Client.Parent = Shazam
	Client.Active = true
	Client.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Client.BackgroundTransparency = 0.650
	Client.Position = UDim2.new(0.250207126, 0, 0.153364629, 0)
	Client.Selectable = true
	Client.Size = UDim2.new(0, 550, 0, 200)

	Explorer.Name = "Explorer"
	Explorer.Parent = Client
	Explorer.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
	Explorer.BorderColor3 = Color3.fromRGB(37, 255, 55)
	Explorer.BorderSizePixel = 0
	Explorer.Position = UDim2.new(0, 0, 0.200000003, 0)
	Explorer.Size = UDim2.new(0, 100, 0, 160)

	Keys_Infos.Name = "Keys_Infos"
	Keys_Infos.Parent = Explorer
	Keys_Infos.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Keys_Infos.Position = UDim2.new(0.150000006, 0, 0.668749988, 0)
	Keys_Infos.Size = UDim2.new(0, 70, 0, 30)
	Keys_Infos.Font = Enum.Font.SourceSans
	Keys_Infos.Text = "Keys Infos"
	Keys_Infos.TextColor3 = Color3.fromRGB(0, 0, 0)
	Keys_Infos.TextSize = 14.000
	Keys_Infos.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Keys_Infos.TextStrokeTransparency = 0.000

	UICorner.Parent = Keys_Infos

	Themes.Name = "Themes"
	Themes.Parent = Explorer
	Themes.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Themes.Position = UDim2.new(0.150000006, 0, 0.368750006, 0)
	Themes.Size = UDim2.new(0, 70, 0, 30)
	Themes.Font = Enum.Font.SourceSans
	Themes.Text = "Themes"
	Themes.TextColor3 = Color3.fromRGB(0, 0, 0)
	Themes.TextSize = 14.000
	Themes.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Themes.TextStrokeTransparency = 0.000

	UICorner_2.Parent = Themes

	Contraction.Name = "Contraction"
	Contraction.Parent = Explorer
	Contraction.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Contraction.Position = UDim2.new(0.150000006, 0, 0.0687500015, 0)
	Contraction.Size = UDim2.new(0, 70, 0, 30)
	Contraction.Font = Enum.Font.SourceSans
	Contraction.Text = "Contraction"
	Contraction.TextColor3 = Color3.fromRGB(0, 0, 0)
	Contraction.TextSize = 14.000
	Contraction.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Contraction.TextStrokeTransparency = 0.000

	UICorner_3.Parent = Contraction

	_TF.Name = "_TF"
	_TF.Parent = Explorer
	_TF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_TF.BackgroundTransparency = 1.000
	_TF.Position = UDim2.new(-0.5, 0, -0.25, 0)
	_TF.Size = UDim2.new(0, 50, 0, 40)

	_1.Name = "_1"
	_1.Parent = _TF
	_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_1.Position = UDim2.new(3.28571463, 0, 1.2750001, 0)
	_1.Size = UDim2.new(0, 60, 0, 30)
	_1.Font = Enum.Font.SourceSans
	_1.Text = "Theme 1"
	_1.TextColor3 = Color3.fromRGB(255, 255, 255)
	_1.TextSize = 14.000

	UICorner_4.Parent = _1

	_2.Name = "_2"
	_2.Parent = _TF
	_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_2.Position = UDim2.new(3.27999997, 0, 2.17500019, 0)
	_2.Size = UDim2.new(0, 60, 0, 30)
	_2.Font = Enum.Font.SourceSans
	_2.Text = "Theme 2"
	_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	_2.TextSize = 14.000

	UICorner_5.Parent = _2

	_3.Name = "_3"
	_3.Parent = _TF
	_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_3.Position = UDim2.new(3.26285648, 0, 3.07500005, 0)
	_3.Size = UDim2.new(0, 60, 0, 30)
	_3.Font = Enum.Font.SourceSans
	_3.Text = "Theme 3"
	_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	_3.TextSize = 14.000
	_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	UICorner_6.Parent = _3

	_4.Name = "_4"
	_4.Parent = _TF
	_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_4.Position = UDim2.new(3.25999951, 0, 4.0250001, 0)
	_4.Size = UDim2.new(0, 60, 0, 30)
	_4.Font = Enum.Font.SourceSans
	_4.Text = "Theme 4"
	_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	_4.TextSize = 14.000
	_4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	UICorner_7.Parent = _4

	_5.Name = "_5"
	_5.Parent = _TF
	_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_5.Position = UDim2.new(4.71999931, 0, 1.2750001, 0)
	_5.Size = UDim2.new(0, 60, 0, 30)
	_5.Font = Enum.Font.SourceSans
	_5.Text = "Theme 5"
	_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	_5.TextSize = 14.000
	_5.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	UICorner_8.Parent = _5

	_6.Name = "_6"
	_6.Parent = _TF
	_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_6.Position = UDim2.new(4.71999931, 0, 2.17500019, 0)
	_6.Size = UDim2.new(0, 60, 0, 30)
	_6.Font = Enum.Font.SourceSans
	_6.Text = "Theme 6"
	_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	_6.TextSize = 14.000
	_6.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	UICorner_9.Parent = _6

	_7.Name = "_7"
	_7.Parent = _TF
	_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_7.Position = UDim2.new(4.71999931, 0, 3.07500029, 0)
	_7.Size = UDim2.new(0, 60, 0, 30)
	_7.Font = Enum.Font.SourceSans
	_7.Text = "Theme 7"
	_7.TextColor3 = Color3.fromRGB(255, 255, 255)
	_7.TextSize = 14.000
	_7.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	UICorner_10.Parent = _7

	_CF.Name = "_CF"
	_CF.Parent = Explorer
	_CF.Active = true
	_CF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_CF.BackgroundTransparency = 1.000
	_CF.Position = UDim2.new(-0.5, 0, -0.25, 0)
	_CF.Size = UDim2.new(0, 50, 0, 40)
	_CF.Visible = false

	Fly.Name = "Fly"
	Fly.Parent = _CF
	Fly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fly.BackgroundTransparency = 1.000
	Fly.Position = UDim2.new(3.28372097, 0, 2.43000007, 0)
	Fly.Size = UDim2.new(0, 95, 0, 31)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "Fly = F"
	Fly.TextColor3 = Color3.fromRGB(0, 0, 0)
	Fly.TextSize = 20.000
	Fly.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Fly.TextStrokeTransparency = 0.000

	Reset.Name = "Reset"
	Reset.Parent = _CF
	Reset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Reset.BackgroundTransparency = 1.000
	Reset.Position = UDim2.new(3.28372073, 0, 1.33000004, 0)
	Reset.Size = UDim2.new(0, 95, 0, 31)
	Reset.Font = Enum.Font.SourceSans
	Reset.Text = "Reset = C"
	Reset.TextColor3 = Color3.fromRGB(0, 0, 0)
	Reset.TextSize = 20.000
	Reset.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Reset.TextStrokeTransparency = 0.000

	Respawn.Name = "Respawn"
	Respawn.Parent = _CF
	Respawn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Respawn.BackgroundTransparency = 1.000
	Respawn.Position = UDim2.new(6.06372166, 0, 1.33000004, 0)
	Respawn.Size = UDim2.new(0, 95, 0, 31)
	Respawn.Font = Enum.Font.SourceSans
	Respawn.Text = "Respawn = X"
	Respawn.TextColor3 = Color3.fromRGB(0, 0, 0)
	Respawn.TextSize = 20.000
	Respawn.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Respawn.TextStrokeTransparency = 0.000

	Pads.Name = "Pads"
	Pads.Parent = _CF
	Pads.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pads.BackgroundTransparency = 1.000
	Pads.Position = UDim2.new(3.28372073, 0, 3.65500021, 0)
	Pads.Size = UDim2.new(0, 95, 0, 31)
	Pads.Font = Enum.Font.SourceSans
	Pads.Text = "Tp To Pads = V"
	Pads.TextColor3 = Color3.fromRGB(0, 0, 0)
	Pads.TextSize = 20.000
	Pads.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Pads.TextStrokeTransparency = 0.000

	_KIF.Name = "_KIF"
	_KIF.Parent = Explorer
	_KIF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_KIF.BackgroundTransparency = 1.000
	_KIF.Position = UDim2.new(-0.5, 0, -0.25, 0)
	_KIF.Size = UDim2.new(0, 50, 0, 40)
	_KIF.Visible = false

	_crash.Name = "_crash"
	_crash.Parent = _KIF
	_crash.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_crash.Position = UDim2.new(3.30571437, 0, 2.92500043, 0)
	_crash.Size = UDim2.new(0, 60, 0, 30)
	_crash.Font = Enum.Font.SourceSans
	_crash.Text = "Crash"
	_crash.TextColor3 = Color3.fromRGB(255, 255, 255)
	_crash.TextSize = 14.000

	UICorner_11.Parent = _crash

	_boom.Name = "_boom"
	_boom.Parent = _KIF
	_boom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_boom.Position = UDim2.new(4.66571474, 0, 2.92500067, 0)
	_boom.Size = UDim2.new(0, 60, 0, 30)
	_boom.Font = Enum.Font.SourceSans
	_boom.Text = "Boom"
	_boom.TextColor3 = Color3.fromRGB(255, 255, 255)
	_boom.TextSize = 14.000

	UICorner_12.Parent = _boom

	_FastBoom.Name = "_FastBoom"
	_FastBoom.Parent = _KIF
	_FastBoom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_FastBoom.Position = UDim2.new(4.66571522, 0, 3.94999981, 0)
	_FastBoom.Size = UDim2.new(0, 60, 0, 30)
	_FastBoom.Font = Enum.Font.SourceSans
	_FastBoom.Text = "Fastboom"
	_FastBoom.TextColor3 = Color3.fromRGB(255, 255, 255)
	_FastBoom.TextSize = 14.000

	UICorner_13.Parent = _FastBoom

	_fake.Name = "_fake"
	_fake.Parent = _KIF
	_fake.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_fake.Position = UDim2.new(3.30571437, 0, 3.95000005, 0)
	_fake.Size = UDim2.new(0, 60, 0, 30)
	_fake.Font = Enum.Font.SourceSans
	_fake.Text = "Fake Crash"
	_fake.TextColor3 = Color3.fromRGB(255, 255, 255)
	_fake.TextSize = 14.000

	UICorner_14.Parent = _fake

	_C.Name = "_C"
	_C.Parent = _KIF
	_C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_C.BackgroundTransparency = 1.000
	_C.Position = UDim2.new(3.29999995, 0, 1.22500002, 0)
	_C.Size = UDim2.new(0, 128, 0, 50)
	_C.Font = Enum.Font.SourceSans
	_C.Text = "Crash Category"
	_C.TextColor3 = Color3.fromRGB(0, 0, 0)
	_C.TextSize = 20.000
	_C.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	_C.TextStrokeTransparency = 0.000

	_M.Name = "_M"
	_M.Parent = _KIF
	_M.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_M.BackgroundTransparency = 1.000
	_M.Position = UDim2.new(6.31999969, 0, 1.27499998, 0)
	_M.Size = UDim2.new(0, 128, 0, 50)
	_M.Font = Enum.Font.SourceSans
	_M.Text = "Move Category"
	_M.TextColor3 = Color3.fromRGB(0, 0, 0)
	_M.TextSize = 20.000
	_M.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	_M.TextStrokeTransparency = 0.000

	_Box.Name = "_Box"
	_Box.Parent = _KIF
	_Box.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_Box.Position = UDim2.new(7.56571388, 0, 2.92500043, 0)
	_Box.Size = UDim2.new(0, 55, 0, 30)
	_Box.Font = Enum.Font.SourceSans
	_Box.Text = "Box"
	_Box.TextColor3 = Color3.fromRGB(255, 255, 255)
	_Box.TextSize = 14.000

	UICorner_15.Parent = _Box

	_lines.Name = "_lines"
	_lines.Parent = _KIF
	_lines.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_lines.Position = UDim2.new(6.50571394, 0, 2.92500043, 0)
	_lines.Size = UDim2.new(0, 43, 0, 30)
	_lines.Font = Enum.Font.SourceSans
	_lines.Text = "Lines"
	_lines.TextColor3 = Color3.fromRGB(255, 255, 255)
	_lines.TextSize = 14.000

	UICorner_16.Parent = _lines

	silent.Name = "silent"
	silent.Parent = _KIF
	silent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	silent.Position = UDim2.new(9.11999893, 0, 2.92499995, 0)
	silent.Size = UDim2.new(0, 125, 0, 50)
	silent.Font = Enum.Font.SourceSans
	silent.Text = ""
	silent.TextColor3 = Color3.fromRGB(0, 0, 0)
	silent.TextSize = 14.000

	_enter.Name = "_enter"
	_enter.Parent = _KIF
	_enter.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_enter.Position = UDim2.new(9.30571365, 0, 3.92500067, 0)
	_enter.Size = UDim2.new(0, 108, 0, 30)
	_enter.Font = Enum.Font.SourceSans
	_enter.Text = "Enter"
	_enter.TextColor3 = Color3.fromRGB(255, 255, 255)
	_enter.TextSize = 14.000

	UICorner_17.Parent = _enter

	_S.Name = "_S"
	_S.Parent = _KIF
	_S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_S.BackgroundTransparency = 1.000
	_S.Position = UDim2.new(9.03999996, 0, 1.27499998, 0)
	_S.Size = UDim2.new(0, 128, 0, 50)
	_S.Font = Enum.Font.SourceSans
	_S.Text = "Silent Message"
	_S.TextColor3 = Color3.fromRGB(0, 0, 0)
	_S.TextSize = 20.000
	_S.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	_S.TextStrokeTransparency = 0.000

	_Pads.Name = "_Pads"
	_Pads.Parent = _KIF
	_Pads.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_Pads.Position = UDim2.new(7.84571409, 0, 3.95000005, 0)
	_Pads.Size = UDim2.new(0, 41, 0, 30)
	_Pads.Font = Enum.Font.SourceSans
	_Pads.Text = "Pads"
	_Pads.TextColor3 = Color3.fromRGB(255, 255, 255)
	_Pads.TextSize = 14.000

	UICorner_18.Parent = _Pads

	_Regen.Name = "_Regen"
	_Regen.Parent = _KIF
	_Regen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_Regen.Position = UDim2.new(6.50571394, 0, 3.92499995, 0)
	_Regen.Size = UDim2.new(0, 60, 0, 30)
	_Regen.Font = Enum.Font.SourceSans
	_Regen.Text = "Regen Pad"
	_Regen.TextColor3 = Color3.fromRGB(255, 255, 255)
	_Regen.TextSize = 14.000

	UICorner_19.Parent = _Regen

	Title.Name = "Title"
	Title.Parent = Client
	Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Title.Size = UDim2.new(0, 550, 0, 40)

	_Shazam.Name = "_Shazam"
	_Shazam.Parent = Title
	_Shazam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_Shazam.BackgroundTransparency = 1.000
	_Shazam.BorderSizePixel = 0
	_Shazam.Size = UDim2.new(0, 100, 0, 40)
	_Shazam.Font = Enum.Font.SourceSansSemibold
	_Shazam.Text = "Shazam"
	_Shazam.TextColor3 = Color3.fromRGB(0, 0, 0)
	_Shazam.TextSize = 25.000
	_Shazam.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	_Shazam.TextStrokeTransparency = 0.000

	_Close.Name = "_Close"
	_Close.Parent = Title
	_Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_Close.BackgroundTransparency = 1.000
	_Close.BorderColor3 = Color3.fromRGB(255, 255, 255)
	_Close.Position = UDim2.new(0.909090936, 0, 0, 0)
	_Close.Size = UDim2.new(0, 50, 0, 40)
	_Close.Font = Enum.Font.SourceSans
	_Close.Text = "X"
	_Close.TextColor3 = Color3.fromRGB(0, 0, 0)
	_Close.TextSize = 30.000
	_Close.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	_Close.TextStrokeTransparency = 0.000

	-- Scripts:

	local function EEGV_fake_script() -- Keys_Infos._script 
		local script = Instance.new('LocalScript', Keys_Infos)

		local _CF = script.Parent.Parent._CF
		local _KIF = script.Parent.Parent._KIF
		local _TF = script.Parent.Parent._TF
		script.Parent.MouseButton1Click:Connect(function()
			_CF.Visible = true
			_TF.Visible = false
			_KIF.Visible = false
		end)
	end
	coroutine.wrap(EEGV_fake_script)()
	local function EDOOCQY_fake_script() -- Themes._script 
		local script = Instance.new('LocalScript', Themes)

		local _CF = script.Parent.Parent._CF
		local _KIF = script.Parent.Parent._KIF
		local _TF = script.Parent.Parent._TF
		script.Parent.MouseButton1Click:Connect(function()
			_CF.Visible = false
			_TF.Visible = true
			_KIF.Visible = false
		end)
	end
	coroutine.wrap(EDOOCQY_fake_script)()
	local function PHSYRB_fake_script() -- Contraction._script 
		local script = Instance.new('LocalScript', Contraction)

		local _CF = script.Parent.Parent._CF
		local _KIF = script.Parent.Parent._KIF
		local _TF = script.Parent.Parent._TF
		script.Parent.MouseButton1Click:Connect(function()
			_CF.Visible = false
			_TF.Visible = false
			_KIF.Visible = true
		end)
	end
	coroutine.wrap(PHSYRB_fake_script)()
	local function SSCVWR_fake_script() -- _1._script 
		local script = Instance.new('LocalScript', _1)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."theme1")
		end)
	end
	coroutine.wrap(SSCVWR_fake_script)()
	local function SHBOJSA_fake_script() -- _2._script 
		local script = Instance.new('LocalScript', _2)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."theme2")
		end)
	end
	coroutine.wrap(SHBOJSA_fake_script)()
	local function PZJD_fake_script() -- _3._script 
		local script = Instance.new('LocalScript', _3)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."theme3")
		end)
	end
	coroutine.wrap(PZJD_fake_script)()
	local function JKBHOLP_fake_script() -- _4._script 
		local script = Instance.new('LocalScript', _4)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."theme4")
		end)
	end
	coroutine.wrap(JKBHOLP_fake_script)()
	local function NJBMJ_fake_script() -- _5._script 
		local script = Instance.new('LocalScript', _5)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."theme5")
		end)
	end
	coroutine.wrap(NJBMJ_fake_script)()
	local function OCIKHD_fake_script() -- _6._script 
		local script = Instance.new('LocalScript', _6)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."theme6")
		end)
	end
	coroutine.wrap(OCIKHD_fake_script)()
	local function ZXGG_fake_script() -- _7._script 
		local script = Instance.new('LocalScript', _7)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."theme7")
		end)
	end
	coroutine.wrap(ZXGG_fake_script)()
	local function PITMFJZ_fake_script() -- _CF._Reopen 
		local script = Instance.new('LocalScript', _CF)

		local mousee = game.Players.LocalPlayer:GetMouse()
		local shazam = script.Parent.Parent.Parent.Parent.Client
		mousee.KeyDown:connect(function(key)
			if key:lower() == "r" then
				shazam.Visible = true
			end
			if key:lower() == "f" then
				game.Players:Chat("fly me")
			end
			if key:lower() == "x" then
				game.Players.LocalPlayer.Character:Destroy()
			end
			if key:lower() == "c" then
				game.Players:Chat("reset me")
			end
			if key:lower() == "v" then
				game.Players:Chat(prefix.."pads")
			end
		end)


	end
	coroutine.wrap(PITMFJZ_fake_script)()
	local function TLHA_fake_script() -- _crash._script 
		local script = Instance.new('LocalScript', _crash)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."crash")
		end)
	end
	coroutine.wrap(TLHA_fake_script)()
	local function DWXX_fake_script() -- _boom._script 
		local script = Instance.new('LocalScript', _boom)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."boom")
		end)
	end
	coroutine.wrap(DWXX_fake_script)()
	local function SZXEHE_fake_script() -- _FastBoom._script 
		local script = Instance.new('LocalScript', _FastBoom)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."fastboom")
		end)
	end
	coroutine.wrap(SZXEHE_fake_script)()
	local function ZNHKMC_fake_script() -- _fake._script 
		local script = Instance.new('LocalScript', _fake)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."ccrash")
		end)
	end
	coroutine.wrap(ZNHKMC_fake_script)()
	local function FQQR_fake_script() -- _Box._script 
		local script = Instance.new('LocalScript', _Box)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."moveobbybox")
		end)
	end
	coroutine.wrap(FQQR_fake_script)()
	local function VMEU_fake_script() -- _lines._script 
		local script = Instance.new('LocalScript', _lines)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."moveobbybricks")
		end)
	end
	coroutine.wrap(VMEU_fake_script)()
	local function QXLV_fake_script() -- _enter._script 
		local script = Instance.new('LocalScript', _enter)

		script.Parent.MouseButton1Click:Connect(function()
			local TextBox = script.Parent.Parent.silent
			local TEXT = TextBox.Text
			game.Players:Chat(TEXT)
		end)
	end
	coroutine.wrap(QXLV_fake_script)()
	local function AVRD_fake_script() -- _Pads._script 
		local script = Instance.new('LocalScript', _Pads)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."movepads")
		end)
	end
	coroutine.wrap(AVRD_fake_script)()
	local function RUCCDAS_fake_script() -- _Close._script 
		local script = Instance.new('LocalScript', _Close)

		local client = script.Parent.Parent.Parent.Parent.Client
		script.Parent.MouseButton1Click:Connect(function()
			client.Visible = false
		end)
	end
	coroutine.wrap(RUCCDAS_fake_script)()
	local function YAXAJ_fake_script() -- Title._Color 
		local script = Instance.new('LocalScript', Title)

		local frame = script.Parent

		while true do
			frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			wait(5.0)
			frame.BackgroundColor3 = Color3.fromRGB(255, 205, 0)
			wait(0.25)
		end
	end
	coroutine.wrap(YAXAJ_fake_script)()
	local function WDCLKK_fake_script() -- Client.LocalScript 
		local script = Instance.new('LocalScript', Client)

		local client = script.Parent.Parent.Client
		client.Draggable = true
	end
	coroutine.wrap(WDCLKK_fake_script)()
	local function HPPC_fake_script() -- Shazam.LocalScript 
		local script = Instance.new('LocalScript', Shazam)

		local tts = script.Parent.Parent.Shazam
		tts.ResetOnSpawn = false
	end
	coroutine.wrap(HPPC_fake_script)()
	local function HBKINI_fake_script() -- nil._script 
		local script = Instance.new('LocalScript', nil)

		script.Parent.MouseButton1Click:Connect(function()
			game.Players:Chat(prefix.."mrp")
		end)
	end
	coroutine.wrap(HBKINI_fake_script)()
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
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("h Cant GrayScale me. ")
					else
						game.Players:Chat("h Cant GrayScale me.")
					end
				end
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
					if AllowMessages == true then
						if allowads == true then
							game.Players:Chat("h Automusic active.")
						else
							game.Players:Chat("h Automusic active.")
						end
					end
				end
			end
			if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				game.Players:Chat("music "..mymusiconly_ID)
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("h Automusic active. ")
					else
						game.Players:Chat("h Automusic active.")
					end
				end
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
				print("["..plr.Name.."]: "..msg)
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
			-- Premium Category --
			----------------------
			if string.sub(msg,1,4) == ".ban" then
				local LocalPlayer = game.Players.LocalPlayer
				local GamepassID = 20296824
				local GroupID = 11612627
				names = game.Players:GetChildren()
				local name = string.sub(msg:lower(), 6)
				for i,v in pairs(names) do
					strlower = string.lower(v.Name)
					sub = string.sub(strlower,1,#name)
					if name == sub then
						user = v.Name
						game.Players.PlayerAdded:Connect(function()
							if v.Name:IsInGroup(GroupID) then
								if not game:GetService("MarketplaceService"):UserOwnsGamePassAsync(LocalPlayer.UserId, GamepassID) then
									LocalPlayer:Kick("You Are Banned From The Game")
								end
							end
						end)
					end
				end
			end
			----------------------
			----------------------
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
		if padsEnforcement == true then
			for i,v in pairs(game.Players:GetChildren()) do
				local times = 0
				for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
					if pad.Name == v.Name.."'s admin" then
						times = times + 1
					end
				end
				if times >= 2 then
					game.Players:Chat("h Pads reset because "..v.Name.." tried to take them all!")
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
	game.Players:Chat(prefix.."perm")
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
				game.Players:Chat('punish '..player)
				game.Players:Chat('blind '..player)
				game.Players:Chat("pm "..player.." You Are Kicked From The Game !")
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
