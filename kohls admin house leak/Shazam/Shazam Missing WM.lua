
-- Credits : credits to Tokio (tokio#1462) / credits to Emmy (Emmy#0377) / credits to Damix ( Damix2131 on Roblox )

local banning = false
local AllowMessages = true -- 
local ToxicProtectedMSG = false -- EPIC custom GUI! (SERVER SIDED)
local Rank = "Lolipop" -- Your custom rank
local allowads = true -- (Clearlogs, Anticrash msg, etc)
local AllowTeleportsToToxicHub = false -- Disabling this will stop all game teleports

function startupScripts()
	game.Players:Chat("!perm")
end

function mods() 

end

local anticrashVG = true -- 
local antijailgearban = false -- 
local antigrayscale = false -- 
local antikill = true -- 
local antijail = true -- 
local mymusiconly = false -- 
local mymusiconly_ID = 0 -- mymusiconly song ID
local antilogs = true -- 
local Superlogs = true -- Every chat /w /t /c /e etc will print into console
local everyonecommands = false -- 
local padsEnforcement = false -- 
local antiattach = false -- 
local antivoid = true -- 

local prefix = "!" 

local fkick = false
local fkickmsg = "!kick "
local fkick_keybind = "k"
local antikick = false -- enabled for protection xd
local antikick_keybind = "p"
local pads_keybind = "n"
local teleport_keybind = "b"
local respawn_keybind = "v"
local reset_keybind = "c"
local forcefield_keybind = "x"
local fly_keybind = "z"
local AttachTO_keybind = "m"
local gravity_keybind = "None" -- Secret keybind
local AttachDelete_keybind = ""
local allowcrash = false
local oofkohlsPmSpam = game:HttpGet("https://pastebin.com/raw/d7eTDKbJ")
local onekspaces = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "
local crashall_Text = onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces

Quotes = {"HaXoR OMG,Toxic Gui,My mom is dad,toxic gui is a shortcut gui but remastered ! "}

local crashall = false
local teskking = false
local Wteskking = "none"
local wkicking = false
local Wwkicking = "none"
local spamming = false
local Wspamming = "nothing"
local mousee = game.Players.LocalPlayer:GetMouse()
local Players = game:GetService("Players")
local mod_Data = nil -- Dont edit this is how the mod gets data like toxics prefix or modules toggled.
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local Stable_Check = false
local v1 = "PaintPart"

mousee.KeyDown:connect(function(key)
	if key:lower() == AttachTO_keybind then
		logn("Attached to object")
		if mousee.Target then
			local target = mousee.Target
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
		end
	end

	if key:lower() == AttachDelete_keybind then
		logn("Attached to object")
		if mousee.Target then
			local target = mousee.Target
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
				game.Players:Chat(prefix..'super skydive me')
				wait(1)
				game.Players:Chat(prefix..'spam tp me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me')
				wait(5)
				game.Players:Chat(prefix..'stop')
				wait(0.25)
				game.Players:Chat('respawn me')
			end
			movepart()
		end
	end

	if key:lower() == fkick_keybind then
		kicking()
	end
	if key:lower() == antikick_keybind then
		antikicking()
	end
	if key:lower() == respawn_keybind then
		game.Players:Chat("respawn me")
	end
	if key:lower() == reset_keybind then
		game.Players:Chat("reset me")
	end
	if key:lower() == forcefield_keybind then
		game.Players:Chat("ff me")
	end
	if key:lower() == gravity_keybind then
		loadstring(game:HttpGet("https://pastebin.com/raw/geUZHr7B"))()
	end
	if key:lower() == fly_keybind then
		game.Players:Chat("fly me")
	end
	if key:lower() == teleport_keybind then
		game.Players:Chat("tp me me me")
	end
	if key:lower() == pads_keybind then
		game.Players:Chat(prefix.."pads")
	end
end)

function kicking()
	fkick = not fkick
	if fkick == true then
		print("Kicking: Enabled")
		logn("Kicking Enabled", "Ok")
	elseif fkick == false then
		print("Kicking: Disabled")
		logn("Kicking Disabled", "Ok")
	end
end

function antikicking()
	antikick = not antikick
	if antikick == true then
		print("AntiCrash: Enabled")
		logn("AntiCrash Enabled", "Ok")
	elseif antikick == false then
		print("AntiCrash: Disabled")
		logn("AntiCrash Disabled", "Ok")
	end
end

function logn(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Toxic Gui"; 
		Text = msg; 
		Duration = 5;
	})
end

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "SnowClan_8342" then
			say("The owner of shortcut has joined the game! (SnowClan_8342)")
		end
	end)
end)

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "34kTokio" then
			say("The owner of Toxic Gui has joined the game! (34kTokio)")
		end
	end)
end)

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "Barks11" then
			say("The owner of Toxic Gui has joined the game! (Barks11)")
		end
	end)
