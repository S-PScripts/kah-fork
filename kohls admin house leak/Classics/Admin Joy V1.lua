-- Commands list: https://pastebin.com/raw/jbdYHapk
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local OpenClose = Instance.new("TextButton")
local Buttons = Instance.new("Frame")
local spam = Instance.new("TextButton")
local super = Instance.new("TextButton")
local teleport = Instance.new("TextButton")
local kit = Instance.new("TextButton")
local localb = Instance.new("TextButton")
local morph = Instance.new("TextButton")
local emote = Instance.new("TextButton")
local credit = Instance.new("TextButton")
local cmds = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Spamtab = Instance.new("Frame")
local Delaybox = Instance.new("TextBox")
local delaytitle = Instance.new("TextLabel")
local Commandtitle = Instance.new("TextLabel")
local Commandbox = Instance.new("TextBox")
local title = Instance.new("TextLabel")
local line = Instance.new("TextLabel")
local Start = Instance.new("TextButton")
local Stop = Instance.new("TextButton")
local Supertab = Instance.new("Frame")
local Commandtitle_2 = Instance.new("TextLabel")
local Commandbox_2 = Instance.new("TextBox")
local title_2 = Instance.new("TextLabel")
local line_2 = Instance.new("TextLabel")
local executetitle = Instance.new("TextLabel")
local execute = Instance.new("TextButton")
local Emotestab = Instance.new("Frame")
local title_3 = Instance.new("TextLabel")
local line_3 = Instance.new("TextLabel")
local crouch = Instance.new("TextButton")
local hmm = Instance.new("TextButton")
local armspin = Instance.new("TextButton")
local loophead = Instance.new("TextButton")
local scream = Instance.new("TextButton")
local headraise = Instance.new("TextButton")
local dab = Instance.new("TextButton")
local crawl = Instance.new("TextButton")
local headtoss = Instance.new("TextButton")
local dance = Instance.new("TextButton")
local teleporttab = Instance.new("Frame")
local title_4 = Instance.new("TextLabel")
local line_4 = Instance.new("TextLabel")
local house = Instance.new("TextButton")
local uhouse = Instance.new("TextButton")
local pads = Instance.new("TextButton")
local spawn1 = Instance.new("TextButton")
local spawn2 = Instance.new("TextButton")
local spawn3 = Instance.new("TextButton")
local obby = Instance.new("TextButton")
local Kitstab = Instance.new("Frame")
local title_5 = Instance.new("TextLabel")
local line_5 = Instance.new("TextLabel")
local kitgod = Instance.new("TextButton")
local kitgun = Instance.new("TextButton")
local kitdark = Instance.new("TextButton")
local kitbow = Instance.new("TextButton")
local kitninja = Instance.new("TextButton")
local kitmagic = Instance.new("TextButton")
local kitomni = Instance.new("TextButton")
local kitdagger = Instance.new("TextButton")
local kitcrossbow = Instance.new("TextButton")
local kitknife = Instance.new("TextButton")
local kitpotion = Instance.new("TextButton")
local kitscythe = Instance.new("TextButton")
local kitsword = Instance.new("TextButton")
local Morphstab = Instance.new("Frame")
local title_6 = Instance.new("TextLabel")
local line_6 = Instance.new("TextLabel")
local jester = Instance.new("TextButton")
local aka = Instance.new("TextButton")
local joy = Instance.new("TextButton")
local darklord = Instance.new("TextButton")
local cmdtab = Instance.new("Frame")
local title_7 = Instance.new("TextLabel")
local line_7 = Instance.new("TextLabel")
local list = Instance.new("ScrollingFrame")
local oof = Instance.new("TextLabel")
local Credittab = Instance.new("Frame")
local title_8 = Instance.new("TextLabel")
local line_8 = Instance.new("TextLabel")
local cred1 = Instance.new("TextLabel")
local cred1_2 = Instance.new("TextLabel")
local cred1_3 = Instance.new("TextLabel")
local localtab = Instance.new("Frame")
local title_9 = Instance.new("TextLabel")
local line_9 = Instance.new("TextLabel")
local here = Instance.new("TextButton")
local back = Instance.new("TextButton")
local acolor = Instance.new("TextButton")
local purge = Instance.new("TextButton")
local zawarudo = Instance.new("TextButton")
local bcolor = Instance.new("TextButton")
local rejoin = Instance.new("TextButton")
local ccolor = Instance.new("TextButton")
local Stop_2 = Instance.new("TextButton")
local ms = Instance.new("TextButton")
local Go = Instance.new("TextButton")
local sky = Instance.new("TextButton")
local regen = Instance.new("TextButton")
local redhell = Instance.new("TextButton")
local rainbow = Instance.new("TextButton")
local clicktp = Instance.new("TextButton")
local stopcmds = Instance.new("TextButton")
local val = 0
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.0977168977, 0, 0.3360129, 0)
main.Size = UDim2.new(0, 237, 0, 33)
main.Visible = true
main.Draggable = true
main.Active = true
 
OpenClose.Name = "Open/Close"
OpenClose.Parent = main
OpenClose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenClose.BackgroundTransparency = 1.000
OpenClose.BorderSizePixel = 0
OpenClose.Position = UDim2.new(0.818565428, 0, 0, 0)
OpenClose.Size = UDim2.new(0, 43, 0, 35)
OpenClose.Font = Enum.Font.Gotham
OpenClose.Text = "-"
OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenClose.TextScaled = true
OpenClose.TextSize = 22.000
OpenClose.TextWrapped = true
OpenClose.MouseButton1Down:connect(function()
	val = val + 1
	if val == 1 then
	Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
    Buttons.Visible = true
	end
	if val == 2 then
		val = 0
	Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
    Buttons.Visible = false
	end
end)
 
Buttons.Name = "Buttons"
Buttons.Parent = main
Buttons.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0, 0, 0.999999523, 0)
Buttons.Size = UDim2.new(0, 237, 0, 433)
Buttons.Visible = false
 
spam.Name = "spam"
spam.Parent = Buttons
spam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
spam.BorderColor3 = Color3.fromRGB(12, 12, 12)
spam.BorderSizePixel = 5
spam.Position = UDim2.new(0.050999999, 0, 0.0250000004, 0)
spam.Size = UDim2.new(0, 212, 0, 29)
spam.Font = Enum.Font.Gotham
spam.Text = "Spam"
spam.TextColor3 = Color3.fromRGB(241, 241, 241)
spam.TextSize = 20.000
spam.MouseButton1Down:connect(function()
	Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = true
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
end)
 
super.Name = "super"
super.Parent = Buttons
super.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
super.BorderColor3 = Color3.fromRGB(12, 12, 12)
super.BorderSizePixel = 5
super.Position = UDim2.new(0.050999999, 0, 0.142494947, 0)
super.Size = UDim2.new(0, 212, 0, 29)
super.Font = Enum.Font.Gotham
super.Text = "Super"
super.TextColor3 = Color3.fromRGB(241, 241, 241)
super.TextSize = 20.000
super.MouseButton1Down:connect(function()
	Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = true
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
end)
 
teleport.Name = "teleport"
teleport.Parent = Buttons
teleport.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
teleport.BorderColor3 = Color3.fromRGB(12, 12, 12)
teleport.BorderSizePixel = 5
teleport.Position = UDim2.new(0.050999999, 0, 0.243890494, 0)
teleport.Size = UDim2.new(0, 212, 0, 29)
teleport.Font = Enum.Font.Gotham
teleport.Text = "Teleports"
teleport.TextColor3 = Color3.fromRGB(241, 241, 241)
teleport.TextSize = 20.000
teleport.MouseButton1Down:connect(function()
	Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = true
end)
 
kit.Name = "kit"
kit.Parent = Buttons
kit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
kit.BorderColor3 = Color3.fromRGB(12, 12, 12)
kit.BorderSizePixel = 5
kit.Position = UDim2.new(0.050999999, 0, 0.35161826, 0)
kit.Size = UDim2.new(0, 212, 0, 29)
kit.Font = Enum.Font.Gotham
kit.Text = "Kits"
kit.TextColor3 = Color3.fromRGB(241, 241, 241)
kit.TextSize = 20.000
kit.MouseButton1Down:connect(function()
	Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = true
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
end)
 
localb.Name = "localb"
localb.Parent = Buttons
localb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
localb.BorderColor3 = Color3.fromRGB(12, 12, 12)
localb.BorderSizePixel = 5
localb.Position = UDim2.new(0.050999999, 0, 0.465303779, 0)
localb.Size = UDim2.new(0, 212, 0, 29)
localb.Font = Enum.Font.Gotham
localb.Text = "Local"
localb.TextColor3 = Color3.fromRGB(241, 241, 241)
localb.TextSize = 20.000
localb.MouseButton1Down:connect(function()
	Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = true
	teleporttab.Visible = false
end)
 
morph.Name = "morph"
morph.Parent = Buttons
morph.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
morph.BorderColor3 = Color3.fromRGB(12, 12, 12)
morph.BorderSizePixel = 5
morph.Position = UDim2.new(0.050999999, 0, 0.563953161, 0)
morph.Size = UDim2.new(0, 212, 0, 29)
morph.Font = Enum.Font.Gotham
morph.Text = "Morphs"
morph.TextColor3 = Color3.fromRGB(241, 241, 241)
morph.TextSize = 20.000
morph.MouseButton1Down:connect(function()
	Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = true
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
end)
 
emote.Name = "emote"
emote.Parent = Buttons
emote.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
emote.BorderColor3 = Color3.fromRGB(12, 12, 12)
emote.BorderSizePixel = 5
emote.Position = UDim2.new(0.050999999, 0, 0.672698259, 0)
emote.Size = UDim2.new(0, 212, 0, 29)
emote.Font = Enum.Font.Gotham
emote.Text = "Emotes"
emote.TextColor3 = Color3.fromRGB(241, 241, 241)
emote.TextSize = 20.000
emote.MouseButton1Down:connect(function()
	Credittab.Visible = false
	Emotestab.Visible = true
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
end)
 
credit.Name = "credit"
credit.Parent = Buttons
credit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
credit.BorderColor3 = Color3.fromRGB(12, 12, 12)
credit.BorderSizePixel = 5
credit.Position = UDim2.new(0.050999999, 0, 0.776658654, 0)
credit.Size = UDim2.new(0, 212, 0, 29)
credit.Font = Enum.Font.Gotham
credit.Text = "Credits"
credit.TextColor3 = Color3.fromRGB(241, 241, 241)
credit.TextSize = 20.000
credit.MouseButton1Down:connect(function()
	Credittab.Visible = true
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
end)
 
cmds.Name = "cmds"
cmds.Parent = Buttons
cmds.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cmds.BorderColor3 = Color3.fromRGB(12, 12, 12)
cmds.BorderSizePixel = 5
cmds.Position = UDim2.new(0.050999999, 0, 0.885072172, 0)
cmds.Size = UDim2.new(0, 212, 0, 29)
cmds.Font = Enum.Font.Gotham
cmds.Text = "Cmds"
cmds.TextColor3 = Color3.fromRGB(241, 241, 241)
cmds.TextSize = 20.000
cmds.MouseButton1Down:connect(function()
		Credittab.Visible = false
	Emotestab.Visible = false
	Kitstab.Visible = false
	Morphstab.Visible = false
	Spamtab.Visible = false
	Supertab.Visible = false
	cmdtab.Visible = false
	localtab.Visible = false
	teleporttab.Visible = false
	cmds.Text = "WIP, Press F9"
	wait(2)
	cmds.Text = "To see all cmds"
	wait(2)
	cmds.Text = "Cmds"
end)
 
Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0506329127, 0, 0, 0)
Title.Size = UDim2.new(0, 119, 0, 35)
Title.Font = Enum.Font.Gotham
Title.Text = "AdminJoy"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 24.000
Title.TextWrapped = true
 
Spamtab.Name = "Spamtab"
Spamtab.Parent = main
Spamtab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Spamtab.BorderSizePixel = 0
Spamtab.Position = UDim2.new(1, 0, 0.969696522, 0)
Spamtab.Size = UDim2.new(0, 178, 0, 321)
Spamtab.Visible = false
 
Delaybox.Name = "Delaybox"
Delaybox.Parent = Spamtab
Delaybox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Delaybox.BorderColor3 = Color3.fromRGB(29, 29, 29)
Delaybox.BorderSizePixel = 5
Delaybox.Position = UDim2.new(0.0730337054, 0, 0.229579046, 0)
Delaybox.Size = UDim2.new(0, 152, 0, 40)
Delaybox.Font = Enum.Font.Gotham
Delaybox.PlaceholderColor3 = Color3.fromRGB(252, 252, 252)
Delaybox.PlaceholderText = "Value"
Delaybox.Text = ""
Delaybox.TextColor3 = Color3.fromRGB(255, 255, 255)
Delaybox.TextSize = 20.000
Delaybox.TextWrapped = true
 
delaytitle.Name = "delaytitle"
delaytitle.Parent = Spamtab
delaytitle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
delaytitle.BackgroundTransparency = 1.000
delaytitle.BorderColor3 = Color3.fromRGB(38, 38, 38)
delaytitle.BorderSizePixel = 0
delaytitle.Position = UDim2.new(0.157303363, 0, 0.125197724, 0)
delaytitle.Size = UDim2.new(0, 122, 0, 23)
delaytitle.Font = Enum.Font.SourceSans
delaytitle.Text = "Delay:"
delaytitle.TextColor3 = Color3.fromRGB(255, 255, 255)
delaytitle.TextSize = 20.000
delaytitle.TextWrapped = true
 
Commandtitle.Name = "Commandtitle"
Commandtitle.Parent = Spamtab
Commandtitle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Commandtitle.BackgroundTransparency = 1.000
Commandtitle.BorderColor3 = Color3.fromRGB(38, 38, 38)
Commandtitle.BorderSizePixel = 0
Commandtitle.Position = UDim2.new(0.157303363, 0, 0.4502469, 0)
Commandtitle.Size = UDim2.new(0, 122, 0, 23)
Commandtitle.Font = Enum.Font.SourceSans
Commandtitle.Text = "Command:"
Commandtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Commandtitle.TextSize = 20.000
Commandtitle.TextWrapped = true
 
Commandbox.Name = "Commandbox"
Commandbox.Parent = Spamtab
Commandbox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Commandbox.BorderColor3 = Color3.fromRGB(29, 29, 29)
Commandbox.BorderSizePixel = 5
Commandbox.Position = UDim2.new(0.0730337054, 0, 0.548766732, 0)
Commandbox.Size = UDim2.new(0, 152, 0, 36)
Commandbox.Font = Enum.Font.Gotham
Commandbox.PlaceholderColor3 = Color3.fromRGB(252, 252, 252)
Commandbox.PlaceholderText = "Command"
Commandbox.Text = ""
Commandbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Commandbox.TextSize = 20.000
 
title.Name = "title"
title.Parent = Spamtab
title.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(38, 38, 38)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.112359554, 0, 0.00934584159, 0)
title.Size = UDim2.new(0, 130, 0, 29)
title.Font = Enum.Font.SourceSans
title.Text = "Spam"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 20.000
title.TextWrapped = true
 
