-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local TextButton_10 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local TextButton_11 = Instance.new("TextButton")
local TextButton_12 = Instance.new("TextButton")
local TextButton_13 = Instance.new("TextButton")
local TextButton_14 = Instance.new("TextButton")
local TextButton_15 = Instance.new("TextButton")
local TextButton_16 = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton_17 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(107, 0, 134)
Frame.Position = UDim2.new(0.134615377, 0, 0.118530884, 0)
Frame.Size = UDim2.new(0, 818, 0, 471)
Frame.Draggable = true
Frame.Active = true
Frame.Selectable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
TextButton.Position = UDim2.new(0.0132508371, 0, 0.121097483, 0)
TextButton.Size = UDim2.new(0, 126, 0, 37)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Infinite Yield"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source​",true))()
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(139, 0, 177)
TextLabel.Size = UDim2.new(0, 818, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Damix GUI thingy "
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0.185808659, 0, 0.120917387, 0)
TextButton_2.Size = UDim2.new(0, 126, 0, 37)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "TP to house"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30, 6, 66)
end)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(124, 0, 158)
ScrollingFrame.Position = UDim2.new(0.0132812653, 0, 0.487332016, 0)
ScrollingFrame.Size = UDim2.new(0, 126, 0, 241)

TextButton_3.Parent = ScrollingFrame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.Size = UDim2.new(0, 113, 0, 38)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Bombo's Survival Raig Table"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 0000000000000000000000000000000000243788010"))
end)

TextButton_4.Parent = ScrollingFrame
TextButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.Position = UDim2.new(0, 0, 0.0647558421, 0)
TextButton_4.Size = UDim2.new(0, 113, 0, 38)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Bad Bunny"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true
TextButton_4.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 000000000000000000000000000000000024839406"))
end)

TextButton_5.Parent = ScrollingFrame
TextButton_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.Position = UDim2.new(-0.00793650839, 0, 0.13269639, 0)
TextButton_5.Size = UDim2.new(0, 113, 0, 38)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Vampire Vanquisher"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true
TextButton_5.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 000000000000000000000000000000000094794847"))
end)

TextButton_6.Parent = ScrollingFrame
TextButton_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.Position = UDim2.new(0, 0, 0.197452232, 0)
TextButton_6.Size = UDim2.new(0, 113, 0, 38)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Historic 'Timmy' Gun"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true
TextButton_6.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 0000000000000000000000000000000000116693764"))
end)

TextButton_7.Parent = ScrollingFrame
TextButton_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.Position = UDim2.new(0, 0, 0.260084927, 0)
TextButton_7.Size = UDim2.new(0, 113, 0, 38)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "Bloxy Cola"
TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true
TextButton_7.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 000000000000000000000000000000000010472779"))
end)

TextButton_8.Parent = ScrollingFrame
TextButton_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.Position = UDim2.new(-0.00793650839, 0, 0.324840784, 0)
TextButton_8.Size = UDim2.new(0, 113, 0, 38)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "Subspace Tripmine"
TextButton_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8.TextScaled = true
TextButton_8.TextSize = 14.000
TextButton_8.TextWrapped = true
TextButton_8.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 000000000000000000000000000000000011999247"))
end)

TextButton_9.Parent = ScrollingFrame
TextButton_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.Position = UDim2.new(-0.00793650839, 0, 0.387473464, 0)
TextButton_9.Size = UDim2.new(0, 113, 0, 38)
TextButton_9.Font = Enum.Font.SourceSans
TextButton_9.Text = "Portable Justice"
TextButton_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_9.TextScaled = true
TextButton_9.TextSize = 14.000
TextButton_9.TextWrapped = true
TextButton_9.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 000000000000000000000000000000000082357101"))
end)

TextButton_10.Parent = Frame
TextButton_10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_10.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton_10.Position = UDim2.new(0.363074005, 0, 0.119225837, 0)
TextButton_10.Size = UDim2.new(0, 126, 0, 37)
TextButton_10.Font = Enum.Font.SourceSans
TextButton_10.Text = "Shutdown"
TextButton_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_10.TextScaled = true
TextButton_10.TextSize = 14.000
TextButton_10.TextWrapped = true
TextButton_10.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("h Shutting Down This Server..."))
wait(2.0)
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("freeze all"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("clone all"))
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("freeze all"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("clone all"))
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("size all 0.3"))
game:GetService'Players':Chat(("freeze all"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("size all 10"))
game:GetService'Players':Chat(("clone all"))
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.Position = UDim2.new(0.013281256, 0, 0.395398587, 0)
TextLabel_2.Size = UDim2.new(0, 126, 0, 31)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Gears"
TextLabel_2.TextColor3 = Color3.fromRGB(254, 254, 254)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ScrollingFrame_2.Parent = Frame
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(124, 0, 158)
ScrollingFrame_2.Position = UDim2.new(0.809944928, 0, 0.120814033, 0)
ScrollingFrame_2.Size = UDim2.new(0, 155, 0, 421)

TextButton_11.Parent = ScrollingFrame_2
TextButton_11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_11.Position = UDim2.new(0, 0, -0.00108972192, 0)
TextButton_11.Size = UDim2.new(0, 143, 0, 42)
TextButton_11.Font = Enum.Font.SourceSans
TextButton_11.Text = "Oof Kohls (Experimental)"
TextButton_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_11.TextScaled = true
TextButton_11.TextSize = 10.000
TextButton_11.TextWrapped = true
TextButton_11.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/HPg0M79w",true))()
end)