end)

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
			logn("Unable to Locate Server")
		end
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
			logn("Unable to Locate Server")
		end
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."srj" then
		game.Players:Chat(prefix.."rjg 1")
		game.Players:Chat(prefix.."rjg 2")
		game.Players:Chat(prefix.."rjg 3")
		game.Players:Chat(prefix.."rjg 4")
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."sch" then
		gotoToxicHub("Requested", 1) -- Go to toxics main hub for rejoining
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

	if string.sub(msg:lower(), 0, 7) == prefix.."getpos" then
		local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		say("Check console!")
		game.Players:Chat([[music 
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]])
	end


	if string.sub(msg:lower(), 0, 8) == prefix.."stocked" then
		game.Players:Chat("pm/me prepare to stock lag")
		game.Players:Chat("!smi rocket/me")
		game.Players:Chat("stun me")
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(-30.6635914, 1.65911951, 67.7020874)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.1)
		pl.CFrame = location
		wait(1)
		game.Players:Chat("clone me")
		wait(1)
		game.Players:Chat("explode me")
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

	if string.sub(msg:lower(), 0, 8) == prefix.."choice1" then
		local plr = string.sub(msg:lower(), 10)
		game.Players:Chat("gear "..plr.." 45177979")
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
				logn("Banned "..v.Name.." from pads.")
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
						logn("Unbanned "..v.Name.." from pads.")
					end
				end
			end
		end
	end -- table.remove(list1, i)

	if string.sub(msg:lower(), 0, 5) == prefix.."perm" then
		PadCheck = true
		GetPad(msg)
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."nonperm" then
		PadCheck = false
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
		logn("We wont put your camera in the right place for ya xd")
		game.Players:Chat("stun me")
		wait(2.4)
		game.Players:Chat("punish me")
		wait(1.7)
		game.Players:Chat("unpunish me")
		logn("Attached Unless your camera wasn't in the right place xd")
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."tesk " then
		logn("Kicking player (This may take a little bit...)")
		Wteskking = string.sub(msg:lower(), 7)
		teskking = true
	end

	if string.sub(msg:lower(), 0, 2) == prefix.."g " then
		loadstring()
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."stop" then
		logn("Stopped teskker...")
		Wteskking = "none"
		teskking = false
		Wwkicking = "none"
		wkicking = false
		spamming = false
		crashall = false
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."clicktp" then
		logn("Gave you the clicktp tool")
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
		logn("Cleared!")
		for i = 1,100 do
			game.Players:Chat("ff "..Quotes[math.random(1, #Quotes)])
		end
		wait(0.05)
		if allowads == true then
			game.Players:Chat("unff all")
		end
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."super " then
		logn("Spamming!")
		for i = 1,100 do
			game.Players:Chat(string.sub(msg:lower(), 8))
		end
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."traplogs" then
		logn("WARNING DONT CHECK LOGS!")
		for i = 1,100 do
			game.Players:Chat("ff "..oofkohlsPmSpam)
		end
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."spam " then
		logn("Spamming!")
		Wspamming = string.sub(msg:lower(), 7)
		spamming = true
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."lagall" then
		logn("Warning this can be powerful and can only be aimmed at everyone...")
		crashall = true
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."pads" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."skydive" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."house" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
	end -- CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))

	if string.sub(msg:lower(), 0, 6) == prefix.."spawn" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."reg" then
		logn("Pads regenerated!")
		regen()
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."por" then
		game.Players:Chat("name all You Are Protected")
		game.Players:Chat("clone all")
		wait(1.50)
		game.Players:Chat(":h Protected Server")
		game.Players:Chat(":h Protected Server")
		game.Players:Chat(":h Protected Server")
		game.Players:Chat(":h Protected Server")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Protected Server By Toxic Gui","All")
		wait(3)
		game.Players:Chat("unname all")
		game.Players:Chat("unjail all")
		game.Players:Chat("unfreeze all")
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."shutdown" then
		logn("Shuting down server...")
		game.Players:Chat("h シ Server Disconnected シ Join another server")
		game.Players:Chat(":m シ")
		wait(1.50)
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
		-- gotoToxicHub("Server shutdown", 10) -- Go to toxics main hub for rejoining
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."virus" then
		game.Players:Chat(":h Backdoor Injected ! Server Is Broken")
		game.Players:Chat("m/ virus シ")
		game.Players:Chat("m/ virus シ")  
		game.Players:Chat("m/ virus シ")  
		game.Players:Chat("m/ virus シ")                  
		game.Players:Chat("music 135156391")
		wait(2)
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
		logn("Explode The Server")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("⬜⬜⬜⬜⬜⬜⬜","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("⬜⬛⬛⬛⬛⬛⬜","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("⬜⬜⬜⬛⬜⬜⬜","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("⬜⬜⬜⬛⬜⬜⬜","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("⬜⬜⬜⬛⬜⬜⬜","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("⬜⬜⬜⬜⬜⬜⬜","All")
		game.Players:Chat("h シ Server Disconnected シ SUS")
		game.Players:Chat("music 4071337577")
		wait(1.75)
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
		-- gotoToxicHub("Server shutdown", 10) -- Go to toxics main hub for rejoining
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."fastboom" then
		logn("Shutdown Server")
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
		-- gotoToxicHub("Server shutdown", 10) -- Go to toxics main hub for rejoining
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."crash" then
		if string.sub(msg:lower(), 0, 9) ==  prefix.."crashall" then
			logn("We've infact moved this command and its now called lagall :)")
		else
			logn("Just hold the tool your given xd (Expires in 10 seconds.)")
			game.Players:Chat("gear me 00000000000000000094794847")
			allowcrash = true
			Spawn(function()
				wait(10)
				allowcrash = false
				logn("VampireVanquisher Expired.")
			end)
			while true do
				if game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher") then
					wait(0.25)
					for i = 1,100 do
						game.Players:Chat("size me 0000000000000000000.3")
					end
					game.Players:Chat("size me .3")
					game.Players:Chat("size me .3")
					game.Players:Chat("size me .3")
					game.Players:Chat("freeze me")
					game.Players:Chat("size me 10")
					game.Players:Chat("size me 10")
					game.Players:Chat("size me 10")
					game.Players:Chat("clone me")
					gotoToxicHub("Server CRASHED", 1) -- Go to toxics main hub for rejoining
					break
				end
				wait(0.05)
				if allowcrash == false then
					break
				end
			end
		end
	end

	if string.sub(msg:lower(), 0, 11) == prefix.."bind fkick" then
		logn("fkick is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		fkick_keybind = string.sub(msg:lower(), 13, 13)
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."bind antikick" then
		logn("antikick is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		antikick_keybind = string.sub(msg:lower(), 16, 16)
	end

	if string.sub(msg:lower(), 0, 13) == prefix.."bind respawn" then
		logn("respawn is now bound to '"..string.sub(msg:lower(), 15, 15).."'")
		respawn_keybind = string.sub(msg:lower(), 15, 15)
	end

	if string.sub(msg:lower(), 0, 11) == prefix.."bind reset" then
		logn("reset is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		reset_keybind = string.sub(msg:lower(), 13, 13)
	end

	if string.sub(msg:lower(), 0, 16) == prefix.."bind forcefield" then
		logn("forcefield is now bound to '"..string.sub(msg:lower(), 18, 18).."'")
		forcefield_keybind = string.sub(msg:lower(), 18, 18)
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."bind fly" then
		logn("fly is now bound to '"..string.sub(msg:lower(), 11, 11).."'")
		fly_keybind = string.sub(msg:lower(), 11, 11)
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."bind teleport" then
		logn("teleport is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		teleport_keybind = string.sub(msg:lower(), 16, 16)
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."musicbox" then
		logn("Gave player a boombox!")
		local player = string.sub(msg:lower(), 11)
		if player ~= "" then
			game.Players:Chat("gear "..player.." 000000000000000000212641536")
		else
			game.Players:Chat("gear me 000000000000000000212641536")
		end
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."bind pads" then
		logn("pads is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		pads_keybind = string.sub(msg:lower(), 13, 13)
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."bind attachto" then
		logn("attachto is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		AttachTO_keybind = string.sub(msg:lower(), 16, 16)
	end

	if string.sub(msg:lower(), 0, 4) == prefix.."bok" then
		logn("Now making person bok...")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 6)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6))
		wait(3)
		game.Players:Chat("kill "..string.sub(msg:lower(), 6))
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."tkick" then
		logn("Atempting to kick (Fixed, ty AmericanDisgrace :)")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 8)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8))
		wait(3)
		game.Players:Chat("kill "..Luser)
		wait(0.09)
		game.Players:Chat(prefix.."tesk "..string.sub(msg:lower(), 8))
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."trap" then
		logn("Trapped person!")
		game.Players:Chat("freeze "..string.sub(msg:lower(), 7))
		game.Players:Chat("name "..string.sub(msg:lower(), 7).." ")
		game.Players:Chat("thaw "..string.sub(msg:lower(), 7))
	end

	if string.sub(msg:lower(), 0, 3) == prefix.."ds" then
		logn("Setting up dancing swords script!")
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
			logn("{Move.lua} Moving Obby Box")
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
			logn("{Move.lua} Done Moving Obby Box")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	end



	if string.sub(msg:lower(), 0, 15) == prefix.."moveobbybricks" then
		game.Players:Chat(prefix.."nok")
		wait(0.05)
		if Stable_Check == false then
			logn("{Move.lua} Moving Obby Kill Bricks")
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
			logn("{Move.lua} Done Moving Obby Kill Bricks")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	end	

	if string.sub(msg:lower(), 0, 19) == prefix.."movebuildingbricks" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Building Bricks")
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
					game.Players:Chat("skydive me")
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Building Bricks")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	end

	if string.sub(msg:lower(), 0, 18) == prefix.."moveadmindividers" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Dividers")
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
					game.Players:Chat("skydive me")
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Admin Dividers")
		else
			logn("{Move.lua} Already Moving, Please Wait")
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

	if string.sub(msg:lower(), 0, 12) == prefix.."createplace" then
		if Stable_Check == false then
			logn("Moving Floor")
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
			Stable_Check = false
			logn("Done Creating Place")
		else
			logn("Already Moving, Please Wait")
		end
	end

	-- -- -- -- -- -- -- -- -- 

	if string.sub(msg:lower(), 0, 10) == prefix.."movehouse" then
		if Stable_Check == false then
			logn("{Move.lua} Moving House")
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
					game.Players:Chat("skydive me")
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving House")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."movepads" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Pads")
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
						game.Players:Chat("skydive me")
						wait(0.2)
						game.Players:Chat("respawn me")
						wait(0.2)
					end
				end
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Admin Pads")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	end

	if string.sub(msg:lower(), 0, 13) == prefix.."moveresetpad" then
		if Stable_Check == false then
			logn("Moving Admin Reset Pad")
			Stable_Check = true
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
				game.Players:Chat("!smi skydive me")
				wait(2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			logn("Done Moving Admin Reset Pad")
		else
			logn("Already Moving, Please Wait")
		end
	end


	if string.sub(msg:lower(), 0, 14) == prefix.."movebaseplate" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Basteplate")
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
				game.Players:Chat("skydive me")
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Basteplate")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	end



	if string.sub(msg:lower(), 0, 15) == prefix.."setspawnpoints" then
		local playername = string.sub(msg:lower(), 17)

		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Reset Pad")
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
			logn("{Move.lua} Done Moving Admin Reset Pad")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Reset Pad")
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
			logn("{Move.lua} Done Moving Admin Reset Pad")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Reset Pad")
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
			logn("{Move.lua} Done Moving Admin Reset Pad")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	end



	if string.sub(msg:lower(), 0, 15) == prefix.."findresettoxic" then
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(-6.99999332, 202026.609, 94.6249084)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.1)
		pl.CFrame = location
		logn("Done Trying Find Reset pad Location Of Toxic GUI")
	end


	if string.sub(msg:lower(), 0, 18) == prefix.."findresetshortcut" then
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(-6.38259602, 12037.6162, 94.9227524)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.1)
		pl.CFrame = location
		logn("Done Trying Find Reset pad Location Of Shortcut GUI")
	end


	if string.sub(msg:lower(), 0, 13) == prefix.."findresetpad" then
		local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		cf.CFrame = Admin_Folder.Regen.CFrame
		logn("Done Trying Find Reset Pad")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."detect" then
		game.Players:Chat("!smi !skydive me")
		wait(4.0)
		game.Players:Chat("!spam !skydive me")
		wait(3.0)
		game.Players:Chat("!stop")                
		logn("Done | You can try to regen for see if it's working")
	end


	if string.sub(msg:lower(), 0, 7) == prefix.."detectpower2" then
		game.Players:Chat("!spam skydive me,me")
		wait(10.0)
		game.Players:Chat("!stop")
		logn("Done | You can try to regen for see if it's working")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."detectpower3" then
		game.Players:Chat("!rrocket me")
		wait(2)
		game.Players:Chat("!spam skydive me")
		wait(10.0)
		game.Players:Chat("!stop")
		logn("Done | You can try to regen for see if it's working")
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

	if string.sub(msg:lower(), 0, 6) == prefix.."wkick" then
		local name = string.sub(msg:lower(), 8)
		Wwkicking = name
		wkicking = true
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."disablerc" then
		logn("Click 1 RC will now be disabled for EVERYONE!")
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
				logn("Whitelisted "..v.Name)
			end
		end
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."ignore" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Ignore, v.Name)
				logn("Ignoring "..v.Name)
			end
		end
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."unignore" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(ignore) do
					if b == v.Name then
						table.remove(Ignore, a)
						logn("Unignored "..v.Name)
					end
				end
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
						logn("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	end

	if string.sub(msg:lower(), 0, 6) == prefix.."admin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 8)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Admin, v.Name)
				logn("Whitelisted "..v.Name)
			end
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."unadmin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 10)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Admin) do
					if b == v.Name then
						table.remove(Admin, a)
						logn("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."allpads" then
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
	end


	if string.sub(msg:lower(), 0, 7) == prefix.."set jp" then
		local Power = tonumber(string.sub(msg:lower(), 9))
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Power
	end

	if string.sub(msg:lower(), 0, 3) == prefix.."sm" then
		local box = string.sub(msg:lower(), 5)
		hint("Server message", box)
	end

	if string.sub(msg:lower(), 0, 11) == prefix.."set lagall" then
		local Power = tonumber(string.sub(msg:lower(), 15)) -- get the power amount as an int.
		logn("Power is now being set to "..string.sub(msg:lower(), 15))
		logn("Calculating, please wait.")
		local str1 = ""
		for i = Power,1,-1 do 
			str1 = str1..onekspaces.."g"
		end
		crashall_Text = str1
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."antidelay" then
		antidelay = tonumber( string.sub(msg:lower(), 12))
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."color all all" then
		local Num = tonumber(string.sub(msg:lower(), 16))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(Num,Num,Num)
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end

	if string.sub(msg:lower(), 0, 14) == prefix.."color all red" then
		local Num = tonumber(string.sub(msg:lower(), 16))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(Num,0,0)
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end

	if string.sub(msg:lower(), 0, 17) == prefix.."color all green" then
		local Num = tonumber(string.sub(msg:lower(), 18))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(0,Num,0)
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end

	if string.sub(msg:lower(), 0, 15) == prefix.."color all blue" then
		local Num = tonumber(string.sub(msg:lower(), 17))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(0,0,Num)
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end

	if string.sub(msg:lower(), 0, 17) == prefix.."color all random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then !spam it")
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

	if string.sub(msg:lower(), 0, 19) == prefix.."color house random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then !spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
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

	if string.sub(msg:lower(), 0, 24) == prefix.."color obbybricks random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then !spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
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

	if string.sub(msg:lower(), 0, 18) == prefix.."color obby random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then !spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
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

	if string.sub(msg:lower(), 0, 7) == prefix.."tool 1" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000079446473")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."tool 2" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 000000000000000000236438668")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."tool 3" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000018474459")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."tool 4" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 000000000000000000124126528")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."tool 5" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000035683911")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 1" then
		game.Players:Chat("music 0000000000000000001374378794")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 2" then
		game.Players:Chat("music 000000000000000000419365372")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 3" then
		game.Players:Chat("music 0000000000000000002631240760")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 4" then
		game.Players:Chat("music 0000000000000000004904305258")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 5" then
		game.Players:Chat("music 0000000000000000005682636501")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 6" then
		game.Players:Chat("music 0000000000000000004662452515")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 7" then
		game.Players:Chat("music 0000000000000000005648499584")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 8" then
		game.Players:Chat("music 0000000000000000002037521028")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."play 9" then
		game.Players:Chat("music 0000000000000000006215456978")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 10" then
		game.Players:Chat("music 000000000000000000142376088")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 11" then
		game.Players:Chat("music 0000000000000000004907888572")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 12" then
		game.Players:Chat("music 0000000000000000005878555132")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 13" then
		game.Players:Chat("music 0000000000000000002230668518")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 14" then
		game.Players:Chat("music 000000000000000000621545697")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 15" then
		game.Players:Chat("music 0000000000000000002256171111")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 16" then
		game.Players:Chat("music 000000000000000000213336468")
	end

	if string.sub(msg:lower(), 0, 9) == prefix.."alltools" then
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			Spawn(function()
				if v:IsA'Tool' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 17" then
		game.Players:Chat("music 0000000000000000006079757615")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 18" then
		game.Players:Chat("music 0000000000000000005180097131")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 19" then
		game.Players:Chat("music 0000000000000000005253604010")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 20" then
		game.Players:Chat("music 000000000000000000357357714")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 21" then
		game.Players:Chat("music 0000000000000000005711590979")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 22" then
		game.Players:Chat("music 0000000000000000005008472494")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 23" then
		game.Players:Chat("music 0000000000000000006347294109")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 24" then
		game.Players:Chat("music 0000000000000000005510157925")
	end

	if string.sub(msg:lower(), 0, 8) == prefix.."play 25" then
		game.Players:Chat("music 0000000000000000002614260103")
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."heykindle" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("char "..player.." 904433379")
		game.Players:Chat("name "..player.." ")
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."haku" then
		local player = string.sub(msg:lower(), 7)
		game.Players:Chat("char "..player.." 1110535975")
		game.Players:Chat("name "..player.." ")
	end

	if string.sub(msg:lower(), 0, 13) == prefix.."glitchshadow" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("char "..player.." 2226928111")
		game.Players:Chat("name "..player.." ")
	end -- GlitchShad0wKin93

	if string.sub(msg:lower(), 0, 10) == prefix.."headfloat" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("size "..player.." 0.5")
		wait(0.25)
		game.Players:Chat("bighead "..player)
		wait(0.25)
		game.Players:Chat("unsize "..player)
	end

	if string.sub(msg:lower(), 0, 5) == prefix.."upme" then
		game.Players.LocalPlayer.Character:Destroy()
	end

	if string.sub(msg:lower(), 0, 13) == prefix.."toxicchat" then
		game.Players:Chat("handes "..string.sub(msg:lower(), 15))
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

	if string.sub(msg:lower(), 0, 4) == prefix.."rej" then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
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
		game.Players:Chat("skydive "..player)
		game.Players:Chat("paint "..player.." red")
		game.Players:Chat("name "..player.." Titan")
		game.Players:Chat("size "..player.." 0000000000000000005")
		game.Players:Chat("speed "..player.." 00000000000000000024")
		game.Players:Chat("pants "..player.." 0000000000000000001187508947")
	end




	if string.sub(msg:lower(), 1, 13) == prefix.."sledgehammer" then
		local plrname = string.sub(msg, 15)
		game.Player:Chat(("gear "..plrname.." 00000000000000000045177979"))
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."amogus" then
		game.Players:Chat("h Best Music / 34kTokio Or Barks11")
		game.Players:Chat("music 6106463351")
	end


	if string.sub(msg:lower(), 0, 7) == prefix.."theme1" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("h Loaded Map On Theme1")
		game.Players:Chat("time 19")
		game.Players:Chat("outdoorambient 250 100 250")
		game.Players:Chat("music 2649819366")
	end


	if string.sub(msg:lower(), 0, 7) == prefix.."theme2" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("h Loaded Map On Theme2")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 600")
		game.Players:Chat("fogcolor 300 0 800")
		game.Players:Chat("music 5937000690")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."theme3" then
		game.Players:Chat("clr")
		game.Players:Chat("fix")
		game.Players:Chat("h Loaded Map On Theme3")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 25")
		game.Players:Chat("fogcolor 255 255 51")
		game.Players:Chat("music 2590490779")
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
		game.Players:Chat(":h IO sec for Touch A Admin Pad")
		game.Players:Chat(":h IO sec for Touch A Admin Pad")
		game.Players:Chat(":h IO sec for Touch A Admin Pad")
		game.Players:Chat(":h IO sec for Touch A Admin Pad")
		fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
		wait(10)
		game.Players:Chat(":h Io sec EXPIRED")
		game.Players:Chat(":h Io sec EXPIRED")
		game.Players:Chat(":h Io sec EXPIRED")
		game.Players:Chat(":h Io sec EXPIRED")
		game.Players:Chat("!allpads")
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



	if string.sub(msg:lower(), 0, 6) == prefix.."scary" then
		game.Players:Chat("h Loaded The Map On Scary")
		game.Players:Chat("time 0")
		game.Players:Chat("fogcolor 0 0 0")
		game.Players:Chat("fogend 25")
		game.Players:Chat("music 143382469")
	end

	if string.sub(msg:lower(), 0, 7) == prefix.."galaxy" then
		loadstring(game:HttpGet('https://pastebin.com/raw/JH8MSQTC'))()
		game.Players:Chat(".offset 3")
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

	if string.sub(msg:lower(), 0, 9) == prefix.."bangears" then
		game.Players:Chat("gear me 00000000000000000082357101")
		wait(0.50)
		game.Players:Chat(prefix.."alltools")
		wait(0.50)
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
				wait(0.25)
				local JailPlayer = v.Name
				workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
				wait(0.25)
				game.Players:Chat("reset "..v.Name)
			end
		end
		wait(0.50)
		game.Players:Chat("gear me 00000000000000000082357101")
		wait(0.50)
		game.Players:Chat(prefix.."alltools")
		wait(0.50)
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
				wait(0.25)
				local JailPlayer = v.Name
				workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
				wait(0.25)
				game.Players:Chat("reset "..v.Name)
			end
		end
	end

	if string.sub(msg:lower(), 0, 19) == prefix.."toggle anticrashvg" then
		anticrashVG = not anticrashVG
		logn("anticrashVG is now set to "..tostring(anticrashVG))
	end

	if string.sub(msg:lower(), 0, 24) == prefix.."toggle antijailgearban" then
		antijailgearban = not antijailgearban
		logn("antijailgearban is now set to "..tostring(antijailgearban))
	end

	if string.sub(msg:lower(), 0, 21) == prefix.."toggle antigrayscale" then
		antigrayscale = not antigrayscale
		logn("antigrayscale is now set to "..tostring(antigrayscale))
	end

	if string.sub(msg:lower(), 0, 16) == prefix.."toggle antikill" then
		antikill = not antikill
		logn("antikill is now set to "..tostring(antikill))
	end

	if string.sub(msg:lower(), 0, 17) == prefix.."toggle antijail" then
		antijail = not antijail
		logn("antijail is now set to "..tostring(antijail))
	end

	if string.sub(msg:lower(), 0, 19) == prefix.."toggle mymusiconly" then
		mymusiconly = not mymusiconly
		logn("mymusiconly is now set to "..tostring(mymusiconly))
	end

	if string.sub(msg:lower(), 0, 16) == prefix.."toggle antilogs" then
		antilogs = not antilogs
		logn("antilogs is now set to "..tostring(antilogs))
	end

	if string.sub(msg:lower(), 0, 13) == prefix.."toggle mmoid" then
		mymusiconly_ID = tonumber(string.sub(msg:lower(), 15))
		logn("mymusiconly_id is now set to "..tostring(mymusiconly_ID))
		mymusiconly = true
	end

	if string.sub(msg:lower(), 0, 17) == prefix.."toggle superlogs" then
		Superlogs = not Superlogs
		logn("Superlogs is now set to "..tostring(Superlogs))
	end

	if string.sub(msg:lower(), 0, 23) == prefix.."toggle padsenforcement" then
		padsEnforcement = not padsEnforcement
		logn("padsEnforcement is now set to "..tostring(padsEnforcement))
	end

	if string.sub(msg:lower(), 0, 24) == prefix.."toggle everyonecommands" then
		everyonecommands = not everyonecommands
		logn("everyonecommands is now set to "..tostring(everyonecommands))
	end

	if string.sub(msg:lower(), 0, 18) == prefix.."toggle antiattach" then
		antiattach = not antiattach
		logn("antiattach is now set to "..tostring(antiattach))
	end

	if string.sub(msg:lower(), 0, 18) == prefix.."toggle antivoid" then
		antivoid = not antivoid
		logn("antivoid is now set to "..tostring(antivoid))
	end

	if string.sub(msg:lower(), 0, 12) == prefix.."togglenames" then
		print("----- Anti's -----")
		print("anticrashvg (anticrashVG)"..tostring(anticrashVG))
		print("antijailgearban "..tostring(antijailgearban))
		print("antigrayscale "..tostring(antigrayscale))
		print("antikill "..tostring(antikill))
		print("antijail "..tostring(antijail))
		print("mymusiconly "..tostring(mymusiconly))
		print("mmoid (mymusiconly_ID) "..tostring(mymusiconly_ID))
		print("antilogs "..tostring(antilogs))
		print("superlogs (Superlogs)"..tostring(Superlogs))
		print("everyonecommands "..tostring(everyonecommands))
		print("padsenforcement (padsEnforcement)"..tostring(padsEnforcement))
		print("antiattach"..tostring(antiattach))
		print("antivoid"..tostring(antivoid))
		print("")
	end
	-- loadstring(game:HttpGet("https://pastebin.com/raw/BnccXAFV", true))()
end)