line.Name = "line"
line.Parent = Spamtab
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.0730337054, 0, 0.0996884704, 0)
line.Size = UDim2.new(0, 152, 0, 1)
line.Font = Enum.Font.SourceSans
line.Text = ""
line.TextColor3 = Color3.fromRGB(0, 0, 0)
line.TextSize = 14.000
 
Start.Name = "Start"
Start.Parent = Spamtab
Start.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Start.BorderColor3 = Color3.fromRGB(29, 29, 29)
Start.BorderSizePixel = 5
Start.Position = UDim2.new(0.0729999989, 0, 0.773000002, 0)
Start.Size = UDim2.new(0, 65, 0, 26)
Start.Font = Enum.Font.Gotham
Start.Text = "Start"
Start.TextColor3 = Color3.fromRGB(255, 255, 255)
Start.TextScaled = true
Start.TextSize = 14.000
Start.TextWrapped = true
Start.MouseButton1Down:connect(function()
	delayval = Delaybox.Text
	 cmd2spam = Commandbox.Text
function spamloop()
while loopcheck == true do
wait(delayval)
game:GetService'Players':Chat((cmd2spam))
end
end
 loopcheck = true
  spamloop()
 
end)
 
Stop.Name = "Stop"
Stop.Parent = Spamtab
Stop.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Stop.BorderColor3 = Color3.fromRGB(29, 29, 29)
Stop.BorderSizePixel = 5
Stop.Position = UDim2.new(0.561764061, 0, 0.773000002, 0)
Stop.Size = UDim2.new(0, 65, 0, 26)
Stop.Font = Enum.Font.Gotham
Stop.Text = "Stop"
Stop.TextColor3 = Color3.fromRGB(255, 255, 255)
Stop.TextScaled = true
Stop.TextSize = 14.000
Stop.TextWrapped = true
Stop.MouseButton1Down:connect(function()
loopcheck = false
end)
 
Supertab.Name = "Supertab"
Supertab.Parent = main
Supertab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Supertab.BorderSizePixel = 0
Supertab.Position = UDim2.new(1, 0, 0.969696522, 0)
Supertab.Size = UDim2.new(0, 178, 0, 225)
Supertab.Visible = false
 
Commandtitle_2.Name = "Commandtitle"
Commandtitle_2.Parent = Supertab
Commandtitle_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Commandtitle_2.BackgroundTransparency = 1.000
Commandtitle_2.BorderColor3 = Color3.fromRGB(38, 38, 38)
Commandtitle_2.BorderSizePixel = 0
Commandtitle_2.Position = UDim2.new(0.157303363, 0, 0.245927066, 0)
Commandtitle_2.Size = UDim2.new(0, 122, 0, 23)
Commandtitle_2.Font = Enum.Font.Gotham
Commandtitle_2.Text = "Command:"
Commandtitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Commandtitle_2.TextSize = 20.000
Commandtitle_2.TextWrapped = true
 
Commandbox_2.Name = "Commandbox"
Commandbox_2.Parent = Supertab
Commandbox_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Commandbox_2.BorderColor3 = Color3.fromRGB(29, 29, 29)
Commandbox_2.BorderSizePixel = 5
Commandbox_2.Position = UDim2.new(0.0730337054, 0, 0.40666914, 0)
Commandbox_2.Size = UDim2.new(0, 152, 0, 36)
Commandbox_2.Font = Enum.Font.Gotham
Commandbox_2.PlaceholderColor3 = Color3.fromRGB(252, 252, 252)
Commandbox_2.PlaceholderText = "Command"
Commandbox_2.Text = ""
Commandbox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Commandbox_2.TextSize = 20.000
 
title_2.Name = "title"
title_2.Parent = Supertab
title_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title_2.BackgroundTransparency = 1.000
title_2.BorderColor3 = Color3.fromRGB(38, 38, 38)
title_2.BorderSizePixel = 0
title_2.Position = UDim2.new(0.112359554, 0, 0.00934584159, 0)
title_2.Size = UDim2.new(0, 130, 0, 29)
title_2.Font = Enum.Font.Gotham
title_2.Text = "Super"
title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
title_2.TextScaled = true
title_2.TextSize = 20.000
title_2.TextWrapped = true
 
line_2.Name = "line"
line_2.Parent = Supertab
line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_2.BorderSizePixel = 0
line_2.Position = UDim2.new(0.0730337054, 0, 0.179688469, 0)
line_2.Size = UDim2.new(0, 152, 0, 1)
line_2.Font = Enum.Font.Gotham
line_2.Text = ""
line_2.TextColor3 = Color3.fromRGB(0, 0, 0)
line_2.TextSize = 14.000
 
executetitle.Name = "executetitle"
executetitle.Parent = Supertab
executetitle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
executetitle.BackgroundTransparency = 1.000
executetitle.BorderColor3 = Color3.fromRGB(38, 38, 38)
executetitle.BorderSizePixel = 0
executetitle.Position = UDim2.new(0.157303363, 0, 0.637038231, 0)
executetitle.Size = UDim2.new(0, 122, 0, 23)
executetitle.Font = Enum.Font.Gotham
executetitle.Text = "Execute:"
executetitle.TextColor3 = Color3.fromRGB(255, 255, 255)
executetitle.TextSize = 20.000
executetitle.TextWrapped = true
 
execute.Name = "execute"
execute.Parent = Supertab
execute.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
execute.BorderColor3 = Color3.fromRGB(29, 29, 29)
execute.BorderSizePixel = 5
execute.Position = UDim2.new(0.0729999989, 0, 0.782000005, 0)
execute.Size = UDim2.new(0, 152, 0, 26)
execute.Font = Enum.Font.Gotham
execute.Text = "Execute"
execute.TextColor3 = Color3.fromRGB(236, 236, 236)
execute.TextScaled = true
execute.TextSize = 14.000
execute.TextWrapped = true
execute.MouseButton1Down:connect(function()
	local cmdstr = Commandbox_2.Text
	for i = 1,250 do
		game:GetService'Players':Chat((cmdstr))
		end
end)
 
Emotestab.Name = "Emotestab"
Emotestab.Parent = main
Emotestab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Emotestab.BorderSizePixel = 0
Emotestab.Position = UDim2.new(1, 0, 0.969696522, 0)
Emotestab.Size = UDim2.new(0, 405, 0, 434)
Emotestab.Visible = false
 
title_3.Name = "title"
title_3.Parent = Emotestab
title_3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title_3.BackgroundTransparency = 1.000
title_3.BorderColor3 = Color3.fromRGB(38, 38, 38)
title_3.BorderSizePixel = 0
title_3.Position = UDim2.new(0.337050915, 0, 0.0254748724, 0)
title_3.Size = UDim2.new(0, 130, 0, 29)
title_3.Font = Enum.Font.SourceSans
title_3.Text = "Emotes"
title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
title_3.TextScaled = true
title_3.TextSize = 20.000
title_3.TextWrapped = true
 
line_3.Name = "line"
line_3.Parent = Emotestab
line_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_3.BorderSizePixel = 0
line_3.Position = UDim2.new(0.0730336905, 0, 0.0996884853, 0)
line_3.Size = UDim2.new(0, 351, 0, 1)
line_3.Font = Enum.Font.SourceSans
line_3.Text = ""
line_3.TextColor3 = Color3.fromRGB(0, 0, 0)
line_3.TextSize = 14.000
 
crouch.Name = "crouch"
crouch.Parent = Emotestab
crouch.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
crouch.BorderColor3 = Color3.fromRGB(29, 29, 29)
crouch.BorderSizePixel = 5
crouch.Position = UDim2.new(0.554481447, 0, 0.84133178, 0)
crouch.Size = UDim2.new(0, 156, 0, 38)
crouch.Font = Enum.Font.Gotham
crouch.Text = ":crouch"
crouch.TextColor3 = Color3.fromRGB(255, 255, 255)
crouch.TextScaled = true
crouch.TextSize = 14.000
crouch.TextWrapped = true
crouch.MouseButton1Down:connect(function()
crouchh()
end)
 
 
hmm.Name = "hmm"
hmm.Parent = Emotestab
hmm.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
hmm.BorderColor3 = Color3.fromRGB(29, 29, 29)
hmm.BorderSizePixel = 5
hmm.Position = UDim2.new(0.0729999989, 0, 0.157000005, 0)
hmm.Size = UDim2.new(0, 156, 0, 38)
hmm.Font = Enum.Font.Gotham
hmm.Text = ":hmm"
hmm.TextColor3 = Color3.fromRGB(255, 255, 255)
hmm.TextScaled = true
hmm.TextSize = 14.000
hmm.TextWrapped = true
hmm.MouseButton1Down:connect(function()
hmmm()
end)
 
armspin.Name = "armspin"
armspin.Parent = Emotestab
armspin.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
armspin.BorderColor3 = Color3.fromRGB(29, 29, 29)
armspin.BorderSizePixel = 5
armspin.Position = UDim2.new(0.0705308914, 0, 0.329811037, 0)
armspin.Size = UDim2.new(0, 156, 0, 38)
armspin.Font = Enum.Font.Gotham
armspin.Text = ":armspin"
armspin.TextColor3 = Color3.fromRGB(255, 255, 255)
armspin.TextScaled = true
armspin.TextSize = 14.000
armspin.TextWrapped = true
armspin.MouseButton1Down:connect(function()
armturbine()
end)
 
loophead.Name = "loophead"
loophead.Parent = Emotestab
loophead.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
loophead.BorderColor3 = Color3.fromRGB(29, 29, 29)
loophead.BorderSizePixel = 5
loophead.Position = UDim2.new(0.0705308616, 0, 0.491101384, 0)
loophead.Size = UDim2.new(0, 156, 0, 38)
loophead.Font = Enum.Font.Gotham
loophead.Text = ":loophead"
loophead.TextColor3 = Color3.fromRGB(255, 255, 255)
loophead.TextScaled = true
loophead.TextSize = 14.000
loophead.TextWrapped = true
loophead.MouseButton1Down:connect(function()
loopheadd()
end)
 
scream.Name = "scream"
scream.Parent = Emotestab
scream.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
scream.BorderColor3 = Color3.fromRGB(29, 29, 29)
scream.BorderSizePixel = 5
scream.Position = UDim2.new(0.554481447, 0, 0.491101384, 0)
scream.Size = UDim2.new(0, 156, 0, 38)
scream.Font = Enum.Font.Gotham
scream.Text = ":scream"
scream.TextColor3 = Color3.fromRGB(255, 255, 255)
scream.TextScaled = true
scream.TextSize = 14.000
scream.TextWrapped = true
scream.MouseButton1Down:connect(function()
screamm()
end)
 
headraise.Name = "headraise"
headraise.Parent = Emotestab
headraise.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
headraise.BorderColor3 = Color3.fromRGB(29, 29, 29)
headraise.BorderSizePixel = 5
headraise.Position = UDim2.new(0.0705308318, 0, 0.661608279, 0)
headraise.Size = UDim2.new(0, 156, 0, 38)
headraise.Font = Enum.Font.Gotham
headraise.Text = ":headraise"
headraise.TextColor3 = Color3.fromRGB(255, 255, 255)
headraise.TextScaled = true
headraise.TextSize = 14.000
headraise.TextWrapped = true
headraise.MouseButton1Down:connect(function()
raisehead()
end)
 
dab.Name = "dab"
dab.Parent = Emotestab
dab.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
dab.BorderColor3 = Color3.fromRGB(29, 29, 29)
dab.BorderSizePixel = 5
dab.Position = UDim2.new(0.554481447, 0, 0.661608279, 0)
dab.Size = UDim2.new(0, 156, 0, 38)
dab.Font = Enum.Font.Gotham
dab.Text = ":dab"
dab.TextColor3 = Color3.fromRGB(255, 255, 255)
dab.TextScaled = true
dab.TextSize = 14.000
dab.TextWrapped = true
dab.MouseButton1Down:connect(function()
dabb()
end)
 
crawl.Name = "crawl"
crawl.Parent = Emotestab
crawl.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
crawl.BorderColor3 = Color3.fromRGB(29, 29, 29)
crawl.BorderSizePixel = 5
crawl.Position = UDim2.new(0.0705308318, 0, 0.84133178, 0)
crawl.Size = UDim2.new(0, 156, 0, 38)
crawl.Font = Enum.Font.Gotham
crawl.Text = ":crawl"
crawl.TextColor3 = Color3.fromRGB(255, 255, 255)
crawl.TextScaled = true
crawl.TextSize = 14.000
crawl.TextWrapped = true
crawl.MouseButton1Down:connect(function()
laydown()
end)
 
headtoss.Name = "headtoss"
headtoss.Parent = Emotestab
headtoss.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
headtoss.BorderColor3 = Color3.fromRGB(29, 29, 29)
headtoss.BorderSizePixel = 5
headtoss.Position = UDim2.new(0.554481506, 0, 0.154695854, 0)
headtoss.Size = UDim2.new(0, 156, 0, 38)
headtoss.Font = Enum.Font.Gotham
headtoss.Text = ":headtoss"
headtoss.TextColor3 = Color3.fromRGB(255, 255, 255)
headtoss.TextScaled = true
headtoss.TextSize = 14.000
headtoss.TextWrapped = true
headtoss.MouseButton1Down:connect(function()
headthrow()
end)
 
dance.Name = "dance"
dance.Parent = Emotestab
dance.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
dance.BorderColor3 = Color3.fromRGB(29, 29, 29)
dance.BorderSizePixel = 5
dance.Position = UDim2.new(0.554481506, 0, 0.329811037, 0)
dance.Size = UDim2.new(0, 156, 0, 38)
dance.Font = Enum.Font.Gotham
dance.Text = ":dance"
dance.TextColor3 = Color3.fromRGB(255, 255, 255)
dance.TextScaled = true
dance.TextSize = 14.000
dance.TextWrapped = true
dance.MouseButton1Down:connect(function()
MovingDance()
end)
 
teleporttab.Name = "teleporttab"
teleporttab.Parent = main
teleporttab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
teleporttab.BorderSizePixel = 0
teleporttab.Position = UDim2.new(1, 0, 1.06060565, 0)
teleporttab.Size = UDim2.new(0, 178, 0, 413)
teleporttab.Visible = false
 
title_4.Name = "title"
title_4.Parent = teleporttab
title_4.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title_4.BackgroundTransparency = 1.000
title_4.BorderColor3 = Color3.fromRGB(38, 38, 38)
title_4.BorderSizePixel = 0
title_4.Position = UDim2.new(0.112359554, 0, 0.00934584159, 0)
title_4.Size = UDim2.new(0, 130, 0, 29)
title_4.Font = Enum.Font.SourceSans
title_4.Text = "Teleports"
title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
title_4.TextScaled = true
title_4.TextSize = 20.000
title_4.TextWrapped = true
 
line_4.Name = "line"
line_4.Parent = teleporttab
line_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_4.BorderSizePixel = 0
line_4.Position = UDim2.new(0.0730337054, 0, 0.0996884704, 0)
line_4.Size = UDim2.new(0, 152, 0, 1)
line_4.Font = Enum.Font.SourceSans
line_4.Text = ""
line_4.TextColor3 = Color3.fromRGB(0, 0, 0)
line_4.TextSize = 14.000
 
