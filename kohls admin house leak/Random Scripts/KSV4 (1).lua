-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local remove = Instance.new("TextButton")
local Shadow = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local house = Instance.new("TextButton")
local Shadow_2 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local spawnn = Instance.new("TextButton")
local Shadow_3 = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local regen = Instance.new("TextButton")
local Shadow_4 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local remain = Instance.new("TextButton")
local Shadow_5 = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local abuse = Instance.new("TextButton")
local Shadow_6 = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local jail = Instance.new("TextButton")
local Shadow_7 = Instance.new("Frame")
local TextLabel_9 = Instance.new("TextLabel")
local ad = Instance.new("TextButton")
local Shadow_8 = Instance.new("Frame")
local TextLabel_10 = Instance.new("TextLabel")
local padtp = Instance.new("TextButton")
local Shadow_9 = Instance.new("Frame")
local TextLabel_11 = Instance.new("TextLabel")
local New = Instance.new("TextButton")
local Shadow_10 = Instance.new("Frame")
local TextLabel_12 = Instance.new("TextLabel")
local Crash = Instance.new("TextButton")
local Shadow_11 = Instance.new("Frame")
local TextLabel_13 = Instance.new("TextLabel")
local antikill = Instance.new("TextButton")
local Shadow_12 = Instance.new("Frame")
local TextLabel_14 = Instance.new("TextLabel")
local antipunish = Instance.new("TextButton")
local Shadow_13 = Instance.new("Frame")
local TextLabel_15 = Instance.new("TextLabel")
local perm = Instance.new("TextButton")
local Shadow_14 = Instance.new("Frame")
local TextLabel_16 = Instance.new("TextLabel")
local antijail = Instance.new("TextButton")
local Shadow_15 = Instance.new("Frame")
local TextLabel_17 = Instance.new("TextLabel")
local loopk = Instance.new("TextButton")
local Shadow_16 = Instance.new("Frame")
local TextLabel_19 = Instance.new("TextLabel")
local loopr = Instance.new("TextButton")
local Shadow_17 = Instance.new("Frame")
local TextLabel_20 = Instance.new("TextLabel")
local loope = Instance.new("TextButton")
local Shadow_18 = Instance.new("Frame")
local TextLabel_21 = Instance.new("TextLabel")

--Properties:

function msg(i) game.Players:Chat("h                                                                                                                                       "..i.."                                                                                                                                                                    ") end
--TOGGLES DONT TOUCH
local antik = false
local antip = false
local permpad = false
local antij = false
local padabus = false
local loopkill = false
local looprepspawn = false
local loopexplode = false
local anticrash = false

function noti(text)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Koala Sploit v4.0"; 
		Text = text; 
		Duration = 15;
	})
end
noti("Welcome " ..game.Players.LocalPlayer.Name.. " To KoalaSploit v4.0!")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.Position = UDim2.new(0.536106706, 0, 0.586096168, 0)
Frame.Size = UDim2.new(0, 531, 0, 350)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.00140127982, 0, -0.00284579117, 0)
TextLabel.Size = UDim2.new(0, 154, 0, 36)
TextLabel.Font = Enum.Font.Antique
TextLabel.Text = "KoalaSploit v4"
TextLabel.TextColor3 = Color3.fromRGB(35, 134, 156)
TextLabel.TextSize = 26.000
spawn(function()
	while true do wait(1)
		TextLabel.Text = "Death"
		TextLabel.TextColor3 = Color3.fromRGB(115, 16, 16)
		TextLabel.Font = Enum.Font.Antique
		wait(0.50)
		TextLabel.Text = "Suffering"
		TextLabel.TextColor3 = Color3.fromRGB(75, 0, 1)
		TextLabel.Font = Enum.Font.Antique
		wait(0.60)
		TextLabel.Text = "p  A i N N"
		TextLabel.TextColor3 = Color3.fromRGB(75, 0, 1)
		TextLabel.Font = Enum.Font.Antique
		wait(0.8)
		TextLabel.Text = "KoalaSploit v4"
		TextLabel.TextColor3 = Color3.fromRGB(47, 214, 139)
		TextLabel.Font = Enum.Font.Antique
		wait(4)
	end
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.708579838, 0, -0.00284579117, 0)
TextLabel_2.Size = UDim2.new(0, 154, 0, 36)
TextLabel_2.Font = Enum.Font.Arial
TextLabel_2.Text = "Nexxor#1824"
TextLabel_2.TextColor3 = Color3.fromRGB(121, 0, 2)
TextLabel_2.TextSize = 26.000

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0, 0, 0.12367484, 0)
ImageLabel.Size = UDim2.new(0, 530, 0, 306)
ImageLabel.Image = "http://www.roblox.com/asset/?id=28575895"

