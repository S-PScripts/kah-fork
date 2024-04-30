local function colors(msg)
	while rainbow == true do
		game:GetService("Players"):Chat("time "..math.random(1,3600))
		wait(.1)
		game:GetService("Players"):Chat("fogend 100")
		wait(.1)
		game:GetService("Players"):Chat("colorshifttop "..math.random(1,9999).." "..math.random(1,9999).." "..math.random(1,9999))
		wait(.1)
		game:GetService("Players"):Chat("colorshiftbottom "..math.random(1,9999).." "..math.random(1,9999).." "..math.random(1,9999))
		wait(.1)
		game:GetService("Players"):Chat("fogcolor "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
		wait(.1)
		game:GetService("Players"):Chat("Ambient "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
	end
end

local function autoff(msg)
	local GetPlayers = game:GetService("Players")
	local allplr = GetPlayers:GetPlayers()
	
	while forcefield == true do
		wait(0)
		if game.Players.PlayerAdded then
			allplr = GetPlayers:GetPlayers()
		end
		for i, player in pairs(allplr) do
			if player.Character then
				if not player.Character:FindFirstChild("ForceField") then
					local plrname = player.Name
					game:GetService'Players':Chat(("ff "..plrname))
					wait(0.28)
				end
			end
		end
	end
end

local function abuse(msg)
	while respawnexplode == true do
		game:GetService("Players"):Chat("respawn others, others, others")
		wait(.1)
		game:GetService("Players"):Chat("explode others, others, others")
		wait(.1)
	end
end

local function antikillall(msg)
	local GetPlayers = game:GetService("Players")
	local allplr = GetPlayers:GetPlayers()
	
	while antikill == true do
		wait(0)
		if game.Players.PlayerAdded then
			allplr = GetPlayers:GetPlayers()
		end
		for i, player in pairs(allplr) do
			if player.Character then
				if player.Character.Humanoid.Health == 0 then
					local plrname = player.Name
					game:GetService'Players':Chat(("reset "..plrname))
					wait(0.28)
				end
			end
		end
	end
end

local function GetPads(msg)
	while Perm == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				game:GetService'Players':Chat((":getpad3"))
				wait(0.5)
			end
		end
	end

	while PermAllPads == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				wait(0.1)
				game:GetService'Players':Chat((":allpads2"))
			end
		end
	end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg, recipient)
	commandSplit = string.split(msg, ' ')
	command = commandSplit[1]

	if command == ":heaven" then
		game:GetService'Players':Chat(("colorshifttop 2467357 2467357 2467357"))
		game:GetService'Players':Chat(("colorshiftbottom 2467357 2467357 2467357"))
	end

	if command == ":shaders" then
		game:GetService'Players':Chat(("colorshifttop 600 600 0"))
		game:GetService'Players':Chat(("time 7")) 
		game:GetService'Players':Chat(("music 4461953104")) 
	end

	if command == ":shadows" then
		game:GetService'Players':Chat(("fogend 0"))
		game:GetService'Players':Chat(("fogcolor 0 0 0"))
	end
	
	if msg == ":movepads" then
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-43.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-39.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-35.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-27.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-19.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-15.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-11.3268, 5.63743, 92.7182), Vector3.new(190, 0, 95))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
	end

	
	if msg == ":moveregenpad" then
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-9.2892, 5.60555, 93.9018))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
	end
	
	if msg == ":moveobbywalls" then
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game:GetService'Players':Chat((":removeobbykill"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-57.0652, 4.65999, -18.2899))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-25.0609, 4.69274, -17.4021))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.0677, 3.67287, -30.956))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.065, 31.7, 1.24301))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("unjail me"))
	end
	
	if msg == ":movedividers" then
		WPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.1)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-47.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-43.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-39.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-35.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-27.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-19.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-15.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-11.763, 7, 91.9643))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.3)
		game:GetService'Players':Chat(("size me .5"))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-47.763, 7, 96.1333))
		wait(0.3)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.1)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = WPos
	end

	if msg == ":regen" then
		fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
	end

	if msg == ":getpads" then
		for i = 1,9 do
			GPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(0.125)
			local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
			wait(0.125)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = padCFrame
			wait(0.125)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GPos
			wait(0.125)
		end
	end

	if msg == ":allpads2" then
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

	if msg == ":getpad3" then
		local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
		local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
		wait(0.125)
		pad.CanCollide = false
		repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.125)
		pad.CFrame = padCFrame
		pad.CanCollide = true
		wait(0.2)
		game:GetService'Players':Chat((":getpad2"))
	end

	if msg == ":getpad2" then
		local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
		local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
		wait(0.125)
		pad.CanCollide = false
		repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.125)
		pad.CFrame = padCFrame
		pad.CanCollide = true
	end

	if msg == ":perm" then
		Perm = true
		game:GetService'Players':Chat((":unpermallpads"))
		GetPads(msg)
	end

	if msg == ":rainbowon" then
		rainbow = true
		colors(msg)
	end

	if msg == ":rainbowoff" then
		rainbow = false
	end
	
	if msg == ":autoforceon" then
		forcefield = true
		autoff(msg)
	end

	if msg == ":autoforceoff" then
		forcefield = false
	end
	
	if msg == ":antikillallon" then
		antikill = true
		antikillall(msg)
	end

	if msg == ":antikillalloff" then
		antikill = false
	end
	
	if msg == ":reon" then
		respawnexplode = true
		game:GetService'Players':Chat(("ff me"))
		game:GetService'Players':Chat(("fly me"))
		abuse(msg)
	end

	if msg == ":reoff" then
		respawnexplode = false
	end
	
	if msg == ":unperm" then
		Perm = false
	end

	if msg == ":permallpads" then
		PermAllPads = true
		game:GetService'Players':Chat((":unperm"))
		GetPads(msg)
	end

	if msg == ":unpermallpads" then
		PermAllPads = false
	end

	if msg == ":nuke" then
		game:GetService'Players':Chat(("h A Nuke Has Been Dropped Seek Shelter Immediately"))
		wait(0.1)
		game:GetService'Players':Chat(("music 2684808342"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("char me 3"))
		wait(0.1)
		for i = 1,10 do
			game:GetService'Players':Chat(("size me .5"))
		end
		wait(0.5)
		game:GetService'Players':Chat(("unsize me"))
		wait(0.1)
		game:GetService'Players':Chat(("removelimbs me"))
		wait(0.1)
		game:GetService'Players':Chat(("minihead me"))
		wait(0.1)
		game:GetService'Players':Chat(("paint me 255,127,0"))
		wait(0.1)
		game:GetService'Players':Chat(("size me 5")) 
		wait(0.1)
		game:GetService'Players':Chat(("skydive me")) 
		wait(0.1)
		game:GetService'Players':Chat(("trip me"))
		wait(0.1)
		game:GetService'Players':Chat(("bonfire me"))
		wait(4.575)
		game:GetService'Players':Chat(("music 1502307055"))
		game:GetService'Players':Chat(("h Its To Late The Bomb Has Hit"))
		wait(0.1)
		game:GetService'Players':Chat(("colorshifttop 10610 7496 0"))
		wait(0.1)
		game:GetService'Players':Chat(("colorshiftbottom 10610 7496 0"))
		wait(0.1)
		game:GetService'Players':Chat(("time 0"))
		wait(0.1)
		game:GetService'Players':Chat(("fogend 25")) 
		wait(0.1)
		game:GetService'Players':Chat(("fogcolor 255,127,0"))
		wait(0.3)
		game:GetService'Players':Chat(("fire all"))
		wait(0.1)
		game:GetService'Players':Chat(("kill all"))
		wait(3)
		game:GetService'Players':Chat(("fix"))
		game:GetService'Players':Chat(("music"))
		game:GetService'Players':Chat(("unchar me"))
	end

	if msg == ":moveobbywalls" then
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game:GetService'Players':Chat((":removeobbykill"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-57.0652, 4.65999, -18.2899))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-25.0609, 4.69274, -17.4021))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))local function colors(msg)
	while rainbow == true do
		game:GetService("Players"):Chat("time "..math.random(1,3600))
		wait(.1)
		game:GetService("Players"):Chat("fogend 100")
		wait(.1)
		game:GetService("Players"):Chat("colorshifttop "..math.random(1,9999).." "..math.random(1,9999).." "..math.random(1,9999))
		wait(.1)
		game:GetService("Players"):Chat("colorshiftbottom "..math.random(1,9999).." "..math.random(1,9999).." "..math.random(1,9999))
		wait(.1)
		game:GetService("Players"):Chat("fogcolor "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
		wait(.1)
		game:GetService("Players"):Chat("Ambient "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
	end
end

local function abuseresexp(msg)
	while abuseresexp == true do
		game:GetService("Players"):Chat("respawn test")
		wait(.1)
		game:GetService("Players"):Chat("explode test")
		wait(.1)
	end
end

local function GetPads(msg)
	while Perm == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				game:GetService'Players':Chat((":getpad3"))
			end
		end
	end

	while PermAllPads == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				wait(0.1)
				game:GetService'Players':Chat((":allpads2"))
			end
		end
	end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg, recipient)
	commandSplit = string.split(msg, ' ')
	command = commandSplit[1]

	if command == ":heaven" then
		game:GetService'Players':Chat(("colorshifttop 2467357 2467357 2467357"))
		game:GetService'Players':Chat(("colorshiftbottom 2467357 2467357 2467357"))
	end

	if command == ":shaders" then
		game:GetService'Players':Chat(("colorshifttop 600 600 0"))
		game:GetService'Players':Chat(("time 7")) 
		game:GetService'Players':Chat(("music 4461953104")) 
	end

	if command == ":shadows" then
		game:GetService'Players':Chat(("fogend 0"))
		game:GetService'Players':Chat(("fogcolor 0 0 0"))
	end

	if msg == ":regen" then
		fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
	end

	if msg == ":getpads" then
		for i = 1,9 do
			GPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(0.125)
			local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
			wait(0.125)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = padCFrame
			wait(0.125)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GPos
			wait(0.125)
		end
	end

	if msg == ":allpads2" then
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

	if msg == ":getpad3" then
		local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
		local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
		wait(0.125)
		pad.CanCollide = false
		repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.125)
		pad.CFrame = padCFrame
		pad.CanCollide = true
		wait(0.2)
		game:GetService'Players':Chat((":getpad2"))
	end

	if msg == ":getpad2" then
		local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
		local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
		wait(0.125)
		pad.CanCollide = false
		repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.125)
		pad.CFrame = padCFrame
		pad.CanCollide = true
	end

	if msg == ":perm" then
		Perm = true
		game:GetService'Players':Chat((":unpermallpads"))
		GetPads(msg)
	end

	if msg == ":rainbowon" then
		rainbow = true
		colors(msg)
	end

	if msg == ":rainbowoff" then
		rainbow = false
	end
	
	if msg == ":reon" then
		abuseresexp = true
		abuseresexp(msg)
	end

	if msg == ":reoff" then
		abuseresexp = false
	end
	
	if msg == ":unperm" then
		Perm = false
	end

	if msg == ":permallpads" then
		PermAllPads = true
		game:GetService'Players':Chat((":unperm"))
		GetPads(msg)
	end

	if msg == ":unpermallpads" then
		PermAllPads = false
	end

	if msg == ":nuke" then
		game:GetService'Players':Chat(("h A Nuke Has Been Dropped Seek Shelter Immediately"))
		wait(0.1)
		game:GetService'Players':Chat(("music 2684808342"))
		wait(0.1)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("char me 3"))
		wait(0.1)
		for i = 1,10 do
			game:GetService'Players':Chat(("size me .5"))
		end
		wait(0.5)
		game:GetService'Players':Chat(("unsize me"))
		wait(0.1)
		game:GetService'Players':Chat(("removelimbs me"))
		wait(0.1)
		game:GetService'Players':Chat(("minihead me"))
		wait(0.1)
		game:GetService'Players':Chat(("paint me 255,127,0"))
		wait(0.1)
		game:GetService'Players':Chat(("size me 5")) 
		wait(0.1)
		game:GetService'Players':Chat(("skydive me")) 
		wait(0.1)
		game:GetService'Players':Chat(("trip me"))
		wait(0.1)
		game:GetService'Players':Chat(("bonfire me"))
		wait(4.575)
		game:GetService'Players':Chat(("music 1502307055"))
		game:GetService'Players':Chat(("h Its To Late The Bomb Has Hit"))
		wait(0.1)
		game:GetService'Players':Chat(("colorshifttop 10610 7496 0"))
		wait(0.1)
		game:GetService'Players':Chat(("colorshiftbottom 10610 7496 0"))
		wait(0.1)
		game:GetService'Players':Chat(("time 0"))
		wait(0.1)
		game:GetService'Players':Chat(("fogend 25")) 
		wait(0.1)
		game:GetService'Players':Chat(("fogcolor 255,127,0"))
		wait(0.3)
		game:GetService'Players':Chat(("fire all"))
		wait(0.1)
		game:GetService'Players':Chat(("kill all"))
		wait(3)
		game:GetService'Players':Chat(("fix"))
		game:GetService'Players':Chat(("music"))
		game:GetService'Players':Chat(("unchar me"))
	end

	if msg == ":moveobbywalls" then
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game:GetService'Players':Chat((":removeobbykill"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-57.0652, 4.65999, -18.2899))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-25.0609, 4.69274, -17.4021))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.0677, 3.67287, -30.956))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.065, 31.7, 1.24301))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("unjail me"))
	end

	if command == ":paint" then
		game:GetService'Players':Chat(("gear me 000000000000000018474459"))
	end

	if command == ":btools" then
		game:GetService'Players':Chat(("gear me 000000000000000016200204"))
		game:GetService'Players':Chat(("gear me 000000000000000016200402")) 
		game:GetService'Players':Chat(("gear me 000000000000000016969792"))
		game:GetService'Players':Chat(("gear me 000000000000000073089190"))
	end

	if command == ":shaders" then
		game:GetService'Players':Chat(("colorshifttop 600 600 0"))
		for i = 0,8,.2 do
			game:GetService'Players':Chat(("time "..i))
			wait(.07)
		end
		game:GetService'Players':Chat(("music 4461953104")) 
	end
	
if string.sub(msg:lower(), 0, 14) == ".playbackspeed" then
	local newPlaybackSpeed = tonumber(string.sub(msg:lower(), 16))
	local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
	Sound.PlaybackSpeed = newPlaybackSpeed
end

	if command == ":sunrise" then
		game:GetService'Players':Chat(("music"))
		game:GetService'Players':Chat(("time 7"))
		game:GetService'Players':Chat(("colorshifttop 600 600 0"))
		for i = 0,8,.2 do
			game:GetService'Players':Chat(("time "..i))
			wait(.07)
		end
		game:GetService'Players':Chat(("music 4461953104")) 
	end


	if command == ":star" then
		for i = 1,50,1 do 
			game:GetService'Players':Chat(("bonfire me"))
		end
		for i = 1,50,1 do
			game:GetService'Players':Chat(("fire me"))
		end
		for i = 1,50,1 do 
			game:GetService'Players':Chat(("smoke me"))
		end
		for i = 1,200,1 do -- so this will repeat 50 times
			game:GetService'Players':Chat(("ff me"))
		end
		game:GetService'Players':Chat(("name me Star"))
	end


	if command == ":boombox" then
		game:GetService'Players':Chat(("gear me 0000000000000000000000000000000212641536"))
	end


	local spamming= false
	game.Players.LocalPlayer.Chatted:connect(function(msg)
		if string.sub(msg, 1, 5) == ":spam" then
			spamming = true
			spam(string.sub(msg, 7))
		elseif msg == ":stop" then
			spamming = false
		end
	end)

	function spam(text)
		while spamming == true do wait()
			game:GetService("Players"):Chat(text)
		end
	end

	if msg == ":moveobbywalls" then
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game:GetService'Players':Chat((":removeobbykill"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-57.0652, 4.65999, -18.2899))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-25.0609, 4.69274, -17.4021))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.0677, 3.67287, -30.956))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.065, 31.7, 1.24301))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
	end

	if msg == ":findpads" then
		FPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 40008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 42008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 44008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 46008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 48008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 50008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 52008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 54008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 56008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 60008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 62008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 64008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 66008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 68008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 70008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 72008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 74008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 76008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 78008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 80008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 82008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 84008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 86008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 88008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 90008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 92008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 94008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 96008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 98008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 100008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 102008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 104008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 106008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 108008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 110008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FPos
	end

	if msg == ":moveobby" then
		local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
		local Workspace_Folder = Game_Folder.Workspace
		for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
			if v.CFrame.Y < 500 then
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -19.2493), Vector3.new(150, 0, -20))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -13.4572), Vector3.new(150, 0, -15))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -7.46203), Vector3.new(150, 0, -6))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -1.25637), Vector3.new(150, 0, 0))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 4.74275), Vector3.new(150, 0, 5))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 9.54263), Vector3.new(150, 0, 10))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 14.5432), Vector3.new(150, 0, 15))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 19.7425), Vector3.new(150, 0, 20))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 24.9433), Vector3.new(150, 0, 25))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 29.7426), Vector3.new(150, 0, 30))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
			end
		end
	end

	if msg == ":removeobbykill" then
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

	-- end 


	if command == ":coffee" then
		game:GetService'Players':Chat(("music 3960066408"))
		game:GetService'Players':Chat(("h WHO WANTS SOME COFFEE!??! ANYONE!??!"))
	end


	if command == ":crash" then
		game:GetService'Players':Chat(("gear me 94794847"))
		wait(3)
		game:GetService'Players':Chat(("h THIS SERVER IS BEING SHUT DOWN BECAUSE IT'S UNCONTROLLABLE!!!"))
		wait(2)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
	end


	if command == ":afk" then
		game:GetService'Players':Chat(("name me ".. game.Players.LocalPlayer.Name .. " is afk <3"))
		game:GetService'Players':Chat(("h ".. game.Players.LocalPlayer.Name .. " is afk. They will be back soon. <3"))
	end


	if command == ":back" then
		game:GetService'Players':Chat(("unname me"))
		game:GetService'Players':Chat(("h ".. game.Players.LocalPlayer.Name .. " is back! <3"))
	end


	if command == ":cube" then
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 10"))
	end


	if command == ":crash" then
		game:GetService'Players':Chat(("gear me 94794847"))
		wait(3)
		game:GetService'Players':Chat(("h THIS SERVER IS BEING SHUT DOWN BECAUSE IT'S UNCONTROLLABLE!!!"))
		wait(2)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
	end


	if command == ":afk" then
		game:GetService'Players':Chat(("name me ".. game.Players.LocalPlayer.Name .. " is afk <3"))
		game:GetService'Players':Chat(("h ".. game.Players.LocalPlayer.Name .. " is afk. They will be back soon. <3"))
	end


	if command == ":back" then
		game:GetService'Players':Chat(("unname me"))
		game:GetService'Players':Chat(("h ".. game.Players.LocalPlayer.Name .. " is back! <3"))
	end


	if command == ":cube" then
		--      S E I    S = start number, E = End number = I equals the increments it increases in
		for i = 1,10,1 do -- so this will repeat 10 times
			game:GetService'Players':Chat(("size me 0.3"))
			game:GetService'Players':Chat(("size me 10"))-- You can copy and paste this and add more admin commands
			wait()
		end
	end


	if command == "*pew*" then
		game:GetService'Players':Chat(("heal all 100"))
		game:GetService'Players':Chat(("damage others 99"))
		game:GetService'Players':Chat(("h You have been shot! :O"))
	end


	if command == "*MEGApew*" then
		game:GetService'Players':Chat(("heal all 100"))
		game:GetService'Players':Chat(("damage others 100000000000000000000000000000"))
		game:GetService'Players':Chat(("h You have been shot! :O"))
	end


	if command == ":nuke" then
		game:GetService'Players':Chat(("music 2684808342"))
		wait(3)
		game:GetService'Players':Chat(("h There is a bomb being dropped right now!"))
		wait(3)
		game:GetService'Players':Chat(("fogend 0"))
		game:GetService'Players':Chat(("music 1502307055"))
		wait(5)
		game:GetService'Players':Chat(("blind all"))
		wait(2)
		game:GetService'Players':Chat(("unblind all"))
		wait(2)
		game:GetService'Players':Chat(("blind all"))
		wait(2)
		game:GetService'Players':Chat(("unblind all"))
		wait(2)
		game:GetService'Players':Chat(("blind all"))
		wait(2)
		game:GetService'Players':Chat(("unblind all"))
		wait(2)
		game:GetService'Players':Chat(("kill all"))
		wait (1)
		game:GetService'Players':Chat(("fix"))
		game:GetService'Players':Chat(("music"))

	end


	if command == ":rainbow trail" then
		game:GetService'Players':Chat(("trail me rainbow"))
		game:GetService'Players':Chat(("speed me 100"))
		game:GetService'Players':Chat(("sparkles me"))
	end


	if command == ":christmas" then
		game:GetService'Players':Chat(("h It's christmas!"))
		game:GetService'Players':Chat(("music 2546949814"))
		game:GetService'Players':Chat(("time 100"))
		game:GetService'Players':Chat(("fogend 100"))
		game:GetService'Players':Chat(("fogcolor 255 255 255"))
		game:GetService'Players':Chat(("ambient -100 -400 -600"))
	end


	if command == ":clear" then
		game:GetService'Players':Chat(("ungear ".. game.Players.LocalPlayer.Name))
	end


	if command == ":play_crybaby" then
		game:GetService'Players':Chat(("music 4553439313"))
		game:GetService'Players':Chat(("h Playing: Crybaby - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_cake" then
		game:GetService'Players':Chat(("music 472231729"))
		game:GetService'Players':Chat(("h Playing: Cake - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_myway" then
		game:GetService'Players':Chat(("music 1948564182"))
		game:GetService'Players':Chat(("h Playing: My Way - Ava Max"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_santatellme" then
		game:GetService'Players':Chat(("music 2546949814"))
		game:GetService'Players':Chat(("h Playing: Santa Tell Me - Ariana Grande"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_takeahint" then
		game:GetService'Players':Chat(("music 2341549701"))
		game:GetService'Players':Chat(("h Playing: Take A Hint - Victorious"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_who" then
		game:GetService'Players':Chat(("music 4461953104"))
		game:GetService'Players':Chat(("h Playing: Who? - Ft. Shiloh Dynasty"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_shrimps" then
		game:GetService'Players':Chat(("music 4600678488"))-- You can copy and paste this and add more admin commands
		game:GetService'Players':Chat(("h Playing: Shrimps But It's Flamingo Screaming..."))
	end    


	if command == ":secretcrash" then
		game:GetService'Players':Chat(("gear me 94794847"))
		wait(3)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
	end

	if command == (":remove") then
		game:GetService'Players':Chat(("skydive me"))
		wait(0.75)
		game:GetService'Players':Chat(("reset me"))-- You can copy and paste this and add more admin commands
		wait(0.75)
		game:GetService'Players':Chat(("unskydive me"))
		wait(0.75)
	end

	if command == (":no_logs") then
		for i = 1,100 do
			game:GetService'Players':Chat(("ff No Logs For You"))
		end
		wait(0.5)
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
	end


	if command == (":rmwall") then
		game:GetService'Players':Chat(("punish me"))
		wait(0.75)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.75)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.75)
		game:GetService'Players':Chat(("reset me"))-- You can copy and paste this and add more admin commands
		wait(0.75)
		game:GetService'Players':Chat(("unskydive me"))
		wait(0.75)
	end


	if command == (":rmfloor") then
		game:GetService'Players':Chat(("stun me"))
		wait(0.75)
		game:GetService'Players':Chat(("punish me"))
		wait(0.75)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.75)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.75)
		game:GetService'Players':Chat(("reset me"))-- You can copy and paste this and add more admin commands
		wait(0.75)
		game:GetService'Players':Chat(("unskydive me"))
		wait(0.75)
	end

	if command == ":play_detention" then
		game:GetService'Players':Chat(("music 3908112818"))
		game:GetService'Players':Chat(("h Playing: Detention - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_nurses_office" then
		game:GetService'Players':Chat(("music 5896678223"))
		game:GetService'Players':Chat(("h Playing: Nurse's Office - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_the_principal" then
		game:GetService'Players':Chat(("music 5144784826"))
		game:GetService'Players':Chat(("h Playing: The Principal - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_highschool_sweethearts" then
		game:GetService'Players':Chat(("music 4342043245"))
		game:GetService'Players':Chat(("h Playing: Highschool Sweethearts - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_wheels" then
		game:GetService'Players':Chat(("music 3898358473"))
		game:GetService'Players':Chat(("h Playing: Wheels on The Bus - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if string.sub(msg, 1, 17) == ":melanie_martinez" then
		local plr = string.sub(msg, 19)
		game:GetService'Players':Chat(("unhat "..plr))
		game:GetService'Players':Chat(("unpants "..plr))
		game:GetService'Players':Chat(("unshirt "..plr))
		game:GetService'Players':Chat(("hat "..plr.." 4124350220"))
		game:GetService'Players':Chat(("pants "..plr.." 5608414543"))
		game:GetService'Players':Chat(("face "..plr.." 209995366"))
		game:GetService'Players':Chat(("name "..plr.." Melanie Martinez"))
		game:GetService'Players':Chat(("music 3908112818"))
		game:GetService'Players':Chat(("h Playing: Detention - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


end)

local ScreenGui = {
	ScreenGui = Instance.new("ScreenGui"),
	BackroundDrag = Instance.new("Frame"),
	OnOffGui = Instance.new("Frame"),
	TextLabel = Instance.new("TextLabel"),
	MoveGuiOn = Instance.new("TextButton"),
	UICorner = Instance.new("UICorner"),
	TextLabel_2 = Instance.new("TextLabel"),
	UICorner_2 = Instance.new("UICorner"),
	MoveGuiOff = Instance.new("TextButton"),
	UICorner_3 = Instance.new("UICorner"),
	TextLabel_3 = Instance.new("TextLabel"),
	UICorner_4 = Instance.new("UICorner"),
	MusicGuiOff = Instance.new("TextButton"),
	UICorner_5 = Instance.new("UICorner"),
	TextLabel_4 = Instance.new("TextLabel"),
	UICorner_6 = Instance.new("UICorner"),
	MusicGuiOn = Instance.new("TextButton"),
	UICorner_7 = Instance.new("UICorner"),
	TextLabel_5 = Instance.new("TextLabel"),
	UICorner_8 = Instance.new("UICorner"),
	AbusiveGuiOff = Instance.new("TextButton"),
	TextLabel_6 = Instance.new("TextLabel"),
	UICorner_9 = Instance.new("UICorner"),
	UICorner_10 = Instance.new("UICorner"),
	AbusiveGuiOn = Instance.new("TextButton"),
	UICorner_11 = Instance.new("UICorner"),
	TextLabel_7 = Instance.new("TextLabel"),
	UICorner_12 = Instance.new("UICorner"),
	antiGuiOn = Instance.new("TextButton"),
	UICorner_13 = Instance.new("UICorner"),
	TextLabel_8 = Instance.new("TextLabel"),
	UICorner_14 = Instance.new("UICorner"),
	antiGuiOff = Instance.new("TextButton"),
	UICorner_15 = Instance.new("UICorner"),
	TextLabel_9 = Instance.new("TextLabel"),
	UICorner_16 = Instance.new("UICorner"),
	GearGuiOn = Instance.new("TextButton"),
	UICorner_17 = Instance.new("UICorner"),
	TextLabel_10 = Instance.new("TextLabel"),
	UICorner_18 = Instance.new("UICorner"),
	GearGuiOff = Instance.new("TextButton"),
	UICorner_19 = Instance.new("UICorner"),
	TextLabel_11 = Instance.new("TextLabel"),
	UICorner_20 = Instance.new("UICorner"),
	QuickGuiOn = Instance.new("TextButton"),
	UICorner_21 = Instance.new("UICorner"),
	TextLabel_12 = Instance.new("TextLabel"),
	UICorner_22 = Instance.new("UICorner"),
	QuickGuiOff = Instance.new("TextButton"),
	UICorner_23 = Instance.new("UICorner"),
	TextLabel_13 = Instance.new("TextLabel"),
	UICorner_24 = Instance.new("UICorner"),
	FunnyGuiOn = Instance.new("TextButton"),
	UICorner_25 = Instance.new("UICorner"),
	TextLabel_14 = Instance.new("TextLabel"),
	UICorner_26 = Instance.new("UICorner"),
	FunnyuiOff = Instance.new("TextButton"),
	UICorner_27 = Instance.new("UICorner"),
	TextLabel_15 = Instance.new("TextLabel"),
	UICorner_28 = Instance.new("UICorner"),
	UICorner_29 = Instance.new("UICorner"),
	gotopage2main = Instance.new("TextButton"),
	UICorner_30 = Instance.new("UICorner"),
	gotopage1main = Instance.new("TextButton"),
	UICorner_31 = Instance.new("UICorner"),
	OnOffGui2 = Instance.new("Frame"),
	TextLabel_16 = Instance.new("TextLabel"),
	PaintGuiOn = Instance.new("TextButton"),
	UICorner_32 = Instance.new("UICorner"),
	TextLabel_17 = Instance.new("TextLabel"),
	UICorner_33 = Instance.new("UICorner"),
	PaintGuiOff = Instance.new("TextButton"),
	UICorner_34 = Instance.new("UICorner"),
	TextLabel_18 = Instance.new("TextLabel"),
	UICorner_35 = Instance.new("UICorner"),
	TPGuiOff = Instance.new("TextButton"),
	UICorner_36 = Instance.new("UICorner"),
	TextLabel_19 = Instance.new("TextLabel"),
	UICorner_37 = Instance.new("UICorner"),
	TpGuiOn = Instance.new("TextButton"),
	UICorner_38 = Instance.new("UICorner"),
	TextLabel_20 = Instance.new("TextLabel"),
	UICorner_39 = Instance.new("UICorner"),
	ColorsGuiOff = Instance.new("TextButton"),
	TextLabel_21 = Instance.new("TextLabel"),
	UICorner_40 = Instance.new("UICorner"),
	UICorner_41 = Instance.new("UICorner"),
	ColorsGuiOn = Instance.new("TextButton"),
	UICorner_42 = Instance.new("UICorner"),
	TextLabel_22 = Instance.new("TextLabel"),
	UICorner_43 = Instance.new("UICorner"),
	noabuseGuiOn = Instance.new("TextButton"),
	UICorner_44 = Instance.new("UICorner"),
	TextLabel_23 = Instance.new("TextLabel"),
	UICorner_45 = Instance.new("UICorner"),
	noabuseGuiOff = Instance.new("TextButton"),
	UICorner_46 = Instance.new("UICorner"),
	TextLabel_24 = Instance.new("TextLabel"),
	UICorner_47 = Instance.new("UICorner"),
	helpfullGuiOn = Instance.new("TextButton"),
	UICorner_48 = Instance.new("UICorner"),
	TextLabel_25 = Instance.new("TextLabel"),
	UICorner_49 = Instance.new("UICorner"),
	HelpfullGuiOff = Instance.new("TextButton"),
	UICorner_50 = Instance.new("UICorner"),
	TextLabel_26 = Instance.new("TextLabel"),
	UICorner_51 = Instance.new("UICorner"),
	CreditsGuiOn = Instance.new("TextButton"),
	UICorner_52 = Instance.new("UICorner"),
	TextLabel_27 = Instance.new("TextLabel"),
	UICorner_53 = Instance.new("UICorner"),
	CreditsGuiOff = Instance.new("TextButton"),
	UICorner_54 = Instance.new("UICorner"),
	TextLabel_28 = Instance.new("TextLabel"),
	UICorner_55 = Instance.new("UICorner"),
	PadGuiOn = Instance.new("TextButton"),
	UICorner_56 = Instance.new("UICorner"),
	TextLabel_29 = Instance.new("TextLabel"),
	UICorner_57 = Instance.new("UICorner"),
	PadGuiOff = Instance.new("TextButton"),
	UICorner_58 = Instance.new("UICorner"),
	TextLabel_30 = Instance.new("TextLabel"),
	UICorner_59 = Instance.new("UICorner"),
	UICorner_60 = Instance.new("UICorner"),
	UICorner_61 = Instance.new("UICorner"),
	FunnyGuiDrag = Instance.new("Frame"),
	FunnyMainGui = Instance.new("Frame"),
	TextLabel_31 = Instance.new("TextLabel"),
	UICorner_62 = Instance.new("UICorner"),
	Nuke = Instance.new("TextButton"),
	UICorner_63 = Instance.new("UICorner"),
	Nothing2Funny = Instance.new("TextButton"),
	UICorner_64 = Instance.new("UICorner"),
	Nothing1funny = Instance.new("TextButton"),
	UICorner_65 = Instance.new("UICorner"),
	Melanie = Instance.new("TextButton"),
	UICorner_66 = Instance.new("UICorner"),
	MEGApew = Instance.new("TextButton"),
	UICorner_67 = Instance.new("UICorner"),
	pew = Instance.new("TextButton"),
	UICorner_68 = Instance.new("UICorner"),
	Cube = Instance.new("TextButton"),
	UICorner_69 = Instance.new("UICorner"),
	UICorner_70 = Instance.new("UICorner"),
	MoveGuiDrag = Instance.new("Frame"),
	MoveMainGui = Instance.new("Frame"),
	TextLabel_32 = Instance.new("TextLabel"),
	UICorner_71 = Instance.new("UICorner"),
	MovePads = Instance.new("TextButton"),
	UICorner_72 = Instance.new("UICorner"),
	RemoveRegen = Instance.new("TextButton"),
	UICorner_73 = Instance.new("UICorner"),
	MoveDividers = Instance.new("TextButton"),
	UICorner_74 = Instance.new("UICorner"),
	MoveHouse = Instance.new("TextButton"),
	UICorner_75 = Instance.new("UICorner"),
	MoveObby = Instance.new("TextButton"),
	UICorner_76 = Instance.new("UICorner"),
	Moveobbywalls = Instance.new("TextButton"),
	UICorner_77 = Instance.new("UICorner"),
	MoveRegenpad = Instance.new("TextButton"),
	UICorner_78 = Instance.new("UICorner"),
	UICorner_79 = Instance.new("UICorner"),
	MusicGuiDrag = Instance.new("Frame"),
	MusicMainpage1Gui = Instance.new("Frame"),
	TextLabel_33 = Instance.new("TextLabel"),
	CryBaby = Instance.new("TextButton"),
	UICorner_80 = Instance.new("UICorner"),
	Shrimps = Instance.new("TextButton"),
	UICorner_81 = Instance.new("UICorner"),
	Who = Instance.new("TextButton"),
	UICorner_82 = Instance.new("UICorner"),
	TakeAHint = Instance.new("TextButton"),
	UICorner_83 = Instance.new("UICorner"),
	SantaTellMe = Instance.new("TextButton"),
	UICorner_84 = Instance.new("UICorner"),
	MyWay = Instance.new("TextButton"),
	UICorner_85 = Instance.new("UICorner"),
	Cake = Instance.new("TextButton"),
	UICorner_86 = Instance.new("UICorner"),
	UICorner_87 = Instance.new("UICorner"),
	MusicMainpage2Gui = Instance.new("Frame"),
	TextLabel_34 = Instance.new("TextLabel"),
	Detention = Instance.new("TextButton"),
	UICorner_88 = Instance.new("UICorner"),
	Someone = Instance.new("TextButton"),
	UICorner_89 = Instance.new("UICorner"),
	DeathBed = Instance.new("TextButton"),
	UICorner_90 = Instance.new("UICorner"),
	Wheels = Instance.new("TextButton"),
	UICorner_91 = Instance.new("UICorner"),
	HighSchoolSh = Instance.new("TextButton"),
	UICorner_92 = Instance.new("UICorner"),
	ThePrincipal = Instance.new("TextButton"),
	UICorner_93 = Instance.new("UICorner"),
	NursesOffice = Instance.new("TextButton"),
	UICorner_94 = Instance.new("UICorner"),
	UICorner_95 = Instance.new("UICorner"),
	gotopage1Music = Instance.new("TextButton"),
	UICorner_96 = Instance.new("UICorner"),
	gotopage2Music = Instance.new("TextButton"),
	UICorner_97 = Instance.new("UICorner"),
	UICorner_98 = Instance.new("UICorner"),
	AbusiveGuiDrag = Instance.new("Frame"),
	AbusiveMainGui = Instance.new("Frame"),
	TextLabel_35 = Instance.new("TextLabel"),
	UICorner_99 = Instance.new("UICorner"),
	Nothing2Abusive = Instance.new("TextButton"),
	UICorner_100 = Instance.new("UICorner"),
	Nothing1Abusive = Instance.new("TextButton"),
	UICorner_101 = Instance.new("UICorner"),
	trapSpawn = Instance.new("TextButton"),
	UICorner_102 = Instance.new("UICorner"),
	Crash = Instance.new("TextButton"),
	UICorner_103 = Instance.new("UICorner"),
	CrashVampire = Instance.new("TextButton"),
	UICorner_104 = Instance.new("UICorner"),
	SilentCrash = Instance.new("TextButton"),
	UICorner_105 = Instance.new("UICorner"),
	REGuiOn = Instance.new("TextButton"),
	UICorner_106 = Instance.new("UICorner"),
	TextLabel_36 = Instance.new("TextLabel"),
	UICorner_107 = Instance.new("UICorner"),
	REGuiOff = Instance.new("TextButton"),
	UICorner_108 = Instance.new("UICorner"),
	TextLabel_37 = Instance.new("TextLabel"),
	UICorner_109 = Instance.new("UICorner"),
	UICorner_110 = Instance.new("UICorner"),
	QuickGuiDrag = Instance.new("Frame"),
	QuickMainGui = Instance.new("Frame"),
	TextLabel_38 = Instance.new("TextLabel"),
	UICorner_111 = Instance.new("UICorner"),
	Fly = Instance.new("TextButton"),
	UICorner_112 = Instance.new("UICorner"),
	AttachWall = Instance.new("TextButton"),
	UICorner_113 = Instance.new("UICorner"),
	AttachFloor = Instance.new("TextButton"),
	UICorner_114 = Instance.new("UICorner"),
	Unchar = Instance.new("TextButton"),
	UICorner_115 = Instance.new("UICorner"),
	Respawn = Instance.new("TextButton"),
	UICorner_116 = Instance.new("UICorner"),
	Reset = Instance.new("TextButton"),
	UICorner_117 = Instance.new("UICorner"),
	UnFly = Instance.new("TextButton"),
	UICorner_118 = Instance.new("UICorner"),
	UICorner_119 = Instance.new("UICorner"),
	GearGuiDrag = Instance.new("Frame"),
	GearMainGui = Instance.new("Frame"),
	TextLabel_39 = Instance.new("TextLabel"),
	UICorner_120 = Instance.new("UICorner"),
	CarGear = Instance.new("TextButton"),
	UICorner_121 = Instance.new("UICorner"),
	JailTrap = Instance.new("TextButton"),
	UICorner_122 = Instance.new("UICorner"),
	PaintBucket = Instance.new("TextButton"),
	UICorner_123 = Instance.new("UICorner"),
	BoomBox = Instance.new("TextButton"),
	UICorner_124 = Instance.new("UICorner"),
	LaserGun = Instance.new("TextButton"),
	UICorner_125 = Instance.new("UICorner"),
	LaserPens = Instance.new("TextButton"),
	UICorner_126 = Instance.new("UICorner"),
	IvoryGear = Instance.new("TextButton"),
	UICorner_127 = Instance.new("UICorner"),
	UICorner_128 = Instance.new("UICorner"),
	PadGuiDrag = Instance.new("Frame"),
	PadMainGui = Instance.new("Frame"),
	TextLabel_40 = Instance.new("TextLabel"),
	FindPads = Instance.new("TextButton"),
	UICorner_129 = Instance.new("UICorner"),
	Nothing2Pad = Instance.new("TextButton"),
	UICorner_130 = Instance.new("UICorner"),
	RegenPads = Instance.new("TextButton"),
	UICorner_131 = Instance.new("UICorner"),
	GetAllPad = Instance.new("TextButton"),
	UICorner_132 = Instance.new("UICorner"),
	GotoPad = Instance.new("TextButton"),
	UICorner_133 = Instance.new("UICorner"),
	UICorner_134 = Instance.new("UICorner"),
	PermOff = Instance.new("TextButton"),
	UICorner_135 = Instance.new("UICorner"),
	TextLabel_41 = Instance.new("TextLabel"),
	UICorner_136 = Instance.new("UICorner"),
	PermOn = Instance.new("TextButton"),
	UICorner_137 = Instance.new("UICorner"),
	TextLabel_42 = Instance.new("TextLabel"),
	UICorner_138 = Instance.new("UICorner"),
	PermAllPadsOff = Instance.new("TextButton"),
	UICorner_139 = Instance.new("UICorner"),
	TextLabel_43 = Instance.new("TextLabel"),
	UICorner_140 = Instance.new("UICorner"),
	PermAllPadsOn = Instance.new("TextButton"),
	UICorner_141 = Instance.new("UICorner"),
	TextLabel_44 = Instance.new("TextLabel"),
	UICorner_142 = Instance.new("UICorner"),
	UICorner_143 = Instance.new("UICorner"),
	PaintGuiDrag = Instance.new("Frame"),
	PaintMainGui = Instance.new("Frame"),
	TextLabel_45 = Instance.new("TextLabel"),
	UICorner_144 = Instance.new("UICorner"),
	NightsFavPaint = Instance.new("TextButton"),
	UICorner_145 = Instance.new("UICorner"),
	Notthing1Paint = Instance.new("TextButton"),
	UICorner_146 = Instance.new("UICorner"),
	AllWgitePaint = Instance.new("TextButton"),
	UICorner_147 = Instance.new("UICorner"),
	AllBlackPaint = Instance.new("TextButton"),
	UICorner_148 = Instance.new("UICorner"),
	AllOriginalPaint = Instance.new("TextButton"),
	UICorner_149 = Instance.new("UICorner"),
	AllRandomPaint = Instance.new("TextButton"),
	UICorner_150 = Instance.new("UICorner"),
	ScalesFavPaint = Instance.new("TextButton"),
	UICorner_151 = Instance.new("UICorner"),
	UICorner_152 = Instance.new("UICorner"),
	HelpfullGuiDrag = Instance.new("Frame"),
	HelpfullMainGui = Instance.new("Frame"),
	TextLabel_46 = Instance.new("TextLabel"),
	UICorner_153 = Instance.new("UICorner"),
	NoObbyKill = Instance.new("TextButton"),
	UICorner_154 = Instance.new("UICorner"),
	RemovePhantomBp = Instance.new("TextButton"),
	UICorner_155 = Instance.new("UICorner"),
	PhantomBp = Instance.new("TextButton"),
	UICorner_156 = Instance.new("UICorner"),
	Btools = Instance.new("TextButton"),
	UICorner_157 = Instance.new("UICorner"),
	Rejoin = Instance.new("TextButton"),
	UICorner_158 = Instance.new("UICorner"),
	Invert = Instance.new("TextButton"),
	UICorner_159 = Instance.new("UICorner"),
	NoAdminUnpunish = Instance.new("TextButton"),
	UICorner_160 = Instance.new("UICorner"),
	UICorner_161 = Instance.new("UICorner"),
	AntiGuiDrag = Instance.new("Frame"),
	AntiMainGui = Instance.new("Frame"),
	TextLabel_47 = Instance.new("TextLabel"),
	UICorner_162 = Instance.new("UICorner"),
	Antikilloff = Instance.new("TextButton"),
	TextLabel_48 = Instance.new("TextLabel"),
	UICorner_163 = Instance.new("UICorner"),
	UICorner_164 = Instance.new("UICorner"),
	AntiKillOn = Instance.new("TextButton"),
	UICorner_165 = Instance.new("UICorner"),
	TextLabel_49 = Instance.new("TextLabel"),
	UICorner_166 = Instance.new("UICorner"),
	AntiPunishOn = Instance.new("TextButton"),
	UICorner_167 = Instance.new("UICorner"),
	TextLabel_50 = Instance.new("TextLabel"),
	UICorner_168 = Instance.new("UICorner"),
	AntiPunishoff = Instance.new("TextButton"),
	UICorner_169 = Instance.new("UICorner"),
	TextLabel_51 = Instance.new("TextLabel"),
	UICorner_170 = Instance.new("UICorner"),
	AntiCrashOff = Instance.new("TextButton"),
	UICorner_171 = Instance.new("UICorner"),
	TextLabel_52 = Instance.new("TextLabel"),
	UICorner_172 = Instance.new("UICorner"),
	antiCrashOn = Instance.new("TextButton"),
	UICorner_173 = Instance.new("UICorner"),
	TextLabel_53 = Instance.new("TextLabel"),
	UICorner_174 = Instance.new("UICorner"),
	AntiSkydiveOff = Instance.new("TextButton"),
	TextLabel_54 = Instance.new("TextLabel"),
	UICorner_175 = Instance.new("UICorner"),
	UICorner_176 = Instance.new("UICorner"),
	AntiSkydiveOn = Instance.new("TextButton"),
	UICorner_177 = Instance.new("UICorner"),
	TextLabel_55 = Instance.new("TextLabel"),
	UICorner_178 = Instance.new("UICorner"),
	AntiMusicOff = Instance.new("TextButton"),
	UICorner_179 = Instance.new("UICorner"),
	TextLabel_56 = Instance.new("TextLabel"),
	UICorner_180 = Instance.new("UICorner"),
	AntiMusicOn = Instance.new("TextButton"),
	UICorner_181 = Instance.new("UICorner"),
	TextLabel_57 = Instance.new("TextLabel"),
	UICorner_182 = Instance.new("UICorner"),
	AntiMsgCrashOff = Instance.new("TextButton"),
	UICorner_183 = Instance.new("UICorner"),
	TextLabel_58 = Instance.new("TextLabel"),
	UICorner_184 = Instance.new("UICorner"),
	AntiMsgCrashOn = Instance.new("TextButton"),
	UICorner_185 = Instance.new("UICorner"),
	TextLabel_59 = Instance.new("TextLabel"),
	UICorner_186 = Instance.new("UICorner"),
	antiBlindOff = Instance.new("TextButton"),
	UICorner_187 = Instance.new("UICorner"),
	TextLabel_60 = Instance.new("TextLabel"),
	UICorner_188 = Instance.new("UICorner"),
	antiBlindOn = Instance.new("TextButton"),
	UICorner_189 = Instance.new("UICorner"),
	TextLabel_61 = Instance.new("TextLabel"),
	UICorner_190 = Instance.new("UICorner"),
	UICorner_191 = Instance.new("UICorner"),
	CreditsGuiDrag = Instance.new("Frame"),
	CreditsMainGui = Instance.new("Frame"),
	TextLabel_62 = Instance.new("TextLabel"),
	HouseTP = Instance.new("TextButton"),
	UICorner_192 = Instance.new("UICorner"),
	Spawn3Tp = Instance.new("TextButton"),
	UICorner_193 = Instance.new("UICorner"),
	Spawn2Tp = Instance.new("TextButton"),
	UICorner_194 = Instance.new("UICorner"),
	Spawn1Tp = Instance.new("TextButton"),
	UICorner_195 = Instance.new("UICorner"),
	TopHouseTp = Instance.new("TextButton"),
	UICorner_196 = Instance.new("UICorner"),
	EndObbyTp = Instance.new("TextButton"),
	UICorner_197 = Instance.new("UICorner"),
	PadsTp = Instance.new("TextButton"),
	UICorner_198 = Instance.new("UICorner"),
	UICorner_199 = Instance.new("UICorner"),
	UICorner_200 = Instance.new("UICorner"),
	TpGuiDrag = Instance.new("Frame"),
	TpMainGui = Instance.new("Frame"),
	TextLabel_63 = Instance.new("TextLabel"),
	UICorner_201 = Instance.new("UICorner"),
	TextLabel_64 = Instance.new("TextLabel"),
	TextLabel_65 = Instance.new("TextLabel"),
	UICorner_202 = Instance.new("UICorner"),
	ColorsGuiDrag = Instance.new("Frame"),
	ColorsMainGui = Instance.new("Frame"),
	TextLabel_66 = Instance.new("TextLabel"),
	Heaven = Instance.new("TextButton"),
	UICorner_203 = Instance.new("UICorner"),
	Nothing1Color = Instance.new("TextButton"),
	UICorner_204 = Instance.new("UICorner"),
	Christmas = Instance.new("TextButton"),
	UICorner_205 = Instance.new("UICorner"),
	Shadows = Instance.new("TextButton"),
	UICorner_206 = Instance.new("UICorner"),
	Sunset = Instance.new("TextButton"),
	UICorner_207 = Instance.new("UICorner"),
	Sunrise = Instance.new("TextButton"),
	UICorner_208 = Instance.new("UICorner"),
	UICorner_209 = Instance.new("UICorner"),
	RainbowOff = Instance.new("TextButton"),
	UICorner_210 = Instance.new("UICorner"),
	TextLabel_67 = Instance.new("TextLabel"),
	UICorner_211 = Instance.new("UICorner"),
	RainbowOn = Instance.new("TextButton"),
	UICorner_212 = Instance.new("UICorner"),
	TextLabel_68 = Instance.new("TextLabel"),
	UICorner_213 = Instance.new("UICorner"),
	UICorner_214 = Instance.new("UICorner"),
	AbuseNoGuiDrag = Instance.new("Frame"),
	AbuseNoMainGui = Instance.new("Frame"),
	TextLabel_69 = Instance.new("TextLabel"),
	UICorner_215 = Instance.new("UICorner"),
	Nothing2AbuseNo = Instance.new("TextButton"),
	UICorner_216 = Instance.new("UICorner"),
	Nothing1AbuseNo = Instance.new("TextButton"),
	UICorner_217 = Instance.new("UICorner"),
	TpAllHouse = Instance.new("TextButton"),
	UICorner_218 = Instance.new("UICorner"),
	GodAll = Instance.new("TextButton"),
	UICorner_219 = Instance.new("UICorner"),
	FfAll = Instance.new("TextButton"),
	UICorner_220 = Instance.new("UICorner"),
	AutoHealoff = Instance.new("TextButton"),
	UICorner_221 = Instance.new("UICorner"),
	TextLabel_70 = Instance.new("TextLabel"),
	UICorner_222 = Instance.new("UICorner"),
	AutoHealOn = Instance.new("TextButton"),
	UICorner_223 = Instance.new("UICorner"),
	TextLabel_71 = Instance.new("TextLabel"),
	UICorner_224 = Instance.new("UICorner"),
	AntiKillAllOff = Instance.new("TextButton"),
	UICorner_225 = Instance.new("UICorner"),
	TextLabel_72 = Instance.new("TextLabel"),
	UICorner_226 = Instance.new("UICorner"),
	AntiKillAllOn = Instance.new("TextButton"),
	UICorner_227 = Instance.new("UICorner"),
	TextLabel_73 = Instance.new("TextLabel"),
	UICorner_228 = Instance.new("UICorner"),
	UICorner_229 = Instance.new("UICorner"),
}

--Properties:

ScreenGui.ScreenGui.Parent = game.CoreGui

ScreenGui.BackroundDrag.Name = "BackroundDrag"
ScreenGui.BackroundDrag.Parent = ScreenGui.ScreenGui
ScreenGui.BackroundDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.BackroundDrag.BorderSizePixel = 0
ScreenGui.BackroundDrag.Position = UDim2.new(0, 0, 0.0122117642, 0)
ScreenGui.BackroundDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.BackroundDrag.Active = true
ScreenGui.BackroundDrag.Draggable = true

ScreenGui.OnOffGui.Name = "On/OffGui"
ScreenGui.OnOffGui.Parent = ScreenGui.BackroundDrag
ScreenGui.OnOffGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.OnOffGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.OnOffGui.Size = UDim2.new(0, 184, 0, 369)
ScreenGui.OnOffGui.Active = true

ScreenGui.TextLabel.Parent = ScreenGui.OnOffGui
ScreenGui.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel.BackgroundTransparency = 1.000
ScreenGui.TextLabel.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel.Text = "Hello ".. game.Players.LocalPlayer.Name .. "!"
ScreenGui.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel.TextScaled = true
ScreenGui.TextLabel.TextSize = 14.000
ScreenGui.TextLabel.TextWrapped = true

ScreenGui.MoveGuiOn.Name = "MoveGuiOn"
ScreenGui.MoveGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.MoveGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveGuiOn.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.MoveGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveGuiOn.Visible = false
ScreenGui.MoveGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.MoveGuiOn.Text = "Move Gui"
ScreenGui.MoveGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveGuiOn.TextSize = 20.000
ScreenGui.MoveGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.MoveGuiOn.MouseButton1Down:connect(function()
	ScreenGui.MoveGuiOn.Visible = false
	ScreenGui.MoveGuiOff.Visible = true
	ScreenGui.MoveGuiDrag.Visible = false
end)

ScreenGui.UICorner.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner.Parent = ScreenGui.MoveGuiOn

ScreenGui.TextLabel_2.Parent = ScreenGui.MoveGuiOn
ScreenGui.TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_2.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_2.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_2.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_2.Text = ""
ScreenGui.TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_2.TextSize = 14.000

ScreenGui.UICorner_2.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_2.Parent = ScreenGui.TextLabel_2

ScreenGui.MoveGuiOff.Name = "MoveGuiOff"
ScreenGui.MoveGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.MoveGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveGuiOff.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.MoveGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.MoveGuiOff.Text = "Move Gui"
ScreenGui.MoveGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveGuiOff.TextSize = 20.000
ScreenGui.MoveGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.MoveGuiOff.MouseButton1Down:connect(function()
	ScreenGui.MoveGuiOn.Visible = true
	ScreenGui.MoveGuiOff.Visible = false
	ScreenGui.MoveGuiDrag.Visible = true
end)

ScreenGui.UICorner_3.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_3.Parent = ScreenGui.MoveGuiOff

ScreenGui.TextLabel_3.Parent = ScreenGui.MoveGuiOff
ScreenGui.TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_3.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_3.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_3.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_3.Text = ""
ScreenGui.TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_3.TextSize = 14.000

ScreenGui.UICorner_4.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_4.Parent = ScreenGui.TextLabel_3

ScreenGui.MusicGuiOff.Name = "MusicGuiOff"
ScreenGui.MusicGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.MusicGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MusicGuiOff.Position = UDim2.new(0.0920000002, 0, 0.366976023, 0)
ScreenGui.MusicGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MusicGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.MusicGuiOff.Text = "Music Gui"
ScreenGui.MusicGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MusicGuiOff.TextSize = 20.000
ScreenGui.MusicGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.MusicGuiOff.MouseButton1Down:connect(function()
	ScreenGui.MusicGuiOff.Visible = false
	ScreenGui.MusicGuiDrag.Visible = true
	ScreenGui.MusicGuiOn.Visible = true
end)

ScreenGui.UICorner_5.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_5.Parent = ScreenGui.MusicGuiOff

ScreenGui.TextLabel_4.Parent = ScreenGui.MusicGuiOff
ScreenGui.TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_4.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_4.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_4.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_4.Text = ""
ScreenGui.TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_4.TextSize = 14.000

ScreenGui.UICorner_6.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_6.Parent = ScreenGui.TextLabel_4

ScreenGui.MusicGuiOn.Name = "MusicGuiOn"
ScreenGui.MusicGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.MusicGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MusicGuiOn.Position = UDim2.new(0.0920000002, 0, 0.367000014, 0)
ScreenGui.MusicGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MusicGuiOn.Visible = false
ScreenGui.MusicGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.MusicGuiOn.Text = "Music Gui"
ScreenGui.MusicGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MusicGuiOn.TextSize = 20.000
ScreenGui.MusicGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.MusicGuiOn.MouseButton1Down:connect(function()
	ScreenGui.MusicGuiOff.Visible = true
	ScreenGui.MusicGuiDrag.Visible = false
	ScreenGui.MusicGuiOn.Visible = false
end)

ScreenGui.UICorner_7.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_7.Parent = ScreenGui.MusicGuiOn

ScreenGui.TextLabel_5.Parent = ScreenGui.MusicGuiOn
ScreenGui.TextLabel_5.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_5.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_5.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_5.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_5.Text = ""
ScreenGui.TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_5.TextSize = 14.000

ScreenGui.UICorner_8.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_8.Parent = ScreenGui.TextLabel_5

ScreenGui.AbusiveGuiOff.Name = "AbusiveGuiOff"
ScreenGui.AbusiveGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.AbusiveGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AbusiveGuiOff.Position = UDim2.new(0.0920000002, 0, 0.501946092, 0)
ScreenGui.AbusiveGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AbusiveGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.AbusiveGuiOff.Text = "Abusive Gui"
ScreenGui.AbusiveGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AbusiveGuiOff.TextSize = 20.000
ScreenGui.AbusiveGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AbusiveGuiOff.MouseButton1Down:connect(function()
	ScreenGui.AbusiveGuiOff.Visible = false
	ScreenGui.AbusiveGuiOn.Visible = true
	ScreenGui.AbusiveGuiDrag.Visible = true
end)

ScreenGui.TextLabel_6.Parent = ScreenGui.AbusiveGuiOff
ScreenGui.TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_6.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_6.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_6.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_6.Text = ""
ScreenGui.TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_6.TextSize = 14.000

ScreenGui.UICorner_9.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_9.Parent = ScreenGui.TextLabel_6

ScreenGui.UICorner_10.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_10.Parent = ScreenGui.AbusiveGuiOff

ScreenGui.AbusiveGuiOn.Name = "AbusiveGuiOn"
ScreenGui.AbusiveGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.AbusiveGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AbusiveGuiOn.Position = UDim2.new(0.0920000002, 0, 0.501999974, 0)
ScreenGui.AbusiveGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AbusiveGuiOn.Visible = false
ScreenGui.AbusiveGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.AbusiveGuiOn.Text = "Abusive Gui"
ScreenGui.AbusiveGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AbusiveGuiOn.TextSize = 20.000
ScreenGui.AbusiveGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AbusiveGuiOn.MouseButton1Down:connect(function()
	ScreenGui.AbusiveGuiOff.Visible = true
	ScreenGui.AbusiveGuiOn.Visible = false
	ScreenGui.AbusiveGuiDrag.Visible = false
end)

ScreenGui.UICorner_11.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_11.Parent = ScreenGui.AbusiveGuiOn

ScreenGui.TextLabel_7.Parent = ScreenGui.AbusiveGuiOn
ScreenGui.TextLabel_7.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_7.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_7.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_7.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_7.Text = ""
ScreenGui.TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_7.TextSize = 14.000

ScreenGui.UICorner_12.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_12.Parent = ScreenGui.TextLabel_7

ScreenGui.antiGuiOn.Name = "antiGuiOn"
ScreenGui.antiGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.antiGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiGuiOn.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.antiGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiGuiOn.Visible = false
ScreenGui.antiGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.antiGuiOn.Text = "Anti Gui"
ScreenGui.antiGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiGuiOn.TextSize = 20.000
ScreenGui.antiGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.antiGuiOn.MouseButton1Down:connect(function()
	ScreenGui.AntiGuiDrag.Visible = false
	ScreenGui.antiGuiOn.Visible = false
	ScreenGui.antiGuiOff.Visible = true
end)

ScreenGui.UICorner_13.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_13.Parent = ScreenGui.antiGuiOn

ScreenGui.TextLabel_8.Parent = ScreenGui.antiGuiOn
ScreenGui.TextLabel_8.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_8.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_8.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_8.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_8.Text = ""
ScreenGui.TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_8.TextSize = 14.000

ScreenGui.UICorner_14.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_14.Parent = ScreenGui.TextLabel_8

ScreenGui.antiGuiOff.Name = "antiGuiOff"
ScreenGui.antiGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.antiGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiGuiOff.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.antiGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.antiGuiOff.Text = "Anti Gui"
ScreenGui.antiGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiGuiOff.TextSize = 20.000
ScreenGui.antiGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.antiGuiOff.MouseButton1Down:connect(function()
	ScreenGui.AntiGuiDrag.Visible = true
	ScreenGui.antiGuiOn.Visible = true
	ScreenGui.antiGuiOff.Visible = false
end)

ScreenGui.UICorner_15.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_15.Parent = ScreenGui.antiGuiOff

ScreenGui.TextLabel_9.Parent = ScreenGui.antiGuiOff
ScreenGui.TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_9.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_9.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_9.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_9.Text = ""
ScreenGui.TextLabel_9.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_9.TextSize = 14.000

ScreenGui.UICorner_16.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_16.Parent = ScreenGui.TextLabel_9

ScreenGui.GearGuiOn.Name = "GearGuiOn"
ScreenGui.GearGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.GearGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GearGuiOn.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.GearGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GearGuiOn.Visible = false
ScreenGui.GearGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.GearGuiOn.Text = "Gear Gui"
ScreenGui.GearGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GearGuiOn.TextSize = 20.000
ScreenGui.GearGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.GearGuiOn.MouseButton1Down:connect(function()
	ScreenGui.GearGuiOn.Visible = false
	ScreenGui.GearGuiDrag.Visible = false
	ScreenGui.GearGuiOff.Visible = true
end)


ScreenGui.UICorner_17.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_17.Parent = ScreenGui.GearGuiOn

ScreenGui.TextLabel_10.Parent = ScreenGui.GearGuiOn
ScreenGui.TextLabel_10.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_10.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_10.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_10.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_10.Text = ""
ScreenGui.TextLabel_10.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_10.TextSize = 14.000

ScreenGui.UICorner_18.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_18.Parent = ScreenGui.TextLabel_10

ScreenGui.GearGuiOff.Name = "GearGuiOff"
ScreenGui.GearGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.GearGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GearGuiOff.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.GearGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GearGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.GearGuiOff.Text = "Gear Gui"
ScreenGui.GearGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GearGuiOff.TextSize = 20.000
ScreenGui.GearGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.GearGuiOff.MouseButton1Down:connect(function()
	ScreenGui.GearGuiOn.Visible = true
	ScreenGui.GearGuiDrag.Visible = true
	ScreenGui.GearGuiOff.Visible = false
end)

ScreenGui.UICorner_19.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_19.Parent = ScreenGui.GearGuiOff

ScreenGui.TextLabel_11.Parent = ScreenGui.GearGuiOff
ScreenGui.TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_11.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_11.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_11.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_11.Text = ""
ScreenGui.TextLabel_11.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_11.TextSize = 14.000

ScreenGui.UICorner_20.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_20.Parent = ScreenGui.TextLabel_11

ScreenGui.QuickGuiOn.Name = "QuickGuiOn"
ScreenGui.QuickGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.QuickGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.QuickGuiOn.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.QuickGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.QuickGuiOn.Visible = false
ScreenGui.QuickGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.QuickGuiOn.Text = "Quick Gui"
ScreenGui.QuickGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.QuickGuiOn.TextSize = 20.000
ScreenGui.QuickGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.QuickGuiOn.MouseButton1Down:connect(function()
	ScreenGui.QuickGuiOn.Visible = false
	ScreenGui.QuickGuiDrag.Visible = false
	ScreenGui.QuickGuiOff.Visible = true
end)

ScreenGui.UICorner_21.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_21.Parent = ScreenGui.QuickGuiOn

ScreenGui.TextLabel_12.Parent = ScreenGui.QuickGuiOn
ScreenGui.TextLabel_12.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_12.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_12.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_12.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_12.Text = ""
ScreenGui.TextLabel_12.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_12.TextSize = 14.000

ScreenGui.UICorner_22.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_22.Parent = ScreenGui.TextLabel_12

ScreenGui.QuickGuiOff.Name = "QuickGuiOff"
ScreenGui.QuickGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.QuickGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.QuickGuiOff.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.QuickGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.QuickGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.QuickGuiOff.Text = "Quick Gui"
ScreenGui.QuickGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.QuickGuiOff.TextSize = 20.000
ScreenGui.QuickGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.QuickGuiOff.MouseButton1Down:connect(function()
	ScreenGui.QuickGuiOn.Visible = true
	ScreenGui.QuickGuiDrag.Visible = true
	ScreenGui.QuickGuiOff.Visible = false
end)

ScreenGui.UICorner_23.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_23.Parent = ScreenGui.QuickGuiOff

ScreenGui.TextLabel_13.Parent = ScreenGui.QuickGuiOff
ScreenGui.TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_13.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_13.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_13.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_13.Text = ""
ScreenGui.TextLabel_13.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_13.TextSize = 14.000

ScreenGui.UICorner_24.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_24.Parent = ScreenGui.TextLabel_13

ScreenGui.FunnyGuiOn.Name = "FunnyGuiOn"
ScreenGui.FunnyGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.FunnyGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.FunnyGuiOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.FunnyGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.FunnyGuiOn.Visible = false
ScreenGui.FunnyGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.FunnyGuiOn.Text = "Funny Gui"
ScreenGui.FunnyGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.FunnyGuiOn.TextSize = 20.000
ScreenGui.FunnyGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.FunnyGuiOn.MouseButton1Down:connect(function()
	ScreenGui.FunnyGuiOn.Visible = false
	ScreenGui.FunnyuiOff.Visible = true
	ScreenGui.FunnyGuiDrag.Visible = false
end)

ScreenGui.UICorner_25.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_25.Parent = ScreenGui.FunnyGuiOn

ScreenGui.TextLabel_14.Parent = ScreenGui.FunnyGuiOn
ScreenGui.TextLabel_14.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_14.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_14.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_14.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_14.Text = ""
ScreenGui.TextLabel_14.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_14.TextSize = 14.000

ScreenGui.UICorner_26.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_26.Parent = ScreenGui.TextLabel_14

ScreenGui.FunnyuiOff.Name = "FunnyuiOff"
ScreenGui.FunnyuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.FunnyuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.FunnyuiOff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.FunnyuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.FunnyuiOff.Font = Enum.Font.JosefinSans
ScreenGui.FunnyuiOff.Text = "Funny Gui"
ScreenGui.FunnyuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.FunnyuiOff.TextSize = 20.000
ScreenGui.FunnyuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.FunnyuiOff.MouseButton1Down:connect(function()
	ScreenGui.FunnyGuiOn.Visible = true
	ScreenGui.FunnyuiOff.Visible = false
	ScreenGui.FunnyGuiDrag.Visible = true
end)

ScreenGui.UICorner_27.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_27.Parent = ScreenGui.FunnyuiOff

ScreenGui.TextLabel_15.Parent = ScreenGui.FunnyuiOff
ScreenGui.TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_15.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_15.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_15.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_15.Text = ""
ScreenGui.TextLabel_15.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_15.TextSize = 14.000

ScreenGui.UICorner_28.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_28.Parent = ScreenGui.TextLabel_15

ScreenGui.UICorner_29.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_29.Parent = ScreenGui.OnOffGui

ScreenGui.gotopage2main.Name = "gotopage2main"
ScreenGui.gotopage2main.Parent = ScreenGui.BackroundDrag
ScreenGui.gotopage2main.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ScreenGui.gotopage2main.Position = UDim2.new(0.690082669, 0, 0.931764722, 0)
ScreenGui.gotopage2main.Size = UDim2.new(0, 29, 0, 29)
ScreenGui.gotopage2main.Font = Enum.Font.SourceSans
ScreenGui.gotopage2main.Text = ">"
ScreenGui.gotopage2main.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.gotopage2main.TextScaled = true
ScreenGui.gotopage2main.TextSize = 14.000
ScreenGui.gotopage2main.TextWrapped = true
ScreenGui.gotopage2main.MouseButton1Down:connect(function()
	ScreenGui.gotopage1main.Visible = true
	ScreenGui.gotopage2main.Visible = false
	ScreenGui.OnOffGui.Visible = false
	ScreenGui.OnOffGui2.Visible = true
end)

ScreenGui.UICorner_30.CornerRadius = UDim.new(0.25, 0)
ScreenGui.UICorner_30.Parent = ScreenGui.gotopage2main

ScreenGui.gotopage1main.Name = "gotopage1main"
ScreenGui.gotopage1main.Parent = ScreenGui.BackroundDrag
ScreenGui.gotopage1main.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ScreenGui.gotopage1main.Position = UDim2.new(0.185950458, 0, 0.931764722, 0)
ScreenGui.gotopage1main.Size = UDim2.new(0, 29, 0, 29)
ScreenGui.gotopage1main.Font = Enum.Font.SourceSans
ScreenGui.gotopage1main.Text = "<"
ScreenGui.gotopage1main.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.gotopage1main.TextScaled = true
ScreenGui.gotopage1main.TextSize = 14.000
ScreenGui.gotopage1main.TextWrapped = true
ScreenGui.gotopage1main.MouseButton1Down:connect(function()
	ScreenGui.gotopage2main.Visible = true
	ScreenGui.gotopage1main.Visible = false
	ScreenGui.OnOffGui2.Visible = false
	ScreenGui.OnOffGui.Visible = true
end)

ScreenGui.UICorner_31.CornerRadius = UDim.new(0.25, 0)
ScreenGui.UICorner_31.Parent = ScreenGui.gotopage1main

ScreenGui.OnOffGui2.Name = "On/OffGui2"
ScreenGui.OnOffGui2.Parent = ScreenGui.BackroundDrag
ScreenGui.OnOffGui2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.OnOffGui2.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.OnOffGui2.Size = UDim2.new(0, 184, 0, 369)
ScreenGui.OnOffGui2.Active = true

ScreenGui.TextLabel_16.Parent = ScreenGui.OnOffGui2
ScreenGui.TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_16.BackgroundTransparency = 1.000
ScreenGui.TextLabel_16.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_16.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_16.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_16.Text = "NightScale's Fun Customs"
ScreenGui.TextLabel_16.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_16.TextScaled = true
ScreenGui.TextLabel_16.TextSize = 14.000
ScreenGui.TextLabel_16.TextWrapped = true

ScreenGui.PaintGuiOn.Name = "PaintGuiOn"
ScreenGui.PaintGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.PaintGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PaintGuiOn.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.PaintGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PaintGuiOn.Visible = false
ScreenGui.PaintGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.PaintGuiOn.Text = "Paint Gui"
ScreenGui.PaintGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PaintGuiOn.TextSize = 20.000
ScreenGui.PaintGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PaintGuiOn.MouseButton1Down:connect(function()
	ScreenGui.PaintGuiOn.Visible = false
	ScreenGui.PaintGuiDrag.Visible = false
	ScreenGui.PaintGuiOff.Visible = true
end)

ScreenGui.UICorner_32.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_32.Parent = ScreenGui.PaintGuiOn

ScreenGui.TextLabel_17.Parent = ScreenGui.PaintGuiOn
ScreenGui.TextLabel_17.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_17.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_17.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_17.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_17.Text = ""
ScreenGui.TextLabel_17.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_17.TextSize = 14.000

ScreenGui.UICorner_33.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_33.Parent = ScreenGui.TextLabel_17

ScreenGui.PaintGuiOff.Name = "PaintGuiOff"
ScreenGui.PaintGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.PaintGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PaintGuiOff.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.PaintGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PaintGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.PaintGuiOff.Text = "Paint Gui"
ScreenGui.PaintGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PaintGuiOff.TextSize = 20.000
ScreenGui.PaintGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PaintGuiOff.MouseButton1Down:connect(function()
	ScreenGui.PaintGuiOn.Visible = true
	ScreenGui.PaintGuiDrag.Visible = true
	ScreenGui.PaintGuiOff.Visible = false
end)

ScreenGui.UICorner_34.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_34.Parent = ScreenGui.PaintGuiOff

ScreenGui.TextLabel_18.Parent = ScreenGui.PaintGuiOff
ScreenGui.TextLabel_18.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_18.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_18.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_18.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_18.Text = ""
ScreenGui.TextLabel_18.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_18.TextSize = 14.000

ScreenGui.UICorner_35.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_35.Parent = ScreenGui.TextLabel_18

ScreenGui.TPGuiOff.Name = "TPGuiOff"
ScreenGui.TPGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.TPGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TPGuiOff.Position = UDim2.new(0.0920000002, 0, 0.366976023, 0)
ScreenGui.TPGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TPGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.TPGuiOff.Text = "Tp Gui"
ScreenGui.TPGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TPGuiOff.TextSize = 20.000
ScreenGui.TPGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.TPGuiOff.MouseButton1Down:connect(function()
	ScreenGui.TPGuiOff.Visible = false
	ScreenGui.CreditsGuiDrag.Visible = true
	ScreenGui.TpGuiOn.Visible = true
end)

ScreenGui.UICorner_36.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_36.Parent = ScreenGui.TPGuiOff

ScreenGui.TextLabel_19.Parent = ScreenGui.TPGuiOff
ScreenGui.TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_19.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_19.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_19.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_19.Text = ""
ScreenGui.TextLabel_19.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_19.TextSize = 14.000

ScreenGui.UICorner_37.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_37.Parent = ScreenGui.TextLabel_19

ScreenGui.TpGuiOn.Name = "TpGuiOn"
ScreenGui.TpGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.TpGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TpGuiOn.Position = UDim2.new(0.0920000002, 0, 0.367000014, 0)
ScreenGui.TpGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TpGuiOn.Visible = false
ScreenGui.TpGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.TpGuiOn.Text = "Tp Gui"
ScreenGui.TpGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TpGuiOn.TextSize = 20.000
ScreenGui.TpGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.TpGuiOn.MouseButton1Down:connect(function()
	ScreenGui.TPGuiOff.Visible = true
	ScreenGui.CreditsGuiDrag.Visible = false
	ScreenGui.TpGuiOn.Visible = false
end)

ScreenGui.UICorner_38.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_38.Parent = ScreenGui.TpGuiOn

ScreenGui.TextLabel_20.Parent = ScreenGui.TpGuiOn
ScreenGui.TextLabel_20.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_20.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_20.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_20.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_20.Text = ""
ScreenGui.TextLabel_20.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_20.TextSize = 14.000

ScreenGui.UICorner_39.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_39.Parent = ScreenGui.TextLabel_20

ScreenGui.ColorsGuiOff.Name = "ColorsGuiOff"
ScreenGui.ColorsGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.ColorsGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.ColorsGuiOff.Position = UDim2.new(0.0920000002, 0, 0.501946092, 0)
ScreenGui.ColorsGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.ColorsGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.ColorsGuiOff.Text = "Colors Gui"
ScreenGui.ColorsGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.ColorsGuiOff.TextSize = 20.000
ScreenGui.ColorsGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.ColorsGuiOff.MouseButton1Down:connect(function()
	ScreenGui.ColorsGuiOn.Visible = true
	ScreenGui.ColorsGuiDrag.Visible = true
	ScreenGui.ColorsGuiOff.Visible = false
end)

ScreenGui.TextLabel_21.Parent = ScreenGui.ColorsGuiOff
ScreenGui.TextLabel_21.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_21.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_21.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_21.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_21.Text = ""
ScreenGui.TextLabel_21.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_21.TextSize = 14.000

ScreenGui.UICorner_40.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_40.Parent = ScreenGui.TextLabel_21

ScreenGui.UICorner_41.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_41.Parent = ScreenGui.ColorsGuiOff

ScreenGui.ColorsGuiOn.Name = "ColorsGuiOn"
ScreenGui.ColorsGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.ColorsGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.ColorsGuiOn.Position = UDim2.new(0.0920000002, 0, 0.501999974, 0)
ScreenGui.ColorsGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.ColorsGuiOn.Visible = false
ScreenGui.ColorsGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.ColorsGuiOn.Text = "Colors Gui"
ScreenGui.ColorsGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.ColorsGuiOn.TextSize = 20.000
ScreenGui.ColorsGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.ColorsGuiOn.MouseButton1Down:connect(function()
	ScreenGui.ColorsGuiOn.Visible = false
	ScreenGui.ColorsGuiDrag.Visible = false
	ScreenGui.ColorsGuiOff.Visible = true
end)

ScreenGui.UICorner_42.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_42.Parent = ScreenGui.ColorsGuiOn

ScreenGui.TextLabel_22.Parent = ScreenGui.ColorsGuiOn
ScreenGui.TextLabel_22.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_22.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_22.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_22.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_22.Text = ""
ScreenGui.TextLabel_22.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_22.TextSize = 14.000

ScreenGui.UICorner_43.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_43.Parent = ScreenGui.TextLabel_22

ScreenGui.noabuseGuiOn.Name = "noabuseGuiOn"
ScreenGui.noabuseGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.noabuseGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.noabuseGuiOn.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.noabuseGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.noabuseGuiOn.Visible = false
ScreenGui.noabuseGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.noabuseGuiOn.Text = "Abuse No Gui"
ScreenGui.noabuseGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.noabuseGuiOn.TextSize = 18.000
ScreenGui.noabuseGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.noabuseGuiOn.MouseButton1Down:connect(function()
	ScreenGui.noabuseGuiOn.Visible = false
	ScreenGui.AbuseNoGuiDrag.Visible = false
	ScreenGui.noabuseGuiOff.Visible = true
end)

ScreenGui.UICorner_44.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_44.Parent = ScreenGui.noabuseGuiOn

ScreenGui.TextLabel_23.Parent = ScreenGui.noabuseGuiOn
ScreenGui.TextLabel_23.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_23.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_23.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_23.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_23.Text = ""
ScreenGui.TextLabel_23.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_23.TextSize = 14.000

ScreenGui.UICorner_45.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_45.Parent = ScreenGui.TextLabel_23

ScreenGui.noabuseGuiOff.Name = "noabuseGuiOff"
ScreenGui.noabuseGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.noabuseGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.noabuseGuiOff.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.noabuseGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.noabuseGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.noabuseGuiOff.Text = "Abuse No Gui"
ScreenGui.noabuseGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.noabuseGuiOff.TextSize = 18.000
ScreenGui.noabuseGuiOff.TextWrapped = true
ScreenGui.noabuseGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.noabuseGuiOff.MouseButton1Down:connect(function()
	ScreenGui.noabuseGuiOn.Visible = true
	ScreenGui.AbuseNoGuiDrag.Visible = true
	ScreenGui.noabuseGuiOff.Visible = false
end)

ScreenGui.UICorner_46.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_46.Parent = ScreenGui.noabuseGuiOff

ScreenGui.TextLabel_24.Parent = ScreenGui.noabuseGuiOff
ScreenGui.TextLabel_24.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_24.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_24.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_24.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_24.Text = ""
ScreenGui.TextLabel_24.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_24.TextSize = 14.000

ScreenGui.UICorner_47.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_47.Parent = ScreenGui.TextLabel_24

ScreenGui.helpfullGuiOn.Name = "helpfullGuiOn"
ScreenGui.helpfullGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.helpfullGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.helpfullGuiOn.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.helpfullGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.helpfullGuiOn.Visible = false
ScreenGui.helpfullGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.helpfullGuiOn.Text = "Helpfull Gui"
ScreenGui.helpfullGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.helpfullGuiOn.TextSize = 20.000
ScreenGui.helpfullGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.helpfullGuiOn.MouseButton1Down:connect(function()
	ScreenGui.helpfullGuiOn.Visible = false
	ScreenGui.HelpfullGuiDrag.Visible = false
	ScreenGui.HelpfullGuiOff.Visible = true
end)

ScreenGui.UICorner_48.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_48.Parent = ScreenGui.helpfullGuiOn

ScreenGui.TextLabel_25.Parent = ScreenGui.helpfullGuiOn
ScreenGui.TextLabel_25.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_25.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_25.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_25.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_25.Text = ""
ScreenGui.TextLabel_25.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_25.TextSize = 14.000

ScreenGui.UICorner_49.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_49.Parent = ScreenGui.TextLabel_25

ScreenGui.HelpfullGuiOff.Name = "HelpfullGuiOff"
ScreenGui.HelpfullGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.HelpfullGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.HelpfullGuiOff.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.HelpfullGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.HelpfullGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.HelpfullGuiOff.Text = "Helpfull Gui"
ScreenGui.HelpfullGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.HelpfullGuiOff.TextSize = 20.000
ScreenGui.HelpfullGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.HelpfullGuiOff.MouseButton1Down:connect(function()
	ScreenGui.helpfullGuiOn.Visible = true
	ScreenGui.HelpfullGuiDrag.Visible = true
	ScreenGui.HelpfullGuiOff.Visible = false
end)

ScreenGui.UICorner_50.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_50.Parent = ScreenGui.HelpfullGuiOff

ScreenGui.TextLabel_26.Parent = ScreenGui.HelpfullGuiOff
ScreenGui.TextLabel_26.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_26.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_26.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_26.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_26.Text = ""
ScreenGui.TextLabel_26.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_26.TextSize = 14.000

ScreenGui.UICorner_51.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_51.Parent = ScreenGui.TextLabel_26

ScreenGui.CreditsGuiOn.Name = "CreditsGuiOn"
ScreenGui.CreditsGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.CreditsGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CreditsGuiOn.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.CreditsGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CreditsGuiOn.Visible = false
ScreenGui.CreditsGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.CreditsGuiOn.Text = "Credits Gui"
ScreenGui.CreditsGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CreditsGuiOn.TextSize = 20.000
ScreenGui.CreditsGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.CreditsGuiOn.MouseButton1Down:connect(function()
	ScreenGui.CreditsGuiOn.Visible = false
	ScreenGui.TpGuiDrag.Visible = false
	ScreenGui.CreditsGuiOff.Visible = true
end)

ScreenGui.UICorner_52.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_52.Parent = ScreenGui.CreditsGuiOn

ScreenGui.TextLabel_27.Parent = ScreenGui.CreditsGuiOn
ScreenGui.TextLabel_27.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_27.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_27.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_27.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_27.Text = ""
ScreenGui.TextLabel_27.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_27.TextSize = 14.000

ScreenGui.UICorner_53.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_53.Parent = ScreenGui.TextLabel_27

ScreenGui.CreditsGuiOff.Name = "CreditsGuiOff"
ScreenGui.CreditsGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.CreditsGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CreditsGuiOff.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.CreditsGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CreditsGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.CreditsGuiOff.Text = "Credits Gui"
ScreenGui.CreditsGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CreditsGuiOff.TextSize = 20.000
ScreenGui.CreditsGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.CreditsGuiOff.MouseButton1Down:connect(function()
	ScreenGui.CreditsGuiOn.Visible = true
	ScreenGui.TpGuiDrag.Visible = true
	ScreenGui.CreditsGuiOff.Visible = false
end)

ScreenGui.UICorner_54.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_54.Parent = ScreenGui.CreditsGuiOff

ScreenGui.TextLabel_28.Parent = ScreenGui.CreditsGuiOff
ScreenGui.TextLabel_28.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_28.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_28.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_28.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_28.Text = ""
ScreenGui.TextLabel_28.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_28.TextSize = 14.000

ScreenGui.UICorner_55.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_55.Parent = ScreenGui.TextLabel_28

ScreenGui.PadGuiOn.Name = "PadGuiOn"
ScreenGui.PadGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.PadGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PadGuiOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.PadGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PadGuiOn.Visible = false
ScreenGui.PadGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.PadGuiOn.Text = "Pads Gui"
ScreenGui.PadGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PadGuiOn.TextSize = 20.000
ScreenGui.PadGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PadGuiOn.MouseButton1Down:connect(function()
	ScreenGui.PadGuiOn.Visible = false
	ScreenGui.PadGuiDrag.Visible = false
	ScreenGui.PadGuiOff.Visible = true
end)

ScreenGui.UICorner_56.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_56.Parent = ScreenGui.PadGuiOn

ScreenGui.TextLabel_29.Parent = ScreenGui.PadGuiOn
ScreenGui.TextLabel_29.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_29.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_29.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_29.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_29.Text = ""
ScreenGui.TextLabel_29.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_29.TextSize = 14.000

ScreenGui.UICorner_57.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_57.Parent = ScreenGui.TextLabel_29

ScreenGui.PadGuiOff.Name = "PadGuiOff"
ScreenGui.PadGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.PadGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PadGuiOff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.PadGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PadGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.PadGuiOff.Text = "Pads Gui"
ScreenGui.PadGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PadGuiOff.TextSize = 20.000
ScreenGui.PadGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PadGuiOff.MouseButton1Down:connect(function()
	ScreenGui.PadGuiOn.Visible = true
	ScreenGui.PadGuiDrag.Visible = true
	ScreenGui.PadGuiOff.Visible = false
end)

ScreenGui.UICorner_58.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_58.Parent = ScreenGui.PadGuiOff

ScreenGui.TextLabel_30.Parent = ScreenGui.PadGuiOff
ScreenGui.TextLabel_30.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_30.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_30.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_30.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_30.Text = ""
ScreenGui.TextLabel_30.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_30.TextSize = 14.000

ScreenGui.UICorner_59.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_59.Parent = ScreenGui.TextLabel_30

ScreenGui.UICorner_60.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_60.Parent = ScreenGui.OnOffGui2

ScreenGui.UICorner_61.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_61.Parent = ScreenGui.BackroundDrag

ScreenGui.FunnyGuiDrag.Name = "FunnyGuiDrag"
ScreenGui.FunnyGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.FunnyGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.FunnyGuiDrag.BorderSizePixel = 0
ScreenGui.FunnyGuiDrag.Position = UDim2.new(0.257965684, 0, -0.00135678053, 0)
ScreenGui.FunnyGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.FunnyGuiDrag.Visible = false
ScreenGui.FunnyGuiDrag.Active = true
ScreenGui.FunnyGuiDrag.Draggable = true

ScreenGui.FunnyMainGui.Name = "FunnyMainGui"
ScreenGui.FunnyMainGui.Parent = ScreenGui.FunnyGuiDrag
ScreenGui.FunnyMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.FunnyMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.FunnyMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_31.Parent = ScreenGui.FunnyMainGui
ScreenGui.TextLabel_31.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_31.BackgroundTransparency = 1.000
ScreenGui.TextLabel_31.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_31.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_31.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_31.Text = "Funny Gui"
ScreenGui.TextLabel_31.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_31.TextSize = 25.000
ScreenGui.TextLabel_31.TextWrapped = true

ScreenGui.UICorner_62.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_62.Parent = ScreenGui.FunnyMainGui

ScreenGui.Nuke.Name = "Nuke"
ScreenGui.Nuke.Parent = ScreenGui.FunnyMainGui
ScreenGui.Nuke.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nuke.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.Nuke.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nuke.Font = Enum.Font.JosefinSans
ScreenGui.Nuke.Text = "Nuke"
ScreenGui.Nuke.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nuke.TextSize = 25.000
ScreenGui.Nuke.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("h A Nuke Has Been Dropped Seek Shelter Immediately"))
	wait(0.1)
	game:GetService'Players':Chat(("music 2684808342"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.1)
	game:GetService'Players':Chat(("char me 3"))
	wait(0.1)
	for i = 1,10 do
		game:GetService'Players':Chat(("size me .5"))
	end
	wait(0.5)
	game:GetService'Players':Chat(("unsize me"))
	wait(0.1)
	game:GetService'Players':Chat(("removelimbs me"))
	wait(0.1)
	game:GetService'Players':Chat(("minihead me"))
	wait(0.1)
	game:GetService'Players':Chat(("paint me 255,127,0"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 5")) 
	wait(0.1)
	game:GetService'Players':Chat(("skydive me")) 
	wait(0.1)
	game:GetService'Players':Chat(("trip me"))
	wait(0.1)
	game:GetService'Players':Chat(("bonfire me"))
	wait(4.575)
	game:GetService'Players':Chat(("music 1502307055"))
	game:GetService'Players':Chat(("h Its To Late The Bomb Has Hit"))
	wait(0.1)
	game:GetService'Players':Chat(("colorshifttop 10610 7496 0"))
	wait(0.1)
	game:GetService'Players':Chat(("colorshiftbottom 10610 7496 0"))
	wait(0.1)
	game:GetService'Players':Chat(("time 0"))
	wait(0.1)
	game:GetService'Players':Chat(("fogend 25")) 
	wait(0.1)
	game:GetService'Players':Chat(("fogcolor 255,127,0"))
	wait(0.3)
	game:GetService'Players':Chat(("fire all"))
	wait(0.1)
	game:GetService'Players':Chat(("kill all"))
	wait(3)
	game:GetService'Players':Chat(("fix"))
	game:GetService'Players':Chat(("music"))
	game:GetService'Players':Chat(("unchar me"))
end)

ScreenGui.UICorner_63.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_63.Parent = ScreenGui.Nuke

ScreenGui.Nothing2Funny.Name = "Nothing2Funny"
ScreenGui.Nothing2Funny.Parent = ScreenGui.FunnyMainGui
ScreenGui.Nothing2Funny.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing2Funny.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing2Funny.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing2Funny.Font = Enum.Font.JosefinSans
ScreenGui.Nothing2Funny.Text = "BoomBox Id Here"
ScreenGui.Nothing2Funny.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing2Funny.TextSize = 25.000

ScreenGui.UICorner_64.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_64.Parent = ScreenGui.Nothing2Funny

ScreenGui.Nothing1funny.Name = "Nothing1funny"
ScreenGui.Nothing1funny.Parent = ScreenGui.FunnyMainGui
ScreenGui.Nothing1funny.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing1funny.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Nothing1funny.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing1funny.Font = Enum.Font.JosefinSans
ScreenGui.Nothing1funny.Text = "Mega BoomBox"
ScreenGui.Nothing1funny.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing1funny.TextSize = 25.000
ScreenGui.Nothing1funny.TextScaled = true

ScreenGui.UICorner_65.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_65.Parent = ScreenGui.Nothing1funny

ScreenGui.Melanie.Name = "Melanie"
ScreenGui.Melanie.Parent = ScreenGui.FunnyMainGui
ScreenGui.Melanie.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Melanie.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.Melanie.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Melanie.Font = Enum.Font.JosefinSans
ScreenGui.Melanie.Text = "Melanie"
ScreenGui.Melanie.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Melanie.TextSize = 25.000
ScreenGui.Melanie.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("unhat me"))
	game:GetService'Players':Chat(("unpants me"))
	game:GetService'Players':Chat(("unshirt me"))
	game:GetService'Players':Chat(("hat me 4124350220"))
	game:GetService'Players':Chat(("pants me 5608414543"))
	game:GetService'Players':Chat(("face me 209995366"))
	game:GetService'Players':Chat(("name me Melanie Martinez"))
end)

ScreenGui.UICorner_66.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_66.Parent = ScreenGui.Melanie

ScreenGui.MEGApew.Name = "*MEGApew*"
ScreenGui.MEGApew.Parent = ScreenGui.FunnyMainGui
ScreenGui.MEGApew.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MEGApew.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.MEGApew.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MEGApew.Font = Enum.Font.JosefinSans
ScreenGui.MEGApew.Text = "*MEGApew*"
ScreenGui.MEGApew.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MEGApew.TextSize = 25.000
ScreenGui.MEGApew.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("heal all 100"))
	game:GetService'Players':Chat(("damage others 100000000000000000000000000000"))
	game:GetService'Players':Chat(("h You have been shot! :O"))
end)

ScreenGui.UICorner_67.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_67.Parent = ScreenGui.MEGApew

ScreenGui.pew.Name = "*pew*"
ScreenGui.pew.Parent = ScreenGui.FunnyMainGui
ScreenGui.pew.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.pew.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.pew.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.pew.Font = Enum.Font.JosefinSans
ScreenGui.pew.Text = "*pew*"
ScreenGui.pew.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.pew.TextSize = 25.000
ScreenGui.pew.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("heal all 100")) 
	game:GetService'Players':Chat(("damage others 99"))
	game:GetService'Players':Chat(("h You have been shot! :O"))
end)

ScreenGui.UICorner_68.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_68.Parent = ScreenGui.pew

ScreenGui.Cube.Name = "Cube"
ScreenGui.Cube.Parent = ScreenGui.FunnyMainGui
ScreenGui.Cube.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Cube.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.Cube.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Cube.Font = Enum.Font.JosefinSans
ScreenGui.Cube.Text = "Cube"
ScreenGui.Cube.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Cube.TextSize = 25.000
ScreenGui.Cube.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("unsize me"))
end)

ScreenGui.UICorner_69.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_69.Parent = ScreenGui.Cube

ScreenGui.UICorner_70.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_70.Parent = ScreenGui.FunnyGuiDrag

ScreenGui.MoveGuiDrag.Name = "MoveGuiDrag"
ScreenGui.MoveGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.MoveGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.MoveGuiDrag.BorderSizePixel = 0
ScreenGui.MoveGuiDrag.Position = UDim2.new(0.623774529, 0, -0.00135678053, 0)
ScreenGui.MoveGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.MoveGuiDrag.Visible = false
ScreenGui.MoveGuiDrag.Active = true
ScreenGui.MoveGuiDrag.Draggable = true

ScreenGui.MoveMainGui.Name = "MoveMainGui"
ScreenGui.MoveMainGui.Parent = ScreenGui.MoveGuiDrag
ScreenGui.MoveMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.MoveMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.MoveMainGui.Size = UDim2.new(0, 184, 0, 369) --

ScreenGui.TextLabel_32.Parent = ScreenGui.MoveMainGui
ScreenGui.TextLabel_32.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_32.BackgroundTransparency = 1.000
ScreenGui.TextLabel_32.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_32.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_32.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_32.Text = "Move Gui"
ScreenGui.TextLabel_32.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_32.TextSize = 25.000
ScreenGui.TextLabel_32.TextWrapped = true

ScreenGui.UICorner_71.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_71.Parent = ScreenGui.MoveMainGui

ScreenGui.MovePads.Name = "MovePads"
ScreenGui.MovePads.Parent = ScreenGui.MoveMainGui
ScreenGui.MovePads.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MovePads.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.MovePads.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MovePads.Font = Enum.Font.JosefinSans
ScreenGui.MovePads.Text = "Pads"
ScreenGui.MovePads.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MovePads.TextSize = 25.000

ScreenGui.UICorner_72.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_72.Parent = ScreenGui.MovePads

ScreenGui.RemoveRegen.Name = "RemoveRegen"
ScreenGui.RemoveRegen.Parent = ScreenGui.MoveMainGui
ScreenGui.RemoveRegen.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RemoveRegen.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.RemoveRegen.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RemoveRegen.Font = Enum.Font.JosefinSans
ScreenGui.RemoveRegen.Text = "Remove Regen"
ScreenGui.RemoveRegen.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RemoveRegen.TextSize = 23.000

ScreenGui.UICorner_73.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_73.Parent = ScreenGui.RemoveRegen

ScreenGui.MoveDividers.Name = "MoveDividers"
ScreenGui.MoveDividers.Parent = ScreenGui.MoveMainGui
ScreenGui.MoveDividers.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveDividers.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.MoveDividers.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveDividers.Font = Enum.Font.JosefinSans
ScreenGui.MoveDividers.Text = "Dividers"
ScreenGui.MoveDividers.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveDividers.TextSize = 25.000

ScreenGui.UICorner_74.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_74.Parent = ScreenGui.MoveDividers

ScreenGui.MoveHouse.Name = "MoveHouse"
ScreenGui.MoveHouse.Parent = ScreenGui.MoveMainGui
ScreenGui.MoveHouse.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveHouse.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.MoveHouse.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveHouse.Font = Enum.Font.JosefinSans
ScreenGui.MoveHouse.Text = "House"
ScreenGui.MoveHouse.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveHouse.TextSize = 25.000

ScreenGui.UICorner_75.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_75.Parent = ScreenGui.MoveHouse

ScreenGui.MoveObby.Name = "MoveObby"
ScreenGui.MoveObby.Parent = ScreenGui.MoveMainGui
ScreenGui.MoveObby.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveObby.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.MoveObby.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveObby.Font = Enum.Font.JosefinSans
ScreenGui.MoveObby.Text = "Obby"
ScreenGui.MoveObby.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveObby.TextSize = 25.000

ScreenGui.UICorner_76.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_76.Parent = ScreenGui.MoveObby

ScreenGui.Moveobbywalls.Name = "Moveobbywalls*"
ScreenGui.Moveobbywalls.Parent = ScreenGui.MoveMainGui
ScreenGui.Moveobbywalls.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Moveobbywalls.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.Moveobbywalls.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Moveobbywalls.Font = Enum.Font.JosefinSans
ScreenGui.Moveobbywalls.Text = "Obby walls"
ScreenGui.Moveobbywalls.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Moveobbywalls.TextSize = 25.000

ScreenGui.UICorner_77.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_77.Parent = ScreenGui.Moveobbywalls

ScreenGui.MoveRegenpad.Name = "MoveRegenpad"
ScreenGui.MoveRegenpad.Parent = ScreenGui.MoveMainGui
ScreenGui.MoveRegenpad.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveRegenpad.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.MoveRegenpad.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveRegenpad.Font = Enum.Font.JosefinSans
ScreenGui.MoveRegenpad.Text = "Regen Pad"
ScreenGui.MoveRegenpad.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveRegenpad.TextSize = 25.000

ScreenGui.UICorner_78.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_78.Parent = ScreenGui.MoveRegenpad

ScreenGui.UICorner_79.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_79.Parent = ScreenGui.MoveGuiDrag

ScreenGui.MusicGuiDrag.Name = "MusicGuiDrag"
ScreenGui.MusicGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.MusicGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.MusicGuiDrag.BorderSizePixel = 0
ScreenGui.MusicGuiDrag.Position = UDim2.new(0.580882311, 0, -0.00135678053, 0)
ScreenGui.MusicGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.MusicGuiDrag.Visible = false
ScreenGui.MusicGuiDrag.Active = true
ScreenGui.MusicGuiDrag.Draggable = true

ScreenGui.MusicMainpage1Gui.Name = "MusicMainpage1Gui"
ScreenGui.MusicMainpage1Gui.Parent = ScreenGui.MusicGuiDrag
ScreenGui.MusicMainpage1Gui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.MusicMainpage1Gui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.MusicMainpage1Gui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_33.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.TextLabel_33.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_33.BackgroundTransparency = 1.000
ScreenGui.TextLabel_33.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_33.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_33.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_33.Text = "Music Gui"
ScreenGui.TextLabel_33.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_33.TextSize = 25.000
ScreenGui.TextLabel_33.TextWrapped = true

ScreenGui.CryBaby.Name = "CryBaby"
ScreenGui.CryBaby.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.CryBaby.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CryBaby.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.CryBaby.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CryBaby.Font = Enum.Font.JosefinSans
ScreenGui.CryBaby.Text = "Cry baby"
ScreenGui.CryBaby.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CryBaby.TextSize = 25.000
ScreenGui.CryBaby.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 4553439313"))
	game:GetService'Players':Chat((".playbackspeed 0.90"))
	game:GetService'Players':Chat(("h Playing: Crybaby - Melanie Martinez"))
end)

ScreenGui.UICorner_80.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_80.Parent = ScreenGui.CryBaby

ScreenGui.Shrimps.Name = "Shrimps"
ScreenGui.Shrimps.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.Shrimps.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Shrimps.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Shrimps.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Shrimps.Font = Enum.Font.JosefinSans
ScreenGui.Shrimps.Text = "Shrimps"
ScreenGui.Shrimps.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Shrimps.TextSize = 25.000
ScreenGui.Shrimps.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 4600678488"))
	game:GetService'Players':Chat(("h Playing: Shrimps But It's Flamingo Screaming..."))
end)

ScreenGui.UICorner_81.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_81.Parent = ScreenGui.Shrimps

ScreenGui.Who.Name = "Who"
ScreenGui.Who.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.Who.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Who.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Who.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Who.Font = Enum.Font.JosefinSans
ScreenGui.Who.Text = "Who"
ScreenGui.Who.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Who.TextSize = 25.000
ScreenGui.Who.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 4461953104"))
	game:GetService'Players':Chat(("h Playing: Who? - Ft. Shiloh Dynasty"))
end)

ScreenGui.UICorner_82.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_82.Parent = ScreenGui.Who

ScreenGui.TakeAHint.Name = "TakeAHint"
ScreenGui.TakeAHint.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.TakeAHint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TakeAHint.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.TakeAHint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TakeAHint.Font = Enum.Font.JosefinSans
ScreenGui.TakeAHint.Text = "Take A Hint"
ScreenGui.TakeAHint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TakeAHint.TextSize = 25.000
ScreenGui.TakeAHint.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 2341549701"))
	game:GetService'Players':Chat(("h Playing: Take A Hint - Victorious"))
end)

ScreenGui.UICorner_83.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_83.Parent = ScreenGui.TakeAHint

ScreenGui.SantaTellMe.Name = "SantaTellMe"
ScreenGui.SantaTellMe.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.SantaTellMe.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.SantaTellMe.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.SantaTellMe.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.SantaTellMe.Font = Enum.Font.JosefinSans
ScreenGui.SantaTellMe.Text = " Santa Tell Me"
ScreenGui.SantaTellMe.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.SantaTellMe.TextSize = 23.000
ScreenGui.SantaTellMe.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 2546949814"))
	game:GetService'Players':Chat(("h Playing: Santa Tell Me - Ariana Grande"))
end)

ScreenGui.UICorner_84.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_84.Parent = ScreenGui.SantaTellMe

ScreenGui.MyWay.Name = "MyWay"
ScreenGui.MyWay.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.MyWay.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MyWay.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.MyWay.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MyWay.Font = Enum.Font.JosefinSans
ScreenGui.MyWay.Text = "My Way"
ScreenGui.MyWay.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MyWay.TextSize = 25.000
ScreenGui.MyWay.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 1948564182"))
	game:GetService'Players':Chat((".playbackspeed 0.90"))
	game:GetService'Players':Chat(("h Playing: My Way - Ava Max"))
end)

ScreenGui.UICorner_85.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_85.Parent = ScreenGui.MyWay

ScreenGui.Cake.Name = "Cake"
ScreenGui.Cake.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.Cake.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Cake.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.Cake.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Cake.Font = Enum.Font.JosefinSans
ScreenGui.Cake.Text = "Cake"
ScreenGui.Cake.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Cake.TextSize = 25.000
ScreenGui.Cake.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 472231729"))
	game:GetService'Players':Chat((".playbackspeed 0.79"))
	game:GetService'Players':Chat(("h Playing: Cake - Melanie Martinez"))
end)

ScreenGui.UICorner_86.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_86.Parent = ScreenGui.Cake

ScreenGui.UICorner_87.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_87.Parent = ScreenGui.MusicMainpage1Gui

ScreenGui.MusicMainpage2Gui.Name = "MusicMainpage2Gui"
ScreenGui.MusicMainpage2Gui.Parent = ScreenGui.MusicGuiDrag
ScreenGui.MusicMainpage2Gui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.MusicMainpage2Gui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.MusicMainpage2Gui.Size = UDim2.new(0, 184, 0, 369)
ScreenGui.MusicMainpage2Gui.Visible = false

ScreenGui.TextLabel_34.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.TextLabel_34.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_34.BackgroundTransparency = 1.000
ScreenGui.TextLabel_34.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_34.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_34.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_34.Text = "Music Gui"
ScreenGui.TextLabel_34.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_34.TextSize = 25.000
ScreenGui.TextLabel_34.TextWrapped = true

ScreenGui.Detention.Name = "Detention"
ScreenGui.Detention.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.Detention.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Detention.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.Detention.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Detention.Font = Enum.Font.JosefinSans
ScreenGui.Detention.Text = "Detention"
ScreenGui.Detention.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Detention.TextSize = 25.000
ScreenGui.Detention.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 3908112818"))
	game:GetService'Players':Chat((".playbackspeed 0.95"))
	game:GetService'Players':Chat(("h Playing: Detention - Melanie Martinez"))
end)

ScreenGui.UICorner_88.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_88.Parent = ScreenGui.Detention

ScreenGui.Someone.Name = "Someone"
ScreenGui.Someone.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.Someone.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Someone.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Someone.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Someone.Font = Enum.Font.JosefinSans
ScreenGui.Someone.Text = "Someone"
ScreenGui.Someone.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Someone.TextSize = 25.000
ScreenGui.Someone.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":music 4574939786"))
	game:GetService'Players':Chat(("h Playing: Someone You Loved - Ed Sharon"))
end)

ScreenGui.UICorner_89.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_89.Parent = ScreenGui.Someone

ScreenGui.DeathBed.Name = "Death Bed"
ScreenGui.DeathBed.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.DeathBed.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.DeathBed.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.DeathBed.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.DeathBed.Font = Enum.Font.JosefinSans
ScreenGui.DeathBed.Text = "Death Bed"
ScreenGui.DeathBed.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.DeathBed.TextSize = 25.000

ScreenGui.UICorner_90.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_90.Parent = ScreenGui.DeathBed

ScreenGui.Wheels.Name = "Wheels"
ScreenGui.Wheels.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.Wheels.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Wheels.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.Wheels.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Wheels.Font = Enum.Font.JosefinSans
ScreenGui.Wheels.Text = "Wheels"
ScreenGui.Wheels.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Wheels.TextSize = 25.000
ScreenGui.Wheels.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 3898358473"))
	game:GetService'Players':Chat((".playbackspeed 0.87"))
	game:GetService'Players':Chat(("h Playing: Wheels on The Bus - Melanie Martinez"))
end)

ScreenGui.UICorner_91.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_91.Parent = ScreenGui.Wheels

ScreenGui.HighSchoolSh.Name = "HighSchoolSh"
ScreenGui.HighSchoolSh.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.HighSchoolSh.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.HighSchoolSh.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.HighSchoolSh.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.HighSchoolSh.Font = Enum.Font.JosefinSans
ScreenGui.HighSchoolSh.Text = "HighSchool SH"
ScreenGui.HighSchoolSh.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.HighSchoolSh.TextSize = 21.000
ScreenGui.HighSchoolSh.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 4342043245"))
	game:GetService'Players':Chat(("h Playing: Highschool Sweethearts - Melanie Martinez"))
end)

ScreenGui.UICorner_92.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_92.Parent = ScreenGui.HighSchoolSh

ScreenGui.ThePrincipal.Name = "The Principal"
ScreenGui.ThePrincipal.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.ThePrincipal.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.ThePrincipal.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.ThePrincipal.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.ThePrincipal.Font = Enum.Font.JosefinSans
ScreenGui.ThePrincipal.Text = "The Principal"
ScreenGui.ThePrincipal.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.ThePrincipal.TextSize = 24.000
ScreenGui.ThePrincipal.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 5499014274"))
	game:GetService'Players':Chat((".playbackspeed 0.66"))
	game:GetService'Players':Chat(("h Playing: The Principal - Melanie Martinez"))
end)

ScreenGui.UICorner_93.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_93.Parent = ScreenGui.ThePrincipal

ScreenGui.NursesOffice.Name = "Nurses Office"
ScreenGui.NursesOffice.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.NursesOffice.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.NursesOffice.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.NursesOffice.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.NursesOffice.Font = Enum.Font.JosefinSans
ScreenGui.NursesOffice.Text = "Nurses Office"
ScreenGui.NursesOffice.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.NursesOffice.TextSize = 23.000
ScreenGui.NursesOffice.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 5896678223"))
	game:GetService'Players':Chat((".playbackspeed 1.18"))
	game:GetService'Players':Chat(("h Playing: Nurse's Office - Melanie Martinez"))
end)

ScreenGui.UICorner_94.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_94.Parent = ScreenGui.NursesOffice

ScreenGui.UICorner_95.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_95.Parent = ScreenGui.MusicMainpage2Gui

ScreenGui.gotopage1Music.Name = "gotopage1Music"
ScreenGui.gotopage1Music.Parent = ScreenGui.MusicGuiDrag
ScreenGui.gotopage1Music.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ScreenGui.gotopage1Music.Position = UDim2.new(0.185950458, 0, 0.931764722, 0)
ScreenGui.gotopage1Music.Size = UDim2.new(0, 29, 0, 29)
ScreenGui.gotopage1Music.Font = Enum.Font.SourceSans
ScreenGui.gotopage1Music.Text = "<"
ScreenGui.gotopage1Music.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.gotopage1Music.TextScaled = true
ScreenGui.gotopage1Music.TextSize = 14.000
ScreenGui.gotopage1Music.TextWrapped = true
ScreenGui.gotopage1Music.MouseButton1Down:connect(function()
	ScreenGui.gotopage1Music.Visible = false
	ScreenGui.MusicMainpage1Gui.Visible = true
	ScreenGui.MusicMainpage2Gui.Visible = false
	ScreenGui.gotopage2Music.Visible = true
end)

ScreenGui.UICorner_96.CornerRadius = UDim.new(0.25, 0)
ScreenGui.UICorner_96.Parent = ScreenGui.gotopage1Music

ScreenGui.gotopage2Music.Name = "gotopage2Music"
ScreenGui.gotopage2Music.Parent = ScreenGui.MusicGuiDrag
ScreenGui.gotopage2Music.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ScreenGui.gotopage2Music.Position = UDim2.new(0.690082669, 0, 0.931764722, 0)
ScreenGui.gotopage2Music.Size = UDim2.new(0, 29, 0, 29)
ScreenGui.gotopage2Music.Font = Enum.Font.SourceSans
ScreenGui.gotopage2Music.Text = ">"
ScreenGui.gotopage2Music.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.gotopage2Music.TextScaled = true
ScreenGui.gotopage2Music.TextSize = 14.000
ScreenGui.gotopage2Music.TextWrapped = true
ScreenGui.gotopage2Music.MouseButton1Down:connect(function()
	ScreenGui.gotopage1Music.Visible = true
	ScreenGui.MusicMainpage1Gui.Visible = false
	ScreenGui.MusicMainpage2Gui.Visible = true
	ScreenGui.gotopage2Music.Visible = false
end)

ScreenGui.UICorner_97.CornerRadius = UDim.new(0.25, 0)
ScreenGui.UICorner_97.Parent = ScreenGui.gotopage2Music

ScreenGui.UICorner_98.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_98.Parent = ScreenGui.MusicGuiDrag

ScreenGui.AbusiveGuiDrag.Name = "AbusiveGuiDrag"
ScreenGui.AbusiveGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.AbusiveGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.AbusiveGuiDrag.BorderSizePixel = 0
ScreenGui.AbusiveGuiDrag.Position = UDim2.new(0.623774529, 0, -0.00135678053, 0)
ScreenGui.AbusiveGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.AbusiveGuiDrag.Visible = false
ScreenGui.AbusiveGuiDrag.Active = true
ScreenGui.AbusiveGuiDrag.Draggable = true

ScreenGui.AbusiveMainGui.Name = "AbusiveMainGui"
ScreenGui.AbusiveMainGui.Parent = ScreenGui.AbusiveGuiDrag
ScreenGui.AbusiveMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.AbusiveMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.AbusiveMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_35.Parent = ScreenGui.AbusiveMainGui
ScreenGui.TextLabel_35.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_35.BackgroundTransparency = 1.000
ScreenGui.TextLabel_35.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_35.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_35.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_35.Text = "Abusive Gui"
ScreenGui.TextLabel_35.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_35.TextSize = 25.000
ScreenGui.TextLabel_35.TextWrapped = true

ScreenGui.UICorner_99.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_99.Parent = ScreenGui.AbusiveMainGui

ScreenGui.Nothing2Abusive.Name = "Nothing2Abusive"
ScreenGui.Nothing2Abusive.Parent = ScreenGui.AbusiveMainGui
ScreenGui.Nothing2Abusive.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing2Abusive.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing2Abusive.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing2Abusive.Font = Enum.Font.JosefinSans
ScreenGui.Nothing2Abusive.Text = "Nothing"
ScreenGui.Nothing2Abusive.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing2Abusive.TextSize = 23.000

ScreenGui.UICorner_100.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_100.Parent = ScreenGui.Nothing2Abusive

ScreenGui.Nothing1Abusive.Name = "Nothing1Abusive"
ScreenGui.Nothing1Abusive.Parent = ScreenGui.AbusiveMainGui
ScreenGui.Nothing1Abusive.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing1Abusive.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Nothing1Abusive.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing1Abusive.Font = Enum.Font.JosefinSans
ScreenGui.Nothing1Abusive.Text = "Nothing"
ScreenGui.Nothing1Abusive.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing1Abusive.TextSize = 25.000

ScreenGui.UICorner_101.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_101.Parent = ScreenGui.Nothing1Abusive

ScreenGui.trapSpawn.Name = "trapSpawn"
ScreenGui.trapSpawn.Parent = ScreenGui.AbusiveMainGui
ScreenGui.trapSpawn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.trapSpawn.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.trapSpawn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.trapSpawn.Font = Enum.Font.JosefinSans
ScreenGui.trapSpawn.Text = "Trap Spawn"
ScreenGui.trapSpawn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.trapSpawn.TextSize = 25.000
ScreenGui.trapSpawn.MouseButton1Down:connect(function()
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-61.0644, 3.66557, -18.9544))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("skydive me"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game:GetService'Players':Chat(("size me .5"))
	wait(0.1)
	game:GetService'Players':Chat(("size me .8"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-58.4638, 1.928, -17.9348))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("undog me"))
	wait(0.1)
	game:GetService'Players':Chat(("reset me"))
end)

ScreenGui.UICorner_102.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_102.Parent = ScreenGui.trapSpawn

ScreenGui.Crash.Name = "Crash"
ScreenGui.Crash.Parent = ScreenGui.AbusiveMainGui
ScreenGui.Crash.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Crash.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.Crash.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Crash.Font = Enum.Font.JosefinSans
ScreenGui.Crash.Text = "Crash 2"
ScreenGui.Crash.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Crash.TextSize = 25.000
ScreenGui.Crash.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":regen"))
	wait(0.3)
	game:GetService'Players':Chat((":allpads"))
	wait(0.3)
	game:GetService("Players"):Chat("h Server Shutting Down")
	game:GetService("Players"):Chat("h Server Shutting Down")
	wait(0.8)
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
end)

ScreenGui.UICorner_103.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_103.Parent = ScreenGui.Crash

ScreenGui.CrashVampire.Name = "Crash Vampire"
ScreenGui.CrashVampire.Parent = ScreenGui.AbusiveMainGui
ScreenGui.CrashVampire.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CrashVampire.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.CrashVampire.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CrashVampire.Font = Enum.Font.JosefinSans
ScreenGui.CrashVampire.Text = "Crash 1"
ScreenGui.CrashVampire.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CrashVampire.TextSize = 25.000
ScreenGui.CrashVampire.MouseButton1Down:connect(function()
	game:GetService("Players"):Chat("h Server Shutting Down")
	game:GetService("Players"):Chat("gear me 94794847")
	wait(.5)
	game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.VampireVanquisher)
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
end)

ScreenGui.UICorner_104.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_104.Parent = ScreenGui.CrashVampire

ScreenGui.SilentCrash.Name = "SilentCrash"
ScreenGui.SilentCrash.Parent = ScreenGui.AbusiveMainGui
ScreenGui.SilentCrash.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.SilentCrash.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.SilentCrash.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.SilentCrash.Font = Enum.Font.JosefinSans
ScreenGui.SilentCrash.Text = "Warn Crash"
ScreenGui.SilentCrash.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.SilentCrash.TextSize = 25.000
ScreenGui.SilentCrash.MouseButton1Down:connect(function()
	game:GetService("Players"):Chat("h This Server Will Be Shutting Down In 10 Seconds")
	wait(10)
	game:GetService("Players"):Chat("h Server Shutting Down")
	wait(0.1)
	game:GetService'Players':Chat((":regen"))
	wait(0.3)
	game:GetService'Players':Chat((":allpads"))
	wait(0.5)
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
end)

ScreenGui.UICorner_105.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_105.Parent = ScreenGui.SilentCrash

ScreenGui.REGuiOn.Name = "R+EGuiOn"
ScreenGui.REGuiOn.Parent = ScreenGui.AbusiveMainGui
ScreenGui.REGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.REGuiOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.REGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.REGuiOn.Visible = false
ScreenGui.REGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.REGuiOn.Text = "R + E"
ScreenGui.REGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.REGuiOn.TextSize = 20.000
ScreenGui.REGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.REGuiOn.MouseButton1Down:connect(function()
	ScreenGui.REGuiOn.Visible = false
	ScreenGui.REGuiOff.Visible = true
	game:GetService("Players"):Chat(":reoff")
end)

ScreenGui.UICorner_106.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_106.Parent = ScreenGui.REGuiOn

ScreenGui.TextLabel_36.Parent = ScreenGui.REGuiOn
ScreenGui.TextLabel_36.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_36.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_36.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_36.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_36.Text = ""
ScreenGui.TextLabel_36.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_36.TextSize = 14.000

ScreenGui.UICorner_107.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_107.Parent = ScreenGui.TextLabel_36

ScreenGui.REGuiOff.Name = "R+EGuiOff"
ScreenGui.REGuiOff.Parent = ScreenGui.AbusiveMainGui
ScreenGui.REGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.REGuiOff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.REGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.REGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.REGuiOff.Text = "R + E"
ScreenGui.REGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.REGuiOff.TextSize = 20.000
ScreenGui.REGuiOff.TextWrapped = true
ScreenGui.REGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.REGuiOff.MouseButton1Down:connect(function()
	ScreenGui.REGuiOn.Visible = true
	ScreenGui.REGuiOff.Visible = false
	game:GetService("Players"):Chat(":reon")
end)

ScreenGui.UICorner_108.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_108.Parent = ScreenGui.REGuiOff

ScreenGui.TextLabel_37.Parent = ScreenGui.REGuiOff
ScreenGui.TextLabel_37.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_37.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_37.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_37.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_37.Text = ""
ScreenGui.TextLabel_37.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_37.TextSize = 14.000

ScreenGui.UICorner_109.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_109.Parent = ScreenGui.TextLabel_37

ScreenGui.UICorner_110.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_110.Parent = ScreenGui.AbusiveGuiDrag

ScreenGui.QuickGuiDrag.Name = "QuickGuiDrag"
ScreenGui.QuickGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.QuickGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.QuickGuiDrag.BorderSizePixel = 0
ScreenGui.QuickGuiDrag.Position = UDim2.new(0.623774529, 0, -0.00135678053, 0)
ScreenGui.QuickGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.QuickGuiDrag.Visible = false
ScreenGui.QuickGuiDrag.Active = true
ScreenGui.QuickGuiDrag.Draggable = true

ScreenGui.QuickMainGui.Name = "QuickMainGui"
ScreenGui.QuickMainGui.Parent = ScreenGui.QuickGuiDrag
ScreenGui.QuickMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.QuickMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.QuickMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_38.Parent = ScreenGui.QuickMainGui
ScreenGui.TextLabel_38.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_38.BackgroundTransparency = 1.000
ScreenGui.TextLabel_38.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_38.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_38.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_38.Text = "Quick Gui"
ScreenGui.TextLabel_38.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_38.TextSize = 25.000
ScreenGui.TextLabel_38.TextWrapped = true

ScreenGui.UICorner_111.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_111.Parent = ScreenGui.QuickMainGui

ScreenGui.Fly.Name = "Fly"
ScreenGui.Fly.Parent = ScreenGui.QuickMainGui
ScreenGui.Fly.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Fly.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.Fly.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Fly.Font = Enum.Font.JosefinSans
ScreenGui.Fly.Text = "Fly"
ScreenGui.Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Fly.TextSize = 25.000
ScreenGui.Fly.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("fly me"))
end)

ScreenGui.UICorner_112.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_112.Parent = ScreenGui.Fly

ScreenGui.AttachWall.Name = "AttachWall"
ScreenGui.AttachWall.Parent = ScreenGui.QuickMainGui
ScreenGui.AttachWall.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AttachWall.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.AttachWall.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AttachWall.Font = Enum.Font.JosefinSans
ScreenGui.AttachWall.Text = "Attach Wall"
ScreenGui.AttachWall.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AttachWall.TextSize = 23.000
ScreenGui.AttachWall.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
end)

ScreenGui.UICorner_113.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_113.Parent = ScreenGui.AttachWall

ScreenGui.AttachFloor.Name = "AttachFloor"
ScreenGui.AttachFloor.Parent = ScreenGui.QuickMainGui
ScreenGui.AttachFloor.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AttachFloor.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.AttachFloor.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AttachFloor.Font = Enum.Font.JosefinSans
ScreenGui.AttachFloor.Text = "Attach Floor"
ScreenGui.AttachFloor.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AttachFloor.TextSize = 25.000
ScreenGui.AttachFloor.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("stun me"))
	wait(0.75)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1) 
	game:GetService'Players':Chat(("unpunish me"))
end)

ScreenGui.UICorner_114.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_114.Parent = ScreenGui.AttachFloor

ScreenGui.Unchar.Name = "Unchar"
ScreenGui.Unchar.Parent = ScreenGui.QuickMainGui
ScreenGui.Unchar.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Unchar.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.Unchar.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Unchar.Font = Enum.Font.JosefinSans
ScreenGui.Unchar.Text = "Unchar"
ScreenGui.Unchar.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Unchar.TextSize = 25.000
ScreenGui.Unchar.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("unchar me"))
end)

ScreenGui.UICorner_115.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_115.Parent = ScreenGui.Unchar

ScreenGui.Respawn.Name = "Respawn"
ScreenGui.Respawn.Parent = ScreenGui.QuickMainGui
ScreenGui.Respawn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Respawn.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.Respawn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Respawn.Font = Enum.Font.JosefinSans
ScreenGui.Respawn.Text = "Respawn"
ScreenGui.Respawn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Respawn.TextSize = 25.000
ScreenGui.Respawn.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("respawn me"))
end)

ScreenGui.UICorner_116.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_116.Parent = ScreenGui.Respawn

ScreenGui.Reset.Name = "Reset"
ScreenGui.Reset.Parent = ScreenGui.QuickMainGui
ScreenGui.Reset.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Reset.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.Reset.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Reset.Font = Enum.Font.JosefinSans
ScreenGui.Reset.Text = "Reset"
ScreenGui.Reset.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Reset.TextSize = 25.000
ScreenGui.Reset.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("reset me"))
end)

ScreenGui.UICorner_117.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_117.Parent = ScreenGui.Reset

ScreenGui.UnFly.Name = "UnFly"
ScreenGui.UnFly.Parent = ScreenGui.QuickMainGui
ScreenGui.UnFly.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.UnFly.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.UnFly.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.UnFly.Font = Enum.Font.JosefinSans
ScreenGui.UnFly.Text = "UnFly"
ScreenGui.UnFly.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.UnFly.TextSize = 25.000
ScreenGui.UnFly.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("unfly me"))
end)

ScreenGui.UICorner_118.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_118.Parent = ScreenGui.UnFly

ScreenGui.UICorner_119.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_119.Parent = ScreenGui.QuickGuiDrag

ScreenGui.GearGuiDrag.Name = "GearGuiDrag"
ScreenGui.GearGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.GearGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.GearGuiDrag.BorderSizePixel = 0
ScreenGui.GearGuiDrag.Position = UDim2.new(0.623774529, 0, -0.00135678053, 0)
ScreenGui.GearGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.GearGuiDrag.Visible = false
ScreenGui.GearGuiDrag.Active = true
ScreenGui.GearGuiDrag.Draggable = true

ScreenGui.GearMainGui.Name = "GearMainGui"
ScreenGui.GearMainGui.Parent = ScreenGui.GearGuiDrag
ScreenGui.GearMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.GearMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.GearMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_39.Parent = ScreenGui.GearMainGui
ScreenGui.TextLabel_39.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_39.BackgroundTransparency = 1.000
ScreenGui.TextLabel_39.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_39.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_39.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_39.Text = "Gear Gui"
ScreenGui.TextLabel_39.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_39.TextSize = 25.000
ScreenGui.TextLabel_39.TextWrapped = true

ScreenGui.UICorner_120.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_120.Parent = ScreenGui.GearMainGui

ScreenGui.CarGear.Name = "CarGear"
ScreenGui.CarGear.Parent = ScreenGui.GearMainGui
ScreenGui.CarGear.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CarGear.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.CarGear.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CarGear.Font = Enum.Font.JosefinSans
ScreenGui.CarGear.Text = "Car"
ScreenGui.CarGear.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CarGear.TextSize = 25.000
ScreenGui.CarGear.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000253519495"))
end)

ScreenGui.UICorner_121.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_121.Parent = ScreenGui.CarGear

ScreenGui.JailTrap.Name = "JailTrap"
ScreenGui.JailTrap.Parent = ScreenGui.GearMainGui
ScreenGui.JailTrap.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.JailTrap.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.JailTrap.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.JailTrap.Font = Enum.Font.JosefinSans
ScreenGui.JailTrap.Text = "Jail Trap"
ScreenGui.JailTrap.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.JailTrap.TextSize = 23.000
ScreenGui.JailTrap.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 00000000000000000082357101"))
end)

ScreenGui.UICorner_122.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_122.Parent = ScreenGui.JailTrap

ScreenGui.PaintBucket.Name = "PaintBucket"
ScreenGui.PaintBucket.Parent = ScreenGui.GearMainGui
ScreenGui.PaintBucket.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PaintBucket.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.PaintBucket.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PaintBucket.Font = Enum.Font.JosefinSans
ScreenGui.PaintBucket.Text = "Paint Bucket"
ScreenGui.PaintBucket.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PaintBucket.TextSize = 25.000
ScreenGui.PaintBucket.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 00000000000000000018474459"))
end)

ScreenGui.UICorner_123.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_123.Parent = ScreenGui.PaintBucket

ScreenGui.BoomBox.Name = "BoomBox"
ScreenGui.BoomBox.Parent = ScreenGui.GearMainGui
ScreenGui.BoomBox.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.BoomBox.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.BoomBox.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.BoomBox.Font = Enum.Font.JosefinSans
ScreenGui.BoomBox.Text = "BoomBox"
ScreenGui.BoomBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.BoomBox.TextSize = 25.000
ScreenGui.BoomBox.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000212641536"))
end)

ScreenGui.UICorner_124.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_124.Parent = ScreenGui.BoomBox

ScreenGui.LaserGun.Name = "LaserGun"
ScreenGui.LaserGun.Parent = ScreenGui.GearMainGui
ScreenGui.LaserGun.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.LaserGun.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.LaserGun.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.LaserGun.Font = Enum.Font.JosefinSans
ScreenGui.LaserGun.Text = "Laser Gun"
ScreenGui.LaserGun.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.LaserGun.TextSize = 25.000
ScreenGui.LaserGun.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000130113146"))
end)

ScreenGui.UICorner_125.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_125.Parent = ScreenGui.LaserGun

ScreenGui.LaserPens.Name = "LaserPens"
ScreenGui.LaserPens.Parent = ScreenGui.GearMainGui
ScreenGui.LaserPens.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.LaserPens.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.LaserPens.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.LaserPens.Font = Enum.Font.JosefinSans
ScreenGui.LaserPens.Text = "Laser Pens"
ScreenGui.LaserPens.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.LaserPens.TextSize = 25.000
ScreenGui.LaserPens.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000115377964"))
end)

ScreenGui.UICorner_126.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_126.Parent = ScreenGui.LaserPens

ScreenGui.IvoryGear.Name = "IvoryGear"
ScreenGui.IvoryGear.Parent = ScreenGui.GearMainGui
ScreenGui.IvoryGear.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.IvoryGear.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.IvoryGear.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.IvoryGear.Font = Enum.Font.JosefinSans
ScreenGui.IvoryGear.Text = "Ivory"
ScreenGui.IvoryGear.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.IvoryGear.TextSize = 25.000
ScreenGui.IvoryGear.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000108158379"))
end)

ScreenGui.UICorner_127.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_127.Parent = ScreenGui.IvoryGear

ScreenGui.UICorner_128.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_128.Parent = ScreenGui.GearGuiDrag

ScreenGui.PadGuiDrag.Name = "PadGuiDrag"
ScreenGui.PadGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.PadGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.PadGuiDrag.BorderSizePixel = 0
ScreenGui.PadGuiDrag.Position = UDim2.new(0.68321079, 0, 0.0108548887, 0)
ScreenGui.PadGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.PadGuiDrag.Visible = false
ScreenGui.PadGuiDrag.Active = true
ScreenGui.PadGuiDrag.Draggable = true

ScreenGui.PadMainGui.Name = "PadMainGui"
ScreenGui.PadMainGui.Parent = ScreenGui.PadGuiDrag
ScreenGui.PadMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.PadMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.PadMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_40.Parent = ScreenGui.PadMainGui
ScreenGui.TextLabel_40.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_40.BackgroundTransparency = 1.000
ScreenGui.TextLabel_40.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_40.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_40.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_40.Text = "Pad Gui"
ScreenGui.TextLabel_40.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_40.TextSize = 25.000
ScreenGui.TextLabel_40.TextWrapped = true

ScreenGui.FindPads.Name = "FindPads"
ScreenGui.FindPads.Parent = ScreenGui.PadMainGui
ScreenGui.FindPads.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.FindPads.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.FindPads.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.FindPads.Font = Enum.Font.JosefinSans
ScreenGui.FindPads.Text = "Find Pads"
ScreenGui.FindPads.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.FindPads.TextSize = 25.000
ScreenGui.FindPads.MouseButton1Down:connect(function()
	FPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4107, 8.23, 63.2582))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 2008.23, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 4008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 6008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 8008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 10008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 12008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 14008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 16008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 18008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 20008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 22008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 24008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 26008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 28008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 30008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 32008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 34008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 36008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 38008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 40008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FPos
end)

ScreenGui.UICorner_129.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_129.Parent = ScreenGui.FindPads

ScreenGui.Nothing2Pad.Name = "Nothing2Pad"
ScreenGui.Nothing2Pad.Parent = ScreenGui.PadMainGui
ScreenGui.Nothing2Pad.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing2Pad.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing2Pad.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing2Pad.Font = Enum.Font.JosefinSans
ScreenGui.Nothing2Pad.Text = "Get Pad"
ScreenGui.Nothing2Pad.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing2Pad.TextSize = 25.000
ScreenGui.Nothing2Pad.MouseButton1Down:connect(function()
	local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
	local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
	wait(0.125)
	pad.CanCollide = false
	repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.125)
	pad.CFrame = padCFrame
	pad.CanCollide = true
end)

ScreenGui.UICorner_130.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_130.Parent = ScreenGui.Nothing2Pad

ScreenGui.RegenPads.Name = "RegenPads"
ScreenGui.RegenPads.Parent = ScreenGui.PadMainGui
ScreenGui.RegenPads.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RegenPads.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.RegenPads.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RegenPads.Font = Enum.Font.JosefinSans
ScreenGui.RegenPads.Text = "Regen"
ScreenGui.RegenPads.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RegenPads.TextSize = 25.000
ScreenGui.RegenPads.MouseButton1Down:connect(function()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end)

ScreenGui.UICorner_131.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_131.Parent = ScreenGui.RegenPads

ScreenGui.GetAllPad.Name = "GetAllPad"
ScreenGui.GetAllPad.Parent = ScreenGui.PadMainGui
ScreenGui.GetAllPad.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GetAllPad.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.GetAllPad.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GetAllPad.Font = Enum.Font.JosefinSans
ScreenGui.GetAllPad.Text = "Get All"
ScreenGui.GetAllPad.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GetAllPad.TextSize = 25.000
ScreenGui.GetAllPad.MouseButton1Down:connect(function()
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
end)

ScreenGui.UICorner_132.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_132.Parent = ScreenGui.GetAllPad

ScreenGui.GotoPad.Name = "GotoPad"
ScreenGui.GotoPad.Parent = ScreenGui.PadMainGui
ScreenGui.GotoPad.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GotoPad.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.GotoPad.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GotoPad.Font = Enum.Font.JosefinSans
ScreenGui.GotoPad.Text = "Goto Pad"
ScreenGui.GotoPad.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GotoPad.TextSize = 25.000
ScreenGui.GotoPad.MouseButton1Down:connect(function()
	local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
	wait(0.125)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = padCFrame
end)

ScreenGui.UICorner_133.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_133.Parent = ScreenGui.GotoPad

ScreenGui.UICorner_134.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_134.Parent = ScreenGui.PadMainGui

ScreenGui.PermOff.Name = "PermOff"
ScreenGui.PermOff.Parent = ScreenGui.PadMainGui
ScreenGui.PermOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PermOff.Position = UDim2.new(0.0920000002, 0, 0.613109291, 0)
ScreenGui.PermOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PermOff.Font = Enum.Font.JosefinSans
ScreenGui.PermOff.Text = "Perm"
ScreenGui.PermOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PermOff.TextSize = 25.000
ScreenGui.PermOff.TextWrapped = true
ScreenGui.PermOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PermOff.MouseButton1Down:connect(function()
	ScreenGui.PermOn.Visible = true
	ScreenGui.PermOff.Visible = false
	game:GetService'Players':Chat((":perm"))
end)

ScreenGui.UICorner_135.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_135.Parent = ScreenGui.PermOff

ScreenGui.TextLabel_41.Parent = ScreenGui.PermOff
ScreenGui.TextLabel_41.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_41.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_41.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_41.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_41.Text = ""
ScreenGui.TextLabel_41.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_41.TextSize = 14.000

ScreenGui.UICorner_136.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_136.Parent = ScreenGui.TextLabel_41

ScreenGui.PermOn.Name = "PermOn"
ScreenGui.PermOn.Parent = ScreenGui.PadMainGui
ScreenGui.PermOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PermOn.Position = UDim2.new(0.0920000002, 0, 0.613109291, 0)
ScreenGui.PermOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PermOn.Visible = false
ScreenGui.PermOn.Font = Enum.Font.JosefinSans
ScreenGui.PermOn.Text = "Perm"
ScreenGui.PermOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PermOn.TextSize = 25.000
ScreenGui.PermOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PermOn.MouseButton1Down:connect(function()
	ScreenGui.PermOn.Visible = false
	ScreenGui.PermOff.Visible = true
	game:GetService'Players':Chat((":unperm"))
end)

ScreenGui.UICorner_137.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_137.Parent = ScreenGui.PermOn

ScreenGui.TextLabel_42.Parent = ScreenGui.PermOn
ScreenGui.TextLabel_42.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_42.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_42.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_42.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_42.Text = ""
ScreenGui.TextLabel_42.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_42.TextSize = 14.000

ScreenGui.UICorner_138.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_138.Parent = ScreenGui.TextLabel_42

ScreenGui.PermAllPadsOff.Name = "PermAllPadsOff"
ScreenGui.PermAllPadsOff.Parent = ScreenGui.PadMainGui
ScreenGui.PermAllPadsOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PermAllPadsOff.Position = UDim2.new(0.0920000002, 0, 0.745900631, 0)
ScreenGui.PermAllPadsOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PermAllPadsOff.Font = Enum.Font.JosefinSans
ScreenGui.PermAllPadsOff.Text = "Perm All Pads"
ScreenGui.PermAllPadsOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PermAllPadsOff.TextSize = 17.000
ScreenGui.PermAllPadsOff.TextWrapped = true
ScreenGui.PermAllPadsOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PermAllPadsOff.MouseButton1Down:connect(function()
	ScreenGui.PermAllPadsOff.Visible = false
	ScreenGui.PermAllPadsOn.Visible = true
	game:GetService'Players':Chat((":permallpads"))
end)

ScreenGui.UICorner_139.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_139.Parent = ScreenGui.PermAllPadsOff

ScreenGui.TextLabel_43.Parent = ScreenGui.PermAllPadsOff
ScreenGui.TextLabel_43.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_43.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_43.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_43.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_43.Text = ""
ScreenGui.TextLabel_43.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_43.TextSize = 14.000

ScreenGui.UICorner_140.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_140.Parent = ScreenGui.TextLabel_43

ScreenGui.PermAllPadsOn.Name = "PermAllPadsOn"
ScreenGui.PermAllPadsOn.Parent = ScreenGui.PadMainGui
ScreenGui.PermAllPadsOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PermAllPadsOn.Position = UDim2.new(0.0920000002, 0, 0.745900631, 0)
ScreenGui.PermAllPadsOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PermAllPadsOn.Visible = false
ScreenGui.PermAllPadsOn.Font = Enum.Font.JosefinSans
ScreenGui.PermAllPadsOn.Text = "Perm All Pads"
ScreenGui.PermAllPadsOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PermAllPadsOn.TextSize = 17.000
ScreenGui.PermAllPadsOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PermAllPadsOn.MouseButton1Down:connect(function()
	ScreenGui.PermAllPadsOff.Visible = true
	ScreenGui.PermAllPadsOn.Visible = false
	game:GetService'Players':Chat((":unpermallpads"))
end)

ScreenGui.UICorner_141.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_141.Parent = ScreenGui.PermAllPadsOn

ScreenGui.TextLabel_44.Parent = ScreenGui.PermAllPadsOn
ScreenGui.TextLabel_44.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_44.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_44.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_44.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_44.Text = ""
ScreenGui.TextLabel_44.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_44.TextSize = 14.000

ScreenGui.UICorner_142.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_142.Parent = ScreenGui.TextLabel_44

ScreenGui.UICorner_143.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_143.Parent = ScreenGui.PadGuiDrag

ScreenGui.PaintGuiDrag.Name = "PaintGuiDrag"
ScreenGui.PaintGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.PaintGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.PaintGuiDrag.BorderSizePixel = 0
ScreenGui.PaintGuiDrag.Visible = false
ScreenGui.PaintGuiDrag.Position = UDim2.new(0.155637249, 0, 0.0122117409, 0)
ScreenGui.PaintGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.PaintGuiDrag.Active = true
ScreenGui.PaintGuiDrag.Draggable = true

ScreenGui.PaintMainGui.Name = "PaintMainGui"
ScreenGui.PaintMainGui.Parent = ScreenGui.PaintGuiDrag
ScreenGui.PaintMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.PaintMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.PaintMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_45.Parent = ScreenGui.PaintMainGui
ScreenGui.TextLabel_45.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_45.BackgroundTransparency = 1.000
ScreenGui.TextLabel_45.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_45.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_45.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_45.Text = "Paint Gui"
ScreenGui.TextLabel_45.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_45.TextSize = 25.000
ScreenGui.TextLabel_45.TextWrapped = true

ScreenGui.UICorner_144.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_144.Parent = ScreenGui.PaintMainGui

ScreenGui.NightsFavPaint.Name = "NightsFavPaint"
ScreenGui.NightsFavPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.NightsFavPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.NightsFavPaint.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.NightsFavPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.NightsFavPaint.Font = Enum.Font.JosefinSans
ScreenGui.NightsFavPaint.Text = "Night's Fav"
ScreenGui.NightsFavPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.NightsFavPaint.TextSize = 25.000

ScreenGui.UICorner_145.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_145.Parent = ScreenGui.NightsFavPaint

ScreenGui.Notthing1Paint.Name = "Notthing1Paint"
ScreenGui.Notthing1Paint.Parent = ScreenGui.PaintMainGui
ScreenGui.Notthing1Paint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Notthing1Paint.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Notthing1Paint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Notthing1Paint.Font = Enum.Font.JosefinSans
ScreenGui.Notthing1Paint.Text = "nothing"
ScreenGui.Notthing1Paint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Notthing1Paint.TextSize = 25.000

ScreenGui.UICorner_146.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_146.Parent = ScreenGui.Notthing1Paint

ScreenGui.AllWgitePaint.Name = "AllWgitePaint"
ScreenGui.AllWgitePaint.Parent = ScreenGui.PaintMainGui
ScreenGui.AllWgitePaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AllWgitePaint.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.AllWgitePaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AllWgitePaint.Font = Enum.Font.JosefinSans
ScreenGui.AllWgitePaint.Text = "All White"
ScreenGui.AllWgitePaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AllWgitePaint.TextSize = 25.000

ScreenGui.UICorner_147.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_147.Parent = ScreenGui.AllWgitePaint

ScreenGui.AllBlackPaint.Name = "AllBlackPaint"
ScreenGui.AllBlackPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.AllBlackPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AllBlackPaint.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.AllBlackPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AllBlackPaint.Font = Enum.Font.JosefinSans
ScreenGui.AllBlackPaint.Text = "All Black"
ScreenGui.AllBlackPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AllBlackPaint.TextSize = 25.000

ScreenGui.UICorner_148.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_148.Parent = ScreenGui.AllBlackPaint

ScreenGui.AllOriginalPaint.Name = "AllOriginalPaint"
ScreenGui.AllOriginalPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.AllOriginalPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AllOriginalPaint.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.AllOriginalPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AllOriginalPaint.Font = Enum.Font.JosefinSans
ScreenGui.AllOriginalPaint.Text = "Original"
ScreenGui.AllOriginalPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AllOriginalPaint.TextSize = 25.000

ScreenGui.UICorner_149.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_149.Parent = ScreenGui.AllOriginalPaint

ScreenGui.AllRandomPaint.Name = "AllRandomPaint"
ScreenGui.AllRandomPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.AllRandomPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AllRandomPaint.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.AllRandomPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AllRandomPaint.Font = Enum.Font.JosefinSans
ScreenGui.AllRandomPaint.Text = "All Random"
ScreenGui.AllRandomPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AllRandomPaint.TextSize = 25.000

ScreenGui.UICorner_150.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_150.Parent = ScreenGui.AllRandomPaint

ScreenGui.ScalesFavPaint.Name = "ScalesFavPaint"
ScreenGui.ScalesFavPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.ScalesFavPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.ScalesFavPaint.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.ScalesFavPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.ScalesFavPaint.Font = Enum.Font.JosefinSans
ScreenGui.ScalesFavPaint.Text = "Scale's Fav"
ScreenGui.ScalesFavPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.ScalesFavPaint.TextSize = 25.000

ScreenGui.UICorner_151.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_151.Parent = ScreenGui.ScalesFavPaint

ScreenGui.UICorner_152.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_152.Parent = ScreenGui.PaintGuiDrag

ScreenGui.HelpfullGuiDrag.Name = "HelpfullGuiDrag"
ScreenGui.HelpfullGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.HelpfullGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.HelpfullGuiDrag.BorderSizePixel = 0
ScreenGui.HelpfullGuiDrag.Position = UDim2.new(0.522058845, 0, 0.0122117409, 0)
ScreenGui.HelpfullGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.HelpfullGuiDrag.Visible = false
ScreenGui.HelpfullGuiDrag.Active = true
ScreenGui.HelpfullGuiDrag.Draggable = true

ScreenGui.HelpfullMainGui.Name = "HelpfullMainGui"
ScreenGui.HelpfullMainGui.Parent = ScreenGui.HelpfullGuiDrag
ScreenGui.HelpfullMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.HelpfullMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.HelpfullMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_46.Parent = ScreenGui.HelpfullMainGui
ScreenGui.TextLabel_46.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_46.BackgroundTransparency = 1.000
ScreenGui.TextLabel_46.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_46.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_46.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_46.Text = "Helpfull Gui"
ScreenGui.TextLabel_46.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_46.TextSize = 25.000
ScreenGui.TextLabel_46.TextWrapped = true

ScreenGui.UICorner_153.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_153.Parent = ScreenGui.HelpfullMainGui

ScreenGui.NoObbyKill.Name = "No Obby Kill"
ScreenGui.NoObbyKill.Parent = ScreenGui.HelpfullMainGui
ScreenGui.NoObbyKill.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.NoObbyKill.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.NoObbyKill.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.NoObbyKill.Font = Enum.Font.JosefinSans
ScreenGui.NoObbyKill.Text = "No Obby Kill"
ScreenGui.NoObbyKill.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.NoObbyKill.TextSize = 25.000
ScreenGui.NoObbyKill.MouseButton1Down:connect(function()
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
end)

ScreenGui.UICorner_154.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_154.Parent = ScreenGui.NoObbyKill

ScreenGui.RemovePhantomBp.Name = "RemovePhantomBp"
ScreenGui.RemovePhantomBp.Parent = ScreenGui.HelpfullMainGui
ScreenGui.RemovePhantomBp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RemovePhantomBp.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.RemovePhantomBp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RemovePhantomBp.Font = Enum.Font.JosefinSans
ScreenGui.RemovePhantomBp.Text = "Click Tp"
ScreenGui.RemovePhantomBp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RemovePhantomBp.TextScaled = true
ScreenGui.RemovePhantomBp.TextSize = 25.000
ScreenGui.RemovePhantomBp.TextWrapped = true
ScreenGui.RemovePhantomBp.MouseButton1Down:connect(function()
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
end)

ScreenGui.UICorner_155.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_155.Parent = ScreenGui.RemovePhantomBp

ScreenGui.PhantomBp.Name = "PhantomBp"
ScreenGui.PhantomBp.Parent = ScreenGui.HelpfullMainGui
ScreenGui.PhantomBp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PhantomBp.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.PhantomBp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PhantomBp.Font = Enum.Font.JosefinSans
ScreenGui.PhantomBp.Text = "Phantom BP"
ScreenGui.PhantomBp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PhantomBp.TextSize = 25.000
ScreenGui.PhantomBp.MouseButton1Down:connect(function()
	local Baseplate = Instance.new("Part", GameFolder["Workspace"])
	Baseplate.Name = "PhantomBaseplate"
	Baseplate.BrickColor = BrickColor.new("Bright green")
	Baseplate.Size = Vector3.new(1000, 1.2, 1000)
	Baseplate.TopSurface = "Studs"
	Baseplate.Anchored = true
end)

ScreenGui.UICorner_156.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_156.Parent = ScreenGui.PhantomBp

ScreenGui.Btools.Name = "Btools"
ScreenGui.Btools.Parent = ScreenGui.HelpfullMainGui
ScreenGui.Btools.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Btools.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.Btools.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Btools.Font = Enum.Font.JosefinSans
ScreenGui.Btools.Text = "Btools"
ScreenGui.Btools.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Btools.TextSize = 25.000
ScreenGui.Btools.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 00000000000000000016200204"))
	wait(0.1)
	game:GetService'Players':Chat(("gear me 00000000000000000016200402"))
	wait(0.1)
	game:GetService'Players':Chat(("gear me 00000000000000000016969792"))
	wait(0.1)
	game:GetService'Players':Chat(("gear me 00000000000000000073089190"))
	wait(0.1)
	game:GetService'Players':Chat(("gear me 00000000000000000021001552"))
end)

ScreenGui.UICorner_157.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_157.Parent = ScreenGui.Btools

ScreenGui.Rejoin.Name = "Rejoin"
ScreenGui.Rejoin.Parent = ScreenGui.HelpfullMainGui
ScreenGui.Rejoin.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Rejoin.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.Rejoin.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Rejoin.Font = Enum.Font.JosefinSans
ScreenGui.Rejoin.Text = "Trap"
ScreenGui.Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Rejoin.TextSize = 25.000
ScreenGui.Rejoin.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("freeze me"))
	wait(0.10)
	game:GetService'Players':Chat(("name me "))
	wait(0.10)
	game:GetService'Players':Chat(("thaw me"))
end)

ScreenGui.UICorner_158.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_158.Parent = ScreenGui.Rejoin

ScreenGui.Invert.Name = "Invert"
ScreenGui.Invert.Parent = ScreenGui.HelpfullMainGui
ScreenGui.Invert.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Invert.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.Invert.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Invert.Font = Enum.Font.JosefinSans
ScreenGui.Invert.Text = "Invert Colors"
ScreenGui.Invert.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Invert.TextSize = 25.000
ScreenGui.Invert.MouseButton1Down:connect(function()
	for i = 1,25 do
		game.Workspace.CurrentCamera.GrayScale:Destroy()
	end
end)

ScreenGui.UICorner_159.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_159.Parent = ScreenGui.Invert

ScreenGui.NoAdminUnpunish.Name = "No Admin Unpunish"
ScreenGui.NoAdminUnpunish.Parent = ScreenGui.HelpfullMainGui
ScreenGui.NoAdminUnpunish.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.NoAdminUnpunish.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.NoAdminUnpunish.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.NoAdminUnpunish.Font = Enum.Font.JosefinSans
ScreenGui.NoAdminUnpunish.Text = "No Admin Unpunish"
ScreenGui.NoAdminUnpunish.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.NoAdminUnpunish.TextScaled = true
ScreenGui.NoAdminUnpunish.TextSize = 25.000
ScreenGui.NoAdminUnpunish.TextWrapped = true
ScreenGui.NoAdminUnpunish.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:Destroy()
end)

ScreenGui.UICorner_160.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_160.Parent = ScreenGui.NoAdminUnpunish

ScreenGui.UICorner_161.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_161.Parent = ScreenGui.HelpfullGuiDrag

ScreenGui.AntiGuiDrag.Name = "AntiGuiDrag"
ScreenGui.AntiGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.AntiGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.AntiGuiDrag.BorderSizePixel = 0
ScreenGui.AntiGuiDrag.Position = UDim2.new(0.844362736, 0, -0.000128279324, 0)
ScreenGui.AntiGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.AntiGuiDrag.Visible = false
ScreenGui.AntiGuiDrag.Active = true
ScreenGui.AntiGuiDrag.Draggable = true

ScreenGui.AntiMainGui.Name = "AntiMainGui"
ScreenGui.AntiMainGui.Parent = ScreenGui.AntiGuiDrag
ScreenGui.AntiMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.AntiMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.AntiMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_47.Parent = ScreenGui.AntiMainGui
ScreenGui.TextLabel_47.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_47.BackgroundTransparency = 1.000
ScreenGui.TextLabel_47.Position = UDim2.new(1.65856406e-07, 0, -0.00271002715, 0)
ScreenGui.TextLabel_47.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_47.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_47.Text = "Anti Gui"
ScreenGui.TextLabel_47.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_47.TextSize = 25.000
ScreenGui.TextLabel_47.TextWrapped = true

ScreenGui.UICorner_162.CornerRadius = UDim.new(0.075000003, 0)
ScreenGui.UICorner_162.Parent = ScreenGui.AntiMainGui

ScreenGui.Antikilloff.Name = "Antikilloff"
ScreenGui.Antikilloff.Parent = ScreenGui.AntiMainGui
ScreenGui.Antikilloff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Antikilloff.Position = UDim2.new(0.0920000002, 0, 0.501946092, 0)
ScreenGui.Antikilloff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Antikilloff.Font = Enum.Font.JosefinSans
ScreenGui.Antikilloff.Text = "Anti Kill"
ScreenGui.Antikilloff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Antikilloff.TextSize = 20.000
ScreenGui.Antikilloff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.TextLabel_48.Parent = ScreenGui.Antikilloff
ScreenGui.TextLabel_48.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_48.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_48.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_48.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_48.Text = ""
ScreenGui.TextLabel_48.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_48.TextSize = 14.000

ScreenGui.UICorner_163.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_163.Parent = ScreenGui.TextLabel_48

ScreenGui.UICorner_164.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_164.Parent = ScreenGui.Antikilloff

ScreenGui.AntiKillOn.Name = "AntiKillOn"
ScreenGui.AntiKillOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiKillOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiKillOn.Position = UDim2.new(0.0920000002, 0, 0.501999974, 0)
ScreenGui.AntiKillOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiKillOn.Visible = false
ScreenGui.AntiKillOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiKillOn.Text = "Anti Kill"
ScreenGui.AntiKillOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiKillOn.TextSize = 20.000
ScreenGui.AntiKillOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_165.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_165.Parent = ScreenGui.AntiKillOn

ScreenGui.TextLabel_49.Parent = ScreenGui.AntiKillOn
ScreenGui.TextLabel_49.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_49.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_49.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_49.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_49.Text = ""
ScreenGui.TextLabel_49.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_49.TextSize = 14.000

ScreenGui.UICorner_166.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_166.Parent = ScreenGui.TextLabel_49

ScreenGui.AntiPunishOn.Name = "AntiPunishOn"
ScreenGui.AntiPunishOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiPunishOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiPunishOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.AntiPunishOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiPunishOn.Visible = false
ScreenGui.AntiPunishOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiPunishOn.Text = "Anti Punish"
ScreenGui.AntiPunishOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiPunishOn.TextSize = 20.000
ScreenGui.AntiPunishOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_167.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_167.Parent = ScreenGui.AntiPunishOn

ScreenGui.TextLabel_50.Parent = ScreenGui.AntiPunishOn
ScreenGui.TextLabel_50.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_50.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_50.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_50.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_50.Text = ""
ScreenGui.TextLabel_50.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_50.TextSize = 14.000

ScreenGui.UICorner_168.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_168.Parent = ScreenGui.TextLabel_50

ScreenGui.AntiPunishoff.Name = "AntiPunishoff"
ScreenGui.AntiPunishoff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiPunishoff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiPunishoff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.AntiPunishoff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiPunishoff.Font = Enum.Font.JosefinSans
ScreenGui.AntiPunishoff.Text = "Anti Punish"
ScreenGui.AntiPunishoff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiPunishoff.TextSize = 20.000
ScreenGui.AntiPunishoff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_169.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_169.Parent = ScreenGui.AntiPunishoff

ScreenGui.TextLabel_51.Parent = ScreenGui.AntiPunishoff
ScreenGui.TextLabel_51.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_51.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_51.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_51.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_51.Text = ""
ScreenGui.TextLabel_51.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_51.TextSize = 14.000

ScreenGui.UICorner_170.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_170.Parent = ScreenGui.TextLabel_51

ScreenGui.AntiCrashOff.Name = "AntiCrashOff"
ScreenGui.AntiCrashOff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiCrashOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiCrashOff.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.AntiCrashOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiCrashOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiCrashOff.Text = "Anti Crash"
ScreenGui.AntiCrashOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiCrashOff.TextSize = 20.000
ScreenGui.AntiCrashOff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_171.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_171.Parent = ScreenGui.AntiCrashOff

ScreenGui.TextLabel_52.Parent = ScreenGui.AntiCrashOff
ScreenGui.TextLabel_52.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_52.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_52.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_52.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_52.Text = ""
ScreenGui.TextLabel_52.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_52.TextSize = 14.000

ScreenGui.UICorner_172.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_172.Parent = ScreenGui.TextLabel_52

ScreenGui.antiCrashOn.Name = "antiCrashOn"
ScreenGui.antiCrashOn.Parent = ScreenGui.AntiMainGui
ScreenGui.antiCrashOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiCrashOn.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.antiCrashOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiCrashOn.Visible = false
ScreenGui.antiCrashOn.Font = Enum.Font.JosefinSans
ScreenGui.antiCrashOn.Text = "Anti Crash"
ScreenGui.antiCrashOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiCrashOn.TextSize = 20.000
ScreenGui.antiCrashOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_173.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_173.Parent = ScreenGui.antiCrashOn

ScreenGui.TextLabel_53.Parent = ScreenGui.antiCrashOn
ScreenGui.TextLabel_53.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_53.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_53.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_53.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_53.Text = ""
ScreenGui.TextLabel_53.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_53.TextSize = 14.000

ScreenGui.UICorner_174.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_174.Parent = ScreenGui.TextLabel_53

ScreenGui.AntiSkydiveOff.Name = "AntiSkydiveOff"
ScreenGui.AntiSkydiveOff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiSkydiveOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiSkydiveOff.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.AntiSkydiveOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiSkydiveOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiSkydiveOff.Text = "Anti Skydive"
ScreenGui.AntiSkydiveOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiSkydiveOff.TextSize = 20.000
ScreenGui.AntiSkydiveOff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.TextLabel_54.Parent = ScreenGui.AntiSkydiveOff
ScreenGui.TextLabel_54.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_54.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_54.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_54.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_54.Text = ""
ScreenGui.TextLabel_54.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_54.TextSize = 14.000

ScreenGui.UICorner_175.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_175.Parent = ScreenGui.TextLabel_54

ScreenGui.UICorner_176.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_176.Parent = ScreenGui.AntiSkydiveOff

ScreenGui.AntiSkydiveOn.Name = "AntiSkydiveOn"
ScreenGui.AntiSkydiveOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiSkydiveOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiSkydiveOn.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.AntiSkydiveOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiSkydiveOn.Visible = false
ScreenGui.AntiSkydiveOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiSkydiveOn.Text = "Anti Skydive"
ScreenGui.AntiSkydiveOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiSkydiveOn.TextSize = 20.000
ScreenGui.AntiSkydiveOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_177.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_177.Parent = ScreenGui.AntiSkydiveOn

ScreenGui.TextLabel_55.Parent = ScreenGui.AntiSkydiveOn
ScreenGui.TextLabel_55.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_55.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_55.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_55.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_55.Text = ""
ScreenGui.TextLabel_55.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_55.TextSize = 14.000

ScreenGui.UICorner_178.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_178.Parent = ScreenGui.TextLabel_55

ScreenGui.AntiMusicOff.Name = "AntiMusicOff"
ScreenGui.AntiMusicOff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiMusicOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiMusicOff.Position = UDim2.new(0.0920000002, 0, 0.366976023, 0)
ScreenGui.AntiMusicOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiMusicOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiMusicOff.Text = "Anti Music"
ScreenGui.AntiMusicOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiMusicOff.TextSize = 20.000
ScreenGui.AntiMusicOff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_179.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_179.Parent = ScreenGui.AntiMusicOff

ScreenGui.TextLabel_56.Parent = ScreenGui.AntiMusicOff
ScreenGui.TextLabel_56.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_56.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_56.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_56.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_56.Text = ""
ScreenGui.TextLabel_56.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_56.TextSize = 14.000

ScreenGui.UICorner_180.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_180.Parent = ScreenGui.TextLabel_56

ScreenGui.AntiMusicOn.Name = "Anti Music On"
ScreenGui.AntiMusicOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiMusicOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiMusicOn.Position = UDim2.new(0.0920000002, 0, 0.367000014, 0)
ScreenGui.AntiMusicOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiMusicOn.Visible = false
ScreenGui.AntiMusicOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiMusicOn.Text = "Anti Music"
ScreenGui.AntiMusicOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiMusicOn.TextSize = 20.000
ScreenGui.AntiMusicOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_181.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_181.Parent = ScreenGui.AntiMusicOn

ScreenGui.TextLabel_57.Parent = ScreenGui.AntiMusicOn
ScreenGui.TextLabel_57.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_57.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_57.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_57.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_57.Text = ""
ScreenGui.TextLabel_57.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_57.TextSize = 14.000

ScreenGui.UICorner_182.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_182.Parent = ScreenGui.TextLabel_57

ScreenGui.AntiMsgCrashOff.Name = "Anti Msg Crash Off"
ScreenGui.AntiMsgCrashOff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiMsgCrashOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiMsgCrashOff.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.AntiMsgCrashOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiMsgCrashOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiMsgCrashOff.Text = "Anti Msg Crash"
ScreenGui.AntiMsgCrashOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiMsgCrashOff.TextSize = 15.000
ScreenGui.AntiMsgCrashOff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_183.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_183.Parent = ScreenGui.AntiMsgCrashOff

ScreenGui.TextLabel_58.Parent = ScreenGui.AntiMsgCrashOff
ScreenGui.TextLabel_58.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_58.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_58.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_58.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_58.Text = ""
ScreenGui.TextLabel_58.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_58.TextSize = 14.000

ScreenGui.UICorner_184.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_184.Parent = ScreenGui.TextLabel_58

ScreenGui.AntiMsgCrashOn.Name = "AntiMsgCrashOn"
ScreenGui.AntiMsgCrashOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiMsgCrashOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiMsgCrashOn.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.AntiMsgCrashOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiMsgCrashOn.Visible = false
ScreenGui.AntiMsgCrashOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiMsgCrashOn.Text = "Anti Msg Crash"
ScreenGui.AntiMsgCrashOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiMsgCrashOn.TextSize = 15.000
ScreenGui.AntiMsgCrashOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_185.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_185.Parent = ScreenGui.AntiMsgCrashOn

ScreenGui.TextLabel_59.Parent = ScreenGui.AntiMsgCrashOn
ScreenGui.TextLabel_59.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_59.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_59.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_59.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_59.Text = ""
ScreenGui.TextLabel_59.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_59.TextSize = 14.000

ScreenGui.UICorner_186.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_186.Parent = ScreenGui.TextLabel_59

ScreenGui.antiBlindOff.Name = "antiBlindOff"
ScreenGui.antiBlindOff.Parent = ScreenGui.AntiMainGui
ScreenGui.antiBlindOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiBlindOff.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.antiBlindOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiBlindOff.Font = Enum.Font.JosefinSans
ScreenGui.antiBlindOff.Text = "Anti Blind"
ScreenGui.antiBlindOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiBlindOff.TextSize = 20.000
ScreenGui.antiBlindOff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_187.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_187.Parent = ScreenGui.antiBlindOff

ScreenGui.TextLabel_60.Parent = ScreenGui.antiBlindOff
ScreenGui.TextLabel_60.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_60.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_60.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_60.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_60.Text = ""
ScreenGui.TextLabel_60.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_60.TextSize = 14.000

ScreenGui.UICorner_188.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_188.Parent = ScreenGui.TextLabel_60

ScreenGui.antiBlindOn.Name = "antiBlindOn"
ScreenGui.antiBlindOn.Parent = ScreenGui.AntiMainGui
ScreenGui.antiBlindOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiBlindOn.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.antiBlindOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiBlindOn.Visible = false
ScreenGui.antiBlindOn.Font = Enum.Font.JosefinSans
ScreenGui.antiBlindOn.Text = "Anti Blind"
ScreenGui.antiBlindOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiBlindOn.TextSize = 20.000
ScreenGui.antiBlindOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_189.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_189.Parent = ScreenGui.antiBlindOn

ScreenGui.TextLabel_61.Parent = ScreenGui.antiBlindOn
ScreenGui.TextLabel_61.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_61.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_61.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_61.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_61.Text = ""
ScreenGui.TextLabel_61.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_61.TextSize = 14.000

ScreenGui.UICorner_190.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_190.Parent = ScreenGui.TextLabel_61

ScreenGui.UICorner_191.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_191.Parent = ScreenGui.AntiGuiDrag

ScreenGui.CreditsGuiDrag.Name = "CreditsGuiDrag"
ScreenGui.CreditsGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.CreditsGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.CreditsGuiDrag.BorderSizePixel = 0
ScreenGui.CreditsGuiDrag.Position = UDim2.new(0.340686291, 0, 0.0122117409, 0)
ScreenGui.CreditsGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.CreditsGuiDrag.Visible = false
ScreenGui.CreditsGuiDrag.Active = true
ScreenGui.CreditsGuiDrag.Draggable = true

ScreenGui.CreditsMainGui.Name = "CreditsMainGui"
ScreenGui.CreditsMainGui.Parent = ScreenGui.CreditsGuiDrag
ScreenGui.CreditsMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.CreditsMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.CreditsMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_62.Parent = ScreenGui.CreditsMainGui
ScreenGui.TextLabel_62.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_62.BackgroundTransparency = 1.000
ScreenGui.TextLabel_62.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_62.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_62.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_62.Text = "Tp Gui"
ScreenGui.TextLabel_62.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_62.TextSize = 25.000
ScreenGui.TextLabel_62.TextWrapped = true

ScreenGui.HouseTP.Name = "HouseTP"
ScreenGui.HouseTP.Parent = ScreenGui.CreditsMainGui
ScreenGui.HouseTP.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.HouseTP.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.HouseTP.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.HouseTP.Font = Enum.Font.JosefinSans
ScreenGui.HouseTP.Text = "House"
ScreenGui.HouseTP.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.HouseTP.TextSize = 25.000
ScreenGui.HouseTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4106693, 8.22999954, 63.2581749))
end)

ScreenGui.UICorner_192.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_192.Parent = ScreenGui.HouseTP

ScreenGui.Spawn3Tp.Name = "Spawn3Tp"
ScreenGui.Spawn3Tp.Parent = ScreenGui.CreditsMainGui
ScreenGui.Spawn3Tp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Spawn3Tp.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Spawn3Tp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Spawn3Tp.Font = Enum.Font.JosefinSans
ScreenGui.Spawn3Tp.Text = "Spawn 3"
ScreenGui.Spawn3Tp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Spawn3Tp.TextSize = 25.000
ScreenGui.Spawn3Tp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-53, 3.7, -25.59))
end)

ScreenGui.UICorner_193.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_193.Parent = ScreenGui.Spawn3Tp

ScreenGui.Spawn2Tp.Name = "Spawn2Tp"
ScreenGui.Spawn2Tp.Parent = ScreenGui.CreditsMainGui
ScreenGui.Spawn2Tp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Spawn2Tp.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Spawn2Tp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Spawn2Tp.Font = Enum.Font.JosefinSans
ScreenGui.Spawn2Tp.Text = "Spawn 2"
ScreenGui.Spawn2Tp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Spawn2Tp.TextSize = 25.000
ScreenGui.Spawn2Tp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(41, 3.7, -25.59))
end)

ScreenGui.UICorner_194.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_194.Parent = ScreenGui.Spawn2Tp

ScreenGui.Spawn1Tp.Name = "Spawn1Tp"
ScreenGui.Spawn1Tp.Parent = ScreenGui.CreditsMainGui
ScreenGui.Spawn1Tp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Spawn1Tp.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.Spawn1Tp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Spawn1Tp.Font = Enum.Font.JosefinSans
ScreenGui.Spawn1Tp.Text = "Spawn 1"
ScreenGui.Spawn1Tp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Spawn1Tp.TextSize = 25.000
ScreenGui.Spawn1Tp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29, 3.7, -25.59))
end)

ScreenGui.UICorner_195.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_195.Parent = ScreenGui.Spawn1Tp

ScreenGui.TopHouseTp.Name = "Top House Tp"
ScreenGui.TopHouseTp.Parent = ScreenGui.CreditsMainGui
ScreenGui.TopHouseTp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TopHouseTp.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.TopHouseTp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TopHouseTp.Font = Enum.Font.JosefinSans
ScreenGui.TopHouseTp.Text = "Top House"
ScreenGui.TopHouseTp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TopHouseTp.TextSize = 25.000
ScreenGui.TopHouseTp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29.954174, 41.8300018, 60.291275))
end)

ScreenGui.UICorner_196.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_196.Parent = ScreenGui.TopHouseTp

ScreenGui.EndObbyTp.Name = "EndObbyTp"
ScreenGui.EndObbyTp.Parent = ScreenGui.CreditsMainGui
ScreenGui.EndObbyTp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.EndObbyTp.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.EndObbyTp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.EndObbyTp.Font = Enum.Font.JosefinSans
ScreenGui.EndObbyTp.Text = "End Obby"
ScreenGui.EndObbyTp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.EndObbyTp.TextSize = 25.000
ScreenGui.EndObbyTp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-52.2587738, 3.70000005, 38.5809517))
end)

ScreenGui.UICorner_197.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_197.Parent = ScreenGui.EndObbyTp

ScreenGui.PadsTp.Name = "PadsTp"
ScreenGui.PadsTp.Parent = ScreenGui.CreditsMainGui
ScreenGui.PadsTp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PadsTp.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.PadsTp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PadsTp.Font = Enum.Font.JosefinSans
ScreenGui.PadsTp.Text = "Infront Pads"
ScreenGui.PadsTp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PadsTp.TextScaled = true
ScreenGui.PadsTp.TextSize = 25.000
ScreenGui.PadsTp.TextWrapped = true
ScreenGui.PadsTp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-27.0519, 8.23, 79.1089))
end)

ScreenGui.UICorner_198.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_198.Parent = ScreenGui.PadsTp

ScreenGui.UICorner_199.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_199.Parent = ScreenGui.CreditsMainGui

ScreenGui.UICorner_200.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_200.Parent = ScreenGui.CreditsGuiDrag

ScreenGui.TpGuiDrag.Name = "TpGuiDrag"
ScreenGui.TpGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.TpGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TpGuiDrag.BorderSizePixel = 0
ScreenGui.TpGuiDrag.Position = UDim2.new(0.340686291, 0, 0.0122117409, 0)
ScreenGui.TpGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.TpGuiDrag.Visible = false
ScreenGui.TpGuiDrag.Active = true
ScreenGui.TpGuiDrag.Draggable = true

ScreenGui.TpMainGui.Name = "TpMainGui"
ScreenGui.TpMainGui.Parent = ScreenGui.TpGuiDrag
ScreenGui.TpMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.TpMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.TpMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_63.Parent = ScreenGui.TpMainGui
ScreenGui.TextLabel_63.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_63.BackgroundTransparency = 1.000
ScreenGui.TextLabel_63.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_63.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_63.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_63.Text = "Credits Gui"
ScreenGui.TextLabel_63.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_63.TextSize = 25.000
ScreenGui.TextLabel_63.TextWrapped = true

ScreenGui.UICorner_201.CornerRadius = UDim.new(0.075000003, 0)
ScreenGui.UICorner_201.Parent = ScreenGui.TpMainGui

ScreenGui.TextLabel_64.Parent = ScreenGui.TpMainGui
ScreenGui.TextLabel_64.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.TextLabel_64.BorderColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.TextLabel_64.BorderSizePixel = 0
ScreenGui.TextLabel_64.Position = UDim2.new(0, 0, 0.111111112, 0)
ScreenGui.TextLabel_64.Size = UDim2.new(0, 184, 0, 47)
ScreenGui.TextLabel_64.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_64.Text = "Gui Made By ScaleneSoap9803"
ScreenGui.TextLabel_64.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_64.TextScaled = true
ScreenGui.TextLabel_64.TextSize = 25.000
ScreenGui.TextLabel_64.TextWrapped = true

ScreenGui.TextLabel_65.Parent = ScreenGui.TpMainGui
ScreenGui.TextLabel_65.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.TextLabel_65.BorderSizePixel = 0
ScreenGui.TextLabel_65.Position = UDim2.new(0, 0, 0.344173431, 0)
ScreenGui.TextLabel_65.Size = UDim2.new(0, 184, 0, 53)
ScreenGui.TextLabel_65.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_65.Text = "Some Of The Commands Made By Nightmare_TheReal297"
ScreenGui.TextLabel_65.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_65.TextScaled = true
ScreenGui.TextLabel_65.TextSize = 25.000
ScreenGui.TextLabel_65.TextWrapped = true

ScreenGui.UICorner_202.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_202.Parent = ScreenGui.TpGuiDrag

ScreenGui.ColorsGuiDrag.Name = "ColorsGuiDrag"
ScreenGui.ColorsGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.ColorsGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.ColorsGuiDrag.BorderSizePixel = 0
ScreenGui.ColorsGuiDrag.Position = UDim2.new(0.340686291, 0, 0.0122117409, 0)
ScreenGui.ColorsGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.ColorsGuiDrag.Visible = false
ScreenGui.ColorsGuiDrag.Active = true
ScreenGui.ColorsGuiDrag.Draggable = true

ScreenGui.ColorsMainGui.Name = "ColorsMainGui"
ScreenGui.ColorsMainGui.Parent = ScreenGui.ColorsGuiDrag
ScreenGui.ColorsMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.ColorsMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.ColorsMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_66.Parent = ScreenGui.ColorsMainGui
ScreenGui.TextLabel_66.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_66.BackgroundTransparency = 1.000
ScreenGui.TextLabel_66.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_66.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_66.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_66.Text = "Colors Gui"
ScreenGui.TextLabel_66.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_66.TextSize = 25.000
ScreenGui.TextLabel_66.TextWrapped = true

ScreenGui.Heaven.Name = "Heaven"
ScreenGui.Heaven.Parent = ScreenGui.ColorsMainGui
ScreenGui.Heaven.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Heaven.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.Heaven.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Heaven.Font = Enum.Font.JosefinSans
ScreenGui.Heaven.Text = "Heaven"
ScreenGui.Heaven.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Heaven.TextSize = 25.000
ScreenGui.Heaven.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":heaven"))
end)

ScreenGui.UICorner_203.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_203.Parent = ScreenGui.Heaven

ScreenGui.Nothing1Color.Name = "Nothing1Color"
ScreenGui.Nothing1Color.Parent = ScreenGui.ColorsMainGui
ScreenGui.Nothing1Color.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing1Color.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing1Color.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing1Color.Font = Enum.Font.JosefinSans
ScreenGui.Nothing1Color.Text = "Nothing"
ScreenGui.Nothing1Color.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing1Color.TextSize = 25.000

ScreenGui.UICorner_204.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_204.Parent = ScreenGui.Nothing1Color

ScreenGui.Christmas.Name = "Christmas"
ScreenGui.Christmas.Parent = ScreenGui.ColorsMainGui
ScreenGui.Christmas.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Christmas.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.Christmas.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Christmas.Font = Enum.Font.JosefinSans
ScreenGui.Christmas.Text = "Christmas"
ScreenGui.Christmas.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Christmas.TextSize = 25.000
ScreenGui.Christmas.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":christmas"))
end)

ScreenGui.UICorner_205.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_205.Parent = ScreenGui.Christmas

ScreenGui.Shadows.Name = "Shadows"
ScreenGui.Shadows.Parent = ScreenGui.ColorsMainGui
ScreenGui.Shadows.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Shadows.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.Shadows.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Shadows.Font = Enum.Font.JosefinSans
ScreenGui.Shadows.Text = "Shadows"
ScreenGui.Shadows.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Shadows.TextSize = 25.000
ScreenGui.Shadows.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":shadows"))
end)

ScreenGui.UICorner_206.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_206.Parent = ScreenGui.Shadows

ScreenGui.Sunset.Name = "Sunset"
ScreenGui.Sunset.Parent = ScreenGui.ColorsMainGui
ScreenGui.Sunset.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Sunset.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.Sunset.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Sunset.Font = Enum.Font.JosefinSans
ScreenGui.Sunset.Text = "Sunset"
ScreenGui.Sunset.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Sunset.TextSize = 25.000
ScreenGui.Sunset.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":sunset"))
end)

ScreenGui.UICorner_207.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_207.Parent = ScreenGui.Sunset

ScreenGui.Sunrise.Name = "Sunrise"
ScreenGui.Sunrise.Parent = ScreenGui.ColorsMainGui
ScreenGui.Sunrise.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Sunrise.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.Sunrise.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Sunrise.Font = Enum.Font.JosefinSans
ScreenGui.Sunrise.Text = "Sunrise"
ScreenGui.Sunrise.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Sunrise.TextScaled = true
ScreenGui.Sunrise.TextSize = 25.000
ScreenGui.Sunrise.TextWrapped = true
ScreenGui.Sunrise.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":sunrise"))
end)

ScreenGui.UICorner_208.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_208.Parent = ScreenGui.Sunrise

ScreenGui.UICorner_209.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_209.Parent = ScreenGui.ColorsMainGui

ScreenGui.RainbowOff.Name = "RainbowOff"
ScreenGui.RainbowOff.Parent = ScreenGui.ColorsMainGui
ScreenGui.RainbowOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RainbowOff.Position = UDim2.new(0.0920000002, 0, 0.744845867, 0)
ScreenGui.RainbowOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RainbowOff.Font = Enum.Font.JosefinSans
ScreenGui.RainbowOff.Text = "Rainbow"
ScreenGui.RainbowOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RainbowOff.TextSize = 20.000
ScreenGui.RainbowOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.RainbowOff.MouseButton1Down:connect(function()
	ScreenGui.RainbowOff.Visible = false
	ScreenGui.RainbowOn.Visible = true
	game:GetService'Players':Chat((":rainbowon"))
end)

ScreenGui.UICorner_210.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_210.Parent = ScreenGui.RainbowOff

ScreenGui.TextLabel_67.Parent = ScreenGui.RainbowOff
ScreenGui.TextLabel_67.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_67.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_67.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_67.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_67.Text = ""
ScreenGui.TextLabel_67.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_67.TextSize = 14.000

ScreenGui.UICorner_211.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_211.Parent = ScreenGui.TextLabel_67

ScreenGui.RainbowOn.Name = "RainbowOn"
ScreenGui.RainbowOn.Parent = ScreenGui.ColorsMainGui
ScreenGui.RainbowOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RainbowOn.Position = UDim2.new(0.0920000002, 0, 0.744845867, 0)
ScreenGui.RainbowOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RainbowOn.Visible = false
ScreenGui.RainbowOn.Font = Enum.Font.JosefinSans
ScreenGui.RainbowOn.Text = "Rainbow"
ScreenGui.RainbowOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RainbowOn.TextSize = 20.000
ScreenGui.RainbowOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.RainbowOn.MouseButton1Down:connect(function()
	ScreenGui.RainbowOff.Visible = true
	ScreenGui.RainbowOn.Visible = false
	game:GetService'Players':Chat((":rainbowoff"))
end)

ScreenGui.UICorner_212.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_212.Parent = ScreenGui.RainbowOn

ScreenGui.TextLabel_68.Parent = ScreenGui.RainbowOn
ScreenGui.TextLabel_68.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_68.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_68.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_68.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_68.Text = ""
ScreenGui.TextLabel_68.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_68.TextSize = 14.000

ScreenGui.UICorner_213.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_213.Parent = ScreenGui.TextLabel_68

ScreenGui.UICorner_214.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_214.Parent = ScreenGui.ColorsGuiDrag

ScreenGui.AbuseNoGuiDrag.Name = "AbuseNoGuiDrag"
ScreenGui.AbuseNoGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.AbuseNoGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.AbuseNoGuiDrag.BorderSizePixel = 0
ScreenGui.AbuseNoGuiDrag.Position = UDim2.new(0.522058845, 0, 0.0122117409, 0)
ScreenGui.AbuseNoGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.AbuseNoGuiDrag.Visible = false
ScreenGui.AbuseNoGuiDrag.Active = true
ScreenGui.AbuseNoGuiDrag.Draggable = true

ScreenGui.AbuseNoMainGui.Name = "AbuseNoMainGui"
ScreenGui.AbuseNoMainGui.Parent = ScreenGui.AbuseNoGuiDrag
ScreenGui.AbuseNoMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.AbuseNoMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.AbuseNoMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_69.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.TextLabel_69.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_69.BackgroundTransparency = 1.000
ScreenGui.TextLabel_69.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_69.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_69.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_69.Text = "Abuse No Gui"
ScreenGui.TextLabel_69.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_69.TextSize = 25.000
ScreenGui.TextLabel_69.TextWrapped = true

ScreenGui.UICorner_215.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_215.Parent = ScreenGui.AbuseNoMainGui

ScreenGui.Nothing2AbuseNo.Name = "Nothing2AbuseNo"
ScreenGui.Nothing2AbuseNo.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.Nothing2AbuseNo.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing2AbuseNo.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing2AbuseNo.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing2AbuseNo.Font = Enum.Font.JosefinSans
ScreenGui.Nothing2AbuseNo.Text = "Nothing"
ScreenGui.Nothing2AbuseNo.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing2AbuseNo.TextSize = 25.000
ScreenGui.Nothing2AbuseNo.TextWrapped = true

ScreenGui.UICorner_216.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_216.Parent = ScreenGui.Nothing2AbuseNo

ScreenGui.Nothing1AbuseNo.Name = "Nothing1AbuseNo"
ScreenGui.Nothing1AbuseNo.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.Nothing1AbuseNo.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing1AbuseNo.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Nothing1AbuseNo.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing1AbuseNo.Font = Enum.Font.JosefinSans
ScreenGui.Nothing1AbuseNo.Text = "Nothing"
ScreenGui.Nothing1AbuseNo.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing1AbuseNo.TextSize = 25.000

ScreenGui.UICorner_217.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_217.Parent = ScreenGui.Nothing1AbuseNo

ScreenGui.TpAllHouse.Name = "TpAllHouse"
ScreenGui.TpAllHouse.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.TpAllHouse.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TpAllHouse.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.TpAllHouse.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TpAllHouse.Font = Enum.Font.JosefinSans
ScreenGui.TpAllHouse.Text = "Tp All House"
ScreenGui.TpAllHouse.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TpAllHouse.TextSize = 25.000
ScreenGui.TpAllHouse.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4106693, 8.22999954, 63.2581749))
	wait(0.3)
	game:GetService'Players':Chat(("tp all me"))
end)

ScreenGui.UICorner_218.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_218.Parent = ScreenGui.TpAllHouse

ScreenGui.GodAll.Name = "God All"
ScreenGui.GodAll.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.GodAll.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GodAll.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.GodAll.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GodAll.Font = Enum.Font.JosefinSans
ScreenGui.GodAll.Text = "God All"
ScreenGui.GodAll.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GodAll.TextSize = 25.000
ScreenGui.GodAll.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("god all"))
end)

ScreenGui.UICorner_219.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_219.Parent = ScreenGui.GodAll

ScreenGui.FfAll.Name = "FfAll"
ScreenGui.FfAll.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.FfAll.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.FfAll.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.FfAll.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.FfAll.Font = Enum.Font.JosefinSans
ScreenGui.FfAll.Text = "Ff all"
ScreenGui.FfAll.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.FfAll.TextSize = 25.000
ScreenGui.FfAll.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("ff all"))
end)

ScreenGui.UICorner_220.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_220.Parent = ScreenGui.FfAll

ScreenGui.AutoHealoff.Name = "AutoHealoff"
ScreenGui.AutoHealoff.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.AutoHealoff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AutoHealoff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.AutoHealoff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AutoHealoff.Font = Enum.Font.JosefinSans
ScreenGui.AutoHealoff.Text = "Auto Heal"
ScreenGui.AutoHealoff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AutoHealoff.TextSize = 20.000
ScreenGui.AutoHealoff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_221.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_221.Parent = ScreenGui.AutoHealoff

ScreenGui.TextLabel_70.Parent = ScreenGui.AutoHealoff
ScreenGui.TextLabel_70.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_70.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_70.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_70.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_70.Text = ""
ScreenGui.TextLabel_70.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_70.TextSize = 14.000

ScreenGui.UICorner_222.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_222.Parent = ScreenGui.TextLabel_70

ScreenGui.AutoHealOn.Name = "AutoHealOn"
ScreenGui.AutoHealOn.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.AutoHealOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AutoHealOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.AutoHealOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AutoHealOn.Visible = false
ScreenGui.AutoHealOn.Font = Enum.Font.JosefinSans
ScreenGui.AutoHealOn.Text = "Aut Heal"
ScreenGui.AutoHealOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AutoHealOn.TextSize = 20.000
ScreenGui.AutoHealOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_223.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_223.Parent = ScreenGui.AutoHealOn

ScreenGui.TextLabel_71.Parent = ScreenGui.AutoHealOn
ScreenGui.TextLabel_71.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_71.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_71.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_71.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_71.Text = ""
ScreenGui.TextLabel_71.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_71.TextSize = 14.000

ScreenGui.UICorner_224.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_224.Parent = ScreenGui.TextLabel_71

ScreenGui.AntiKillAllOff.Name = "AntiKillAllOff"
ScreenGui.AntiKillAllOff.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.AntiKillAllOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiKillAllOff.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.AntiKillAllOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiKillAllOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiKillAllOff.Text = "Anti Kill All"
ScreenGui.AntiKillAllOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiKillAllOff.TextSize = 20.000
ScreenGui.AntiKillAllOff.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_225.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_225.Parent = ScreenGui.AntiKillAllOff

ScreenGui.TextLabel_72.Parent = ScreenGui.AntiKillAllOff
ScreenGui.TextLabel_72.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_72.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_72.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_72.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_72.Text = ""
ScreenGui.TextLabel_72.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_72.TextSize = 14.000

ScreenGui.UICorner_226.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_226.Parent = ScreenGui.TextLabel_72

ScreenGui.AntiKillAllOn.Name = "AntiKillAllOn"
ScreenGui.AntiKillAllOn.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.AntiKillAllOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiKillAllOn.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.AntiKillAllOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiKillAllOn.Visible = false
ScreenGui.AntiKillAllOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiKillAllOn.Text = "Anti Kill All"
ScreenGui.AntiKillAllOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiKillAllOn.TextSize = 20.000
ScreenGui.AntiKillAllOn.TextXAlignment = Enum.TextXAlignment.Left

ScreenGui.UICorner_227.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_227.Parent = ScreenGui.AntiKillAllOn

ScreenGui.TextLabel_73.Parent = ScreenGui.AntiKillAllOn
ScreenGui.TextLabel_73.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_73.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_73.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_73.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_73.Text = ""
ScreenGui.TextLabel_73.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_73.TextSize = 14.000

ScreenGui.UICorner_228.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_228.Parent = ScreenGui.TextLabel_73

ScreenGui.UICorner_229.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_229.Parent = ScreenGui.AbuseNoGuiDrag
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.0677, 3.67287, -30.956))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.065, 31.7, 1.24301))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.1)
		game:GetService'Players':Chat(("unjail me"))
	end

	if command == ":paint" then
		game:GetService'Players':Chat(("gear me 000000000000000018474459"))
	end

	if command == ":btools" then
		game:GetService'Players':Chat(("gear me 000000000000000016200204"))
		game:GetService'Players':Chat(("gear me 000000000000000016200402")) 
		game:GetService'Players':Chat(("gear me 000000000000000016969792"))
		game:GetService'Players':Chat(("gear me 000000000000000073089190"))
	end

	if command == ":shaders" then
		game:GetService'Players':Chat(("colorshifttop 600 600 0"))
		for i = 0,8,.2 do
			game:GetService'Players':Chat(("time "..i))
			wait(.07)
		end
		game:GetService'Players':Chat(("music 4461953104")) 
	end
	
if string.sub(msg:lower(), 0, 14) == ".playbackspeed" then
	local newPlaybackSpeed = tonumber(string.sub(msg:lower(), 16))
	local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
	Sound.PlaybackSpeed = newPlaybackSpeed
end

	if command == ":sunrise" then
		game:GetService'Players':Chat(("music"))
		game:GetService'Players':Chat(("time 7"))
		game:GetService'Players':Chat(("colorshifttop 600 600 0"))
		for i = 0,8,.2 do
			game:GetService'Players':Chat(("time "..i))
			wait(.07)
		end
		game:GetService'Players':Chat(("music 4461953104")) 
	end


	if command == ":star" then
		for i = 1,50,1 do 
			game:GetService'Players':Chat(("bonfire me"))
		end
		for i = 1,50,1 do
			game:GetService'Players':Chat(("fire me"))
		end
		for i = 1,50,1 do 
			game:GetService'Players':Chat(("smoke me"))
		end
		for i = 1,200,1 do -- so this will repeat 50 times
			game:GetService'Players':Chat(("ff me"))
		end
		game:GetService'Players':Chat(("name me Star"))
	end


	if command == ":boombox" then
		game:GetService'Players':Chat(("gear me 0000000000000000000000000000000212641536"))
	end


	local spamming= false
	game.Players.LocalPlayer.Chatted:connect(function(msg)
		if string.sub(msg, 1, 5) == ":spam" then
			spamming = true
			spam(string.sub(msg, 7))
		elseif msg == ":stop" then
			spamming = false
		end
	end)

	function spam(text)
		while spamming == true do wait()
			game:GetService("Players"):Chat(text)
		end
	end

	if msg == ":moveobbywalls" then
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game:GetService'Players':Chat((":removeobbykill"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-57.0652, 4.65999, -18.2899))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-25.0609, 4.69274, -17.4021))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.0677, 3.67287, -30.956))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.065, 31.7, 1.24301))
		wait(0.2)
		game:GetService'Players':Chat(("punish me"))
		wait(0.1)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.2)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.2)
		game:GetService'Players':Chat(("respawn me"))
	end

	if msg == ":findpads" then
		FPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 40008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 42008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 44008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 46008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 48008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 50008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 52008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 54008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 56008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 60008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 62008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 64008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 66008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 68008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 70008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 72008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 74008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 76008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 78008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 80008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 82008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 84008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 86008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 88008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 90008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 92008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 94008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 96008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 98008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 100008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 102008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 104008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 106008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 108008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 110008.18, 63.3072))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FPos
	end

	if msg == ":moveobby" then
		local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
		local Workspace_Folder = Game_Folder.Workspace
		for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
			if v.CFrame.Y < 500 then
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -19.2493), Vector3.new(150, 0, -20))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -13.4572), Vector3.new(150, 0, -15))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -7.46203), Vector3.new(150, 0, -6))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -1.25637), Vector3.new(150, 0, 0))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 4.74275), Vector3.new(150, 0, 5))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 9.54263), Vector3.new(150, 0, 10))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 14.5432), Vector3.new(150, 0, 15))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 19.7425), Vector3.new(150, 0, 20))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 24.9433), Vector3.new(150, 0, 25))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
				wait(0.2)
				game:GetService'Players':Chat(("size me .5"))
				wait(0.2)
				game:GetService'Players':Chat((":removeobbykill"))
				wait(0.2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 29.7426), Vector3.new(150, 0, 30))
				wait(0.2)
				game:GetService'Players':Chat(("punish me"))
				wait(0.1)
				game:GetService'Players':Chat(("unpunish me"))
				wait(0.1)
				game:GetService'Players':Chat(("skydive me"))
				wait(0.1)
				game:GetService'Players':Chat(("respawn me"))
			end
		end
	end

	if msg == ":removeobbykill" then
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

	-- end 


	if command == ":coffee" then
		game:GetService'Players':Chat(("music 3960066408"))
		game:GetService'Players':Chat(("h WHO WANTS SOME COFFEE!??! ANYONE!??!"))
	end


	if command == ":crash" then
		game:GetService'Players':Chat(("gear me 94794847"))
		wait(3)
		game:GetService'Players':Chat(("h THIS SERVER IS BEING SHUT DOWN BECAUSE IT'S UNCONTROLLABLE!!!"))
		wait(2)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
	end


	if command == ":afk" then
		game:GetService'Players':Chat(("name me ".. game.Players.LocalPlayer.Name .. " is afk <3"))
		game:GetService'Players':Chat(("h ".. game.Players.LocalPlayer.Name .. " is afk. They will be back soon. <3"))
	end


	if command == ":back" then
		game:GetService'Players':Chat(("unname me"))
		game:GetService'Players':Chat(("h ".. game.Players.LocalPlayer.Name .. " is back! <3"))
	end


	if command == ":cube" then
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 10"))
	end


	if command == ":crash" then
		game:GetService'Players':Chat(("gear me 94794847"))
		wait(3)
		game:GetService'Players':Chat(("h THIS SERVER IS BEING SHUT DOWN BECAUSE IT'S UNCONTROLLABLE!!!"))
		wait(2)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
	end


	if command == ":afk" then
		game:GetService'Players':Chat(("name me ".. game.Players.LocalPlayer.Name .. " is afk <3"))
		game:GetService'Players':Chat(("h ".. game.Players.LocalPlayer.Name .. " is afk. They will be back soon. <3"))
	end


	if command == ":back" then
		game:GetService'Players':Chat(("unname me"))
		game:GetService'Players':Chat(("h ".. game.Players.LocalPlayer.Name .. " is back! <3"))
	end


	if command == ":cube" then
		--      S E I    S = start number, E = End number = I equals the increments it increases in
		for i = 1,10,1 do -- so this will repeat 10 times
			game:GetService'Players':Chat(("size me 0.3"))
			game:GetService'Players':Chat(("size me 10"))-- You can copy and paste this and add more admin commands
			wait()
		end
	end


	if command == "*pew*" then
		game:GetService'Players':Chat(("heal all 100"))
		game:GetService'Players':Chat(("damage others 99"))
		game:GetService'Players':Chat(("h You have been shot! :O"))
	end


	if command == "*MEGApew*" then
		game:GetService'Players':Chat(("heal all 100"))
		game:GetService'Players':Chat(("damage others 100000000000000000000000000000"))
		game:GetService'Players':Chat(("h You have been shot! :O"))
	end


	if command == ":nuke" then
		game:GetService'Players':Chat(("music 2684808342"))
		wait(3)
		game:GetService'Players':Chat(("h There is a bomb being dropped right now!"))
		wait(3)
		game:GetService'Players':Chat(("fogend 0"))
		game:GetService'Players':Chat(("music 1502307055"))
		wait(5)
		game:GetService'Players':Chat(("blind all"))
		wait(2)
		game:GetService'Players':Chat(("unblind all"))
		wait(2)
		game:GetService'Players':Chat(("blind all"))
		wait(2)
		game:GetService'Players':Chat(("unblind all"))
		wait(2)
		game:GetService'Players':Chat(("blind all"))
		wait(2)
		game:GetService'Players':Chat(("unblind all"))
		wait(2)
		game:GetService'Players':Chat(("kill all"))
		wait (1)
		game:GetService'Players':Chat(("fix"))
		game:GetService'Players':Chat(("music"))

	end


	if command == ":rainbow trail" then
		game:GetService'Players':Chat(("trail me rainbow"))
		game:GetService'Players':Chat(("speed me 100"))
		game:GetService'Players':Chat(("sparkles me"))
	end


	if command == ":christmas" then
		game:GetService'Players':Chat(("h It's christmas!"))
		game:GetService'Players':Chat(("music 2546949814"))
		game:GetService'Players':Chat(("time 100"))
		game:GetService'Players':Chat(("fogend 100"))
		game:GetService'Players':Chat(("fogcolor 255 255 255"))
		game:GetService'Players':Chat(("ambient -100 -400 -600"))
	end


	if command == ":clear" then
		game:GetService'Players':Chat(("ungear ".. game.Players.LocalPlayer.Name))
	end


	if command == ":play_crybaby" then
		game:GetService'Players':Chat(("music 4553439313"))
		game:GetService'Players':Chat(("h Playing: Crybaby - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_cake" then
		game:GetService'Players':Chat(("music 472231729"))
		game:GetService'Players':Chat(("h Playing: Cake - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_myway" then
		game:GetService'Players':Chat(("music 1948564182"))
		game:GetService'Players':Chat(("h Playing: My Way - Ava Max"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_santatellme" then
		game:GetService'Players':Chat(("music 2546949814"))
		game:GetService'Players':Chat(("h Playing: Santa Tell Me - Ariana Grande"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_takeahint" then
		game:GetService'Players':Chat(("music 2341549701"))
		game:GetService'Players':Chat(("h Playing: Take A Hint - Victorious"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_who" then
		game:GetService'Players':Chat(("music 4461953104"))
		game:GetService'Players':Chat(("h Playing: Who? - Ft. Shiloh Dynasty"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_shrimps" then
		game:GetService'Players':Chat(("music 4600678488"))-- You can copy and paste this and add more admin commands
		game:GetService'Players':Chat(("h Playing: Shrimps But It's Flamingo Screaming..."))
	end    


	if command == ":secretcrash" then
		game:GetService'Players':Chat(("gear me 94794847"))
		wait(3)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
		wait(0.5)
		game:GetService'Players':Chat(("size me 0.3"))
	end

	if command == (":remove") then
		game:GetService'Players':Chat(("skydive me"))
		wait(0.75)
		game:GetService'Players':Chat(("reset me"))-- You can copy and paste this and add more admin commands
		wait(0.75)
		game:GetService'Players':Chat(("unskydive me"))
		wait(0.75)
	end

	if command == (":no_logs") then
		for i = 1,100 do
			game:GetService'Players':Chat(("ff No Logs For You"))
		end
		wait(0.5)
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
		game:GetService'Players':Chat(("ff ScaleneSoap9803 was here"))
	end


	if command == (":rmwall") then
		game:GetService'Players':Chat(("punish me"))
		wait(0.75)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.75)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.75)
		game:GetService'Players':Chat(("reset me"))-- You can copy and paste this and add more admin commands
		wait(0.75)
		game:GetService'Players':Chat(("unskydive me"))
		wait(0.75)
	end


	if command == (":rmfloor") then
		game:GetService'Players':Chat(("stun me"))
		wait(0.75)
		game:GetService'Players':Chat(("punish me"))
		wait(0.75)
		game:GetService'Players':Chat(("unpunish me"))
		wait(0.75)
		game:GetService'Players':Chat(("skydive me"))
		wait(0.75)
		game:GetService'Players':Chat(("reset me"))-- You can copy and paste this and add more admin commands
		wait(0.75)
		game:GetService'Players':Chat(("unskydive me"))
		wait(0.75)
	end

	if command == ":play_detention" then
		game:GetService'Players':Chat(("music 3908112818"))
		game:GetService'Players':Chat(("h Playing: Detention - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_nurses_office" then
		game:GetService'Players':Chat(("music 5896678223"))
		game:GetService'Players':Chat(("h Playing: Nurse's Office - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_the_principal" then
		game:GetService'Players':Chat(("music 5144784826"))
		game:GetService'Players':Chat(("h Playing: The Principal - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_highschool_sweethearts" then
		game:GetService'Players':Chat(("music 4342043245"))
		game:GetService'Players':Chat(("h Playing: Highschool Sweethearts - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if command == ":play_wheels" then
		game:GetService'Players':Chat(("music 3898358473"))
		game:GetService'Players':Chat(("h Playing: Wheels on The Bus - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


	if string.sub(msg, 1, 17) == ":melanie_martinez" then
		local plr = string.sub(msg, 19)
		game:GetService'Players':Chat(("unhat "..plr))
		game:GetService'Players':Chat(("unpants "..plr))
		game:GetService'Players':Chat(("unshirt "..plr))
		game:GetService'Players':Chat(("hat "..plr.." 4124350220"))
		game:GetService'Players':Chat(("pants "..plr.." 5608414543"))
		game:GetService'Players':Chat(("face "..plr.." 209995366"))
		game:GetService'Players':Chat(("name "..plr.." Melanie Martinez"))
		game:GetService'Players':Chat(("music 3908112818"))
		game:GetService'Players':Chat(("h Playing: Detention - Melanie Martinez"))-- You can copy and paste this and add more admin commands
	end


end)

local ScreenGui = {
	ScreenGui = Instance.new("ScreenGui"),
	BackroundDrag = Instance.new("Frame"),
	OnOffGui = Instance.new("Frame"),
	TextLabel = Instance.new("TextLabel"),
	MoveGuiOn = Instance.new("TextButton"),
	UICorner = Instance.new("UICorner"),
	TextLabel_2 = Instance.new("TextLabel"),
	UICorner_2 = Instance.new("UICorner"),
	MoveGuiOff = Instance.new("TextButton"),
	UICorner_3 = Instance.new("UICorner"),
	TextLabel_3 = Instance.new("TextLabel"),
	UICorner_4 = Instance.new("UICorner"),
	MusicGuiOff = Instance.new("TextButton"),
	UICorner_5 = Instance.new("UICorner"),
	TextLabel_4 = Instance.new("TextLabel"),
	UICorner_6 = Instance.new("UICorner"),
	MusicGuiOn = Instance.new("TextButton"),
	UICorner_7 = Instance.new("UICorner"),
	TextLabel_5 = Instance.new("TextLabel"),
	UICorner_8 = Instance.new("UICorner"),
	AbusiveGuiOff = Instance.new("TextButton"),
	TextLabel_6 = Instance.new("TextLabel"),
	UICorner_9 = Instance.new("UICorner"),
	UICorner_10 = Instance.new("UICorner"),
	AbusiveGuiOn = Instance.new("TextButton"),
	UICorner_11 = Instance.new("UICorner"),
	TextLabel_7 = Instance.new("TextLabel"),
	UICorner_12 = Instance.new("UICorner"),
	antiGuiOn = Instance.new("TextButton"),
	UICorner_13 = Instance.new("UICorner"),
	TextLabel_8 = Instance.new("TextLabel"),
	UICorner_14 = Instance.new("UICorner"),
	antiGuiOff = Instance.new("TextButton"),
	UICorner_15 = Instance.new("UICorner"),
	TextLabel_9 = Instance.new("TextLabel"),
	UICorner_16 = Instance.new("UICorner"),
	GearGuiOn = Instance.new("TextButton"),
	UICorner_17 = Instance.new("UICorner"),
	TextLabel_10 = Instance.new("TextLabel"),
	UICorner_18 = Instance.new("UICorner"),
	GearGuiOff = Instance.new("TextButton"),
	UICorner_19 = Instance.new("UICorner"),
	TextLabel_11 = Instance.new("TextLabel"),
	UICorner_20 = Instance.new("UICorner"),
	QuickGuiOn = Instance.new("TextButton"),
	UICorner_21 = Instance.new("UICorner"),
	TextLabel_12 = Instance.new("TextLabel"),
	UICorner_22 = Instance.new("UICorner"),
	QuickGuiOff = Instance.new("TextButton"),
	UICorner_23 = Instance.new("UICorner"),
	TextLabel_13 = Instance.new("TextLabel"),
	UICorner_24 = Instance.new("UICorner"),
	FunnyGuiOn = Instance.new("TextButton"),
	UICorner_25 = Instance.new("UICorner"),
	TextLabel_14 = Instance.new("TextLabel"),
	UICorner_26 = Instance.new("UICorner"),
	FunnyuiOff = Instance.new("TextButton"),
	UICorner_27 = Instance.new("UICorner"),
	TextLabel_15 = Instance.new("TextLabel"),
	UICorner_28 = Instance.new("UICorner"),
	UICorner_29 = Instance.new("UICorner"),
	gotopage2main = Instance.new("TextButton"),
	UICorner_30 = Instance.new("UICorner"),
	gotopage1main = Instance.new("TextButton"),
	UICorner_31 = Instance.new("UICorner"),
	OnOffGui2 = Instance.new("Frame"),
	TextLabel_16 = Instance.new("TextLabel"),
	PaintGuiOn = Instance.new("TextButton"),
	UICorner_32 = Instance.new("UICorner"),
	TextLabel_17 = Instance.new("TextLabel"),
	UICorner_33 = Instance.new("UICorner"),
	PaintGuiOff = Instance.new("TextButton"),
	UICorner_34 = Instance.new("UICorner"),
	TextLabel_18 = Instance.new("TextLabel"),
	UICorner_35 = Instance.new("UICorner"),
	TPGuiOff = Instance.new("TextButton"),
	UICorner_36 = Instance.new("UICorner"),
	TextLabel_19 = Instance.new("TextLabel"),
	UICorner_37 = Instance.new("UICorner"),
	TpGuiOn = Instance.new("TextButton"),
	UICorner_38 = Instance.new("UICorner"),
	TextLabel_20 = Instance.new("TextLabel"),
	UICorner_39 = Instance.new("UICorner"),
	ColorsGuiOff = Instance.new("TextButton"),
	TextLabel_21 = Instance.new("TextLabel"),
	UICorner_40 = Instance.new("UICorner"),
	UICorner_41 = Instance.new("UICorner"),
	ColorsGuiOn = Instance.new("TextButton"),
	UICorner_42 = Instance.new("UICorner"),
	TextLabel_22 = Instance.new("TextLabel"),
	UICorner_43 = Instance.new("UICorner"),
	noabuseGuiOn = Instance.new("TextButton"),
	UICorner_44 = Instance.new("UICorner"),
	TextLabel_23 = Instance.new("TextLabel"),
	UICorner_45 = Instance.new("UICorner"),
	noabuseGuiOff = Instance.new("TextButton"),
	UICorner_46 = Instance.new("UICorner"),
	TextLabel_24 = Instance.new("TextLabel"),
	UICorner_47 = Instance.new("UICorner"),
	helpfullGuiOn = Instance.new("TextButton"),
	UICorner_48 = Instance.new("UICorner"),
	TextLabel_25 = Instance.new("TextLabel"),
	UICorner_49 = Instance.new("UICorner"),
	HelpfullGuiOff = Instance.new("TextButton"),
	UICorner_50 = Instance.new("UICorner"),
	TextLabel_26 = Instance.new("TextLabel"),
	UICorner_51 = Instance.new("UICorner"),
	CreditsGuiOn = Instance.new("TextButton"),
	UICorner_52 = Instance.new("UICorner"),
	TextLabel_27 = Instance.new("TextLabel"),
	UICorner_53 = Instance.new("UICorner"),
	CreditsGuiOff = Instance.new("TextButton"),
	UICorner_54 = Instance.new("UICorner"),
	TextLabel_28 = Instance.new("TextLabel"),
	UICorner_55 = Instance.new("UICorner"),
	PadGuiOn = Instance.new("TextButton"),
	UICorner_56 = Instance.new("UICorner"),
	TextLabel_29 = Instance.new("TextLabel"),
	UICorner_57 = Instance.new("UICorner"),
	PadGuiOff = Instance.new("TextButton"),
	UICorner_58 = Instance.new("UICorner"),
	TextLabel_30 = Instance.new("TextLabel"),
	UICorner_59 = Instance.new("UICorner"),
	UICorner_60 = Instance.new("UICorner"),
	UICorner_61 = Instance.new("UICorner"),
	FunnyGuiDrag = Instance.new("Frame"),
	FunnyMainGui = Instance.new("Frame"),
	TextLabel_31 = Instance.new("TextLabel"),
	UICorner_62 = Instance.new("UICorner"),
	Nuke = Instance.new("TextButton"),
	UICorner_63 = Instance.new("UICorner"),
	Nothing2Funny = Instance.new("TextBox"),
	UICorner_64 = Instance.new("UICorner"),
	Nothing1funny = Instance.new("TextButton"),
	UICorner_65 = Instance.new("UICorner"),
	Melanie = Instance.new("TextButton"),
	UICorner_66 = Instance.new("UICorner"),
	MEGApew = Instance.new("TextButton"),
	UICorner_67 = Instance.new("UICorner"),
	pew = Instance.new("TextButton"),
	UICorner_68 = Instance.new("UICorner"),
	Cube = Instance.new("TextButton"),
	UICorner_69 = Instance.new("UICorner"),
	UICorner_70 = Instance.new("UICorner"),
	MoveGuiDrag = Instance.new("Frame"),
	MoveMainGui = Instance.new("Frame"),
	TextLabel_32 = Instance.new("TextLabel"),
	UICorner_71 = Instance.new("UICorner"),
	MovePads = Instance.new("TextButton"),
	UICorner_72 = Instance.new("UICorner"),
	RemoveRegen = Instance.new("TextButton"),
	UICorner_73 = Instance.new("UICorner"),
	MoveDividers = Instance.new("TextButton"),
	UICorner_74 = Instance.new("UICorner"),
	MoveHouse = Instance.new("TextButton"),
	UICorner_75 = Instance.new("UICorner"),
	MoveObby = Instance.new("TextButton"),
	UICorner_76 = Instance.new("UICorner"),
	Moveobbywalls = Instance.new("TextButton"),
	UICorner_77 = Instance.new("UICorner"),
	MoveRegenpad = Instance.new("TextButton"),
	UICorner_78 = Instance.new("UICorner"),
	UICorner_79 = Instance.new("UICorner"),
	MusicGuiDrag = Instance.new("Frame"),
	MusicMainpage1Gui = Instance.new("Frame"),
	TextLabel_33 = Instance.new("TextLabel"),
	CryBaby = Instance.new("TextButton"),
	UICorner_80 = Instance.new("UICorner"),
	Shrimps = Instance.new("TextButton"),
	UICorner_81 = Instance.new("UICorner"),
	Who = Instance.new("TextButton"),
	UICorner_82 = Instance.new("UICorner"),
	TakeAHint = Instance.new("TextButton"),
	UICorner_83 = Instance.new("UICorner"),
	SantaTellMe = Instance.new("TextButton"),
	UICorner_84 = Instance.new("UICorner"),
	MyWay = Instance.new("TextButton"),
	UICorner_85 = Instance.new("UICorner"),
	Cake = Instance.new("TextButton"),
	UICorner_86 = Instance.new("UICorner"),
	UICorner_87 = Instance.new("UICorner"),
	MusicMainpage2Gui = Instance.new("Frame"),
	TextLabel_34 = Instance.new("TextLabel"),
	Detention = Instance.new("TextButton"),
	UICorner_88 = Instance.new("UICorner"),
	Someone = Instance.new("TextButton"),
	UICorner_89 = Instance.new("UICorner"),
	DeathBed = Instance.new("TextButton"),
	UICorner_90 = Instance.new("UICorner"),
	Wheels = Instance.new("TextButton"),
	UICorner_91 = Instance.new("UICorner"),
	HighSchoolSh = Instance.new("TextButton"),
	UICorner_92 = Instance.new("UICorner"),
	ThePrincipal = Instance.new("TextButton"),
	UICorner_93 = Instance.new("UICorner"),
	NursesOffice = Instance.new("TextButton"),
	UICorner_94 = Instance.new("UICorner"),
	UICorner_95 = Instance.new("UICorner"),
	gotopage1Music = Instance.new("TextButton"),
	UICorner_96 = Instance.new("UICorner"),
	gotopage2Music = Instance.new("TextButton"),
	UICorner_97 = Instance.new("UICorner"),
	UICorner_98 = Instance.new("UICorner"),
	AbusiveGuiDrag = Instance.new("Frame"),
	AbusiveMainGui = Instance.new("Frame"),
	TextLabel_35 = Instance.new("TextLabel"),
	UICorner_99 = Instance.new("UICorner"),
	Nothing2Abusive = Instance.new("TextButton"),
	UICorner_100 = Instance.new("UICorner"),
	Nothing1Abusive = Instance.new("TextButton"),
	UICorner_101 = Instance.new("UICorner"),
	trapSpawn = Instance.new("TextButton"),
	UICorner_102 = Instance.new("UICorner"),
	Crash = Instance.new("TextButton"),
	UICorner_103 = Instance.new("UICorner"),
	CrashVampire = Instance.new("TextButton"),
	UICorner_104 = Instance.new("UICorner"),
	SilentCrash = Instance.new("TextButton"),
	UICorner_105 = Instance.new("UICorner"),
	REGuiOn = Instance.new("TextButton"),
	UICorner_106 = Instance.new("UICorner"),
	TextLabel_36 = Instance.new("TextLabel"),
	UICorner_107 = Instance.new("UICorner"),
	REGuiOff = Instance.new("TextButton"),
	UICorner_108 = Instance.new("UICorner"),
	TextLabel_37 = Instance.new("TextLabel"),
	UICorner_109 = Instance.new("UICorner"),
	UICorner_110 = Instance.new("UICorner"),
	QuickGuiDrag = Instance.new("Frame"),
	QuickMainGui = Instance.new("Frame"),
	TextLabel_38 = Instance.new("TextLabel"),
	UICorner_111 = Instance.new("UICorner"),
	Fly = Instance.new("TextButton"),
	UICorner_112 = Instance.new("UICorner"),
	AttachWall = Instance.new("TextButton"),
	UICorner_113 = Instance.new("UICorner"),
	AttachFloor = Instance.new("TextButton"),
	UICorner_114 = Instance.new("UICorner"),
	Unchar = Instance.new("TextButton"),
	UICorner_115 = Instance.new("UICorner"),
	Respawn = Instance.new("TextButton"),
	UICorner_116 = Instance.new("UICorner"),
	Reset = Instance.new("TextButton"),
	UICorner_117 = Instance.new("UICorner"),
	UnFly = Instance.new("TextButton"),
	UICorner_118 = Instance.new("UICorner"),
	UICorner_119 = Instance.new("UICorner"),
	GearGuiDrag = Instance.new("Frame"),
	GearMainGui = Instance.new("Frame"),
	TextLabel_39 = Instance.new("TextLabel"),
	UICorner_120 = Instance.new("UICorner"),
	CarGear = Instance.new("TextButton"),
	UICorner_121 = Instance.new("UICorner"),
	JailTrap = Instance.new("TextButton"),
	UICorner_122 = Instance.new("UICorner"),
	PaintBucket = Instance.new("TextButton"),
	UICorner_123 = Instance.new("UICorner"),
	BoomBox = Instance.new("TextButton"),
	UICorner_124 = Instance.new("UICorner"),
	LaserGun = Instance.new("TextButton"),
	UICorner_125 = Instance.new("UICorner"),
	LaserPens = Instance.new("TextButton"),
	UICorner_126 = Instance.new("UICorner"),
	IvoryGear = Instance.new("TextButton"),
	UICorner_127 = Instance.new("UICorner"),
	UICorner_128 = Instance.new("UICorner"),
	PadGuiDrag = Instance.new("Frame"),
	PadMainGui = Instance.new("Frame"),
	TextLabel_40 = Instance.new("TextLabel"),
	FindPads = Instance.new("TextButton"),
	UICorner_129 = Instance.new("UICorner"),
	Nothing2Pad = Instance.new("TextButton"),
	UICorner_130 = Instance.new("UICorner"),
	RegenPads = Instance.new("TextButton"),
	UICorner_131 = Instance.new("UICorner"),
	GetAllPad = Instance.new("TextButton"),
	UICorner_132 = Instance.new("UICorner"),
	GotoPad = Instance.new("TextButton"),
	UICorner_133 = Instance.new("UICorner"),
	UICorner_134 = Instance.new("UICorner"),
	PermOff = Instance.new("TextButton"),
	UICorner_135 = Instance.new("UICorner"),
	TextLabel_41 = Instance.new("TextLabel"),
	UICorner_136 = Instance.new("UICorner"),
	PermOn = Instance.new("TextButton"),
	UICorner_137 = Instance.new("UICorner"),
	TextLabel_42 = Instance.new("TextLabel"),
	UICorner_138 = Instance.new("UICorner"),
	PermAllPadsOff = Instance.new("TextButton"),
	UICorner_139 = Instance.new("UICorner"),
	TextLabel_43 = Instance.new("TextLabel"),
	UICorner_140 = Instance.new("UICorner"),
	PermAllPadsOn = Instance.new("TextButton"),
	UICorner_141 = Instance.new("UICorner"),
	TextLabel_44 = Instance.new("TextLabel"),
	UICorner_142 = Instance.new("UICorner"),
	UICorner_143 = Instance.new("UICorner"),
	PaintGuiDrag = Instance.new("Frame"),
	PaintMainGui = Instance.new("Frame"),
	TextLabel_45 = Instance.new("TextLabel"),
	UICorner_144 = Instance.new("UICorner"),
	NightsFavPaint = Instance.new("TextButton"),
	UICorner_145 = Instance.new("UICorner"),
	Notthing1Paint = Instance.new("TextButton"),
	UICorner_146 = Instance.new("UICorner"),
	AllWgitePaint = Instance.new("TextButton"),
	UICorner_147 = Instance.new("UICorner"),
	AllBlackPaint = Instance.new("TextButton"),
	UICorner_148 = Instance.new("UICorner"),
	AllOriginalPaint = Instance.new("TextButton"),
	UICorner_149 = Instance.new("UICorner"),
	AllRandomPaint = Instance.new("TextButton"),
	UICorner_150 = Instance.new("UICorner"),
	ScalesFavPaint = Instance.new("TextButton"),
	UICorner_151 = Instance.new("UICorner"),
	UICorner_152 = Instance.new("UICorner"),
	HelpfullGuiDrag = Instance.new("Frame"),
	HelpfullMainGui = Instance.new("Frame"),
	TextLabel_46 = Instance.new("TextLabel"),
	UICorner_153 = Instance.new("UICorner"),
	NoObbyKill = Instance.new("TextButton"),
	UICorner_154 = Instance.new("UICorner"),
	RemovePhantomBp = Instance.new("TextButton"),
	UICorner_155 = Instance.new("UICorner"),
	PhantomBp = Instance.new("TextButton"),
	UICorner_156 = Instance.new("UICorner"),
	Btools = Instance.new("TextButton"),
	UICorner_157 = Instance.new("UICorner"),
	Rejoin = Instance.new("TextButton"),
	UICorner_158 = Instance.new("UICorner"),
	Invert = Instance.new("TextButton"),
	UICorner_159 = Instance.new("UICorner"),
	NoAdminUnpunish = Instance.new("TextButton"),
	UICorner_160 = Instance.new("UICorner"),
	UICorner_161 = Instance.new("UICorner"),
	AntiGuiDrag = Instance.new("Frame"),
	AntiMainGui = Instance.new("Frame"),
	TextLabel_47 = Instance.new("TextLabel"),
	UICorner_162 = Instance.new("UICorner"),
	Antikilloff = Instance.new("TextButton"),
	TextLabel_48 = Instance.new("TextLabel"),
	UICorner_163 = Instance.new("UICorner"),
	UICorner_164 = Instance.new("UICorner"),
	AntiKillOn = Instance.new("TextButton"),
	UICorner_165 = Instance.new("UICorner"),
	TextLabel_49 = Instance.new("TextLabel"),
	UICorner_166 = Instance.new("UICorner"),
	AntiPunishOn = Instance.new("TextButton"),
	UICorner_167 = Instance.new("UICorner"),
	TextLabel_50 = Instance.new("TextLabel"),
	UICorner_168 = Instance.new("UICorner"),
	AntiPunishoff = Instance.new("TextButton"),
	UICorner_169 = Instance.new("UICorner"),
	TextLabel_51 = Instance.new("TextLabel"),
	UICorner_170 = Instance.new("UICorner"),
	AntiCrashOff = Instance.new("TextButton"),
	UICorner_171 = Instance.new("UICorner"),
	TextLabel_52 = Instance.new("TextLabel"),
	UICorner_172 = Instance.new("UICorner"),
	antiCrashOn = Instance.new("TextButton"),
	UICorner_173 = Instance.new("UICorner"),
	TextLabel_53 = Instance.new("TextLabel"),
	UICorner_174 = Instance.new("UICorner"),
	AntiSkydiveOff = Instance.new("TextButton"),
	TextLabel_54 = Instance.new("TextLabel"),
	UICorner_175 = Instance.new("UICorner"),
	UICorner_176 = Instance.new("UICorner"),
	AntiSkydiveOn = Instance.new("TextButton"),
	UICorner_177 = Instance.new("UICorner"),
	TextLabel_55 = Instance.new("TextLabel"),
	UICorner_178 = Instance.new("UICorner"),
	AntiMusicOff = Instance.new("TextButton"),
	UICorner_179 = Instance.new("UICorner"),
	TextLabel_56 = Instance.new("TextLabel"),
	UICorner_180 = Instance.new("UICorner"),
	AntiMusicOn = Instance.new("TextButton"),
	UICorner_181 = Instance.new("UICorner"),
	TextLabel_57 = Instance.new("TextLabel"),
	UICorner_182 = Instance.new("UICorner"),
	AntiMsgCrashOff = Instance.new("TextButton"),
	UICorner_183 = Instance.new("UICorner"),
	TextLabel_58 = Instance.new("TextLabel"),
	UICorner_184 = Instance.new("UICorner"),
	AntiMsgCrashOn = Instance.new("TextButton"),
	UICorner_185 = Instance.new("UICorner"),
	TextLabel_59 = Instance.new("TextLabel"),
	UICorner_186 = Instance.new("UICorner"),
	antiBlindOff = Instance.new("TextButton"),
	UICorner_187 = Instance.new("UICorner"),
	TextLabel_60 = Instance.new("TextLabel"),
	UICorner_188 = Instance.new("UICorner"),
	antiBlindOn = Instance.new("TextButton"),
	UICorner_189 = Instance.new("UICorner"),
	TextLabel_61 = Instance.new("TextLabel"),
	UICorner_190 = Instance.new("UICorner"),
	UICorner_191 = Instance.new("UICorner"),
	CreditsGuiDrag = Instance.new("Frame"),
	CreditsMainGui = Instance.new("Frame"),
	TextLabel_62 = Instance.new("TextLabel"),
	HouseTP = Instance.new("TextButton"),
	UICorner_192 = Instance.new("UICorner"),
	Spawn3Tp = Instance.new("TextButton"),
	UICorner_193 = Instance.new("UICorner"),
	Spawn2Tp = Instance.new("TextButton"),
	UICorner_194 = Instance.new("UICorner"),
	Spawn1Tp = Instance.new("TextButton"),
	UICorner_195 = Instance.new("UICorner"),
	TopHouseTp = Instance.new("TextButton"),
	UICorner_196 = Instance.new("UICorner"),
	EndObbyTp = Instance.new("TextButton"),
	UICorner_197 = Instance.new("UICorner"),
	PadsTp = Instance.new("TextButton"),
	UICorner_198 = Instance.new("UICorner"),
	UICorner_199 = Instance.new("UICorner"),
	UICorner_200 = Instance.new("UICorner"),
	TpGuiDrag = Instance.new("Frame"),
	TpMainGui = Instance.new("Frame"),
	TextLabel_63 = Instance.new("TextLabel"),
	UICorner_201 = Instance.new("UICorner"),
	TextLabel_64 = Instance.new("TextLabel"),
	TextLabel_65 = Instance.new("TextLabel"),
	UICorner_202 = Instance.new("UICorner"),
	ColorsGuiDrag = Instance.new("Frame"),
	ColorsMainGui = Instance.new("Frame"),
	TextLabel_66 = Instance.new("TextLabel"),
	Heaven = Instance.new("TextButton"),
	UICorner_203 = Instance.new("UICorner"),
	Nothing1Color = Instance.new("TextButton"),
	UICorner_204 = Instance.new("UICorner"),
	Christmas = Instance.new("TextButton"),
	UICorner_205 = Instance.new("UICorner"),
	Shadows = Instance.new("TextButton"),
	UICorner_206 = Instance.new("UICorner"),
	Sunset = Instance.new("TextButton"),
	UICorner_207 = Instance.new("UICorner"),
	Sunrise = Instance.new("TextButton"),
	UICorner_208 = Instance.new("UICorner"),
	UICorner_209 = Instance.new("UICorner"),
	RainbowOff = Instance.new("TextButton"),
	UICorner_210 = Instance.new("UICorner"),
	TextLabel_67 = Instance.new("TextLabel"),
	UICorner_211 = Instance.new("UICorner"),
	RainbowOn = Instance.new("TextButton"),
	UICorner_212 = Instance.new("UICorner"),
	TextLabel_68 = Instance.new("TextLabel"),
	UICorner_213 = Instance.new("UICorner"),
	UICorner_214 = Instance.new("UICorner"),
	AbuseNoGuiDrag = Instance.new("Frame"),
	AbuseNoMainGui = Instance.new("Frame"),
	TextLabel_69 = Instance.new("TextLabel"),
	UICorner_215 = Instance.new("UICorner"),
	Nothing2AbuseNo = Instance.new("TextButton"),
	UICorner_216 = Instance.new("UICorner"),
	Nothing1AbuseNo = Instance.new("TextButton"),
	UICorner_217 = Instance.new("UICorner"),
	TpAllHouse = Instance.new("TextButton"),
	UICorner_218 = Instance.new("UICorner"),
	GodAll = Instance.new("TextButton"),
	UICorner_219 = Instance.new("UICorner"),
	FfAll = Instance.new("TextButton"),
	UICorner_220 = Instance.new("UICorner"),
	AutoHealoff = Instance.new("TextButton"),
	UICorner_221 = Instance.new("UICorner"),
	TextLabel_70 = Instance.new("TextLabel"),
	UICorner_222 = Instance.new("UICorner"),
	AutoHealOn = Instance.new("TextButton"),
	UICorner_223 = Instance.new("UICorner"),
	TextLabel_71 = Instance.new("TextLabel"),
	UICorner_224 = Instance.new("UICorner"),
	AntiKillAllOff = Instance.new("TextButton"),
	UICorner_225 = Instance.new("UICorner"),
	TextLabel_72 = Instance.new("TextLabel"),
	UICorner_226 = Instance.new("UICorner"),
	AntiKillAllOn = Instance.new("TextButton"),
	UICorner_227 = Instance.new("UICorner"),
	TextLabel_73 = Instance.new("TextLabel"),
	UICorner_228 = Instance.new("UICorner"),
	UICorner_229 = Instance.new("UICorner"),
}

--Properties:

ScreenGui.ScreenGui.Parent = game.CoreGui

ScreenGui.BackroundDrag.Name = "BackroundDrag"
ScreenGui.BackroundDrag.Parent = ScreenGui.ScreenGui
ScreenGui.BackroundDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.BackroundDrag.BorderSizePixel = 0
ScreenGui.BackroundDrag.Position = UDim2.new(0, 0, 0.0122117642, 0)
ScreenGui.BackroundDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.BackroundDrag.Active = true
ScreenGui.BackroundDrag.Draggable = true

ScreenGui.OnOffGui.Name = "On/OffGui"
ScreenGui.OnOffGui.Parent = ScreenGui.BackroundDrag
ScreenGui.OnOffGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.OnOffGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.OnOffGui.Size = UDim2.new(0, 184, 0, 369)
ScreenGui.OnOffGui.Active = true

ScreenGui.TextLabel.Parent = ScreenGui.OnOffGui
ScreenGui.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel.BackgroundTransparency = 1.000
ScreenGui.TextLabel.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel.Text = "Hello ".. game.Players.LocalPlayer.Name .. "!"
ScreenGui.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel.TextScaled = true
ScreenGui.TextLabel.TextSize = 14.000
ScreenGui.TextLabel.TextWrapped = true

ScreenGui.MoveGuiOn.Name = "MoveGuiOn"
ScreenGui.MoveGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.MoveGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveGuiOn.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.MoveGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveGuiOn.Visible = false
ScreenGui.MoveGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.MoveGuiOn.Text = "Move Gui"
ScreenGui.MoveGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveGuiOn.TextSize = 20.000
ScreenGui.MoveGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.MoveGuiOn.MouseButton1Down:connect(function()
	ScreenGui.MoveGuiOn.Visible = false
	ScreenGui.MoveGuiOff.Visible = true
	ScreenGui.MoveGuiDrag.Visible = false
end)

ScreenGui.UICorner.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner.Parent = ScreenGui.MoveGuiOn

ScreenGui.TextLabel_2.Parent = ScreenGui.MoveGuiOn
ScreenGui.TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_2.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_2.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_2.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_2.Text = ""
ScreenGui.TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_2.TextSize = 14.000

ScreenGui.UICorner_2.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_2.Parent = ScreenGui.TextLabel_2

ScreenGui.MoveGuiOff.Name = "MoveGuiOff"
ScreenGui.MoveGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.MoveGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveGuiOff.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.MoveGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.MoveGuiOff.Text = "Move Gui"
ScreenGui.MoveGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveGuiOff.TextSize = 20.000
ScreenGui.MoveGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.MoveGuiOff.MouseButton1Down:connect(function()
	ScreenGui.MoveGuiOn.Visible = true
	ScreenGui.MoveGuiOff.Visible = false
	ScreenGui.MoveGuiDrag.Visible = true
end)

ScreenGui.UICorner_3.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_3.Parent = ScreenGui.MoveGuiOff

ScreenGui.TextLabel_3.Parent = ScreenGui.MoveGuiOff
ScreenGui.TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_3.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_3.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_3.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_3.Text = ""
ScreenGui.TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_3.TextSize = 14.000

ScreenGui.UICorner_4.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_4.Parent = ScreenGui.TextLabel_3

ScreenGui.MusicGuiOff.Name = "MusicGuiOff"
ScreenGui.MusicGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.MusicGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MusicGuiOff.Position = UDim2.new(0.0920000002, 0, 0.366976023, 0)
ScreenGui.MusicGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MusicGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.MusicGuiOff.Text = "Music Gui"
ScreenGui.MusicGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MusicGuiOff.TextSize = 20.000
ScreenGui.MusicGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.MusicGuiOff.MouseButton1Down:connect(function()
	ScreenGui.MusicGuiOff.Visible = false
	ScreenGui.MusicGuiDrag.Visible = true
	ScreenGui.MusicGuiOn.Visible = true
end)

ScreenGui.UICorner_5.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_5.Parent = ScreenGui.MusicGuiOff

ScreenGui.TextLabel_4.Parent = ScreenGui.MusicGuiOff
ScreenGui.TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_4.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_4.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_4.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_4.Text = ""
ScreenGui.TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_4.TextSize = 14.000

ScreenGui.UICorner_6.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_6.Parent = ScreenGui.TextLabel_4

ScreenGui.MusicGuiOn.Name = "MusicGuiOn"
ScreenGui.MusicGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.MusicGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MusicGuiOn.Position = UDim2.new(0.0920000002, 0, 0.367000014, 0)
ScreenGui.MusicGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MusicGuiOn.Visible = false
ScreenGui.MusicGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.MusicGuiOn.Text = "Music Gui"
ScreenGui.MusicGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MusicGuiOn.TextSize = 20.000
ScreenGui.MusicGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.MusicGuiOn.MouseButton1Down:connect(function()
	ScreenGui.MusicGuiOff.Visible = true
	ScreenGui.MusicGuiDrag.Visible = false
	ScreenGui.MusicGuiOn.Visible = false
end)

ScreenGui.UICorner_7.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_7.Parent = ScreenGui.MusicGuiOn

ScreenGui.TextLabel_5.Parent = ScreenGui.MusicGuiOn
ScreenGui.TextLabel_5.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_5.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_5.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_5.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_5.Text = ""
ScreenGui.TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_5.TextSize = 14.000

ScreenGui.UICorner_8.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_8.Parent = ScreenGui.TextLabel_5

ScreenGui.AbusiveGuiOff.Name = "AbusiveGuiOff"
ScreenGui.AbusiveGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.AbusiveGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AbusiveGuiOff.Position = UDim2.new(0.0920000002, 0, 0.501946092, 0)
ScreenGui.AbusiveGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AbusiveGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.AbusiveGuiOff.Text = "Abusive Gui"
ScreenGui.AbusiveGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AbusiveGuiOff.TextSize = 20.000
ScreenGui.AbusiveGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AbusiveGuiOff.MouseButton1Down:connect(function()
	ScreenGui.AbusiveGuiOff.Visible = false
	ScreenGui.AbusiveGuiOn.Visible = true
	ScreenGui.AbusiveGuiDrag.Visible = true
end)

ScreenGui.TextLabel_6.Parent = ScreenGui.AbusiveGuiOff
ScreenGui.TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_6.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_6.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_6.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_6.Text = ""
ScreenGui.TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_6.TextSize = 14.000

ScreenGui.UICorner_9.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_9.Parent = ScreenGui.TextLabel_6

ScreenGui.UICorner_10.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_10.Parent = ScreenGui.AbusiveGuiOff

ScreenGui.AbusiveGuiOn.Name = "AbusiveGuiOn"
ScreenGui.AbusiveGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.AbusiveGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AbusiveGuiOn.Position = UDim2.new(0.0920000002, 0, 0.501999974, 0)
ScreenGui.AbusiveGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AbusiveGuiOn.Visible = false
ScreenGui.AbusiveGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.AbusiveGuiOn.Text = "Abusive Gui"
ScreenGui.AbusiveGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AbusiveGuiOn.TextSize = 20.000
ScreenGui.AbusiveGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AbusiveGuiOn.MouseButton1Down:connect(function()
	ScreenGui.AbusiveGuiOff.Visible = true
	ScreenGui.AbusiveGuiOn.Visible = false
	ScreenGui.AbusiveGuiDrag.Visible = false
end)

ScreenGui.UICorner_11.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_11.Parent = ScreenGui.AbusiveGuiOn

ScreenGui.TextLabel_7.Parent = ScreenGui.AbusiveGuiOn
ScreenGui.TextLabel_7.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_7.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_7.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_7.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_7.Text = ""
ScreenGui.TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_7.TextSize = 14.000

ScreenGui.UICorner_12.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_12.Parent = ScreenGui.TextLabel_7

ScreenGui.antiGuiOn.Name = "antiGuiOn"
ScreenGui.antiGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.antiGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiGuiOn.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.antiGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiGuiOn.Visible = false
ScreenGui.antiGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.antiGuiOn.Text = "Anti Gui"
ScreenGui.antiGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiGuiOn.TextSize = 20.000
ScreenGui.antiGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.antiGuiOn.MouseButton1Down:connect(function()
	ScreenGui.AntiGuiDrag.Visible = false
	ScreenGui.antiGuiOn.Visible = false
	ScreenGui.antiGuiOff.Visible = true
end)

ScreenGui.UICorner_13.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_13.Parent = ScreenGui.antiGuiOn

ScreenGui.TextLabel_8.Parent = ScreenGui.antiGuiOn
ScreenGui.TextLabel_8.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_8.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_8.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_8.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_8.Text = ""
ScreenGui.TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_8.TextSize = 14.000

ScreenGui.UICorner_14.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_14.Parent = ScreenGui.TextLabel_8

ScreenGui.antiGuiOff.Name = "antiGuiOff"
ScreenGui.antiGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.antiGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiGuiOff.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.antiGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.antiGuiOff.Text = "Anti Gui"
ScreenGui.antiGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiGuiOff.TextSize = 20.000
ScreenGui.antiGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.antiGuiOff.MouseButton1Down:connect(function()
	ScreenGui.AntiGuiDrag.Visible = true
	ScreenGui.antiGuiOn.Visible = true
	ScreenGui.antiGuiOff.Visible = false
end)

ScreenGui.UICorner_15.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_15.Parent = ScreenGui.antiGuiOff

ScreenGui.TextLabel_9.Parent = ScreenGui.antiGuiOff
ScreenGui.TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_9.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_9.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_9.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_9.Text = ""
ScreenGui.TextLabel_9.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_9.TextSize = 14.000

ScreenGui.UICorner_16.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_16.Parent = ScreenGui.TextLabel_9

ScreenGui.GearGuiOn.Name = "GearGuiOn"
ScreenGui.GearGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.GearGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GearGuiOn.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.GearGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GearGuiOn.Visible = false
ScreenGui.GearGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.GearGuiOn.Text = "Gear Gui"
ScreenGui.GearGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GearGuiOn.TextSize = 20.000
ScreenGui.GearGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.GearGuiOn.MouseButton1Down:connect(function()
	ScreenGui.GearGuiOn.Visible = false
	ScreenGui.GearGuiDrag.Visible = false
	ScreenGui.GearGuiOff.Visible = true
end)


ScreenGui.UICorner_17.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_17.Parent = ScreenGui.GearGuiOn

ScreenGui.TextLabel_10.Parent = ScreenGui.GearGuiOn
ScreenGui.TextLabel_10.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_10.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_10.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_10.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_10.Text = ""
ScreenGui.TextLabel_10.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_10.TextSize = 14.000

ScreenGui.UICorner_18.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_18.Parent = ScreenGui.TextLabel_10

ScreenGui.GearGuiOff.Name = "GearGuiOff"
ScreenGui.GearGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.GearGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GearGuiOff.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.GearGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GearGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.GearGuiOff.Text = "Gear Gui"
ScreenGui.GearGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GearGuiOff.TextSize = 20.000
ScreenGui.GearGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.GearGuiOff.MouseButton1Down:connect(function()
	ScreenGui.GearGuiOn.Visible = true
	ScreenGui.GearGuiDrag.Visible = true
	ScreenGui.GearGuiOff.Visible = false
end)

ScreenGui.UICorner_19.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_19.Parent = ScreenGui.GearGuiOff

ScreenGui.TextLabel_11.Parent = ScreenGui.GearGuiOff
ScreenGui.TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_11.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_11.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_11.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_11.Text = ""
ScreenGui.TextLabel_11.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_11.TextSize = 14.000

ScreenGui.UICorner_20.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_20.Parent = ScreenGui.TextLabel_11

ScreenGui.QuickGuiOn.Name = "QuickGuiOn"
ScreenGui.QuickGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.QuickGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.QuickGuiOn.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.QuickGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.QuickGuiOn.Visible = false
ScreenGui.QuickGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.QuickGuiOn.Text = "Quick Gui"
ScreenGui.QuickGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.QuickGuiOn.TextSize = 20.000
ScreenGui.QuickGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.QuickGuiOn.MouseButton1Down:connect(function()
	ScreenGui.QuickGuiOn.Visible = false
	ScreenGui.QuickGuiDrag.Visible = false
	ScreenGui.QuickGuiOff.Visible = true
end)

ScreenGui.UICorner_21.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_21.Parent = ScreenGui.QuickGuiOn

ScreenGui.TextLabel_12.Parent = ScreenGui.QuickGuiOn
ScreenGui.TextLabel_12.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_12.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_12.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_12.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_12.Text = ""
ScreenGui.TextLabel_12.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_12.TextSize = 14.000

ScreenGui.UICorner_22.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_22.Parent = ScreenGui.TextLabel_12

ScreenGui.QuickGuiOff.Name = "QuickGuiOff"
ScreenGui.QuickGuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.QuickGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.QuickGuiOff.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.QuickGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.QuickGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.QuickGuiOff.Text = "Quick Gui"
ScreenGui.QuickGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.QuickGuiOff.TextSize = 20.000
ScreenGui.QuickGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.QuickGuiOff.MouseButton1Down:connect(function()
	ScreenGui.QuickGuiOn.Visible = true
	ScreenGui.QuickGuiDrag.Visible = true
	ScreenGui.QuickGuiOff.Visible = false
end)

ScreenGui.UICorner_23.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_23.Parent = ScreenGui.QuickGuiOff

ScreenGui.TextLabel_13.Parent = ScreenGui.QuickGuiOff
ScreenGui.TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_13.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_13.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_13.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_13.Text = ""
ScreenGui.TextLabel_13.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_13.TextSize = 14.000

ScreenGui.UICorner_24.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_24.Parent = ScreenGui.TextLabel_13

ScreenGui.FunnyGuiOn.Name = "FunnyGuiOn"
ScreenGui.FunnyGuiOn.Parent = ScreenGui.OnOffGui
ScreenGui.FunnyGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.FunnyGuiOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.FunnyGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.FunnyGuiOn.Visible = false
ScreenGui.FunnyGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.FunnyGuiOn.Text = "Funny Gui"
ScreenGui.FunnyGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.FunnyGuiOn.TextSize = 20.000
ScreenGui.FunnyGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.FunnyGuiOn.MouseButton1Down:connect(function()
	ScreenGui.FunnyGuiOn.Visible = false
	ScreenGui.FunnyuiOff.Visible = true
	ScreenGui.FunnyGuiDrag.Visible = false
end)

ScreenGui.UICorner_25.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_25.Parent = ScreenGui.FunnyGuiOn

ScreenGui.TextLabel_14.Parent = ScreenGui.FunnyGuiOn
ScreenGui.TextLabel_14.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_14.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_14.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_14.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_14.Text = ""
ScreenGui.TextLabel_14.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_14.TextSize = 14.000

ScreenGui.UICorner_26.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_26.Parent = ScreenGui.TextLabel_14

ScreenGui.FunnyuiOff.Name = "FunnyuiOff"
ScreenGui.FunnyuiOff.Parent = ScreenGui.OnOffGui
ScreenGui.FunnyuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.FunnyuiOff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.FunnyuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.FunnyuiOff.Font = Enum.Font.JosefinSans
ScreenGui.FunnyuiOff.Text = "Funny Gui"
ScreenGui.FunnyuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.FunnyuiOff.TextSize = 20.000
ScreenGui.FunnyuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.FunnyuiOff.MouseButton1Down:connect(function()
	ScreenGui.FunnyGuiOn.Visible = true
	ScreenGui.FunnyuiOff.Visible = false
	ScreenGui.FunnyGuiDrag.Visible = true
end)

ScreenGui.UICorner_27.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_27.Parent = ScreenGui.FunnyuiOff

ScreenGui.TextLabel_15.Parent = ScreenGui.FunnyuiOff
ScreenGui.TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_15.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_15.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_15.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_15.Text = ""
ScreenGui.TextLabel_15.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_15.TextSize = 14.000

ScreenGui.UICorner_28.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_28.Parent = ScreenGui.TextLabel_15

ScreenGui.UICorner_29.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_29.Parent = ScreenGui.OnOffGui

ScreenGui.gotopage2main.Name = "gotopage2main"
ScreenGui.gotopage2main.Parent = ScreenGui.BackroundDrag
ScreenGui.gotopage2main.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ScreenGui.gotopage2main.Position = UDim2.new(0.690082669, 0, 0.931764722, 0)
ScreenGui.gotopage2main.Size = UDim2.new(0, 29, 0, 29)
ScreenGui.gotopage2main.Font = Enum.Font.SourceSans
ScreenGui.gotopage2main.Text = ">"
ScreenGui.gotopage2main.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.gotopage2main.TextScaled = true
ScreenGui.gotopage2main.TextSize = 14.000
ScreenGui.gotopage2main.TextWrapped = true
ScreenGui.gotopage2main.MouseButton1Down:connect(function()
	ScreenGui.gotopage1main.Visible = true
	ScreenGui.gotopage2main.Visible = false
	ScreenGui.OnOffGui.Visible = false
	ScreenGui.OnOffGui2.Visible = true
end)

ScreenGui.UICorner_30.CornerRadius = UDim.new(0.25, 0)
ScreenGui.UICorner_30.Parent = ScreenGui.gotopage2main

ScreenGui.gotopage1main.Name = "gotopage1main"
ScreenGui.gotopage1main.Parent = ScreenGui.BackroundDrag
ScreenGui.gotopage1main.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ScreenGui.gotopage1main.Position = UDim2.new(0.185950458, 0, 0.931764722, 0)
ScreenGui.gotopage1main.Size = UDim2.new(0, 29, 0, 29)
ScreenGui.gotopage1main.Font = Enum.Font.SourceSans
ScreenGui.gotopage1main.Text = "<"
ScreenGui.gotopage1main.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.gotopage1main.TextScaled = true
ScreenGui.gotopage1main.TextSize = 14.000
ScreenGui.gotopage1main.TextWrapped = true
ScreenGui.gotopage1main.MouseButton1Down:connect(function()
	ScreenGui.gotopage2main.Visible = true
	ScreenGui.gotopage1main.Visible = false
	ScreenGui.OnOffGui2.Visible = false
	ScreenGui.OnOffGui.Visible = true
end)

ScreenGui.UICorner_31.CornerRadius = UDim.new(0.25, 0)
ScreenGui.UICorner_31.Parent = ScreenGui.gotopage1main

ScreenGui.OnOffGui2.Name = "On/OffGui2"
ScreenGui.OnOffGui2.Parent = ScreenGui.BackroundDrag
ScreenGui.OnOffGui2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.OnOffGui2.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.OnOffGui2.Size = UDim2.new(0, 184, 0, 369)
ScreenGui.OnOffGui2.Active = true

ScreenGui.TextLabel_16.Parent = ScreenGui.OnOffGui2
ScreenGui.TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_16.BackgroundTransparency = 1.000
ScreenGui.TextLabel_16.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_16.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_16.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_16.Text = "NightScale's Fun Customs"
ScreenGui.TextLabel_16.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_16.TextScaled = true
ScreenGui.TextLabel_16.TextSize = 14.000
ScreenGui.TextLabel_16.TextWrapped = true

ScreenGui.PaintGuiOn.Name = "PaintGuiOn"
ScreenGui.PaintGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.PaintGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PaintGuiOn.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.PaintGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PaintGuiOn.Visible = false
ScreenGui.PaintGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.PaintGuiOn.Text = "Paint Gui"
ScreenGui.PaintGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PaintGuiOn.TextSize = 20.000
ScreenGui.PaintGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PaintGuiOn.MouseButton1Down:connect(function()
	ScreenGui.PaintGuiOn.Visible = false
	ScreenGui.PaintGuiDrag.Visible = false
	ScreenGui.PaintGuiOff.Visible = true
end)

ScreenGui.UICorner_32.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_32.Parent = ScreenGui.PaintGuiOn

ScreenGui.TextLabel_17.Parent = ScreenGui.PaintGuiOn
ScreenGui.TextLabel_17.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_17.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_17.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_17.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_17.Text = ""
ScreenGui.TextLabel_17.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_17.TextSize = 14.000

ScreenGui.UICorner_33.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_33.Parent = ScreenGui.TextLabel_17

ScreenGui.PaintGuiOff.Name = "PaintGuiOff"
ScreenGui.PaintGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.PaintGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PaintGuiOff.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.PaintGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PaintGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.PaintGuiOff.Text = "Paint Gui"
ScreenGui.PaintGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PaintGuiOff.TextSize = 20.000
ScreenGui.PaintGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PaintGuiOff.MouseButton1Down:connect(function()
	ScreenGui.PaintGuiOn.Visible = true
	ScreenGui.PaintGuiDrag.Visible = true
	ScreenGui.PaintGuiOff.Visible = false
end)

ScreenGui.UICorner_34.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_34.Parent = ScreenGui.PaintGuiOff

ScreenGui.TextLabel_18.Parent = ScreenGui.PaintGuiOff
ScreenGui.TextLabel_18.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_18.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_18.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_18.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_18.Text = ""
ScreenGui.TextLabel_18.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_18.TextSize = 14.000

ScreenGui.UICorner_35.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_35.Parent = ScreenGui.TextLabel_18

ScreenGui.TPGuiOff.Name = "TPGuiOff"
ScreenGui.TPGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.TPGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TPGuiOff.Position = UDim2.new(0.0920000002, 0, 0.366976023, 0)
ScreenGui.TPGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TPGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.TPGuiOff.Text = "Tp Gui"
ScreenGui.TPGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TPGuiOff.TextSize = 20.000
ScreenGui.TPGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.TPGuiOff.MouseButton1Down:connect(function()
	ScreenGui.TPGuiOff.Visible = false
	ScreenGui.CreditsGuiDrag.Visible = true
	ScreenGui.TpGuiOn.Visible = true
end)

ScreenGui.UICorner_36.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_36.Parent = ScreenGui.TPGuiOff

ScreenGui.TextLabel_19.Parent = ScreenGui.TPGuiOff
ScreenGui.TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_19.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_19.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_19.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_19.Text = ""
ScreenGui.TextLabel_19.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_19.TextSize = 14.000

ScreenGui.UICorner_37.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_37.Parent = ScreenGui.TextLabel_19

ScreenGui.TpGuiOn.Name = "TpGuiOn"
ScreenGui.TpGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.TpGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TpGuiOn.Position = UDim2.new(0.0920000002, 0, 0.367000014, 0)
ScreenGui.TpGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TpGuiOn.Visible = false
ScreenGui.TpGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.TpGuiOn.Text = "Tp Gui"
ScreenGui.TpGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TpGuiOn.TextSize = 20.000
ScreenGui.TpGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.TpGuiOn.MouseButton1Down:connect(function()
	ScreenGui.TPGuiOff.Visible = true
	ScreenGui.CreditsGuiDrag.Visible = false
	ScreenGui.TpGuiOn.Visible = false
end)

ScreenGui.UICorner_38.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_38.Parent = ScreenGui.TpGuiOn

ScreenGui.TextLabel_20.Parent = ScreenGui.TpGuiOn
ScreenGui.TextLabel_20.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_20.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_20.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_20.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_20.Text = ""
ScreenGui.TextLabel_20.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_20.TextSize = 14.000

ScreenGui.UICorner_39.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_39.Parent = ScreenGui.TextLabel_20

ScreenGui.ColorsGuiOff.Name = "ColorsGuiOff"
ScreenGui.ColorsGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.ColorsGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.ColorsGuiOff.Position = UDim2.new(0.0920000002, 0, 0.501946092, 0)
ScreenGui.ColorsGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.ColorsGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.ColorsGuiOff.Text = "Colors Gui"
ScreenGui.ColorsGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.ColorsGuiOff.TextSize = 20.000
ScreenGui.ColorsGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.ColorsGuiOff.MouseButton1Down:connect(function()
	ScreenGui.ColorsGuiOn.Visible = true
	ScreenGui.ColorsGuiDrag.Visible = true
	ScreenGui.ColorsGuiOff.Visible = false
end)

ScreenGui.TextLabel_21.Parent = ScreenGui.ColorsGuiOff
ScreenGui.TextLabel_21.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_21.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_21.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_21.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_21.Text = ""
ScreenGui.TextLabel_21.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_21.TextSize = 14.000

ScreenGui.UICorner_40.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_40.Parent = ScreenGui.TextLabel_21

ScreenGui.UICorner_41.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_41.Parent = ScreenGui.ColorsGuiOff

ScreenGui.ColorsGuiOn.Name = "ColorsGuiOn"
ScreenGui.ColorsGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.ColorsGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.ColorsGuiOn.Position = UDim2.new(0.0920000002, 0, 0.501999974, 0)
ScreenGui.ColorsGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.ColorsGuiOn.Visible = false
ScreenGui.ColorsGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.ColorsGuiOn.Text = "Colors Gui"
ScreenGui.ColorsGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.ColorsGuiOn.TextSize = 20.000
ScreenGui.ColorsGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.ColorsGuiOn.MouseButton1Down:connect(function()
	ScreenGui.ColorsGuiOn.Visible = false
	ScreenGui.ColorsGuiDrag.Visible = false
	ScreenGui.ColorsGuiOff.Visible = true
end)

ScreenGui.UICorner_42.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_42.Parent = ScreenGui.ColorsGuiOn

ScreenGui.TextLabel_22.Parent = ScreenGui.ColorsGuiOn
ScreenGui.TextLabel_22.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_22.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_22.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_22.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_22.Text = ""
ScreenGui.TextLabel_22.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_22.TextSize = 14.000

ScreenGui.UICorner_43.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_43.Parent = ScreenGui.TextLabel_22

ScreenGui.noabuseGuiOn.Name = "noabuseGuiOn"
ScreenGui.noabuseGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.noabuseGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.noabuseGuiOn.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.noabuseGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.noabuseGuiOn.Visible = false
ScreenGui.noabuseGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.noabuseGuiOn.Text = "Abuse No Gui"
ScreenGui.noabuseGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.noabuseGuiOn.TextSize = 18.000
ScreenGui.noabuseGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.noabuseGuiOn.MouseButton1Down:connect(function()
	ScreenGui.noabuseGuiOn.Visible = false
	ScreenGui.AbuseNoGuiDrag.Visible = false
	ScreenGui.noabuseGuiOff.Visible = true
end)

ScreenGui.UICorner_44.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_44.Parent = ScreenGui.noabuseGuiOn

ScreenGui.TextLabel_23.Parent = ScreenGui.noabuseGuiOn
ScreenGui.TextLabel_23.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_23.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_23.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_23.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_23.Text = ""
ScreenGui.TextLabel_23.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_23.TextSize = 14.000

ScreenGui.UICorner_45.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_45.Parent = ScreenGui.TextLabel_23

ScreenGui.noabuseGuiOff.Name = "noabuseGuiOff"
ScreenGui.noabuseGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.noabuseGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.noabuseGuiOff.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.noabuseGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.noabuseGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.noabuseGuiOff.Text = "Abuse No Gui"
ScreenGui.noabuseGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.noabuseGuiOff.TextSize = 18.000
ScreenGui.noabuseGuiOff.TextWrapped = true
ScreenGui.noabuseGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.noabuseGuiOff.MouseButton1Down:connect(function()
	ScreenGui.noabuseGuiOn.Visible = true
	ScreenGui.AbuseNoGuiDrag.Visible = true
	ScreenGui.noabuseGuiOff.Visible = false
end)

ScreenGui.UICorner_46.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_46.Parent = ScreenGui.noabuseGuiOff

ScreenGui.TextLabel_24.Parent = ScreenGui.noabuseGuiOff
ScreenGui.TextLabel_24.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_24.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_24.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_24.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_24.Text = ""
ScreenGui.TextLabel_24.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_24.TextSize = 14.000

ScreenGui.UICorner_47.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_47.Parent = ScreenGui.TextLabel_24

ScreenGui.helpfullGuiOn.Name = "helpfullGuiOn"
ScreenGui.helpfullGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.helpfullGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.helpfullGuiOn.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.helpfullGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.helpfullGuiOn.Visible = false
ScreenGui.helpfullGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.helpfullGuiOn.Text = "Helpfull Gui"
ScreenGui.helpfullGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.helpfullGuiOn.TextSize = 20.000
ScreenGui.helpfullGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.helpfullGuiOn.MouseButton1Down:connect(function()
	ScreenGui.helpfullGuiOn.Visible = false
	ScreenGui.HelpfullGuiDrag.Visible = false
	ScreenGui.HelpfullGuiOff.Visible = true
end)

ScreenGui.UICorner_48.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_48.Parent = ScreenGui.helpfullGuiOn

ScreenGui.TextLabel_25.Parent = ScreenGui.helpfullGuiOn
ScreenGui.TextLabel_25.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_25.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_25.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_25.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_25.Text = ""
ScreenGui.TextLabel_25.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_25.TextSize = 14.000

ScreenGui.UICorner_49.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_49.Parent = ScreenGui.TextLabel_25

ScreenGui.HelpfullGuiOff.Name = "HelpfullGuiOff"
ScreenGui.HelpfullGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.HelpfullGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.HelpfullGuiOff.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.HelpfullGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.HelpfullGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.HelpfullGuiOff.Text = "Helpfull Gui"
ScreenGui.HelpfullGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.HelpfullGuiOff.TextSize = 20.000
ScreenGui.HelpfullGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.HelpfullGuiOff.MouseButton1Down:connect(function()
	ScreenGui.helpfullGuiOn.Visible = true
	ScreenGui.HelpfullGuiDrag.Visible = true
	ScreenGui.HelpfullGuiOff.Visible = false
end)

ScreenGui.UICorner_50.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_50.Parent = ScreenGui.HelpfullGuiOff

ScreenGui.TextLabel_26.Parent = ScreenGui.HelpfullGuiOff
ScreenGui.TextLabel_26.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_26.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_26.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_26.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_26.Text = ""
ScreenGui.TextLabel_26.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_26.TextSize = 14.000

ScreenGui.UICorner_51.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_51.Parent = ScreenGui.TextLabel_26

ScreenGui.CreditsGuiOn.Name = "CreditsGuiOn"
ScreenGui.CreditsGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.CreditsGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CreditsGuiOn.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.CreditsGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CreditsGuiOn.Visible = false
ScreenGui.CreditsGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.CreditsGuiOn.Text = "Credits Gui"
ScreenGui.CreditsGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CreditsGuiOn.TextSize = 20.000
ScreenGui.CreditsGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.CreditsGuiOn.MouseButton1Down:connect(function()
	ScreenGui.CreditsGuiOn.Visible = false
	ScreenGui.TpGuiDrag.Visible = false
	ScreenGui.CreditsGuiOff.Visible = true
end)

ScreenGui.UICorner_52.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_52.Parent = ScreenGui.CreditsGuiOn

ScreenGui.TextLabel_27.Parent = ScreenGui.CreditsGuiOn
ScreenGui.TextLabel_27.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_27.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_27.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_27.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_27.Text = ""
ScreenGui.TextLabel_27.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_27.TextSize = 14.000

ScreenGui.UICorner_53.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_53.Parent = ScreenGui.TextLabel_27

ScreenGui.CreditsGuiOff.Name = "CreditsGuiOff"
ScreenGui.CreditsGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.CreditsGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CreditsGuiOff.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.CreditsGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CreditsGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.CreditsGuiOff.Text = "Credits Gui"
ScreenGui.CreditsGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CreditsGuiOff.TextSize = 20.000
ScreenGui.CreditsGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.CreditsGuiOff.MouseButton1Down:connect(function()
	ScreenGui.CreditsGuiOn.Visible = true
	ScreenGui.TpGuiDrag.Visible = true
	ScreenGui.CreditsGuiOff.Visible = false
end)

ScreenGui.UICorner_54.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_54.Parent = ScreenGui.CreditsGuiOff

ScreenGui.TextLabel_28.Parent = ScreenGui.CreditsGuiOff
ScreenGui.TextLabel_28.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_28.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_28.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_28.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_28.Text = ""
ScreenGui.TextLabel_28.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_28.TextSize = 14.000

ScreenGui.UICorner_55.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_55.Parent = ScreenGui.TextLabel_28

ScreenGui.PadGuiOn.Name = "PadGuiOn"
ScreenGui.PadGuiOn.Parent = ScreenGui.OnOffGui2
ScreenGui.PadGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PadGuiOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.PadGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PadGuiOn.Visible = false
ScreenGui.PadGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.PadGuiOn.Text = "Pads Gui"
ScreenGui.PadGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PadGuiOn.TextSize = 20.000
ScreenGui.PadGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PadGuiOn.MouseButton1Down:connect(function()
	ScreenGui.PadGuiOn.Visible = false
	ScreenGui.PadGuiDrag.Visible = false
	ScreenGui.PadGuiOff.Visible = true
end)

ScreenGui.UICorner_56.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_56.Parent = ScreenGui.PadGuiOn

ScreenGui.TextLabel_29.Parent = ScreenGui.PadGuiOn
ScreenGui.TextLabel_29.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_29.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_29.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_29.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_29.Text = ""
ScreenGui.TextLabel_29.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_29.TextSize = 14.000

ScreenGui.UICorner_57.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_57.Parent = ScreenGui.TextLabel_29

ScreenGui.PadGuiOff.Name = "PadGuiOff"
ScreenGui.PadGuiOff.Parent = ScreenGui.OnOffGui2
ScreenGui.PadGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PadGuiOff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.PadGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PadGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.PadGuiOff.Text = "Pads Gui"
ScreenGui.PadGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PadGuiOff.TextSize = 20.000
ScreenGui.PadGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PadGuiOff.MouseButton1Down:connect(function()
	ScreenGui.PadGuiOn.Visible = true
	ScreenGui.PadGuiDrag.Visible = true
	ScreenGui.PadGuiOff.Visible = false
end)

ScreenGui.UICorner_58.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_58.Parent = ScreenGui.PadGuiOff

ScreenGui.TextLabel_30.Parent = ScreenGui.PadGuiOff
ScreenGui.TextLabel_30.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_30.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_30.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_30.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_30.Text = ""
ScreenGui.TextLabel_30.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_30.TextSize = 14.000

ScreenGui.UICorner_59.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_59.Parent = ScreenGui.TextLabel_30

ScreenGui.UICorner_60.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_60.Parent = ScreenGui.OnOffGui2

ScreenGui.UICorner_61.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_61.Parent = ScreenGui.BackroundDrag

ScreenGui.FunnyGuiDrag.Name = "FunnyGuiDrag"
ScreenGui.FunnyGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.FunnyGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.FunnyGuiDrag.BorderSizePixel = 0
ScreenGui.FunnyGuiDrag.Position = UDim2.new(0.257965684, 0, -0.00135678053, 0)
ScreenGui.FunnyGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.FunnyGuiDrag.Visible = false
ScreenGui.FunnyGuiDrag.Active = true
ScreenGui.FunnyGuiDrag.Draggable = true

ScreenGui.FunnyMainGui.Name = "FunnyMainGui"
ScreenGui.FunnyMainGui.Parent = ScreenGui.FunnyGuiDrag
ScreenGui.FunnyMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.FunnyMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.FunnyMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_31.Parent = ScreenGui.FunnyMainGui
ScreenGui.TextLabel_31.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_31.BackgroundTransparency = 1.000
ScreenGui.TextLabel_31.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_31.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_31.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_31.Text = "Funny Gui"
ScreenGui.TextLabel_31.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_31.TextSize = 25.000
ScreenGui.TextLabel_31.TextWrapped = true

ScreenGui.UICorner_62.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_62.Parent = ScreenGui.FunnyMainGui

ScreenGui.Nuke.Name = "Nuke"
ScreenGui.Nuke.Parent = ScreenGui.FunnyMainGui
ScreenGui.Nuke.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nuke.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.Nuke.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nuke.Font = Enum.Font.JosefinSans
ScreenGui.Nuke.Text = "Nuke"
ScreenGui.Nuke.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nuke.TextSize = 25.000
ScreenGui.Nuke.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("h A Nuke Has Been Dropped Seek Shelter Immediately"))
	wait(0.1)
	game:GetService'Players':Chat(("music 2684808342"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.1)
	game:GetService'Players':Chat(("char me 3"))
	wait(0.1)
	for i = 1,10 do
		game:GetService'Players':Chat(("size me .5"))
	end
	wait(0.5)
	game:GetService'Players':Chat(("unsize me"))
	wait(0.1)
	game:GetService'Players':Chat(("removelimbs me"))
	wait(0.1)
	game:GetService'Players':Chat(("minihead me"))
	wait(0.1)
	game:GetService'Players':Chat(("paint me 255,127,0"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 5")) 
	wait(0.1)
	game:GetService'Players':Chat(("skydive me")) 
	wait(0.1)
	game:GetService'Players':Chat(("trip me"))
	wait(0.1)
	game:GetService'Players':Chat(("bonfire me"))
	wait(4.575)
	game:GetService'Players':Chat(("music 1502307055"))
	game:GetService'Players':Chat(("h Its To Late The Bomb Has Hit"))
	wait(0.1)
	game:GetService'Players':Chat(("colorshifttop 10610 7496 0"))
	wait(0.1)
	game:GetService'Players':Chat(("colorshiftbottom 10610 7496 0"))
	wait(0.1)
	game:GetService'Players':Chat(("time 0"))
	wait(0.1)
	game:GetService'Players':Chat(("fogend 25")) 
	wait(0.1)
	game:GetService'Players':Chat(("fogcolor 255,127,0"))
	wait(0.3)
	game:GetService'Players':Chat(("fire all"))
	wait(0.1)
	game:GetService'Players':Chat(("kill all"))
	wait(3)
	game:GetService'Players':Chat(("fix"))
	game:GetService'Players':Chat(("music"))
	game:GetService'Players':Chat(("unchar me"))
end)

ScreenGui.UICorner_63.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_63.Parent = ScreenGui.Nuke

ScreenGui.Nothing2Funny.Name = "Nothing2Funny"
ScreenGui.Nothing2Funny.Parent = ScreenGui.FunnyMainGui
ScreenGui.Nothing2Funny.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing2Funny.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing2Funny.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing2Funny.Font = Enum.Font.JosefinSans
ScreenGui.Nothing2Funny.Text = "BoomBox Id Here"
ScreenGui.Nothing2Funny.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing2Funny.TextSize = 25.000
ScreenGui.Nothing2Funny.TextScaled = true

ScreenGui.UICorner_64.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_64.Parent = ScreenGui.Nothing2Funny

ScreenGui.Nothing1funny.Name = "Nothing1funny"
ScreenGui.Nothing1funny.Parent = ScreenGui.FunnyMainGui
ScreenGui.Nothing1funny.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing1funny.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Nothing1funny.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing1funny.Font = Enum.Font.JosefinSans
ScreenGui.Nothing1funny.Text = "Mega BoomBox"
ScreenGui.Nothing1funny.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing1funny.TextSize = 25.000
ScreenGui.Nothing1funny.TextScaled = true
ScreenGui.Nothing1funny.MouseButton1Down:connect(function()
	for i = 1,150 do
		game:GetService'Players':Chat(("gear me 0000000000000000000000000000000212641536"))
	end
	wait(.5)
	for i, b in pairs(game:GetDescendants()) do
		if b.Name == "SuperFlyGoldBoombox" then
			if b.Parent == game.Workspace then
				b.Handle.Sound.Playing = true
			elseif b.Parent == game.Players.LocalPlayer.Backpack then
				boomboxid = ScreenGui.Nothing2Funny.Text
				b.Parent = game.Players.LocalPlayer.Character
				b.Remote:FireServer("PlaySong", boomboxid)
				b.Grip = b.Grip + Vector3.new(math.random(-1, 1),math.random(-1, 4),math.random(-1, 1))
			else
				wait()
			end
		end
	end
end)

ScreenGui.UICorner_65.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_65.Parent = ScreenGui.Nothing1funny

ScreenGui.Melanie.Name = "Melanie"
ScreenGui.Melanie.Parent = ScreenGui.FunnyMainGui
ScreenGui.Melanie.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Melanie.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.Melanie.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Melanie.Font = Enum.Font.JosefinSans
ScreenGui.Melanie.Text = "Melanie"
ScreenGui.Melanie.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Melanie.TextSize = 25.000
ScreenGui.Melanie.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("unhat me"))
	game:GetService'Players':Chat(("unpants me"))
	game:GetService'Players':Chat(("unshirt me"))
	game:GetService'Players':Chat(("hat me 4124350220"))
	game:GetService'Players':Chat(("pants me 5608414543"))
	game:GetService'Players':Chat(("face me 209995366"))
	game:GetService'Players':Chat(("name me Melanie Martinez"))
end)

ScreenGui.UICorner_66.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_66.Parent = ScreenGui.Melanie

ScreenGui.MEGApew.Name = "*MEGApew*"
ScreenGui.MEGApew.Parent = ScreenGui.FunnyMainGui
ScreenGui.MEGApew.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MEGApew.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.MEGApew.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MEGApew.Font = Enum.Font.JosefinSans
ScreenGui.MEGApew.Text = "*MEGApew*"
ScreenGui.MEGApew.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MEGApew.TextSize = 25.000
ScreenGui.MEGApew.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("heal all 100"))
	game:GetService'Players':Chat(("damage others 100000000000000000000000000000"))
	game:GetService'Players':Chat(("h You have been shot! :O"))
end)

ScreenGui.UICorner_67.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_67.Parent = ScreenGui.MEGApew

ScreenGui.pew.Name = "*pew*"
ScreenGui.pew.Parent = ScreenGui.FunnyMainGui
ScreenGui.pew.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.pew.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.pew.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.pew.Font = Enum.Font.JosefinSans
ScreenGui.pew.Text = "*pew*"
ScreenGui.pew.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.pew.TextSize = 25.000
ScreenGui.pew.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("heal all 100")) 
	game:GetService'Players':Chat(("damage others 99"))
	game:GetService'Players':Chat(("h You have been shot! :O"))
end)

ScreenGui.UICorner_68.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_68.Parent = ScreenGui.pew

ScreenGui.Cube.Name = "Cube"
ScreenGui.Cube.Parent = ScreenGui.FunnyMainGui
ScreenGui.Cube.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Cube.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.Cube.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Cube.Font = Enum.Font.JosefinSans
ScreenGui.Cube.Text = "Cube"
ScreenGui.Cube.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Cube.TextSize = 25.000
ScreenGui.Cube.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("size me 0.3"))
	wait(0.1)
	game:GetService'Players':Chat(("unsize me"))
end)

ScreenGui.UICorner_69.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_69.Parent = ScreenGui.Cube

ScreenGui.UICorner_70.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_70.Parent = ScreenGui.FunnyGuiDrag

ScreenGui.MoveGuiDrag.Name = "MoveGuiDrag"
ScreenGui.MoveGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.MoveGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.MoveGuiDrag.BorderSizePixel = 0
ScreenGui.MoveGuiDrag.Position = UDim2.new(0.623774529, 0, -0.00135678053, 0)
ScreenGui.MoveGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.MoveGuiDrag.Visible = false
ScreenGui.MoveGuiDrag.Active = true
ScreenGui.MoveGuiDrag.Draggable = true

ScreenGui.MoveMainGui.Name = "MoveMainGui"
ScreenGui.MoveMainGui.Parent = ScreenGui.MoveGuiDrag
ScreenGui.MoveMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.MoveMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.MoveMainGui.Size = UDim2.new(0, 184, 0, 369) --

ScreenGui.TextLabel_32.Parent = ScreenGui.MoveMainGui
ScreenGui.TextLabel_32.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_32.BackgroundTransparency = 1.000
ScreenGui.TextLabel_32.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_32.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_32.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_32.Text = "Move Gui"
ScreenGui.TextLabel_32.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_32.TextSize = 25.000
ScreenGui.TextLabel_32.TextWrapped = true

ScreenGui.UICorner_71.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_71.Parent = ScreenGui.MoveMainGui

ScreenGui.MovePads.Name = "MovePads"
ScreenGui.MovePads.Parent = ScreenGui.MoveMainGui
ScreenGui.MovePads.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MovePads.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.MovePads.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MovePads.Font = Enum.Font.JosefinSans
ScreenGui.MovePads.Text = "Pads"
ScreenGui.MovePads.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MovePads.TextSize = 25.000
ScreenGui.MovePads.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":movepads"))
end)

ScreenGui.UICorner_72.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_72.Parent = ScreenGui.MovePads

ScreenGui.RemoveRegen.Name = "RemoveRegen"
ScreenGui.RemoveRegen.Parent = ScreenGui.MoveMainGui
ScreenGui.RemoveRegen.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RemoveRegen.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.RemoveRegen.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RemoveRegen.Font = Enum.Font.JosefinSans
ScreenGui.RemoveRegen.Text = "Easy Obby"
ScreenGui.RemoveRegen.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RemoveRegen.TextSize = 23.000
ScreenGui.RemoveRegen.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game:GetService'Players':Chat(("size me .5"))
	wait(0.2)
	game:GetService'Players':Chat((":removeobbykill"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -13.4572), Vector3.new(150, 0, -15))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("skydive me"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game:GetService'Players':Chat(("size me .5"))
	wait(0.2)
	game:GetService'Players':Chat((":removeobbykill"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, -1.25637), Vector3.new(150, 0, 0))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("skydive me"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game:GetService'Players':Chat(("size me .5"))
	wait(0.2)
	game:GetService'Players':Chat((":removeobbykill"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 9.54263), Vector3.new(150, 0, 10))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("skydive me"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game:GetService'Players':Chat(("size me .5"))
	wait(0.2)
	game:GetService'Players':Chat((":removeobbykill"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 19.7425), Vector3.new(150, 0, 20))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("skydive me"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game:GetService'Players':Chat(("size me .5"))
	wait(0.2)
	game:GetService'Players':Chat((":removeobbykill"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-24.3099, 2.20989, 29.7426), Vector3.new(150, 0, 30))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("skydive me"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
end)

ScreenGui.UICorner_73.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_73.Parent = ScreenGui.RemoveRegen

ScreenGui.MoveDividers.Name = "MoveDividers"
ScreenGui.MoveDividers.Parent = ScreenGui.MoveMainGui
ScreenGui.MoveDividers.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveDividers.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.MoveDividers.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveDividers.Font = Enum.Font.JosefinSans
ScreenGui.MoveDividers.Text = "Dividers"
ScreenGui.MoveDividers.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveDividers.TextSize = 25.000
ScreenGui.MoveDividers.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":movedividers"))
end)

ScreenGui.UICorner_74.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_74.Parent = ScreenGui.MoveDividers

ScreenGui.MoveHouse.Name = "MoveHouse"
ScreenGui.MoveHouse.Parent = ScreenGui.MoveMainGui
ScreenGui.MoveHouse.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveHouse.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.MoveHouse.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveHouse.Font = Enum.Font.JosefinSans
ScreenGui.MoveHouse.Text = "House"
ScreenGui.MoveHouse.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveHouse.TextSize = 25.000
ScreenGui.MoveHouse.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":movehouse"))
end)

ScreenGui.UICorner_75.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_75.Parent = ScreenGui.MoveHouse

ScreenGui.MoveObby.Name = "MoveObby"
ScreenGui.MoveObby.Parent = ScreenGui.MoveMainGui
ScreenGui.MoveObby.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveObby.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.MoveObby.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveObby.Font = Enum.Font.JosefinSans
ScreenGui.MoveObby.Text = "Obby"
ScreenGui.MoveObby.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveObby.TextSize = 25.000
ScreenGui.MoveObby.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":moveobby"))
end)

ScreenGui.UICorner_76.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_76.Parent = ScreenGui.MoveObby

ScreenGui.Moveobbywalls.Name = "Moveobbywalls*"
ScreenGui.Moveobbywalls.Parent = ScreenGui.MoveMainGui
ScreenGui.Moveobbywalls.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Moveobbywalls.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.Moveobbywalls.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Moveobbywalls.Font = Enum.Font.JosefinSans
ScreenGui.Moveobbywalls.Text = "Obby walls"
ScreenGui.Moveobbywalls.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Moveobbywalls.TextSize = 25.000
ScreenGui.Moveobbywalls.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":moveobbywalls"))
end)

ScreenGui.UICorner_77.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_77.Parent = ScreenGui.Moveobbywalls

ScreenGui.MoveRegenpad.Name = "MoveRegenpad"
ScreenGui.MoveRegenpad.Parent = ScreenGui.MoveMainGui
ScreenGui.MoveRegenpad.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MoveRegenpad.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.MoveRegenpad.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MoveRegenpad.Font = Enum.Font.JosefinSans
ScreenGui.MoveRegenpad.Text = "Regen Pad"
ScreenGui.MoveRegenpad.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MoveRegenpad.TextSize = 25.000
ScreenGui.MoveRegenpad.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":moveregenpad"))
end)

ScreenGui.UICorner_78.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_78.Parent = ScreenGui.MoveRegenpad

ScreenGui.UICorner_79.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_79.Parent = ScreenGui.MoveGuiDrag

ScreenGui.MusicGuiDrag.Name = "MusicGuiDrag"
ScreenGui.MusicGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.MusicGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.MusicGuiDrag.BorderSizePixel = 0
ScreenGui.MusicGuiDrag.Position = UDim2.new(0.580882311, 0, -0.00135678053, 0)
ScreenGui.MusicGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.MusicGuiDrag.Visible = false
ScreenGui.MusicGuiDrag.Active = true
ScreenGui.MusicGuiDrag.Draggable = true

ScreenGui.MusicMainpage1Gui.Name = "MusicMainpage1Gui"
ScreenGui.MusicMainpage1Gui.Parent = ScreenGui.MusicGuiDrag
ScreenGui.MusicMainpage1Gui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.MusicMainpage1Gui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.MusicMainpage1Gui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_33.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.TextLabel_33.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_33.BackgroundTransparency = 1.000
ScreenGui.TextLabel_33.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_33.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_33.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_33.Text = "Music Gui"
ScreenGui.TextLabel_33.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_33.TextSize = 25.000
ScreenGui.TextLabel_33.TextWrapped = true

ScreenGui.CryBaby.Name = "CryBaby"
ScreenGui.CryBaby.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.CryBaby.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CryBaby.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.CryBaby.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CryBaby.Font = Enum.Font.JosefinSans
ScreenGui.CryBaby.Text = "Cry baby"
ScreenGui.CryBaby.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CryBaby.TextSize = 25.000
ScreenGui.CryBaby.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 4553439313"))
	game:GetService'Players':Chat((".playbackspeed 0.90"))
	game:GetService'Players':Chat(("h Playing: Crybaby - Melanie Martinez"))
end)

ScreenGui.UICorner_80.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_80.Parent = ScreenGui.CryBaby

ScreenGui.Shrimps.Name = "Shrimps"
ScreenGui.Shrimps.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.Shrimps.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Shrimps.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Shrimps.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Shrimps.Font = Enum.Font.JosefinSans
ScreenGui.Shrimps.Text = "Shrimps"
ScreenGui.Shrimps.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Shrimps.TextSize = 25.000
ScreenGui.Shrimps.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 4600678488"))
	game:GetService'Players':Chat(("h Playing: Shrimps But It's Flamingo Screaming..."))
end)

ScreenGui.UICorner_81.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_81.Parent = ScreenGui.Shrimps

ScreenGui.Who.Name = "Who"
ScreenGui.Who.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.Who.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Who.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Who.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Who.Font = Enum.Font.JosefinSans
ScreenGui.Who.Text = "Who"
ScreenGui.Who.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Who.TextSize = 25.000
ScreenGui.Who.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 4461953104"))
	game:GetService'Players':Chat(("h Playing: Who? - Ft. Shiloh Dynasty"))
end)

ScreenGui.UICorner_82.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_82.Parent = ScreenGui.Who

ScreenGui.TakeAHint.Name = "TakeAHint"
ScreenGui.TakeAHint.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.TakeAHint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TakeAHint.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.TakeAHint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TakeAHint.Font = Enum.Font.JosefinSans
ScreenGui.TakeAHint.Text = "Take A Hint"
ScreenGui.TakeAHint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TakeAHint.TextSize = 25.000
ScreenGui.TakeAHint.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 2341549701"))
	game:GetService'Players':Chat(("h Playing: Take A Hint - Victorious"))
end)

ScreenGui.UICorner_83.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_83.Parent = ScreenGui.TakeAHint

ScreenGui.SantaTellMe.Name = "SantaTellMe"
ScreenGui.SantaTellMe.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.SantaTellMe.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.SantaTellMe.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.SantaTellMe.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.SantaTellMe.Font = Enum.Font.JosefinSans
ScreenGui.SantaTellMe.Text = " Santa Tell Me"
ScreenGui.SantaTellMe.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.SantaTellMe.TextSize = 23.000
ScreenGui.SantaTellMe.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 2546949814"))
	game:GetService'Players':Chat(("h Playing: Santa Tell Me - Ariana Grande"))
end)

ScreenGui.UICorner_84.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_84.Parent = ScreenGui.SantaTellMe

ScreenGui.MyWay.Name = "MyWay"
ScreenGui.MyWay.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.MyWay.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.MyWay.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.MyWay.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.MyWay.Font = Enum.Font.JosefinSans
ScreenGui.MyWay.Text = "My Way"
ScreenGui.MyWay.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.MyWay.TextSize = 25.000
ScreenGui.MyWay.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 1948564182"))
	game:GetService'Players':Chat((".playbackspeed 0.90"))
	game:GetService'Players':Chat(("h Playing: My Way - Ava Max"))
end)

ScreenGui.UICorner_85.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_85.Parent = ScreenGui.MyWay

ScreenGui.Cake.Name = "Cake"
ScreenGui.Cake.Parent = ScreenGui.MusicMainpage1Gui
ScreenGui.Cake.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Cake.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.Cake.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Cake.Font = Enum.Font.JosefinSans
ScreenGui.Cake.Text = "Cake"
ScreenGui.Cake.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Cake.TextSize = 25.000
ScreenGui.Cake.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 472231729"))
	game:GetService'Players':Chat((".playbackspeed 0.79"))
	game:GetService'Players':Chat(("h Playing: Cake - Melanie Martinez"))
end)

ScreenGui.UICorner_86.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_86.Parent = ScreenGui.Cake

ScreenGui.UICorner_87.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_87.Parent = ScreenGui.MusicMainpage1Gui

ScreenGui.MusicMainpage2Gui.Name = "MusicMainpage2Gui"
ScreenGui.MusicMainpage2Gui.Parent = ScreenGui.MusicGuiDrag
ScreenGui.MusicMainpage2Gui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.MusicMainpage2Gui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.MusicMainpage2Gui.Size = UDim2.new(0, 184, 0, 369)
ScreenGui.MusicMainpage2Gui.Visible = false

ScreenGui.TextLabel_34.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.TextLabel_34.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_34.BackgroundTransparency = 1.000
ScreenGui.TextLabel_34.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_34.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_34.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_34.Text = "Music Gui"
ScreenGui.TextLabel_34.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_34.TextSize = 25.000
ScreenGui.TextLabel_34.TextWrapped = true

ScreenGui.Detention.Name = "Detention"
ScreenGui.Detention.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.Detention.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Detention.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.Detention.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Detention.Font = Enum.Font.JosefinSans
ScreenGui.Detention.Text = "Detention"
ScreenGui.Detention.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Detention.TextSize = 25.000
ScreenGui.Detention.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 3908112818"))
	game:GetService'Players':Chat((".playbackspeed 0.95"))
	game:GetService'Players':Chat(("h Playing: Detention - Melanie Martinez"))
end)

ScreenGui.UICorner_88.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_88.Parent = ScreenGui.Detention

ScreenGui.Someone.Name = "Someone"
ScreenGui.Someone.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.Someone.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Someone.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Someone.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Someone.Font = Enum.Font.JosefinSans
ScreenGui.Someone.Text = "Someone"
ScreenGui.Someone.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Someone.TextSize = 25.000
ScreenGui.Someone.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":music 4574939786"))
	game:GetService'Players':Chat(("h Playing: Someone You Loved - Ed Sharon"))
end)

ScreenGui.UICorner_89.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_89.Parent = ScreenGui.Someone

ScreenGui.DeathBed.Name = "Death Bed"
ScreenGui.DeathBed.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.DeathBed.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.DeathBed.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.DeathBed.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.DeathBed.Font = Enum.Font.JosefinSans
ScreenGui.DeathBed.Text = "Death Bed"
ScreenGui.DeathBed.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.DeathBed.TextSize = 25.000

ScreenGui.UICorner_90.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_90.Parent = ScreenGui.DeathBed

ScreenGui.Wheels.Name = "Wheels"
ScreenGui.Wheels.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.Wheels.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Wheels.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.Wheels.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Wheels.Font = Enum.Font.JosefinSans
ScreenGui.Wheels.Text = "Wheels"
ScreenGui.Wheels.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Wheels.TextSize = 25.000
ScreenGui.Wheels.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 3898358473"))
	game:GetService'Players':Chat((".playbackspeed 0.87"))
	game:GetService'Players':Chat(("h Playing: Wheels on The Bus - Melanie Martinez"))
end)

ScreenGui.UICorner_91.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_91.Parent = ScreenGui.Wheels

ScreenGui.HighSchoolSh.Name = "HighSchoolSh"
ScreenGui.HighSchoolSh.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.HighSchoolSh.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.HighSchoolSh.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.HighSchoolSh.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.HighSchoolSh.Font = Enum.Font.JosefinSans
ScreenGui.HighSchoolSh.Text = "HighSchool SH"
ScreenGui.HighSchoolSh.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.HighSchoolSh.TextSize = 21.000
ScreenGui.HighSchoolSh.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 4342043245"))
	game:GetService'Players':Chat(("h Playing: Highschool Sweethearts - Melanie Martinez"))
end)

ScreenGui.UICorner_92.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_92.Parent = ScreenGui.HighSchoolSh

ScreenGui.ThePrincipal.Name = "The Principal"
ScreenGui.ThePrincipal.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.ThePrincipal.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.ThePrincipal.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.ThePrincipal.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.ThePrincipal.Font = Enum.Font.JosefinSans
ScreenGui.ThePrincipal.Text = "The Principal"
ScreenGui.ThePrincipal.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.ThePrincipal.TextSize = 24.000
ScreenGui.ThePrincipal.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 5499014274"))
	game:GetService'Players':Chat((".playbackspeed 0.66"))
	game:GetService'Players':Chat(("h Playing: The Principal - Melanie Martinez"))
end)

ScreenGui.UICorner_93.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_93.Parent = ScreenGui.ThePrincipal

ScreenGui.NursesOffice.Name = "Nurses Office"
ScreenGui.NursesOffice.Parent = ScreenGui.MusicMainpage2Gui
ScreenGui.NursesOffice.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.NursesOffice.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.NursesOffice.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.NursesOffice.Font = Enum.Font.JosefinSans
ScreenGui.NursesOffice.Text = "Nurses Office"
ScreenGui.NursesOffice.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.NursesOffice.TextSize = 23.000
ScreenGui.NursesOffice.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("music 5896678223"))
	game:GetService'Players':Chat((".playbackspeed 1.18"))
	game:GetService'Players':Chat(("h Playing: Nurse's Office - Melanie Martinez"))
end)

ScreenGui.UICorner_94.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_94.Parent = ScreenGui.NursesOffice

ScreenGui.UICorner_95.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_95.Parent = ScreenGui.MusicMainpage2Gui

ScreenGui.gotopage1Music.Name = "gotopage1Music"
ScreenGui.gotopage1Music.Parent = ScreenGui.MusicGuiDrag
ScreenGui.gotopage1Music.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ScreenGui.gotopage1Music.Position = UDim2.new(0.185950458, 0, 0.931764722, 0)
ScreenGui.gotopage1Music.Size = UDim2.new(0, 29, 0, 29)
ScreenGui.gotopage1Music.Font = Enum.Font.SourceSans
ScreenGui.gotopage1Music.Text = "<"
ScreenGui.gotopage1Music.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.gotopage1Music.TextScaled = true
ScreenGui.gotopage1Music.TextSize = 14.000
ScreenGui.gotopage1Music.TextWrapped = true
ScreenGui.gotopage1Music.MouseButton1Down:connect(function()
	ScreenGui.gotopage1Music.Visible = false
	ScreenGui.MusicMainpage1Gui.Visible = true
	ScreenGui.MusicMainpage2Gui.Visible = false
	ScreenGui.gotopage2Music.Visible = true
end)

ScreenGui.UICorner_96.CornerRadius = UDim.new(0.25, 0)
ScreenGui.UICorner_96.Parent = ScreenGui.gotopage1Music

ScreenGui.gotopage2Music.Name = "gotopage2Music"
ScreenGui.gotopage2Music.Parent = ScreenGui.MusicGuiDrag
ScreenGui.gotopage2Music.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ScreenGui.gotopage2Music.Position = UDim2.new(0.690082669, 0, 0.931764722, 0)
ScreenGui.gotopage2Music.Size = UDim2.new(0, 29, 0, 29)
ScreenGui.gotopage2Music.Font = Enum.Font.SourceSans
ScreenGui.gotopage2Music.Text = ">"
ScreenGui.gotopage2Music.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.gotopage2Music.TextScaled = true
ScreenGui.gotopage2Music.TextSize = 14.000
ScreenGui.gotopage2Music.TextWrapped = true
ScreenGui.gotopage2Music.MouseButton1Down:connect(function()
	ScreenGui.gotopage1Music.Visible = true
	ScreenGui.MusicMainpage1Gui.Visible = false
	ScreenGui.MusicMainpage2Gui.Visible = true
	ScreenGui.gotopage2Music.Visible = false
end)

ScreenGui.UICorner_97.CornerRadius = UDim.new(0.25, 0)
ScreenGui.UICorner_97.Parent = ScreenGui.gotopage2Music

ScreenGui.UICorner_98.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_98.Parent = ScreenGui.MusicGuiDrag

ScreenGui.AbusiveGuiDrag.Name = "AbusiveGuiDrag"
ScreenGui.AbusiveGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.AbusiveGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.AbusiveGuiDrag.BorderSizePixel = 0
ScreenGui.AbusiveGuiDrag.Position = UDim2.new(0.623774529, 0, -0.00135678053, 0)
ScreenGui.AbusiveGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.AbusiveGuiDrag.Visible = false
ScreenGui.AbusiveGuiDrag.Active = true
ScreenGui.AbusiveGuiDrag.Draggable = true

ScreenGui.AbusiveMainGui.Name = "AbusiveMainGui"
ScreenGui.AbusiveMainGui.Parent = ScreenGui.AbusiveGuiDrag
ScreenGui.AbusiveMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.AbusiveMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.AbusiveMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_35.Parent = ScreenGui.AbusiveMainGui
ScreenGui.TextLabel_35.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_35.BackgroundTransparency = 1.000
ScreenGui.TextLabel_35.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_35.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_35.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_35.Text = "Abusive Gui"
ScreenGui.TextLabel_35.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_35.TextSize = 25.000
ScreenGui.TextLabel_35.TextWrapped = true

ScreenGui.UICorner_99.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_99.Parent = ScreenGui.AbusiveMainGui

ScreenGui.Nothing2Abusive.Name = "Nothing2Abusive"
ScreenGui.Nothing2Abusive.Parent = ScreenGui.AbusiveMainGui
ScreenGui.Nothing2Abusive.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing2Abusive.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing2Abusive.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing2Abusive.Font = Enum.Font.JosefinSans
ScreenGui.Nothing2Abusive.Text = "Nothing"
ScreenGui.Nothing2Abusive.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing2Abusive.TextSize = 23.000

ScreenGui.UICorner_100.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_100.Parent = ScreenGui.Nothing2Abusive

ScreenGui.Nothing1Abusive.Name = "Nothing1Abusive"
ScreenGui.Nothing1Abusive.Parent = ScreenGui.AbusiveMainGui
ScreenGui.Nothing1Abusive.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing1Abusive.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Nothing1Abusive.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing1Abusive.Font = Enum.Font.JosefinSans
ScreenGui.Nothing1Abusive.Text = "Nothing"
ScreenGui.Nothing1Abusive.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing1Abusive.TextSize = 25.000

ScreenGui.UICorner_101.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_101.Parent = ScreenGui.Nothing1Abusive

ScreenGui.trapSpawn.Name = "trapSpawn"
ScreenGui.trapSpawn.Parent = ScreenGui.AbusiveMainGui
ScreenGui.trapSpawn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.trapSpawn.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.trapSpawn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.trapSpawn.Font = Enum.Font.JosefinSans
ScreenGui.trapSpawn.Text = "Trap Spawn"
ScreenGui.trapSpawn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.trapSpawn.TextSize = 25.000
ScreenGui.trapSpawn.MouseButton1Down:connect(function()
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-61.0644, 3.66557, -18.9544))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("skydive me"))
	wait(0.1)
	game:GetService'Players':Chat(("respawn me"))
	wait(0.2)
	game:GetService'Players':Chat(("size me .5"))
	wait(0.1)
	game:GetService'Players':Chat(("size me .8"))
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-58.4638, 1.928, -17.9348))
	wait(0.2)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("tp me me"))
	wait(0.1)
	game:GetService'Players':Chat(("undog me"))
	wait(0.1)
	game:GetService'Players':Chat(("reset me"))
end)

ScreenGui.UICorner_102.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_102.Parent = ScreenGui.trapSpawn

ScreenGui.Crash.Name = "Crash"
ScreenGui.Crash.Parent = ScreenGui.AbusiveMainGui
ScreenGui.Crash.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Crash.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.Crash.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Crash.Font = Enum.Font.JosefinSans
ScreenGui.Crash.Text = "Crash 2"
ScreenGui.Crash.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Crash.TextSize = 25.000
ScreenGui.Crash.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":regen"))
	wait(0.3)
	game:GetService'Players':Chat((":allpads"))
	wait(0.3)
	game:GetService("Players"):Chat("h Server Shutting Down")
	game:GetService("Players"):Chat("h Server Shutting Down")
	wait(0.8)
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
end)

ScreenGui.UICorner_103.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_103.Parent = ScreenGui.Crash

ScreenGui.CrashVampire.Name = "Crash Vampire"
ScreenGui.CrashVampire.Parent = ScreenGui.AbusiveMainGui
ScreenGui.CrashVampire.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CrashVampire.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.CrashVampire.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CrashVampire.Font = Enum.Font.JosefinSans
ScreenGui.CrashVampire.Text = "Crash 1"
ScreenGui.CrashVampire.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CrashVampire.TextSize = 25.000
ScreenGui.CrashVampire.MouseButton1Down:connect(function()
	game:GetService("Players"):Chat("h Server Shutting Down")
	game:GetService("Players"):Chat("gear me 94794847")
	wait(.5)
	game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.VampireVanquisher)
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
	wait()
	game:GetService("Players"):Chat("size me .3")
end)

ScreenGui.UICorner_104.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_104.Parent = ScreenGui.CrashVampire

ScreenGui.SilentCrash.Name = "SilentCrash"
ScreenGui.SilentCrash.Parent = ScreenGui.AbusiveMainGui
ScreenGui.SilentCrash.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.SilentCrash.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.SilentCrash.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.SilentCrash.Font = Enum.Font.JosefinSans
ScreenGui.SilentCrash.Text = "Warn Crash"
ScreenGui.SilentCrash.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.SilentCrash.TextSize = 25.000
ScreenGui.SilentCrash.MouseButton1Down:connect(function()
	game:GetService("Players"):Chat("h This Server Will Be Shutting Down Soon")
	wait(1)
	game:GetService("Players"):Chat("h Server Shutting down in (10)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (9)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (8)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (7)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (6)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (5)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (4)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (3)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (2)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService("Players"):Chat("h Server Shutting down in (1)")
	game:GetService("Players"):Chat("clr)")
	wait(0.1)
	game:GetService'Players':Chat((":regen"))
	wait(0.3)
	game:GetService'Players':Chat((":allpads"))
	wait(0.5)
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
end)

ScreenGui.UICorner_105.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_105.Parent = ScreenGui.SilentCrash

ScreenGui.REGuiOn.Name = "R+EGuiOn"
ScreenGui.REGuiOn.Parent = ScreenGui.AbusiveMainGui
ScreenGui.REGuiOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.REGuiOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.REGuiOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.REGuiOn.Visible = false
ScreenGui.REGuiOn.Font = Enum.Font.JosefinSans
ScreenGui.REGuiOn.Text = "R + E"
ScreenGui.REGuiOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.REGuiOn.TextSize = 20.000
ScreenGui.REGuiOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.REGuiOn.MouseButton1Down:connect(function()
	ScreenGui.REGuiOn.Visible = false
	ScreenGui.REGuiOff.Visible = true
	game:GetService("Players"):Chat(":reoff")
end)

ScreenGui.UICorner_106.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_106.Parent = ScreenGui.REGuiOn

ScreenGui.TextLabel_36.Parent = ScreenGui.REGuiOn
ScreenGui.TextLabel_36.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_36.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_36.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_36.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_36.Text = ""
ScreenGui.TextLabel_36.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_36.TextSize = 14.000

ScreenGui.UICorner_107.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_107.Parent = ScreenGui.TextLabel_36

ScreenGui.REGuiOff.Name = "R+EGuiOff"
ScreenGui.REGuiOff.Parent = ScreenGui.AbusiveMainGui
ScreenGui.REGuiOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.REGuiOff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.REGuiOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.REGuiOff.Font = Enum.Font.JosefinSans
ScreenGui.REGuiOff.Text = "R + E"
ScreenGui.REGuiOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.REGuiOff.TextSize = 20.000
ScreenGui.REGuiOff.TextWrapped = true
ScreenGui.REGuiOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.REGuiOff.MouseButton1Down:connect(function()
	ScreenGui.REGuiOn.Visible = true
	ScreenGui.REGuiOff.Visible = false
	game:GetService("Players"):Chat(":reon")
end)

ScreenGui.UICorner_108.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_108.Parent = ScreenGui.REGuiOff

ScreenGui.TextLabel_37.Parent = ScreenGui.REGuiOff
ScreenGui.TextLabel_37.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_37.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_37.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_37.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_37.Text = ""
ScreenGui.TextLabel_37.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_37.TextSize = 14.000

ScreenGui.UICorner_109.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_109.Parent = ScreenGui.TextLabel_37

ScreenGui.UICorner_110.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_110.Parent = ScreenGui.AbusiveGuiDrag

ScreenGui.QuickGuiDrag.Name = "QuickGuiDrag"
ScreenGui.QuickGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.QuickGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.QuickGuiDrag.BorderSizePixel = 0
ScreenGui.QuickGuiDrag.Position = UDim2.new(0.623774529, 0, -0.00135678053, 0)
ScreenGui.QuickGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.QuickGuiDrag.Visible = false
ScreenGui.QuickGuiDrag.Active = true
ScreenGui.QuickGuiDrag.Draggable = true

ScreenGui.QuickMainGui.Name = "QuickMainGui"
ScreenGui.QuickMainGui.Parent = ScreenGui.QuickGuiDrag
ScreenGui.QuickMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.QuickMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.QuickMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_38.Parent = ScreenGui.QuickMainGui
ScreenGui.TextLabel_38.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_38.BackgroundTransparency = 1.000
ScreenGui.TextLabel_38.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_38.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_38.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_38.Text = "Quick Gui"
ScreenGui.TextLabel_38.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_38.TextSize = 25.000
ScreenGui.TextLabel_38.TextWrapped = true

ScreenGui.UICorner_111.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_111.Parent = ScreenGui.QuickMainGui

ScreenGui.Fly.Name = "Fly"
ScreenGui.Fly.Parent = ScreenGui.QuickMainGui
ScreenGui.Fly.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Fly.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.Fly.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Fly.Font = Enum.Font.JosefinSans
ScreenGui.Fly.Text = "Fly"
ScreenGui.Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Fly.TextSize = 25.000
ScreenGui.Fly.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("fly me"))
end)

ScreenGui.UICorner_112.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_112.Parent = ScreenGui.Fly

ScreenGui.AttachWall.Name = "AttachWall"
ScreenGui.AttachWall.Parent = ScreenGui.QuickMainGui
ScreenGui.AttachWall.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AttachWall.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.AttachWall.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AttachWall.Font = Enum.Font.JosefinSans
ScreenGui.AttachWall.Text = "Attach Wall"
ScreenGui.AttachWall.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AttachWall.TextSize = 23.000
ScreenGui.AttachWall.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("punish me"))
	wait(0.1)
	game:GetService'Players':Chat(("unpunish me"))
end)

ScreenGui.UICorner_113.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_113.Parent = ScreenGui.AttachWall

ScreenGui.AttachFloor.Name = "AttachFloor"
ScreenGui.AttachFloor.Parent = ScreenGui.QuickMainGui
ScreenGui.AttachFloor.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AttachFloor.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.AttachFloor.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AttachFloor.Font = Enum.Font.JosefinSans
ScreenGui.AttachFloor.Text = "Attach Floor"
ScreenGui.AttachFloor.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AttachFloor.TextSize = 25.000
ScreenGui.AttachFloor.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("stun me"))
	wait(0.75)
	game:GetService'Players':Chat(("punish me"))
	wait(0.1) 
	game:GetService'Players':Chat(("unpunish me"))
end)

ScreenGui.UICorner_114.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_114.Parent = ScreenGui.AttachFloor

ScreenGui.Unchar.Name = "Unchar"
ScreenGui.Unchar.Parent = ScreenGui.QuickMainGui
ScreenGui.Unchar.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Unchar.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.Unchar.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Unchar.Font = Enum.Font.JosefinSans
ScreenGui.Unchar.Text = "Unchar"
ScreenGui.Unchar.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Unchar.TextSize = 25.000
ScreenGui.Unchar.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("unchar me"))
end)

ScreenGui.UICorner_115.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_115.Parent = ScreenGui.Unchar

ScreenGui.Respawn.Name = "Respawn"
ScreenGui.Respawn.Parent = ScreenGui.QuickMainGui
ScreenGui.Respawn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Respawn.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.Respawn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Respawn.Font = Enum.Font.JosefinSans
ScreenGui.Respawn.Text = "Respawn"
ScreenGui.Respawn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Respawn.TextSize = 25.000
ScreenGui.Respawn.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("respawn me"))
end)

ScreenGui.UICorner_116.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_116.Parent = ScreenGui.Respawn

ScreenGui.Reset.Name = "Reset"
ScreenGui.Reset.Parent = ScreenGui.QuickMainGui
ScreenGui.Reset.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Reset.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.Reset.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Reset.Font = Enum.Font.JosefinSans
ScreenGui.Reset.Text = "Reset"
ScreenGui.Reset.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Reset.TextSize = 25.000
ScreenGui.Reset.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("reset me"))
end)

ScreenGui.UICorner_117.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_117.Parent = ScreenGui.Reset

ScreenGui.UnFly.Name = "UnFly"
ScreenGui.UnFly.Parent = ScreenGui.QuickMainGui
ScreenGui.UnFly.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.UnFly.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.UnFly.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.UnFly.Font = Enum.Font.JosefinSans
ScreenGui.UnFly.Text = "UnFly"
ScreenGui.UnFly.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.UnFly.TextSize = 25.000
ScreenGui.UnFly.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("unfly me"))
end)

ScreenGui.UICorner_118.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_118.Parent = ScreenGui.UnFly

ScreenGui.UICorner_119.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_119.Parent = ScreenGui.QuickGuiDrag

ScreenGui.GearGuiDrag.Name = "GearGuiDrag"
ScreenGui.GearGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.GearGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.GearGuiDrag.BorderSizePixel = 0
ScreenGui.GearGuiDrag.Position = UDim2.new(0.623774529, 0, -0.00135678053, 0)
ScreenGui.GearGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.GearGuiDrag.Visible = false
ScreenGui.GearGuiDrag.Active = true
ScreenGui.GearGuiDrag.Draggable = true

ScreenGui.GearMainGui.Name = "GearMainGui"
ScreenGui.GearMainGui.Parent = ScreenGui.GearGuiDrag
ScreenGui.GearMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.GearMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.GearMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_39.Parent = ScreenGui.GearMainGui
ScreenGui.TextLabel_39.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_39.BackgroundTransparency = 1.000
ScreenGui.TextLabel_39.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_39.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_39.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_39.Text = "Gear Gui"
ScreenGui.TextLabel_39.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_39.TextSize = 25.000
ScreenGui.TextLabel_39.TextWrapped = true

ScreenGui.UICorner_120.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_120.Parent = ScreenGui.GearMainGui

ScreenGui.CarGear.Name = "CarGear"
ScreenGui.CarGear.Parent = ScreenGui.GearMainGui
ScreenGui.CarGear.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.CarGear.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.CarGear.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.CarGear.Font = Enum.Font.JosefinSans
ScreenGui.CarGear.Text = "Car"
ScreenGui.CarGear.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.CarGear.TextSize = 25.000
ScreenGui.CarGear.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000253519495"))
end)

ScreenGui.UICorner_121.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_121.Parent = ScreenGui.CarGear

ScreenGui.JailTrap.Name = "JailTrap"
ScreenGui.JailTrap.Parent = ScreenGui.GearMainGui
ScreenGui.JailTrap.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.JailTrap.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.JailTrap.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.JailTrap.Font = Enum.Font.JosefinSans
ScreenGui.JailTrap.Text = "Jail Trap"
ScreenGui.JailTrap.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.JailTrap.TextSize = 23.000
ScreenGui.JailTrap.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 00000000000000000082357101"))
end)

ScreenGui.UICorner_122.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_122.Parent = ScreenGui.JailTrap

ScreenGui.PaintBucket.Name = "PaintBucket"
ScreenGui.PaintBucket.Parent = ScreenGui.GearMainGui
ScreenGui.PaintBucket.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PaintBucket.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.PaintBucket.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PaintBucket.Font = Enum.Font.JosefinSans
ScreenGui.PaintBucket.Text = "Paint Bucket"
ScreenGui.PaintBucket.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PaintBucket.TextSize = 25.000
ScreenGui.PaintBucket.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 00000000000000000018474459"))
end)

ScreenGui.UICorner_123.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_123.Parent = ScreenGui.PaintBucket

ScreenGui.BoomBox.Name = "BoomBox"
ScreenGui.BoomBox.Parent = ScreenGui.GearMainGui
ScreenGui.BoomBox.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.BoomBox.Position = UDim2.new(0.0923912972, 0, 0.617886186, 0)
ScreenGui.BoomBox.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.BoomBox.Font = Enum.Font.JosefinSans
ScreenGui.BoomBox.Text = "BoomBox"
ScreenGui.BoomBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.BoomBox.TextSize = 25.000
ScreenGui.BoomBox.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000212641536"))
end)

ScreenGui.UICorner_124.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_124.Parent = ScreenGui.BoomBox

ScreenGui.LaserGun.Name = "LaserGun"
ScreenGui.LaserGun.Parent = ScreenGui.GearMainGui
ScreenGui.LaserGun.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.LaserGun.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.LaserGun.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.LaserGun.Font = Enum.Font.JosefinSans
ScreenGui.LaserGun.Text = "Laser Gun"
ScreenGui.LaserGun.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.LaserGun.TextSize = 25.000
ScreenGui.LaserGun.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000130113146"))
end)

ScreenGui.UICorner_125.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_125.Parent = ScreenGui.LaserGun

ScreenGui.LaserPens.Name = "LaserPens"
ScreenGui.LaserPens.Parent = ScreenGui.GearMainGui
ScreenGui.LaserPens.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.LaserPens.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.LaserPens.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.LaserPens.Font = Enum.Font.JosefinSans
ScreenGui.LaserPens.Text = "Laser Pens"
ScreenGui.LaserPens.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.LaserPens.TextSize = 25.000
ScreenGui.LaserPens.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000115377964"))
end)

ScreenGui.UICorner_126.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_126.Parent = ScreenGui.LaserPens

ScreenGui.IvoryGear.Name = "IvoryGear"
ScreenGui.IvoryGear.Parent = ScreenGui.GearMainGui
ScreenGui.IvoryGear.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.IvoryGear.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.IvoryGear.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.IvoryGear.Font = Enum.Font.JosefinSans
ScreenGui.IvoryGear.Text = "Ivory"
ScreenGui.IvoryGear.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.IvoryGear.TextSize = 25.000
ScreenGui.IvoryGear.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 000000000000000000108158379"))
end)

ScreenGui.UICorner_127.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_127.Parent = ScreenGui.IvoryGear

ScreenGui.UICorner_128.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_128.Parent = ScreenGui.GearGuiDrag

ScreenGui.PadGuiDrag.Name = "PadGuiDrag"
ScreenGui.PadGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.PadGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.PadGuiDrag.BorderSizePixel = 0
ScreenGui.PadGuiDrag.Position = UDim2.new(0.68321079, 0, 0.0108548887, 0)
ScreenGui.PadGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.PadGuiDrag.Visible = false
ScreenGui.PadGuiDrag.Active = true
ScreenGui.PadGuiDrag.Draggable = true

ScreenGui.PadMainGui.Name = "PadMainGui"
ScreenGui.PadMainGui.Parent = ScreenGui.PadGuiDrag
ScreenGui.PadMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.PadMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.PadMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_40.Parent = ScreenGui.PadMainGui
ScreenGui.TextLabel_40.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_40.BackgroundTransparency = 1.000
ScreenGui.TextLabel_40.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_40.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_40.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_40.Text = "Pad Gui"
ScreenGui.TextLabel_40.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_40.TextSize = 25.000
ScreenGui.TextLabel_40.TextWrapped = true

ScreenGui.FindPads.Name = "FindPads"
ScreenGui.FindPads.Parent = ScreenGui.PadMainGui
ScreenGui.FindPads.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.FindPads.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.FindPads.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.FindPads.Font = Enum.Font.JosefinSans
ScreenGui.FindPads.Text = "Find Pads"
ScreenGui.FindPads.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.FindPads.TextSize = 25.000
ScreenGui.FindPads.MouseButton1Down:connect(function()
	FPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4107, 8.23, 63.2582))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 2008.23, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 4008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 6008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 8008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 10008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 12008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 14008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 16008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 18008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 20008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 22008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 24008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 26008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 28008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 30008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 32008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 34008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 36008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 38008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4064, 40008.18, 63.3072))
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FPos
end)

ScreenGui.UICorner_129.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_129.Parent = ScreenGui.FindPads

ScreenGui.Nothing2Pad.Name = "Nothing2Pad"
ScreenGui.Nothing2Pad.Parent = ScreenGui.PadMainGui
ScreenGui.Nothing2Pad.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing2Pad.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing2Pad.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing2Pad.Font = Enum.Font.JosefinSans
ScreenGui.Nothing2Pad.Text = "Get Pad"
ScreenGui.Nothing2Pad.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing2Pad.TextSize = 25.000
ScreenGui.Nothing2Pad.MouseButton1Down:connect(function()
	local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
	local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
	wait(0.125)
	pad.CanCollide = false
	repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.125)
	pad.CFrame = padCFrame
	pad.CanCollide = true
end)

ScreenGui.UICorner_130.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_130.Parent = ScreenGui.Nothing2Pad

ScreenGui.RegenPads.Name = "RegenPads"
ScreenGui.RegenPads.Parent = ScreenGui.PadMainGui
ScreenGui.RegenPads.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RegenPads.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.RegenPads.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RegenPads.Font = Enum.Font.JosefinSans
ScreenGui.RegenPads.Text = "Regen"
ScreenGui.RegenPads.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RegenPads.TextSize = 25.000
ScreenGui.RegenPads.MouseButton1Down:connect(function()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end)

ScreenGui.UICorner_131.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_131.Parent = ScreenGui.RegenPads

ScreenGui.GetAllPad.Name = "GetAllPad"
ScreenGui.GetAllPad.Parent = ScreenGui.PadMainGui
ScreenGui.GetAllPad.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GetAllPad.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.GetAllPad.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GetAllPad.Font = Enum.Font.JosefinSans
ScreenGui.GetAllPad.Text = "Get All"
ScreenGui.GetAllPad.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GetAllPad.TextSize = 25.000
ScreenGui.GetAllPad.MouseButton1Down:connect(function()
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
end)

ScreenGui.UICorner_132.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_132.Parent = ScreenGui.GetAllPad

ScreenGui.GotoPad.Name = "GotoPad"
ScreenGui.GotoPad.Parent = ScreenGui.PadMainGui
ScreenGui.GotoPad.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GotoPad.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.GotoPad.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GotoPad.Font = Enum.Font.JosefinSans
ScreenGui.GotoPad.Text = "Goto Pad"
ScreenGui.GotoPad.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GotoPad.TextSize = 25.000
ScreenGui.GotoPad.MouseButton1Down:connect(function()
	local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
	wait(0.125)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = padCFrame
end)

ScreenGui.UICorner_133.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_133.Parent = ScreenGui.GotoPad

ScreenGui.UICorner_134.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_134.Parent = ScreenGui.PadMainGui

ScreenGui.PermOff.Name = "PermOff"
ScreenGui.PermOff.Parent = ScreenGui.PadMainGui
ScreenGui.PermOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PermOff.Position = UDim2.new(0.0920000002, 0, 0.613109291, 0)
ScreenGui.PermOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PermOff.Font = Enum.Font.JosefinSans
ScreenGui.PermOff.Text = "Perm"
ScreenGui.PermOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PermOff.TextSize = 25.000
ScreenGui.PermOff.TextWrapped = true
ScreenGui.PermOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PermOff.MouseButton1Down:connect(function()
	ScreenGui.PermOn.Visible = true
	ScreenGui.PermOff.Visible = false
	game:GetService'Players':Chat((":perm"))
end)

ScreenGui.UICorner_135.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_135.Parent = ScreenGui.PermOff

ScreenGui.TextLabel_41.Parent = ScreenGui.PermOff
ScreenGui.TextLabel_41.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_41.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_41.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_41.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_41.Text = ""
ScreenGui.TextLabel_41.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_41.TextSize = 14.000

ScreenGui.UICorner_136.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_136.Parent = ScreenGui.TextLabel_41

ScreenGui.PermOn.Name = "PermOn"
ScreenGui.PermOn.Parent = ScreenGui.PadMainGui
ScreenGui.PermOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PermOn.Position = UDim2.new(0.0920000002, 0, 0.613109291, 0)
ScreenGui.PermOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PermOn.Visible = false
ScreenGui.PermOn.Font = Enum.Font.JosefinSans
ScreenGui.PermOn.Text = "Perm"
ScreenGui.PermOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PermOn.TextSize = 25.000
ScreenGui.PermOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PermOn.MouseButton1Down:connect(function()
	ScreenGui.PermOn.Visible = false
	ScreenGui.PermOff.Visible = true
	game:GetService'Players':Chat((":unperm"))
end)

ScreenGui.UICorner_137.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_137.Parent = ScreenGui.PermOn

ScreenGui.TextLabel_42.Parent = ScreenGui.PermOn
ScreenGui.TextLabel_42.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_42.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_42.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_42.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_42.Text = ""
ScreenGui.TextLabel_42.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_42.TextSize = 14.000

ScreenGui.UICorner_138.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_138.Parent = ScreenGui.TextLabel_42

ScreenGui.PermAllPadsOff.Name = "PermAllPadsOff"
ScreenGui.PermAllPadsOff.Parent = ScreenGui.PadMainGui
ScreenGui.PermAllPadsOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PermAllPadsOff.Position = UDim2.new(0.0920000002, 0, 0.745900631, 0)
ScreenGui.PermAllPadsOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PermAllPadsOff.Font = Enum.Font.JosefinSans
ScreenGui.PermAllPadsOff.Text = "Perm All Pads"
ScreenGui.PermAllPadsOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PermAllPadsOff.TextSize = 17.000
ScreenGui.PermAllPadsOff.TextWrapped = true
ScreenGui.PermAllPadsOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PermAllPadsOff.MouseButton1Down:connect(function()
	ScreenGui.PermAllPadsOff.Visible = false
	ScreenGui.PermAllPadsOn.Visible = true
	game:GetService'Players':Chat((":permallpads"))
end)

ScreenGui.UICorner_139.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_139.Parent = ScreenGui.PermAllPadsOff

ScreenGui.TextLabel_43.Parent = ScreenGui.PermAllPadsOff
ScreenGui.TextLabel_43.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_43.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_43.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_43.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_43.Text = ""
ScreenGui.TextLabel_43.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_43.TextSize = 14.000

ScreenGui.UICorner_140.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_140.Parent = ScreenGui.TextLabel_43

ScreenGui.PermAllPadsOn.Name = "PermAllPadsOn"
ScreenGui.PermAllPadsOn.Parent = ScreenGui.PadMainGui
ScreenGui.PermAllPadsOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PermAllPadsOn.Position = UDim2.new(0.0920000002, 0, 0.745900631, 0)
ScreenGui.PermAllPadsOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PermAllPadsOn.Visible = false
ScreenGui.PermAllPadsOn.Font = Enum.Font.JosefinSans
ScreenGui.PermAllPadsOn.Text = "Perm All Pads"
ScreenGui.PermAllPadsOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PermAllPadsOn.TextSize = 17.000
ScreenGui.PermAllPadsOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.PermAllPadsOn.MouseButton1Down:connect(function()
	ScreenGui.PermAllPadsOff.Visible = true
	ScreenGui.PermAllPadsOn.Visible = false
	game:GetService'Players':Chat((":unpermallpads"))
end)

ScreenGui.UICorner_141.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_141.Parent = ScreenGui.PermAllPadsOn

ScreenGui.TextLabel_44.Parent = ScreenGui.PermAllPadsOn
ScreenGui.TextLabel_44.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_44.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_44.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_44.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_44.Text = ""
ScreenGui.TextLabel_44.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_44.TextSize = 14.000

ScreenGui.UICorner_142.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_142.Parent = ScreenGui.TextLabel_44

ScreenGui.UICorner_143.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_143.Parent = ScreenGui.PadGuiDrag

ScreenGui.PaintGuiDrag.Name = "PaintGuiDrag"
ScreenGui.PaintGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.PaintGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.PaintGuiDrag.BorderSizePixel = 0
ScreenGui.PaintGuiDrag.Visible = false
ScreenGui.PaintGuiDrag.Position = UDim2.new(0.155637249, 0, 0.0122117409, 0)
ScreenGui.PaintGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.PaintGuiDrag.Active = true
ScreenGui.PaintGuiDrag.Draggable = true

ScreenGui.PaintMainGui.Name = "PaintMainGui"
ScreenGui.PaintMainGui.Parent = ScreenGui.PaintGuiDrag
ScreenGui.PaintMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.PaintMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.PaintMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_45.Parent = ScreenGui.PaintMainGui
ScreenGui.TextLabel_45.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_45.BackgroundTransparency = 1.000
ScreenGui.TextLabel_45.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_45.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_45.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_45.Text = "Paint Gui"
ScreenGui.TextLabel_45.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_45.TextSize = 25.000
ScreenGui.TextLabel_45.TextWrapped = true

ScreenGui.UICorner_144.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_144.Parent = ScreenGui.PaintMainGui

ScreenGui.NightsFavPaint.Name = "NightsFavPaint"
ScreenGui.NightsFavPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.NightsFavPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.NightsFavPaint.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.NightsFavPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.NightsFavPaint.Font = Enum.Font.JosefinSans
ScreenGui.NightsFavPaint.Text = "Night's Fav"
ScreenGui.NightsFavPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.NightsFavPaint.TextSize = 25.000

ScreenGui.UICorner_145.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_145.Parent = ScreenGui.NightsFavPaint

ScreenGui.Notthing1Paint.Name = "Notthing1Paint"
ScreenGui.Notthing1Paint.Parent = ScreenGui.PaintMainGui
ScreenGui.Notthing1Paint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Notthing1Paint.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Notthing1Paint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Notthing1Paint.Font = Enum.Font.JosefinSans
ScreenGui.Notthing1Paint.Text = "nothing"
ScreenGui.Notthing1Paint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Notthing1Paint.TextSize = 25.000

ScreenGui.UICorner_146.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_146.Parent = ScreenGui.Notthing1Paint

ScreenGui.AllWgitePaint.Name = "AllWgitePaint"
ScreenGui.AllWgitePaint.Parent = ScreenGui.PaintMainGui
ScreenGui.AllWgitePaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AllWgitePaint.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.AllWgitePaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AllWgitePaint.Font = Enum.Font.JosefinSans
ScreenGui.AllWgitePaint.Text = "All White"
ScreenGui.AllWgitePaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AllWgitePaint.TextSize = 25.000

ScreenGui.UICorner_147.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_147.Parent = ScreenGui.AllWgitePaint

ScreenGui.AllBlackPaint.Name = "AllBlackPaint"
ScreenGui.AllBlackPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.AllBlackPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AllBlackPaint.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.AllBlackPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AllBlackPaint.Font = Enum.Font.JosefinSans
ScreenGui.AllBlackPaint.Text = "All Black"
ScreenGui.AllBlackPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AllBlackPaint.TextSize = 25.000

ScreenGui.UICorner_148.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_148.Parent = ScreenGui.AllBlackPaint

ScreenGui.AllOriginalPaint.Name = "AllOriginalPaint"
ScreenGui.AllOriginalPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.AllOriginalPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AllOriginalPaint.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.AllOriginalPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AllOriginalPaint.Font = Enum.Font.JosefinSans
ScreenGui.AllOriginalPaint.Text = "Original"
ScreenGui.AllOriginalPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AllOriginalPaint.TextSize = 25.000

ScreenGui.UICorner_149.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_149.Parent = ScreenGui.AllOriginalPaint

ScreenGui.AllRandomPaint.Name = "AllRandomPaint"
ScreenGui.AllRandomPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.AllRandomPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AllRandomPaint.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.AllRandomPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AllRandomPaint.Font = Enum.Font.JosefinSans
ScreenGui.AllRandomPaint.Text = "All Random"
ScreenGui.AllRandomPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AllRandomPaint.TextSize = 25.000

ScreenGui.UICorner_150.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_150.Parent = ScreenGui.AllRandomPaint

ScreenGui.ScalesFavPaint.Name = "ScalesFavPaint"
ScreenGui.ScalesFavPaint.Parent = ScreenGui.PaintMainGui
ScreenGui.ScalesFavPaint.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.ScalesFavPaint.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.ScalesFavPaint.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.ScalesFavPaint.Font = Enum.Font.JosefinSans
ScreenGui.ScalesFavPaint.Text = "Scale's Fav"
ScreenGui.ScalesFavPaint.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.ScalesFavPaint.TextSize = 25.000

ScreenGui.UICorner_151.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_151.Parent = ScreenGui.ScalesFavPaint

ScreenGui.UICorner_152.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_152.Parent = ScreenGui.PaintGuiDrag

ScreenGui.HelpfullGuiDrag.Name = "HelpfullGuiDrag"
ScreenGui.HelpfullGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.HelpfullGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.HelpfullGuiDrag.BorderSizePixel = 0
ScreenGui.HelpfullGuiDrag.Position = UDim2.new(0.522058845, 0, 0.0122117409, 0)
ScreenGui.HelpfullGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.HelpfullGuiDrag.Visible = false
ScreenGui.HelpfullGuiDrag.Active = true
ScreenGui.HelpfullGuiDrag.Draggable = true

ScreenGui.HelpfullMainGui.Name = "HelpfullMainGui"
ScreenGui.HelpfullMainGui.Parent = ScreenGui.HelpfullGuiDrag
ScreenGui.HelpfullMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.HelpfullMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.HelpfullMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_46.Parent = ScreenGui.HelpfullMainGui
ScreenGui.TextLabel_46.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_46.BackgroundTransparency = 1.000
ScreenGui.TextLabel_46.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_46.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_46.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_46.Text = "Helpfull Gui"
ScreenGui.TextLabel_46.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_46.TextSize = 25.000
ScreenGui.TextLabel_46.TextWrapped = true

ScreenGui.UICorner_153.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_153.Parent = ScreenGui.HelpfullMainGui

ScreenGui.NoObbyKill.Name = "No Obby Kill"
ScreenGui.NoObbyKill.Parent = ScreenGui.HelpfullMainGui
ScreenGui.NoObbyKill.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.NoObbyKill.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.NoObbyKill.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.NoObbyKill.Font = Enum.Font.JosefinSans
ScreenGui.NoObbyKill.Text = "No Obby Kill"
ScreenGui.NoObbyKill.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.NoObbyKill.TextSize = 25.000
ScreenGui.NoObbyKill.MouseButton1Down:connect(function()
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
end)

ScreenGui.UICorner_154.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_154.Parent = ScreenGui.NoObbyKill

ScreenGui.RemovePhantomBp.Name = "RemovePhantomBp"
ScreenGui.RemovePhantomBp.Parent = ScreenGui.HelpfullMainGui
ScreenGui.RemovePhantomBp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RemovePhantomBp.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.RemovePhantomBp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RemovePhantomBp.Font = Enum.Font.JosefinSans
ScreenGui.RemovePhantomBp.Text = "Click Tp"
ScreenGui.RemovePhantomBp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RemovePhantomBp.TextScaled = true
ScreenGui.RemovePhantomBp.TextSize = 25.000
ScreenGui.RemovePhantomBp.TextWrapped = true
ScreenGui.RemovePhantomBp.MouseButton1Down:connect(function()
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
end)

ScreenGui.UICorner_155.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_155.Parent = ScreenGui.RemovePhantomBp

ScreenGui.PhantomBp.Name = "PhantomBp"
ScreenGui.PhantomBp.Parent = ScreenGui.HelpfullMainGui
ScreenGui.PhantomBp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PhantomBp.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.PhantomBp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PhantomBp.Font = Enum.Font.JosefinSans
ScreenGui.PhantomBp.Text = "Phantom BP"
ScreenGui.PhantomBp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PhantomBp.TextSize = 25.000
ScreenGui.PhantomBp.MouseButton1Down:connect(function()
	local Baseplate = Instance.new("Part", GameFolder["Workspace"])
	Baseplate.Name = "PhantomBaseplate"
	Baseplate.BrickColor = BrickColor.new("Bright green")
	Baseplate.Size = Vector3.new(1000, 1.2, 1000)
	Baseplate.TopSurface = "Studs"
	Baseplate.Anchored = true
end)

ScreenGui.UICorner_156.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_156.Parent = ScreenGui.PhantomBp

ScreenGui.Btools.Name = "Btools"
ScreenGui.Btools.Parent = ScreenGui.HelpfullMainGui
ScreenGui.Btools.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Btools.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.Btools.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Btools.Font = Enum.Font.JosefinSans
ScreenGui.Btools.Text = "Btools"
ScreenGui.Btools.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Btools.TextSize = 25.000
ScreenGui.Btools.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 00000000000000000016200204"))
	wait(0.1)
	game:GetService'Players':Chat(("gear me 00000000000000000016200402"))
	wait(0.1)
	game:GetService'Players':Chat(("gear me 00000000000000000016969792"))
	wait(0.1)
	game:GetService'Players':Chat(("gear me 00000000000000000073089190"))
	wait(0.1)
	game:GetService'Players':Chat(("gear me 00000000000000000021001552"))
end)

ScreenGui.UICorner_157.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_157.Parent = ScreenGui.Btools

ScreenGui.Rejoin.Name = "Rejoin"
ScreenGui.Rejoin.Parent = ScreenGui.HelpfullMainGui
ScreenGui.Rejoin.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Rejoin.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.Rejoin.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Rejoin.Font = Enum.Font.JosefinSans
ScreenGui.Rejoin.Text = "Trap"
ScreenGui.Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Rejoin.TextSize = 25.000
ScreenGui.Rejoin.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("freeze me"))
	wait(0.10)
	game:GetService'Players':Chat(("name me "))
	wait(0.10)
	game:GetService'Players':Chat(("thaw me"))
end)

ScreenGui.UICorner_158.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_158.Parent = ScreenGui.Rejoin

ScreenGui.Invert.Name = "Invert"
ScreenGui.Invert.Parent = ScreenGui.HelpfullMainGui
ScreenGui.Invert.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Invert.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.Invert.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Invert.Font = Enum.Font.JosefinSans
ScreenGui.Invert.Text = "Invert Colors"
ScreenGui.Invert.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Invert.TextSize = 25.000
ScreenGui.Invert.MouseButton1Down:connect(function()
	for i = 1,25 do
		game.Workspace.CurrentCamera.GrayScale:Destroy()
	end
end)

ScreenGui.UICorner_159.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_159.Parent = ScreenGui.Invert

ScreenGui.NoAdminUnpunish.Name = "No Admin Unpunish"
ScreenGui.NoAdminUnpunish.Parent = ScreenGui.HelpfullMainGui
ScreenGui.NoAdminUnpunish.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.NoAdminUnpunish.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.NoAdminUnpunish.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.NoAdminUnpunish.Font = Enum.Font.JosefinSans
ScreenGui.NoAdminUnpunish.Text = "No Admin Unpunish"
ScreenGui.NoAdminUnpunish.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.NoAdminUnpunish.TextScaled = true
ScreenGui.NoAdminUnpunish.TextSize = 25.000
ScreenGui.NoAdminUnpunish.TextWrapped = true
ScreenGui.NoAdminUnpunish.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:Destroy()
end)

ScreenGui.UICorner_160.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_160.Parent = ScreenGui.NoAdminUnpunish

ScreenGui.UICorner_161.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_161.Parent = ScreenGui.HelpfullGuiDrag

ScreenGui.AntiGuiDrag.Name = "AntiGuiDrag"
ScreenGui.AntiGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.AntiGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.AntiGuiDrag.BorderSizePixel = 0
ScreenGui.AntiGuiDrag.Position = UDim2.new(0.844362736, 0, -0.000128279324, 0)
ScreenGui.AntiGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.AntiGuiDrag.Visible = false
ScreenGui.AntiGuiDrag.Active = true
ScreenGui.AntiGuiDrag.Draggable = true

ScreenGui.AntiMainGui.Name = "AntiMainGui"
ScreenGui.AntiMainGui.Parent = ScreenGui.AntiGuiDrag
ScreenGui.AntiMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.AntiMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.AntiMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_47.Parent = ScreenGui.AntiMainGui
ScreenGui.TextLabel_47.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_47.BackgroundTransparency = 1.000
ScreenGui.TextLabel_47.Position = UDim2.new(1.65856406e-07, 0, -0.00271002715, 0)
ScreenGui.TextLabel_47.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_47.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_47.Text = "Anti Gui"
ScreenGui.TextLabel_47.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_47.TextSize = 25.000
ScreenGui.TextLabel_47.TextWrapped = true

ScreenGui.UICorner_162.CornerRadius = UDim.new(0.075000003, 0)
ScreenGui.UICorner_162.Parent = ScreenGui.AntiMainGui

ScreenGui.Antikilloff.Name = "Antikilloff"
ScreenGui.Antikilloff.Parent = ScreenGui.AntiMainGui
ScreenGui.Antikilloff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Antikilloff.Position = UDim2.new(0.0920000002, 0, 0.501946092, 0)
ScreenGui.Antikilloff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Antikilloff.Font = Enum.Font.JosefinSans
ScreenGui.Antikilloff.Text = "Anti Kill"
ScreenGui.Antikilloff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Antikilloff.TextSize = 20.000
ScreenGui.Antikilloff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.Antikilloff.MouseButton1Down:connect(function()
	ScreenGui.Antikilloff.Visible = false
	ScreenGui.AntiKillOn.Visible = true
	game:GetService'Players':Chat((":antipunishon"))
end)

ScreenGui.TextLabel_48.Parent = ScreenGui.Antikilloff
ScreenGui.TextLabel_48.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_48.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_48.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_48.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_48.Text = ""
ScreenGui.TextLabel_48.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_48.TextSize = 14.000

ScreenGui.UICorner_163.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_163.Parent = ScreenGui.TextLabel_48

ScreenGui.UICorner_164.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_164.Parent = ScreenGui.Antikilloff

ScreenGui.AntiKillOn.Name = "AntiKillOn"
ScreenGui.AntiKillOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiKillOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiKillOn.Position = UDim2.new(0.0920000002, 0, 0.501999974, 0)
ScreenGui.AntiKillOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiKillOn.Visible = false
ScreenGui.AntiKillOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiKillOn.Text = "Anti Kill"
ScreenGui.AntiKillOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiKillOn.TextSize = 20.000
ScreenGui.AntiKillOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiKillOn.MouseButton1Down:connect(function()
	ScreenGui.Antikilloff.Visible = true
	ScreenGui.AntiKillOn.Visible = false
	game:GetService'Players':Chat((":antipunishoff"))
end)

ScreenGui.UICorner_165.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_165.Parent = ScreenGui.AntiKillOn

ScreenGui.TextLabel_49.Parent = ScreenGui.AntiKillOn
ScreenGui.TextLabel_49.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_49.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_49.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_49.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_49.Text = ""
ScreenGui.TextLabel_49.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_49.TextSize = 14.000

ScreenGui.UICorner_166.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_166.Parent = ScreenGui.TextLabel_49

ScreenGui.AntiPunishOn.Name = "AntiPunishOn"
ScreenGui.AntiPunishOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiPunishOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiPunishOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.AntiPunishOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiPunishOn.Visible = false
ScreenGui.AntiPunishOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiPunishOn.Text = "Anti Punish"
ScreenGui.AntiPunishOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiPunishOn.TextSize = 20.000
ScreenGui.AntiPunishOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiPunishOn.MouseButton1Down:connect(function()
	ScreenGui.AntiPunishOn.Visible = false
	ScreenGui.AntiPunishoff.Visible = true
	game:GetService'Players':Chat((":antipunishoff"))
end)

ScreenGui.UICorner_167.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_167.Parent = ScreenGui.AntiPunishOn

ScreenGui.TextLabel_50.Parent = ScreenGui.AntiPunishOn
ScreenGui.TextLabel_50.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_50.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_50.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_50.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_50.Text = ""
ScreenGui.TextLabel_50.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_50.TextSize = 14.000

ScreenGui.UICorner_168.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_168.Parent = ScreenGui.TextLabel_50

ScreenGui.AntiPunishoff.Name = "AntiPunishoff"
ScreenGui.AntiPunishoff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiPunishoff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiPunishoff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.AntiPunishoff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiPunishoff.Font = Enum.Font.JosefinSans
ScreenGui.AntiPunishoff.Text = "Anti Punish"
ScreenGui.AntiPunishoff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiPunishoff.TextSize = 20.000
ScreenGui.AntiPunishoff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiPunishoff.MouseButton1Down:connect(function()
	ScreenGui.AntiPunishOn.Visible = true
	ScreenGui.AntiPunishoff.Visible = false
	game:GetService'Players':Chat((":antipunishon"))
end)

ScreenGui.UICorner_169.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_169.Parent = ScreenGui.AntiPunishoff

ScreenGui.TextLabel_51.Parent = ScreenGui.AntiPunishoff
ScreenGui.TextLabel_51.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_51.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_51.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_51.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_51.Text = ""
ScreenGui.TextLabel_51.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_51.TextSize = 14.000

ScreenGui.UICorner_170.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_170.Parent = ScreenGui.TextLabel_51

ScreenGui.AntiCrashOff.Name = "AntiCrashOff"
ScreenGui.AntiCrashOff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiCrashOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiCrashOff.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.AntiCrashOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiCrashOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiCrashOff.Text = "Anti Crash"
ScreenGui.AntiCrashOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiCrashOff.TextSize = 20.000
ScreenGui.AntiCrashOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiCrashOff.MouseButton1Down:connect(function()
	ScreenGui.AntiCrashOff.Visible = false
	ScreenGui.antiCrashOn.Visible = true
	game:GetService'Players':Chat((":anticrashon"))
end)

ScreenGui.UICorner_171.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_171.Parent = ScreenGui.AntiCrashOff

ScreenGui.TextLabel_52.Parent = ScreenGui.AntiCrashOff
ScreenGui.TextLabel_52.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_52.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_52.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_52.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_52.Text = ""
ScreenGui.TextLabel_52.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_52.TextSize = 14.000

ScreenGui.UICorner_172.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_172.Parent = ScreenGui.TextLabel_52

ScreenGui.antiCrashOn.Name = "antiCrashOn"
ScreenGui.antiCrashOn.Parent = ScreenGui.AntiMainGui
ScreenGui.antiCrashOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiCrashOn.Position = UDim2.new(0.0920000002, 0, 0.771946132, 0)
ScreenGui.antiCrashOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiCrashOn.Visible = false
ScreenGui.antiCrashOn.Font = Enum.Font.JosefinSans
ScreenGui.antiCrashOn.Text = "Anti Crash"
ScreenGui.antiCrashOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiCrashOn.TextSize = 20.000
ScreenGui.antiCrashOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.antiCrashOn.MouseButton1Down:connect(function()
	ScreenGui.AntiCrashOff.Visible = true
	ScreenGui.antiCrashOn.Visible = false
	game:GetService'Players':Chat((":anticrashoff"))
end)

ScreenGui.UICorner_173.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_173.Parent = ScreenGui.antiCrashOn

ScreenGui.TextLabel_53.Parent = ScreenGui.antiCrashOn
ScreenGui.TextLabel_53.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_53.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_53.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_53.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_53.Text = ""
ScreenGui.TextLabel_53.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_53.TextSize = 14.000

ScreenGui.UICorner_174.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_174.Parent = ScreenGui.TextLabel_53

ScreenGui.AntiSkydiveOff.Name = "AntiSkydiveOff"
ScreenGui.AntiSkydiveOff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiSkydiveOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiSkydiveOff.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.AntiSkydiveOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiSkydiveOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiSkydiveOff.Text = "Anti Skydive"
ScreenGui.AntiSkydiveOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiSkydiveOff.TextSize = 20.000
ScreenGui.AntiSkydiveOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiSkydiveOff.MouseButton1Down:connect(function()
	ScreenGui.AntiSkydiveOff.Visible = false
	ScreenGui.AntiSkydiveOn.Visible = true
	game:GetService'Players':Chat((":antiskydiveon"))
end)

ScreenGui.TextLabel_54.Parent = ScreenGui.AntiSkydiveOff
ScreenGui.TextLabel_54.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_54.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_54.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_54.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_54.Text = ""
ScreenGui.TextLabel_54.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_54.TextSize = 14.000

ScreenGui.UICorner_175.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_175.Parent = ScreenGui.TextLabel_54

ScreenGui.UICorner_176.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_176.Parent = ScreenGui.AntiSkydiveOff

ScreenGui.AntiSkydiveOn.Name = "AntiSkydiveOn"
ScreenGui.AntiSkydiveOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiSkydiveOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiSkydiveOn.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.AntiSkydiveOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiSkydiveOn.Visible = false
ScreenGui.AntiSkydiveOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiSkydiveOn.Text = "Anti Skydive"
ScreenGui.AntiSkydiveOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiSkydiveOn.TextSize = 20.000
ScreenGui.AntiSkydiveOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiSkydiveOn.MouseButton1Down:connect(function()
	ScreenGui.AntiSkydiveOff.Visible = true
	ScreenGui.AntiSkydiveOn.Visible = false
	game:GetService'Players':Chat((":antiskydiveoff"))
end)

ScreenGui.UICorner_177.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_177.Parent = ScreenGui.AntiSkydiveOn

ScreenGui.TextLabel_55.Parent = ScreenGui.AntiSkydiveOn
ScreenGui.TextLabel_55.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_55.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_55.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_55.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_55.Text = ""
ScreenGui.TextLabel_55.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_55.TextSize = 14.000

ScreenGui.UICorner_178.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_178.Parent = ScreenGui.TextLabel_55

ScreenGui.AntiMusicOff.Name = "AntiMusicOff"
ScreenGui.AntiMusicOff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiMusicOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiMusicOff.Position = UDim2.new(0.0920000002, 0, 0.366976023, 0)
ScreenGui.AntiMusicOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiMusicOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiMusicOff.Text = "Anti Music"
ScreenGui.AntiMusicOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiMusicOff.TextSize = 20.000
ScreenGui.AntiMusicOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiMusicOff.MouseButton1Down:connect(function()
	ScreenGui.AntiMusicOff.Visible = false
	ScreenGui.AntiMusicOn.Visible = true
	game:GetService'Players':Chat((":antimusicon"))
end)

ScreenGui.UICorner_179.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_179.Parent = ScreenGui.AntiMusicOff

ScreenGui.TextLabel_56.Parent = ScreenGui.AntiMusicOff
ScreenGui.TextLabel_56.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_56.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_56.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_56.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_56.Text = ""
ScreenGui.TextLabel_56.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_56.TextSize = 14.000

ScreenGui.UICorner_180.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_180.Parent = ScreenGui.TextLabel_56

ScreenGui.AntiMusicOn.Name = "Anti Music On"
ScreenGui.AntiMusicOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiMusicOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiMusicOn.Position = UDim2.new(0.0920000002, 0, 0.367000014, 0)
ScreenGui.AntiMusicOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiMusicOn.Visible = false
ScreenGui.AntiMusicOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiMusicOn.Text = "Anti Music"
ScreenGui.AntiMusicOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiMusicOn.TextSize = 20.000
ScreenGui.AntiMusicOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiMusicOn.MouseButton1Down:connect(function()
	ScreenGui.AntiMusicOff.Visible = true
	ScreenGui.AntiMusicOn.Visible = false
	game:GetService'Players':Chat((":antimusicoff"))
end)

ScreenGui.UICorner_181.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_181.Parent = ScreenGui.AntiMusicOn

ScreenGui.TextLabel_57.Parent = ScreenGui.AntiMusicOn
ScreenGui.TextLabel_57.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_57.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_57.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_57.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_57.Text = ""
ScreenGui.TextLabel_57.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_57.TextSize = 14.000

ScreenGui.UICorner_182.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_182.Parent = ScreenGui.TextLabel_57

ScreenGui.AntiMsgCrashOff.Name = "Anti Msg Crash Off"
ScreenGui.AntiMsgCrashOff.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiMsgCrashOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiMsgCrashOff.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.AntiMsgCrashOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiMsgCrashOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiMsgCrashOff.Text = "Anti Msg Crash"
ScreenGui.AntiMsgCrashOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiMsgCrashOff.TextSize = 15.000
ScreenGui.AntiMsgCrashOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiMsgCrashOff.MouseButton1Down:connect(function()
	ScreenGui.AntiMsgCrashOff.Visible = false
	ScreenGui.AntiMsgCrashOn.Visible = true
	game:GetService'Players':Chat((":antimsgcrashon"))
end)

ScreenGui.UICorner_183.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_183.Parent = ScreenGui.AntiMsgCrashOff

ScreenGui.TextLabel_58.Parent = ScreenGui.AntiMsgCrashOff
ScreenGui.TextLabel_58.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_58.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_58.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_58.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_58.Text = ""
ScreenGui.TextLabel_58.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_58.TextSize = 14.000

ScreenGui.UICorner_184.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_184.Parent = ScreenGui.TextLabel_58

ScreenGui.AntiMsgCrashOn.Name = "AntiMsgCrashOn"
ScreenGui.AntiMsgCrashOn.Parent = ScreenGui.AntiMainGui
ScreenGui.AntiMsgCrashOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiMsgCrashOn.Position = UDim2.new(0.0920000002, 0, 0.90667665, 0)
ScreenGui.AntiMsgCrashOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiMsgCrashOn.Visible = false
ScreenGui.AntiMsgCrashOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiMsgCrashOn.Text = "Anti Msg Crash"
ScreenGui.AntiMsgCrashOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiMsgCrashOn.TextSize = 15.000
ScreenGui.AntiMsgCrashOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiMsgCrashOn.MouseButton1Down:connect(function()
	ScreenGui.AntiMsgCrashOff.Visible = true
	ScreenGui.AntiMsgCrashOn.Visible = false
	game:GetService'Players':Chat((":antimsgcrashoff"))
end)

ScreenGui.UICorner_185.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_185.Parent = ScreenGui.AntiMsgCrashOn

ScreenGui.TextLabel_59.Parent = ScreenGui.AntiMsgCrashOn
ScreenGui.TextLabel_59.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_59.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_59.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_59.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_59.Text = ""
ScreenGui.TextLabel_59.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_59.TextSize = 14.000

ScreenGui.UICorner_186.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_186.Parent = ScreenGui.TextLabel_59

ScreenGui.antiBlindOff.Name = "antiBlindOff"
ScreenGui.antiBlindOff.Parent = ScreenGui.AntiMainGui
ScreenGui.antiBlindOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiBlindOff.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.antiBlindOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiBlindOff.Font = Enum.Font.JosefinSans
ScreenGui.antiBlindOff.Text = "Anti Blind"
ScreenGui.antiBlindOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiBlindOff.TextSize = 20.000
ScreenGui.antiBlindOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.antiBlindOff.MouseButton1Down:connect(function()
	ScreenGui.antiBlindOff.Visible = false
	ScreenGui.antiBlindOn.Visible = true
	game:GetService'Players':Chat((":antiblindon"))
end)

ScreenGui.UICorner_187.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_187.Parent = ScreenGui.antiBlindOff

ScreenGui.TextLabel_60.Parent = ScreenGui.antiBlindOff
ScreenGui.TextLabel_60.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_60.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_60.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_60.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_60.Text = ""
ScreenGui.TextLabel_60.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_60.TextSize = 14.000

ScreenGui.UICorner_188.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_188.Parent = ScreenGui.TextLabel_60

ScreenGui.antiBlindOn.Name = "antiBlindOn"
ScreenGui.antiBlindOn.Parent = ScreenGui.AntiMainGui
ScreenGui.antiBlindOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.antiBlindOn.Position = UDim2.new(0.0920000002, 0, 0.640209556, 0)
ScreenGui.antiBlindOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.antiBlindOn.Visible = false
ScreenGui.antiBlindOn.Font = Enum.Font.JosefinSans
ScreenGui.antiBlindOn.Text = "Anti Blind"
ScreenGui.antiBlindOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.antiBlindOn.TextSize = 20.000
ScreenGui.antiBlindOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.antiBlindOn.MouseButton1Down:connect(function()
	ScreenGui.antiBlindOff.Visible = true
	ScreenGui.antiBlindOn.Visible = false
	game:GetService'Players':Chat((":antiblindoff"))
end)

ScreenGui.UICorner_189.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_189.Parent = ScreenGui.antiBlindOn

ScreenGui.TextLabel_61.Parent = ScreenGui.antiBlindOn
ScreenGui.TextLabel_61.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_61.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_61.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_61.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_61.Text = ""
ScreenGui.TextLabel_61.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_61.TextSize = 14.000

ScreenGui.UICorner_190.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_190.Parent = ScreenGui.TextLabel_61

ScreenGui.UICorner_191.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_191.Parent = ScreenGui.AntiGuiDrag

ScreenGui.CreditsGuiDrag.Name = "CreditsGuiDrag"
ScreenGui.CreditsGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.CreditsGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.CreditsGuiDrag.BorderSizePixel = 0
ScreenGui.CreditsGuiDrag.Position = UDim2.new(0.340686291, 0, 0.0122117409, 0)
ScreenGui.CreditsGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.CreditsGuiDrag.Visible = false
ScreenGui.CreditsGuiDrag.Active = true
ScreenGui.CreditsGuiDrag.Draggable = true

ScreenGui.CreditsMainGui.Name = "CreditsMainGui"
ScreenGui.CreditsMainGui.Parent = ScreenGui.CreditsGuiDrag
ScreenGui.CreditsMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.CreditsMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.CreditsMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_62.Parent = ScreenGui.CreditsMainGui
ScreenGui.TextLabel_62.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_62.BackgroundTransparency = 1.000
ScreenGui.TextLabel_62.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_62.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_62.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_62.Text = "Tp Gui"
ScreenGui.TextLabel_62.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_62.TextSize = 25.000
ScreenGui.TextLabel_62.TextWrapped = true

ScreenGui.HouseTP.Name = "HouseTP"
ScreenGui.HouseTP.Parent = ScreenGui.CreditsMainGui
ScreenGui.HouseTP.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.HouseTP.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.HouseTP.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.HouseTP.Font = Enum.Font.JosefinSans
ScreenGui.HouseTP.Text = "House"
ScreenGui.HouseTP.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.HouseTP.TextSize = 25.000
ScreenGui.HouseTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4106693, 8.22999954, 63.2581749))
end)

ScreenGui.UICorner_192.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_192.Parent = ScreenGui.HouseTP

ScreenGui.Spawn3Tp.Name = "Spawn3Tp"
ScreenGui.Spawn3Tp.Parent = ScreenGui.CreditsMainGui
ScreenGui.Spawn3Tp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Spawn3Tp.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Spawn3Tp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Spawn3Tp.Font = Enum.Font.JosefinSans
ScreenGui.Spawn3Tp.Text = "Spawn 3"
ScreenGui.Spawn3Tp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Spawn3Tp.TextSize = 25.000
ScreenGui.Spawn3Tp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-53, 3.7, -25.59))
end)

ScreenGui.UICorner_193.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_193.Parent = ScreenGui.Spawn3Tp

ScreenGui.Spawn2Tp.Name = "Spawn2Tp"
ScreenGui.Spawn2Tp.Parent = ScreenGui.CreditsMainGui
ScreenGui.Spawn2Tp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Spawn2Tp.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Spawn2Tp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Spawn2Tp.Font = Enum.Font.JosefinSans
ScreenGui.Spawn2Tp.Text = "Spawn 2"
ScreenGui.Spawn2Tp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Spawn2Tp.TextSize = 25.000
ScreenGui.Spawn2Tp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(41, 3.7, -25.59))
end)

ScreenGui.UICorner_194.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_194.Parent = ScreenGui.Spawn2Tp

ScreenGui.Spawn1Tp.Name = "Spawn1Tp"
ScreenGui.Spawn1Tp.Parent = ScreenGui.CreditsMainGui
ScreenGui.Spawn1Tp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Spawn1Tp.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.Spawn1Tp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Spawn1Tp.Font = Enum.Font.JosefinSans
ScreenGui.Spawn1Tp.Text = "Spawn 1"
ScreenGui.Spawn1Tp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Spawn1Tp.TextSize = 25.000
ScreenGui.Spawn1Tp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29, 3.7, -25.59))
end)

ScreenGui.UICorner_195.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_195.Parent = ScreenGui.Spawn1Tp

ScreenGui.TopHouseTp.Name = "Top House Tp"
ScreenGui.TopHouseTp.Parent = ScreenGui.CreditsMainGui
ScreenGui.TopHouseTp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TopHouseTp.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.TopHouseTp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TopHouseTp.Font = Enum.Font.JosefinSans
ScreenGui.TopHouseTp.Text = "Top House"
ScreenGui.TopHouseTp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TopHouseTp.TextSize = 25.000
ScreenGui.TopHouseTp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29.954174, 41.8300018, 60.291275))
end)

ScreenGui.UICorner_196.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_196.Parent = ScreenGui.TopHouseTp

ScreenGui.EndObbyTp.Name = "EndObbyTp"
ScreenGui.EndObbyTp.Parent = ScreenGui.CreditsMainGui
ScreenGui.EndObbyTp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.EndObbyTp.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.EndObbyTp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.EndObbyTp.Font = Enum.Font.JosefinSans
ScreenGui.EndObbyTp.Text = "End Obby"
ScreenGui.EndObbyTp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.EndObbyTp.TextSize = 25.000
ScreenGui.EndObbyTp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-52.2587738, 3.70000005, 38.5809517))
end)

ScreenGui.UICorner_197.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_197.Parent = ScreenGui.EndObbyTp

ScreenGui.PadsTp.Name = "PadsTp"
ScreenGui.PadsTp.Parent = ScreenGui.CreditsMainGui
ScreenGui.PadsTp.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.PadsTp.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.PadsTp.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.PadsTp.Font = Enum.Font.JosefinSans
ScreenGui.PadsTp.Text = "Infront Pads"
ScreenGui.PadsTp.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.PadsTp.TextScaled = true
ScreenGui.PadsTp.TextSize = 25.000
ScreenGui.PadsTp.TextWrapped = true
ScreenGui.PadsTp.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-27.0519, 8.23, 79.1089))
end)

ScreenGui.UICorner_198.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_198.Parent = ScreenGui.PadsTp

ScreenGui.UICorner_199.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_199.Parent = ScreenGui.CreditsMainGui

ScreenGui.UICorner_200.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_200.Parent = ScreenGui.CreditsGuiDrag

ScreenGui.TpGuiDrag.Name = "TpGuiDrag"
ScreenGui.TpGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.TpGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TpGuiDrag.BorderSizePixel = 0
ScreenGui.TpGuiDrag.Position = UDim2.new(0.340686291, 0, 0.0122117409, 0)
ScreenGui.TpGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.TpGuiDrag.Visible = false
ScreenGui.TpGuiDrag.Active = true
ScreenGui.TpGuiDrag.Draggable = true

ScreenGui.TpMainGui.Name = "TpMainGui"
ScreenGui.TpMainGui.Parent = ScreenGui.TpGuiDrag
ScreenGui.TpMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.TpMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.TpMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_63.Parent = ScreenGui.TpMainGui
ScreenGui.TextLabel_63.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_63.BackgroundTransparency = 1.000
ScreenGui.TextLabel_63.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_63.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_63.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_63.Text = "Credits Gui"
ScreenGui.TextLabel_63.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_63.TextSize = 25.000
ScreenGui.TextLabel_63.TextWrapped = true

ScreenGui.UICorner_201.CornerRadius = UDim.new(0.075000003, 0)
ScreenGui.UICorner_201.Parent = ScreenGui.TpMainGui

ScreenGui.TextLabel_64.Parent = ScreenGui.TpMainGui
ScreenGui.TextLabel_64.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.TextLabel_64.BorderColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.TextLabel_64.BorderSizePixel = 0
ScreenGui.TextLabel_64.Position = UDim2.new(0, 0, 0.111111112, 0)
ScreenGui.TextLabel_64.Size = UDim2.new(0, 184, 0, 47)
ScreenGui.TextLabel_64.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_64.Text = "Gui Made By ScaleneSoap9803"
ScreenGui.TextLabel_64.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_64.TextScaled = true
ScreenGui.TextLabel_64.TextSize = 25.000
ScreenGui.TextLabel_64.TextWrapped = true

ScreenGui.TextLabel_65.Parent = ScreenGui.TpMainGui
ScreenGui.TextLabel_65.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.TextLabel_65.BorderSizePixel = 0
ScreenGui.TextLabel_65.Position = UDim2.new(0, 0, 0.344173431, 0)
ScreenGui.TextLabel_65.Size = UDim2.new(0, 184, 0, 53)
ScreenGui.TextLabel_65.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_65.Text = "Some Of The Commands Made By Nightmare_TheReal297"
ScreenGui.TextLabel_65.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_65.TextScaled = true
ScreenGui.TextLabel_65.TextSize = 25.000
ScreenGui.TextLabel_65.TextWrapped = true

ScreenGui.UICorner_202.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_202.Parent = ScreenGui.TpGuiDrag

ScreenGui.ColorsGuiDrag.Name = "ColorsGuiDrag"
ScreenGui.ColorsGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.ColorsGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.ColorsGuiDrag.BorderSizePixel = 0
ScreenGui.ColorsGuiDrag.Position = UDim2.new(0.340686291, 0, 0.0122117409, 0)
ScreenGui.ColorsGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.ColorsGuiDrag.Visible = false
ScreenGui.ColorsGuiDrag.Active = true
ScreenGui.ColorsGuiDrag.Draggable = true

ScreenGui.ColorsMainGui.Name = "ColorsMainGui"
ScreenGui.ColorsMainGui.Parent = ScreenGui.ColorsGuiDrag
ScreenGui.ColorsMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.ColorsMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.ColorsMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_66.Parent = ScreenGui.ColorsMainGui
ScreenGui.TextLabel_66.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_66.BackgroundTransparency = 1.000
ScreenGui.TextLabel_66.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_66.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_66.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_66.Text = "Colors Gui"
ScreenGui.TextLabel_66.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_66.TextSize = 25.000
ScreenGui.TextLabel_66.TextWrapped = true

ScreenGui.Heaven.Name = "Heaven"
ScreenGui.Heaven.Parent = ScreenGui.ColorsMainGui
ScreenGui.Heaven.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Heaven.Position = UDim2.new(0.0923912972, 0, 0.111111104, 0)
ScreenGui.Heaven.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Heaven.Font = Enum.Font.JosefinSans
ScreenGui.Heaven.Text = "Heaven"
ScreenGui.Heaven.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Heaven.TextSize = 25.000
ScreenGui.Heaven.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":heaven"))
end)

ScreenGui.UICorner_203.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_203.Parent = ScreenGui.Heaven

ScreenGui.Nothing1Color.Name = "Nothing1Color"
ScreenGui.Nothing1Color.Parent = ScreenGui.ColorsMainGui
ScreenGui.Nothing1Color.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing1Color.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing1Color.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing1Color.Font = Enum.Font.JosefinSans
ScreenGui.Nothing1Color.Text = "Nothing"
ScreenGui.Nothing1Color.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing1Color.TextSize = 25.000

ScreenGui.UICorner_204.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_204.Parent = ScreenGui.Nothing1Color

ScreenGui.Christmas.Name = "Christmas"
ScreenGui.Christmas.Parent = ScreenGui.ColorsMainGui
ScreenGui.Christmas.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Christmas.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.Christmas.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Christmas.Font = Enum.Font.JosefinSans
ScreenGui.Christmas.Text = "Christmas"
ScreenGui.Christmas.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Christmas.TextSize = 25.000
ScreenGui.Christmas.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":christmas"))
end)

ScreenGui.UICorner_205.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_205.Parent = ScreenGui.Christmas

ScreenGui.Shadows.Name = "Shadows"
ScreenGui.Shadows.Parent = ScreenGui.ColorsMainGui
ScreenGui.Shadows.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Shadows.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.Shadows.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Shadows.Font = Enum.Font.JosefinSans
ScreenGui.Shadows.Text = "Shadows"
ScreenGui.Shadows.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Shadows.TextSize = 25.000
ScreenGui.Shadows.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":shadows"))
end)

ScreenGui.UICorner_206.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_206.Parent = ScreenGui.Shadows

ScreenGui.Sunset.Name = "Sunset"
ScreenGui.Sunset.Parent = ScreenGui.ColorsMainGui
ScreenGui.Sunset.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Sunset.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.Sunset.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Sunset.Font = Enum.Font.JosefinSans
ScreenGui.Sunset.Text = "Sunset"
ScreenGui.Sunset.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Sunset.TextSize = 25.000
ScreenGui.Sunset.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":sunset"))
end)

ScreenGui.UICorner_207.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_207.Parent = ScreenGui.Sunset

ScreenGui.Sunrise.Name = "Sunrise"
ScreenGui.Sunrise.Parent = ScreenGui.ColorsMainGui
ScreenGui.Sunrise.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Sunrise.Position = UDim2.new(0.0923912972, 0, 0.235772341, 0)
ScreenGui.Sunrise.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Sunrise.Font = Enum.Font.JosefinSans
ScreenGui.Sunrise.Text = "Sunrise"
ScreenGui.Sunrise.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Sunrise.TextScaled = true
ScreenGui.Sunrise.TextSize = 25.000
ScreenGui.Sunrise.TextWrapped = true
ScreenGui.Sunrise.MouseButton1Down:connect(function()
	game:GetService'Players':Chat((":sunrise"))
end)

ScreenGui.UICorner_208.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_208.Parent = ScreenGui.Sunrise

ScreenGui.UICorner_209.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_209.Parent = ScreenGui.ColorsMainGui

ScreenGui.RainbowOff.Name = "RainbowOff"
ScreenGui.RainbowOff.Parent = ScreenGui.ColorsMainGui
ScreenGui.RainbowOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RainbowOff.Position = UDim2.new(0.0920000002, 0, 0.744845867, 0)
ScreenGui.RainbowOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RainbowOff.Font = Enum.Font.JosefinSans
ScreenGui.RainbowOff.Text = "Rainbow"
ScreenGui.RainbowOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RainbowOff.TextSize = 20.000
ScreenGui.RainbowOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.RainbowOff.MouseButton1Down:connect(function()
	ScreenGui.RainbowOff.Visible = false
	ScreenGui.RainbowOn.Visible = true
	game:GetService'Players':Chat((":rainbowon"))
end)

ScreenGui.UICorner_210.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_210.Parent = ScreenGui.RainbowOff

ScreenGui.TextLabel_67.Parent = ScreenGui.RainbowOff
ScreenGui.TextLabel_67.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_67.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_67.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_67.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_67.Text = ""
ScreenGui.TextLabel_67.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_67.TextSize = 14.000

ScreenGui.UICorner_211.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_211.Parent = ScreenGui.TextLabel_67

ScreenGui.RainbowOn.Name = "RainbowOn"
ScreenGui.RainbowOn.Parent = ScreenGui.ColorsMainGui
ScreenGui.RainbowOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.RainbowOn.Position = UDim2.new(0.0920000002, 0, 0.744845867, 0)
ScreenGui.RainbowOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.RainbowOn.Visible = false
ScreenGui.RainbowOn.Font = Enum.Font.JosefinSans
ScreenGui.RainbowOn.Text = "Rainbow"
ScreenGui.RainbowOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.RainbowOn.TextSize = 20.000
ScreenGui.RainbowOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.RainbowOn.MouseButton1Down:connect(function()
	ScreenGui.RainbowOff.Visible = true
	ScreenGui.RainbowOn.Visible = false
	game:GetService'Players':Chat((":rainbowoff"))
end)

ScreenGui.UICorner_212.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_212.Parent = ScreenGui.RainbowOn

ScreenGui.TextLabel_68.Parent = ScreenGui.RainbowOn
ScreenGui.TextLabel_68.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_68.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_68.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_68.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_68.Text = ""
ScreenGui.TextLabel_68.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_68.TextSize = 14.000

ScreenGui.UICorner_213.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_213.Parent = ScreenGui.TextLabel_68

ScreenGui.UICorner_214.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_214.Parent = ScreenGui.ColorsGuiDrag

ScreenGui.AbuseNoGuiDrag.Name = "AbuseNoGuiDrag"
ScreenGui.AbuseNoGuiDrag.Parent = ScreenGui.ScreenGui
ScreenGui.AbuseNoGuiDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.AbuseNoGuiDrag.BorderSizePixel = 0
ScreenGui.AbuseNoGuiDrag.Position = UDim2.new(0.522058845, 0, 0.0122117409, 0)
ScreenGui.AbuseNoGuiDrag.Size = UDim2.new(0, 242, 0, 425)
ScreenGui.AbuseNoGuiDrag.Visible = false
ScreenGui.AbuseNoGuiDrag.Active = true
ScreenGui.AbuseNoGuiDrag.Draggable = true

ScreenGui.AbuseNoMainGui.Name = "AbuseNoMainGui"
ScreenGui.AbuseNoMainGui.Parent = ScreenGui.AbuseNoGuiDrag
ScreenGui.AbuseNoMainGui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScreenGui.AbuseNoMainGui.Position = UDim2.new(0.119338863, 0, 0.0654040501, 0)
ScreenGui.AbuseNoMainGui.Size = UDim2.new(0, 184, 0, 369)

ScreenGui.TextLabel_69.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.TextLabel_69.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_69.BackgroundTransparency = 1.000
ScreenGui.TextLabel_69.Position = UDim2.new(1.65856406e-07, 0, 0, 0)
ScreenGui.TextLabel_69.Size = UDim2.new(0, 184, 0, 35)
ScreenGui.TextLabel_69.Font = Enum.Font.JosefinSans
ScreenGui.TextLabel_69.Text = "Abuse No Gui"
ScreenGui.TextLabel_69.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TextLabel_69.TextSize = 25.000
ScreenGui.TextLabel_69.TextWrapped = true

ScreenGui.UICorner_215.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_215.Parent = ScreenGui.AbuseNoMainGui

ScreenGui.Nothing2AbuseNo.Name = "Nothing2AbuseNo"
ScreenGui.Nothing2AbuseNo.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.Nothing2AbuseNo.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing2AbuseNo.Position = UDim2.new(0.0923912972, 0, 0.875338733, 0)
ScreenGui.Nothing2AbuseNo.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing2AbuseNo.Font = Enum.Font.JosefinSans
ScreenGui.Nothing2AbuseNo.Text = "Nothing"
ScreenGui.Nothing2AbuseNo.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing2AbuseNo.TextSize = 25.000
ScreenGui.Nothing2AbuseNo.TextWrapped = true

ScreenGui.UICorner_216.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_216.Parent = ScreenGui.Nothing2AbuseNo

ScreenGui.Nothing1AbuseNo.Name = "Nothing1AbuseNo"
ScreenGui.Nothing1AbuseNo.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.Nothing1AbuseNo.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.Nothing1AbuseNo.Position = UDim2.new(0.0923912972, 0, 0.745257437, 0)
ScreenGui.Nothing1AbuseNo.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.Nothing1AbuseNo.Font = Enum.Font.JosefinSans
ScreenGui.Nothing1AbuseNo.Text = "Nothing"
ScreenGui.Nothing1AbuseNo.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.Nothing1AbuseNo.TextSize = 25.000

ScreenGui.UICorner_217.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_217.Parent = ScreenGui.Nothing1AbuseNo

ScreenGui.TpAllHouse.Name = "TpAllHouse"
ScreenGui.TpAllHouse.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.TpAllHouse.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.TpAllHouse.Position = UDim2.new(0.0923912898, 0, 0.612466097, 0)
ScreenGui.TpAllHouse.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.TpAllHouse.Font = Enum.Font.JosefinSans
ScreenGui.TpAllHouse.Text = "Tp All House"
ScreenGui.TpAllHouse.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.TpAllHouse.TextSize = 25.000
ScreenGui.TpAllHouse.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4106693, 8.22999954, 63.2581749))
	wait(0.3)
	game:GetService'Players':Chat(("tp all me"))
end)

ScreenGui.UICorner_218.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_218.Parent = ScreenGui.TpAllHouse

ScreenGui.GodAll.Name = "God All"
ScreenGui.GodAll.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.GodAll.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.GodAll.Position = UDim2.new(0.0923912972, 0, 0.48780486, 0)
ScreenGui.GodAll.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.GodAll.Font = Enum.Font.JosefinSans
ScreenGui.GodAll.Text = "God All"
ScreenGui.GodAll.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.GodAll.TextSize = 25.000
ScreenGui.GodAll.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("god all"))
end)

ScreenGui.UICorner_219.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_219.Parent = ScreenGui.GodAll

ScreenGui.FfAll.Name = "FfAll"
ScreenGui.FfAll.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.FfAll.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.FfAll.Position = UDim2.new(0.0923912972, 0, 0.363143623, 0)
ScreenGui.FfAll.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.FfAll.Font = Enum.Font.JosefinSans
ScreenGui.FfAll.Text = "Ff all"
ScreenGui.FfAll.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.FfAll.TextSize = 25.000
ScreenGui.FfAll.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("ff all"))
end)

ScreenGui.UICorner_220.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_220.Parent = ScreenGui.FfAll

ScreenGui.AutoHealoff.Name = "AutoHealoff"
ScreenGui.AutoHealoff.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.AutoHealoff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AutoHealoff.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.AutoHealoff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AutoHealoff.Font = Enum.Font.JosefinSans
ScreenGui.AutoHealoff.Text = "Auto FF All"
ScreenGui.AutoHealoff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AutoHealoff.TextSize = 20.000
ScreenGui.AutoHealoff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AutoHealoff.MouseButton1Down:connect(function()
	ScreenGui.AutoHealOn.Visible = true
	ScreenGui.AutoHealoff.Visible = false
	game:GetService'Players':Chat((":autoforceon"))
end)

ScreenGui.UICorner_221.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_221.Parent = ScreenGui.AutoHealoff

ScreenGui.TextLabel_70.Parent = ScreenGui.AutoHealoff
ScreenGui.TextLabel_70.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_70.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_70.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_70.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_70.Text = ""
ScreenGui.TextLabel_70.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_70.TextSize = 14.000

ScreenGui.UICorner_222.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_222.Parent = ScreenGui.TextLabel_70

ScreenGui.AutoHealOn.Name = "AutoHealOn"
ScreenGui.AutoHealOn.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.AutoHealOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AutoHealOn.Position = UDim2.new(0.0920000002, 0, 0.0982934088, 0)
ScreenGui.AutoHealOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AutoHealOn.Visible = false
ScreenGui.AutoHealOn.Font = Enum.Font.JosefinSans
ScreenGui.AutoHealOn.Text = "Auto FF All"
ScreenGui.AutoHealOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AutoHealOn.TextSize = 20.000
ScreenGui.AutoHealOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AutoHealOn.MouseButton1Down:connect(function()
	ScreenGui.AutoHealOn.Visible = false
	ScreenGui.AutoHealoff.Visible = true
	game:GetService'Players':Chat((":autoforceoff"))
end)

ScreenGui.UICorner_223.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_223.Parent = ScreenGui.AutoHealOn

ScreenGui.TextLabel_71.Parent = ScreenGui.AutoHealOn
ScreenGui.TextLabel_71.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_71.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_71.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_71.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_71.Text = ""
ScreenGui.TextLabel_71.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_71.TextSize = 14.000

ScreenGui.UICorner_224.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_224.Parent = ScreenGui.TextLabel_71

ScreenGui.AntiKillAllOff.Name = "AntiKillAllOff"
ScreenGui.AntiKillAllOff.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.AntiKillAllOff.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiKillAllOff.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.AntiKillAllOff.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiKillAllOff.Font = Enum.Font.JosefinSans
ScreenGui.AntiKillAllOff.Text = "Anti Kill All"
ScreenGui.AntiKillAllOff.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiKillAllOff.TextSize = 20.000
ScreenGui.AntiKillAllOff.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiKillAllOff.MouseButton1Down:connect(function()
	ScreenGui.AntiKillAllOff.Visible = false
	ScreenGui.AntiKillAllOn.Visible = true
	game:GetService'Players':Chat((":antikillallon"))
end)

ScreenGui.UICorner_225.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_225.Parent = ScreenGui.AntiKillAllOff

ScreenGui.TextLabel_72.Parent = ScreenGui.AntiKillAllOff
ScreenGui.TextLabel_72.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ScreenGui.TextLabel_72.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_72.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_72.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_72.Text = ""
ScreenGui.TextLabel_72.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_72.TextSize = 14.000

ScreenGui.UICorner_226.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_226.Parent = ScreenGui.TextLabel_72

ScreenGui.AntiKillAllOn.Name = "AntiKillAllOn"
ScreenGui.AntiKillAllOn.Parent = ScreenGui.AbuseNoMainGui
ScreenGui.AntiKillAllOn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScreenGui.AntiKillAllOn.Position = UDim2.new(0.0920000002, 0, 0.230029941, 0)
ScreenGui.AntiKillAllOn.Size = UDim2.new(0, 150, 0, 31)
ScreenGui.AntiKillAllOn.Visible = false
ScreenGui.AntiKillAllOn.Font = Enum.Font.JosefinSans
ScreenGui.AntiKillAllOn.Text = "Anti Kill All"
ScreenGui.AntiKillAllOn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScreenGui.AntiKillAllOn.TextSize = 20.000
ScreenGui.AntiKillAllOn.TextXAlignment = Enum.TextXAlignment.Left
ScreenGui.AntiKillAllOn.MouseButton1Down:Connect(function()
	ScreenGui.AntiKillAllOff.Visible = true
	ScreenGui.AntiKillAllOn.Visible = false
	game:GetService'Players':Chat((":antikillalloff"))
end)

ScreenGui.UICorner_227.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_227.Parent = ScreenGui.AntiKillAllOn

ScreenGui.TextLabel_73.Parent = ScreenGui.AntiKillAllOn
ScreenGui.TextLabel_73.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ScreenGui.TextLabel_73.Position = UDim2.new(0.813333333, 0, 0.129032254, 0)
ScreenGui.TextLabel_73.Size = UDim2.new(0, 22, 0, 22)
ScreenGui.TextLabel_73.Font = Enum.Font.SourceSans
ScreenGui.TextLabel_73.Text = ""
ScreenGui.TextLabel_73.TextColor3 = Color3.fromRGB(0, 0, 0)
ScreenGui.TextLabel_73.TextSize = 14.000

ScreenGui.UICorner_228.CornerRadius = UDim.new(0.5, 0)
ScreenGui.UICorner_228.Parent = ScreenGui.TextLabel_73

ScreenGui.UICorner_229.CornerRadius = UDim.new(0.125, 0)
ScreenGui.UICorner_229.Parent = ScreenGui.AbuseNoGuiDrag