house.Name = "house"
house.Parent = teleporttab
house.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
house.BorderColor3 = Color3.fromRGB(29, 29, 29)
house.BorderSizePixel = 5
house.Position = UDim2.new(0.173999995, 0, 0.250065386, 0)
house.Size = UDim2.new(0, 115, 0, 26)
house.Font = Enum.Font.Gotham
house.Text = ";house"
house.TextColor3 = Color3.fromRGB(255, 255, 255)
house.TextScaled = true
house.TextSize = 14.000
house.TextWrapped = true
house.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4106693, 8.22999954, 63.2581749))
end)
 
uhouse.Name = "uhouse"
uhouse.Parent = teleporttab
uhouse.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
uhouse.BorderColor3 = Color3.fromRGB(29, 29, 29)
uhouse.BorderSizePixel = 5
uhouse.Position = UDim2.new(0.173999995, 0, 0.361445487, 0)
uhouse.Size = UDim2.new(0, 115, 0, 26)
uhouse.Font = Enum.Font.Gotham
uhouse.Text = ";uhouse"
uhouse.TextColor3 = Color3.fromRGB(255, 255, 255)
uhouse.TextScaled = true
uhouse.TextSize = 14.000
uhouse.TextWrapped = true
uhouse.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29.954174, 41.8300018, 60.291275))
end)
 
pads.Name = "pads"
pads.Parent = teleporttab
pads.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
pads.BorderColor3 = Color3.fromRGB(29, 29, 29)
pads.BorderSizePixel = 5
pads.Position = UDim2.new(0.173999995, 0, 0.489774823, 0)
pads.Size = UDim2.new(0, 115, 0, 26)
pads.Font = Enum.Font.Gotham
pads.Text = ";pads"
pads.TextColor3 = Color3.fromRGB(255, 255, 255)
pads.TextScaled = true
pads.TextSize = 14.000
pads.TextWrapped = true
pads.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-30.6439133, 8.22999954, 90.8547668))
end)
 
spawn1.Name = "spawn1"
spawn1.Parent = teleporttab
spawn1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
spawn1.BorderColor3 = Color3.fromRGB(29, 29, 29)
spawn1.BorderSizePixel = 5
spawn1.Position = UDim2.new(0.173999995, 0, 0.62052542, 0)
spawn1.Size = UDim2.new(0, 115, 0, 26)
spawn1.Font = Enum.Font.Gotham
spawn1.Text = ";spawn1"
spawn1.TextColor3 = Color3.fromRGB(255, 255, 255)
spawn1.TextScaled = true
spawn1.TextSize = 14.000
spawn1.TextWrapped = true
spawn1.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29, 3.70000005, -25.5900116))
end)
 
spawn2.Name = "spawn2"
spawn2.Parent = teleporttab
spawn2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
spawn2.BorderColor3 = Color3.fromRGB(29, 29, 29)
spawn2.BorderSizePixel = 5
spawn2.Position = UDim2.new(0.173999995, 0, 0.744012117, 0)
spawn2.Size = UDim2.new(0, 115, 0, 26)
spawn2.Font = Enum.Font.Gotham
spawn2.Text = ";spawn2"
spawn2.TextColor3 = Color3.fromRGB(255, 255, 255)
spawn2.TextScaled = true
spawn2.TextSize = 14.000
spawn2.TextWrapped = true
spawn2.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.70000005, -25.5899963))
end)
 
spawn3.Name = "spawn3"
spawn3.Parent = teleporttab
spawn3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
spawn3.BorderColor3 = Color3.fromRGB(29, 29, 29)
spawn3.BorderSizePixel = 5
spawn3.Position = UDim2.new(0.173999995, 0, 0.884447932, 0)
spawn3.Size = UDim2.new(0, 115, 0, 26)
spawn3.Font = Enum.Font.Gotham
spawn3.Text = ";spawn3"
spawn3.TextColor3 = Color3.fromRGB(255, 255, 255)
spawn3.TextScaled = true
spawn3.TextSize = 14.000
spawn3.TextWrapped = true
spawn3.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-52.9998322, 3.70000005, -25.5902348))
end)
 
obby.Name = "obby"
obby.Parent = teleporttab
obby.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
obby.BorderColor3 = Color3.fromRGB(29, 29, 29)
obby.BorderSizePixel = 5
obby.Position = UDim2.new(0.173999995, 0, 0.128999993, 0)
obby.Size = UDim2.new(0, 115, 0, 26)
obby.Font = Enum.Font.Gotham
obby.Text = ";obby"
obby.TextColor3 = Color3.fromRGB(255, 255, 255)
obby.TextScaled = true
obby.TextSize = 14.000
obby.TextWrapped = true
obby.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-52.2587738, 3.70000005, 38.5809517))
end)
 
Kitstab.Name = "Kitstab"
Kitstab.Parent = main
Kitstab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Kitstab.BorderSizePixel = 0
Kitstab.Position = UDim2.new(1, 0, 0.969696522, 0)
Kitstab.Size = UDim2.new(0, 405, 0, 434)
Kitstab.Visible = false
 
title_5.Name = "title"
title_5.Parent = Kitstab
title_5.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title_5.BackgroundTransparency = 1.000
title_5.BorderColor3 = Color3.fromRGB(38, 38, 38)
title_5.BorderSizePixel = 0
title_5.Position = UDim2.new(0.337050915, 0, 0.0254748724, 0)
title_5.Size = UDim2.new(0, 130, 0, 29)
title_5.Font = Enum.Font.SourceSans
title_5.Text = "Kits"
title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
title_5.TextScaled = true
title_5.TextSize = 20.000
title_5.TextWrapped = true
 
line_5.Name = "line"
line_5.Parent = Kitstab
line_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_5.BorderSizePixel = 0
line_5.Position = UDim2.new(0.065626286, 0, 0.0927760303, 0)
line_5.Size = UDim2.new(0, 351, 0, 1)
line_5.Font = Enum.Font.SourceSans
line_5.Text = ""
line_5.TextColor3 = Color3.fromRGB(0, 0, 0)
line_5.TextSize = 14.000
 
kitgod.Name = "kit god"
kitgod.Parent = Kitstab
kitgod.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitgod.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitgod.BorderSizePixel = 5
kitgod.Position = UDim2.new(0.0730336159, 0, 0.168520734, 0)
kitgod.Size = UDim2.new(0, 175, 0, 25)
kitgod.Font = Enum.Font.Gotham
kitgod.Text = ":kit god"
kitgod.TextColor3 = Color3.fromRGB(255, 255, 255)
kitgod.TextScaled = true
kitgod.TextSize = 14.000
kitgod.TextWrapped = true
kitgod.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 159229806"))
game:GetService'Players':Chat(("gear me 93136802"))
game:GetService'Players':Chat(("gear me 108158379"))
game:GetService'Players':Chat(("gear me 73829193"))
game:GetService'Players':Chat(("gear me 69499437"))
game:GetService'Players':Chat(("gear me 80661504"))
game:GetService'Players':Chat(("gear me 120307951"))
game:GetService'Players':Chat(("gear me 99119240"))
game:GetService'Players':Chat(("gear me 94794774"))
game:GetService'Players':Chat(("gear me 71037101"))
game:GetService'Players':Chat(("gear me 93136746"))
end)
 
kitgun.Name = "kit gun"
kitgun.Parent = Kitstab
kitgun.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitgun.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitgun.BorderSizePixel = 5
kitgun.Position = UDim2.new(0.0730336159, 0, 0.295248836, 0)
kitgun.Size = UDim2.new(0, 175, 0, 25)
kitgun.Font = Enum.Font.Gotham
kitgun.Text = ":kit gun"
kitgun.TextColor3 = Color3.fromRGB(255, 255, 255)
kitgun.TextScaled = true
kitgun.TextSize = 14.000
kitgun.TextWrapped = true
kitgun.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 94233344"))
game:GetService'Players':Chat(("gear me 94233286"))
game:GetService'Players':Chat(("gear me 95354288"))
game:GetService'Players':Chat(("gear me 97885552"))
game:GetService'Players':Chat(("gear me 116693764"))
game:GetService'Players':Chat(("gear me 97885508"))
game:GetService'Players':Chat(("gear me 130113146"))
end)
 
kitdark.Name = "kit dark"
kitdark.Parent = Kitstab
kitdark.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitdark.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitdark.BorderSizePixel = 5
kitdark.Position = UDim2.new(0.0730336159, 0, 0.435801864, 0)
kitdark.Size = UDim2.new(0, 175, 0, 25)
kitdark.Font = Enum.Font.Gotham
kitdark.Text = ":kit dark"
kitdark.TextColor3 = Color3.fromRGB(255, 255, 255)
kitdark.TextScaled = true
kitdark.TextSize = 14.000
kitdark.TextWrapped = true
kitdark.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("paint me black"))
game:GetService'Players':Chat(("cape me black"))
game:GetService'Players':Chat(("removehats me"))
game:GetService'Players':Chat(("removeface me"))
game:GetService'Players':Chat(("name me "))
game:GetService'Players':Chat(("speed me 32"))
game:GetService'Players':Chat(("trail me black"))
game:GetService'Players':Chat(("gear me 108149175"))
end)
 
kitbow.Name = "kit bow"
kitbow.Parent = Kitstab
kitbow.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitbow.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitbow.BorderSizePixel = 5
kitbow.Position = UDim2.new(0.0730336159, 0, 0.569442391, 0)
kitbow.Size = UDim2.new(0, 173, 0, 25)
kitbow.Font = Enum.Font.Gotham
kitbow.Text = ":kit bow"
kitbow.TextColor3 = Color3.fromRGB(255, 255, 255)
kitbow.TextScaled = true
kitbow.TextSize = 14.000
kitbow.TextWrapped = true
kitbow.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 1180418251"))
	game:GetService'Players':Chat(("gear me 92142841"))
	game:GetService'Players':Chat(("gear me 2136389582"))
	game:GetService'Players':Chat(("gear me 346687267"))
	game:GetService'Players':Chat(("gear me 356213494"))
	game:GetService'Players':Chat(("gear me 2568113462"))
end)
 
kitninja.Name = "kit ninja"
kitninja.Parent = Kitstab
kitninja.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitninja.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitninja.BorderSizePixel = 5
kitninja.Position = UDim2.new(0.0730336159, 0, 0.700778782, 0)
kitninja.Size = UDim2.new(0, 175, 0, 25)
kitninja.Font = Enum.Font.Gotham
kitninja.Text = ":kit ninja"
kitninja.TextColor3 = Color3.fromRGB(255, 255, 255)
kitninja.TextScaled = true
kitninja.TextSize = 14.000
kitninja.TextWrapped = true
kitninja.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 86494914"))
game:GetService'Players':Chat(("gear me 11377306"))
game:GetService'Players':Chat(("gear me 11115851"))
game:GetService'Players':Chat(("gear me 1304339797"))
game:GetService'Players':Chat(("gear me 51346336"))
game:GetService'Players':Chat(("gear me 233519998"))
end)
 
kitmagic.Name = "kit magic"
kitmagic.Parent = Kitstab
kitmagic.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitmagic.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitmagic.BorderSizePixel = 5
kitmagic.Position = UDim2.new(0.0730336159, 0, 0.8275069, 0)
kitmagic.Size = UDim2.new(0, 175, 0, 25)
kitmagic.Font = Enum.Font.Gotham
kitmagic.Text = ":kit magic"
kitmagic.TextColor3 = Color3.fromRGB(255, 255, 255)
kitmagic.TextScaled = true
kitmagic.TextSize = 14.000
kitmagic.TextWrapped = true
kitmagic.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 2316760298"))
	game:GetService'Players':Chat(("gear me 127506105"))
	game:GetService'Players':Chat(("gear me 10760425"))
	game:GetService'Players':Chat(("gear me 66416616"))
	game:GetService'Players':Chat(("gear me 2261167878"))
	game:GetService'Players':Chat(("gear me 27860496"))
end)
 
kitomni.Name = "kit omni"
kitomni.Parent = Kitstab
kitomni.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitomni.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitomni.BorderSizePixel = 5
kitomni.Position = UDim2.new(0.500194132, 0, 0.168520734, 0)
kitomni.Size = UDim2.new(0, 175, 0, 25)
kitomni.Font = Enum.Font.Gotham
kitomni.Text = ":kit omni"
kitomni.TextColor3 = Color3.fromRGB(255, 255, 255)
kitomni.TextScaled = true
kitomni.TextSize = 14.000
kitomni.TextWrapped = true
kitomni.MouseButton1Down:connect(function()
for i = 1,10 do
game:GetService'Players':Chat(("gear me 159229806"))
end
 
for i = 1,10 do
game:GetService'Players':Chat(("gear me 93136802"))
end
 
game:GetService'Players':Chat(("gear me 108158379"))
game:GetService'Players':Chat(("gear me 73829193"))
game:GetService'Players':Chat(("gear me 69499437"))
game:GetService'Players':Chat(("gear me 80661504"))
game:GetService'Players':Chat(("gear me 120307951"))
game:GetService'Players':Chat(("gear me 99119240"))
game:GetService'Players':Chat(("gear me 94794774"))
game:GetService'Players':Chat(("gear me 71037101"))
game:GetService'Players':Chat(("gear me 93136746"))
end)
 
kitdagger.Name = "kit dagger"
kitdagger.Parent = Kitstab
kitdagger.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitdagger.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitdagger.BorderSizePixel = 5
kitdagger.Position = UDim2.new(0.500194132, 0, 0.295248866, 0)
kitdagger.Size = UDim2.new(0, 175, 0, 25)
kitdagger.Font = Enum.Font.Gotham
kitdagger.Text = ":kit dagger"
kitdagger.TextColor3 = Color3.fromRGB(255, 255, 255)
kitdagger.TextScaled = true
kitdagger.TextSize = 14.000
kitdagger.TextWrapped = true
kitdagger.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 62350856"))
	game:GetService'Players':Chat(("gear me 65079090"))
	game:GetService'Players':Chat(("gear me 64220952"))
	game:GetService'Players':Chat(("gear me 71037101"))
	game:GetService'Players':Chat(("gear me 168142394"))
	game:GetService'Players':Chat(("gear me 51760061"))
end)
 
kitcrossbow.Name = "kit crossbow"
kitcrossbow.Parent = Kitstab
kitcrossbow.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitcrossbow.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitcrossbow.BorderSizePixel = 5
kitcrossbow.Position = UDim2.new(0.500194132, 0, 0.435801864, 0)
kitcrossbow.Size = UDim2.new(0, 175, 0, 25)
kitcrossbow.Font = Enum.Font.Gotham
kitcrossbow.Text = ":kit crossbow"
kitcrossbow.TextColor3 = Color3.fromRGB(255, 255, 255)
kitcrossbow.TextScaled = true
kitcrossbow.TextSize = 14.000
kitcrossbow.TextWrapped = true
kitcrossbow.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 174752245"))
	game:GetService'Players':Chat(("gear me 1587175338"))
	game:GetService'Players':Chat(("gear me 206566653"))
	game:GetService'Players':Chat(("gear me 178076831"))
	game:GetService'Players':Chat(("gear me 2163551089"))
end)
 