remove.Name = "remove"
remove.Parent = Frame
remove.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
remove.BorderSizePixel = 0
remove.Position = UDim2.new(0.0235404912, 0, 0.158601075, 0)
remove.Size = UDim2.new(0, 158, 0, 34)
remove.ZIndex = 2
remove.Font = Enum.Font.GothamSemibold
remove.Text = ""
remove.TextColor3 = Color3.fromRGB(255, 255, 255)
remove.TextScaled = true
remove.TextSize = 14.000
remove.TextWrapped = true
remove.MouseButton1Click:Connect(function()
	for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
		v:Destroy()
	end
end)

Shadow.Name = "Shadow"
Shadow.Parent = remove
Shadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1, 0, 1, 4)

TextLabel_3.Parent = remove
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_3.Size = UDim2.new(1, -20, 1, -20)
TextLabel_3.ZIndex = 2
TextLabel_3.Font = Enum.Font.GothamSemibold
TextLabel_3.Text = "Remove Obby"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

house.Name = "house"
house.Parent = Frame
house.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
house.BorderSizePixel = 0
house.Position = UDim2.new(0.351224124, 0, 0.158601075, 0)
house.Size = UDim2.new(0, 158, 0, 34)
house.ZIndex = 2
house.Font = Enum.Font.GothamSemibold
house.Text = ""
house.TextColor3 = Color3.fromRGB(255, 255, 255)
house.TextScaled = true
house.TextSize = 14.000
house.TextWrapped = true
house.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
end)

Shadow_2.Name = "Shadow"
Shadow_2.Parent = house
Shadow_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_2.BorderSizePixel = 0
Shadow_2.Size = UDim2.new(1, 0, 1, 4)

TextLabel_4.Parent = house
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_4.Size = UDim2.new(1, -20, 1, -20)
TextLabel_4.ZIndex = 2
TextLabel_4.Font = Enum.Font.GothamSemibold
TextLabel_4.Text = "Teleport To House"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

spawnn.Name = "spawn"
spawnn.Parent = Frame
spawnn.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
spawnn.BorderSizePixel = 0
spawnn.Position = UDim2.new(0.671374738, 0, 0.158601075, 0)
spawnn.Size = UDim2.new(0, 158, 0, 34)
spawnn.ZIndex = 2
spawnn.Font = Enum.Font.GothamSemibold
spawnn.Text = ""
spawnn.TextColor3 = Color3.fromRGB(255, 255, 255)
spawnn.TextScaled = true
spawnn.TextSize = 14.000
spawnn.TextWrapped = true
spawnn.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
end)

Shadow_3.Name = "Shadow"
Shadow_3.Parent = spawnn
Shadow_3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_3.BorderSizePixel = 0
Shadow_3.Size = UDim2.new(1, 0, 1, 4)

TextLabel_5.Parent = spawnn
TextLabel_5.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_5.Size = UDim2.new(1, -20, 1, -20)
TextLabel_5.ZIndex = 2
TextLabel_5.Font = Enum.Font.GothamSemibold
TextLabel_5.Text = "Teleport To Spawn"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

