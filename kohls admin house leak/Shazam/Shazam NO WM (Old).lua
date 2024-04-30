-- Config
local prefix = "!" -- Command prefix
local players_joined = false -- You are Notified from all users joining the game.
local players_csystem = false -- You Are Notified From all users using "/c system"
local players_logs = false -- You Are Notified From All users using logs
local players_perm = false -- When Someone Join, He's Admin By You.
local players_kick = false -- When Someone Join, He's Kicked By You
local antiabusegears = true -- If someone have specific abuse gears, the inventory will be reseted
local antigrayscale = true -- Anti DIO Stop Time
local antikill = false -- Anti Kill
local antijail = false -- Anti Jail
local antipads = true -- Anticrash Not Perm Bot. ( Perm Crasher not working, Need Regen Buttons )
local anticrashVG = true -- Anti Vampire Crash 
local antivoid = true -- Anti Fall In Void
local antiattach = false -- Anti Users Attaching to something
local anti2pads = false -- Players Can't get more than 1 pad
--[[  Music has been deleted
local mymusiconly = false 
local mymusiconly_ID = 0
]]--
local perm = true
-- Spam
local detect = false
-- Variable Main
local Players = game:GetService("Players")
local move_verification = false
local spam_verification = false
local spam_command = "None"
local Musiclist_Check = false
local v1 = "PaintPart"
-- Rainbow
local rainbow_floor = false
local rainbow_pads = false
local rainbow_obbykill = false
local rainbow_obbybox = false
local rainbow_housefloor = false
local rainbow_speed = 0.5
local rainbow_part = Instance.new("Part", workspace)
-- Shazam
local shazamlogs = true
-- Config [In Script]
local players_bannedpads = {}
local players_vip = {}
local players_cdadmin = {}
local players_kicked = {}
local players_shazam = {}
-- Other
local active_gconsole = false
local infinitejump = true
local mouse = game.Players.LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
-- Main Commands
local shazamcommands = {
	"rrej,(rej,rj,rejoin),rjg,srj",
	"color [original,random]",
	"taxilag, ccrash, crash",
	"nti,nok",
	"block",
	"move [part]",
	"control",
	"shazamplayers, shazamchat",
	"texture",
	"rshazam, rshortcut",
	"detect [reg/bp/adminpads]",
	"kit [name]",
	"ufo/taxi [name]",
	"setspawn",
	"fixrc, norc",
	"kick/unkick [name]",
	"vip/unvip [name]",
	"cdadmin/uncdadmin [name]",
	"banadmin/unbanadmin [name]",
	"perm/unperm",
	"stop",
	"spam/super [command]",
	"goto [house/spawn/pads]",
	"reg/res/reset/regen",
	"speed/jump [number]",
	"rainbow [part]",
	"allpads",
	"rocket/tnt [name]",
	"clean",
	"theme [1/7]"
}
-- Function Main
function stopalltasks()
	notification("Stopped teskker...")
	spam_verification = false
	stoprainbow()
	detect = false
end
function fastwait()
	if lowpc == true then
		wait(0.029)
	else
		RunService.Heartbeat:Wait()
	end
end
function notification(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Shazam"; 
		Text = msg;
		Icon = "rbxthumb://type=Asset&id=9269935485&w=150&h=150",
		Duration = 5;
	})
end
function gconsole(text_console)
	print('Gconsole not working for moment')
end
-- Main
function stoprainbow()
	rainbow_floor = false
	rainbow_pads = false
	rainbow_obbykill = false
	rainbow_obbybox = false
	rainbow_housefloor = false
end
function sendmsg(message)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
end
function player_event(player)
	if player.Name == "34kTokio" then
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('Shazam On Top', "All")
	end
	if string.sub(player.Name, 0, 3) == "me_" then
		game.Players:Chat(prefix..'kick me_')
		game.Players:Chat(prefix..'hint Players starting with me in their username will be kicked')
	end
	if players_joined == true then
		notification(player.Name.." has joined the game")
	end
	if players_kick == true then
		if not players_kick == true then
			game.Players:Chat(prefix..'kick '..player.Name)
		end
	end
	if players_perm == true then
		if not players_perm == true then
			game.Players:Chat(prefix..'cdadmin '..player.Name)
		end
	end
end
function Rainbowpart(locatepart,many)
	fastwait()
	rfloor = true
	game.Players:Chat("gear me 00000018474459")
	workspace:WaitForChild(game.Players.LocalPlayer.Name).Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
	if many == true then
		for i,vpart in pairs(locatepart) do
			Spawn(function()
				while rfloor == true do
					workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = vpart, Color = rainbow_part.Color})
				end
			end)
			repeat wait() until rfloor == false
			paint:Disconnect()
		end
	else
		Spawn(function()
			while rfloor == true do
				workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = locatepart, Color = rainbow_part.Color})
			end
		end)
		repeat wait() until rfloor == false
		paint:Disconnect()
	end