kitknife.Name = "kit knife"
kitknife.Parent = Kitstab
kitknife.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitknife.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitknife.BorderSizePixel = 5
kitknife.Position = UDim2.new(0.500194132, 0, 0.8275069, 0)
kitknife.Size = UDim2.new(0, 175, 0, 25)
kitknife.Font = Enum.Font.Gotham
kitknife.Text = ":kit knife"
kitknife.TextColor3 = Color3.fromRGB(255, 255, 255)
kitknife.TextScaled = true
kitknife.TextSize = 14.000
kitknife.TextWrapped = true
kitknife.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 121946387"))
	game:GetService'Players':Chat(("gear me 1215515248"))
	game:GetService'Players':Chat(("gear me 208659586"))
end)
 
kitpotion.Name = "kit potion"
kitpotion.Parent = Kitstab
kitpotion.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitpotion.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitpotion.BorderSizePixel = 5
kitpotion.Position = UDim2.new(0.500194132, 0, 0.700778782, 0)
kitpotion.Size = UDim2.new(0, 175, 0, 25)
kitpotion.Font = Enum.Font.Gotham
kitpotion.Text = ":kit potion"
kitpotion.TextColor3 = Color3.fromRGB(255, 255, 255)
kitpotion.TextScaled = true
kitpotion.TextSize = 14.000
kitpotion.TextWrapped = true
kitpotion.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 11450664"))
game:GetService'Players':Chat(("gear me 56561593"))
game:GetService'Players':Chat(("gear me 55917420"))
game:GetService'Players':Chat(("gear me 65082246"))
game:GetService'Players':Chat(("gear me 11419319"))
game:GetService'Players':Chat(("gear me 47597835"))
end)
 
kitscythe.Name = "kit scythe"
kitscythe.Parent = Kitstab
kitscythe.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitscythe.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitscythe.BorderSizePixel = 5
kitscythe.Position = UDim2.new(0.500194132, 0, 0.569442332, 0)
kitscythe.Size = UDim2.new(0, 175, 0, 25)
kitscythe.Font = Enum.Font.Gotham
kitscythe.Text = ":kit scythe"
kitscythe.TextColor3 = Color3.fromRGB(255, 255, 255)
kitscythe.TextScaled = true
kitscythe.TextSize = 14.000
kitscythe.TextWrapped = true
kitscythe.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 1609498185"))
game:GetService'Players':Chat(("gear me 2506365260"))
game:GetService'Players':Chat(("gear me 28275809"))
game:GetService'Players':Chat(("gear me 846792499"))
game:GetService'Players':Chat(("gear me 95951330"))
game:GetService'Players':Chat(("gear me 218631128"))
game:GetService'Players':Chat(("gear me 50938765"))
game:GetService'Players':Chat(("gear me 517827255"))
end)
 
kitsword.Name = "kit sword"
kitsword.Parent = Kitstab
kitsword.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
kitsword.BorderColor3 = Color3.fromRGB(29, 29, 29)
kitsword.BorderSizePixel = 5
kitsword.Position = UDim2.new(0.280441046, 0, 0.926585257, 0)
kitsword.Size = UDim2.new(0, 175, 0, 25)
kitsword.Font = Enum.Font.Gotham
kitsword.Text = ":kit sword"
kitsword.TextColor3 = Color3.fromRGB(255, 255, 255)
kitsword.TextScaled = true
kitsword.TextSize = 14.000
kitsword.TextWrapped = true
kitsword.MouseButton1Down:connect(function()
	game:GetService'Players':Chat(("gear me 1981813154"))
    game:GetService'Players':Chat(("gear me 77443461"))
	game:GetService'Players':Chat(("gear me 77443491"))
	game:GetService'Players':Chat(("gear me 1340206957"))
	game:GetService'Players':Chat(("gear me 155661985"))
	game:GetService'Players':Chat(("gear me 532254782"))
	game:GetService'Players':Chat(("gear me 88885481"))
    game:GetService'Players':Chat(("gear me 93136746"))
end)
 
Morphstab.Name = "Morphstab"
Morphstab.Parent = main
Morphstab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Morphstab.BorderSizePixel = 0
Morphstab.Position = UDim2.new(1, 0, 0.969696522, 0)
Morphstab.Size = UDim2.new(0, 178, 0, 225)
Morphstab.Visible = false
 
title_6.Name = "title"
title_6.Parent = Morphstab
title_6.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title_6.BackgroundTransparency = 1.000
title_6.BorderColor3 = Color3.fromRGB(38, 38, 38)
title_6.BorderSizePixel = 0
title_6.Position = UDim2.new(0.112359554, 0, 0.00934584159, 0)
title_6.Size = UDim2.new(0, 130, 0, 29)
title_6.Font = Enum.Font.Gotham
title_6.Text = "Morphs"
title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
title_6.TextScaled = true
title_6.TextSize = 20.000
title_6.TextWrapped = true
 
line_6.Name = "line"
line_6.Parent = Morphstab
line_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_6.BorderSizePixel = 0
line_6.Position = UDim2.new(0.0730337054, 0, 0.179688469, 0)
line_6.Size = UDim2.new(0, 152, 0, 1)
line_6.Font = Enum.Font.Gotham
line_6.Text = ""
line_6.TextColor3 = Color3.fromRGB(0, 0, 0)
line_6.TextSize = 14.000
 
jester.Name = "jester"
jester.Parent = Morphstab
jester.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
jester.BorderColor3 = Color3.fromRGB(29, 29, 29)
jester.BorderSizePixel = 5
jester.Position = UDim2.new(0.0505280867, 0, 0.235333338, 0)
jester.Size = UDim2.new(0, 152, 0, 26)
jester.Font = Enum.Font.Gotham
jester.Text = ":Jester"
jester.TextColor3 = Color3.fromRGB(236, 236, 236)
jester.TextScaled = true
jester.TextSize = 14.000
jester.TextWrapped = true
jester.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("unpackage me"))
game:GetService'Players':Chat(("paint me white"))
game:GetService'Players':Chat(("removehats me"))
wait(0.125)
game:GetService'Players':Chat(("hat me 1301377743"))
game:GetService'Players':Chat(("hat me 13702134"))
game:GetService'Players':Chat(("shirt me 1304485340"))
game:GetService'Players':Chat(("pants me 1304482618"))
wait(0.125)
game:GetService'Players':Chat(("gear me 120749528"))
game:GetService'Players':Chat(("gear me 746687364"))
end)
 
aka.Name = "aka"
aka.Parent = Morphstab
aka.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
aka.BorderColor3 = Color3.fromRGB(29, 29, 29)
aka.BorderSizePixel = 5
aka.Position = UDim2.new(0.0505280867, 0, 0.439777792, 0)
aka.Size = UDim2.new(0, 152, 0, 26)
aka.Font = Enum.Font.Gotham
aka.Text = ":Aka"
aka.TextColor3 = Color3.fromRGB(236, 236, 236)
aka.TextScaled = true
aka.TextSize = 14.000
aka.TextWrapped = true
aka.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("unpackage me"))
game:GetService'Players':Chat(("paint me pastel brown"))
game:GetService'Players':Chat(("removehats me"))
wait(0.25)
game:GetService'Players':Chat(("hat me 4708970652"))
game:GetService'Players':Chat(("hat me 4660425043"))
game:GetService'Players':Chat(("hat me 4524990267"))
game:GetService'Players':Chat(("hat me 4524481392"))
game:GetService'Players':Chat(("shirt me 4150240898"))
game:GetService'Players':Chat(("pants me 4240325953"))
game:GetService'Players':Chat(("hat me 106709021"))
game:GetService'Players':Chat(("face me 402304145"))
end)
 
joy.Name = "joy"
joy.Parent = Morphstab
joy.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
joy.BorderColor3 = Color3.fromRGB(29, 29, 29)
joy.BorderSizePixel = 5
joy.Position = UDim2.new(0.0505280867, 0, 0.635333359, 0)
joy.Size = UDim2.new(0, 152, 0, 26)
joy.Font = Enum.Font.Gotham
joy.Text = ":Joy :)"
joy.TextColor3 = Color3.fromRGB(236, 236, 236)
joy.TextScaled = true
joy.TextSize = 14.000
joy.TextWrapped = true
joy.MouseButton1Down:connect(function()
          game:GetService'Players':Chat(("removehats me"))
      game:GetService'Players':Chat(("paint me white"))
      game:GetService'Players':Chat(("hat me 4904151381"))
end)
 
darklord.Name = "darklord"
darklord.Parent = Morphstab
darklord.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
darklord.BorderColor3 = Color3.fromRGB(29, 29, 29)
darklord.BorderSizePixel = 5
darklord.Position = UDim2.new(0.0505280867, 0, 0.844222248, 0)
darklord.Size = UDim2.new(0, 152, 0, 26)
darklord.Font = Enum.Font.Gotham
darklord.Text = ":Dark_Lord"
darklord.TextColor3 = Color3.fromRGB(236, 236, 236)
darklord.TextScaled = true
darklord.TextSize = 14.000
darklord.TextWrapped = true
darklord.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("unpackage me"))
game:GetService'Players':Chat(("removehats me"))
game:GetService'Players':Chat(("paint me black"))
wait(0.25)
game:GetService'Players':Chat(("pants me 1279747525"))
game:GetService'Players':Chat(("shirt me 1233857398"))
game:GetService'Players':Chat(("hat me 4238305136"))
game:GetService'Players':Chat(("hat me 745790335"))
game:GetService'Players':Chat(("hat me 99860652"))
game:GetService'Players':Chat(("hat me 244160766"))
game:GetService'Players':Chat(("hat me 19380685"))
game:GetService'Players':Chat(("hat me 4087527067"))
end)
 
cmdtab.Name = "cmdtab"
cmdtab.Parent = main
cmdtab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
cmdtab.BorderSizePixel = 0
cmdtab.Position = UDim2.new(1, 0, 0.969696522, 0)
cmdtab.Size = UDim2.new(0, 427, 0, 434)
cmdtab.Visible = false
 
title_7.Name = "title"
title_7.Parent = cmdtab
title_7.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title_7.BackgroundTransparency = 1.000
title_7.BorderColor3 = Color3.fromRGB(38, 38, 38)
title_7.BorderSizePixel = 0
title_7.Position = UDim2.new(0.344956666, 0, 0.0254748724, 0)
title_7.Size = UDim2.new(0, 130, 0, 29)
title_7.Font = Enum.Font.Gotham
title_7.Text = "Cmds"
title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
title_7.TextScaled = true
title_7.TextSize = 20.000
title_7.TextWrapped = true
 
line_7.Name = "line"
line_7.Parent = cmdtab
line_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_7.BorderSizePixel = 0
line_7.Position = UDim2.new(0.105815805, 0, 0.112868212, 0)
line_7.Size = UDim2.new(0, 336, 0, 1)
line_7.Font = Enum.Font.Gotham
line_7.Text = ""
line_7.TextColor3 = Color3.fromRGB(0, 0, 0)
line_7.TextSize = 14.000
 
list.Name = "list"
list.Parent = cmdtab
list.Active = true
list.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
list.BackgroundTransparency = 1.000
list.BorderSizePixel = 0
list.Position = UDim2.new(0.105815805, 0, 0.143434793, 0)
list.Size = UDim2.new(0, 335, 0, 350)
list.CanvasSize = UDim2.new(0, 0, 6, 0)
list.ScrollBarThickness = 4
 
oof.Name = "oof"
oof.Parent = list
oof.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
oof.BackgroundTransparency = 1.000
oof.BorderSizePixel = 0
oof.Position = UDim2.new(0, 0, -2.74181366e-06, 0)
oof.Size = UDim2.new(0, 335, 0, 2559)
oof.Font = Enum.Font.Gotham
oof.Text = "[Hot-Keys]\\n\\nZ - Fly\\nX - Forcefield\\nC - Reset\\nV - Respawn\\nB - Save Location\\nN - Load Location\\nM - Execute last command used\\nF - Interchangeable, say hk1 = Command Name\\nG - Interchangeable, say hk2 = Command Name\\nH - Interchangeable, say hk3 = Command Name\\nJ - Disable/Enable Hotkeys\\n\\n[Kit Commands] [13 Kits]\\n\\n:kit [kit name] [player name]\\n:kit god - Gives you all Periastrons \\n:kit omni - Gives you all Periastrons * 10\\n:kit gun - Gives a load of guns\\n:kit dark - Makes you dark\\n:kit knife - Gives you knives\\n:kit dagger - gives you daggers\\n:kit bow - gives you bow's\\n:kit crossbow - gives you crossbows\\n:kit magic - gives you magical items\\n:kit sword - Gives you swords\\n:kit scythe - Gives you scythes\\n:kit ninja - ninja gear\\n:kit potion - gives potions\\n\\nCOMING SOON.....\\n:kit hammer\\n:kit spear\\n:kit claws\\n\\n[Teleport Commands]\\n\\nTo tp players the prefix is \":\"\\nTo tp me the prefix is \";\"\\n:[Location] [Player] - Teleports that person to that location\\n;[Location] - Teleports me to the location\\n:spawn1 - Teleports you to spawn on the Left\\n:spawn2 - Teleports you to spawn in the Middle\\n:spawn3 - Teleports you to spawn on the Right\\n:house - Teleports you inside the house\\n:uhouse - Teleports you above the house\\n:obby - teleports you to the end of the obby\\n:pads - teleports you to the admin pads\\n \\n[Emote Commands]\\n\\n:hmm\\n:headtoss\\n:armspin\\n:loophead\\n:scream\\n:headraise\\n:dab\\n:crawl\\n:crouch\\n:dance\\n\\n[Music Commands]\\nplay mwd - Plays Miss Wanna Die\\n\\n[Morph Commands]\\n\\n:Dark_Lord - Turn's you into a Dark Lord\\n:Aka - Makes you Aka Muichiro\\n:raja - Turn into Raja\\n:Jester - turns you into a Jester\\n:Joy - Joy :)\\n\\n[Super Commands]\\n\\n:super[Command] - superuse any command\\n\\n[Spam Commands]\\n\\n:spam[Command] - spam any command\\n:stop - different from \":Stop\" this stop stops spam commands\\n\\n[Other Commands]\\n\\n:boombox - gives you a boombox\\n:antikill - Auto-resets you upon death\\n:antipunish - Auto-unpunish you[WIP]\\n:unblindable - unblindable\\n:stay - Keeps you in place\\n:move - allows you to move freely\\n\\n[Local Commands]\\n\\n:here - Saves your current location\\n:back - Teleports you back to that saved location\\n:loadout 1 - Fly and Forcefield\\n:zawarudo - Time Stops now...\\n:purge - The purge will start\\n:Stop - Stops all player movement and changes the sky color to red\\n:Go - Sets all player movement back to normal including the sky\\n:ls - pulls up logs\\n:rejoin - Rejoin the current game(DOESN'T WORK FOR VIP SERVERS)\\n:snap [Player] - Snap someone out of existence\\n:ms - Clear's Logs\\n:wl - whitelist[Player] - Players can use your commands\\n:unwl - unwhitelist [Player]\\n:regen - regen admin pads\\n:startsave - saves your current location every X seconds\\n:stopsave - stops the loop of saving your location\\npause = [Number] - change the wait time for the spam-save of location\\nwait = [Number] - Change the wait time of spam commands\\nhk1 = [Command] - Set a command to the Hotkey F\\nhk2 = [Command] - Set a command to the Hotkey G\\nhk3 = [Command] - Set a command to the Hotkey H\\namount = [Number] - Sets the amount of gear you'll get\\nclicktp - Default Button is r [MUST RE-EXECUTE UPON DEATH]\\n:sky - Teleports you in the sky with a boombox\\n:acolor - Blinding rgb\\n:bcolor - Blinding rgb\\n:ccolor - :acolor and :bcolor combined\\n:redhell - experience my red hell\\n:rainbow - More powerful Disco\\n\\n[Gear Commands] [MORE SOON]\\n\\n:g [gear name] [player name]\\n:g hyperlaser\\n:g dsd(dagger of shattered dimensions)\\n:g cresendo\\n:g rainbow\\n:g ivory\\n:g azure\\n:g crimson\\n:g chartreuse\\n:g amethyst\\n:g noir\\n:g grimgold\\n:g sledge hammer\\n:g carpet\\n:g dual darkheart\\n:g darkheart\\n:g dual illumina\\n:g illumina\\n:g tommy gun\\n:g m1\\n:g luger pistol\\n:g mauser 96\\n:g revolver\\n:g whip\\n:g jetpack\\n:g katana\\n:g chaos\\n:g ld - Light sword, Dark Sword\\n:g lock\\n:g mine\\n:g light\\n:g dark\\n\\n[Commands that will be made in the future]\\n\\n:kit bomb - gives you explosives\\n:kit musical\\n:kit transport\\n:kit building"
oof.TextColor3 = Color3.fromRGB(255, 255, 255)
oof.TextScaled = true
oof.TextSize = 10.000
oof.TextWrapped = true
 