regen.Name = "regen"
regen.Parent = Frame
regen.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
regen.BorderSizePixel = 0
regen.Position = UDim2.new(0.0235404912, 0, 0.295009732, 0)
regen.Size = UDim2.new(0, 158, 0, 34)
regen.ZIndex = 2
regen.Font = Enum.Font.GothamSemibold
regen.Text = ""
regen.TextColor3 = Color3.fromRGB(255, 255, 255)
regen.TextScaled = true
regen.TextSize = 14.000
regen.TextWrapped = true
regen.MouseButton1Click:Connect(function()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end)

Shadow_4.Name = "Shadow"
Shadow_4.Parent = regen
Shadow_4.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_4.BorderSizePixel = 0
Shadow_4.Size = UDim2.new(1, 0, 1, 4)

TextLabel_6.Parent = regen
TextLabel_6.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_6.Size = UDim2.new(1, -20, 1, -20)
TextLabel_6.ZIndex = 2
TextLabel_6.Font = Enum.Font.GothamSemibold
TextLabel_6.Text = "Regen Admin Pads"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

remain.Name = "remain"
remain.Parent = Frame
remain.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
remain.BorderSizePixel = 0
remain.Position = UDim2.new(0.351224124, 0, 0.295009732, 0)
remain.Size = UDim2.new(0, 158, 0, 34)
remain.ZIndex = 2
remain.Font = Enum.Font.GothamSemibold
remain.Text = ""
remain.TextColor3 = Color3.fromRGB(255, 255, 255)
remain.TextScaled = true
remain.TextSize = 14.000
remain.TextWrapped = true
remain.MouseButton1Click:Connect(function()
	for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Touch to get admin")) do
		local cre = v.Head
		local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
		firetouchinterest(cre, spr, 1)
		wait()
		firetouchinterest(cre, spr, 0)
	end
end)

Shadow_5.Name = "Shadow"
Shadow_5.Parent = remain
Shadow_5.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_5.BorderSizePixel = 0
Shadow_5.Size = UDim2.new(1, 0, 1, 4)

TextLabel_7.Parent = remain
TextLabel_7.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_7.Size = UDim2.new(1, -20, 1, -20)
TextLabel_7.ZIndex = 2
TextLabel_7.Font = Enum.Font.GothamSemibold
TextLabel_7.Text = "Get Green Pads"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

abuse.Name = "abuse"
abuse.Parent = Frame
abuse.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
abuse.BorderSizePixel = 0
abuse.Position = UDim2.new(0.671374738, 0, 0.295009732, 0)
abuse.Size = UDim2.new(0, 158, 0, 34)
abuse.ZIndex = 2
abuse.Font = Enum.Font.GothamSemibold
abuse.Text = ""
abuse.TextColor3 = Color3.fromRGB(255, 255, 255)
abuse.TextScaled = true
abuse.TextSize = 14.000
abuse.TextWrapped = true
abuse.MouseButton1Click:Connect(function()
	if padabus == true then
		padabus = false
		abuse.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	else
		padabus = true
		abuse.BackgroundColor3 = Color3.fromRGB(27, 148, 37)
		padabuse()
	end
end)

Shadow_6.Name = "Shadow"
Shadow_6.Parent = abuse
Shadow_6.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_6.BorderSizePixel = 0
Shadow_6.Size = UDim2.new(1, 0, 1, 4)

TextLabel_8.Parent = abuse
TextLabel_8.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_8.Size = UDim2.new(1, -20, 1, -20)
TextLabel_8.ZIndex = 2
TextLabel_8.Font = Enum.Font.GothamSemibold
TextLabel_8.Text = "Pad Abuse"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

jail.Name = "jail"
jail.Parent = Frame
jail.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
jail.BorderSizePixel = 0
jail.Position = UDim2.new(0.0273069702, 0, 0.449317992, 0)
jail.Size = UDim2.new(0, 158, 0, 34)
jail.ZIndex = 2
jail.Font = Enum.Font.GothamSemibold
jail.Text = ""
jail.TextColor3 = Color3.fromRGB(255, 255, 255)
jail.TextScaled = true
jail.TextSize = 14.000
jail.TextWrapped = true
jail.MouseButton1Click:Connect(function()
	game.Players:Chat("removejails")
	msg("Jails Removed - KS V4")
end)