function regen()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end




local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
	if antikick == true then
		for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
			if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "EFFECTGUIBLIND" or v.Name == "HintGUI" then
				v:Destroy()
			end
		end
		for i,v in pairs(game.Workspace.Terrain["_Game"].Folder:GetDescendants()) do
			if v.Name == "Message" then
				v:Destroy()
			end
		end
	end
end)

function transformToColor3(col) -- Oofkohls
	local r = col.r
	local g = col.g
	local b = col.b
	return Color3.new(r,g,b);
end

Spawn(function()
	while true do
		wait(0.05)
		if teskking == true then
			game.Players:Chat("pm "..Wteskking.." "..oofkohlsPmSpam)
		end

		if spamming == true then
			game.Players:Chat(Wspamming)
		end

		if wkicking == true then
			game.Players:Chat("gear "..Wwkicking.." 000000000000000000253519495")
		end

		if crashall == true then
			game.Players:Chat("h "..crashall_Text)
		end

		if anticrashVG == true then
			if allowcrash == false then
				for i, player in pairs(game:GetService("Players"):GetPlayers()) do
					if player.Character then
						if player.Character:FindFirstChild("VampireVanquisher") then
							local plrname = player.Name
							game.Players:Chat(("ungear "..plrname))
							game.Players:Chat(("unsize "..plrname))
							if AllowMessages == true then
								if allowads == true then
									game.Players:Chat("h "..plrname.." failed to crash the server ")
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
										game.Players:Chat("h "..plrname.." failed to crash the server (Toxic)")
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
		end

		if antijailgearban == true then
			if game.Players.LocalPlayer.Character:FindFirstChild("Part") then
				game.Players.LocalPlayer.Character:FindFirstChild("Part"):Destroy()
				wait(0.25)
				game.Players:Chat("speed me 16")
				game.Players:Chat(prefix.."set jp 50")
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("h Cant remove my gears xd. (Toxic)")
					else
						game.Players:Chat("h Cant remove my gears xd.")
					end
				end
			end
		end
	end
end)