Credittab.Name = "Credittab"
Credittab.Parent = main
Credittab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Credittab.BorderSizePixel = 0
Credittab.Position = UDim2.new(1, 0, 0.969696522, 0)
Credittab.Size = UDim2.new(0, 178, 0, 225)
Credittab.Visible = false
 
title_8.Name = "title"
title_8.Parent = Credittab
title_8.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title_8.BackgroundTransparency = 1.000
title_8.BorderColor3 = Color3.fromRGB(38, 38, 38)
title_8.BorderSizePixel = 0
title_8.Position = UDim2.new(0.112359554, 0, 0.00934584159, 0)
title_8.Size = UDim2.new(0, 130, 0, 29)
title_8.Font = Enum.Font.Gotham
title_8.Text = "Credits"
title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
title_8.TextScaled = true
title_8.TextSize = 20.000
title_8.TextWrapped = true
 
line_8.Name = "line"
line_8.Parent = Credittab
line_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_8.BorderSizePixel = 0
line_8.Position = UDim2.new(0.0730337054, 0, 0.179688469, 0)
line_8.Size = UDim2.new(0, 152, 0, 1)
line_8.Font = Enum.Font.Gotham
line_8.Text = ""
line_8.TextColor3 = Color3.fromRGB(0, 0, 0)
line_8.TextSize = 14.000
 
cred1.Name = "cred1"
cred1.Parent = Credittab
cred1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
cred1.BackgroundTransparency = 1.000
cred1.BorderColor3 = Color3.fromRGB(38, 38, 38)
cred1.BorderSizePixel = 0
cred1.Position = UDim2.new(0.112359554, 0, 0.240456954, 0)
cred1.Size = UDim2.new(0, 130, 0, 29)
cred1.Font = Enum.Font.Gotham
cred1.Text = "Made By:"
cred1.TextColor3 = Color3.fromRGB(255, 255, 255)
cred1.TextScaled = true
cred1.TextSize = 20.000
cred1.TextWrapped = true
 
cred1_2.Name = "cred1"
cred1_2.Parent = Credittab
cred1_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
cred1_2.BackgroundTransparency = 1.000
cred1_2.BorderColor3 = Color3.fromRGB(38, 38, 38)
cred1_2.BorderSizePixel = 0
cred1_2.Position = UDim2.new(0.0730337054, 0, 0.438668102, 0)
cred1_2.Size = UDim2.new(0, 152, 0, 43)
cred1_2.Font = Enum.Font.Gotham
cred1_2.Text = "Ex_Zviye[Roblox]"
cred1_2.TextColor3 = Color3.fromRGB(255, 255, 255)
cred1_2.TextScaled = true
cred1_2.TextSize = 20.000
cred1_2.TextWrapped = true
 
cred1_3.Name = "cred1"
cred1_3.Parent = Credittab
cred1_3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
cred1_3.BackgroundTransparency = 1.000
cred1_3.BorderColor3 = Color3.fromRGB(38, 38, 38)
cred1_3.BorderSizePixel = 0
cred1_3.Position = UDim2.new(0.0505617931, 0, 0.640456975, 0)
cred1_3.Size = UDim2.new(0, 152, 0, 46)
cred1_3.Font = Enum.Font.Gotham
cred1_3.Text = "Zviye#0728[Discord]"
cred1_3.TextColor3 = Color3.fromRGB(255, 255, 255)
cred1_3.TextScaled = true
cred1_3.TextSize = 20.000
cred1_3.TextWrapped = true
 
localtab.Name = "localtab"
localtab.Parent = main
localtab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
localtab.BorderSizePixel = 0
localtab.Position = UDim2.new(1, 0, 0.969696522, 0)
localtab.Size = UDim2.new(0, 405, 0, 434)
localtab.Visible = false
 
title_9.Name = "title"
title_9.Parent = localtab
title_9.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
title_9.BackgroundTransparency = 1.000
title_9.BorderColor3 = Color3.fromRGB(38, 38, 38)
title_9.BorderSizePixel = 0
title_9.Position = UDim2.new(0.337050915, 0, 0.0254748724, 0)
title_9.Size = UDim2.new(0, 130, 0, 29)
title_9.Font = Enum.Font.SourceSans
title_9.Text = "Local"
title_9.TextColor3 = Color3.fromRGB(255, 255, 255)
title_9.TextScaled = true
title_9.TextSize = 20.000
title_9.TextWrapped = true
 
line_9.Name = "line"
line_9.Parent = localtab
line_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_9.BorderSizePixel = 0
line_9.Position = UDim2.new(0.0631570742, 0, 0.0927760452, 0)
line_9.Size = UDim2.new(0, 350, 0, 1)
line_9.Font = Enum.Font.SourceSans
line_9.Text = ""
line_9.TextColor3 = Color3.fromRGB(0, 0, 0)
line_9.TextSize = 14.000
 
here.Name = "here"
here.Parent = localtab
here.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
here.BorderColor3 = Color3.fromRGB(29, 29, 29)
here.BorderSizePixel = 5
here.Position = UDim2.new(0.0631234795, 0, 0.122437783, 0)
here.Size = UDim2.new(0, 150, 0, 25)
here.Font = Enum.Font.Gotham
here.Text = ":here"
here.TextColor3 = Color3.fromRGB(255, 255, 255)
here.TextScaled = true
here.TextSize = 14.000
here.TextWrapped = true
here.MouseButton1Down:connect(function()
LPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end)
 
back.Name = "back"
back.Parent = localtab
back.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
back.BorderColor3 = Color3.fromRGB(29, 29, 29)
back.BorderSizePixel = 5
back.Position = UDim2.new(0.556950629, 0, 0.122437783, 0)
back.Size = UDim2.new(0, 150, 0, 25)
back.Font = Enum.Font.Gotham
back.Text = ":back"
back.TextColor3 = Color3.fromRGB(255, 255, 255)
back.TextScaled = true
back.TextSize = 14.000
back.TextWrapped = true
back.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LPos
end)
 
acolor.Name = "acolor"
acolor.Parent = localtab
acolor.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
acolor.BorderColor3 = Color3.fromRGB(29, 29, 29)
acolor.BorderSizePixel = 5
acolor.Position = UDim2.new(0.0631234795, 0, 0.209995389, 0)
acolor.Size = UDim2.new(0, 150, 0, 25)
acolor.Font = Enum.Font.Gotham
acolor.Text = ":acolor"
acolor.TextColor3 = Color3.fromRGB(255, 255, 255)
acolor.TextScaled = true
acolor.TextSize = 14.000
acolor.TextWrapped = true
acolor.MouseButton1Down:connect(function()
acolor = true
bcolor = false
ccolor = false
rhell = false
clors(msg)
end)
 
purge.Name = "purge"
purge.Parent = localtab
purge.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
purge.BorderColor3 = Color3.fromRGB(29, 29, 29)
purge.BorderSizePixel = 5
purge.Position = UDim2.new(0.556950629, 0, 0.209995389, 0)
purge.Size = UDim2.new(0, 150, 0, 25)
purge.Font = Enum.Font.Gotham
purge.Text = ":purge"
purge.TextColor3 = Color3.fromRGB(255, 255, 255)
purge.TextScaled = true
purge.TextSize = 14.000
purge.TextWrapped = true
purge.MouseButton1Down:connect(function()
game.Players:Chat("music 232554097")
game.Players:Chat("fogend 150")
game.Players:Chat("time 2")
game.Players:Chat("fogcolor 0 0 0")
game.Players:Chat("brightness 5")
end)
 
zawarudo.Name = "zawarudo"
zawarudo.Parent = localtab
zawarudo.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
zawarudo.BorderColor3 = Color3.fromRGB(29, 29, 29)
zawarudo.BorderSizePixel = 5
zawarudo.Position = UDim2.new(0.556950629, 0, 0.295248836, 0)
zawarudo.Size = UDim2.new(0, 150, 0, 25)
zawarudo.Font = Enum.Font.Gotham
zawarudo.Text = ":zawarudo"
zawarudo.TextColor3 = Color3.fromRGB(255, 255, 255)
zawarudo.TextScaled = true
zawarudo.TextSize = 14.000
zawarudo.TextWrapped = true
zawarudo.MouseButton1Down:connect(function()
game.Players:Chat("music 304787933")
wait(2)
game.Players:Chat("freeze others")
game.Players:Chat("ambient 0 63.75 0")
wait(.25)
game.Players:Chat("ambient 0 127.5 0")
wait(.25)
game.Players:Chat("ambient 0 191.25 0")
wait(.25)
game.Players:Chat("ambient 0 255 0")
wait(.25)
game.Players:Chat("stopmusic")
wait(1.5)
game.Players:Chat("music 384043882")
for i = 1,20 do
game.Players:Chat("freeze others")
game.Players:Chat("ambient 0 255 0")
wait(.5)
end
game.Players:Chat("music 676242549")
wait(2.5)
game.Players:Chat("stopmusic")
game.Players:Chat("thaw others")
game.Players:Chat("ambient 0 255 0")
wait(.25)
game.Players:Chat("ambient 0 191.25 0")
wait(.25)
game.Players:Chat("ambient 0 127.5 0")
wait(.25)
game.Players:Chat("ambient 0 63.75 0")
end)
 
bcolor.Name = "bcolor"
bcolor.Parent = localtab
bcolor.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
bcolor.BorderColor3 = Color3.fromRGB(29, 29, 29)
bcolor.BorderSizePixel = 5
bcolor.Position = UDim2.new(0.0631234795, 0, 0.295248836, 0)
bcolor.Size = UDim2.new(0, 150, 0, 25)
bcolor.Font = Enum.Font.Gotham
bcolor.Text = ":bcolor"
bcolor.TextColor3 = Color3.fromRGB(255, 255, 255)
bcolor.TextScaled = true
bcolor.TextSize = 14.000
bcolor.TextWrapped = true
bcolor.MouseButton1Down:connect(function()
rhell = false
ccolor = false
acolor = false
bcolor = true
clors(msg)
end)
 
rejoin.Name = "rejoin"
rejoin.Parent = localtab
rejoin.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
rejoin.BorderColor3 = Color3.fromRGB(29, 29, 29)
rejoin.BorderSizePixel = 5
rejoin.Position = UDim2.new(0.559419751, 0, 0.38280645, 0)
rejoin.Size = UDim2.new(0, 150, 0, 25)
rejoin.Font = Enum.Font.Gotham
rejoin.Text = ":rejoin"
rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
rejoin.TextScaled = true
rejoin.TextSize = 14.000
rejoin.TextWrapped = true
rejoin.MouseButton1Down:connect(function()
rjn()
game:GetService("TeleportService"):Teleport(game.PlaceId, playur)
end)
 
ccolor.Name = "ccolor"
ccolor.Parent = localtab
ccolor.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ccolor.BorderColor3 = Color3.fromRGB(29, 29, 29)
ccolor.BorderSizePixel = 5
ccolor.Position = UDim2.new(0.0655926168, 0, 0.38280645, 0)
ccolor.Size = UDim2.new(0, 150, 0, 25)
ccolor.Font = Enum.Font.Gotham
ccolor.Text = ":ccolor"
ccolor.TextColor3 = Color3.fromRGB(255, 255, 255)
ccolor.TextScaled = true
ccolor.TextSize = 14.000
ccolor.TextWrapped = true
ccolor.MouseButton1Down:connect(function()
rhell = false
ccolor = true
acolor = false
bcolor = false
clors(msg)
end)
 
Stop_2.Name = "Stop"
Stop_2.Parent = localtab
Stop_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Stop_2.BorderColor3 = Color3.fromRGB(29, 29, 29)
Stop_2.BorderSizePixel = 5
Stop_2.Position = UDim2.new(0.0631234795, 0, 0.474972367, 0)
Stop_2.Size = UDim2.new(0, 150, 0, 25)
Stop_2.Font = Enum.Font.Gotham
Stop_2.Text = ":Stop"
Stop_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Stop_2.TextScaled = true
Stop_2.TextSize = 14.000
Stop_2.TextWrapped = true
Stop_2.MouseButton1Down:connect(function()
stop = true
Stop(msg)
end)
 
ms.Name = "ms"
ms.Parent = localtab
ms.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ms.BorderColor3 = Color3.fromRGB(29, 29, 29)
ms.BorderSizePixel = 5
ms.Position = UDim2.new(0.556950629, 0, 0.474972367, 0)
ms.Size = UDim2.new(0, 150, 0, 25)
ms.Font = Enum.Font.Gotham
ms.Text = ":ms"
ms.TextColor3 = Color3.fromRGB(255, 255, 255)
ms.TextScaled = true
ms.TextSize = 14.000
ms.TextWrapped = true
ms.MouseButton1Down:connect(function()
local rlog = math.random(1,5)
 
if rlog == 1 then
for i = 1,100 do
game:GetService'Players':Chat(("ff use your own stuff"))
end
end
 
if rlog == 2 then
for i = 1,100 do
game:GetService'Players':Chat(("ff stop looking :/"))
end
end
 
if rlog == 3 then
for i = 1,100 do
game:GetService'Players':Chat(("ff viewing logs I see"))
end
end
 
if rlog == 4 then
for i = 1,100 do
game:GetService'Players':Chat(("ff no stealing please"))
end
end
 
if rlog == 5 then
for i = 1,100 do
game:GetService'Players':Chat(("ff checking logs I see"))
end
end
end)
 
Go.Name = "Go"
Go.Parent = localtab
Go.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Go.BorderColor3 = Color3.fromRGB(29, 29, 29)
Go.BorderSizePixel = 5
Go.Position = UDim2.new(0.0631234795, 0, 0.574050725, 0)
Go.Size = UDim2.new(0, 150, 0, 25)
Go.Font = Enum.Font.Gotham
Go.Text = ":Go"
Go.TextColor3 = Color3.fromRGB(255, 255, 255)
Go.TextScaled = true
Go.TextSize = 14.000
Go.TextWrapped = true
Go.MouseButton1Down:connect(function()
stop = false
wait(0.25)
game:GetService'Players':Chat(("speed all 16"))
game:GetService'Players':Chat(("grav all"))
game:GetService'Players':Chat(("fix"))
end)
 
