--[[
 ██████╗ ██╗   ██╗██╗
██╔════╝ ██║   ██║██║
██║  ███╗██║   ██║██║
██║   ██║██║   ██║██║
╚██████╔╝╚██████╔╝██║
 ╚═════╝  ╚═════╝ ╚═╝
                     
]]--
local lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/DaFrenchTokio/TokonLibraryUiRoblox_lua/main/version_v2_06.lua'),true))()
local shazam = lib:SpawnMain('Shazam', '3')
shazam:SpawnKeyMain('v')
shazam:SpawnCategory('You')
shazam:SpawnCategory('Server')
--[[ You ]]--
--[[ Servers ]]--
shazam:SpawnButton('Rejoin Server', 'Server', function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	notification("Trying To Rejoin The Game")
end)
shazam:SpawnButton('Server Hop', 'Server', function()
    while true do
        wait(0.5)
        local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
        local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
        for _, s in pairs(ServersToTP.data) do
            if s.playing ~= s.maxPlayers then
                TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
            end
        end
    end
end)
--[[
███╗   ███╗ █████╗ ██╗███╗   ██╗
████╗ ████║██╔══██╗██║████╗  ██║
██╔████╔██║███████║██║██╔██╗ ██║
██║╚██╔╝██║██╔══██║██║██║╚██╗██║
██║ ╚═╝ ██║██║  ██║██║██║ ╚████║
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝
                                
]]--
local prefix = "." -- prefix of local player commands
local config = {
	perm = shazam:SpawnToggle('Perm', 'You', true),
    join_notification = shazam:SpawnToggle('Join Notification', 'You', false), -- You are Notified from all users joining the game.
    c_system_notification = shazam:SpawnToggle('/c system Notification', 'You', false), -- You Are Notified From all users using "/c system"
    logs_notification = shazam:SpawnToggle('Chatlogs Notification', 'You', false), -- You Are Notified From All users using logs
    players_perm = shazam:SpawnToggle('Everyone is admin', 'You', false), -- When Someone Join, He's Admin By You.
    players_kick = shazam:SpawnToggle('Everyone is kicked', 'You', false), -- When Someone Join, He's Kicked By You
    antiabusegears = shazam:SpawnToggle('Anti abuse gears', 'You', true), -- If someone have specific abuse gears, the inventory will be reseted
    antigrayscale = shazam:SpawnToggle('Anti grayscale', 'You', true), -- Anti DIO Stop Time
    antikill = shazam:SpawnToggle('Anti kill', 'You', false), -- Anti Kill
    antijail = shazam:SpawnToggle('Anti jail', 'You', false), -- Anti Jail
    antipads = shazam:SpawnToggle('Anti pads', 'You', true), -- Anticrash Not Perm Bot. ( Perm Crasher not working, Need Regen Buttons )
    anticrashVG = shazam:SpawnToggle('Anti vampire crash', 'You', true), -- Anti Vampire Crash 
    antivoid = shazam:SpawnToggle('Anti void', 'You', true), -- Anti Fall In Void
    antiattach = shazam:SpawnToggle('Anti attach', 'You', false), -- Anti Users Attaching to something
    anti2pads = shazam:SpawnToggle('Anti abuse pads', 'You', false), -- Players Can't get more than 1 pad
    lowpc = shazam:SpawnToggle('Low Pc Performance', 'You', false), 
    mymusiconly = shazam:SpawnToggle('Your music only', 'You', false), 
    mymusiconly_ID = 0,
	shazamlogs = shazam:SpawnToggle('Print every message in console', 'You', false)
}
local main = {
    detect = false,
    move_verification = false,
    spam_verification = false,
    spam_command = "None",
    Musiclist_Check = false,
    v1 = "PaintPart",
    rainbow_floor = false,
    rainbow_pads = false,
    rainbow_obbykill = false,
    rainbow_obbybox = false,
    rainbow_speed = 0.5,
    rainbow_part = Instance.new("Part", game.Workspace),
    shazamlogs = true,
    active_gconsole = false,
    infinitejump = true,
    Players = game:GetService("Players"),
    Mouse = game.Players.LocalPlayer:GetMouse(),
    RunService = game:GetService("RunService")
}
players_bannedpads = {}
players_vip = {}
players_cdadmin = {}
players_kicked = {}
players_shazam = {}
shazamcommands = {
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
--[[
    ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗    ███╗   ███╗ █████╗ ██╗███╗   ██╗    
    ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝    ████╗ ████║██╔══██╗██║████╗  ██║    
    █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗    ██╔████╔██║███████║██║██╔██╗ ██║    
    ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║    ██║╚██╔╝██║██╔══██║██║██║╚██╗██║    
    ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║    ██║ ╚═╝ ██║██║  ██║██║██║ ╚████║    
    ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝    
                                                                                                                      
]]--
local functionmain = {}
function functionmain:Chat(t)
   local v = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
   v:SetTextFromInput(t)
   game.Players:Chat(t)
   v:SetTextFromInput(v.Text)
end
function notification(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Shazam"; 
		Text = msg;
		Icon = "rbxthumb://type=Asset&id=9269935485&w=150&h=150",
		Duration = 5;
	})