Shadow_7.Name = "Shadow"
Shadow_7.Parent = jail
Shadow_7.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_7.BorderSizePixel = 0
Shadow_7.Size = UDim2.new(1, 0, 1, 4)

TextLabel_9.Parent = jail
TextLabel_9.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_9.Size = UDim2.new(1, -20, 1, -20)
TextLabel_9.ZIndex = 2
TextLabel_9.Font = Enum.Font.GothamSemibold
TextLabel_9.Text = "Clear Jails"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

ad.Name = "ad"
ad.Parent = Frame
ad.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
ad.BorderSizePixel = 0
ad.Position = UDim2.new(0.354990602, 0, 0.449317992, 0)
ad.Size = UDim2.new(0, 158, 0, 34)
ad.ZIndex = 2
ad.Font = Enum.Font.GothamSemibold
ad.Text = ""
ad.TextColor3 = Color3.fromRGB(255, 255, 255)
ad.TextScaled = true
ad.TextSize = 14.000
ad.TextWrapped = true
ad.MouseButton1Click:Connect(function()
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(game.Players.LocalPlayer.Name.. " Is Using KoalaSploit v4 By Nexxor!", "ALL")
end)

Shadow_8.Name = "Shadow"
Shadow_8.Parent = ad
Shadow_8.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_8.BorderSizePixel = 0
Shadow_8.Size = UDim2.new(1, 0, 1, 4)

TextLabel_10.Parent = ad
TextLabel_10.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_10.Size = UDim2.new(1, -20, 1, -20)
TextLabel_10.ZIndex = 2
TextLabel_10.Font = Enum.Font.GothamSemibold
TextLabel_10.Text = "Alert Server"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true

padtp.Name = "padtp"
padtp.Parent = Frame
padtp.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
padtp.BorderSizePixel = 0
padtp.Position = UDim2.new(0.675141215, 0, 0.449317992, 0)
padtp.Size = UDim2.new(0, 158, 0, 34)
padtp.ZIndex = 2
padtp.Font = Enum.Font.GothamSemibold
padtp.Text = ""
padtp.TextColor3 = Color3.fromRGB(255, 255, 255)
padtp.TextScaled = true
padtp.TextSize = 14.000
padtp.TextWrapped = true
padtp.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
end)

Shadow_9.Name = "Shadow"
Shadow_9.Parent = padtp
Shadow_9.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_9.BorderSizePixel = 0
Shadow_9.Size = UDim2.new(1, 0, 1, 4)

TextLabel_11.Parent = padtp
TextLabel_11.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_11.Size = UDim2.new(1, -20, 1, -20)
TextLabel_11.ZIndex = 2
TextLabel_11.Font = Enum.Font.GothamSemibold
TextLabel_11.Text = "Teleport To Pads"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true

New.Name = "New"
New.Parent = Frame
New.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
New.BorderSizePixel = 0
New.Position = UDim2.new(0.0235404912, 0, 0.58436054, 0)
New.Size = UDim2.new(0, 158, 0, 34)
New.ZIndex = 2
New.Font = Enum.Font.GothamSemibold
New.Text = ""
New.TextColor3 = Color3.fromRGB(255, 255, 255)
New.TextScaled = true
New.TextSize = 14.000
New.TextWrapped = true
New.MouseButton1Click:Connect(function()
	colorallrandom()
end)

Shadow_10.Name = "Shadow"
Shadow_10.Parent = New
Shadow_10.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_10.BorderSizePixel = 0
Shadow_10.Size = UDim2.new(1, 0, 1, 4)

TextLabel_12.Parent = New
TextLabel_12.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_12.Size = UDim2.new(1, -20, 1, -20)
TextLabel_12.ZIndex = 2
TextLabel_12.Font = Enum.Font.GothamSemibold
TextLabel_12.Text = "Color All Random"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.TextScaled = true
TextLabel_12.TextSize = 14.000
TextLabel_12.TextWrapped = true