sky.Name = "sky"
sky.Parent = localtab
sky.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
sky.BorderColor3 = Color3.fromRGB(29, 29, 29)
sky.BorderSizePixel = 5
sky.Position = UDim2.new(0.556950629, 0, 0.574050725, 0)
sky.Size = UDim2.new(0, 150, 0, 25)
sky.Font = Enum.Font.Gotham
sky.Text = ":sky"
sky.TextColor3 = Color3.fromRGB(255, 255, 255)
sky.TextScaled = true
sky.TextSize = 14.000
sky.TextWrapped = true
sky.MouseButton1Down:connect(function()
game:GetService'Players':Chat(("gear me 212641536"))
wait(0.125)
game:GetService'Players':Chat(("fly me"))
for i = 1,10 do
game:GetService'Players':Chat(("skydive me"))
end
wait(0.125)
game:GetService'Players':Chat(("jail me"))
wait(0.25)
game:GetService'Players':Chat(("unfly me"))
wait(0.5)
game:GetService'Players':Chat(("jail me"))
end)
 
regen.Name = "regen"
regen.Parent = localtab
regen.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
regen.BorderColor3 = Color3.fromRGB(29, 29, 29)
regen.BorderSizePixel = 5
regen.Position = UDim2.new(0.0655926168, 0, 0.677737296, 0)
regen.Size = UDim2.new(0, 150, 0, 25)
regen.Font = Enum.Font.Gotham
regen.Text = ":regen"
regen.TextColor3 = Color3.fromRGB(255, 255, 255)
regen.TextScaled = true
regen.TextSize = 14.000
regen.TextWrapped = true
regen.MouseButton1Down:connect(function()
regen()
end)
 
redhell.Name = "redhell"
redhell.Parent = localtab
redhell.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
redhell.BorderColor3 = Color3.fromRGB(29, 29, 29)
redhell.BorderSizePixel = 5
redhell.Position = UDim2.new(0.559419751, 0, 0.677737296, 0)
redhell.Size = UDim2.new(0, 150, 0, 25)
redhell.Font = Enum.Font.Gotham
redhell.Text = ":redhell"
redhell.TextColor3 = Color3.fromRGB(255, 255, 255)
redhell.TextScaled = true
redhell.TextSize = 14.000
redhell.TextWrapped = true
redhell.MouseButton1Down:connect(function()
ccolor = false
acolor = false
bcolor = false
rhell = true
clors(msg)
end)
 
rainbow.Name = "rainbow"
rainbow.Parent = localtab
rainbow.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
rainbow.BorderColor3 = Color3.fromRGB(29, 29, 29)
rainbow.BorderSizePixel = 5
rainbow.Position = UDim2.new(0.559419751, 0, 0.776815653, 0)
rainbow.Size = UDim2.new(0, 150, 0, 25)
rainbow.Font = Enum.Font.Gotham
rainbow.Text = ":rainbow"
rainbow.TextColor3 = Color3.fromRGB(255, 255, 255)
rainbow.TextScaled = true
rainbow.TextSize = 14.000
rainbow.TextWrapped = true
rainbow.MouseButton1Down:connect(function()
multi = true
rainbow(msg)
end)
 
clicktp.Name = "clicktp"
clicktp.Parent = localtab
clicktp.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
clicktp.BorderColor3 = Color3.fromRGB(29, 29, 29)
clicktp.BorderSizePixel = 5
clicktp.Position = UDim2.new(0.0655926168, 0, 0.776815653, 0)
clicktp.Size = UDim2.new(0, 150, 0, 25)
clicktp.Font = Enum.Font.Gotham
clicktp.Text = "clicktp"
clicktp.TextColor3 = Color3.fromRGB(255, 255, 255)
clicktp.TextScaled = true
clicktp.TextSize = 14.000
clicktp.TextWrapped = true
clicktp.MouseButton1Down:connect(function()
plr = game.Players.LocalPlayer 
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse() 
mouse.KeyDown:connect(function(key) 
if key == "r" then 
if mouse.Target then 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
end 
end
end)
end)
 
stopcmds.Name = "stopcmds"
stopcmds.Parent = localtab
stopcmds.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
stopcmds.BorderColor3 = Color3.fromRGB(29, 29, 29)
stopcmds.BorderSizePixel = 5
stopcmds.Position = UDim2.new(0.312506169, 0, 0.894327164, 0)
stopcmds.Size = UDim2.new(0, 150, 0, 25)
stopcmds.Font = Enum.Font.Gotham
stopcmds.Text = "stoploopcmds"
stopcmds.TextColor3 = Color3.fromRGB(255, 255, 255)
stopcmds.TextScaled = true
stopcmds.TextSize = 14.000
stopcmds.TextWrapped = true
stopcmds.MouseButton1Down:connect(function()
           Non = false
           acolor = false
           bcolor = false
           ccolor = false
		   rhell = false
           erf = false
           multi = false
end)
 
print([[
 
Script Name - AdminJoy
Version - 1.1
Owner of script - Ex_Zviye(ROBLOX), Zviye#0728(DISCORD)
 
[Hot-Keys]
 
Z - Fly
X - Forcefield
C - Reset
V - Respawn
B - Save Location
N - Load Location
M - Execute last command used
F - Interchangeable, say hk1 = Command Name
G - Interchangeable, say hk2 = Command Name
H - Interchangeable, say hk3 = Command Name
J - Disable/Enable Hotkeys
 
[Kit Commands] [13 Kits]
 
:kit [kit name] [player name]
:kit god - Gives you all Periastrons 
:kit omni - Gives you all Periastrons * 10
:kit gun - Gives a load of guns
:kit dark - Makes you dark
:kit knife - Gives you knives
:kit dagger - gives you daggers
:kit bow - gives you bow's
:kit crossbow - gives you crossbows
:kit magic - gives you magical items
:kit sword - Gives you swords
:kit scythe - Gives you scythes
:kit ninja - ninja gear
:kit potion - gives potions
 
COMING SOON.....
:kit hammer
:kit spear
:kit claws
 
[Teleport Commands]
 
To tp players the prefix is ":"
To tp me the prefix is ";"
:[Location] [Player] - Teleports that person to that location
;[Location] - Teleports me to the location
:spawn1 - Teleports you to spawn on the Left
:spawn2 - Teleports you to spawn in the Middle
:spawn3 - Teleports you to spawn on the Right
:house - Teleports you inside the house
:uhouse - Teleports you above the house
:obby - teleports you to the end of the obby
:pads - teleports you to the admin pads
 
[Emote Commands]
 
:hmm
:headtoss
:armspin
:loophead
:scream
:headraise
:dab
:crawl
:crouch
:dance
 
[Music Commands]
play mwd - Plays Miss Wanna Die
 
[Morph Commands]
 
:Dark_Lord - Turn's you into a Dark Lord
:Aka - Makes you Aka Muichiro
:raja - Turn into Raja
:Jester - turns you into a Jester
:Joy - Joy :)
 
[Super Commands]
 
:super[Command] - superuse any command
 
[Spam Commands]
 
:spam[Command] - spam any command
:stop - different from ":Stop" this stop stops spam commands
 
[Other Commands]
 
:boombox - gives you a boombox
:antikill - Auto-resets you upon death
:antipunish - Auto-unpunish you[WIP]
:unblindable - unblindable
:stay - Keeps you in place
:move - allows you to move freely
 
[Local Commands]
 
:here - Saves your current location
:back - Teleports you back to that saved location
:loadout 1 - Fly and Forcefield
:zawarudo - Time Stops now...
:purge - The purge will start
:Stop - Stops all player movement and changes the sky color to red
:Go - Sets all player movement back to normal including the sky
:ls - pulls up logs
:rejoin - Rejoin the current game(DOESN'T WORK FOR VIP SERVERS)
:snap [Player] - Snap someone out of existence
:ms - Clear's Logs
:regen - regen admin pads
:startsave - saves your current location every X seconds
:stopsave - stops the loop of saving your location
pause = [Number] - change the wait time for the spam-save of location
wait = [Number] - Change the wait time of spam commands
hk1 = [Command] - Set a command to the Hotkey F
hk2 = [Command] - Set a command to the Hotkey G
hk3 = [Command] - Set a command to the Hotkey H
amount = [Number] - Sets the amount of gear you'll get
clicktp - Default Button is r [MUST RE-EXECUTE UPON DEATH]
:sky - Teleports you in the sky with a boombox
:acolor - Blinding rgb
:bcolor - Blinding rgb
:ccolor - :acolor and :bcolor combined
:redhell - experience my red hell
:rainbow - More powerful Disco
 
[Gear Commands] [MORE SOON]
 
:g [gear name] [player name]
:g hyperlaser
:g dsd(dagger of shattered dimensions)
:g cresendo
:g rainbow
:g ivory
:g azure
:g crimson
:g chartreuse
:g amethyst
:g noir
:g grimgold
:g sledge hammer
:g carpet
:g dual darkheart
:g darkheart
:g dual illumina
:g illumina
:g tommy gun
:g m1
:g luger pistol
:g mauser 96
:g revolver
:g whip
:g jetpack
:g katana
:g chaos
:g ld - Light sword, Dark Sword
:g lock
:g mine
:g light
:g dark
 
[Commands that will be made in the future]
 
:kit bomb - gives you explosives
:kit musical
:kit transport
:kit building
 
]]) -- End of Print
 
-- Chat Gui
----------------------------------------------
 
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local execute = Instance.new("TextButton")
local entertext = Instance.new("TextBox")
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 0.900
main.BorderSizePixel = 0
main.Position = UDim2.new(0.750684917, 0, 0.721062541, 0)
main.Size = UDim2.new(0, 120, 0, 72)
main.Visible = false
main.Draggable = true
main.Active = true
 
execute.Name = "execute"
execute.Parent = main
execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
execute.BackgroundTransparency = 0.900
execute.BorderSizePixel = 0
execute.Position = UDim2.new(0.219072476, 0, 0.652778208, 0)
execute.Size = UDim2.new(0, 65, 0, 15)
execute.Font = Enum.Font.Gotham
execute.Text = "Use"
execute.TextColor3 = Color3.fromRGB(0, 0, 0)
execute.TextSize = 14.000
execute.MouseButton1Down:connect(function()
local typetext = entertext.Text
game:GetService'Players':Chat((typetext))
end)
 
entertext.Name = "entertext"
entertext.Parent = main
entertext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
entertext.BackgroundTransparency = 0.900
entertext.BorderSizePixel = 0
entertext.Position = UDim2.new(0.106194563, 0, 0.111111112, 0)
entertext.Size = UDim2.new(0, 93, 0, 32)
entertext.Font = Enum.Font.Gotham
entertext.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
entertext.PlaceholderText = "Text Here"
entertext.Text = ""
entertext.TextColor3 = Color3.fromRGB(0, 0, 0)
entertext.TextSize = 14.000
 
---------------------------------------------------------
 
-- Variables
 
local abc = 0 -- Wait Time of Spam
local def = 10 -- Wait Time of LocationSpam
local lol = 0 -- If command being spammed will be displayed
local amn = 1 -- amount of gear given
local check1 = 0 -- toggle for hotkeys
local checking = 0 -- Check for ChatGui
local lastcmd = nil
 
-- Functions
 
function rjn ()
          local place = game:GetService("TeleportService")
        local playur = game:GetService("Players").LocalPlayer
      place:Teleport(game.PlaceId, playur)	
end
 
function regen ()
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end
 
function loop(msg)
while und == true do
LPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(def)
end
end
 
-- function antipun(msg)
-- while nopun == true do
-- wait(0)
-- if acb then
-- print(acb)
-- game:GetService'Players':Chat(("unpunish me"))  elseif cab then
-- end
-- end
-- end
 
function anti(msg)
local plyrname = string.sub(msg, 11)
while antikill == true do
wait(0)
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
wait(0.125)
game:GetService'Players':Chat(("reset me"))
end
end
end
 