end
function fastwait()
	if config.lowpc == true then
		wait(0.029)
	else
		main.RunService.Heartbeat:Wait()
	end
end
function gconsole(text_console)
	print('Gconsole not working for moment')
end
function stoprainbow()
	main.rainbow_floor = false
	main.rainbow_pads = false
	main.rainbow_obbykill = false
	main.rainbow_obbybox = false
end
function stopalltasks()
	notification("Stopped all tasks")
    stoprainbow()
	main.spam_verification = false
	main.detect = false
end
function sendmsg(message)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
end
function player_event(player)
	local playr = player.Name
	if string.sub(playr:lower(), 0, 3) == "me_" or string.sub(playr:lower(), 0, 8) == "friends_" or string.sub(playr:lower(), 0, 7) == "others_" then
		functionmain:Chat(prefix..'kick '..player.Name)
		functionmain:Chat(prefix..'hint Players starting with me in their username will be kicked')
	end
	if config.players_kick.Value == true then
		functionmain:Chat(prefix..'kick '..player.Name)
	end
	if config.players_perm.Value == true then
		functionmain:Chat(prefix..'cdadmin '..player.Name)
	end
	player.Chatted:Connect(function(msg)
		for i,adminplayer in pairs(players_cdadmin) do
			if player.Name == adminplayer then
				local command = string.gsub(msg:lower(), "me", player.Name)
				if string.sub(command, 1, 1) == ":" then
					command = ""
					functionmain:Chat("pm "..player.Name.." your command Contains a : at the start of it, please dont.")
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
					functionmain:Chat('size '..after)
				end
				if string.sub(command, 1, 7) == "freeze " then
					wait(2)
					local afect = string.sub(command, 8)
					functionmain:Chat('freeze '..afect)
				end
				if string.sub(command, 1, 6) == "music " then
					functionmain:Chat("pm "..player.Name.." Use musi <id> instead of music")
				end
				if string.sub(command, 1, 5) == "musi " then
					local MUSIC = string.sub(command, 6)
					functionmain:Chat("music "..MUSIC)
				elseif string.sub(command, 1, 11) == "removejails" then
					functionmain:Chat("removejails")
				elseif string.sub(command, 1, 10) == "unjail all" then
					functionmain:Chat("removejails")
				elseif string.sub(command, 1, 1) == "m" then
					command = ""
				elseif string.sub(command, 1, 2) == "m " then
					local message = string.sub(command, 3)
					functionmain:Chat('blind all')
					functionmain:Chat('h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'..message)
					functionmain:Chat('h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'..message)
					functionmain:Chat('h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'..message)
					wait(5)
					functionmain:Chat('unblind all')
					notification('This message was from '..player.Name)
				elseif string.sub(command, 1, 2) == "message " then
					local message = string.sub(command, 10)
					functionmain:Chat('m '..player.Name..'sec: '..message)
				elseif string.sub(command, 1, 2) == "h " then
					local message = string.sub(command, 3)
					functionmain:Chat(prefix..'hint '..player.Name..'sec: '..message)
				elseif string.sub(command, 1, 12) == "jumppower me" then
					local JPP = string.sub(command, 14)
					functionmain:Chat("jumppower "..player.Name.." "..JPP)
				elseif string.sub(command, 1, 7) == "name me" then
					local NAME = string.sub(command, 9)
					functionmain:Chat("name "..player.Name.." "..NAME)
				elseif string.sub(command, 1, 3) == "pm " then
					functionmain:Chat("pm "..player.Name.." private message is deprecated")
				elseif string.sub(command, 1, 5) == "hint " then
					local message = string.sub(command, 6)
					functionmain:Chat(prefix..'hint '..player.Name..'sec: '..message)
				elseif string.sub(command, 1, 4) == "logs" then
					functionmain:Chat("pm "..player.Name.." You cant use 'logs' sorry!")
				elseif string.sub(command, 1, 4) == "cmds" then
					functionmain:Chat("pm "..player.Name.." You cant use 'commands' sorry!")
				elseif string.sub(command, 1, 8) == "commands" then
					functionmain:Chat("pm "..player.Name.." You cant use 'commands' sorry!")
				elseif string.sub(command, 1, 9) == "musiclist" then
					functionmain:Chat("pm "..player.Name.." You cant use 'musiclist' sorry!")
				elseif string.sub(command, 1, 11) == "packagelist" then
					functionmain:Chat("pm "..player.Name.." You cant use 'packagelist' sorry!")
				else
					functionmain:Chat(command)
				end
			end
		end
		for i,vipplayer in pairs(players_vip) do
			if player.Name == vipplayer then
				local command = string.gsub(msg:lower(), "me", player.Name)
				if string.sub(command, 1, 1) == prefix then
					functionmain:Chat(command)
				end
			end
		end
		if config.antiattach.Value == true then
			if player.Character:FindFirstChild("IvoryPeriastron") or string.sub(msg:lower(),0,8) == "unpunish" or string.sub(msg:lower(),0,9) == ":unpunish" or string.sub(msg:lower(),0,3) == "sit" or string.sub(msg:lower(),0,4) == ":sit" or string.sub(msg:lower(),0,4) == "stun" or string.sub(msg:lower(),0,5) == ":stun" then
				if player.Name ~= game.Players.LocalPlayer.Name then
					functionmain:Chat("respawn "..player.Name)
				end
			end
		end
		if config.shazamlogs.Value == true then
			if string.sub(msg:lower(),1,5) == "euros" then
				msg = ""
			elseif string.sub(msg:lower(),1,8) == "pesos me" then
				msg = ""
			elseif string.sub(msg:lower(),1,6) == "sec me" then
				msg = ""
			else
				print("["..player.Name.."]: "..msg)
			end
		end
		if string.sub(msg:lower(),1,6) == "handes" then
			game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
				Text = "Shortcutv1Chat ["..player.Name.."]: "..string.sub(msg,8);
				TextStrokeTransparency = 0.75;
				Font = Enum.Font.SourceSansBold;
				Color = Color3.new(128,0,0);
				FontSize = Enum.FontSize.Size18;
			})
		end
		if string.sub(msg:lower(),1,5) == "euros" then
			game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
				Text = "["..player.Name.."] - Shazam: "..string.sub(msg,7);
				Font = Enum.Font.SourceSansBold;
				Color = Color3.new(0.984314, 1, 0.0235294);
				FontSize = Enum.FontSize.Size18;
			})
		end
		if string.sub(msg:lower(),1,8) == "pesos me" then
			-- pesos me = Player respond im using it to
			if player.Name == game.Players.LocalPlayer.Name then
				notification('Thanks For Using Shazam')
			else
				notification(player.Name..' using shazam')
				functionmain:Chat('sec me')
			end
		end
		if string.sub(msg:lower(),1,6) == "sec me" then
			-- sec me = Player saying im using shazam
			if player.Name ~= game.Players.LocalPlayer.Name then
				notification(player.Name..' using shazam')
			end
		end
		if string.sub(msg:lower(), 0, 9) == "/c system" then
			if config.c_system_notification.Value == true then
				if player.Name == game.Players.LocalPlayer.Name then
					notification("You can use /c system !")
				else
					notification(player.Name.." using /c system !")
				end
			end
		end
		if string.sub(msg:lower(), 0, 4) == "logs" or string.sub(msg:lower(), 0, 5) == ":logs" or string.sub(msg:lower(), 0, 6) == "::logs" then
			if config.logs_notification.Value == true then
				if player.Name == game.Players.LocalPlayer.Name then
					notification("You are using logs")
				else
					notification(player.Name.." using logs")
				end
			end
		end
	end)