end
function Movepart_skydive(locatepart)
	fastwait()
	if locatepart then
		if move_verification == true then
			notification('Moving Already Something')
		elseif move_verification == false then
			move_verification = true
			local lop = true
			spawn(function()
				while lop == true do
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					notification('Moving Part With Skydive')
					cf.CFrame = locatepart.CFrame * CFrame.new(-1*(locatepart.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
					fastwait()
					game.Players:Chat("unpunish me "..tostring(math.random(0,100)))	
				end
			end)
			wait(0.3)
			lop = false
			game.Players:Chat("skydive me,me")
			wait(0.2)
			game.Players:Chat("respawn me")
			fastwait()
			notification("Moved "..locatepart.Name)
			move_verification = false
		else
			move_verification = false
			notification("ERROR | move_verification")
		end
	else
		notification('ERROR | Missing '..locatepart)
	end
end
function Movepart_cframe(PositionCFrame, locatepart)
	fastwait()
	if locatepart then
		if move_verification == true then
			notification('Moving Already Something')
		elseif move_verification == false then
			move_verification = true
			local PosCFrame = "nothing"
			if PositionCFrame == "None" then
				local function ran() return math.random(-20000,-10000) end
				local function runa() return math.random(100,1000) end
				PosCFrame = Vector3.new(runa(), ran(), runa())
			else
				PosCFrame = PositionCFrame
			end
			function keycode() if game:GetService("Players").LocalPlayer.Backpack.IvoryPeriastron then game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E) else notification("ERROR | Backpack") move_verification = false end
			if game.Players.LocalPlayer.Character.Humanoid then
				workspace.FallenPartsDestroyHeight = 0 / 0
				game.Players:Chat("invis me")
				game.Players:Chat("gear me 108158379")
				if game:GetService("Players").LocalPlayer.Backpack.IvoryPeriastron then
					wait(0.5)
					game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.IvoryPeriastron)
					wait(0.5)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PosCFrame)
					wait(1)
					game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
					wait(1)
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local looping = true
					coroutine.resume(coroutine.create(function()
						while looping do 
							wait(.1) 
							game.Players:Chat('unpunish me') 
						end
						while true do
							fastwait()
							game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
							cf.CFrame = locatepart.CFrame * CFrame.new(-1*(locatepart.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
							if not looping then break end
						end
					end))
					wait(0.3)
					looping = false
					wait(0.5)
					keycode()
					wait(0.5)
					game.Players:Chat("respawn me")
					notification("Moved "..locatepart.Name)
					wait(2)
					move_verification = false
				else
					notification("ERROR | Backpack")
				end
			else
				notification("ERROR | Humanoid")
			end
			move_verification = false
			workspace.FallenPartsDestroyHeight = -500
		else
			move_verification = false
			notification("ERROR | move_verification")
		end
	else
		notification('ERROR | Missing '..locatepart)	
	end
end
game.Players.PlayerAdded:Connect(function(plr)
	player_event(plr)
	plr.Chatted:Connect(function(msg)
		Spawn(function()
			for i,player in pairs(players_bannedpads) do
				for i,pad in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetDescendants()) do
					if pad.Name == player.."'s admin" then
						game.Players:Chat("respawn "..player)
						game.Players:Chat("h Sorry "..player.." your banned from pads")
						regen()
						game.Players:Chat("speed "..player.." 0.1")
					end
				end
			end
			wait(0.25)
			for i,player in pairs(players_whitelisted) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == prefix then
						game.Players:Chat(command)
					end
				end
			end
			for i,player in pairs(players_cdadmin) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					command = command.gsub(msg:lower(), "pesos", "")
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
					if string.sub(command, 1, 5) == "size " then
						wait(2)
						local after = string.sub(command, 6)
						game.Players:Chat('size '..after)
					end
					if string.sub(command, 1, 7) == "freeze " then
						wait(2)
						local player = string.sub(command, 8)
						game.Players:Chat('freeze '..player)
					end
					if string.sub(command, 1, 6) == "music " then
						game.Players:Chat("pm "..plr.Name.." Use musi <id> instead of music")
					end
					if string.sub(command, 1, 5) == "musi " then
						local MUSIC = string.sub(command, 6)
						game.Players:Chat("music "..MUSIC)
					elseif string.sub(command, 1, 11) == "removejails" then
						game.Players:Chat("removejails")
					elseif string.sub(command, 1, 10) == "unjail all" then
						game.Players:Chat("removejails")
					elseif string.sub(command, 1, 2) == "m " then
						local message = string.sub(command, 3)
						game.Players:Chat('m '..plr.Name..'sec: '..message)
					elseif string.sub(command, 1, 2) == "message " then
						local message = string.sub(command, 10)
						game.Players:Chat('m '..plr.Name..'sec: '..message)
					elseif string.sub(command, 1, 2) == "h " then
						local message = string.sub(command, 3)
						game.Players:Chat(prefix..'hint '..plr.Name..'sec: '..message)
					elseif string.sub(command, 1, 12) == "jumppower me" then
						local JPP = string.sub(command, 14)
						game.Players:Chat("jumppower "..plr.Name.." "..JPP)
					elseif string.sub(command, 1, 7) == "name me" then
						local NAME = string.sub(command, 9)
						game.Players:Chat("name "..plr.Name.." "..NAME)
					elseif string.sub(command, 1, 3) == "pm " then
						game.Players:Chat("pm "..plr.Name.." private message is deprecated")
					elseif string.sub(command, 1, 5) == "hint " then
						local message = string.sub(command, 6)
						game.Players:Chat(prefix..'hint '..plr.Name..'sec: '..message)
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
			if antiattach == true then
				if plr.Character:FindFirstChild("IvoryPeriastron") or string.sub(msg:lower(),0,8) == "unpunish" or string.sub(msg:lower(),0,9) == ":unpunish" or string.sub(msg:lower(),0,3) == "sit" or string.sub(msg:lower(),0,4) == ":sit" or string.sub(msg:lower(),0,4) == "stun" or string.sub(msg:lower(),0,5) == ":stun" then
					if not plr.Name == game.Players.LocalPlayer.Name then
						game.Players:Chat("reset "..plr.Name)
					end
				end
			end
			if shazamlogs == true then
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
					Text = "ShortcutChat ["..plr.Name.."]: "..string.sub(msg,8);
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
				-- pesos me = Player saying who using shazam
				local player = plr.Name
				if not player == game.Players.LocalPlayer.Name then
					table.insert(players_shazam, player)
					notification(player..' using shazam')
					game.Players:Chat('sec me')
				end
			end
			if string.sub(msg,1,6) == "sec me" then
				-- sec me = Player saying im using shazam
				local player = plr.Name
				if not player == game.Players.LocalPlayer.Name then
					table.insert(players_shazam, player)
					notification(player..' using shazam')
				end
			end
		end)
		if string.sub(msg:lower(), 0, 9) == "/c system" then
			local player = plr.Name
			if players_csystem == true then
				if player == game.Players.LocalPlayer.Name then
					notificationf("You can use /c system !")
				else
					notification(player.." using /c system !")
				end
			end
		end
		if string.sub(msg:lower(), 0, 4) == "logs" or string.sub(msg:lower(), 0, 5) == ":logs" or string.sub(msg:lower(), 0, 6) == "::logs" then
			local player = plr.Name
			if players_logs == true then
				if player == game.Players.LocalPlayer.Name then
					notification("You are using logs")
				else
					notification(player.." using logs")
				end
			end
		end
	end)
end)
Players.LocalPlayer.Chatted:Connect(function(msg)
	local amount = nil
	if string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
		gconsole(shazamcommands)
	end
	if string.sub(msg:lower(), 0, 4) == prefix.."rej" or string.sub(msg:lower(), 0, 7) == prefix.."rejoin" or string.sub(msg:lower(), 0, 3) == prefix.."rj" then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
		notification("Trying To Rejoin The Game")
	end
	if string.sub(msg:lower(), 0, 4) == prefix.."srj" or string.sub(msg:lower(), 0, 5) == prefix.."shop" or string.sub(msg:lower(), 0, 10) == prefix.."serverhop" then
		while true do
			fastwait()
			local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
			local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
			for _, s in pairs(ServersToTP.data) do
				if s.playing ~= s.maxPlayers then
					TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
				end
			end
		end
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."color " then
		local choice = string.sub(msg:lower(), 8)
		if choice == "original" then
			loadstring(game:HttpGet("https://pastebin.com/raw/d96xTqtR"))()
		elseif choice == "random" then
			game.Players:Chat("gear me 00000000000000000018474459")
			wait(1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
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
		else
			notification('No Choice Named > '..choice)
		end
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."taxilag" then
		while true do
			fastwait()
			game.Players:Chat('gear all 253519495')
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
		local plrs = game:GetService("Players")
		local plr = plrs.LocalPlayer
		local haha = game.Players
		local key = "Backspace"
		for i = 1,2 do
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
		wait(1)
		for i = 1,2 do
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
		for i = 1,2 do
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
			game.Players:Chat("freeze all")
			game.Players:Chat("name all Blocked")
			game.Players:Chat("thaw all")
		end
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
		notification('Deleted All TouchInterest of Obby')
	end
	if string.sub(msg:lower(), 0, 4) == prefix.."nti" then
		local player = string.sub(msg:lower(), 6)..","
		notification("Removed All Touch Interest Of "..player)
		fastwait()
		game.Players:Chat(prefix.."super dog "..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player)
		wait(3)
		game.Players:Chat("kill "..string.sub(msg:lower(), 6))
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."block" then
		local player = string.sub(msg:lower(), 8)
		game.Players:Chat("freeze "..player)
		game.Players:Chat("name "..player.." "..player.." Blocked")
		game.Players:Chat("thaw "..player)
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."move " then
		local choice = string.sub(msg:lower(), 7)
		if choice == "obbybox" or choice == "boxobby" or choice == "obby box" or choice == "box obby" then
			for i,part in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
				Movepart_cframe("None", part)
			end
		elseif choice == "obbybricks" or choice == "bricksobby" or choice == "obby bricks" or choice == "bricks obby" or choice == "brick obby" or choice == "obby brick" or choice == "kill obby" or choice == "obby kill" or choice == "killobby" or choice == "obbykill" then
			game.Players:Chat(prefix..'nok')
			for i,part in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Obby"]:GetChildren()) do
				Movepart_skydive(part)
			end
		elseif choice == "buildingbricks" or choice == "bricksbuilding" or choice == "building bricks" or choice == "bricks building" or choice == "brick building" or choice == "building brick" or choice == "part building" or choice == "building part" or choice == "partbuilding" or choice == "buildingpart" or choice == "parts building" or choice == "building parts" or choice == "partsbuilding" or choice == "buildingparts" then
			for i,part in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Building Bricks"]:GetChildren()) do
				Movepart_skydive(part)
			end
		elseif choice == "admindividers" or choice == "dividersadmin" or choice == "dividers admin" or choice == "admin dividers" or choice == "admindivider" or choice == "divideradmin" or choice == "divider admin" or choice == "admin divider" or choice == "dividers" or choice == "divider" then
			for i,part in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
				Movepart_skydive(part)
			end
		elseif choice == "basichouse" or choice == "housebasic" or choice == "basic house" or choice == "house basic" or choice == "house" or choice == "basic" or choice == "home" or choice == "House" or choice == "Home" then
			for i,part in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Basic House"]:GetChildren()) do
				Movepart_skydive(part)
			end
		elseif choice == "adminpads" or choice == "padsadmin" or choice == "pads admin" or choice == "pads dividers" or choice == "adminpad" or choice == "padadmin" or choice == "pad admin" or choice == "admin pad" or choice == "pads" or choice == "pad" then
			for i,part in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
				Movepart_skydive(part)
			end
		elseif choice == "bp" or choice == "pb" or choice == "baseplate" or choice == "platebase" or choice == "base plate" or choice == "plate base" or choice == "Baseplate" then
			Movepart_cframe(Vector3.new(454545, -800000, -678678), game:GetService("Workspace").Terrain["_Game"].Workspace.Baseplate)
		elseif choice == "regenpad" or choice == "padregen" or choice == "regen pad" or choice == "pad regen" or choice == "resetpad" or choice == "padreset" or choice == "reset pad" or choice == "pad reset" or choice == "regen" or choice == "reset" or choice == "rp" or choice == "reg" or choice == "res" then
			Movepart_cframe("None", game:GetService("Workspace").Terrain["_Game"].Admin.Regen)
		else
			notification('No Choice Named > '..choice)
		end
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."control" then
		local player = string.sub(msg:lower(), 10)
		game.Players:Chat("dog me,"..player)
		game.Players:Chat("tp me "..player)
		wait(1)
		game.Players:Chat("punish me,"..player)
		game.Players:Chat("undog me,"..player)
		wait(0.25)
		game.Players:Chat("unpunish me,"..player)
		game.Players:Chat("invis me")
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."control" then
		local player = string.sub(msg:lower(), 10)
		game.Players:Chat("dog me,"..player)
		game.Players:Chat("tp me "..player)
		wait(1)
		game.Players:Chat("punish me,"..player)
		game.Players:Chat("undog me,"..player)
		wait(0.25)
		game.Players:Chat("unpunish me,"..player)
		game.Players:Chat("invis me")
	end
	if string.sub(msg:lower(), 0, 11) == prefix.."shazamchat" then
		local message = string.sub(msg:lower(), 13)
		game.Players:Chat('euros '..message)
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."shazamplayers" then
		game.Players:Chat('pesos me')
	end
	if string.sub(msg:lower(), 0, 11) == prefix.."createobby" then
		-- 1 part
		local framepart = Vector3.new(-204, 10004.9, 59)
		local part = game.Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel112
		Movepart_cframe(framepart,part)
		-- 2 part
		framepart = Vector3.new(-143, 10008.9, 62)
		part = game.Workspace.Terrain._Game.Workspace["Building Bricks"].Part7
		Movepart_cframe(framepart,part)
		-- 3 part
		framepart = Vector3.new(-134, 10012.9, 60)
		part = game.Workspace.Terrain._Game.Workspace["Building Bricks"].Part6
		Movepart_cframe(framepart,part)
		-- 4 part
		framepart = Vector3.new(-143, 10017.1, 62)
		part = game.Workspace.Terrain._Game.Workspace["Building Bricks"].Part5
		Movepart_cframe(framepart,part)
		-- 5 part
		framepart = Vector3.new(-145, 10021.5, 25)
		part = game.Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel40
		Movepart_cframe(framepart,part)
		-- spawns
		framepart = Vector3.new(-190.9, 10008.5, 67)
		part = game.Workspace.Terrain._Game.Workspace.Spawn1
		Movepart_cframe(framepart,part)
		-- spawns
		part = game.Workspace.Terrain._Game.Workspace.Spawn2
		Movepart_cframe(framepart,part)
		-- spawns
		part = game.Workspace.Terrain._Game.Workspace.Spawn3
		Movepart_cframe(framepart,part)
	end
	if string.sub(msg:lower(), 0, 10) == prefix.."texture" then
		game.Players:Chat("gear me 59190534")
		wait(1)
		game:GetService("Players").LocalPlayer.CharacterStatueStaffOfStonyJustice.Remote:FireServer(Enum.KeyCode.X)
	end
	if string.sub(msg:lower(), 0, 10) == prefix.."rshortcut" then
		local pl = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		local location = CFrame.new(-6.38259602, 12037.6162, 94.9227524)
		fastwait()
		pl.CFrame = location
		notification("Teleported To Location Of Shortcut v1 regen pad")
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."rshazam" then
		local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if game.Workspace.Terrain["_Game"].Admin.Regen then
			cf.CFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Regen
			notification("Teleported To The Regen Pad !")
		else
			notification("There Is No Regen Pad Located !")
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."detect " then
		detect = true
		local choice = string.sub(msg:lower(), 9)
		if choice == "regenpad" or choice == "padregen" or choice == "regen pad" or choice == "pad regen" or choice == "resetpad" or choice == "padreset" or choice == "reset pad" or choice == "pad reset" or choice == "regen" or choice == "reset" or choice == "rp" or choice == "reg" or choice == "res" then
			Spawn(function()
				while true do
					fastwait()
					if detect == true then
						wait(0.25)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
						if game:GetService("Workspace").Terrain["_Game"].Admin.Regen then 
							detect = false
							fastwait()
							local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
							cf.CFrame = game.Workspace.Terrain["_Game"].Admin.Regen.CFrame
							notification('Regen Pad Has Been Found !')
						end
					end
				end
			end)
		elseif choice == "bp" or choice == "pb" or choice == "baseplate" or choice == "platebase" or choice == "base plate" or choice == "plate base" or choice == "Baseplate" then
			Spawn(function()
				while true do
					fastwait()
					if detect == true then
						wait(0.25)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
						if game.Workspace.Terrain["_Game"].Workspace.Baseplate then 
							detect = false
							fastwait()
							local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
							cf.CFrame = game.Workspace.Terrain["_Game"].Workspace.Baseplate.CFrame
							notification('Baseplate Has Been Found !')
						end
					end
				end
			end)
		elseif choice == "adminpads" or choice == "padsadmin" or choice == "pads admin" or choice == "pads dividers" or choice == "adminpad" or choice == "padadmin" or choice == "pad admin" or choice == "admin pad" or choice == "pads" or choice == "pad" then
			Spawn(function()
				while true do
					fastwait()
					if detect == true then
						wait(0.25)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
						if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
							if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
								detect = false
								local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
								cf.CFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
								notification('A Pad Has Been Found !')
							else
								if game:GetService("Workspace").Terrain["_Game"].Admin.Regen then 
									fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
								end
							end
						end
					end
				end
			end)
		else
			notification('No Choice Named > '..choice)
		end
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."kit " then
		local choice = string.sub(msg:lower(), 6)
		if choice == "jorge" then
			local plr = string.sub(msg:lower(), 12)
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
			notification("Gived "..plr.." Jorge's kit")
		elseif choice == "lexio" then
			local plr = string.sub(msg:lower(), 12)
			game.Players:Chat('gear '..plr..' 477910063')
			game.Players:Chat('gear '..plr..' 130113146')
			game.Players:Chat('gear '..plr..' 159229806')
			notification("Gived "..plr.." Lexio's kit")
		elseif choice == "tokio" then
			local plr = string.sub(msg:lower(), 12)
			game.Players:Chat('gear '..plr..' 159229806')
			game.Players:Chat('gear '..plr..' 159229806')
			game.Players:Chat('gear '..plr..' 159229806')
			game.Players:Chat('gear '..plr..' 139577901')
			game.Players:Chat('gear '..plr..' 139577901')
			game.Players:Chat('gear '..plr..' 139577901')
			notification("Gived "..plr.." Tokio's kit")
		elseif choice == "coolguy" then
			local plr = string.sub(msg:lower(), 14)
			game.Players:Chat('gear '..plr..' 159229806')
			game.Players:Chat('gear '..plr..' 159229806')
			game.Players:Chat('gear '..plr..' 159229806')
			game.Players:Chat('gear '..plr..' 139577901')
			game.Players:Chat('gear '..plr..' 139577901')
			game.Players:Chat('gear '..plr..' 139577901')
			notification("Gived "..plr.." Coolguy's kit")
		elseif choice == "mega" then
			local plr = string.sub(msg:lower(), 11)
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
			notification("Gived "..plr.." The Mega Sword Kit")
		else
			notification('No Choice Named > '..choice)
		end
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."ufo " then
		local plr = string.sub(msg:lower(), 6)
		game.Players:Chat("dog "..plr)
		game.Players:Chat("creeper "..plr)
		game.Players:Chat("removelimbs "..plr)
		game.Players:Chat("paint "..plr.." black")
		game.Players:Chat("name "..plr.." Ufo")
		game.Players:Chat("removehats "..plr)
		game.Players:Chat("spin "..plr)
		wait(0.25)
		game.Players:Chat("fly "..plr)
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."taxi " then
		local plr = string.sub(msg:lower(), 7)
		game.Players:Chat("dog "..plr)
		game.Players:Chat("removelimbs "..plr)
		game.Players:Chat("creeper "..plr)
		game.Players:Chat("name "..plr.." Taxi")
		game.Players:Chat("gold "..plr)
		game.Players:Chat("speed "..plr.." 100")
		game.Players:Chat("god "..plr)
		game.Players:Chat("removehats "..plr)
	end
	if string.sub(msg:lower(), 0, 9) == prefix.."setspawn" then
		local frameplayer = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local part = game.Workspace.Terrain._Game.Workspace.Spawn1
		Movepart_cframe(frameplayer,part)
		-- spawns
		part = game.Workspace.Terrain._Game.Workspace.Spawn2
		Movepart_cframe(frameplayer,part)
		-- spawns
		part = game.Workspace.Terrain._Game.Workspace.Spawn3
		Movepart_cframe(frameplayer,part)
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."norc" then
		notification('Disabled RightClicking For Everyone')
		game.Players:Chat('gear me 4842207161')
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."fixrc" then
		notification('Fixed RightClicking For You Only')
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
	if string.sub(msg:lower(), 0, 4) == prefix.."vip" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 6)
		for i,player in pairs(players) do
			stringlower = string.lower(player.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				table.insert(players_vip, player.Name)
				notification("Vip "..player.Name)
			end
		end
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."unvip" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 8)
		for i,v in pairs(players) do
			stringlower = string.lower(v.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				for a,b in pairs(players_vip) do
					if b == v.Name then
						table.remove(players_vip, a)
						notification("Unvip "..v.Name)
					end
				end
			end
		end
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."cdadmin" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 10)
		for i,player in pairs(players) do
			stringlower = string.lower(player.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				table.insert(players_cdadmin, player.Name)
				game.Players:Chat('pm '..v.Name..' You Are Now Admin')
				notification("Cdadmin "..player.Name)
			end
		end
	end
	if string.sub(msg:lower(), 0, 10) == prefix.."uncdadmin" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 12)
		for i,v in pairs(players) do
			stringlower = string.lower(v.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				for a,b in pairs(Whitelist) do
					if b == v.Name then
						table.remove(players_cdadmin, a)
						game.Players:Chat('pm '..v.Name..' You Are Now Not Admin')
						notification("Uncdadmin "..v.Name)
					end
				end
			end
		end
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."kick" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 7)
		for i,player in pairs(players) do
			stringlower = string.lower(player.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				table.insert(players_kicked, player.Name)
				notification("Kicked "..player.Name)
			end
		end
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."unkick" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(players) do
			stringlower = string.lower(v.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				for a,b in pairs(players_kicked) do
					if b == v.Name then
						table.remove(players_kicked, a)
						notification("Unkicked "..v.Name)
					end
				end
			end
		end
	end
	if string.sub(msg:lower(), 0, 9) == prefix.."banadmin" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,player in pairs(players) do
			stringlower = string.lower(player.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				table.insert(players_kicked, player.Name)
				notification("Cdadmin "..player.Name)
			end
		end
	end
	if string.sub(msg:lower(), 0, 11) == prefix.."unbanadmin" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 13)
		for i,v in pairs(players) do
			stringlower = string.lower(v.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				for a,b in pairs(players_kicked) do
					if b == v.Name then
						table.remove(players_kicked, a)
						notification("Uncdadmin "..v.Name)
					end
				end
			end
		end
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."perm" then
		perm = true
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."unperm" then
		perm = false
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."infjump" then
		infinitejump = not infinitejump
		game:GetService("UserInputService").JumpRequest:connect(function()
			if infinitejump == true then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
			end
		end)
		notification('Infinite Jump > '..infinitejump)
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."infinitejump" then
		stopalltasks()
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."stop" then
		notification("Stopped Every Tasks")
		spam_verification = false
		stoprainbow()
		detect = false
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."super " then
		for i = 1,100 do
			game.Players:Chat(string.sub(msg:lower(), 8))
		end
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."spam " then
		spam_command = string.sub(msg:lower(), 7)
		spam_verification = true
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."skydive" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."goto " then
		local choice = string.sub(msg:lower(), 7)
		if choice == "basichouse" or choice == "housebasic" or choice == "basic house" or choice == "house basic" or choice == "house" or choice == "basic" or choice == "home" or choice == "House" or choice == "Home" then
			notification("Teleported > House")
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
		elseif choice == "spawn" or choice == "spawner" or choice == "obbyspawn" then
			notification("Teleported > Spawn")
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.7, -25.6))
		elseif choice == "adminpads" or choice == "padsadmin" or choice == "pads admin" or choice == "pads dividers" or choice == "adminpad" or choice == "padadmin" or choice == "pad admin" or choice == "admin pad" or choice == "pads" or choice == "pad" then
			notification("Teleported > Admin Pad")
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-20.9241447, 8.59812164, 94.3289948))
		else
			notification('No Choice Named > '..choice)
		end
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."regen" or string.sub(msg:lower(), 0, 4) == prefix.."reg" or string.sub(msg:lower(), 0, 4) == prefix.."res" or string.sub(msg:lower(), 0, 6) == prefix.."reset" then
		if game.Workspace.Terrain["_Game"].Admin.Regen then
			fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 1)
		else
			notification('No Regen Pad Detected')
		end
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."jump " then
		local Power = tonumber(string.sub(msg:lower(), 7))
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Power
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."speed " then
		local Power = tonumber(string.sub(msg:lower(), 8))
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Power
	end
	if string.sub(msg:lower(), 0, 9) == prefix..'rainbow ' then
		local choice = string.sub(msg:lower(), 10)
		if choice == "bp" or choice == "pb" or choice == "baseplate" or choice == "platebase" or choice == "base plate" or choice == "plate base" or choice == "Baseplate" then
			notification("Rainbow Baseplate")
			Rainbowpart(game:GetService("Workspace").Terrain["_Game"].Workspace.Baseplate,false)
		elseif choice == "adminpads" or choice == "padsadmin" or choice == "pads admin" or choice == "pads dividers" or choice == "adminpad" or choice == "padadmin" or choice == "pad admin" or choice == "admin pad" or choice == "pads" or choice == "pad" then
			notification("Rainbow Pads")
			Rainbowpart(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren(),true)
		elseif choice == "regenpad" or choice == "padregen" or choice == "regen pad" or choice == "pad regen" or choice == "resetpad" or choice == "padreset" or choice == "reset pad" or choice == "pad reset" or choice == "regen" or choice == "reset" or choice == "rp" or choice == "reg" or choice == "res" then
			notification("Rainbow Regen Pad")
			Rainbowpart(game:GetService("Workspace").Terrain["_Game"].Admin.Regen,false)
		else
			notification('No Choice Named > '..choice)
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."allpads" then
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
			firetouchinterest(workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], v.Head, 0)
			firetouchinterest(workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], v.Head, 1)
			wait()
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."rocket " then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("dog "..player)
		game.Players:Chat("size "..player.." 0.3")
		wait(0.25)
		game.Players:Chat("undog "..player)
		game.Players:Chat("hat "..player.." 5973889942")
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."tnt " then
		local player = string.sub(msg:lower(), 6)
		game.Players:Chat("removepants "..player)
		game.Players:Chat("removeshirt "..player)
		game.Players:Chat("paint "..player.." red")
		game.Players:Chat("name "..player.." TNT")
		wait(1)
		game.Players:Chat("bonfire "..player)
		wait(2)
		game.Players:Chat("explode "..player)
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."clean" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."theme " then
		local choice = string.sub(msg:lower(), 8)
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		if choice == "1" then
			game.Players:Chat("time 19")
			game.Players:Chat("outdoorambient 250 100 250")
			game.Players:Chat("music 6554661697")
		elseif choice == "2" then
			game.Players:Chat("time -")
			game.Players:Chat("fogend 600")
			game.Players:Chat("fogcolor 300 0 800")
			game.Players:Chat("music 2200651887")
		elseif choice == "3" then
			game.Players:Chat("time -")
			game.Players:Chat("fogend 25")
			game.Players:Chat("fogcolor 255 255 51")
			game.Players:Chat("music 2590490779")
		elseif choice == "4" then
			game.Players:Chat("time 0")
			game.Players:Chat("fogcolor 0 0 0")
			game.Players:Chat("fogend 25")
			game.Players:Chat("music 143382469")
		elseif choice == "5" then
			game.Players:Chat("fogend 75")
			game.Players:Chat("fogcolor 0 155 255")
			game.Players:Chat("music 1137959605")
		elseif choice == "6" then
			game.Players:Chat("time -")
			game.Players:Chat("fogend 46")
			game.Players:Chat("fogcolor 250 83 255")
			game.Players:Chat("music 3650040936")
		elseif choice == "7" then
			game.Players:Chat("time -")
			game.Players:Chat("fogend 1000")
			game.Players:Chat("fogcolor 37 355 55")
			game.Players:Chat("music 6741702853")
		else
			notification('No Choice Named > '..choice)
		end
	end