TextButton_12.Parent = ScrollingFrame_2
TextButton_12.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_12.Position = UDim2.new(0, 0, 0.0730133355, 0)
TextButton_12.Size = UDim2.new(0, 143, 0, 42)
TextButton_12.Font = Enum.Font.SourceSans
TextButton_12.Text = "Dark Kohls"
TextButton_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_12.TextScaled = true
TextButton_12.TextSize = 14.000
TextButton_12.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_12.TextWrapped = true
TextButton_12.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Games/Kohls%20Admin%20House/DarkKohls/GUI.lua"))()
end)

TextButton_13.Parent = ScrollingFrame_2
TextButton_13.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_13.Position = UDim2.new(0, 0, 0.153692752, 0)
TextButton_13.Size = UDim2.new(0, 143, 0, 42)
TextButton_13.Font = Enum.Font.SourceSans
TextButton_13.Text = "Admin Joy v2"
TextButton_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_13.TextScaled = true
TextButton_13.TextSize = 14.000
TextButton_13.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_13.TextWrapped = true
TextButton_13.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/RDd3U65R",true))()
end)

TextButton_14.Parent = Frame
TextButton_14.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_14.Position = UDim2.new(0.0122249126, 0, 0.22292994, 0)
TextButton_14.Size = UDim2.new(0, 126, 0, 37)
TextButton_14.Font = Enum.Font.SourceSans
TextButton_14.Text = "Dex"
TextButton_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_14.TextScaled = true
TextButton_14.TextSize = 14.000
TextButton_14.TextWrapped = true
TextButton_14.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/AP2nT0Bz​",true))()
end)

TextButton_15.Parent = Frame
TextButton_15.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_15.Position = UDim2.new(0.184596553, 0, 0.22292994, 0)
TextButton_15.Size = UDim2.new(0, 126, 0, 37)
TextButton_15.Font = Enum.Font.SourceSans
TextButton_15.Text = "Suicide"
TextButton_15.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_15.TextScaled = true
TextButton_15.TextSize = 14.000
TextButton_15.TextWrapped = true
TextButton_15.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("kill me"))
end)

TextButton_16.Parent = Frame
TextButton_16.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_16.Position = UDim2.new(0.361858189, 0, 0.22292994, 0)
TextButton_16.Size = UDim2.new(0, 126, 0, 37)
TextButton_16.Font = Enum.Font.SourceSans
TextButton_16.Text = "Ad (our server)"
TextButton_16.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_16.TextScaled = true
TextButton_16.TextSize = 14.000
TextButton_16.TextWrapped = true
TextButton_16.MouseButton1Down:connect(function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Join DIY Scripts Today! :D || gg/BHgeTSQUd5","All")
end)

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.Position = UDim2.new(0.219974652, 0, 0.395078093, 0)
TextLabel_3.Size = UDim2.new(0, 452, 0, 268)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "More Coming Soon"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextButton_17.Parent = ScreenGui
TextButton_17.BackgroundColor3 = Color3.fromRGB(107, 0, 134)
TextButton_17.Position = UDim2.new(0, 0, 0.430717856, 0)
TextButton_17.Size = UDim2.new(0, 98, 0, 50)
TextButton_17.Font = Enum.Font.SourceSans
TextButton_17.Text = "Open"
TextButton_17.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_17.TextScaled = true
TextButton_17.TextSize = 14.000
TextButton_17.TextWrapped = true

-- Scripts:

local function LMRIO_fake_script() -- TextButton_17.LocalScript 
	local script = Instance.new('LocalScript', TextButton_17)

	local Button = script.Parent
	local Frame = Button.Parent.Frame
	
	Button.MouseButton1Click:Connect(function()
		if Frame.Visible == true then
			Frame.Visible = false
	
			Button.Text = "Open"
		else
			Frame.Visible = true
			Button.Text = "Close"
		end
	end)
end
coroutine.wrap(LMRIO_fake_script)()