Crash.Name = "Crash"
Crash.Parent = Frame
Crash.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Crash.BorderSizePixel = 0
Crash.Position = UDim2.new(0.351224124, 0, 0.58436054, 0)
Crash.Size = UDim2.new(0, 158, 0, 34)
Crash.ZIndex = 2
Crash.Font = Enum.Font.GothamSemibold
Crash.Text = ""
Crash.TextColor3 = Color3.fromRGB(255, 255, 255)
Crash.TextScaled = true
Crash.TextSize = 14.000
Crash.TextWrapped = true
Crash.MouseButton1Click:Connect(function()
	crashserver()
end)

Shadow_11.Name = "Shadow"
Shadow_11.Parent = Crash
Shadow_11.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_11.BorderSizePixel = 0
Shadow_11.Size = UDim2.new(1, 0, 1, 4)

TextLabel_13.Parent = Crash
TextLabel_13.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_13.Size = UDim2.new(1, -20, 1, -20)
TextLabel_13.ZIndex = 2
TextLabel_13.Font = Enum.Font.GothamSemibold
TextLabel_13.Text = "Crash Server"
TextLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.TextScaled = true
TextLabel_13.TextSize = 14.000
TextLabel_13.TextWrapped = true

antikill.Name = "antikill"
antikill.Parent = Frame
antikill.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
antikill.BorderSizePixel = 0
antikill.Position = UDim2.new(0.671374738, 0, 0.58436054, 0)
antikill.Size = UDim2.new(0, 158, 0, 34)
antikill.ZIndex = 2
antikill.Font = Enum.Font.GothamSemibold
antikill.Text = ""
antikill.TextColor3 = Color3.fromRGB(255, 255, 255)
antikill.TextScaled = true
antikill.TextSize = 14.000
antikill.TextWrapped = true
antikill.MouseButton1Click:Connect(function()
	if antik == true then
		antik = false
		antikill.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	else
		antik = true
		antikill.BackgroundColor3 = Color3.fromRGB(27, 148, 37)
		antideath()
	end
end)

Shadow_12.Name = "Shadow"
Shadow_12.Parent = antikill
Shadow_12.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_12.BorderSizePixel = 0
Shadow_12.Size = UDim2.new(1, 0, 1, 4)

TextLabel_14.Parent = antikill
TextLabel_14.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_14.Size = UDim2.new(1, -20, 1, -20)
TextLabel_14.ZIndex = 2
TextLabel_14.Font = Enum.Font.GothamSemibold
TextLabel_14.Text = "Anti Kill"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 14.000
TextLabel_14.TextWrapped = true

antipunish.Name = "antipunish"
antipunish.Parent = Frame
antipunish.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
antipunish.BorderSizePixel = 0
antipunish.Position = UDim2.new(0.0235404912, 0, 0.72661221, 0)
antipunish.Size = UDim2.new(0, 158, 0, 34)
antipunish.ZIndex = 2
antipunish.Font = Enum.Font.GothamSemibold
antipunish.Text = ""
antipunish.TextColor3 = Color3.fromRGB(255, 255, 255)
antipunish.TextScaled = true
antipunish.TextSize = 14.000
antipunish.TextWrapped = true
antipunish.MouseButton1Click:Connect(function()
	if antip == true then
		antip = false
		antipunish.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	else
		antip = true
		antipunish.BackgroundColor3 = Color3.fromRGB(27, 148, 37)
		antipun()
	end
end)

Shadow_13.Name = "Shadow"
Shadow_13.Parent = antipunish
Shadow_13.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_13.BorderSizePixel = 0
Shadow_13.Size = UDim2.new(1, 0, 1, 4)

TextLabel_15.Parent = antipunish
TextLabel_15.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_15.Size = UDim2.new(1, -20, 1, -20)
TextLabel_15.ZIndex = 2
TextLabel_15.Font = Enum.Font.GothamSemibold
TextLabel_15.Text = "Anti Punish"
TextLabel_15.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 14.000
TextLabel_15.TextWrapped = true