end)
Spawn(function()
	while true do
		fastwait()
		while true do
			local color = game:GetService("TweenService"):Create(rainbow_part, TweenInfo.new(rspeed), {Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))})
			color:Play()
			wait(rainbow_speed)
		end
		if spam_verification == true then
			game.Players:Chat(spam_command)
		end
		if antiabusegears == true then
			for i, player in pairs(game:GetService("Players"):GetPlayers()) do
				if player.Character then
					if player.Character:FindFirstChild("SeaThemedCrossbow") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("respawn "..plrname))
						game.Players:Chat(("block "..plrname))
						wait(0.28)
					end
					if player.Character:FindFirstChild("DaggerOfShatteredDimensions") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("respawn "..plrname))
						game.Players:Chat(("block "..plrname))
						wait(0.28)
					end
					if player.Character:FindFirstChild("SeaThemedCrossbow") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("respawn "..plrname))
						game.Players:Chat(("block "..plrname))
						wait(0.28)
					end
					if player.Character:FindFirstChild("PortableJustice") then
						local plrname = player.Name
						game.Players:Chat(("ungear "..plrname))
						game.Players:Chat(("respawn "..plrname))
						game.Players:Chat(("block "..plrname))
						wait(0.28)
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
		if perm == true then
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
					fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 1)
				end
			end
		end
		if antijailgearban == true then
			if game.Players.LocalPlayer.Character:FindFirstChild("Part") then
				game.Players.LocalPlayer.Character:FindFirstChild("Part"):Destroy()
				fastwait()
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
			end
		end
		if antigrayscale == true then
			if game.Workspace.CurrentCamera:FindFirstChild("GrayScale") then
				game.Workspace.CurrentCamera:FindFirstChild("GrayScale"):Destroy()
			end
		end
		if antikill == true then
			if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
				game.Players:Chat("reset me")
			end
		end
		if anti2pads == true then
			for i,v in pairs(game.Players:GetChildren()) do
				local times = 0
				for i,pad in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetDescendants()) do
					if pad.Name == v.Name.."'s admin" then
						times = times + 1
					end
				end
				if times >= 2 then
					game.Players:Chat(prefix.."hint One pad only !")
					game.Players:Chat("respawn "..v.Name)
					if game.Workspace.Terrain["_Game"].Admin.Regen then
						fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
						fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 1)
					end
					wait(0.25)
					game.Players:Chat("block "..v.Name)
				end
			end
		end
		if antijail == true then
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name.."'s jail") then
				game.Players:Chat("unjail me")
			end
		end
		if mymusiconly == true then
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				if not game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..mymusiconly_ID then
					game.Players:Chat("music "..mymusiconly_ID)
					wait(0.5)
				end
			end
			if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				game.Players:Chat("music "..mymusiconly_ID)
				wait(0.5)
			end
		end
	end
