-- Gui to Lua
-- Version: 3.2

-- Instances:

local hkill = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local lbl = Instance.new("TextLabel")
local kill = Instance.new("TextButton")
local killa = Instance.new("TextButton")
local stop = Instance.new("TextButton")
local plr = Instance.new("TextBox")

--Properties:

hkill.Name = "hkill"
hkill.Parent = game:GetService("CoreGui")
hkill.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
hkill.ResetOnSpawn = false

main.Name = "main"
main.Parent = hkill
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BorderColor3 = Color3.fromRGB(0, 209, 0)
main.BorderSizePixel = 8
main.ClipsDescendants = true
main.Position = UDim2.new(0.305429876, 0, 0.309880227, 0)
main.Selectable = true
main.Size = UDim2.new(0, 513, 0, 236)

lbl.Name = "lbl"
lbl.Parent = main
lbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lbl.BackgroundTransparency = 1.000
lbl.Position = UDim2.new(0.30799219, 0, 0, 0)
lbl.Size = UDim2.new(0, 200, 0, 36)
lbl.Font = Enum.Font.SourceSansBold
lbl.Text = "handle kill gui"
lbl.TextColor3 = Color3.fromRGB(0, 170, 0)
lbl.TextSize = 23.000

kill.Name = "kill"
kill.Parent = main
kill.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
kill.BorderColor3 = Color3.fromRGB(0, 170, 0)
kill.BorderSizePixel = 4
kill.Position = UDim2.new(0.0428849906, 0, 0.707627118, 0)
kill.Size = UDim2.new(0, 200, 0, 50)
kill.Font = Enum.Font.SourceSansBold
kill.Text = "kill"
kill.TextColor3 = Color3.fromRGB(255, 255, 255)
kill.TextSize = 23.000

killa.Name = "killa"
killa.Parent = main
killa.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
killa.BorderColor3 = Color3.fromRGB(0, 170, 0)
killa.BorderSizePixel = 4
killa.Position = UDim2.new(0.563352823, 0, 0.707627118, 0)
killa.Size = UDim2.new(0, 200, 0, 50)
killa.Font = Enum.Font.SourceSansBold
killa.Text = "kill all"
killa.TextColor3 = Color3.fromRGB(255, 255, 255)
killa.TextSize = 23.000

stop.Name = "stop"
stop.Parent = main
stop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
stop.BorderColor3 = Color3.fromRGB(0, 255, 0)
stop.BorderSizePixel = 4
stop.Position = UDim2.new(0.746588707, 0, 0, 0)
stop.Size = UDim2.new(0, 130, 0, 36)
stop.Font = Enum.Font.SourceSansBold
stop.Text = "stop"
stop.TextColor3 = Color3.fromRGB(85, 255, 0)
stop.TextSize = 19.000

plr.Name = "plr"
plr.Parent = main
plr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
plr.Position = UDim2.new(0.30799219, 0, 0.279661, 0)
plr.Size = UDim2.new(0, 200, 0, 50)
plr.Font = Enum.Font.SourceSansBold
plr.Text = "player"
plr.TextColor3 = Color3.fromRGB(255, 85, 0)
plr.TextSize = 23.000

-- Scripts:

local function MAFVSNY_fake_script() -- main.Dragify 
	local script = Instance.new('LocalScript', main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(MAFVSNY_fake_script)()
local function EPVGUF_fake_script() -- hkill.controller 
	local script = Instance.new('LocalScript', hkill)

	local frm = script.Parent.main;
	local lp = game:GetService("Players").LocalPlayer;
	local hkilling = false;
	local alldied = false;
	local instances = {
	    ka = frm.killa;
		k = frm.kill;
		s = frm.stop;
		plr = frm.plr
	}
	local function logn(txt)
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "handle kill gui"; 
			Text = txt; 
			Duration = 5;
		})
	end
	instances.s.MouseButton1Click:Connect(function()
		if hkilling == true then
			hkilling = false
			logn("stopped handle killing")
		else
			logn("you aren't handle killing")
		end
	end)
	local function getothrs()
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				return v
			end
		end
		return
	end
	instances.ka.MouseButton1Click:Connect(function()
		game:GetService("Players"):Chat(":sword me")
		repeat game:GetService("RunService").Heartbeat:Wait() until lp.Backpack:FindFirstChild("LinkedSword") or lp.Backpack:FindFirstChild("Sword")
		if lp.Backpack:FindFirstChild("Sword") then
			pcall(function()
				lp.Backpack.Sword.Parent = lp.Character
			end)
		elseif lp.Backpack:FindFirstChild("LinkedSword") then
			pcall(function()
				lp.Backpack.LinkedSword.Parent = lp.Character
			end)
		end
		local p = game:GetService("Players"):GetPlayers()
		repeat
			game:GetService("RunService").Heartbeat:Wait()
			if hkilling == false then return end
			for i,v in pairs(p) do
				if v.Name ~= lp.Name then
					if lp.Character:FindFirstChild("Sword") then
						pcall(function()
							if not v.Character:FindFirstChild("HumanoidRootPart") then
							else
								firetouchinterest(lp.Character.Sword,v.Character.HumanoidRootPart,1)
								firetouchinterest(lp.Character.Sword,v.Character.HumanoidRootPart,0)
							end
						end)
					elseif lp.Backpack:FindFirstChild("LinkedSword") then
						pcall(function()
							if not v.Character:FindFirstChild("HumanoidRootPart") then
							else
								firetouchinterest(lp.Character.LinkedSword,v.Character.HumanoidRootPart,1)
								firetouchinterest(lp.Character.LinkedSword,v.Character.HumanoidRootPart,0)
							end
						end)
					end
				end
			end
		until hkilling
	end)
	instances.k.MouseButton1Click:Connect(function()
		game:GetService("Players"):Chat(":sword me")
		repeat game:GetService("RunService").Heartbeat:Wait() until lp.Backpack:FindFirstChild("LinkedSword") or lp.Backpack:FindFirstChild("Sword")
		if lp.Backpack:FindFirstChild("Sword") then
			pcall(function()
				lp.Backpack.Sword.Parent = lp.Character
			end)
		elseif lp.Backpack:FindFirstChild("LinkedSword") then
			pcall(function()
				lp.Backpack.LinkedSword.Parent = lp.Character
			end)
		end
		local p = instances.plr
		local pl = nil
		for i,v in pairs(game:GetService('Players'):GetPlayers()) do
			if string.find(v.Name,p.Text) or string.find(v.Name:lower(),p.Text) then
				pl = v
			end
		end
		repeat
			game:GetService("RunService").Heartbeat:Wait()
			if lp.Character:FindFirstChild("Sword") then
				pcall(function()
					if not pl.Character:FindFirstChild("HumanoidRootPart") then
					else
						firetouchinterest(lp.Character.Sword,pl.Character.HumanoidRootPart,1)
						firetouchinterest(lp.Character.Sword,v.Character.HumanoidRootPart,0)
					end
				end)
			elseif lp.Backpack:FindFirstChild("LinkedSword") then
				pcall(function()
					if not pl.Character:FindFirstChild("HumanoidRootPart") then
					else
						firetouchinterest(lp.Character.LinkedSword,pl.Character.HumanoidRootPart,1)
						firetouchinterest(lp.Character.LinkedSword,pl.Character.HumanoidRootPart,0)
					end
				end)
			end
		until pl.Character.Humanoid.Health == 0
	end)
end
coroutine.wrap(EPVGUF_fake_script)()