end
function Rainbowpart(choice)
    local locatepart = nil
	fastwait()
    functionmain:Chat("gear me 000000000000000000000018474459")
    wait(1)
    game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
    if choice == 1 then
		locatepart = game:GetService("Workspace").Terrain["_Game"].Workspace.Baseplate
        main.rainbow_floor.Value = true
		function loop()
			while main.rainbow_floor.Value == true do
				fastwait()
				game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = locatepart, Color = rainbow_part.Color})
			end
		end
		coroutine.wrap(loop)()
		repeat wait() until main.rainbow_floor.Value == false
		game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:Disconnect()
	elseif choice == 2 then
        main.rainbow_pads.Value = true
		function loop()
			while main.rainbow_pads.Value == true do
				fastwait()
				for i,vpart in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetDescendants()) do
					game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = vpart, Color = rainbow_part.Color})
				end
			end
		end
		coroutine.wrap(loop)()
		repeat wait() until main.rainbow_pads.Value == false
		game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:Disconnect()
	elseif choice == 3 then
		main.rainbow_obbykill.Value = true
		function loop()
			while main.rainbow_obbykill.Value == true do
				fastwait()
				for i,vpart in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetDescendants()) do
					game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = vpart, Color = rainbow_part.Color})
				end
			end
		end
		coroutine.wrap(loop)()
		repeat wait() until main.rainbow_obbykill.Value == false
		game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:Disconnect()
	elseif choice == 4 then
		main.rainbow_obbybox.Value = true
		function loop()
			while main.rainbow_obbybox.Value == true do
				fastwait()
				for i,vpart in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
					game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = vpart, Color = rainbow_part.Color})
				end
			end
		end
		coroutine.wrap(loop)()
		repeat wait() until main.rainbow_obbybox.Value == false
		game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).PaintBucket:Disconnect()
	else
		notification('Error | Argument > '..choice)
	end