end)
RunService.RenderStepped:Connect(function()
	if antipads == true then	
		local LocalPlayer = game.Players.LocalPlayer
		local PlrChar = workspace:WaitForChild(LocalPlayer.Name)
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
			firetouchinterest(PlrChar["Left Leg"], v.Head, 0)
			firetouchinterest(PlrChar["Left Leg"], v.Head, 1)
			wait()
		end
	else
		fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
	end
	for i,player in pairs(players_kicked) do
		if game.Players:FindFirstChild(player) then
			if game.Workspace[player] then
				if string.sub(player.Name, 0, 3) == "me_" then
					game.Players:Chat('punish others')
					for i,user in pairs(game.Players:GetPlayers()) do
						if not string.sub(user.Name, 0, 3) == "me_" then
							game.Players:Chat('unpunish '..user)
						end
					end
				else
					game.Players:Chat('punish '..player)
					wait(1)
				end
			else
				-- pass
			end
		end
	end
end)
function shazam_gui()
	loadstring(game:HttpGet("https://pastebin.com/raw/c8GmTPQ1"))()
end
function shazam_main()
	game.Players:Chat('pesos me')
end
Spawn(function()
	game.Players:Chat(prefix.."perm")
	shazam_gui()
	shazam_main()
	notification('For Reopen Gui, Press R')
end)