function still(msg)
while nomove == true do
wait(0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end
 
 
function unblindable ()
while true do wait()
game.Players.LocalPlayer.PlayerGui:WaitForChild("EFFECTGUIBLIND")
game.Players.LocalPlayer.PlayerGui.EFFECTGUIBLIND:Destroy()
end
end
 
-- Animation Functions
------------------------------------------------------------------------------------------------------------------------
function armturbine ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "259438880"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(100)
end
end
function loopheadd ()
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "35154961"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
while wait(0.00703125) do
k:Play()
k:AdjustSpeed(640)
end
end
end
function laydown ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "282574440"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
function dabb ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
function hmmm ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "148840371"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
function screamm ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "180611870"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
function headthrow ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "35154961"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
function raisehead ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "121572214"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
function crouchh ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "182724289"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
function MovingDance ()
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "429703734"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
------------------------------------------------------------------------------------------------------------------------
 
function clors(msg)
 
while ccolor == true do
wait(0)
game:GetService'Players':Chat(("colorshifttop 10000 0 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshiftbottom 10000 0 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshifttop 0 10000 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshiftbottom 0 10000 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshifttop 0 0 10000"))
wait(0.005)
game:GetService'Players':Chat(("colorshiftbottom 0 0 10000"))
wait(0.005)
end
 
while bcolor == true do
wait(0)
game:GetService'Players':Chat(("colorshiftbottom 10000 0 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshiftbottom 0 10000 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshiftbottom 0 0 10000"))
wait(0.005)
end
 
while acolor == true do
wait(0)
game:GetService'Players':Chat(("colorshifttop 10000 0 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshifttop 0 10000 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshifttop 0 0 10000"))
wait(0.005)
end
 
while rhell == true do
wait(0)
game:GetService'Players':Chat(("time 0"))
wait(0.125)
game:GetService'Players':Chat(("colorshifttop 10000 0 0"))
wait(0.125)
game:GetService'Players':Chat(("colorshiftbottom 10000 0 0"))
wait(0.125)
game:GetService'Players':Chat(("colorshifttop 100000000 1000000000 10000000000000"))
wait(0.125)
game:GetService'Players':Chat(("colorshiftbottom 100000000 1000000000 10000000000000"))
wait(0.125)
end
 
end
 
function rainbow(msg)
 
while multi == true do
wait(0)
game:GetService'Players':Chat(("colorshifttop 0 0 10000"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 0 0 10000"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 0 10000 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 0 10000 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 10000 0 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 10000 0 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 15000 10603 0"))
wait(0.005)
game:GetService'Players':Chat(("colorshiftbottom 15000 10603 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 10000 9000 5000"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 10000 9000 5000"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 10000 0 14135"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 10000 0 14135"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 10000 0 12000"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 10000 0 12000"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 10610 7496 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 10610 7496 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 100000000000000000 0 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 100000000000000000 0 0"))
wait(0.05)
game:GetService'Players':Chat(("colorshifttop 10000000 10000000 10000000"))
wait(0.05)
game:GetService'Players':Chat(("colorshiftbottom 10000000 10000000 10000000"))
wait(0.05)
end
 
end
 
function looppad ()
while erf == true do
wait(0)
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end
end
 
function Spam(msg)
	local plyr = string.sub(msg, 6)
if lol == 1 then
game:GetService'Players':Chat(("h Spamming "..plyr))
end
while Non == true do
wait(abc)
game:GetService'Players':Chat((plyr))
end
end
 
function Stop(msg)
while stop == true do
wait(0.0005)
game:GetService'Players':Chat(("unfly all"))
wait(0.0005)
game:GetService'Players':Chat(("removetools all"))
wait(0.0005)
game:GetService'Players':Chat(("setgrav all 1250"))
wait(0.0005)
game:GetService'Players':Chat(("speed all 0"))
wait(0.0005)
game:GetService'Players':Chat(("outdoorambient 239 20 20"))
end
end
 
-- HotKey Function
 
lp = game.Players.LocalPlayer
ms = lp:GetMouse() 
ms.KeyDown:connect(function(key) 
 
-- Hot Keys
 
if check1 == 0 then
 
if key == "z" then 
game:GetService'Players':Chat(("fly me"))
end
 
if key == "x" then
game:GetService'Players':Chat(("ff me"))
end
 
if key == "c" then
game:GetService'Players':Chat(("reset me"))
end
 
if key == "v" then
game:GetService'Players':Chat(("respawn me"))
end
 
if key == "b" then
SPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
 
if key == "n" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SPos
end
 
if key == "m" then
 game:GetService'Players':Chat((lastcmd))
end
 
if key == "f" then
game:GetService'Players':Chat((hotkey1))
end
 
if key == "g" then
game:GetService'Players':Chat((hotkey2))
end
 
if key == "h" then
game:GetService'Players':Chat((hotkey3))
end
 
end
 
if key == "j" then
 
          check1 = check1 + 1
 
      if check1 == 2 then
          check1 = 0
      end
end
 
end)
 
 
 
game.Players.LocalPlayer.Chatted:connect(function(msg)
time = string.sub(msg, 8)
save = string.sub(msg, 9)
 
if msg == ":active" or msg == ":activate" then
check1 = 0
end
if msg == ":inactive" or msg == ":deactive" or msg == ":disable" then
check1 = 1
end
 
if string.sub(msg, 1, math.huge) == "" then
 lastcmd = string.sub(msg, 1)
end
   if string.sub(msg, 1, 3) == ":wl" then
    wl = string.sub(msg, 5)
game:GetService'Players':Chat(("h "..wl.." is Whitelisted"))
        end
if string.sub(msg, 1, 5) == ":unwl" then
        wl = nil
game:GetService'Players':Chat(("h Unwhitelisted"))
        end
 
 
	if string.sub(msg, 1, 6) == "wait =" then
		abc = time
	end
 
	if string.sub(msg, 1, 7) == "pause =" then
		def = save
	end
	if string.sub(msg, 1, 5) == "hk1 =" then
		hotkey1 = string.sub(msg, 7)
	end
	if string.sub(msg, 1, 5) == "hk2 =" then
		hotkey2 = string.sub(msg, 7)
	end
	if string.sub(msg, 1, 5) == "hk3 =" then
		hotkey3 = string.sub(msg, 7)
	end
if string.sub(msg, 1, 8) == "amount =" then
amn = string.sub(msg, 10)
end
 
if msg == "lol = 0" then
lol = 0
end
if msg == "lol = 1" then
lol = 1
end
-- Kit Commands
 
if string.sub(msg, 1, 9) == ":kit omni" then
 
local plrname = string.sub(msg, 11)
 
for i = 1,10 do
game:GetService'Players':Chat(("gear "..plrname.." 159229806"))
end
 
for i = 1,10 do
game:GetService'Players':Chat(("gear "..plrname.." 93136802"))
end
 
game:GetService'Players':Chat(("gear "..plrname.." 108158379"))
game:GetService'Players':Chat(("gear "..plrname.." 73829193"))
game:GetService'Players':Chat(("gear "..plrname.." 69499437"))
game:GetService'Players':Chat(("gear "..plrname.." 80661504"))
game:GetService'Players':Chat(("gear "..plrname.." 120307951"))
game:GetService'Players':Chat(("gear "..plrname.." 99119240"))
game:GetService'Players':Chat(("gear "..plrname.." 94794774"))
game:GetService'Players':Chat(("gear "..plrname.." 71037101"))
game:GetService'Players':Chat(("gear "..plrname.." 93136746"))
 
end
 
if string.sub(msg, 1, 8) == ":kit god" then
 
local plrname = string.sub(msg, 10)
 
game:GetService'Players':Chat(("gear "..plrname.." 159229806"))
game:GetService'Players':Chat(("gear "..plrname.." 93136802"))
game:GetService'Players':Chat(("gear "..plrname.." 108158379"))
game:GetService'Players':Chat(("gear "..plrname.." 73829193"))
game:GetService'Players':Chat(("gear "..plrname.." 69499437"))
game:GetService'Players':Chat(("gear "..plrname.." 80661504"))
game:GetService'Players':Chat(("gear "..plrname.." 120307951"))
game:GetService'Players':Chat(("gear "..plrname.." 99119240"))
game:GetService'Players':Chat(("gear "..plrname.." 94794774"))
game:GetService'Players':Chat(("gear "..plrname.." 71037101"))
game:GetService'Players':Chat(("gear "..plrname.." 93136746"))
 
end
 
if msg == ":kit dark" then
game:GetService'Players':Chat(("paint me black"))
game:GetService'Players':Chat(("cape me black"))
game:GetService'Players':Chat(("removehats me"))
game:GetService'Players':Chat(("removeface me"))
game:GetService'Players':Chat(("name me "))
game:GetService'Players':Chat(("speed me 32"))
game:GetService'Players':Chat(("trail me black"))
game:GetService'Players':Chat(("gear me 108149175"))
end
 
if string.sub(msg, 1, 8) == ":kit gun" then
 
local plrname = string.sub(msg, 10)
 
game:GetService'Players':Chat(("gear "..plrname.." 94233344"))
game:GetService'Players':Chat(("gear "..plrname.." 94233286"))
game:GetService'Players':Chat(("gear "..plrname.." 95354288"))
game:GetService'Players':Chat(("gear "..plrname.." 97885552"))
game:GetService'Players':Chat(("gear "..plrname.." 116693764"))
game:GetService'Players':Chat(("gear "..plrname.." 97885508"))
game:GetService'Players':Chat(("gear "..plrname.." 130113146"))
 
end
 
if string.sub(msg, 1, 10) == ":kit knife" then
	local plrname = string.sub(msg, 12)
	game:GetService'Players':Chat(("gear "..plrname.." 121946387"))
	game:GetService'Players':Chat(("gear "..plrname.." 1215515248"))
	game:GetService'Players':Chat(("gear "..plrname.." 208659586"))
end
 
if string.sub(msg, 1, 11) == ":kit dagger" then
    local plrname = string.sub(msg, 13)
	game:GetService'Players':Chat(("gear "..plrname.." 62350856"))
	game:GetService'Players':Chat(("gear "..plrname.." 65079090"))
	game:GetService'Players':Chat(("gear "..plrname.." 64220952"))
	game:GetService'Players':Chat(("gear "..plrname.." 71037101"))
	game:GetService'Players':Chat(("gear "..plrname.." 168142394"))
	game:GetService'Players':Chat(("gear "..plrname.." 51760061"))
end
 
if string.sub(msg, 1, 8) == ":kit bow" then
	local plrname = string.sub(msg, 10)
	game:GetService'Players':Chat(("gear "..plrname.." 1180418251"))
	game:GetService'Players':Chat(("gear "..plrname.." 92142841"))
	game:GetService'Players':Chat(("gear "..plrname.." 2136389582"))
	game:GetService'Players':Chat(("gear "..plrname.." 346687267"))
	game:GetService'Players':Chat(("gear "..plrname.." 356213494"))
	game:GetService'Players':Chat(("gear "..plrname.." 2568113462"))
end
 
if string.sub(msg, 1, 13) == ":kit crossbow" then
local plrname = string.sub(msg, 15)
	game:GetService'Players':Chat(("gear "..plrname.." 174752245"))
	game:GetService'Players':Chat(("gear "..plrname.." 1587175338"))
	game:GetService'Players':Chat(("gear "..plrname.." 206566653"))
	game:GetService'Players':Chat(("gear "..plrname.." 178076831"))
	game:GetService'Players':Chat(("gear "..plrname.." 2163551089"))
end
 
if string.sub(msg, 1, 10) == ":kit magic" then
	local plrname = string.sub(msg, 12)
	game:GetService'Players':Chat(("gear "..plrname.." 2316760298"))
	game:GetService'Players':Chat(("gear "..plrname.." 127506105"))
	game:GetService'Players':Chat(("gear "..plrname.." 10760425"))
	game:GetService'Players':Chat(("gear "..plrname.." 66416616"))
	game:GetService'Players':Chat(("gear "..plrname.." 2261167878"))
	game:GetService'Players':Chat(("gear "..plrname.." 27860496"))
end
 
if string.sub(msg, 1, 10) == ":kit sword" then
	local plrname = string.sub(msg, 12)
	game:GetService'Players':Chat(("gear "..plrname.." 1981813154"))
        game:GetService'Players':Chat(("gear "..plrname.." 77443461"))
	game:GetService'Players':Chat(("gear "..plrname.." 77443491"))
	game:GetService'Players':Chat(("gear "..plrname.." 1340206957"))
	game:GetService'Players':Chat(("gear "..plrname.." 155661985"))
	game:GetService'Players':Chat(("gear "..plrname.." 532254782"))
	game:GetService'Players':Chat(("gear "..plrname.." 88885481"))
        game:GetService'Players':Chat(("gear "..plrname.." 93136746"))
end
 
if string.sub(msg, 1, 11) == ":kit scythe" then
local plrname = string.sub(msg, 13)
game:GetService'Players':Chat(("gear "..plrname.." 1609498185"))
game:GetService'Players':Chat(("gear "..plrname.." 2506365260"))
game:GetService'Players':Chat(("gear "..plrname.." 28275809"))
game:GetService'Players':Chat(("gear "..plrname.." 846792499"))
game:GetService'Players':Chat(("gear "..plrname.." 95951330"))
game:GetService'Players':Chat(("gear "..plrname.." 218631128"))
game:GetService'Players':Chat(("gear "..plrname.." 50938765"))
game:GetService'Players':Chat(("gear "..plrname.." 517827255"))
 
end
 
if string.sub(msg, 1, 10) == ":kit ninja" then
local plrname = string.sub(msg, 12)
game:GetService'Players':Chat(("gear "..plrname.." 86494914"))
game:GetService'Players':Chat(("gear "..plrname.." 11377306"))
game:GetService'Players':Chat(("gear "..plrname.." 11115851"))
game:GetService'Players':Chat(("gear "..plrname.." 1304339797"))
game:GetService'Players':Chat(("gear "..plrname.." 51346336"))
game:GetService'Players':Chat(("gear "..plrname.." 233519998"))
 
end
 
if string.sub(msg, 1, 11) == ":kit potion" then
local plrname = string.sub(msg, 13)
game:GetService'Players':Chat(("gear "..plrname.." 11450664"))
game:GetService'Players':Chat(("gear "..plrname.." 56561593"))
game:GetService'Players':Chat(("gear "..plrname.." 55917420"))
game:GetService'Players':Chat(("gear "..plrname.." 65082246"))
game:GetService'Players':Chat(("gear "..plrname.." 11419319"))
game:GetService'Players':Chat(("gear "..plrname.." 47597835"))
 
end
 
-- Teleport Commands
 
if msg == "clicktp" then
plr = game.Players.LocalPlayer 
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse() 
mouse.KeyDown:connect(function(key) 
if key == "r" then 
if mouse.Target then 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
end 
end
end)
end
 
if msg == ":startsave" then
und = true
loop(msg)
end
 
if msg == ":stopsave" then
	und = false
end
 
if msg == ":stay" then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.5)
nomove = true
still(msg)
end
 
if msg == ":move" then
nomove = false
end
 
if msg == ":here" then
LPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
 
if msg == ":back" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LPos
end
 
if msg == ";spawn1" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29, 3.70000005, -25.5900116))
end
 
if msg == ";spawn2" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.70000005, -25.5899963))
end
 
if msg == ";spawn3" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-52.9998322, 3.70000005, -25.5902348))
end
 
 
if msg == ";pads" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-30.6439133, 8.22999954, 90.8547668))
end
if string.sub(msg, 1, 5) == ":pads" then
local plrname = string.sub(msg, 7)
local loc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.125)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-30.6439133, 8.22999954, 90.8547668))
wait(0.25)
game:GetService'Players':Chat(("tp "..plrname.." me"))
wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
if msg == ";house" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4106693, 8.22999954, 63.2581749))
end
if string.sub(msg, 1, 6) == ":house" then
local plrname = string.sub(msg, 8)
local loc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.125)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23.4106693, 8.22999954, 63.2581749))
wait(0.25)
game:GetService'Players':Chat(("tp "..plrname.." me"))
wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
 
if msg == ";uhouse" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29.954174, 41.8300018, 60.291275))
end
 
if string.sub(msg, 1, 7) == ":uhouse" then
local plrname = string.sub(msg, 9)
local loc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.125)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-29.954174, 41.8300018, 60.291275))
wait(0.25)
game:GetService'Players':Chat(("tp "..plrname.." me"))
wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
 
if msg == ";obby" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-52.2587738, 3.70000005, 38.5809517))
end
 
if string.sub(msg, 1, 5) == ":obby" then
local plrname = string.sub(msg, 7)
local loc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.125)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-52.2587738, 3.70000005, 38.5809517))
wait(0.25)
game:GetService'Players':Chat(("tp "..plrname.." me"))
wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
 
if msg == ";blocks" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-74.0005112, 12.1000004, 6.67828035))
end
 
if string.sub(msg, 1, 7) == ":blocks" then
local plrname = string.sub(msg, 9)
local loc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.125)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-74.0005112, 12.1000004, 6.67828035))
wait(0.25)
game:GetService'Players':Chat(("tp "..plrname.." me"))
wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
 
-- Emote Commands
 
if msg == ":hmm" then
hmmm()
end
if msg == ":headtoss" then
headthrow()
end
if msg == ":armspin" then
armturbine()
end
if msg == ":loophead" then
loopheadd()
end
if msg == ":scream" then
screamm()
end
if msg == ":headraise" then
raisehead()
end
if msg == ":dab" then
dabb()
end
if msg == ":crawl" then
laydown()
end
if msg == ":crouch" then
crouchh()
end
if msg == ":dance" then
MovingDance()
end
 
-- Music Commands
 
if msg == "play mwd" then
game:GetService'Players':Chat(("h Playing Miss Wanna Die"))
wait(0.125)
game:GetService'Players':Chat(("music 3118721479"))
end
 
-- Morph Commands
 