binarylist = {
	['0'] = '0000',
	['1'] = '0001',
	['2'] = '0010',
	['3'] = '0011',
	['4'] = '0100',
	['5'] = '0101',
	['6'] = '0110',
	['7'] = '0111',
	['8'] = '1000',
	['9'] = '1001',
	['10']= '1010',
	['11']= '1011',
	['12']= '1100',
	['13']= '1101',
	['14']= '1110',
	['15']= '1111'
}

function tobinary(num) -- While great it maxes at 15 D:
	if num > 15 then
		error([[-- Toxic mods error --
Number "]]..num..[[" is way to big to create a
4bit binary number from
(Not reportable)
ID #0011 (4-bit Binary Number)
-- Toxic mods error --]])
	else
		return binarylist[tostring(num)]
	end
end

spawn(function()
	function Backup() -- In work
		data = ""
		if antijailgearban == true then
			data = "1"
		else
			data = "0"
		end
		if antigrayscale == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antikill == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antijail == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antikill == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if Superlogs == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if everyonecommands == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if padsEnforcement == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antiattach == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antivoid == true then
			data = data.."1"
		else
			data = data.."0"
		end

		return data
	end
end)

apis = {}
api_commands = {}
apis_cmdPref = {}
apis_Credits = {}
apis_Version = {}
apis_EncryptionKeys = {}