perm.Name = "perm"
perm.Parent = Frame
perm.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
perm.BorderSizePixel = 0
perm.Position = UDim2.new(0.351224124, 0, 0.72661221, 0)
perm.Size = UDim2.new(0, 158, 0, 34)
perm.ZIndex = 2
perm.Font = Enum.Font.GothamSemibold
perm.Text = ""
perm.TextColor3 = Color3.fromRGB(255, 255, 255)
perm.TextScaled = true
perm.TextSize = 14.000
perm.TextWrapped = true
perm.MouseButton1Click:Connect(function()
	if anticrash == true then
		anticrash = false
		perm.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	else
		anticrash = true
		perm.BackgroundColor3 = Color3.fromRGB(27, 148, 37)
		antivg()
	end
end)

Shadow_14.Name = "Shadow"
Shadow_14.Parent = perm
Shadow_14.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_14.BorderSizePixel = 0
Shadow_14.Size = UDim2.new(1, 0, 1, 4)

TextLabel_16.Parent = perm
TextLabel_16.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_16.Size = UDim2.new(1, -20, 1, -20)
TextLabel_16.ZIndex = 2
TextLabel_16.Font = Enum.Font.GothamSemibold
TextLabel_16.Text = "Anti VG Crash"
TextLabel_16.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 14.000
TextLabel_16.TextWrapped = true

antijail.Name = "antijail"
antijail.Parent = Frame
antijail.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
antijail.BorderSizePixel = 0
antijail.Position = UDim2.new(0.671374738, 0, 0.72661221, 0)
antijail.Size = UDim2.new(0, 158, 0, 34)
antijail.ZIndex = 2
antijail.Font = Enum.Font.GothamSemibold
antijail.Text = ""
antijail.TextColor3 = Color3.fromRGB(255, 255, 255)
antijail.TextScaled = true
antijail.TextSize = 14.000
antijail.TextWrapped = true
antijail.MouseButton1Click:Connect(function()
	if antij == true then
		antij = false
		antijail.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	else
		antij = true
		antijail.BackgroundColor3 = Color3.fromRGB(27, 148, 37)
		AntiJaill()
	end
end)

Shadow_15.Name = "Shadow"
Shadow_15.Parent = antijail
Shadow_15.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_15.BorderSizePixel = 0
Shadow_15.Size = UDim2.new(1, 0, 1, 4)

TextLabel_17.Parent = antijail
TextLabel_17.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_17.Size = UDim2.new(1, -20, 1, -20)
TextLabel_17.ZIndex = 2
TextLabel_17.Font = Enum.Font.GothamSemibold
TextLabel_17.Text = "Anti Jail"
TextLabel_17.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.TextScaled = true
TextLabel_17.TextSize = 14.000
TextLabel_17.TextWrapped = true

loopk.Name = "loopk"
loopk.Parent = Frame
loopk.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
loopk.BorderSizePixel = 0
loopk.Position = UDim2.new(0.0235404912, 0, 0.860897899, 0)
loopk.Size = UDim2.new(0, 158, 0, 34)
loopk.ZIndex = 2
loopk.Font = Enum.Font.GothamSemibold
loopk.Text = ""
loopk.TextColor3 = Color3.fromRGB(255, 255, 255)
loopk.TextScaled = true
loopk.TextSize = 14.000
loopk.TextWrapped = true
loopk.MouseButton1Click:Connect(function()
	if loopkill == true then
		loopkill = false
		loopk.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	else
		loopkill = true
		loopk.BackgroundColor3 = Color3.fromRGB(27, 148, 37)
		loopkillall()
	end
end)

Shadow_16.Name = "Shadow"
Shadow_16.Parent = loopk
Shadow_16.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_16.BorderSizePixel = 0
Shadow_16.Size = UDim2.new(1, 0, 1, 4)