if msg == ":Dark_Lord" then
game:GetService'Players':Chat(("unpackage me"))
game:GetService'Players':Chat(("removehats me"))
game:GetService'Players':Chat(("paint me black"))
wait(0.25)
game:GetService'Players':Chat(("pants me 1279747525"))
game:GetService'Players':Chat(("shirt me 1233857398"))
game:GetService'Players':Chat(("hat me 4238305136"))
game:GetService'Players':Chat(("hat me 745790335"))
game:GetService'Players':Chat(("hat me 99860652"))
game:GetService'Players':Chat(("hat me 244160766"))
game:GetService'Players':Chat(("hat me 19380685"))
game:GetService'Players':Chat(("hat me 4087527067"))
end
 
if msg == ":Aka" or msg == ":aka" then
game:GetService'Players':Chat(("unpackage me"))
game:GetService'Players':Chat(("paint me pastel brown"))
game:GetService'Players':Chat(("removehats me"))
wait(0.25)
game:GetService'Players':Chat(("hat me 4708970652"))
game:GetService'Players':Chat(("hat me 4660425043"))
game:GetService'Players':Chat(("hat me 4524990267"))
game:GetService'Players':Chat(("hat me 4524481392"))
game:GetService'Players':Chat(("shirt me 4150240898"))
game:GetService'Players':Chat(("pants me 4240325953"))
game:GetService'Players':Chat(("hat me 106709021"))
game:GetService'Players':Chat(("face me 402304145"))
end
 
if msg == ":Jester" or msg == ":jester" then
game:GetService'Players':Chat(("unpackage me"))
game:GetService'Players':Chat(("paint me white"))
game:GetService'Players':Chat(("removehats me"))
wait(0.125)
game:GetService'Players':Chat(("hat me 1301377743"))
game:GetService'Players':Chat(("hat me 13702134"))
game:GetService'Players':Chat(("shirt me 1304485340"))
game:GetService'Players':Chat(("pants me 1304482618"))
wait(0.125)
game:GetService'Players':Chat(("gear me 120749528"))
game:GetService'Players':Chat(("gear me 746687364"))
end
 
if msg == ":joy" or msg == ":Joy" then
          game:GetService'Players':Chat(("removehats me"))
      game:GetService'Players':Chat(("paint me white"))
      game:GetService'Players':Chat(("hat me 4904151381"))
end
 
if msg == ":raja" then
Point = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.125)
game:GetService'Players':Chat(("char me 86670779"))
wait(0.125)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
end
 
-- Super Commands
 
if string.sub(msg, 1, 6) == ":super" then
	local plrname = string.sub(msg, 7)
	for i = 1,250 do
		game:GetService'Players':Chat((plrname))
	end
end
 
-- Spam Commands
 
if string.sub(msg, 1, 5) == ":spam" then
	Non = true
	Spam(msg)
end
 
if msg == "spampads" then
erf = true
looppad()
end
 
 
if msg == ":stop" then
           Non = false
           acolor = false
           bcolor = false
           ccolor = false
		   rhell = false
           erf = false
           multi = false
end
 
-- Other Commands
 
if string.sub(msg, 1, 8) == ":boombox" then
 
local plrname = string.sub(msg, 10)
game:GetService'Players':Chat(("gear "..plrname.." 212641536"))
end
 
if msg == ":blink" then
game:GetService'Players':Chat(("blind all"))
wait(0.35)
game:GetService'Players':Chat(("unblind all"))
end
 
if msg == ":antikill" then
antikill = true
anti(msg)
end
 
-- if msg == ":antipunish" then
-- nopun = true
-- antipun(msg)
-- end
 
if msg == ":unanti" then
antikill = false
nopun = false
end
 
-- Local Commands
 
 
if string.sub(msg, 1, 5) == ":swap" then
 local plr1 = string.sub(msg, 7,10)
 local plr2 = string.sub(msg, 11, 13)
 local mylocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  game:GetService'Players':Chat(("invis me"))
  wait(0.20)
  game:GetService'Players':Chat(("tp me "..plr1))
  wait(0.20)
  game:GetService'Players':Chat(("tp ".. plr1 .. plr2))
  wait(0.20)
  game:GetService'Players':Chat(("tp "..plr2.." me"))
  wait(0.125)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mylocation
  game:GetService'Players':Chat(("vis me"))
end
 
if string.sub(msg, 1, 8) == ";swap me" then
 local plyr1 = string.sub(msg, 10)
 local myloc1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  game:GetService'Players':Chat(("invis me"))
  wait(0.20)
  game:GetService'Players':Chat(("tp me "..plyr1))
  wait(0.20)
  local myloc2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  wait(0.20)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = myloc1
  wait(0.20)
  game:GetService'Players':Chat(("tp "..plyr1.." me"))
  wait(0.20)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = myloc2
  game:GetService'Players':Chat(("vis me"))
 end
 
if string.sub(msg, 1, 7) == ":random" then
 local xvalue = math.random(-495,495)
 local zvalue = math.random(-495,495)
 local plrname = string.sub(msg, 9)
 local myloc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  wait(0.125)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(xvalue, 3, zvalue))
  wait(0.25)
  game:GetService'Players':Chat(("tp "..plrname.." me"))
  wait(0.25)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = myloc
end
 
if string.sub(msg, 1, 6) == ":throw" then
local plrname = string.sub(msg, 8)
game:GetService'Players':Chat(("fling "..plrname))
end
 
if msg == ":sky" then
game:GetService'Players':Chat(("gear me 212641536"))
wait(0.125)
game:GetService'Players':Chat(("fly me"))
for i = 1,10 do
game:GetService'Players':Chat(("skydive me"))
end
wait(0.125)
game:GetService'Players':Chat(("jail me"))
wait(0.25)
game:GetService'Players':Chat(("unfly me"))
wait(0.5)
game:GetService'Players':Chat(("jail me"))
 
end
 
if string.sub(msg, 1, 7) == ":acolor" then
acolor = true
bcolor = false
ccolor = false
rhell = false
clors(msg)
end
 
if string.sub(msg, 1, 7) == ":bcolor" then
bcolor = true
acolor = false
ccolor = false
rhell = false
clors(msg)
end
 
if string.sub(msg, 1, 7) == ":ccolor" then
ccolor = true
acolor = false
bcolor = false
rhell = false
clors(msg)
end
 
if string.sub(msg, 1, 8) == ":redhell" then
rhell = true
ccolor = false
acolor = false
bcolor = false
clors(msg)
end
 
if msg == ":rainbow" then
multi = true
rainbow(msg)
end
 
if msg == ":map" then
wait(0.25)
game:GetService'Players':Chat(("sit me"))
wait(1.25)
game:GetService'Players':Chat(("punish me"))
wait(1.25) 
game:GetService'Players':Chat(("unpunish me"))
end
if string.sub(msg, 1, 6) == ":regen" then
regen()
end
 
if msg == ":Stop" then
stop = true
Stop(msg)
 
end
 
if msg == ":Go" then
stop = false
wait(0.25)
game:GetService'Players':Chat(("speed all 16"))
game:GetService'Players':Chat(("grav all"))
game:GetService'Players':Chat(("fix"))
end
 
 
if msg == ":loadout 1" then
game:GetService'Players':Chat(("normal me"))
game:GetService'Players':Chat(("ff me"))
game:GetService'Players':Chat(("fly me"))
 
end
 
if string.sub(msg, 1, 5) == ":snap" then
local plrname = string.sub(msg, 7)
game:GetService'Players':Chat(("music 862198133"))
wait(2.50)
game:GetService'Players':Chat(("speed "..plrname.." inf"))
wait(0.125)
game:GetService'Players':Chat(("music "))
end
 
if msg == ":ls" then
game:GetService'Players':Chat(("logs"))
end
 
if msg == ":ms" then
local rlog = math.random(1,5)
 
if rlog == 1 then
for i = 1,100 do
game:GetService'Players':Chat(("ff use your own stuff"))
end
end
 
if rlog == 2 then
for i = 1,100 do
game:GetService'Players':Chat(("ff stop looking :/"))
end
end
 
if rlog == 3 then
for i = 1,100 do
game:GetService'Players':Chat(("ff viewing logs I see"))
end
end
 
if rlog == 4 then
for i = 1,100 do
game:GetService'Players':Chat(("ff no stealing please"))
end
end
 
if rlog == 5 then
for i = 1,100 do
game:GetService'Players':Chat(("ff checking logs I see"))
end
end
 
end
 
if string.sub(msg, 1) == ":rejoin" then
rjn()
game:GetService("TeleportService"):Teleport(game.PlaceId, playur)
end
 
if msg == ":unblindable" then
unblindable()
end
 
if msg == ":zawarudo" then
game.Players:Chat("music 304787933")
wait(2)
game.Players:Chat("freeze others")
game.Players:Chat("ambient 0 63.75 0")
wait(.25)
game.Players:Chat("ambient 0 127.5 0")
wait(.25)
game.Players:Chat("ambient 0 191.25 0")
wait(.25)
game.Players:Chat("ambient 0 255 0")
wait(.25)
game.Players:Chat("stopmusic")
wait(1.5)
game.Players:Chat("music 384043882")
for i = 1,20 do
game.Players:Chat("freeze others")
game.Players:Chat("ambient 0 255 0")
wait(.5)
end
game.Players:Chat("music 676242549")
wait(2.5)
game.Players:Chat("stopmusic")
game.Players:Chat("thaw others")
game.Players:Chat("ambient 0 255 0")
wait(.25)
game.Players:Chat("ambient 0 191.25 0")
wait(.25)
game.Players:Chat("ambient 0 127.5 0")
wait(.25)
game.Players:Chat("ambient 0 63.75 0")
end
 
if msg == ":purge" then
game.Players:Chat("music 232554097")
game.Players:Chat("fogend 150")
game.Players:Chat("time 2")
game.Players:Chat("fogcolor 0 0 0")
game.Players:Chat("brightness 5")
end
 
-- Gear Commands
 
if string.sub(msg, 1, 13) == ":g hyperlaser" then
local plrname = string.sub(msg, 15)
for i = 1,amn do
game:GetService'Players':Chat(("gear "..plrname.." 130113146"))
end
end
 
if string.sub(msg, 1, 7) == ":g mine" then
local plrname = string.sub(msg, 9)
for i = 1,amn do
game:GetService'Players':Chat(("gear "..plrname.." 33383241"))
end
end
 
if string.sub(msg, 1, 6) == ":g dsd" then
local plrname = string.sub(msg, 8)
for i = 1,amn do
game:GetService'Players':Chat(("gear "..plrname.." 71037101"))
end
end
 
if string.sub(msg, 1, 11) == ":g cresendo" then
	local plrname = string.sub(msg, 13)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 94794774"))
end
end
 
if string.sub(msg, 1, 10) == ":g rainbow" then
	local plrname = string.sub(msg, 12)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 159229806"))
end
end
 
if string.sub(msg, 1, 8) == ":g ivory" then
	local plrname = string.sub(msg, 10)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 108158379"))
end
end
 
if string.sub(msg, 1, 8) == ":g azure" then
	local plrname = string.sub(msg, 10)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 69499437"))
end
end
 
if string.sub(msg, 1, 10) == ":g crimson" then
	local plrname = string.sub(msg, 12)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 99119240"))
end
end
 
if string.sub(msg, 1, 13) == ":g chartreuse" then
	local plrname = string.sub(msg, 15)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 80661504"))
end
end
 
if string.sub(msg, 1, 11) == ":g amethyst" then
	local plrname = string.sub(msg, 13)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 93136802"))
end
end
 
if string.sub(msg, 1, 7) == ":g noir" then
	local plrname = string.sub(msg, 9)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 120307951"))
end
end
 
if string.sub(msg, 1, 11) == ":g grimgold" then
	local plrname = string.sub(msg, 13)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 73829193"))
end
end
 
if string.sub(msg, 1, 15) == ":g sledgehammer" then
	local plrname = string.sub(msg, 17)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 45177979"))
end
end
 
if string.sub(msg, 1, 9) == ":g carpet" then
	local plrname = string.sub(msg, 11)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 225921000"))
end
end
 
if string.sub(msg, 1, 16) == ":g dualdarkheart" then
	local plrname = string.sub(msg, 18)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 108149175"))
end
end
 
if string.sub(msg, 1, 12) == ":g darkheart" then
	local plrname = string.sub(msg, 14)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 16895215"))
end
end
 
if string.sub(msg, 1, 15) == ":g dualillumina" then
	local plrname = string.sub(msg, 17)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 101191388"))
end
end
 
if string.sub(msg, 1, 11) == ":g illumina" then
	local plrname = string.sub(msg, 13)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 16641274"))
end
end
 
if string.sub(msg, 1, 8) == ":g tommy" then
	local plrname = string.sub(msg, 10)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 116693764"))
end
end
 
if string.sub(msg, 1, 5) == ":g M1" then
	local plrname = string.sub(msg, 7)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 130113146"))
end
end
 
if string.sub(msg, 1, 8) == ":g luger" then
	local plrname = string.sub(msg, 10)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 95354288"))
end
end
 
if string.sub(msg, 1, 11) == ":g mauser" then
	local plrname = string.sub(msg, 13)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 97885552"))
end
end
 
if string.sub(msg, 1, 11) == ":g revolver" then
	local plrname = string.sub(msg, 13)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 97885508"))
end
end
 
if string.sub(msg, 1, 7) == ":g whip" then
	local plrname = string.sub(msg, 9)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 255800146"))
end
end
 
if string.sub(msg, 1, 10) == ":g jetpack" then
	local plrname = string.sub(msg, 12)
	for i = 1,amn do
	game:GetService'Players':Chat(("gear "..plrname.." 31314966"))
end
end
 
if string.sub(msg, 1, 9) == ":g katana" then
	local plrname = string.sub(msg, 11)
	for i = 1,amn do	
	game:GetService'Players':Chat(("gear "..plrname.." 11453385"))
end
end
 
if string.sub(msg, 1, 8) == ":g chaos" then
   local plrname = string.sub(msg, 10)
	for i = 1,amn do
game:GetService'Players':Chat(("gear "..plrname.." 93136746"))
end
end
 
if string.sub(msg, 1, 7) == ":g lock" then
local plrname = string.sub(msg, 9)
	for i = 1,amn do
game:GetService'Players':Chat(("gear "..plrname.." 82357101"))
end
end
 
if string.sub(msg, 1, 5) == ":g ld" then
local plrname = string.sub(msg, 7)
for i = 1,amn do
game:GetService'Players':Chat(("gear "..plrname.." 77443461"))
game:GetService'Players':Chat(("gear "..plrname.." 77443491"))
end
end
 
if string.sub(msg, 1, 8) == ":g light" then
local plrname = string.sub(msg, 10)
for i = 1,amn do
game:GetService'Players':Chat(("gear "..plrname.." 77443461"))
end
end
 
if string.sub(msg, 1, 7) == ":g dark" then
local plrname = string.sub(msg, 9)
for i = 1,amn do
game:GetService'Players':Chat(("gear "..plrname.." 77443491"))
end
end
 
-- middle spawn -41, 3.70000005, -25.5899963
-- left spawn -29, 3.70000005, -25.5900116
-- right spawn -52.9998322, 3.70000005, -25.5902348
-- house -28.1114655, 8.22999954, 73.5093384
-- top of house -30.1221466, 41.8300018, 49.8780518
-- admin pads -14.3406286, 10.6300001, 93.9855042
-- end of the obby -41.3802643, 4.86999989, 37.7844849
-- pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame print(pos) find pos
end)