spawn(function()
	-- Mods
	-- Mods

	function hint(plr, msg)
		game.Players:Chat([[h 




]]..plr..[[: ]]..msg..[[





]])
	end

	function wifiFix()
		wait(0.1)
	end

	function CreateAPI(modApi, cmdPref, credits, version)
		local foundApi = false
		for i,v in pairs(apis) do
			if apis[i] == modApi then
				foundApi = true
			end
		end
		if foundApi == true then
			error([[-- Toxic mods error --
found valid API "]]..modApi..[[" please check if it exists
else report this as an error
ID #0010 (4-bit Binary Number)
-- Toxic mods error --]])
		elseif foundApi == false then
			table.insert(apis, modApi) -- Store API's main name
			table.insert(apis_cmdPref, cmdPref) -- Store what you use to call API
			table.insert(apis_Credits, credits) -- Store API's credits
			table.insert(apis_Version, version) -- Store API's version
			table.insert(apis_EncryptionKeys, [[0000 0000 0000 0000]]) -- Store API's version
		end
	end

	function CreateCommand(modApi, cmdPref, lowerSup, func)
		local foundApi = false
		local l = 0
		for i,v in pairs(apis) do
			if apis[i] == modApi then
				foundApi = true
				l = i
			end
		end
		if foundApi == true then
			table.insert(api_commands, apis_cmdPref[l].." "..cmdPref) -- Store command!
			game.Players.LocalPlayer.Chatted:Connect(function(msg)
				if lowerSup == true then
					if msg:lower() == prefix..apis_cmdPref[l].." "..cmdPref then
						func();
					end
				elseif lowerSup == false then
					if msg == prefix..apis_cmdPref[l].." "..cmdPref then
						func();
					end
				end
			end)
		elseif foundApi == false then
			error([[-- Toxic mods error --
Cant find valid API "]]..modApi..[[" please check if it exists
else report this as an error
ID #0001 (4-bit Binary Number)
-- Toxic mods error --]])
		end
	end
	-- Mods
	-- Mods

	wait(0.1)

	local API = "Toxic"
	local data = {tobinary(0), tobinary(1), tobinary(2), tobinary(3), tobinary(4), tobinary(5), tobinary(6), tobinary(7), tobinary(8), tobinary(9), tobinary(10), tobinary(11), tobinary(12), tobinary(13), tobinary(14), tobinary(15)}

	spawn(function() -- Default mod library for testing
		CreateAPI(API, "sch", "SnowClan_8342, for Toxic!", "v0.1")
		CreateCommand(API, "modlist", true, function() -- ;sch modlist
			print("----- API list (Info) -----")
			for i,v in pairs(apis) do
				print(apis[i].." | "..apis_Credits[i].." | "..apis_Version[i].." | "..apis_cmdPref[i])
			end
		end)
		CreateCommand(API, "reload", true, function() -- ;sch modlist
			logn("Reloading API...")
			API = nil
			data = nil

			wifiFix() -- Having some router problems so i let it rest

			API = "Toxic"
			data = {tobinary(0), tobinary(1), tobinary(2), tobinary(3), tobinary(4), tobinary(5), tobinary(6), tobinary(7), tobinary(8), tobinary(9), tobinary(10), tobinary(11), tobinary(12), tobinary(13), tobinary(14), tobinary(15)}
		end)
	end)
end)