TextLabel_19.Parent = loopk
TextLabel_19.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.BackgroundTransparency = 1.000
TextLabel_19.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_19.BorderSizePixel = 0
TextLabel_19.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_19.Size = UDim2.new(1, -20, 1, -20)
TextLabel_19.ZIndex = 2
TextLabel_19.Font = Enum.Font.GothamSemibold
TextLabel_19.Text = "Loop Kill"
TextLabel_19.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.TextScaled = true
TextLabel_19.TextSize = 14.000
TextLabel_19.TextWrapped = true

loopr.Name = "loopr"
loopr.Parent = Frame
loopr.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
loopr.BorderSizePixel = 0
loopr.Position = UDim2.new(0.351224124, 0, 0.860897899, 0)
loopr.Size = UDim2.new(0, 158, 0, 34)
loopr.ZIndex = 2
loopr.Font = Enum.Font.GothamSemibold
loopr.Text = ""
loopr.TextColor3 = Color3.fromRGB(255, 255, 255)
loopr.TextScaled = true
loopr.TextSize = 14.000
loopr.TextWrapped = true
loopr.MouseButton1Click:Connect(function()
	if looprepspawn == true then
		looprepspawn = false
		loopr.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	else
		looprepspawn = true
		loopr.BackgroundColor3 = Color3.fromRGB(27, 148, 37)
		looprespawnall()
	end
end)

Shadow_17.Name = "Shadow"
Shadow_17.Parent = loopr
Shadow_17.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_17.BorderSizePixel = 0
Shadow_17.Size = UDim2.new(1, 0, 1, 4)

TextLabel_20.Parent = loopr
TextLabel_20.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.BackgroundTransparency = 1.000
TextLabel_20.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_20.BorderSizePixel = 0
TextLabel_20.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_20.Size = UDim2.new(1, -20, 1, -20)
TextLabel_20.ZIndex = 2
TextLabel_20.Font = Enum.Font.GothamSemibold
TextLabel_20.Text = "Loop Respawn"
TextLabel_20.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.TextScaled = true
TextLabel_20.TextSize = 14.000
TextLabel_20.TextWrapped = true

loope.Name = "loope"
loope.Parent = Frame
loope.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
loope.BorderSizePixel = 0
loope.Position = UDim2.new(0.671374738, 0, 0.860897899, 0)
loope.Size = UDim2.new(0, 158, 0, 34)
loope.ZIndex = 2
loope.Font = Enum.Font.GothamSemibold
loope.Text = ""
loope.TextColor3 = Color3.fromRGB(255, 255, 255)
loope.TextScaled = true
loope.TextSize = 14.000
loope.TextWrapped = true
loope.MouseButton1Click:Connect(function()
	if loopexplode == true then
		loopexplode = false
		loope.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	else
		loopexplode = true
		loope.BackgroundColor3 = Color3.fromRGB(27, 148, 37)
		loopexplodeall()
	end
end)

Shadow_18.Name = "Shadow"
Shadow_18.Parent = loope
Shadow_18.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_18.BorderSizePixel = 0
Shadow_18.Size = UDim2.new(1, 0, 1, 4)

TextLabel_21.Parent = loope
TextLabel_21.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.BackgroundTransparency = 1.000
TextLabel_21.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_21.BorderSizePixel = 0
TextLabel_21.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_21.Size = UDim2.new(1, -20, 1, -20)
TextLabel_21.ZIndex = 2
TextLabel_21.Font = Enum.Font.GothamSemibold
TextLabel_21.Text = "Loop Explode"
TextLabel_21.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.TextScaled = true
TextLabel_21.TextSize = 14.000
TextLabel_21.TextWrapped = true

function padabuse()
	spawn(function()
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		while padabus == true do
			for i, pad in pairs(pads) do
				local cre = pad.Head
				local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
				firetouchinterest(cre, spr, 1)
				wait()
				firetouchinterest(cre, spr, 0)

				if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
					fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
				end
			end
		end
	end)
end