end
function Movepart_skydive(locatepart)
	fastwait()
	if locatepart then
		if main.move_verification == true then
			notification('Moving Already Something')
		elseif main.move_verification == false then
			main.move_verification = true
			local lop = true
			coroutine.resume(coroutine.create(function()
				while lop == true do
					fastwait()
					repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
					cf.CFrame = locatepart.CFrame * CFrame.new(-1*(locatepart.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
					fastwait()
					functionmain:Chat("unpunish me "..tostring(math.random(0,100)))	
				end
			end))
			wait(0.3)
			lop = false
			functionmain:Chat("skydive me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me")
			wait(0.2)
			functionmain:Chat("respawn me")
			fastwait()
			notification("Moved "..locatepart.Name)
			main.move_verification = false
		else
			main.move_verification = false
			notification("ERROR | move_verification")
		end
	else
		notification('ERROR | Missing '..locatepart)
	end
end
function Movepart_cframe(PositionCFrame, locatepart)
	fastwait()
	if locatepart then
		if main.move_verification == true then
			notification('Moving Already Something')
		elseif main.move_verification == false then
			main.move_verification = true
			local PosCFrame = "nothing"
			if PositionCFrame == "None" then
				local function ran() return math.random(-20000,-10000) end
				local function runa() return math.random(100,1000) end
				PosCFrame = Vector3.new(runa(), ran(), runa())
			else
				PosCFrame = PositionCFrame
			end
			if game.Players.LocalPlayer.Character.Humanoid then
				workspace.FallenPartsDestroyHeight = 0 / 0
				functionmain:Chat("invis me")
				functionmain:Chat("gear me 108158379")
				wait(0.5)
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('IvoryPeriastron') then
					wait(0.5)
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('IvoryPeriastron') then
						game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.IvoryPeriastron)
						wait(0.5)
					else
						notification("ERROR | Backpack")
					end
					if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PosCFrame)
						wait(1)
						game:GetService("Players").LocalPlayer.Character:FindFirstChild('IvoryPeriastron').Remote:FireServer(Enum.KeyCode.E)
						wait(1)
						repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
						local looping = true
						coroutine.resume(coroutine.create(function()
							while looping do 
								wait(.1) 
								functionmain:Chat('unpunish me') 
							end
						end))
						coroutine.resume(coroutine.create(function()
							while true do
								fastwait()
								game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
								game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = locatepart.CFrame * CFrame.new(-1*(locatepart.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
								if not looping then break end
							end
						end))
						wait(0.3)
						looping = false
						wait(0.5)
						game:GetService("Players").LocalPlayer.Character:FindFirstChild('IvoryPeriastron').Remote:FireServer(Enum.KeyCode.E)
						wait(0.5)
						functionmain:Chat("respawn me")
						notification("Moved "..locatepart.Name)
						wait(2)
					else
						notification("ERROR | Backpack")
					end
				else
					notification("ERROR | Backpack")
				end
			else
				notification("ERROR | Humanoid")
			end
			main.move_verification = false
			workspace.FallenPartsDestroyHeight = -500
		else
			main.move_verification = false
			notification("ERROR | move_verification")
		end
	else
		notification('ERROR | Missing '..locatepart)	
	end
end
--[[
 ██████╗██╗  ██╗ █████╗ ████████╗     ██████╗ ████████╗██╗  ██╗███████╗██████╗ ███████╗
██╔════╝██║  ██║██╔══██╗╚══██╔══╝    ██╔═══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗██╔════╝
██║     ███████║███████║   ██║       ██║   ██║   ██║   ███████║█████╗  ██████╔╝███████╗
██║     ██╔══██║██╔══██║   ██║       ██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗╚════██║
╚██████╗██║  ██║██║  ██║   ██║       ╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║███████║
 ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝        ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝
                                                                                       
]]--
for i,v in pairs(game.Players:GetChildren()) do
	player_event(v)
end
game.Players.PlayerAdded:Connect(function(plr)
	if config.join_notification.Value == true then
		notification(player.Name.." has joined the game")
	end
	player_event(plr)
end)
--[[
 ██████╗██╗  ██╗ █████╗ ████████╗    ██╗   ██╗ ██████╗ ██╗   ██╗
██╔════╝██║  ██║██╔══██╗╚══██╔══╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║
██║     ███████║███████║   ██║        ╚████╔╝ ██║   ██║██║   ██║
██║     ██╔══██║██╔══██║   ██║         ╚██╔╝  ██║   ██║██║   ██║
╚██████╗██║  ██║██║  ██║   ██║          ██║   ╚██████╔╝╚██████╔╝
 ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝          ╚═╝    ╚═════╝  ╚═════╝ 
                                                                
]]--
game.Players.LocalPlayer.Chatted:Connect(function(msg)
	local amount = nil
	if string.sub(msg:lower(), 0, 6) == "music " then
		if config.mymusiconly.Value == true then
			config.mymusiconly_ID = string.sub(msg:lower(), 7)
			notification('Your Music Only ID is : '..config.mymusiconly_ID)
		end
	end
	if string.sub(msg:lower(), 0, 7) == ":music " then
		if config.mymusiconly.Value == true then
			config.mymusiconly_ID = string.sub(msg:lower(), 8)
			notification('Your Music Only ID is : '..config.mymusiconly_ID)
		end
	end
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
				if s.playing ~= s.maxPlayers and game.PlaceId ~= id.game then
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
			functionmain:Chat("gear me 00000000000000000018474459")
			wait(1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
			for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				coroutine.resume(coroutine.create(function()
					if v:IsA("Part") then
						local Partse =
							{
								["Part"] = v,
								["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
							}
						game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
					end
				end))
			end
		else
			notification('No Choice Named > '..choice)
		end
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."taxilag" then
		while true do
			fastwait()
			functionmain:Chat('gear all 253519495')
		end
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."hint" then
		local message = string.sub(msg:lower(), 7)
		functionmain:Chat('h \n\n\n\n\n'..message..'\n\n')
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."ccrash" then
		local str = [[ 









#______________________#
|     Server Crashed   |
#______________________#

                ]]
		functionmain:Chat("blind others")
		functionmain:Chat("h " ..str)
		functionmain:Chat("skydive others")
		wait(1)
		local plrs = game:GetService("Players")
		local plr = plrs.LocalPlayer
		local haha = game.Players
		local key = "Backspace"
		for i = 1,2 do
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("freeze all")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("clone all")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("freeze all")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("clone all")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("freeze all")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("clone all")
		end
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."crash" then
		functionmain:Chat("Blind All")
		local str = [[ 









________________________

        Crashed By Shazam
________________________
        
        Link In Chat

                ]]
		functionmain:Chat("h " ..str)
		functionmain:Chat("music 7391060600")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("-------------","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("tokon.site.xyz/tokio","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("-------------","All")
		wait(1)
		for i = 1,2 do
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("freeze all")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("clone all")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("freeze all")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("clone all")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("size all 0.3")
			functionmain:Chat("freeze all")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("size all 10")
			functionmain:Chat("clone all")
		end
		for i = 1,2 do
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
			functionmain:Chat("freeze all")
			functionmain:Chat("name all Blocked")
			functionmain:Chat("thaw all")
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
		functionmain:Chat(prefix.."super dog "..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player..","..player)
		wait(3)
		functionmain:Chat("kill "..string.sub(msg:lower(), 6))
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."block" then
		local player = string.sub(msg:lower(), 8)
		functionmain:Chat("freeze "..player)
		functionmain:Chat("name "..player.." "..player.." Blocked")
		functionmain:Chat("thaw "..player)
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."move " then
		local choice = string.sub(msg:lower(), 7)
		if choice == "obbybox" or choice == "boxobby" or choice == "obby box" or choice == "box obby" then
			for i,part in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
				Movepart_cframe("None", part)
			end
		elseif choice == "obbybricks" or choice == "bricksobby" or choice == "obby bricks" or choice == "bricks obby" or choice == "brick obby" or choice == "obby brick" or choice == "kill obby" or choice == "obby kill" or choice == "killobby" or choice == "obbykill" then
			functionmain:Chat(prefix..'nok')
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
	if string.sub(msg:lower(), 0, 7) == prefix.."floppa" then
		functionmain:Chat('char me 17513')
		functionmain:Chat('shirt me 9582295098')
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/DaFrenchTokio/Shazam/main/api/floppa.lua'),true))()
		task.wait()
		chat('removehead me')
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."control" then
		local player = string.sub(msg:lower(), 10)
		functionmain:Chat("dog me,"..player)
		functionmain:Chat("tp me "..player)
		wait(1)
		functionmain:Chat("punish me,"..player)
		functionmain:Chat("undog me,"..player)
		wait(0.25)
		functionmain:Chat("unpunish me,"..player)
		functionmain:Chat("invis me")
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."control" then
		local player = string.sub(msg:lower(), 10)
		functionmain:Chat("dog me,"..player)
		functionmain:Chat("tp me "..player)
		wait(1)
		functionmain:Chat("punish me,"..player)
		functionmain:Chat("undog me,"..player)
		wait(0.25)
		functionmain:Chat("unpunish me,"..player)
		functionmain:Chat("invis me")
	end
	if string.sub(msg:lower(), 0, 11) == prefix.."shazamchat" then
		local message = string.sub(msg:lower(), 13)
		functionmain:Chat('euros '..message)
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."shazamplayers" then
		functionmain:Chat('pesos me')
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
		functionmain:Chat("gear me 59190534")
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
		main.detect = true
		local choice = string.sub(msg:lower(), 9)
		if choice == "regenpad" or choice == "padregen" or choice == "regen pad" or choice == "pad regen" or choice == "resetpad" or choice == "padreset" or choice == "reset pad" or choice == "pad reset" or choice == "regen" or choice == "reset" or choice == "rp" or choice == "reg" or choice == "res" then
			coroutine.resume(coroutine.create(function()
				while true do
					fastwait()
					if main.detect == true then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
						if game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild('Regen') then 
							main.detect = false
							fastwait()
							local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
							cf.CFrame = game.Workspace.Terrain["_Game"].Admin.Regen.CFrame
							notification('Regen Pad Has Been Found !')
						end
					end
				end
			end))
		elseif choice == "bp" or choice == "pb" or choice == "baseplate" or choice == "platebase" or choice == "base plate" or choice == "plate base" or choice == "Baseplate" then
			coroutine.resume(coroutine.create(function()
				while true do
					fastwait()
					if main.detect == true then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
						if game.Workspace.Terrain["_Game"].Workspace:FindFirstChild('Baseplate') then 
							main.detect = false
							fastwait()
							local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
							cf.CFrame = game.Workspace.Terrain["_Game"].Workspace.Baseplate.CFrame
							notification('Baseplate Has Been Found !')
						end
					end
				end
			end))
		elseif choice == "adminpads" or choice == "padsadmin" or choice == "pads admin" or choice == "pads dividers" or choice == "adminpad" or choice == "padadmin" or choice == "pad admin" or choice == "admin pad" or choice == "pads" or choice == "pad" then
			coroutine.resume(coroutine.create(function()
				while true do
					fastwait()
					if main.detect == true then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
						if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name.."'s admin") then
							if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
								main.detect = false
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
			end))
		else
			notification('No Choice Named > '..choice)
		end
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."kit " then
		local choice = string.sub(msg:lower(), 6)
		if choice == "jorge" then
			local plr = string.sub(msg:lower(), 12)
			functionmain:Chat('gear '..plr..' 156467990')
			functionmain:Chat('gear '..plr..' 130113146')
			functionmain:Chat('gear '..plr..' 18474459')
			functionmain:Chat('gear '..plr..' 11999247')
			functionmain:Chat('gear '..plr..' 93136802')
			functionmain:Chat('gear '..plr..' 341110180')
			functionmain:Chat('gear '..plr..' 477910063')
			functionmain:Chat('gear '..plr..' 130113061')
			functionmain:Chat('gear '..plr..' 107458483')
			functionmain:Chat('gear '..plr..' 298085284')
			notification("Gived "..plr.." Jorge's kit")
		elseif choice == "lexio" then
			local plr = string.sub(msg:lower(), 12)
			functionmain:Chat('gear '..plr..' 477910063')
			functionmain:Chat('gear '..plr..' 130113146')
			functionmain:Chat('gear '..plr..' 159229806')
			notification("Gived "..plr.." Lexio's kit")
		elseif choice == "tokio" then
			local plr = string.sub(msg:lower(), 12)
			functionmain:Chat('gear '..plr..' 159229806')
			functionmain:Chat('gear '..plr..' 159229806')
			functionmain:Chat('gear '..plr..' 159229806')
			functionmain:Chat('gear '..plr..' 139577901')
			functionmain:Chat('gear '..plr..' 139577901')
			functionmain:Chat('gear '..plr..' 139577901')
			notification("Gived "..plr.." Tokio's kit")
		elseif choice == "coolguy" then
			local plr = string.sub(msg:lower(), 14)
			functionmain:Chat('gear '..plr..' 159229806')
			functionmain:Chat('gear '..plr..' 159229806')
			functionmain:Chat('gear '..plr..' 159229806')
			functionmain:Chat('gear '..plr..' 139577901')
			functionmain:Chat('gear '..plr..' 139577901')
			functionmain:Chat('gear '..plr..' 139577901')
			notification("Gived "..plr.." Coolguy's kit")
		elseif choice == "mega" then
			local plr = string.sub(msg:lower(), 11)
			functionmain:Chat('gear '..plr..' 108158379')
			functionmain:Chat('gear '..plr..' 80661504')
			functionmain:Chat('gear '..plr..' 233520257')
			functionmain:Chat('gear '..plr..' 73829193')
			functionmain:Chat('gear '..plr..' 69499437')
			functionmain:Chat('gear '..plr..' 139577901')
			functionmain:Chat('gear '..plr..' 2544549379')
			functionmain:Chat('gear '..plr..' 120307951')
			functionmain:Chat('gear '..plr..' 99119240')
			functionmain:Chat('gear '..plr..' 93136802')
			functionmain:Chat('gear '..plr..' 80597060')
			functionmain:Chat('gear '..plr..' 159229806')
			functionmain:Chat('gear '..plr..' 77443461')
			notification("Gived "..plr.." The Mega Sword Kit")
		else
			notification('No Choice Named > '..choice)
		end
	end
	if string.sub(msg:lower(), 0, 5) == prefix.."ufo " then
		local plr = string.sub(msg:lower(), 6)
		functionmain:Chat("dog "..plr)
		functionmain:Chat("creeper "..plr)
		functionmain:Chat("removelimbs "..plr)
		functionmain:Chat("paint "..plr.." black")
		functionmain:Chat("name "..plr.." Ufo")
		functionmain:Chat("removehats "..plr)
		functionmain:Chat("spin "..plr)
		wait(0.25)
		functionmain:Chat("fly "..plr)
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."taxi " then
		local plr = string.sub(msg:lower(), 7)
		functionmain:Chat("dog "..plr)
		functionmain:Chat("removelimbs "..plr)
		functionmain:Chat("creeper "..plr)
		functionmain:Chat("name "..plr.." Taxi")
		functionmain:Chat("gold "..plr)
		functionmain:Chat("speed "..plr.." 100")
		functionmain:Chat("god "..plr)
		functionmain:Chat("removehats "..plr)
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
		functionmain:Chat('gear me 4842207161')
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
	if string.sub(msg:lower(), 0, 7) == prefix.."banpad" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,player in pairs(players) do
			stringlower = string.lower(player.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				table.insert(players_bannedpads, player.Name)
				notification("Banned from pads "..player.Name)
			end
		end
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."unbanpad" then
		players = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(players) do
			stringlower = string.lower(v.Name)
			stringsub = string.sub(stringlower,1,#name)
			if name == stringsub then
				for a,b in pairs(players_bannedpads) do
					if b == v.Name then
						table.remove(players_bannedpads, a)
						notification("Unbanned from pads "..v.Name)
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
				functionmain:Chat('pm '..player.Name..' You Are Now Admin')
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
				for a,b in pairs(players_cdadmin) do
					if b == v.Name then
						table.remove(players_cdadmin, a)
						functionmain:Chat('pm '..v.Name..' You Are Now Not Admin')
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
	if string.sub(msg:lower(), 0, 5) == prefix.."perm" then
		config.perm:Set(true)
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."unperm" then
		config.perm:Set(false)
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
		main.spam_verification = false
		stoprainbow()
		main.detect = false
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."super " then
		for i = 1,100 do
			functionmain:Chat(string.sub(msg:lower(), 8))
		end
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."spam " then
		main.spam_command = string.sub(msg:lower(), 7)
		main.spam_verification = true
	end
	if string.sub(msg:lower(), 0, 8) == prefix.."skydive" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
	end
	if string.sub(msg:lower(), 0, 3) == prefix.."to " then
		local choice = string.sub(msg:lower(), 4)
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
		functionmain:Chat("dog "..player)
		functionmain:Chat("size "..player.." 0.3")
		wait(0.25)
		functionmain:Chat("undog "..player)
		functionmain:Chat("hat "..player.." 5973889942")
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."tnt " then
		local player = string.sub(msg:lower(), 6)
		functionmain:Chat("removepants "..player)
		functionmain:Chat("removeshirt "..player)
		functionmain:Chat("paint "..player.." red")
		functionmain:Chat("name "..player.." TNT")
		wait(1)
		functionmain:Chat("bonfire "..player)
		wait(2)
		functionmain:Chat("explode "..player)
	end
	if string.sub(msg:lower(), 0, 6) == prefix.."clean" then
		functionmain:Chat("clr")
		functionmain:Chat("fix")
	end
	if string.sub(msg:lower(), 0, 7) == prefix.."theme " then
		local choice = string.sub(msg:lower(), 8)
		functionmain:Chat("clr")
		functionmain:Chat("fix")
		if choice == "1" then
			functionmain:Chat("time 19")
			functionmain:Chat("outdoorambient 250 100 250")
			functionmain:Chat("music 6554661697")
		elseif choice == "2" then
			functionmain:Chat("time -")
			functionmain:Chat("fogend 600")
			functionmain:Chat("fogcolor 300 0 800")
			functionmain:Chat("music 2200651887")
		elseif choice == "3" then
			functionmain:Chat("time -")
			functionmain:Chat("fogend 25")
			functionmain:Chat("fogcolor 255 255 51")
			functionmain:Chat("music 2590490779")
		elseif choice == "4" then
			functionmain:Chat("time 0")
			functionmain:Chat("fogcolor 0 0 0")
			functionmain:Chat("fogend 25")
			functionmain:Chat("music 143382469")
		elseif choice == "5" then
			functionmain:Chat("fogend 75")
			functionmain:Chat("fogcolor 0 155 255")
			functionmain:Chat("music 1137959605")
		elseif choice == "6" then
			functionmain:Chat("time -")
			functionmain:Chat("fogend 46")
			functionmain:Chat("fogcolor 250 83 255")
			functionmain:Chat("music 3650040936")
		elseif choice == "7" then
			functionmain:Chat("time -")
			functionmain:Chat("fogend 1000")
			functionmain:Chat("fogcolor 37 355 55")
			functionmain:Chat("music 6741702853")
		else
			notification('No Choice Named > '..choice)
		end
	end
end)
game.RunService.RenderStepped:Connect(function()
	if config.antipads.Value == true then	
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
			firetouchinterest(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], v.Head, 0)
			firetouchinterest(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], v.Head, 1)
		end
	end
end)
function kicked()
	while true do
		fastwait()
		for i,player in pairs(players_bannedpads) do
			for i,pad in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetDescendants()) do
				if pad.Name == player.."'s admin" then
					functionmain:Chat("respawn "..player)
					functionmain:Chat("h Sorry "..player.." your banned from pads")
					regen()
					functionmain:Chat("speed "..player.." 0.1")
				end
			end
		end
		for i,player in pairs(players_kicked) do
			if game.Players:FindFirstChild(player) then
				if game.Workspace:FindFirstChild(player) then
					if string.sub(player:lower(), 0, 3) == "me_" or string.sub(player:lower(), 0, 8) == "friends_" or string.sub(player:lower(), 0, 7) == "others_" then
						functionmain:Chat('punish others')
						for i,user in pairs(game.Players:GetPlayers()) do
							local playr = user.Name
							if string.sub(playr:lower(), 0, 3) ~= "me_" or string.sub(playr:lower(), 0, 8) ~= "friends_" or string.sub(playr:lower(), 0, 7) ~= "others_" then
								if user.Name ~= game.Players.LocalPlayer then
									functionmain:Chat('unpunish '..user.Name)
								end
							end
						end
					else
						if game.Players:FindFirstChild(player) then
							functionmain:Chat('punish '..player)
						end
					end
				end
			end
		end
	end
end
function protection()
	while true do
		fastwait()
		if main.spam_verification == true then
			functionmain:Chat(main.spam_command)
		end
		if config.antiabusegears.Value == true then
			for i, player in pairs(game:GetService("Players"):GetPlayers()) do
				if player.Name ~= game.Players.LocalPlayer.Name then
					if player.Character then
						if player.Character:FindFirstChild("SeaThemedCrossbow") then
							local plrname = player.Name
							functionmain:Chat("ungear "..plrname)
							functionmain:Chat("respawn "..plrname)
							functionmain:Chat("block "..plrname)
							wait(0.28)
						end
						if player.Character:FindFirstChild("DaggerOfShatteredDimensions") then
							local plrname = player.Name
							functionmain:Chat("ungear "..plrname)
							functionmain:Chat("respawn "..plrname)
							functionmain:Chat("block "..plrname)
							wait(0.28)
						end
						if player.Character:FindFirstChild("SeaThemedCrossbow") then
							local plrname = player.Name
							functionmain:Chat("ungear "..plrname)
							functionmain:Chat("respawn "..plrname)
							functionmain:Chat("block "..plrname)
							wait(0.28)
						end
						if player.Character:FindFirstChild("PortableJustice") then
							local plrname = player.Name
							functionmain:Chat("ungear "..plrname)
							functionmain:Chat("respawn "..plrname)
							functionmain:Chat("block "..plrname)
							wait(0.28)
						end
					end
				end
			end
		end
		if config.anticrashVG.Value == true then
			for i, player in pairs(game:GetService("Players"):GetPlayers()) do
				if player.Character then
					if player.Character:FindFirstChild("VampireVanquisher") then
						local plrname = player.Name
						functionmain:Chat("ungear "..plrname)
						functionmain:Chat("unsize "..plrname)
						wait(0.28)
					end
					if player.Character:FindFirstChild("HumanoidRootPart") then
						if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
							local plrname = player.Name
							functionmain:Chat("reset "..plrname)
							functionmain:Chat("unclone "..plrname)
							wait(0.28)
						end
					end
				end
			end
		end
		if config.perm.Value == true then
			if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
				if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
					local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
					firetouchinterest(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], pad, 0)
					firetouchinterest(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], pad, 1)
				else
					fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
					fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 1)
				end
			end
		end
		if config.antijailgearban.Value == true then
			if game.Players.LocalPlayer.Character:FindFirstChild("Part") then
				game.Players.LocalPlayer.Character:FindFirstChild("Part"):Destroy()
				fastwait()
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
			end
		end
		if config.antigrayscale.Value == true then
			if game.Workspace.CurrentCamera:FindFirstChild("GrayScale") then
				game.Workspace.CurrentCamera:FindFirstChild("GrayScale"):Destroy()
			end
		end
		if config.antikill.Value == true then
			if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
				functionmain:Chat("reset me")
				fastwait()
			end
		end
		if config.anti2pads.Value == true then
			for i,v in pairs(game.Players:GetChildren()) do
				local times = 0
				for i,pad in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetDescendants()) do
					if pad.Name == v.Name.."'s admin" then
						times = times + 1
					end
				end
				if times >= 2 then
					functionmain:Chat(prefix.."hint One pad only !")
					functionmain:Chat("respawn "..v.Name)
					if game.Workspace.Terrain["_Game"].Admin.Regen then
						fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
						fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 1)
					end
					wait(0.25)
					functionmain:Chat("block "..v.Name)
				end
			end
		end
		if config.antijail.Value == true then
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name.."'s jail") then
				functionmain:Chat("unjail me")
				fastwait()
			end
		end
		if config.mymusiconly.Value == true then
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				if not game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..mymusiconly_ID then
					functionmain:Chat("music "..config.mymusiconly_ID)
					wait(0.5)
				end
			end
			if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				functionmain:Chat("music "..config.mymusiconly_ID)
				wait(0.5)
			end
		end
	end
end
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key:lower() == "f" then
		functionmain:Chat("fly me")
	end
	if key:lower() == "x" then
		game.Players.LocalPlayer.Character:Destroy()
	end
	if key:lower() == "r" then
		functionmain:Chat("reset me")
	end
	if key:lower() == "t" then
		notification("Teleported > Admin Pad")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-20.9241447, 8.59812164, 94.3289948))
	end
end)
coroutine.resume(coroutine.create(function()
	pcall(main)
	functionmain:Chat('sec me')
	functionmain:Chat(prefix.."perm")
	notification('Prefix is '..prefix)
end))