spawn(function()
	while true do
		wait(5)
		for i, player in pairs(game:GetService("Players"):GetPlayers()) do
			if player.Character:FindFirstChild("VampireVanquisher") then
				if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
					gotoToxicHub("Server crashed by vampiretool (Maybe?)", 15) -- Go to toxics main hub for rejoining
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
							game.Players:Chat("h Automusic active. (Toxic)")
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
					if string.sub(command, 1, 1) == prefix then
						command = ""
						game.Players:Chat("pm "..plr.Name.." You cant use 'ToxicCommands class' sorry!")
					end

					if string.sub(command, 1, 1) == "m" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'message' sorry!")
					elseif string.sub(command, 1, 7) == "message" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'message' sorry!")
					elseif string.sub(command, 1, 2) == "pm" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'priplratemessage' sorry!")
					elseif string.sub(command, 1, 4) == "hint" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'hint' sorry!")
					elseif string.sub(command, 1, 1) == "h" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'hint' sorry!")
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
			if Superlogs == true then
				print("["..plr.Name.."]: "..msg)
			end
			if string.sub(msg,1,6) == "handes" then
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
					Text = "["..plr.Name..getTag().."]: "..string.sub(msg,8);
					TextStrokeTransparency = 0.75;
					Font = Enum.Font.SourceSansBold;
					Color = Color3.new(128,0,0);
					FontSize = Enum.FontSize.Size18;
				})
			end
		end)
		if msg:lower() == "logs" or msg:lower() == ":logs" or msg:lower() == "::logs" then
			local player = plr.Name
			if antilogs == true then
				if player == game.Players.LocalPlayer.Name then
					game.Players:Chat("ff No antilogs for you!")
				else
					for i = 1,100 do
						game.Players:Chat("h Lol "..player.." tried to use logs xD!")
					end
				end
			end
		else
			if everyonecommands == true then
				if msg:lower() == "-cmds" then
					say(" -cmds -- Get commands!")
					say(" -order (plr) -- Order a drink!")
					say(" -leaderboard -- All MPS's stored")
					say(" -quote -- Grab a random quote!")
					say(" -mps -- Messages per second! get your messages per second ;)")
				end
				if string.sub(msg:lower(),1,6) == "-order" then
					say(plr.Name.." just ordered "..tostring(math.random(1,5)).." "..drinks[math.random(1,#drinks)].."'s to his friend "..string.sub(msg:lower(),8))
				end
				if msg:lower() == "-quote" then
					say(Quotes[math.random(1,#Quotes)])
				end
				if msg:lower() == "-mps" then
					for i,v in pairs(MPS_Users) do
						if v == plr.Name then
							say("Your best MPS was "..MPS_Max[i].." (Even if no one can see the message it will still count)")
						end
					end
				end
				if msg:lower() == "-leaderboard" then
					for i,v in pairs(MPS_Users) do
						say(MPS_Users[i].." Current MPS: "..MPS[i].." MPS: "..MPS_Max[i])
					end
				end
			end
		end
		found = false
		for i,v in pairs(MPS_Users) do
			if v == plr.Name then
				found = true
				MPS[i] = MPS[i] + 1
			end
		end
		if found == false then
			table.insert(MPS_Users, plr.Name)
			table.insert(MPS, 0)
			table.insert(MPS_Max, 0)
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

-- SirLos1
Pad_Ban = {"Gan_3140"} -- People who are banned from pads
Whitelist = {} -- Whitelisted players
Admin = {} -- People you gave temp perm

Ignore = {game.Players.LocalPlayer.Name} -- Ignored from some antis (Antiattch)

-- Self bot stuff dont edit
-- Self bot stuff dont edit
MPS_Users = {}
MPS = {}
MPS_Max = {}
-- Self bot stuff dont edit
-- Self bot stuff dont edit

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

function gotoToxicHub(reason, delay)
	CancelTeleport = false
	if AllowTeleportsToToxicHub == true then
		logn("Write anything to cancel teleport")
		logn("Teleporting to ToxicHub | Reason : "..reason.." | Please wait "..delay.." seconds.")
		wait(delay)
		if CancelTeleport == false then
			logn("Please wait while our servers teleport you there.")
			game:GetService("TeleportService"):Teleport(6418152615,game.Players.LocalPlayer)
		elseif CancelTeleport == false then
			logn("Cancled teleport (Ty :D)")
		end
	end
end

Spawn(function()
	while true do

		for i,player in pairs(Pad_Ban) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == player.."'s admin" then
					game.Players:Chat("respawn "..player)
					game.Players:Chat("h Sorry "..player.." your banned from pads")
					regen()
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

spawn(function()
	while true do
		wait(1)
		if ToxicProtectedMSG == true then
			wait(2)
			game.Players:Chat([[h   
Short-cut ]]..Rank..[[


This servers protected via Short-cut
Any abuse of sir will result in a padban or worse.]])
		end
	end
end)

spawn(function()
	game.StarterGui.ResetPlayerGuiOnSpawn = false
end)


-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainGui = Instance.new("Frame")
MainGui.Visible = false
local Page = Instance.new("Frame")
local Button_Boom = Instance.new("TextButton")
local Button_Boombox = Instance.new("TextButton")
local Button_Boom_2 = Instance.new("TextButton")
local Bar = Instance.new("Frame")
local Button_MoveObbyBricks = Instance.new("TextButton")
local Button_MoveObbyBox = Instance.new("TextButton")
local Button_MoveHouse = Instance.new("TextButton")
local Button_CreatePlace = Instance.new("TextButton")
local Bar_2 = Instance.new("Frame")
local Bar_3 = Instance.new("Frame")
local Button_Pads = Instance.new("TextButton")
local Button_House = Instance.new("TextButton")
local Button_Regen = Instance.new("TextButton")
local Button_AllPads = Instance.new("TextButton")
local TextBoxHiden = Instance.new("TextBox")
local TextHiden = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local CloseGui = Instance.new("TextButton")
local OpenBackground = Instance.new("Frame")
local OpenButton = Instance.new("TextButton")
local ExecuteButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

MainGui.Name = "MainGui"
MainGui.Parent = ScreenGui
MainGui.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainGui.Position = UDim2.new(0.0503246747, 0, 0.0895522162, 0)
MainGui.Size = UDim2.new(0, 518, 0, 233)
MainGui.Draggable = true
MainGui.Active = true
MainGui.Selectable = true

Page.Name = "Page"
Page.Parent = MainGui
Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Page.BackgroundTransparency = 0.600
Page.Position = UDim2.new(0, 0, 0.169327825, 0)
Page.Size = UDim2.new(0, 518, 0, 193)

ExecuteButton.Name = "Executer"
ExecuteButton.Parent = Page
ExecuteButton.BackgroundColor3 = Color3.fromRGB(21, 255, 158)
ExecuteButton.BackgroundTransparency = 0
ExecuteButton.Position = UDim2.new(0.683, 0, 0.435, 0)
ExecuteButton.Size = UDim2.new(0, 148, 0, 21)
ExecuteButton.Font = Enum.Font.SourceSans
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.TextSize = 14.000
ExecuteButton.MouseButton1Click:Connect(function()
	local textBox = game.Players.LocalPlayer.PlayerGui.ScreenGui.MainGui.Page:WaitForChild("TextBoxHiden")
	local text = textBox.Text
	game.Players:Chat(string.sub(text, 0))
end)

Button_Boom.Name = "Button_Boom"
Button_Boom.Parent = Page
Button_Boom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_Boom.BackgroundTransparency = 0.400
Button_Boom.Position = UDim2.new(0.0154440152, 0, 0.046632126, 0)
Button_Boom.Size = UDim2.new(0, 69, 0, 41)
Button_Boom.Font = Enum.Font.SourceSans
Button_Boom.Text = "FastBoom"
Button_Boom.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_Boom.TextSize = 14.000
Button_Boom.MouseButton1Click:Connect(function()
	game.Players:Chat("!fastboom")
end)

Button_Boombox.Name = "Button_Boombox"
Button_Boombox.Parent = Page
Button_Boombox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_Boombox.BackgroundTransparency = 0.400
Button_Boombox.Position = UDim2.new(0.0154440152, 0, 0.321243525, 0)
Button_Boombox.Size = UDim2.new(0, 69, 0, 35)
Button_Boombox.Font = Enum.Font.SourceSans
Button_Boombox.Text = "Boombox"
Button_Boombox.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_Boombox.TextSize = 14.000
Button_Boombox.MouseButton1Click:Connect(function()
	game.Players:Chat("gear me 212641536")
end)

Button_Boom_2.Name = "Button_Boom"
Button_Boom_2.Parent = Page
Button_Boom_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_Boom_2.BackgroundTransparency = 0.400
Button_Boom_2.Position = UDim2.new(0.0154440152, 0, 0.580310881, 0)
Button_Boom_2.Size = UDim2.new(0, 69, 0, 50)
Button_Boom_2.Font = Enum.Font.SourceSans
Button_Boom_2.Text = "Boom"
Button_Boom_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_Boom_2.TextSize = 14.000
Button_Boom_2.MouseButton1Click:Connect(function()
	game.Players:Chat("!boom")
end)

Bar.Name = "Bar"
Bar.Parent = Page
Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bar.Position = UDim2.new(0.181467175, 0, 0.046632126, 0)
Bar.Size = UDim2.new(0, 6, 0, 153)

Button_MoveObbyBricks.Name = "Button_MoveObbyBricks"
Button_MoveObbyBricks.Parent = Page
Button_MoveObbyBricks.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_MoveObbyBricks.BackgroundTransparency = 0.390
Button_MoveObbyBricks.Position = UDim2.new(0.218146712, 0, 0.0621761642, 0)
Button_MoveObbyBricks.Size = UDim2.new(0, 106, 0, 28)
Button_MoveObbyBricks.Font = Enum.Font.SourceSans
Button_MoveObbyBricks.Text = "Move Obby Bricks"
Button_MoveObbyBricks.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_MoveObbyBricks.TextSize = 14.000
Button_MoveObbyBricks.MouseButton1Click:Connect(function()
	game.Players:Chat("!moveobbybricks")
end)

Button_MoveObbyBox.Name = "Button_MoveObbyBox"
Button_MoveObbyBox.Parent = Page
Button_MoveObbyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_MoveObbyBox.BackgroundTransparency = 0.400
Button_MoveObbyBox.Position = UDim2.new(0.218146712, 0, 0.290155441, 0)
Button_MoveObbyBox.Size = UDim2.new(0, 106, 0, 28)
Button_MoveObbyBox.Font = Enum.Font.SourceSans
Button_MoveObbyBox.Text = "Move Obby Box"
Button_MoveObbyBox.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_MoveObbyBox.TextSize = 14.000
Button_MoveObbyBox.MouseButton1Click:Connect(function()
	game.Players:Chat("!moveobbybox")
end)

Button_MoveHouse.Name = "Button_MoveHouse"
Button_MoveHouse.Parent = Page
Button_MoveHouse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_MoveHouse.BackgroundTransparency = 0.400
Button_MoveHouse.Position = UDim2.new(0.218146712, 0, 0.502590656, 0)
Button_MoveHouse.Size = UDim2.new(0, 106, 0, 28)
Button_MoveHouse.Font = Enum.Font.SourceSans
Button_MoveHouse.Text = "Move House"
Button_MoveHouse.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_MoveHouse.TextSize = 14.000
Button_MoveHouse.MouseButton1Click:Connect(function()
	game.Players:Chat("!movehouse")
end)

Button_CreatePlace.Name = "Button_CreatePlace"
Button_CreatePlace.Parent = Page
Button_CreatePlace.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_CreatePlace.BackgroundTransparency = 0.400
Button_CreatePlace.Position = UDim2.new(0.218146712, 0, 0.694300532, 0)
Button_CreatePlace.Size = UDim2.new(0, 106, 0, 28)
Button_CreatePlace.Font = Enum.Font.SourceSans
Button_CreatePlace.Text = "Create Custom Place"
Button_CreatePlace.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_CreatePlace.TextSize = 14.000
Button_CreatePlace.MouseButton1Click:Connect(function()
	game.Players:Chat("!createplace")
end)

Bar_2.Name = "Bar_2"
Bar_2.Parent = Page
Bar_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bar_2.Position = UDim2.new(0.449806958, 0, 0.062176168, 0)
Bar_2.Size = UDim2.new(0, 6, 0, 153)

Bar_3.Name = "Bar_3"
Bar_3.Parent = Page
Bar_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bar_3.Position = UDim2.new(0.642857134, 0, 0.062176168, 0)
Bar_3.Size = UDim2.new(0, 6, 0, 153)

Button_Pads.Name = "Button_Pads"
Button_Pads.Parent = Page
Button_Pads.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_Pads.BackgroundTransparency = 0.400
Button_Pads.Position = UDim2.new(0.480694979, 0, 0.0621761642, 0)
Button_Pads.Size = UDim2.new(0, 77, 0, 28)
Button_Pads.Font = Enum.Font.SourceSans
Button_Pads.Text = "Tp To Pads"
Button_Pads.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_Pads.TextSize = 14.000
Button_Pads.MouseButton1Click:Connect(function()
	game.Players:Chat("!pads")
end)

Button_House.Name = "Button_House"
Button_House.Parent = Page
Button_House.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_House.BackgroundTransparency = 0.400
Button_House.Position = UDim2.new(0.480694979, 0, 0.290155441, 0)
Button_House.Size = UDim2.new(0, 77, 0, 28)
Button_House.Font = Enum.Font.SourceSans
Button_House.Text = "Tp To House"
Button_House.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_House.TextSize = 14.000
Button_House.MouseButton1Click:Connect(function()
	game.Players:Chat("!house")
end)

Button_Regen.Name = "Button_Regen"
Button_Regen.Parent = Page
Button_Regen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_Regen.BackgroundTransparency = 0.400
Button_Regen.Position = UDim2.new(0.480694979, 0, 0.502590656, 0)
Button_Regen.Size = UDim2.new(0, 77, 0, 28)
Button_Regen.Font = Enum.Font.SourceSans
Button_Regen.Text = "Regen"
Button_Regen.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_Regen.TextSize = 14.000
Button_Regen.MouseButton1Click:Connect(function()
	game.Players:Chat("!regen")
end)

Button_AllPads.Name = "Button_AllPads"
Button_AllPads.Parent = Page
Button_AllPads.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_AllPads.BackgroundTransparency = 0.400
Button_AllPads.Position = UDim2.new(0.480694979, 0, 0.694300532, 0)
Button_AllPads.Size = UDim2.new(0, 77, 0, 31)
Button_AllPads.Font = Enum.Font.SourceSans
Button_AllPads.Text = "Take Pads"
Button_AllPads.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_AllPads.TextSize = 14.000
Button_AllPads.MouseButton1Click:Connect(function()
	game.Players:Chat("!allpads")
end)

TextBoxHiden.Name = "TextBoxHiden"
TextBoxHiden.Parent = Page
TextBoxHiden.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBoxHiden.Position = UDim2.new(0.67567569, 0, 0.176165804, 0)
TextBoxHiden.Size = UDim2.new(0, 153, 0, 50)
TextBoxHiden.Font = Enum.Font.SourceSans
TextBoxHiden.Text = ""
TextBoxHiden.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBoxHiden.TextSize = 14.000

TextHiden.Name = "TextHiden"
TextHiden.Parent = TextBoxHiden
TextHiden.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextHiden.BackgroundTransparency = 0.400
TextHiden.Position = UDim2.new(0.0033941865, 0, -0.51784867, 0)
TextHiden.Size = UDim2.new(0, 152, 0, 25)
TextHiden.Font = Enum.Font.SourceSans
TextHiden.Text = "Write Hidden messages"
TextHiden.TextColor3 = Color3.fromRGB(0, 0, 0)
TextHiden.TextSize = 14.000


Title.Name = "Title"
Title.Parent = MainGui
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 0.300
Title.Position = UDim2.new(0.32524544, 0, 0.0257510729, 0)
Title.Size = UDim2.new(0, 182, 0, 26)
Title.Font = Enum.Font.SourceSans
Title.Text = "【﻿Ｔｏｘｉｃ】"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 30.000

CloseGui.Name = "Close Gui"
CloseGui.Parent = MainGui
CloseGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseGui.BackgroundTransparency = 0.400
CloseGui.Position = UDim2.new(0.89700377, 0, 0, 0)
CloseGui.Size = UDim2.new(0, 53, 0, 39)
CloseGui.Font = Enum.Font.SourceSans
CloseGui.Text = "X"
CloseGui.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseGui.TextSize = 30.000
CloseGui.MouseButton1Click:Connect(function()
	if MainGui.Visible == true then
		OpenBackground.Visible = true
		OpenButton.Visible = true
		Page.Visible = false
		MainGui.Visible = false
	end
end)

OpenBackground.Name = "OpenBackground"
OpenBackground.Parent = ScreenGui
OpenBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenBackground.BackgroundTransparency = 0.400
OpenBackground.BorderSizePixel = 0
OpenBackground.Position = UDim2.new(-0.235084623, 0, 0.752239764, 0)
OpenBackground.Rotation = 45.000
OpenBackground.Size = UDim2.new(0, 549, 0, 151)

OpenButton.Name = "OpenButton"
OpenButton.Parent = OpenBackground
OpenButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.3, 0, -1.429, 0)
OpenButton.Rotation = -45.000
OpenButton.Size = UDim2.new(0, 80, 0, 50)
OpenButton.Font = Enum.Font.TitilliumWeb
OpenButton.Text = "Open Gui"
OpenButton.TextColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.TextSize = 30.000
OpenButton.MouseButton1Click:Connect(function()
	if MainGui.Visible == false then
		OpenBackground.Visible = false
		OpenButton.Visible = false
		Page.Visible = true
		MainGui.Visible = true
	end
end)


-- Scripts:

local function SIXFO_fake_script() -- TextBoxHiden.LocalScript 
	local script = Instance.new('LocalScript', TextBoxHiden)

	local textBox = script.Parent
	
	game.Players:Chat(textBox.Text)
end
coroutine.wrap(SIXFO_fake_script)()
local function HGRTLO_fake_script() -- MainGui.RaimbowV2 
	local script = Instance.new('LocalScript', MainGui)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(HGRTLO_fake_script)()
local function HAVVD_fake_script() -- OpenBackground.Raimbow 
	local script = Instance.new('LocalScript', OpenBackground)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(HAVVD_fake_script)()



Spawn(function()
	mods()
end)

wait(0.25)

Spawn(function()
	startupScripts()
end)
logn("Toxic Gui Executed")



-- credits to Emmy (Emmy#0377)

local prefix = '!'
local splitPrefix = '/'

local lp = game.Players.LocalPlayer
local plrs = game.Players

function chat(msg)
	game.Players:Chat(msg)
end

function toname(p)
	players = game.Players:GetChildren()
	for i,v in pairs(players) do             
		strlower = v.Name:lower()
		sub = string.sub(strlower,1,#p)             
		if p == sub then
			name = v.Name
		end
	end
end

function message(plr, msg)
	chat([[m/ 

























]]..plr..': '..msg..[[


























]])
end

function hint(plr, msg)
	chat([[h 


]]..plr..': '..msg..[[



]])
end

function mmessage(msg)
	chat([[m/ 

























]]..msg..[[


























]])
end

function hhint(msg)
	chat([[h 


]]..msg..[[



]])
end

lp.Chatted:Connect(function(msg)

	if string.sub(msg:lower(), 0, 7) == prefix..'htalk ' then
		local message = string.sub(msg:lower(), 8)
		local m = message:split(splitPrefix)
		local plr, msg = m[1], m[2]
		if plr == 'me' or plr == ' me' then
			hint(lp.Name, msg)
		else
			toname(plr)
			hint(name, msg)
		end
	end

	if string.sub(msg:lower(), 0, 7) == prefix..'mtalk ' then
		local mssg = string.sub(msg:lower(), 8)
		local m = mssg:split(splitPrefix)
		local plr, msg = m[1], m[2]
		if plr == 'me' or plr == ' me' then
			message(lp.Name, msg)
		else
			toname(plr)
			message(name, msg)
		end
	end

	if string.sub(msg:lower(), 0, 9) == prefix..'message ' then
		local mssg = string.sub(msg:lower(), 10)
		mmessage(mssg)
	end

	if string.sub(msg:lower(), 0, 6) == prefix..'hint ' then
		local message = string.sub(msg:lower(), 7)
		hhint(message)
	end
end)

--