function crashserver()
	spawn(function()
		function cmd(i) game.Players:Chat(i) end
		function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
		msg("Server Crashed By KS v4")
		cmd("music 6852520577")
		cmd("fogcolor 0 0 0")
		cmd("fogend 0")
		say("KoalaSploit On Top")
		wait(0.5)
		while true do wait(1)
			for i = 1,3 do cmd("size all 0.3") end
			cmd("freeze all")
			for i = 1,3 do cmd("size all 10") end
			cmd("clone all")
		end
	end)
end

function antideath()
	spawn(function()
		while antik == true do wait(0.50)
			if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
				game.Players:Chat("reset me")
				msg(game.Players.LocalPlayer.Name.. " Reset - KS v4")
			end
		end
	end)
end

function antipun()
	spawn(function()
		while antip == true do wait(0.50)
			if game.workspace:FindFirstChild(game.Players.LocalPlayer.Name) == nil then
				game.Players:Chat("unpunish me")
				msg("Unpunished - KS v4")
			end
		end
	end)
end

function AntiJaill()
	spawn(function()
		while antij == true do wait(0.6)
			local jailcheck = game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name.. "'s jail")
			if jailcheck ~= nil then
				game.Players:Chat("unjail me")
				msg("Jail Removed - KS v4")
			end
		end
	end)
end

function loopkillall()
	spawn(function()
	while loopkill == true do wait(1.5)
		game.Players:Chat("kill others")
		end
	end)
end

function loopexplodeall()
	spawn(function()
	while loopexplode == true do wait(0.5)
		game.Players:Chat("explode others")
		end
		end)
end

function looprespawnall()
	spawn(function()
	while looprepspawn == true do wait(0.3)
		game.Players:Chat("respawn others")
		end
		end)
end

function antivg()
	spawn(function()
	while anticrash == true do wait()
		for i,v in pairs(game.Players:GetChildren()) do
			for i,ve in pairs(v.Backpack:GetChildren()) do
				if ve.Name == "VampireVanquisher" then
					game:GetService'Players':Chat(("reset "..v.Name))
					msg(v.Name.. " Has Attempted To Crash But KS V4 Blocked That")
				end
			end
		end
		end
		end)
end

function colorallrandom()
	game.Players:Chat("gear me 00000000000000000018474459")
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
	wait(0.25)
	local obox = game:GetService("Workspace").Terrain["_Game"].Workspace["Obby Box"]:GetChildren()
	local admindiv = game:GetService("Workspace").Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()
	local house = game:GetService("Workspace").Terrain["_Game"].Workspace["Basic House"]:GetChildren()
	local bbrick = game:GetService("Workspace").Terrain["_Game"].Workspace["Building Bricks"]:GetChildren()
	local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()
	local bplate = game:GetService("Workspace").Terrain["_Game"].Workspace.Baseplate
	local clr = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
	local v1 =
		{
			["Part"] = bplate,
			["Color"] = clr
		}
	game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
	for i, v in pairs(house) do
		coroutine.wrap(function()
			if v:IsA("Part") then
				local clr = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
				local v1 =
					{
						["Part"] = v,
						["Color"] = clr
					}
				game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
			end
		end)()
	end
	for i, v in pairs(admindiv) do
		coroutine.wrap(function()
			if v:IsA("Part") then
				local clr = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
				local v1 =
					{
						["Part"] = v,
						["Color"] = clr
					}
				game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
			end
		end)()
	end
	for i, v in pairs(obox) do
		coroutine.wrap(function()
			if v:IsA("Part") then
				local clr = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
				local v1 =
					{
						["Part"] = v,
						["Color"] = clr
					}
				game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
			end
		end)()
	end
	for i, v in pairs(bbrick) do
		coroutine.wrap(function()
			if v:IsA("Part") then
				local clr = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
				local v1 =
					{
						["Part"] = v,
						["Color"] = clr
					}
				game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
			end
		end)()
	end
	for i, v in pairs(pads) do
		local head = v.Head
		coroutine.wrap(function()
			if head:IsA("Part") then
				local clr = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
				local v1 =
					{
						["Part"] = head,
						["Color"] = clr
					}
				game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
			end
		end)()
	end
end