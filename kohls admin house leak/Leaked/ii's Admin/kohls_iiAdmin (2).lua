local Settings = {
    ["Autorun Commands"] = {"antikick","antiservercrash","antiabuse","antiname","localremoveobby","fixvelocity","runcommand logs","antivoid"}, -- Commands to run automatically
    ["Default Whitelisted"] = {}, -- People whitelisted by default
    ["Default Banned"] = {"794x794","Instlgator","blue20043","Arman2oooo","aonhayhoinon011","KsiPrimeUwu","BarfinOnTheHomeless","InceptionToxic","KyjeuX","surakurd"}, -- People banned by default
    ["Prefix"] = ".", -- Prefix used for running commands
    ["Person299's Admin"] = true -- If you do not own Person299's Admin, some commands will be fixed appropriately
}

repeat wait() until game:IsLoaded()
if game.PlaceId ~= 112420803 then return end

local loadtime = os.clock()
local owner = game.Players.LocalPlayer
local player = owner
local localplayer = owner
local lp = owner
local plr = owner
local chr = owner.Character
local character = owner.Character
local char = owner.Character
local consoleOn = true
game:GetService("RunService").RenderStepped:Connect(function()
    chr=owner.Character
    character=owner.Character
    char=owner.Character
end)
local running = true
local prefix = Settings["Prefix"]
local GUI = {}
local commandlist = {}
local Connections = {}
local Loops = {}
local Toolbans = {}
local ServerLockedProtection = {}
local Whitelisted = Settings["Default Whitelisted"]
local Banned = Settings["Default Banned"]
local PersonsAdmin = Settings["Person299's Admin"]
local ServerLocked = false
local ServerLockedSoundEnabled = false
local ServerLockedSound = ""
local BanSoundsEnabled = false
local BanSound = ""

local Audios = {}
spawn(function()
local s,f=pcall(function()
local audioHttpRequest = game:HttpGet("https://pastebin.com/raw/avxb44gq")
for i,v in pairs(audioHttpRequest:split("\n")) do
    local data = v:split(";")
    table.insert(Audios,{data[1],data[2],data[3],data[4]})
end
end)if s then print("Bypassed audios loaded successfully")else print("Bypassed audios could not be loaded")end end)

local lettersStringFormat=[[abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()_+={}|[]\;',./<>?:`~-]]
local lettersTableFormat={}
for i=1,#lettersStringFormat do
    table.insert(lettersTableFormat,lettersStringFormat:sub(i,i))
end

function GUI:SendMessage(name,text)
    if PersonsAdmin then
    game.Players:Chat([[h/


































[]]..name.."]")
game.Players:Chat([[h/




































]]..text)
else
game.Players:Chat([[h 


































[]]..name.."]")
game.Players:Chat([[h 




































]]..text)
end
end

function GetPlayers(jjk)
local boss = lp
local fat = {}
if jjk:lower() == "me" then 
return {boss} 

elseif jjk:lower() == "all" or jjk:lower() == "*" then 
return game:GetService("Players"):GetChildren() 

elseif jjk:lower() == "others" then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= boss.Name then
table.insert(fat,v)
end
end
return fat

elseif jjk:lower() == "random" then
return {game:GetService("Players"):GetChildren()[math.random(1,#game:GetService("Players"):GetChildren())]}

else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.Name:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.DisplayName:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
return fat
end

end

--These are the functions used for playing music and sounds
function GetGuitar()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("GuitarSword") then
        return game.Players.LocalPlayer.Character:FindFirstChild("GuitarSword")
    else
        game.Players:Chat("gear me 60357982")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetDrum()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("DrumKit") then
        return game.Players.LocalPlayer.Character:FindFirstChild("DrumKit")
    else
        game.Players:Chat("gear me 33866728")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetBongo()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("BongoDrums") then
        return game.Players.LocalPlayer.Character:FindFirstChild("BongoDrums")
    else
        game.Players:Chat("gear me 57902997")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetPaint()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("PaintBucket") then
        return game.Players.LocalPlayer.Character:FindFirstChild("PaintBucket")
    else
        game.Players:Chat("gear me 18474459")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetBoombox()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("SuperFlyGoldBoombox") then
        return game.Players.LocalPlayer.Character:FindFirstChild("SuperFlyGoldBoombox")
    else
        game.Players:Chat("gear me 212641536")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetNewBoombox()
    game.Players:Chat("gear me 212641536")
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
    tool.Parent = game.Players.LocalPlayer.Character
    return tool
end
function PlaySound(SoundId,Looping)
    spawn(function()
        local Boombox = GetNewBoombox()
        Boombox.Remote:FireServer("PlaySong",SoundId)
        if not Looping then
            repeat wait() until Boombox.Handle.Sound.IsLoaded and Boombox.Handle.Sound.Playing
            wait(Boombox.Handle.Sound.TimeLength)
            Boombox.Handle.Sound:Stop()
            Boombox.Handle:Destroy()
        end
    end)
end
function PlayNote(Note)
    local Tool = GetGuitar()
    Tool.Handle:FindFirstChild(Note):Play()
end
function PlayDrum(Sound)
    local Tool = GetDrum()
    Tool.Handle:FindFirstChild(Sound):Play()
end
function PlayBongo(Sound)
    local Tool = GetBongo()
    Tool.Handle:FindFirstChild(Sound):Play()
end

function moveObject(target,wawawaa)
    function equipivory()
    	if lp.Backpack:FindFirstChild("IvoryPeriastron") then
    		lp.Backpack.IvoryPeriastron.Parent = lp.Character
    	else
    	    if not lp.Character:FindFirstChild("IvoryPeriastron") then
        	    game.Players:Chat("gear me 108158379")
        	    repeat wait() until lp.Backpack:FindFirstChild("IvoryPeriastron")
        	    lp.Backpack.IvoryPeriastron.Parent = lp.Character
        	end
    	end
    end
    equipivory()
	if lp.Character:FindFirstChild("IvoryPeriastron") then
		local cf = lp.Character.HumanoidRootPart
		local setdadamncframe = true
		local thedollar = wawawaa
		spawn(function()
        repeat game:GetService("RunService").RenderStepped:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = thedollar
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
        until not setdadamncframe
        end)
		wait(0.2)
        setdadamncframe = false
		lp.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
		cf.Anchored = false
		local looping = true
		local thedollarsecondary = Instance.new("Part",cf.Parent)
		thedollarsecondary.Anchored = true
		thedollarsecondary.Size = Vector3.new(10,1,10)
		thedollarsecondary.CFrame = (target.CFrame * CFrame.new(-1*(target.Size.X/2)-(lp.Character['Torso'].Size.X/2), 0, 0)) * CFrame.new(0,-3.5,0)
		spawn(function()
			while true do
				game:GetService('RunService').Heartbeat:wait()
				game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
				target.RotVelocity = Vector3.new(0,0,0)
		                target.Velocity = Vector3.new(0,0,0)
		                cf.Velocity = Vector3.new(0,0,0)
		                cf.RotVelocity = Vector3.new(0,0,0)
			    cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(lp.Character['Torso'].Size.X/2), 0, 0)
				if not looping then break end
			end
		end)
		spawn(function() while looping do game:GetService('RunService').Heartbeat:wait() game:GetService("Players"):Chat('unpunish me') end end)
		wait(0.3)
		looping = false
		lp.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
		wait(0.3)
		game:GetService("Players"):Chat("respawn me")
		
	end
end

function getSoundId(githubLink,fileName)
    if not isfolder("LocalMusic") then makefolder("LocalMusic") end
    if not isfile("LocalMusic/"..tostring(fileName)..".mp3") then
        writefile("LocalMusic/"..tostring(fileName)..".mp3",syn.request({Url=githubLink, Method='GET'}).Body)
    end
    return getsynasset("LocalMusic/"..tostring(fileName)..".mp3")
end

function addCommand(name,args,func)
    table.insert(commandlist,{name,args,func})
end

function runCommand(param1,specargs)
    for i,asdfuhiswuejfniuserf in pairs(commandlist) do
        if prefix..asdfuhiswuejfniuserf[1] == param1 and running then
            if #specargs > #asdfuhiswuejfniuserf[2]-1 then
		pcall(function()
            local s,f = pcall(asdfuhiswuejfniuserf[3](specargs))
            if not s then if consoleOn then print(f) end end
end)
            return
            else
                local lister = prefix..asdfuhiswuejfniuserf[1].." "
                for i,d in pairs(asdfuhiswuejfniuserf[2]) do lister = lister..d.." " end
                GUI:SendMessage("ii's St upid Ad min ", "The command you have recently sent is not properly formatted.\n The correct format is: \n "..lister)
            end
        end
    end
end

addCommand("cmds",{},function()
    if consoleOn then print("-:COMMANDS ["..tostring(#commandlist).."]:-") end
    for i,v in pairs(commandlist) do
        local lister = ""
        for i,d in pairs(v[2]) do lister = lister..d.." " end
        if consoleOn then print(v[1].." "..lister)end
    end
    GUI:SendMessage("ii' s St upid Ad min", "Check the developer console for the commands.")
end)

addCommand("prefix",{"newprefix"},function(args)
    prefix = args[1]
    GUI:SendMessage("ii' s St upid Ad min", "Set prefix to "..prefix.." successfully.")
end)

addCommand("altcmds",{},function()
    for i,v in pairs(commandlist) do
        local lister = ""
        for i,d in pairs(v[2]) do lister = lister..d.." " end
        game.Players:Chat("ff "..v[1].." "..lister)
        wait()
    end
    wait()
    game.Players:Chat("ff -:COMMANDS ["..tostring(#commandlist).."]:-")
    wait()
    GUI:SendMessage("ii' s St upid Ad min", "Check logs for list of commands.")
end)

addCommand("toolban",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        Toolbans[v.Name] = v.Backpack.ChildAdded:Connect(function()
            game.Players:Chat("removetools "..v.Name)
        end)
    end
end)

addCommand("untoolban",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        pcall(function()
            Toolbans[v.Name]:Disconnect()
        end)
    end
end)

addCommand("potatocrash",{"player"},function(args)
    local cacheAntiKick = Loops.antikick
    if cacheAntiKick then Loops.antikick = false end
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        for zxz,xzx in pairs(chr:GetDescendants())do if v:IsA("BasePart") then v.Velocity = Vector3.new(0,0,0)end end
        local pos = chr.HumanoidRootPart.CFrame
        game.Players:Chat("size "..v.Name.." nan")
        wait()
        game.Players:Chat("noclip "..v.Name)
        wait()
        for i=1,5 do
            game.Players:Chat("gear me 25741198")
            wait()
        end
        repeat wait() until #plr.Backpack:GetChildren()>4
        for i,v2 in pairs(plr.Backpack:GetChildren()) do
            spawn(function()
            v2.Parent = chr
            v2:Activate()
            firetouchinterest(v2.Handle,v.Character:FindFirstChildOfClass("Part"),0)
            end)
        end
    end
    wait(0.5)
    if cacheAntiKick then runCommand(prefix.."antikick",{}) end
end)

addCommand("potatocrashsound",{"player","soundid"},function(args)
    local cacheAntiKick = Loops.antikick
    if cacheAntiKick then Loops.antikick = false end
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("music "..args[2])
        for zxz,xzx in pairs(chr:GetDescendants())do if v:IsA("BasePart") then v.Velocity = Vector3.new(0,0,0)end end
        local pos = chr.HumanoidRootPart.CFrame
        game.Players:Chat("size "..v.Name.." nan")
        wait()
        game.Players:Chat("noclip "..v.Name)
        wait()
        for i=1,5 do
            game.Players:Chat("gear me 25741198")
            wait()
        end
        repeat wait() until #plr.Backpack:GetChildren()>4
        for i,v2 in pairs(plr.Backpack:GetChildren()) do
            spawn(function()
            v2.Parent = chr
            v2:Activate()
            firetouchinterest(v2.Handle,v.Character:FindFirstChildOfClass("Part"),0)
            end)
        end
    end
    wait(0.5)
    game.Players:Chat("music nan")
    if cacheAntiKick then runCommand(prefix.."antikick",{}) end
end)

addCommand("kicksound",{"player"},function(args)
    runCommand(prefix.."potatocrashsound",args)
end)

addCommand("kick",{"player"},function(args)
    runCommand(prefix.."potatocrash",args)
end)

addCommand("ban",{"player"},function(args)
    for i,v in pairs(GetPlayers(args[1])) do
        table.insert(Banned,v.Name)
        if BanSoundsEnabled then
            runCommand(prefix.."potatocrashsound",{v.Name,BanSound})
        else
            runCommand(prefix.."potatocrash",{v.Name})
        end
    end
end)

addCommand("softlock",{"player"},function(args)
    Loops.softlock = true
    repeat wait()
    for i,v in pairs(GetPlayers(args[1])) do
        pcall(function()
        if v.Character.HumanoidRootPart.Position.Y < 500 then
        game.Players:Chat("skydive "..v.Name)
        game.Players:Chat("fling "..v.Name)
        v.Character.HumanoidRootPart.Position = v.Character.HumanoidRootPart.Position+Vector3.new(0,999,0)
        end
        if not v.Character:FindFirstChildOfClass("Model") then
            game.Players:Chat("name "..v.Name..[[ [ii' s St upid Ad min]
You are currently softlocked.]])
        end
        if v:DistanceFromCharacter(v.Character.Torso.Position)>1 then
            game.Players:Chat("size "..v.Name.." 0.3")
        end
        end)
    end
    until not Loops.softlock
end)

addCommand("unsoftlock",{},function(args)
    Loops.softlock = false
end)

addCommand("unban",{"player"},function(args)
    for i,v in pairs(Player) do
        if table.find(Banned,v.Name) then
            table.remove(Banned,table.find(Banned,v.Name))
        end
    end
end)

addCommand("shutdown",{},function()
    while wait() do
    for i = 1,3 do game.Players:Chat("size all 0.3") end
    game.Players:Chat("freeze all")
    for i = 1,3 do game.Players:Chat("size all 10") end
    game.Players:Chat("clone all")
    end
end)

addCommand("crash",{},function()
    runCommand(prefix.."shutdown",{})
end)

addCommand("vampirecrash",{},function()
    game.Players:Chat("gear me 94794847")
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
    game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher").Parent = game.Players.LocalPlayer.Character
    repeat wait() until not game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Coffin")
    repeat wait() until game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Remote")
    game.Players.LocalPlayer.Character.VampireVanquisher.Remote:FireServer(Enum.KeyCode.Q)
    for i=1,5 do
        game.Players:Chat("size me 0.3")
    end
end)

addCommand("iishutdown",{},function()
    game.Players:Chat("fogend 0")
    game.Players:Chat("fogcolor 0 0 0")
    game.Players:Chat("time 0")
    if PersonsAdmin then
    game.Players:Chat([[h/




























##########################################
i hope both sides of your pillow are warm
##########################################]])
else
game.Players:Chat([[h 




























##########################################
i hope both sides of your pillow are warm
##########################################]])
end
    runCommand(prefix.."playbypass",{"syko"})
    wait()
    runCommand(prefix.."vampirecrash",{})
    spawn(function()
        wait(0.5)
        runCommand(prefix.."shutdown",{})
    end)
end)

addCommand("chatlogs",{},function()
    spawn(function()
        -- Gui to Lua
-- Version: 3.2

-- Instances:

local chatlogger = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local uic1 = Instance.new("UICorner")
local scroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local template = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

chatlogger.Name = "chatlogger"
chatlogger.IgnoreGuiInset = true
chatlogger.ResetOnSpawn = false
chatlogger.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
chatlogger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = chatlogger
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.LayoutOrder = 1
Main.Position = UDim2.new(0.0278281905, 0, 0.0933544338, 0)
Main.Size = UDim2.new(0, 296, 0, 429)
Main.Image = "rbxassetid://11400472392"
Main.Draggable = true
Main.ScaleType = Enum.ScaleType.Crop

spawn(function()
    local UserInputService = game:GetService("UserInputService")

local gui = Main

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		if gui.Visible then
			update(input)
		end
	end
end)
end)

uic1.CornerRadius = UDim.new(0, 16)
uic1.Name = "uic1"
uic1.Parent = Main

scroll.Name = "scroll"
scroll.Parent = Main
scroll.Active = true
scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scroll.BackgroundTransparency = 1.000
scroll.BorderSizePixel = 0
scroll.LayoutOrder = 1
scroll.Position = UDim2.new(0,0,0,20)
scroll.Size = UDim2.new(1, 0, 1, -20)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = scroll
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

ImageButton.Parent = Main
ImageButton.AnchorPoint = Vector2.new(1, 0)
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.Position = UDim2.new(1, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 20, 0, 20)
ImageButton.Image = "rbxassetid://11400472392"

UICorner.Parent = ImageButton

TextLabel.Parent = ImageButton
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "X"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000
TextLabel.TextStrokeTransparency = 0.000

template.Name = "template"
template.Parent = chatlogger
template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
template.BackgroundTransparency = 1.000
template.BorderSizePixel = 0
template.Size = UDim2.new(1, 0, 0, 15)
template.Visible = false
template.Image = "rbxassetid://11400472392"
template.ScaleType = Enum.ScaleType.Tile
template.TileSize = UDim2.new(0.330000013, 0, 1, 0)

UICorner_2.Parent = template

TextLabel_2.Parent = template
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "[Username]: deez nuts"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeTransparency = 0.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function SGVLNS_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	local ui = script.Parent.Parent
	local scroll = ui.Main.scroll
	local template = ui.template
	
	local numericalthing = 0
	
	local logger = game.Players.PlayerChatted:Connect(function(nobodycares,player,message)
		local temp = template:Clone()
		temp.Parent = scroll
		temp.Visible = true
		temp.TextLabel.Text = "["..player.Name.."]: "..message
		temp.LayoutOrder = numericalthing
		temp.MouseButton1Click:Connect(function()
		    setclipboard(temp.Textlabel.Text)
		end)
		numericalthing=numericalthing-1
	end)
	
	ui.Main.ImageButton.MouseButton1Click:Connect(function()
		logger:Disconnect()
		ui:Destroy()
	end)
end
coroutine.wrap(SGVLNS_fake_script)()
    end)
end)

addCommand("hiddenlogs",{},function()
    runCommand(prefix.."chatlogs",{})
end)

addCommand("logs",{},function()
    runCommand(prefix.."chatlogs",{})
end)

addCommand("combustablelemon",{},function()
    game.Players:Chat("pm me I'M THE MAN THAT'S GONNA [REDACTED] YOUR HOUSE DOWN!\nWITH THE LEMONS!\n\nTo use, click while holding the lemon.\nOr, for the mobile users (imagine), hit the button in the bottom right corner")
    game.Players:Chat("gear me 19703476")
repeat game:GetService("RunService").RenderStepped:Wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("YellowSnowball")
print("found da snowball")
local CombustableLemon = game.Players.LocalPlayer.Backpack:FindFirstChild("YellowSnowball")
CombustableLemon:FindFirstChildOfClass("LocalScript").Disabled = true
CombustableLemon.TextureId = "rbxassetid://7285797360"
CombustableLemon.Name = "CombustableLemon"

-- Gui to Lua
-- Version: 3.2

-- Instances:

local lemonui = Instance.new("ScreenGui")
local lemonbutton = Instance.new("TextButton")

--Properties:

lemonui.Name = "lemonui"
lemonui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
lemonui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
lemonui.Enabled = false

lemonbutton.Name = "lemonbutton"
lemonbutton.Parent = lemonui
lemonbutton.AnchorPoint = Vector2.new(1, 1)
lemonbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lemonbutton.Position = UDim2.new(1, 0, 1, 0)
lemonbutton.Size = UDim2.new(0, 110, 0, 110)
lemonbutton.Font = Enum.Font.SourceSans
lemonbutton.Text = "imagine being on mobile"
lemonbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
lemonbutton.TextScaled = true
lemonbutton.TextSize = 14.000
lemonbutton.TextWrapped = true

local bombing = false
CombustableLemon.Equipped:Connect(function(yeahh)
    lemonui.Enabled = true
    game.Players:Chat("music 899460722")
    repeat wait() until workspace.Terrain["_Game"].Folder.Sound.IsLoaded
    wait(0.1)
    spawn(function()
	    wait(game:GetService("Workspace").Terrain["_Game"].Folder.Sound.TimeLength - 0.2)
	    game.Players:Chat("music nan")
    end)
end)

CombustableLemon.Unequipped:Connect(function()
    lemonui.Enabled = false
end)

game:GetService("UserInputService").InputBegan:Connect(function(ip,gp)
    if not bombing and not gp and ip.UserInputType == Enum.UserInputType.MouseButton1 and CombustableLemon and CombustableLemon.Parent == game.Players.LocalPlayer.Character then
    bombing = true
    game.Players:Chat("music 132323614")
    wait(0.6)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"I'M THE MAN WHO'S GONNA BURN YOUR HOUSE DOWN!","All"}))
    wait(2.9)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"WITH THE LEMONS!","All"}))
    wait(0.6)
    game.Players:Chat("explode me")
    wait(0.7)
    game.Players:Chat("music nan")
    end
end)

lemonbutton.MouseButton1Click:Connect(function()
    if not bombing and CombustableLemon and CombustableLemon.Parent == game.Players.LocalPlayer.Character then
    bombing = true
    game.Players:Chat("music 132323614")
    wait(0.6)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"I'M THE MAN WHO'S GONNA BURN YOUR HOUSE DOWN!","All"}))
    wait(2.9)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"WITH THE LEMONS!","All"}))
    wait(0.6)
    game.Players:Chat("explode me")
    wait(0.7)
    game.Players:Chat("music nan")
    end
end)
end)

addCommand("banhammer",{},function(args)
    game.Players:Chat("pm me Check the developer console for a tutorial on how to use this.")
    loadstring(game:HttpGet("https://gist.githubusercontent.com/iiDk-the-actual/c22667e1601001c347aa8da41622aaed/raw/0714ef377dc50262e8fc6645089c03effe77ad56/KAH-BanHammer"))()
end)

addCommand("freezecamera",{"players"},function(args)
    local Player = GetPlayers(args[1])
for i,v in pairs(Player) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999,99999,99999)
local thedollarsecondary = Instance.new("Part",game.Players.LocalPlayer.Character)
		thedollarsecondary.Anchored = true
		thedollarsecondary.Size = Vector3.new(10,1,10)
		thedollarsecondary.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-5,0)
    game.Players:Chat("gear me 94794847")
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
    local VampireVanquisher = game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
    VampireVanquisher.Parent = game.Players.LocalPlayer.Character
    repeat wait() until not game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Coffin")
    
    repeat wait()
        print(game.Players.LocalPlayer:DistanceFromCharacter(v.Character.Head.Position))
    firetouchinterest(VampireVanquisher.Handle,v.Character.Head,0)firetouchinterest(VampireVanquisher.Handle,v.Character.Head,1)
    until game.Players.LocalPlayer:DistanceFromCharacter(v.Character.Head.Position) < 10
    game.Players:Chat("respawn me")
end
end)

addCommand("playbongos",{"musicstring"},function(args)
    soundTableBongo = {
		["b"] = "LeftBongoLowSound",
		["h"] = "LeftBongoHighSound",
		["m"] = "RightBongoLowSound",
		["j"] = "RightBongoHighSound"
	}

local str = args[1]
	for i = 1, string.len(str) do
	    pcall(function()
	    PlayBongo(soundTableBongo[str:sub(i,i)])
		end)
		wait(2/15)
	end
end)

addCommand("playguitar",{"musicstring"},function(args)
	for i,v in pairs(args) do
	    pcall(function()
        PlayNote(v)
        end)
	    wait(2/15)
	end
end)

addCommand("playdrums",{"musicstring"},function(args)
    soundTableBongo = {
		["a"] = "HiHat",
		["b"] = "Snare",
		["c"] = "Tom2",
		["d"] = "Tom3",
		["e"] = "Crash",
		["f"] = "Tom1",
		["g"] = "Kick",
		["h"] = "Ride"
	}

local str = args[1]
	for i = 1, string.len(str) do
	    pcall(function()
	    PlayDrum(soundTableBongo[str:sub(i,i)])
		end)
		wait(2/15)
	end
end)

addCommand("soundspam",{"frequency","delay"},function(args)
    for i=1,args[1] do 
        game.Players:Chat("hat me 305888394")
        if tonumber(args[2])>0 then
        wait(tonumber(args[2]))
        end
    end
end)

addCommand("spamlogs",{},function()
    for i=1,50 do
        game.Players:Chat([[ff ███████████████████████████████
███████████████████████████████
███████████████████████████████
███████████████████████████████
███████████████████████████████
███████████████████████████████
███████████████████████████████
███████████████████████████████
███████████████████████████████
███████████████████████████████
]])
wait()
    end
end)

addCommand("mute",{},function()
    Loops.mute = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        for i,v in pairs(workspace:GetDescendants()) do
            if v:IsA("Sound") then if v.Playing then v:Stop() end end
        end
    until not Loops.mute
end)

addCommand("unmute",{},function()
    Loops.mute = false
end)

addCommand("timepositionmusic",{"timeposition"},function(args)
    game:GetService("Workspace").Terrain["_Game"].Folder.Sound.TimePosition = args[1]
end)

addCommand("timepositionall",{"timeposition"},function(args)
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Sound") then v.TimePosition = args[1] end
    end
end)

addCommand("soundtroll",{},function()
    Loops.soundtroll = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Sound") then 
            if v.Playing == false then v:Play() end v.TimePosition = math.random(0,v.TimeLength*100)/100 end
    end
    until not Loops.soundtroll
end)

addCommand("spawnkill",{},function()
    local obbydestroyed = false
    spawn(function()
        if game.Chat:FindFirstChild("Obby") then obbydestroyed = true runCommand(prefix.."localaddobby",{}) end
    end)
    wait()
    moveObject(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9,CFrame.new(-41.0650024, 1.30000007, -28.601058959961, 0, 0, -1, 0, 1, 0, 1, 0, 0))
if obbydestroyed then spawn(function()
    runCommand(prefix.."localremoveobby",{})
end) end
end)

addCommand("cagespawn",{},function()
    moveObject(game:GetService("Workspace").Terrain["_Game"].Workspace["Basic House"].SmoothBlockModel40,CFrame.new(-10.7921638, 17.3182983, -16.0743637, -0.999961913, -0.0085983118, 0.00151610479, -1.01120179e-08, 0.173648253, 0.98480773, -0.00873095356, 0.984770179, -0.173641637))
end)

addCommand("unsoundtroll",{},function()
    Loops.soundtroll = false
end)

addCommand("stopsoundtroll",{},function()
    runCommand(prefix.."unsoundtroll",{})
end)

addCommand("raid",{},function()
    Loops.raid = true
    repeat wait()
        pcall(function()
            if PersonsAdmin then
        game.Players:Chat("m/raided by ii' s St upid Ad min")
        else
           game.Players:Chat("m raided by ii' s St upid Ad min") 
        end
        local Player = GetPlayers("others")
        for i,v in pairs(Player) do
            for zxz,xzx in pairs(chr:GetDescendants())do if v:IsA("BasePart") then v.Velocity = Vector3.new(0,0,0)end end
            local pos = chr.HumanoidRootPart.CFrame
            game.Players:Chat("size "..v.Name.." nan")
            wait()
            game.Players:Chat("freeze "..v.Name)
            wait()
            for i=1,5 do
                game.Players:Chat("gear me 25741198")
                wait()
            end
            wait()
            for zxz,xzx in pairs(chr:GetDescendants())do if v:IsA("BasePart") then v.Velocity = Vector3.new(0,0,0)end end
            chr.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,7.5)
            wait(0.25)
            chr.HumanoidRootPart.Anchored=true
            wait(0.3)
            for i,v in pairs(plr.Backpack:GetChildren()) do
                v.Parent = chr
                wait()
                v:Activate()
                wait()
                v.Parent=workspace
                wait()
            end
            chr.HumanoidRootPart.Anchored=false
            chr.HumanoidRootPart.CFrame = pos
        end
        end)
    until not Loops.raid
end)

addCommand("buildswordfightingarena",{"player1","player2"},function(args)
    if PersonsAdmin then
    local partIndex = 1
local indexPosition = {
    CFrame.new(-130,5,-55),
    CFrame.new(-140,5,-55),
    CFrame.new(-150,5,-55),
    CFrame.new(-130,5,-65),
    CFrame.new(-140,5,-65),
    CFrame.new(-150,5,-65),
    CFrame.new(-130,5,-75),
    CFrame.new(-140,5,-75),
    CFrame.new(-150,5,-75),
    CFrame.new(-154, 8, -51),
    CFrame.new(-126, 8, -79),
    CFrame.new(-154, 8, -79),
    CFrame.new(-126, 8, -51),
    CFrame.new(-154, 9, -56, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    CFrame.new(-154, 9, -65, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    CFrame.new(-154, 9, -74, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    CFrame.new(-126, 9, -56, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    CFrame.new(-126, 9, -65, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    CFrame.new(-126, 9, -74, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    CFrame.new(-131, 9, -79, 0, 0, 1, 0, 1, 0, -1, 0, 0),
    CFrame.new(-140, 9, -79, 0, 0, 1, 0, 1, 0, -1, 0, 0),
    CFrame.new(-149, 9, -79, 0, 0, 1, 0, 1, 0, -1, 0, 0),
    CFrame.new(-131, 9, -51, 0, 0, 1, 0, 1, 0, -1, 0, 0),
    CFrame.new(-140, 9, -51, 0, 0, 1, 0, 1, 0, -1, 0, 0),
    CFrame.new(-149, 9, -51, 0, 0, 1, 0, 1, 0, -1, 0, 0),
}
local origin = CFrame.new(-130, 3.7, -45)
chr.HumanoidRootPart.CFrame = origin
wait(0.25)
local basepart = Instance.new("Part",chr)
basepart.CFrame = CFrame.new(-140,5,-65)
basepart.Anchored = true
basepart.Transparency = 0.5
basepart.Size = Vector3.new(30,2.55,30)

local function teleportPeopleYes()
    for i,v in pairs(GetPlayers(args[1])) do
        chr.HumanoidRootPart.CFrame = CFrame.new(128.923386, 14, -53.6450806, 0.677816927, 3.43786546e-08, 0.735230744, 3.28579688e-08, 1, -7.70511051e-08, -0.735230744, 7.63847297e-08, 0.677816927)
        wait(0.25)game.Players:Chat("tp "..v.Name.." me")
    end
    wait(0.5)
    for i,v in pairs(GetPlayers(args[2])) do
        chr.HumanoidRootPart.CFrame = CFrame.new(151.167755, 14, -76.1952133, -0.709251344, -1.77910238e-08, -0.704955637, -4.14884234e-08, 1, 1.65041545e-08, 0.704955637, 4.09530934e-08, -0.709251344)
        wait(0.25)game.Players:Chat("tp "..v.Name.." me")
    end
end

Connections.arena = workspace.Terrain["_Game"].Folder.ChildAdded:Connect(function(part)
    if part.Size == Vector3.new(10,2.5,10) or part.Size == Vector3.new(1,5,1) or part.Size == Vector3.new(1, 1, 9) then
        local localIndex = partIndex
        partIndex=partIndex+1
        if partIndex > 25 then teleportPeopleYes() Connections.arena:Disconnect() end
        spawn(function()
            while true do game:GetService("RunService").Heartbeat:Wait() if isnetworkowner(part) then
                part.Velocity = Vector3.new(-30,0,0)
                part.CanCollide = false
                part.CFrame = indexPosition[localIndex] else chr.HumanoidRootPart.CFrame = part.CFrame end
            end
        end)
    end
end)

for i=1,9 do
    game.Players:Chat("part/10/2.5/10")
    wait(0.5)
end
wait(0.5)
for i=1,4 do
    game.Players:Chat("part/1/5/1")
    wait(0.5)
end
wait(0.5)
for i=1,12 do
    game.Players:Chat("part/1/1/9")
    wait(0.5)
end
wait()
else
    GUI:SendMessage("ii' s St upid Ad min", "This command does not work without Person's Admin.")
end
end)

addCommand("stopraid",{},function()
    Loops.raid = false
end)

addCommand("regen",{},function()
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
end)

addCommand("fixregen",{},function()
    moveObject(game:GetService("Workspace").Terrain["_Game"].Admin.Regen,CFrame.new(-7.16500044, 5.42999268, 91.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0))
end)

addCommand("fixadmin",{},function()
    local adminPadCFrames = {CFrame.new(-40.7649879, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0),CFrame.new(-36.7649803, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0),CFrame.new(-32.7649765, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0),CFrame.new(-20.7649632, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0),CFrame.new(-44.7649994, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0),CFrame.new(-12.7649641, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0),CFrame.new(-28.7649689, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0),CFrame.new(-16.7649612, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0),CFrame.new(-24.764967, 1.92999983, 91.8430023, 0, 0, -1, 0, 1, 0, 1, 0, 0)}
    for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
        moveObject(v.Head,adminPadCFrames[i]*CFrame.new(0,4,0))
        wait(0.25)
    end
end)

addCommand("fixpads",{},function()
    runCommand(prefix.."fixadmin",{})
end)

addCommand("fixbaseplate",{},function()
    moveObject(workspace.Terrain["_Game"].Workspace.Baseplate,CFrame.new(-501, 0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end)

addCommand("autoadmin",{},function()
    Loops.autoadmin = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
            if v.Name ~= plr.Name.."'s admin" then
                firetouchinterest(chr.Head,v.Head,0)firetouchinterest(chr.Head,v.Head,1)
            end
        end
    until not Loops.autoadmin
end)

addCommand("dumbsound",{"player"},function(args)
    for i,v in pairs(GetPlayers(args[1])) do
        game.Players:Chat("speed "..v.Name.." 0")
        game.Players:Chat("music 131453190")
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3) * CFrame.Angles(0,math.rad(180),0)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"Don't believe me?","All"}))
        wait(0.9)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"Here,","All"}))
        wait(0.6)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"I'll put you on.","All"}))
        wait(0.6)
        game.Players:Chat("gear me 212641536")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
        boomba = game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
        boomba.Parent = game.Players.LocalPlayer.Character
        wait(1)
        boomba:Destroy()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"That's you!","All"}))
        game.Players:Chat("/e point")
        wait(0.9)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({"That's how dumb you sound!","All"}))
        wait(1)
        game.Players:Chat("music nan")
        game.Players:Chat("speed "..v.Name.." 16")
    end
end)

addCommand("smack",{"player"},function(args)
    for i,v in pairs(GetPlayers(args[1])) do
        game.Players:Chat("music 5886215922")
    	game.Players:Chat("speed "..v.Name.." 0")
    	game.Players:Chat("tp "..v.Name.." me")
    	spawn(function()
    	    wait(0.8)
    		game.Players:Chat("/e point")
    		game.Players:Chat("fling "..v.Name)
    	end)
    	wait(1.45)
    	game.Players:Chat("music nan")
	end
end)

addCommand("unautoadmin",{},function()
    Loops.autoadmin = false
end)

addCommand("loopgrab",{},function()
    runCommand(prefix.."autoadmin",{})
end)

addCommand("unloopgrab",{},function()
    runCommand(prefix.."unautoadmin",{})
end)

addCommand("lg",{},function()
    runCommand(prefix.."autoadmin",{})
end)

addCommand("unlg",{},function()
    runCommand(prefix.."unautoadmin",{})
end)

addCommand("perm",{},function()
    Loops.perm = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        padNames = {}
        for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
            table.insert(padNames,v.Name)
        end
        if not table.find(padNames,game.Players.LocalPlayer.Name.."'s admin") then
            if table.find(padNames,"Touch to get admin") then
                for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
                    if v.Name == "Touch to get admin" then
                        firetouchinterest(chr.Head,v.Head,0)firetouchinterest(chr.Head,v.Head,1)
                        break
                    end
                end
            else
                
            end
        end
    until not Loops.perm
end)

addCommand("unperm",{},function()
    Loops.perm = false
end)

addCommand("noperm",{},function()
    runCommand(prefix.."unperm",{})
end)

addCommand("noadmin",{},function()
    Loops.noadmin = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
            if v.Name ~= "Touch to get admin" then
                game.Players:Chat("respawn "..v.Name:split("'s admin")[1])
                fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
            end
        end
    until not Loops.noadmin
end)

addCommand("antiadmin",{},function()
    runCommand(prefix.."noadmin",{})
end)

addCommand("unnoadmin",{},function()
    Loops.noadmin = false
end)

addCommand("unantiadmin",{},function()
    runCommand(prefix.."unnoadmin",{})
end)

addCommand("adminprotect",{},function()
    Loops.adminprotect = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        pcall(function()
        local PadNames = {}
        for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
            if table.find(PadNames,v.Name) then
                local vname = v.Name
                v.Name = "stupid holder name so my script doesn't run the same thing 500 times"
                fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
                game.Players:Chat("respawn "..game.Players[vname:split("'s")[1]].Name)
                spawn(function()
                    wait(0.3)
                    GUI:SendMessage("ii' s St upid Ad min", "Please only grab a singular admin pad, "..game.Players[vname:split("'s")[1]].DisplayName..".")
                end)
            else
                if v.Name ~= "Touch to get admin" then
                    table.insert(PadNames,v.Name)
                end
            end
        end
        end)
    until not Loops.adminprotect
end)

addCommand("unadminprotect",{},function()
    Loops.adminprotect = false
end)

addCommand("gianticeblock",{},function()
    chr.HumanoidRootPart.CFrame = chr.HumanoidRootPart.CFrame*CFrame.new(0,-40,0)
    wait(0.25)
    game.Players:Chat("invisible me")
    wait()
    game.Players:Chat("freeze me")
    wait()
    game.Players:Chat("size me 10")
    wait()
    game.Players:Chat("clone me")
    wait()
    game.Players:Chat("respawn me")
end)

addCommand("dummy",{},function()
    local antiNameCache = Loops.antiname
if antiNameCache then Loops.antiname = false end
local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players:Chat("char me 4463601211")
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=pos
game.Players:Chat("face me 8560971")
game.Players:Chat("unpants me")
repeat wait() until not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Pants")
wait(0.1)
game.Players:Chat("name me Test Character")repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Test Character")
game.Players:Chat("clone me")wait()
game.Players:Chat("unchar me")
wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=pos
if antiNameCache then spawn(function() runCommand(prefix.."antiname",{}) end) end
end)

addCommand("testdummy",{},function()
    runCommand(prefix.."dummy",{})
end)

addCommand("holdplayer",{"player"},function(args)
    local Player = GetPlayers(args[1])
for i,v in pairs(Player) do
    game.Players:Chat("speed "..v.Name.." 0")
    game.Players:Chat("freeze "..v.Name)
    game.Players:Chat("unfreeze "..v.Name)
    repeat wait() until v.Character:FindFirstChild("ice")
    v.Character.ice:Destroy()
    game.Players:Chat("gear me 74385399")
    repeat wait() until plr.Backpack:FindFirstChild("RemoteExplosiveDetonator")
    local Detonator = plr.Backpack:FindFirstChild("RemoteExplosiveDetonator")
    Detonator.Parent = chr
    plr.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(-0.5,0,1.5)
    wait(0.2)
    local A_1 = "Activate"
    local A_2 = v.Character.HumanoidRootPart.Position
    Detonator.RemoteEvent:FireServer(A_1, A_2)
    wait(0.3)
    Detonator:Destroy()
    game.Players:Chat("removetools me")
    game.Players:Chat("gear me 22787248")
    repeat wait() until plr.Backpack:FindFirstChild("Watermelon")
    plr.Backpack.Watermelon.Parent = chr
end
end)

addCommand("weldrightarm",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("speed "..v.Name.." 0")
        game.Players:Chat("freeze "..v.Name)
        game.Players:Chat("unfreeze "..v.Name)
        repeat wait() until v.Character:FindFirstChild("ice")
        v.Character.ice:Destroy()
        game.Players:Chat("gear me 74385399")
        repeat wait() until plr.Backpack:FindFirstChild("RemoteExplosiveDetonator")
        local Detonator = plr.Backpack:FindFirstChild("RemoteExplosiveDetonator")
        Detonator.Parent = chr
        plr.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,1.5)
        wait(0.2)
        local A_1 = "Activate"
        local A_2 = v.Character.HumanoidRootPart.Position
        Detonator.RemoteEvent:FireServer(A_1, A_2)
        wait(0.3)
    end
end)

addCommand("weldtorso",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("speed "..v.Name.." 0")
        game.Players:Chat("freeze "..v.Name)
        game.Players:Chat("unfreeze "..v.Name)
        repeat wait() until v.Character:FindFirstChild("ice")
        v.Character.ice:Destroy()
        game.Players:Chat("gear me 74385399")
        repeat wait() until plr.Backpack:FindFirstChild("RemoteExplosiveDetonator")
        local Detonator = plr.Backpack:FindFirstChild("RemoteExplosiveDetonator")
        Detonator.Parent = chr
        plr.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(-1.5,0,1.5)
        wait(0.2)
        local A_1 = "Activate"
        local A_2 = v.Character.HumanoidRootPart.Position
        Detonator.RemoteEvent:FireServer(A_1, A_2)
        wait(0.3)
    end
end)

addCommand("weldleftarm",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("speed "..v.Name.." 0")
        game.Players:Chat("freeze "..v.Name)
        game.Players:Chat("unfreeze "..v.Name)
        repeat wait() until v.Character:FindFirstChild("ice")
        v.Character.ice:Destroy()
        game.Players:Chat("gear me 74385399")
        repeat wait() until plr.Backpack:FindFirstChild("RemoteExplosiveDetonator")
        local Detonator = plr.Backpack:FindFirstChild("RemoteExplosiveDetonator")
        Detonator.Parent = chr
        plr.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(-2.5,0,1.5)
        wait(0.2)
        local A_1 = "Activate"
        local A_2 = v.Character.HumanoidRootPart.Position
        Detonator.RemoteEvent:FireServer(A_1, A_2)
        wait(0.3)
    end
end)

addCommand("stopscript",{},function()
    spawn(function()
        if game.Chat:FindFirstChild("Obby") then runCommand(prefix.."localaddobby",{}) end
    end)
    for i,v in pairs(Connections) do v:Disconnect() end
    for i,v in pairs(Toolbans) do v:Disconnect() end
    for i,v in pairs(Loops) do Loops[i]=false end
    GUI:SendMessage("ii' s St upid Ad min", "Successfully stopped.")
end)

addCommand("naked",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        if v and v.Character and v.Character.Head then
            game.Players:Chat("paint "..v.Name.." "..v.Character.Head.BrickColor.Name)
        end
    end
end)

addCommand("nude",{"player"},function(args)
    runCommand(prefix.."naked",args)
end)

addCommand("femify",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("char "..v.Name.." 31342830")
        repeat wait() until v and v.Character and v.Character:FindFirstChild("Ultra-Fabulous Hair")
        wait(0.3)
        game.Players:Chat("removehats "..v.Name)
        wait()
        game.Players:Chat("paint "..v.Name.." Institutional white")
        wait()
        game.Players:Chat("hat "..v.Name.." 7141674388")
        wait()
        game.Players:Chat("hat "..v.Name.." 7033871971")
        wait()
        game.Players:Chat("shirt "..v.Name.." 5933990311")
        wait()
        game.Players:Chat("pants "..v.Name.." 7219538593")
        wait()
    end
end)

addCommand("furrify",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("char "..v.Name.." 18")
        wait(0.5)
        game.Players:Chat("paint "..v.Name.." Institutional white")
        wait()
        game.Players:Chat("hat "..v.Name.." 10563319994")
        wait()
        game.Players:Chat("hat "..v.Name.." 12578728695")
        wait()
        game.Players:Chat("shirt "..v.Name.." 10571467676")
        wait()
        game.Players:Chat("pants "..v.Name.." 10571468508")
        wait()
    end
end)

addCommand("noobify",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("char "..v.Name.." 18")
        wait()
    end
end)

addCommand("rejoin",{},function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.jobId)
end)

addCommand("serverhop",{},function()
    local function u()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	else
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
	end
	u()
	game:GetService("TeleportService").TeleportInitFailed:Connect(function() u() end)
end)

addCommand("musiclock",{"sound-id"},function(args)
    local soundlock = tonumber(args[1])

local origsound = soundlock
soundlock="http://www.roblox.com/asset/?id="..tostring(soundlock)
Loops.musiclock = true
while wait(0.1) do if not Loops.musiclock then break end
    if workspace.Terrain["_Game"].Folder:FindFirstChild("Sound") then
        local music = workspace.Terrain["_Game"].Folder:FindFirstChild("Sound")
        if music.SoundId ~= soundlock then
            game.Players:Chat("music "..tostring(origsound))
        end
        if music.Playing == false then
           music:Play() 
        end
    else
        game.Players:Chat("music "..tostring(origsound))
    end
end
end)

addCommand("removedisplaynames",{},function()
    local function characterAdded(charass)
        spawn(function()
            repeat wait() until charass and charass.Humanoid
            charass.Humanoid.DisplayName = charass.Humanoid.DisplayName.."\n(@"..charass.Name..")"
        end)
    end
    for _,v in pairs(game.Players:GetChildren()) do
        pcall(function()
        v.DisplayName = v.DisplayName.." (@"..v.Name..")"
        if v.Character and v.Character.Parent ~= nil then
            characterAdded(v.Character)
        end
        Connections["RDN"..v.Name]=v.CharacterAdded:Connect(characterAdded)
        end)
    end
    Connections.removedisplaynames = game.Players.PlayerAdded:Connect(function(player) pcall(function()
    player.DisplayName = player.DisplayName.." (@"..player.Name..")"
    if player.Character and player.Character.Parent ~= nil then
        characterAdded(player.Character)
    end
    Connections["RDN"..player.Name]=player.CharacterAdded:Connect(characterAdded)
    end) end)
end)

addCommand("fixdisplaynames",{},function()
    Connections.removedisplaynames:Disconnect()
    for i,v in pairs(Connections) do
        if i:sub(1,3)=="RDN" then Connections[i]:Disconnect() end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
        v.DisplayName = v.DisplayName:split(" ")[1]
        pcall(function()
            if v and v.Character and v.Character.Parent ~= nil and v.Character.Humanoid then
                v.Character.Humanoid.DisplayName = v.DisplayName
            end
        end)
    end
end)

addCommand("colorall",{"r","g","b"},function(args)
    local Paint = GetPaint()
		for i,v in pairs(game.Workspace:GetDescendants()) do
				if v:IsA("Part") then
				    spawn(function()
				        Paint:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart",{
                            ["Part"] = v,
                            ["Color"] = Color3.fromRGB(tonumber(args[1]),tonumber(args[2]),tonumber(args[3]))
                        })
					end)
				end
		end
end)

addCommand("colorallrandom",{},function()
    local Paint = GetPaint()
		for i,v in pairs(game.Workspace:GetDescendants()) do
				if v:IsA("Part") then
				    spawn(function()
				        Paint:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart",{
                            ["Part"] = v,
                            ["Color"] = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
                        })
					end)
				end
		end
end)

addCommand("goldall",{},function()
    local Bloxy = nil
    if game.Players.LocalPlayer.Backpack:FindFirstChild("2017BloxyAward") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("2017BloxyAward")
        tool.Parent = game.Players.LocalPlayer.Character
        Bloxy = tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("2017BloxyAward") then
        Bloxy = tool
    else
        game.Players:Chat("gear me 549914888")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("2017BloxyAward")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("2017BloxyAward")
        tool.Parent = game.Players.LocalPlayer.Character
        Bloxy = tool
    end
    wait(0.2)
    Bloxy:Activate()
    wait(0.2)
    for i,v in pairs(game:GetService("Workspace").Terrain["_Game"]:GetDescendants()) do
        if v:IsA("BasePart") then
            firetouchinterest(v,Bloxy.Handle,0)
            firetouchinterest(v,Bloxy.Handle,1)
        end
    end
end)

addCommand("colorallbrickcolor",{"brickcolor"},function(args)
    local Paint = GetPaint()
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
	function transformToColor3(col)
        local r = col.r
        local g = col.g
        local b = col.b
        return Color3.new(r,g,b);
	end
    for i,v in pairs(game.Workspace:GetDescendants()) do
				if v:IsA("Part") then
				    spawn(function()
				        Paint:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart",{
                            ["Part"] = v,
                            ["Color"] = transformToColor3(BrickColor.new(fixer))
                        })
					end)
				end
		end
end)

addCommand("fixcolor",{},function()
    local ObbyDestroyed = false
    spawn(function()
    if game.Chat:FindFirstChild("Obby") then ObbyDestroyed = true runCommand(prefix.."localaddobby",{}) end
    end)
    spawn(function()
function transformToColor3(col)
	local r = col.r
	local g = col.g
	local b = col.b
	return Color3.new(r,g,b);
end
local v1 = "PaintPart"
		local remote = GetPaint():WaitForChild("Remotes").ServerControls
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
								["Color"] = transformToColor3(BrickColor.new("Institutional white"))
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
end)
wait(1.5)
			if ObbyDestroyed then runCommand(prefix.."localremoveobby",{}) end
end)

addCommand("rapidfiregun",{"bullets"},function(args)
Connections.rapidfiregun = game:GetService("UserInputService").InputBegan:Connect(function(inputa,gp)
if gp then return end
if inputa.UserInputType == Enum.UserInputType.MouseButton1 then
for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me 139578207")
    wait()
end
wait(0.2)
for i,v in pairs(lp.Backpack:GetChildren()) do
    v.Parent = chr
    wait()
    local A_1 = plr:GetMouse().Hit.p
    v.Click:FireServer(A_1)
end
for i=1,tonumber(args[1]) do
    wait(0.1)
end
game.Players:Chat("removetools me")
end
end)
end)

addCommand("unrapidfiregun",{},function()
    Connections.rapidfiregun:Disconnect()
end)

addCommand("discoball",{"amount"},function(args)
    for i=1, tonumber(args[1]) do
        game.Players:Chat("gear me 27858062")
        lp.Backpack:WaitForChild("DancePotion",30)
        local potion = lp.Backpack.DancePotion
        potion.Parent = lp.Character
        potion:Activate()
        wait(0.1)
        game.Players:Chat("reset me")
        wait(0.1)
    end
end)

addCommand("table",{"amount"},function(args)
    for i=1, tonumber(args[1]) do
        game.Players:Chat("gear me 110789105")
lp.Backpack:WaitForChild("RageTable",30)
local tool2 = lp.Backpack["RageTable"]
tool2.Parent = lp.Character
wait(0.1)
tool2:Activate()
wait(0.1)
game.Players:Chat("reset me")
wait(0.1)
    end
end)

addCommand("periastronhell",{"amount"},function(args)
local gears = {"159229806","73829193","108158379","69499437","233520257","99119240","80661504","139577901","93136802","2544549379"}
for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me "..gears[math.random(1,#gears)])
    wait()
end
wait(0.25)
for i,v  in pairs(plr.Backpack:GetChildren()) do
    local staff = v
    v.Parent = chr
end
wait(0.1)
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        local s,f=pcall(function()
        v:WaitForChild("Remote",10):FireServer(Enum.KeyCode.Q)
        end) if  not s then  print(f)end
    end
end
end)

addCommand("spamgear",{"amount","gear"},function(args)
for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me "..args[2])
    wait()
end
wait(0.25)
for i,v  in pairs(plr.Backpack:GetChildren()) do
    local staff = v
    v.Parent = chr
end
wait(0.1)
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        v:Activate()
    end
end
end)

addCommand("spamgear2",{"amount","gear"},function(args)
for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me "..args[2])
    wait()
end
wait(0.25)
for i,v  in pairs(plr.Backpack:GetChildren()) do
    local staff = v
    v.Parent = chr
end
wait(0.1)
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        game:GetService("RunService").RenderStepped:Connect(function()if v.Parent==chr then  v:Activate()end end)
    end
end
end)

addCommand("loudboombox",{"amount","id","range"},function(args)
    for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me 212641536")
    wait()
end
wait(0.1)
for i,v in pairs(plr.Backpack:GetChildren()) do v.GripPos = Vector3.new(math.random(tonumber(args[3])*-2,args[3]),math.random(tonumber(args[3])*-2,args[3]),math.random(tonumber(args[3])*-2,args[3])) v.Parent=chr end
wait()
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        pcall(function()
            v.Remote:FireServer("PlaySong",args[2])
        end)
    end
end
end)

addCommand("boombox",{},function()
    game.Players:Chat("gear me 212641536")
end)

addCommand("sillyguitar",{"amount","song","range"},function(args)
    for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me 57229371")
    wait()
end
wait(0.1)
for i,v in pairs(plr.Backpack:GetChildren()) do v.GripPos = Vector3.new(math.random(tonumber(args[3])*-2,args[3]),math.random(tonumber(args[3])*-2,args[3]),math.random(tonumber(args[3])*-2,args[3])) v.Parent=chr end
wait()
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        game:GetService("RunService").RenderStepped:Connect(function()
            if v and v.Parent == game.Players.LocalPlayer.Character then
                if args[2] ~= "all" then
                if not v.Handle["Song"..args[2]].IsPlaying then v.Handle["Song"..args[2]]:Play() end
                else
                    for i,xz in pairs(v.Handle:GetChildren()) do if xz:IsA("Sound") then if not xz.IsPlaying then xz:Play() end end end
                end
            end
        end)
    end
end
end)

addCommand("nuke",{"amount","range"},function(args)
    for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me 88885539")
    wait()
end
wait(0.1)
for i,v in pairs(plr.Backpack:GetChildren()) do v.Parent=chr end
wait(0.1)
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        pcall(function()
            v.OnMouseClick:FireServer(chr.HumanoidRootPart.Position+Vector3.new(math.random(args[2]*-1,args[2]),0,math.random(args[2]*-1,args[2])))
        end)
    end
end
end)

addCommand("spawnzombies",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me 26421972")
        wait()
    end
    wait(0.25)
    for i,v  in pairs(plr.Backpack:GetChildren()) do
        local staff = v
        v.Parent = chr
    end
    wait(0.1)
    for i,v  in pairs(chr:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end)

addCommand("alpaca",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me 292969139")
        wait()
    end
    wait(0.25)
    for i,v  in pairs(plr.Backpack:GetChildren()) do
        local staff = v
        v.Parent = chr
    end
    wait(0.1)
    for i,v  in pairs(chr:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end)

addCommand("mute",{"player"},function(args)
    Loops.mute = true
    repeat 
    for i,v in pairs(GetPlayers(args[1])) do
        game.Players:Chat("gear "..v.Name.." 253519495")
    end
    until not Loops.mute
end)

addCommand("unmute",{},function()
    Loops.mute = false
end)

addCommand("cloneai",{"amount"},function(args)
    game.Players:Chat("pm me [ii 's St upid Ad min]\nCredits to Reaper for the command idea.")
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me 72644644")
        wait()
    end
    wait(0.25)
    for i,v  in pairs(plr.Backpack:GetChildren()) do
        local staff = v
        v.Parent = chr
    end
    wait(0.1)
    for i,v  in pairs(chr:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end)

addCommand("mozart",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me 113299590")
        wait()
    end
    wait(0.25)
    for i,v  in pairs(plr.Backpack:GetChildren()) do
        local staff = v
        v.Parent = chr
    end
    wait(0.1)
    for i,v  in pairs(chr:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end)

addCommand("bassdrop",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me 152233094")
    wait()
end
wait(0.25)
   for i,v  in pairs(plr.Backpack:GetChildren()) do
    local staff = v
    v.Parent = chr
end
wait(0.1)
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        game:GetService("RunService").RenderStepped:Connect(function()if v.Parent==chr then  v:Activate()end end)
    end
end
end)

addCommand("coolstoryman",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me 119101643")
    wait()
end
wait(0.25)
   for i,v  in pairs(plr.Backpack:GetChildren()) do
    local staff = v
    v.Parent = chr
end
wait(0.1)
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        game:GetService("RunService").RenderStepped:Connect(function()if v.Parent==chr then  v:Activate()end end)
    end
end
end)

addCommand("bananapeel",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me 29100449")
        wait()
    end
    wait(0.25)
    for i,v  in pairs(plr.Backpack:GetChildren()) do
        local staff = v
        v.Parent = chr
    end
    wait(0.1)
    for i,v  in pairs(chr:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end)

addCommand("tripmine",{"amount"},function(args)
    for i=1, tonumber(args[1]) do
        game.Players:Chat("gear me 11999247")
        lp.Backpack:WaitForChild("SubspaceTripmine",30)
        local potion = lp.Backpack.SubspaceTripmine
        potion.Parent = lp.Character
        potion:Activate()
        wait(0.1)
        game.Players:Chat("reset me")
        wait(0.1)
    end
end)

addCommand("spikespam",{"amount"},function(args)
    for i=1,tonumber(args[1])do
game.Players:Chat("gear me 59848474")
wait()
end
wait(0.25)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    v.Parent = game.Players.LocalPlayer.Character
end
wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") then
        v.ClientInput:FireServer(Enum.KeyCode.E)
        wait()
        v:Activate()
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(360/tonumber(args[1])),0)
    end
end
end)

addCommand("spawnjail",{},function()
        game.Players:Chat("jail me")
        wait(0.2)
        chr.HumanoidRootPart.CFrame = chr.HumanoidRootPart.CFrame*CFrame.new(0,4,0)
end)

addCommand("antiabuse",{},function()
    Loops.antiabuse = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
        if chr and chr.Parent ~= workspace then
            game.Players:Chat("unpunish me")
        end
        if lp.PlayerGui:FindFirstChild("EFFECTGUIBLIND") then
            lp.PlayerGui:FindFirstChild("EFFECTGUIBLIND"):Destroy()
            game.Players:Chat("unblind me")
        end
        if chr and chr.Humanoid and chr.Humanoid.Health <=0 then
            game.Players:Chat("reset me")
        end
        if chr and chr:FindFirstChild("ice") then
            game.Players:Chat("unfreeze me")
            chr:FindFirstChild("ice"):Destroy()
            for i,v in pairs(chr:GetDescendants()) do
                if v:IsA("BasePart") then v.Anchored = false end
            end
        end
        if chr and chr:FindFirstChild("Addon") then
            chr:FindFirstChild("addon"):Destroy()
            game.Players:Chat("reset me")
        end
        if chr and chr.Head and chr.Torso and game.Players.LocalPlayer:DistanceFromCharacter(game.Players.LocalPlayer.Character.Torso.Position) == 0 then
            game.Players:Chat("reset me")
        end
        if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.Name.."'s jail") then
            game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.Name.."'s jail"):Destroy()
            game.Players:Chat("unjail me")
        end
        if chr and chr.Torso and chr.Torso:FindFirstChild("SPINNER") then
            chr.Torso:FindFirstChild("SPINNER"):Destroy()
            game.Players:Chat("unspin me")
        end
        if plr.PlayerGui:FindFirstChild("NoClip") then
            plr.PlayerGui:FindFirstChild("NoClip"):Destroy()
            if chr and chr.Torso then chr.Torso.Anchored = false end
            if chr and chr.Humanoid then chr.Humanoid.PlatformStand = false end
            game.Players:Chat("clip me")
        end
    end)until not Loops.antiabuse
end)

addCommand("antikick",{},function()
    Loops.antikick = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
    if chr and chr:FindFirstChild("BlueBucket") then
        chr:FindFirstChild("BlueBucket"):Destroy()
        game.Players:Chat("removetools me")
    end
    if plr and plr.Backpack and plr.Backpack:FindFirstChild("BlueBucket") then
        plr.Backpack:FindFirstChild("BlueBucket"):Destroy()
        game.Players:Chat("removetools me")
    end
    if chr and chr:FindFirstChild("HotPotato") then
        chr:FindFirstChild("HotPotato"):Destroy()
        game.Players:Chat("removetools me")
    end
    if plr and plr.Backpack and plr.Backpack:FindFirstChild("HotPotato") then
        plr.Backpack:FindFirstChild("HotPotato"):Destroy()
        game.Players:Chat("removetools me")
    end
    end)until not Loops.antikick
end)

addCommand("anticrash",{},function()
    runCommand(prefix.."antikick",{})
end)

addCommand("unanticrash",{},function()
    runCommand(prefix.."unantikick",{})
end)

addCommand("unantikick",{},function()
    Loops.antikick = false
end)

addCommand("antiservercrash",{},function()
    Loops.antiservercrash = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
    for i,v in pairs(game.Players:GetPlayers()) do
        spawn(function()
            if v.Character:FindFirstChild("VampireVanquisher") then v.Character:FindFirstChild("VampireVanquisher"):Destroy() game.Players:Chat("removetools "..v.Name)game.Players:Chat("unsize "..v.Name)
                GUI:SendMessage("ii' s St upid Ad min", "Please don't crash the server, "..v.DisplayName..".")
                end
        end)
        spawn(function()
            if v.Backpack:FindFirstChild("VampireVanquisher") then v.Backpack:FindFirstChild("VampireVanquisher"):Destroy() game.Players:Chat("removetools "..v.Name)game.Players:Chat("unsize "..v.Name)
                GUI:SendMessage("ii' s St upid Ad min", "Please don't crash the server, "..v.DisplayName..".")
                end
        end)
    end
    end)until not Loops.antiservercrash
end)

addCommand("unantiservercrash",{},function()
    Loops.antiservercrash = false
end)

addCommand("antitool",{},function()
    Loops.antitool = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
        if chr:FindFirstChildOfClass("Tool") then
            chr:FindFirstChildOfClass("Tool"):Destroy()
            game.Players:Chat("removetools me")
        end
        if plr.Backpack:FindFirstChildOfClass("Tool") then
            plr.Backpack:ClearAllChildren()
            game.Players:Chat("removetools me")
        end
    end) until not Loops.antitool
end)

addCommand("unantitool",{},function()
    Loops.antitool = false
end)

addCommand("unantiabuse",{},function()
    Loops.antiabuse = false
end)

addCommand("antivoid",{},function()
    Loops.antivoid = true
    repeat game:GetService("RunService").RenderStepped:Wait()pcall(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < -7 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,5,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,0,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
            end
        end end)
    until not Loops.antivoid
end)

addCommand("unantivoid",{},function()
    Loops.antivoid = false
end)

addCommand("antiname",{},function()
    Loops.antiname = true
    repeat wait() 
        if chr and chr:FindFirstChildOfClass("Model") then
            game.Players:Chat("unname me")
        end
    until not Loops.antiname
end)

addCommand("unantiname",{},function()
    Loops.antiname = false
end)

addCommand("antitripmine",{},function()
    Loops.antitripmine = true
    repeat wait() 
        if workspace:FindFirstChild("SubspaceTripmine") then
            game.Players:Chat("clr")
        end
    until not Loops.antitripmine
end)

addCommand("unantitripmine",{},function()
    Loops.antitripmine = false
end)

addCommand("antieggbomb",{},function()
    Loops.antieggbomb = true
    repeat wait() 
        if workspace:FindFirstChild("EggBomb") then
            game.Players:Chat("clr")
        end
    until not Loops.antieggbomb
end)

addCommand("unantieggbomb",{},function()
    Loops.antieggbomb = false
end)

addCommand("spamcommands",{"delay","command"},function(args)
                Loops.spamcommand = true
                repeat
                    local message = args[2]
                for i=3, #args do
                        if args[i]=="<%RANDOMSTRING%>" then
                            local asuhdyuasd=""
                            for i=1,25 do
                            asuhdyuasd=asuhdyuasd..lettersTableFormat[math.random(#lettersTableFormat)]
                            end
                            
                            message = message.." "..asuhdyuasd
                        elseif args[i]==[[\n]] then
                        message = message.." ".."\n"
                        else
                        message = message.." "..args[i]
                        end
                end
                    for i,v in pairs(message:split("|")) do
                        game.Players:Chat(v)
                        wait(tonumber(args[1]))
                    end
until not Loops.spamcommand
end)

addCommand("bind",{"key","command"},function(args)
                Connections["_Binding"..tostring(math.random(0,99999))] =game:GetService("UserInputService").InputBegan:Connect(function(Key,GP)
                    if not GP and Key.KeyCode == Enum.KeyCode[args[1]] then
                    local message = args[2]
                for i=3, #args do
                        if args[i]=="<%RANDOMSTRING%>" then
                            local asuhdyuasd=""
                            for i=1,25 do
                            asuhdyuasd=asuhdyuasd..lettersTableFormat[math.random(#lettersTableFormat)]
                            end
                            
                            message = message.." "..asuhdyuasd
                        elseif args[i]==[[\n]] then
                        message = message.." ".."\n"
                        elseif args[i]=="<%MOUSETARGET%>" then
                            local MouseTarget = plr:GetMouse().Target
                            MouseTarget = MouseTarget.Parent
                            if MouseTarget:IsA("Accessory") or MouseTarget:IsA("Hat") then
                                MouseTarget = MouseTarget.Parent
                            end
                            if MouseTarget:FindFirstChild("Humanoid") and not string.find(MouseTarget.Name," ") then
                                message = message.." "..MouseTarget.Name
                            else
                                message = message.." ".."COULDNOTFINDPLAYER"
                            end
                        else
                        message = message.." "..args[i]
                        end
                end
                    for i,v in pairs(message:split("|")) do
                        game.Players:Chat(v)
                    end
                end
end)
end)

addCommand("unbind",{},function()
    for i,v in pairs(Connections) do if i:sub(1,8) == "_Binding" then v:Disconnect() end end
end)

addCommand("tptomouse",{},function()
    chr.HumanoidRootPart.CFrame = plr:GetMouse().Hit
end)

addCommand("tptohouse",{},function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28.3467445, 8.22999954, 73.5216293)
end)

addCommand("tptoregen",{},function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Regen.CFrame * CFrame.new(0,2.5,0)
end)

addCommand("getusername",{"player (optional silentmode)"},function(args)
    for i,v in pairs(GetPlayers(args[1])) do
        setclipboard(v.Name)
        if not args[2] then
            GUI:SendMessage("ii' s St upid Ad min", "The selected player's username has been copied to the clipboard.")
        end
    end
end)

addCommand("getdisplayname",{"player (optional silentmode)"},function(args)
    for i,v in pairs(GetPlayers(args[1])) do
        setclipboard(v.DisplayName)
        if not args[2] then
            GUI:SendMessage("ii' s St upid Ad min", "The selected player's display name has been copied to the clipboard.")
        end
    end
end)

addCommand("spamcommand",{"delay","command"},function(args)
    runCommand(prefix.."spamcommands",args)
end)

addCommand("unspamcommands",{},function()
    Loops.spamcommand = false
end)

addCommand("unspamcommand",{},function()
    runCommand(prefix.."unspamcommands",{})
end)

addCommand("rainbowfog",{"range"},function(args)
    local Range = tonumber(args[1])
    local RainbowValue = 0
    
    Loops.rainbowfog=true
    repeat wait(0.05)
        RainbowValue = RainbowValue + 1/250
    if RainbowValue >= 1 then
        RainbowValue = 0
    end
        if game.Lighting.FogEnd ~= Range then
            game.Players:Chat("fogend "..tostring(Range))
        end
        game.Players:Chat("fogcolor "..tostring(math.floor(Color3.fromHSV(RainbowValue,1,1).R*255)).." "..tostring(math.floor(Color3.fromHSV(RainbowValue,1,1).G*255)).." "..tostring(math.floor(Color3.fromHSV(RainbowValue,1,1).B*255)))
    until not Loops.rainbowfog
end)

addCommand("rainbowbaseplate",{},function()
    local RainbowValue = 0
    
    local Paint = GetPaint()
    Loops.rainbowbaseplate=true
    repeat wait()
        local s,f=pcall(function()
        RainbowValue = RainbowValue + 1/50
    if RainbowValue >= 1 then
        RainbowValue = 0
    end
        if not chr:FindFirstChild("PaintBucket") then Paint = GetPaint() end
        Paint:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart",{
                            ["Part"] = game:GetService("Workspace").Terrain["_Game"].Workspace.Baseplate,
                            ["Color"] = Color3.fromHSV(RainbowValue,1,1)
                        })
                    end)until not Loops.rainbowbaseplate
end)

addCommand("unrainbowbaseplate",{},function()
    Loops.rainbowbaseplate = false
end)

addCommand("visualizer",{"r","g","b","customcolor","size","power","fadeamount (optional musicid)"},function(args)
    Loops.visualizer=true
    local RainbowIsOn = false
    local RainbowValue = 0
    if args[4] == "rainbow" then
        RainbowIsOn = true
    end
    local colorthingy = 0
    repeat wait(0.05)
        RainbowValue = RainbowValue + 1/250
        if RainbowValue >= 1 then
            RainbowValue = 0
        end
        if game.Lighting.FogStart ~= (800-tonumber(args[7])) then
            game.Players:Chat("fogstart "..(tostring(800-tonumber(args[7]))))
        end
        if RainbowIsOn then
            colorthingy = colorthingy + 1
            if colorthingy == 3 then
                colorthingy = 0
            game.Players:Chat("fogcolor "..tostring(math.floor(Color3.fromHSV(RainbowValue,1,1).R*255)).." "..tostring(math.floor(Color3.fromHSV(RainbowValue,1,1).G*255)).." "..tostring(math.floor(Color3.fromHSV(RainbowValue,1,1).B*255)))
        end
        elseif args[4] == "random" then
            colorthingy = colorthingy + 1
            if colorthingy == 3 then
                colorthingy = 0
            game.Players:Chat("fogcolor "..tostring(math.random(0,255)).." "..tostring(math.random(0,255)).." "..tostring(math.random(0,255)))
            end
        else
            if args[1] ~= "nil" and args[2] ~= "nil" and args[3] ~= "nil" then
                if game.Lighting.FogColor ~= Color3.fromRGB(tonumber(args[1]),tonumber(args[2]),tonumber(args[3])) then
                    game.Players:Chat("fogcolor "..tostring(args[1]).." "..tostring(args[2]).." "..tostring(args[3]))
                end
            end
        end
        if args[8] and game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
            soundlock="http://www.roblox.com/asset/?id="..tostring(args[8])
            if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound").SoundId ~= soundlock then
                game.Players:Chat("music "..args[8])
            end
            if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound").Playing == false then
                game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound"):Play()
            end
        else if args[8] then game.Players:Chat("music "..args[8]) end
        end
        if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
            game.Players:Chat("fogend "..tostring((game:GetService("Workspace").Terrain["_Game"].Folder.Sound.PlaybackLoudness/tonumber(args[6])) + tonumber(args[5])))
        else
            game.Players:Chat("fogend "..200)
        end
    until not Loops.visualizer
end)

addCommand("unrainbowfog",{},function()
    Loops.rainbowfog=false
end)

addCommand("unvisualizer",{},function()
    Loops.visualizer=false
end)

addCommand("altpunish",{"player"},function(args)
    local People = GetPlayers(args[1])
    for i,v in pairs(People) do
        game.Players:Chat("speed "..v.Name.." inf")
    end
end)

addCommand("altpunish2",{"player"},function(args)
    local People = GetPlayers(args[1])
    for i,v in pairs(People) do
        game.Players:Chat("setgrav "..v.Name.." -9e9")
    end
end)

addCommand("altdisco",{},function()
    local s,f=pcall(function() --  0.5 "..prefix.."colorallbrickcolor Bright red|"..prefix.."colorallbrickcolor Bright yellow|"..prefix.."colorallbrickcolor Bright green|"..prefix.."colorallbrickcolor Bright blue"
    runCommand(prefix.."spamcommand",{"0.5",prefix.."colorallbrickcolor","Bright red|"..prefix.."colorallbrickcolor","Bright","yellow|"..prefix.."colorallbrickcolor","Bright","green|"..prefix.."colorallbrickcolor","Bright","blue"})
    end)
end)

addCommand("unaltdisco",{},function()
    runCommand(prefix.."unspamcommand",{})
end)

addCommand("scriptinfo",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("pm "..v.Name.." [ii 's St upid Ad min]\n\nii 's St upid Ad min is a PRIVATE SCRIPT!\nOnly a select few people have access to this script, and that\nmost likely does not include you. There are "..tostring(#commandlist).." commands in\nour script, and the commands can be viewed by running "..prefix.."cmds\nor "..prefix.."altcmds in chat.")
    end
end)

addCommand("attachtool",{},function()
    local btool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
  local SelectionBox = Instance.new("SelectionBox",game.Workspace)
  local hammer = Instance.new("Part")
  hammer.Parent = btool
  hammer.Name = ("Handle")
  hammer.CanCollide = false
  hammer.Anchored = false


  SelectionBox.Name = "oof"
  SelectionBox.LineThickness = 0.05
  SelectionBox.Adornee = nil
  SelectionBox.Color3 = Color3.fromRGB(0,0,255)
  SelectionBox.Visible = false
  btool.Name = "Attach Tool"
  btool.RequiresHandle = false
  local IsEquipped = false
  local Mouse = game.Players.LocalPlayer:GetMouse()
  
  btool.Equipped:connect(function()
   IsEquipped = true
   SelectionBox.Visible = true
   SelectionBox.Adornee = nil
  end)
  
  btool.Unequipped:connect(function()
   IsEquipped = false
   SelectionBox.Visible = false
   SelectionBox.Adornee = nil
  end)
  
  
  btool.Activated:connect(function()
  if IsEquipped then
    btool.Parent = game.Chat
   local ex = Instance.new'Explosion'
   ex.BlastRadius = 0
   ex.Position = Mouse.Target.Position
   ex.Parent = game.Workspace
local target = Mouse.Target
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
game.Chat["Attach Tool"].Parent = plr.Backpack
chr.HumanoidRootPart.CFrame=pos
spawn(function()
    wait(3)
    if game.Chat:FindFirstChild("Attach Tool") then
        game.Chat["Attach Tool"]:Destroy()
    end
end)
   -- to here

  end
end)
  
  while true do
   SelectionBox.Adornee = Mouse.Target or nil
   wait(0.1)
  end
end)

addCommand("deletetool",{},function()
    local btool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
  local SelectionBox = Instance.new("SelectionBox",game.Workspace)
  local hammer = Instance.new("Part")
  hammer.Parent = btool
  hammer.Name = ("Handle")
  hammer.CanCollide = false
  hammer.Anchored = false


  SelectionBox.Name = "oof"
  SelectionBox.LineThickness = 0.05
  SelectionBox.Adornee = nil
  SelectionBox.Color3 = Color3.fromRGB(0,0,255)
  SelectionBox.Visible = false
  btool.Name = "Delete Tool"
  btool.RequiresHandle = false
  local IsEquipped = false
  local Mouse = game.Players.LocalPlayer:GetMouse()
  
  btool.Equipped:connect(function()
   IsEquipped = true
   SelectionBox.Visible = true
   SelectionBox.Adornee = nil
  end)
  
  btool.Unequipped:connect(function()
   IsEquipped = false
   SelectionBox.Visible = false
   SelectionBox.Adornee = nil
  end)
  
  
  btool.Activated:connect(function()
  if IsEquipped then
    btool.Parent = game.Chat
   local ex = Instance.new'Explosion'
   ex.BlastRadius = 0
   ex.Position = Mouse.Target.Position
   ex.Parent = game.Workspace
   local prevcfarchive = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local target = Mouse.Target
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
			repeat wait() until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")
			game.Players:Chat("skydive me")
			wait(0.1)
			game.Players:Chat("respawn me")
			wait(0.25)
game.Chat["Delete Tool"].Parent = plr.Backpack
chr.HumanoidRootPart.CFrame=prevcfarchive
spawn(function()
    wait(3)
    if game.Chat:FindFirstChild("Delete Tool") then
        game.Chat["Delete Tool"]:Destroy()
    end
end)
   -- to here

  end
end)
  
  while true do
   SelectionBox.Adornee = Mouse.Target or nil
   wait(0.1)
  end
end)

addCommand("deletetoolivory",{},function()
    local btool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
  local SelectionBox = Instance.new("SelectionBox",game.Workspace)
  local hammer = Instance.new("Part")
  hammer.Parent = btool
  hammer.Name = ("Handle")
  hammer.CanCollide = false
  hammer.Anchored = false


  SelectionBox.Name = "oof"
  SelectionBox.LineThickness = 0.05
  SelectionBox.Adornee = nil
  SelectionBox.Color3 = Color3.fromRGB(0,0,255)
  SelectionBox.Visible = false
  btool.Name = "Delete Tool"
  btool.RequiresHandle = false
  local IsEquipped = false
  local Mouse = game.Players.LocalPlayer:GetMouse()
  
  btool.Equipped:connect(function()
   IsEquipped = true
   SelectionBox.Visible = true
   SelectionBox.Adornee = nil
  end)
  
  btool.Unequipped:connect(function()
   IsEquipped = false
   SelectionBox.Visible = false
   SelectionBox.Adornee = nil
  end)
  
  
  btool.Activated:connect(function()
  if IsEquipped then
    btool.Parent = game.Chat
   local ex = Instance.new'Explosion'
   ex.BlastRadius = 0
   ex.Position = Mouse.Target.Position
   ex.Parent = game.Workspace
   local prevcfarchive = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local target = Mouse.Target
			moveObject(target,CFrame.new(99999,99999,99999))
			wait(0.5)
			game.Chat["Delete Tool"].Parent = plr.Backpack
chr.HumanoidRootPart.CFrame=prevcfarchive
spawn(function()
    wait(3)
    if game.Chat:FindFirstChild("Delete Tool") then
        game.Chat["Delete Tool"]:Destroy()
    end
end)
   -- to here

  end
end)
  
  while true do
   SelectionBox.Adornee = Mouse.Target or nil
   wait(0.1)
  end
end)

addCommand("run",{"script"},function(args)
    local s,f=pcall(function()
    local fixer = [[local owner = game.Players.LocalPlayer
local player = owner
local localplayer = owner
local lp = owner
local plr = owner
local chr,character,char = owner.Character
local consoleOn = true
game:GetService("RunService").RenderStepped:Connect(function()
    chr=owner.Character
end)
function GetPlayers(jjk)
local boss = lp
local fat = {}
if jjk:lower() == "me" then 
return {boss} 

elseif jjk:lower() == "all" or jjk:lower() == "*" then 
return game:GetService("Players"):GetChildren() 

elseif jjk:lower() == "others" then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= boss.Name then
table.insert(fat,v)
end
end
return fat

elseif jjk:lower() == "random" then
return {game:GetService("Players"):GetChildren()[math.random(1,#game:GetService("Players"):GetChildren())]}

else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.Name:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.DisplayName:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
return fat
end

end
]]
    fixer = fixer..args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    loadstring(fixer)()
    end)if not s then print(f)end
end)

addCommand("give",{"gear-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.."%20"..args[i]
    end
    local request = syn.request({
        Url="https://catalog.roblox.com/v1/search/items/details?Category=11&Subcategory=5&Limit=10&CreatorName=Roblox&Keyword="..fixer,
        Method=GET
    })
    local decode = game:GetService("HttpService"):JSONDecode(request.Body)
    game.Players:Chat("gear me "..tostring(decode["data"][1]["id"]))
end)

addCommand("copygearid",{"gear-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.."%20"..args[i]
    end
    local request = syn.request({
        Url="https://catalog.roblox.com/v1/search/items/details?Category=11&Subcategory=5&Limit=10&CreatorName=Roblox&Keyword="..fixer,
        Method=GET
    })
    local decode = game:GetService("HttpService"):JSONDecode(request.Body)
    setclipboard(tostring(decode["data"][1]["id"]))
end)

addCommand("giverandomgears",{"amount"},function(args)
    local gears = {"121946387","11419319","168141301","15932306","12187348","225921000","127506105","11377306","212296936","253519495","114020480","257810065","10472779","477910063","22960388","147143863","16688968","306971294","99119158","409745306","11452821","46846246","11563251","517827962","170897263","11999247","286526176","223439643","467138029","11453385","467935723","113328094","1402322831","22787248","928914739","16726030","95951330","12848902","16214845","44115926","42321801","52627419","1060280135","106701659","2350122208","1033136271","83021197","1016183873","168143042","1132887630","101106419","172246669","20721924","111876831","928913996","156467855","150366274","168140949","13745494","83021250","21392199","22788134","162857357","1180418251","101078559","28664212","461488745","11450664","116040770","107458429","30393548","13207169","12890798","243790334","21754543","124126871","170903216","57902859","2605965785","32355966","10727852","306971659","163350265","31314966","103358098","12145515","398675172","183355817","15177716","31839337","22596452","2568114215","321582427","295461517","365674685","81847570","119101539","2463674178","88146486","92142799","115377964","108875151","65545955","96669682","98411393","12547976","26421972","16979083","30847779","123234673","430066424","116040789","125859483","65082246","11956382","49491736","2506347092","24346755","89487934","78730532","383608755","1929597345","16722267","319656339","104642566","104642700","147143848","121925044","343586214","517827255","356212933","335132838","416846710","82357123","27494652","192456288","1304339797","236403380","57983532","639345143","92627988","83704169","14719505","168142869","2261167878","125013849","183355892","82357079","1340206957","99119198","168142394","211944997","26014536","2190019650","542755101","26017478","489196923","10758456","287425246","110789105","21440120","29100449","186868758","105289761","336370943","304721834","1241586091","163348575","88143074","73829214","87361806","35366155","34399428","103234612","439988813","1180417820","18474459","2605966484","346687565","30392263","746686384","168141496","1903663829","835780770","55301897","244082303","97161295","163348987","483899693","330296266","123234510","146047188","2569022418","170896941","255800146","15176169","35683911","81847365","15731350","302281291","14131602","29939404","2136391608","15668963","18482570","425121415","139578061","56561570","563288952","450566409","97311482","277955605","3459922232","13477890","118281609","549915884","58574445","19328185","380204314","295460702","218631022","106064469","2350119937","284135286","27858062","21445765","128160832","109583846","39258329","22152195","46360920","257343434","21351465","2463675080","52625744","58574452","29532138","2103276507","47597835","31314931","31839260","30649735","21440056","1117743696","107458461","172248941","163353363","380210977","27245855","34398653","33683368","57229313","30847733","173781053","15470183","542184488","34901961","46132907","154727251","109583822","94333296","142498104","987032734","1074742019","45754061","1829110586","18409191","206136532","122278207","880506541","114020538","16924676","46846115","928805891","1380774367","114687223","99797403","264989911","78367424","2804667002","28671909","112591865","29100543","25974222","226206253","228588651","19111883","189910805","162857391","236443047","44116233","38327125","323192649","10469910","28672001","101110605","32353654","738924664","101078350","20373160","35684857","14864611","58574416","402305186","11885154","18481407","25162389","41457719","31314849","20642023","1258015943","176219131","29345958","21439965","18479966","25158998","48596324","236441643","105189783","1645056094","11419882","99254437","94794774","78005009","2830533679","435116927","15970544","13206887","47871615","57229337","94794833","88143166","106701702","356213494","1929592959","101079008","13206856","183826384","37816777","218634097","327365543","81154592","29099749","1088051376","113299556","44561400","154727487","120749494","83021236","629893424","420161128","80576952","343587237","402304782","99797381","304720496","71037076","66896638","85754656","335086410","32858586","236401511","445150567","2045764727","215448210","42845896","108158439","170903610","63253706","15973059","79446473","2316760298","48159731","88885481","12504077","101191388","103234296","50938746","42845853","602146440","130925426","160189871","106701564","116040807","1230024287","56561593","101078524","151292047","98411325","65979823","754869699","24791472","21392417","53623248","319656563","21802000","1789547756","189756588","18482562","66416602","12902404","84012460","1760406591","157205782","1191128759","30847746","189910262","93136674","208659586","208659734","96095042","80576928","23306097","77443491","14492601","2620524562","233633874","29532089","66426498","158069071","1215515248","47871597","92142841","69964719","83704154","346687267","271017537","74385438","361950795","155662087","18017365","168142620","1258015236","456221232","160198363","346685995","33732371","93136666","1320966824","306163602","190094313","10831489","1360078533","221181437","69499437","215392741","86492467","55917409","92628074","1609498185","147143821","621090617","126719093","99254164","76170471","176087556","160199141","18426536","2620441860","85879465","97932897","49491781","172246820","1001649855","49929724","1304344132","63721711","233520425","2226815033","292969139","98219158","15973049","359244394","53623322","1492225511","24659699","128160929","154727343","97161222","178076749","248285248","610133129","24015579","99254358","91360052","90718350","1708354246","330296114","125013769","478707595","156467963","86494914","498752764","100472084","150366320","94233391","60888225","106701619","146047220","16986649","190094270","113299590","51346336","95951291","130113146","846792499","49929746","1103012605","61459592","129471121","183355732","295460073","62350846","21439991","129471170","95951270","49491716","191261808","147937284","181550181","226206639","68539623","17237675","15470222","176087597","159229806","336371164","59848474","68848741","124126528","176087466","243007180","335085355","12775410","356212121","91294485","420160506","127506324","79446395","563287969","82357101","69567827","73232803","158069180","2544539559","51757158","1402452608","174752245","12187431","63253701","2535102910","99797357","280662667","81330766","287424278","98341183","35293856","21416138","170902990","904534702","104642550","71597072","1132884456","233660801","315617026","315573586","206136361","105351748","413200176","178076831","74385399","59805584","45177979","218631128","1760404984","2445084910","188643628","233520257","66896542","190880295","87361508","37347081","80597060","204095670","54130543","91360028","77443436","553937189","107458531","1536052210","62350883","11115851","70476451","47262951","61916137","170903868","116055112","95258660","15179006","51346471","170896571","56561607","18462637","41457484","903197575","64220933","174752400","160189476","46846024","76170545","69210407","74904396","87361662","139578571","107458483","261439002","80576967","97885289","583159170","47597760","1241156683","746687364","302280931","99119261","10884288","522587921","268586231","186958653","277954704","206798405","48847374","51757126","532254782","70476435","14516975","34898883","118281529","24396804","243791145","19703476","68354832","835779898","146071355","264990158","120307951","101078326","73232786","129471151","1074738432","116693694","27171403","728207067","162857268","1708355542","123234626","155662051","26013203","23727705","88146497","99254241","50938773","42847923","163348758","332748371","332747438","72644644","97161241","97756645","273970482","161211085","236438668","1149193097","160198658","59175777","300410799","73829202","96669697","99254203","104642522","108149201","176087639","191261930","65079090","119101643","54694334","10468915","117498775","317593302","64220952","114020557","52180871","14131296","156467990","89491407","277955084","163355211","173755801","55917420","2163551089","1492226137","27860496","90220438","204095724","159199263","261827192","88146505","90220371","45513247","79446433","184760397","341109697","569678090","160189720","1033137155","621089209","168140813","71037056","139578136","95354259","215355320","54130559","2568200796","114687236","271017937","257343597","2222648398","178076989","99033296","93136746","65079094","2136389582","2463683230","22152234","40493542","22787168","1117745433","13206984","16641274","928796097","2045767145","241512134","118281463","95484354","98253592","176087640","236440696","155661985","125013830","83021217","150363993","70476425","24686580","76170515","97886188","186868641","431038614","183665698","152233381","52625733","88885506","17527923","156467926","243778818","1241587075","54694329","298087401","359179463","57229357","33866846","74385418","72644629","158069110","45941397","2409286506","159199218","13478015","12909278","1536053426","1587165780","66416590","59190543","1829078563","1241586595","99119240","59175769","257812862","159199229","286527185","188853857","74972442","2316759705","549914420","313547087","52180863","869125445","83704165","583157224","122278276","1320966419","11999279","74904413","66896601","46360870","2014805757","2385189785","52180878","22787189","226205948","33382711","1990279115","93709266","21420014","103338520","28277486","51346271","61916132","302502491","1046322934","271017031","84417104","221173389","330295904","50454041","257813288","78005082","64160547","395205750","13477940","228589017","64647651","255800783","181356054","56561579","34398938","185422295","49052716","106064315","54130552","18776718","128162713","163354553","477911027","503957703","62350856","728205177","162857422","1587175338","88143060","67319425","108158379","11999235","61459678","121385262","53623295","122278316","48159815","157205818","2463693263","248287898","102705430","1001653705","385780758","102705402","13841367","97161262","38326803","283756680","125859385","123234545","24440014","63721732","161220552","25741198","241017426","59806354","709399046","365642085","75556791","212500257","47262108","228588531","304720206","99641902","152187198","892003497","387285940","22971409","183355969","73232825","16987194","25545089","50454086","19111894","80661504","287426148","25926517","10510024","101106464","2620523077","60357959","73265108","130113061","78665215","139577901","20064349","527383094","2385192846","467137230","102705454","15470359","33867016","46362414","147937443","138761013","45094376","68603151","1981813154","236442380","96669687","85145662","903199054","188644205","53130867","42845684","65545971","86492583","537374622","254608905","76262706","22969230","16216702","169602010","241017568","2620521684","472607575","445151478","35366215","32858699","106064277","292969932","304719869","96669943","2620451289","53130896","206799274","503957396","92627975","60357989","483308034","503955938","33382537","87361995","511930668","170896461","113299641","108875216","60888308","70476446","163355404","11719016","187840979","18010691","321345839","34870758","183665514","85145626","52180858","86494893","53917288","45513203","22960435","84418938","858740936","45941451","68478587","55917432","71597048","66426103","93136802","100469994","273969902","152187131","53130887","124127383","332747874","88885497","1149579825","99610601","187688069","15397778","73888479","1469850646","223785473","62803186","1215506016","46846074","1560600467","430065768","45201977"}
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me "..gears[math.random(1,#gears)])
        wait()
    end
end)

addCommand("giveallgears",{},function()
    local gears = {"121946387","11419319","168141301","15932306","12187348","225921000","127506105","11377306","212296936","253519495","114020480","257810065","10472779","477910063","22960388","147143863","16688968","306971294","99119158","409745306","11452821","46846246","11563251","517827962","170897263","11999247","286526176","223439643","467138029","11453385","467935723","113328094","1402322831","22787248","928914739","16726030","95951330","12848902","16214845","44115926","42321801","52627419","1060280135","106701659","2350122208","1033136271","83021197","1016183873","168143042","1132887630","101106419","172246669","20721924","111876831","928913996","156467855","150366274","168140949","13745494","83021250","21392199","22788134","162857357","1180418251","101078559","28664212","461488745","11450664","116040770","107458429","30393548","13207169","12890798","243790334","21754543","124126871","170903216","57902859","2605965785","32355966","10727852","306971659","163350265","31314966","103358098","12145515","398675172","183355817","15177716","31839337","22596452","2568114215","321582427","295461517","365674685","81847570","119101539","2463674178","88146486","92142799","115377964","108875151","65545955","96669682","98411393","12547976","26421972","16979083","30847779","123234673","430066424","116040789","125859483","65082246","11956382","49491736","2506347092","24346755","89487934","78730532","383608755","1929597345","16722267","319656339","104642566","104642700","147143848","121925044","343586214","517827255","356212933","335132838","416846710","82357123","27494652","192456288","1304339797","236403380","57983532","639345143","92627988","83704169","14719505","168142869","2261167878","125013849","183355892","82357079","1340206957","99119198","168142394","211944997","26014536","2190019650","542755101","26017478","489196923","10758456","287425246","110789105","21440120","29100449","186868758","105289761","336370943","304721834","1241586091","163348575","88143074","73829214","87361806","35366155","34399428","103234612","439988813","1180417820","18474459","2605966484","346687565","30392263","746686384","168141496","1903663829","835780770","55301897","244082303","97161295","163348987","483899693","330296266","123234510","146047188","2569022418","170896941","255800146","15176169","35683911","81847365","15731350","302281291","14131602","29939404","2136391608","15668963","18482570","425121415","139578061","56561570","563288952","450566409","97311482","277955605","3459922232","13477890","118281609","549915884","58574445","19328185","380204314","295460702","218631022","106064469","2350119937","284135286","27858062","21445765","128160832","109583846","39258329","22152195","46360920","257343434","21351465","2463675080","52625744","58574452","29532138","2103276507","47597835","31314931","31839260","30649735","21440056","1117743696","107458461","172248941","163353363","380210977","27245855","34398653","33683368","57229313","30847733","173781053","15470183","542184488","34901961","46132907","154727251","109583822","94333296","142498104","987032734","1074742019","45754061","1829110586","18409191","206136532","122278207","880506541","114020538","16924676","46846115","928805891","1380774367","114687223","99797403","264989911","78367424","2804667002","28671909","112591865","29100543","25974222","226206253","228588651","19111883","189910805","162857391","236443047","44116233","38327125","323192649","10469910","28672001","101110605","32353654","738924664","101078350","20373160","35684857","14864611","58574416","402305186","11885154","18481407","25162389","41457719","31314849","20642023","1258015943","176219131","29345958","21439965","18479966","25158998","48596324","236441643","105189783","1645056094","11419882","99254437","94794774","78005009","2830533679","435116927","15970544","13206887","47871615","57229337","94794833","88143166","106701702","356213494","1929592959","101079008","13206856","183826384","37816777","218634097","327365543","81154592","29099749","1088051376","113299556","44561400","154727487","120749494","83021236","629893424","420161128","80576952","343587237","402304782","99797381","304720496","71037076","66896638","85754656","335086410","32858586","236401511","445150567","2045764727","215448210","42845896","108158439","170903610","63253706","15973059","79446473","2316760298","48159731","88885481","12504077","101191388","103234296","50938746","42845853","602146440","130925426","160189871","106701564","116040807","1230024287","56561593","101078524","151292047","98411325","65979823","754869699","24791472","21392417","53623248","319656563","21802000","1789547756","189756588","18482562","66416602","12902404","84012460","1760406591","157205782","1191128759","30847746","189910262","93136674","208659586","208659734","96095042","80576928","23306097","77443491","14492601","2620524562","233633874","29532089","66426498","158069071","1215515248","47871597","92142841","69964719","83704154","346687267","271017537","74385438","361950795","155662087","18017365","168142620","1258015236","456221232","160198363","346685995","33732371","93136666","1320966824","306163602","190094313","10831489","1360078533","221181437","69499437","215392741","86492467","55917409","92628074","1609498185","147143821","621090617","126719093","99254164","76170471","176087556","160199141","18426536","2620441860","85879465","97932897","49491781","172246820","1001649855","49929724","1304344132","63721711","233520425","2226815033","292969139","98219158","15973049","359244394","53623322","1492225511","24659699","128160929","154727343","97161222","178076749","248285248","610133129","24015579","99254358","91360052","90718350","1708354246","330296114","125013769","478707595","156467963","86494914","498752764","100472084","150366320","94233391","60888225","106701619","146047220","16986649","190094270","113299590","51346336","95951291","130113146","846792499","49929746","1103012605","61459592","129471121","183355732","295460073","62350846","21439991","129471170","95951270","49491716","191261808","147937284","181550181","226206639","68539623","17237675","15470222","176087597","159229806","336371164","59848474","68848741","124126528","176087466","243007180","335085355","12775410","356212121","91294485","420160506","127506324","79446395","563287969","82357101","69567827","73232803","158069180","2544539559","51757158","1402452608","174752245","12187431","63253701","2535102910","99797357","280662667","81330766","287424278","98341183","35293856","21416138","170902990","904534702","104642550","71597072","1132884456","233660801","315617026","315573586","206136361","105351748","413200176","178076831","74385399","59805584","45177979","218631128","1760404984","2445084910","188643628","233520257","66896542","190880295","87361508","37347081","80597060","204095670","54130543","91360028","77443436","553937189","107458531","1536052210","62350883","11115851","70476451","47262951","61916137","170903868","116055112","95258660","15179006","51346471","170896571","56561607","18462637","41457484","903197575","64220933","174752400","160189476","46846024","76170545","69210407","74904396","87361662","139578571","107458483","261439002","80576967","97885289","583159170","47597760","1241156683","746687364","302280931","99119261","10884288","522587921","268586231","186958653","277954704","206798405","48847374","51757126","532254782","70476435","14516975","34898883","118281529","24396804","243791145","19703476","68354832","835779898","146071355","264990158","120307951","101078326","73232786","129471151","1074738432","116693694","27171403","728207067","162857268","1708355542","123234626","155662051","26013203","23727705","88146497","99254241","50938773","42847923","163348758","332748371","332747438","72644644","97161241","97756645","273970482","161211085","236438668","1149193097","160198658","59175777","300410799","73829202","96669697","99254203","104642522","108149201","176087639","191261930","65079090","119101643","54694334","10468915","117498775","317593302","64220952","114020557","52180871","14131296","156467990","89491407","277955084","163355211","173755801","55917420","2163551089","1492226137","27860496","90220438","204095724","159199263","261827192","88146505","90220371","45513247","79446433","184760397","341109697","569678090","160189720","1033137155","621089209","168140813","71037056","139578136","95354259","215355320","54130559","2568200796","114687236","271017937","257343597","2222648398","178076989","99033296","93136746","65079094","2136389582","2463683230","22152234","40493542","22787168","1117745433","13206984","16641274","928796097","2045767145","241512134","118281463","95484354","98253592","176087640","236440696","155661985","125013830","83021217","150363993","70476425","24686580","76170515","97886188","186868641","431038614","183665698","152233381","52625733","88885506","17527923","156467926","243778818","1241587075","54694329","298087401","359179463","57229357","33866846","74385418","72644629","158069110","45941397","2409286506","159199218","13478015","12909278","1536053426","1587165780","66416590","59190543","1829078563","1241586595","99119240","59175769","257812862","159199229","286527185","188853857","74972442","2316759705","549914420","313547087","52180863","869125445","83704165","583157224","122278276","1320966419","11999279","74904413","66896601","46360870","2014805757","2385189785","52180878","22787189","226205948","33382711","1990279115","93709266","21420014","103338520","28277486","51346271","61916132","302502491","1046322934","271017031","84417104","221173389","330295904","50454041","257813288","78005082","64160547","395205750","13477940","228589017","64647651","255800783","181356054","56561579","34398938","185422295","49052716","106064315","54130552","18776718","128162713","163354553","477911027","503957703","62350856","728205177","162857422","1587175338","88143060","67319425","108158379","11999235","61459678","121385262","53623295","122278316","48159815","157205818","2463693263","248287898","102705430","1001653705","385780758","102705402","13841367","97161262","38326803","283756680","125859385","123234545","24440014","63721732","161220552","25741198","241017426","59806354","709399046","365642085","75556791","212500257","47262108","228588531","304720206","99641902","152187198","892003497","387285940","22971409","183355969","73232825","16987194","25545089","50454086","19111894","80661504","287426148","25926517","10510024","101106464","2620523077","60357959","73265108","130113061","78665215","139577901","20064349","527383094","2385192846","467137230","102705454","15470359","33867016","46362414","147937443","138761013","45094376","68603151","1981813154","236442380","96669687","85145662","903199054","188644205","53130867","42845684","65545971","86492583","537374622","254608905","76262706","22969230","16216702","169602010","241017568","2620521684","472607575","445151478","35366215","32858699","106064277","292969932","304719869","96669943","2620451289","53130896","206799274","503957396","92627975","60357989","483308034","503955938","33382537","87361995","511930668","170896461","113299641","108875216","60888308","70476446","163355404","11719016","187840979","18010691","321345839","34870758","183665514","85145626","52180858","86494893","53917288","45513203","22960435","84418938","858740936","45941451","68478587","55917432","71597048","66426103","93136802","100469994","273969902","152187131","53130887","124127383","332747874","88885497","1149579825","99610601","187688069","15397778","73888479","1469850646","223785473","62803186","1215506016","46846074","1560600467","430065768","45201977"}
for i,v in pairs(gears) do
    game.Players:Chat("gear me "..v)
    print("Given gear "..v.." "..i.."/"..#gears.." ("..tostring(#game.Players.LocalPlayer.Backpack:GetChildren()).." gears in backpack)")
    wait()
end
end)

addCommand("activateallgears",{},function()
    local gears = {"121946387","11419319","168141301","15932306","12187348","225921000","127506105","11377306","212296936","253519495","114020480","257810065","10472779","477910063","22960388","147143863","16688968","306971294","99119158","409745306","11452821","46846246","11563251","517827962","170897263","11999247","286526176","223439643","467138029","11453385","467935723","113328094","1402322831","22787248","928914739","16726030","95951330","12848902","16214845","44115926","42321801","52627419","1060280135","106701659","2350122208","1033136271","83021197","1016183873","168143042","1132887630","101106419","172246669","20721924","111876831","928913996","156467855","150366274","168140949","13745494","83021250","21392199","22788134","162857357","1180418251","101078559","28664212","461488745","11450664","116040770","107458429","30393548","13207169","12890798","243790334","21754543","124126871","170903216","57902859","2605965785","32355966","10727852","306971659","163350265","31314966","103358098","12145515","398675172","183355817","15177716","31839337","22596452","2568114215","321582427","295461517","365674685","81847570","119101539","2463674178","88146486","92142799","115377964","108875151","65545955","96669682","98411393","12547976","26421972","16979083","30847779","123234673","430066424","116040789","125859483","65082246","11956382","49491736","2506347092","24346755","89487934","78730532","383608755","1929597345","16722267","319656339","104642566","104642700","147143848","121925044","343586214","517827255","356212933","335132838","416846710","82357123","27494652","192456288","1304339797","236403380","57983532","639345143","92627988","83704169","14719505","168142869","2261167878","125013849","183355892","82357079","1340206957","99119198","168142394","211944997","26014536","2190019650","542755101","26017478","489196923","10758456","287425246","110789105","21440120","29100449","186868758","105289761","336370943","304721834","1241586091","163348575","88143074","73829214","87361806","35366155","34399428","103234612","439988813","1180417820","18474459","2605966484","346687565","30392263","746686384","168141496","1903663829","835780770","55301897","244082303","97161295","163348987","483899693","330296266","123234510","146047188","2569022418","170896941","255800146","15176169","35683911","81847365","15731350","302281291","14131602","29939404","2136391608","15668963","18482570","425121415","139578061","56561570","563288952","450566409","97311482","277955605","3459922232","13477890","118281609","549915884","58574445","19328185","380204314","295460702","218631022","106064469","2350119937","284135286","27858062","21445765","128160832","109583846","39258329","22152195","46360920","257343434","21351465","2463675080","52625744","58574452","29532138","2103276507","47597835","31314931","31839260","30649735","21440056","1117743696","107458461","172248941","163353363","380210977","27245855","34398653","33683368","57229313","30847733","173781053","15470183","542184488","34901961","46132907","154727251","109583822","94333296","142498104","987032734","1074742019","45754061","1829110586","18409191","206136532","122278207","880506541","114020538","16924676","46846115","928805891","1380774367","114687223","99797403","264989911","78367424","2804667002","28671909","112591865","29100543","25974222","226206253","228588651","19111883","189910805","162857391","236443047","44116233","38327125","323192649","10469910","28672001","101110605","32353654","738924664","101078350","20373160","35684857","14864611","58574416","402305186","11885154","18481407","25162389","41457719","31314849","20642023","1258015943","176219131","29345958","21439965","18479966","25158998","48596324","236441643","105189783","1645056094","11419882","99254437","94794774","78005009","2830533679","435116927","15970544","13206887","47871615","57229337","94794833","88143166","106701702","356213494","1929592959","101079008","13206856","183826384","37816777","218634097","327365543","81154592","29099749","1088051376","113299556","44561400","154727487","120749494","83021236","629893424","420161128","80576952","343587237","402304782","99797381","304720496","71037076","66896638","85754656","335086410","32858586","236401511","445150567","2045764727","215448210","42845896","108158439","170903610","63253706","15973059","79446473","2316760298","48159731","88885481","12504077","101191388","103234296","50938746","42845853","602146440","130925426","160189871","106701564","116040807","1230024287","56561593","101078524","151292047","98411325","65979823","754869699","24791472","21392417","53623248","319656563","21802000","1789547756","189756588","18482562","66416602","12902404","84012460","1760406591","157205782","1191128759","30847746","189910262","93136674","208659586","208659734","96095042","80576928","23306097","77443491","14492601","2620524562","233633874","29532089","66426498","158069071","1215515248","47871597","92142841","69964719","83704154","346687267","271017537","74385438","361950795","155662087","18017365","168142620","1258015236","456221232","160198363","346685995","33732371","93136666","1320966824","306163602","190094313","10831489","1360078533","221181437","69499437","215392741","86492467","55917409","92628074","1609498185","147143821","621090617","126719093","99254164","76170471","176087556","160199141","18426536","2620441860","85879465","97932897","49491781","172246820","1001649855","49929724","1304344132","63721711","233520425","2226815033","292969139","98219158","15973049","359244394","53623322","1492225511","24659699","128160929","154727343","97161222","178076749","248285248","610133129","24015579","99254358","91360052","90718350","1708354246","330296114","125013769","478707595","156467963","86494914","498752764","100472084","150366320","94233391","60888225","106701619","146047220","16986649","190094270","113299590","51346336","95951291","130113146","846792499","49929746","1103012605","61459592","129471121","183355732","295460073","62350846","21439991","129471170","95951270","49491716","191261808","147937284","181550181","226206639","68539623","17237675","15470222","176087597","159229806","336371164","59848474","68848741","124126528","176087466","243007180","335085355","12775410","356212121","91294485","420160506","127506324","79446395","563287969","82357101","69567827","73232803","158069180","2544539559","51757158","1402452608","174752245","12187431","63253701","2535102910","99797357","280662667","81330766","287424278","98341183","35293856","21416138","170902990","904534702","104642550","71597072","1132884456","233660801","315617026","315573586","206136361","105351748","413200176","178076831","74385399","59805584","45177979","218631128","1760404984","2445084910","188643628","233520257","66896542","190880295","87361508","37347081","80597060","204095670","54130543","91360028","77443436","553937189","107458531","1536052210","62350883","11115851","70476451","47262951","61916137","170903868","116055112","95258660","15179006","51346471","170896571","56561607","18462637","41457484","903197575","64220933","174752400","160189476","46846024","76170545","69210407","74904396","87361662","139578571","107458483","261439002","80576967","97885289","583159170","47597760","1241156683","746687364","302280931","99119261","10884288","522587921","268586231","186958653","277954704","206798405","48847374","51757126","532254782","70476435","14516975","34898883","118281529","24396804","243791145","19703476","68354832","835779898","146071355","264990158","120307951","101078326","73232786","129471151","1074738432","116693694","27171403","728207067","162857268","1708355542","123234626","155662051","26013203","23727705","88146497","99254241","50938773","42847923","163348758","332748371","332747438","72644644","97161241","97756645","273970482","161211085","236438668","1149193097","160198658","59175777","300410799","73829202","96669697","99254203","104642522","108149201","176087639","191261930","65079090","119101643","54694334","10468915","117498775","317593302","64220952","114020557","52180871","14131296","156467990","89491407","277955084","163355211","173755801","55917420","2163551089","1492226137","27860496","90220438","204095724","159199263","261827192","88146505","90220371","45513247","79446433","184760397","341109697","569678090","160189720","1033137155","621089209","168140813","71037056","139578136","95354259","215355320","54130559","2568200796","114687236","271017937","257343597","2222648398","178076989","99033296","93136746","65079094","2136389582","2463683230","22152234","40493542","22787168","1117745433","13206984","16641274","928796097","2045767145","241512134","118281463","95484354","98253592","176087640","236440696","155661985","125013830","83021217","150363993","70476425","24686580","76170515","97886188","186868641","431038614","183665698","152233381","52625733","88885506","17527923","156467926","243778818","1241587075","54694329","298087401","359179463","57229357","33866846","74385418","72644629","158069110","45941397","2409286506","159199218","13478015","12909278","1536053426","1587165780","66416590","59190543","1829078563","1241586595","99119240","59175769","257812862","159199229","286527185","188853857","74972442","2316759705","549914420","313547087","52180863","869125445","83704165","583157224","122278276","1320966419","11999279","74904413","66896601","46360870","2014805757","2385189785","52180878","22787189","226205948","33382711","1990279115","93709266","21420014","103338520","28277486","51346271","61916132","302502491","1046322934","271017031","84417104","221173389","330295904","50454041","257813288","78005082","64160547","395205750","13477940","228589017","64647651","255800783","181356054","56561579","34398938","185422295","49052716","106064315","54130552","18776718","128162713","163354553","477911027","503957703","62350856","728205177","162857422","1587175338","88143060","67319425","108158379","11999235","61459678","121385262","53623295","122278316","48159815","157205818","2463693263","248287898","102705430","1001653705","385780758","102705402","13841367","97161262","38326803","283756680","125859385","123234545","24440014","63721732","161220552","25741198","241017426","59806354","709399046","365642085","75556791","212500257","47262108","228588531","304720206","99641902","152187198","892003497","387285940","22971409","183355969","73232825","16987194","25545089","50454086","19111894","80661504","287426148","25926517","10510024","101106464","2620523077","60357959","73265108","130113061","78665215","139577901","20064349","527383094","2385192846","467137230","102705454","15470359","33867016","46362414","147937443","138761013","45094376","68603151","1981813154","236442380","96669687","85145662","903199054","188644205","53130867","42845684","65545971","86492583","537374622","254608905","76262706","22969230","16216702","169602010","241017568","2620521684","472607575","445151478","35366215","32858699","106064277","292969932","304719869","96669943","2620451289","53130896","206799274","503957396","92627975","60357989","483308034","503955938","33382537","87361995","511930668","170896461","113299641","108875216","60888308","70476446","163355404","11719016","187840979","18010691","321345839","34870758","183665514","85145626","52180858","86494893","53917288","45513203","22960435","84418938","858740936","45941451","68478587","55917432","71597048","66426103","93136802","100469994","273969902","152187131","53130887","124127383","332747874","88885497","1149579825","99610601","187688069","15397778","73888479","1469850646","223785473","62803186","1215506016","46846074","1560600467","430065768","45201977"}
for i,v in pairs(gears) do
    game.Players:Chat("gear me "..v)
    print("Given gear "..v.." "..i.."/"..#gears.." ("..tostring(#game.Players.LocalPlayer.Backpack:GetChildren()).." gears in backpack)")
    wait()
end
wait(0.25)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Character
    end
    wait(0.1)
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if v:IsA("Tool") then v:Activate() end
    end
end)

addCommand("activaterandomgears",{"amount"},function(args)
    local gears = {"121946387","11419319","168141301","15932306","12187348","225921000","127506105","11377306","212296936","253519495","114020480","257810065","10472779","477910063","22960388","147143863","16688968","306971294","99119158","409745306","11452821","46846246","11563251","517827962","170897263","11999247","286526176","223439643","467138029","11453385","467935723","113328094","1402322831","22787248","928914739","16726030","95951330","12848902","16214845","44115926","42321801","52627419","1060280135","106701659","2350122208","1033136271","83021197","1016183873","168143042","1132887630","101106419","172246669","20721924","111876831","928913996","156467855","150366274","168140949","13745494","83021250","21392199","22788134","162857357","1180418251","101078559","28664212","461488745","11450664","116040770","107458429","30393548","13207169","12890798","243790334","21754543","124126871","170903216","57902859","2605965785","32355966","10727852","306971659","163350265","31314966","103358098","12145515","398675172","183355817","15177716","31839337","22596452","2568114215","321582427","295461517","365674685","81847570","119101539","2463674178","88146486","92142799","115377964","108875151","65545955","96669682","98411393","12547976","26421972","16979083","30847779","123234673","430066424","116040789","125859483","65082246","11956382","49491736","2506347092","24346755","89487934","78730532","383608755","1929597345","16722267","319656339","104642566","104642700","147143848","121925044","343586214","517827255","356212933","335132838","416846710","82357123","27494652","192456288","1304339797","236403380","57983532","639345143","92627988","83704169","14719505","168142869","2261167878","125013849","183355892","82357079","1340206957","99119198","168142394","211944997","26014536","2190019650","542755101","26017478","489196923","10758456","287425246","110789105","21440120","29100449","186868758","105289761","336370943","304721834","1241586091","163348575","88143074","73829214","87361806","35366155","34399428","103234612","439988813","1180417820","18474459","2605966484","346687565","30392263","746686384","168141496","1903663829","835780770","55301897","244082303","97161295","163348987","483899693","330296266","123234510","146047188","2569022418","170896941","255800146","15176169","35683911","81847365","15731350","302281291","14131602","29939404","2136391608","15668963","18482570","425121415","139578061","56561570","563288952","450566409","97311482","277955605","3459922232","13477890","118281609","549915884","58574445","19328185","380204314","295460702","218631022","106064469","2350119937","284135286","27858062","21445765","128160832","109583846","39258329","22152195","46360920","257343434","21351465","2463675080","52625744","58574452","29532138","2103276507","47597835","31314931","31839260","30649735","21440056","1117743696","107458461","172248941","163353363","380210977","27245855","34398653","33683368","57229313","30847733","173781053","15470183","542184488","34901961","46132907","154727251","109583822","94333296","142498104","987032734","1074742019","45754061","1829110586","18409191","206136532","122278207","880506541","114020538","16924676","46846115","928805891","1380774367","114687223","99797403","264989911","78367424","2804667002","28671909","112591865","29100543","25974222","226206253","228588651","19111883","189910805","162857391","236443047","44116233","38327125","323192649","10469910","28672001","101110605","32353654","738924664","101078350","20373160","35684857","14864611","58574416","402305186","11885154","18481407","25162389","41457719","31314849","20642023","1258015943","176219131","29345958","21439965","18479966","25158998","48596324","236441643","105189783","1645056094","11419882","99254437","94794774","78005009","2830533679","435116927","15970544","13206887","47871615","57229337","94794833","88143166","106701702","356213494","1929592959","101079008","13206856","183826384","37816777","218634097","327365543","81154592","29099749","1088051376","113299556","44561400","154727487","120749494","83021236","629893424","420161128","80576952","343587237","402304782","99797381","304720496","71037076","66896638","85754656","335086410","32858586","236401511","445150567","2045764727","215448210","42845896","108158439","170903610","63253706","15973059","79446473","2316760298","48159731","88885481","12504077","101191388","103234296","50938746","42845853","602146440","130925426","160189871","106701564","116040807","1230024287","56561593","101078524","151292047","98411325","65979823","754869699","24791472","21392417","53623248","319656563","21802000","1789547756","189756588","18482562","66416602","12902404","84012460","1760406591","157205782","1191128759","30847746","189910262","93136674","208659586","208659734","96095042","80576928","23306097","77443491","14492601","2620524562","233633874","29532089","66426498","158069071","1215515248","47871597","92142841","69964719","83704154","346687267","271017537","74385438","361950795","155662087","18017365","168142620","1258015236","456221232","160198363","346685995","33732371","93136666","1320966824","306163602","190094313","10831489","1360078533","221181437","69499437","215392741","86492467","55917409","92628074","1609498185","147143821","621090617","126719093","99254164","76170471","176087556","160199141","18426536","2620441860","85879465","97932897","49491781","172246820","1001649855","49929724","1304344132","63721711","233520425","2226815033","292969139","98219158","15973049","359244394","53623322","1492225511","24659699","128160929","154727343","97161222","178076749","248285248","610133129","24015579","99254358","91360052","90718350","1708354246","330296114","125013769","478707595","156467963","86494914","498752764","100472084","150366320","94233391","60888225","106701619","146047220","16986649","190094270","113299590","51346336","95951291","130113146","846792499","49929746","1103012605","61459592","129471121","183355732","295460073","62350846","21439991","129471170","95951270","49491716","191261808","147937284","181550181","226206639","68539623","17237675","15470222","176087597","159229806","336371164","59848474","68848741","124126528","176087466","243007180","335085355","12775410","356212121","91294485","420160506","127506324","79446395","563287969","82357101","69567827","73232803","158069180","2544539559","51757158","1402452608","174752245","12187431","63253701","2535102910","99797357","280662667","81330766","287424278","98341183","35293856","21416138","170902990","904534702","104642550","71597072","1132884456","233660801","315617026","315573586","206136361","105351748","413200176","178076831","74385399","59805584","45177979","218631128","1760404984","2445084910","188643628","233520257","66896542","190880295","87361508","37347081","80597060","204095670","54130543","91360028","77443436","553937189","107458531","1536052210","62350883","11115851","70476451","47262951","61916137","170903868","116055112","95258660","15179006","51346471","170896571","56561607","18462637","41457484","903197575","64220933","174752400","160189476","46846024","76170545","69210407","74904396","87361662","139578571","107458483","261439002","80576967","97885289","583159170","47597760","1241156683","746687364","302280931","99119261","10884288","522587921","268586231","186958653","277954704","206798405","48847374","51757126","532254782","70476435","14516975","34898883","118281529","24396804","243791145","19703476","68354832","835779898","146071355","264990158","120307951","101078326","73232786","129471151","1074738432","116693694","27171403","728207067","162857268","1708355542","123234626","155662051","26013203","23727705","88146497","99254241","50938773","42847923","163348758","332748371","332747438","72644644","97161241","97756645","273970482","161211085","236438668","1149193097","160198658","59175777","300410799","73829202","96669697","99254203","104642522","108149201","176087639","191261930","65079090","119101643","54694334","10468915","117498775","317593302","64220952","114020557","52180871","14131296","156467990","89491407","277955084","163355211","173755801","55917420","2163551089","1492226137","27860496","90220438","204095724","159199263","261827192","88146505","90220371","45513247","79446433","184760397","341109697","569678090","160189720","1033137155","621089209","168140813","71037056","139578136","95354259","215355320","54130559","2568200796","114687236","271017937","257343597","2222648398","178076989","99033296","93136746","65079094","2136389582","2463683230","22152234","40493542","22787168","1117745433","13206984","16641274","928796097","2045767145","241512134","118281463","95484354","98253592","176087640","236440696","155661985","125013830","83021217","150363993","70476425","24686580","76170515","97886188","186868641","431038614","183665698","152233381","52625733","88885506","17527923","156467926","243778818","1241587075","54694329","298087401","359179463","57229357","33866846","74385418","72644629","158069110","45941397","2409286506","159199218","13478015","12909278","1536053426","1587165780","66416590","59190543","1829078563","1241586595","99119240","59175769","257812862","159199229","286527185","188853857","74972442","2316759705","549914420","313547087","52180863","869125445","83704165","583157224","122278276","1320966419","11999279","74904413","66896601","46360870","2014805757","2385189785","52180878","22787189","226205948","33382711","1990279115","93709266","21420014","103338520","28277486","51346271","61916132","302502491","1046322934","271017031","84417104","221173389","330295904","50454041","257813288","78005082","64160547","395205750","13477940","228589017","64647651","255800783","181356054","56561579","34398938","185422295","49052716","106064315","54130552","18776718","128162713","163354553","477911027","503957703","62350856","728205177","162857422","1587175338","88143060","67319425","108158379","11999235","61459678","121385262","53623295","122278316","48159815","157205818","2463693263","248287898","102705430","1001653705","385780758","102705402","13841367","97161262","38326803","283756680","125859385","123234545","24440014","63721732","161220552","25741198","241017426","59806354","709399046","365642085","75556791","212500257","47262108","228588531","304720206","99641902","152187198","892003497","387285940","22971409","183355969","73232825","16987194","25545089","50454086","19111894","80661504","287426148","25926517","10510024","101106464","2620523077","60357959","73265108","130113061","78665215","139577901","20064349","527383094","2385192846","467137230","102705454","15470359","33867016","46362414","147937443","138761013","45094376","68603151","1981813154","236442380","96669687","85145662","903199054","188644205","53130867","42845684","65545971","86492583","537374622","254608905","76262706","22969230","16216702","169602010","241017568","2620521684","472607575","445151478","35366215","32858699","106064277","292969932","304719869","96669943","2620451289","53130896","206799274","503957396","92627975","60357989","483308034","503955938","33382537","87361995","511930668","170896461","113299641","108875216","60888308","70476446","163355404","11719016","187840979","18010691","321345839","34870758","183665514","85145626","52180858","86494893","53917288","45513203","22960435","84418938","858740936","45941451","68478587","55917432","71597048","66426103","93136802","100469994","273969902","152187131","53130887","124127383","332747874","88885497","1149579825","99610601","187688069","15397778","73888479","1469850646","223785473","62803186","1215506016","46846074","1560600467","430065768","45201977"}
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me "..gears[math.random(1,#gears)])
        wait()
    end
    wait(0.25)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Character
    end
    wait(0.1)
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if v:IsA("Tool") then v:Activate() end
    end
end)

addCommand("trap",{"player","time"},function(args)
    local function GetCage()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("PortableJustice") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("PortableJustice")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("PortableJustice") then
        return game.Players.LocalPlayer.Character:FindFirstChild("PortableJustice")
    else
        game.Players:Chat("gear me 82357101")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("PortableJustice")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("PortableJustice")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
local function CagePlayer(Player)
    local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if Player and Player.Character and Player.Character.Head and not Player.Character:FindFirstChild("Part") then
        local A_1 = Player.Character
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.Head.CFrame
        GetCage().MouseClick:FireServer(A_1)
        repeat game:GetService("RunService").RenderStepped:Wait() until Player.Character:FindFirstChild("Part")
        GetCage():Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        game.Players:Chat("removetools me")
        game.Players:Chat("pm "..Player.Name.." [ii 's St upid Ad min]\nYou are currently trapped for "..args[2].."s.")
    end
end
Loops.trap = true
spawn(function()
    wait(tonumber(args[2]))
    Loops.trap = false
end)
local Player = GetPlayers(args[1])
repeat game:GetService("RunService").RenderStepped:Wait()
    pcall(function()
for i,v in pairs(Player) do
    pcall(function()
        CagePlayer(v)
    end)
end
    end)
until not Loops.trap
for i,v in pairs(Player) do
    game.Players:Chat("reset "..v.Name)
    wait()
    game.Players:Chat("pm "..v.Name.." [ii 's St upid Ad min]\nYou are no longer trapped.")
    wait()
end
end)

addCommand("equipall",{},function()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Character
    end
end)

addCommand("dropall",{},function()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Character
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if v:IsA("Tool") then v.Parent = workspace end
    end
end)

addCommand("activateall",{},function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if v:IsA("Tool") then v:Activate() end
    end
end)

addCommand("playmusic",{"audio-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.."%20"..args[i]
    end
    local request = syn.request({
        Url="https://search.roblox.com/catalog/json?CatalogContext=2&Category=9&SortType=3&ResultsPerPage=10&Keyword="..fixer,
        Method=GET
    })
    local decode = game:GetService("HttpService"):JSONDecode(request.Body)
    game.Players:Chat("music "..tostring(decode[1]["AssetId"]))
end)

addCommand("copymusicid",{"audio-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.."%20"..args[i]
    end
    local request = syn.request({
        Url="https://search.roblox.com/catalog/json?CatalogContext=2&Category=9&SortType=3&ResultsPerPage=10&Keyword="..fixer,
        Method=GET
    })
    local decode = game:GetService("HttpService"):JSONDecode(request.Body)
    setclipboard(tostring(decode[1]["AssetId"]))
end)

addCommand("play",{"audio-name"},function(args)
    runCommand(prefix.."playmusic",args)
end)

addCommand("playlocalmusic",{"audio-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    if workspace:FindFirstChild("LocalMusic__") then
        workspace["LocalMusic__"]:Destroy()
    end
    local LocalMusic = Instance.new("Sound",workspace)
    LocalMusic.Name = "LocalMusic__"
    LocalMusic.Volume = 10
    LocalMusic.Looped = true
    LocalMusic.SoundId = getSoundId("https://raw.githubusercontent.com/iiDk-the-actual/Music/main/"..fixer..".mp3",fixer)
    LocalMusic:Play()
end)

addCommand("stoplocalmusic",{},function()
    if workspace:FindFirstChild("LocalMusic__") then
        workspace["LocalMusic__"]:Destroy()
    end
end)

addCommand("runcommand",{"command"},function(args)
    local message = args[1]
                for i=2, #args do
                        if args[i]=="<%RANDOMSTRING%>" then
                            local asuhdyuasd=""
                            for i=1,25 do
                            asuhdyuasd=asuhdyuasd..lettersTableFormat[math.random(#lettersTableFormat)]
                            end
                            
                            message = message.." "..asuhdyuasd
                        elseif args[i]==[[\n]] then
                        message = message.." ".."\n"
                        else
                        message = message.." "..args[i]
                        end
                end
    game.Players:Chat(message)
end)

addCommand("runcommandplr",{"command","player1","player2"},function(args)
    for i,v in pairs(GetPlayers(args[3])) do
        for i2,v2 in pairs(GetPlayers(args[2])) do
            print(args[1].." "..v2.Name.." "..v.Name)
            game.Players:Chat(args[1].." "..v2.Name.." "..v.Name)
        end
    end
end)

addCommand("rcplr",{"command"},function(args)
    runCommand(prefix.."runcommandplr",args)
end)

addCommand("runcommandbatch",{"delay","command"},function(args)
                    local message = args[2]
                for i=3, #args do
                        if args[i]=="<%RANDOMSTRING%>" then
                            local asuhdyuasd=""
                            for i=1,25 do
                            asuhdyuasd=asuhdyuasd..lettersTableFormat[math.random(#lettersTableFormat)]
                            end
                            
                            message = message.." "..asuhdyuasd
                        elseif args[i]==[[\n]] then
                        message = message.." ".."\n"
                        else
                        message = message.." "..args[i]
                        end
                end
                    for i,v in pairs(message:split("|")) do
                        game.Players:Chat(v)
                        wait(tonumber(args[1]))
                    end
end)

addCommand("copybypass",{"audio-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    local s,f=pcall(function()
    for i,v in pairs(Audios) do
        if string.match(v[2]:lower(),fixer:lower()) then
            setclipboard(v[1])
            break
        end
    end
    end) if not s then print(f)end
end)

addCommand("playbypass",{"audio-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    local s,f=pcall(function()
    for i,v in pairs(Audios) do
        if string.match(v[2]:lower(),fixer:lower()) then
            game.Players:Chat("music "..v[1])
            break
        end
    end
    end) if not s then print(f)end
end)

addCommand("getbypassed",{},function()
    local s,f=pcall(function()
    for i,v in pairs(Audios) do
        game.Players:Chat("ff "..v[2].." | Uploaded "..v[3].." | Bypassed by "..v[4])
        wait()
    end
    wait()
    game.Players:Chat("ff -:AUDIOS ["..tostring(#Audios).."]:-")
    wait()
    GUI:SendMessage("ii' s St upid Ad min", "Check logs for list of audios.")
    end)if not s then print(f)end
end)

addCommand("stopmusic",{},function()
    game.Players:Chat("music nan")
end)

addCommand("bypassmessage",{"message"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    local file = fixer
    local a = {}
    
    for letter in file:gmatch(".") do
      if letter ~= "\r" and letter ~= "\n" then
        table.insert(a, letter)
      end
    end
    
    for i, v in ipairs(a) do
      print(i, v)
    end
    
    for b, c in ipairs(a) do
        local d = "variable_" .. tostring(b)
        _G[d] = c
    end
    for b, c in ipairs(a) do
        local e = string.rep("  ", 2 * (b - 1))
        if PersonsAdmin then
            game.Players:Chat("h/the\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" .. e .. _G["variable_" .. tostring(b)])
        else
            game.Players:Chat("h iiWasHere\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" .. e .. _G["variable_" .. tostring(b)])
        end
    end
end)

addCommand("announce",{"message"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    GUI:SendMessage("ii' s St upid Ad min", fixer)
end)

addCommand("noturn",{},function()
    game.Players:Chat("gear all 4842186817")
    game.Players:Chat("gear all 4842218829")
    game.Players:Chat("gear all 4842215723")
    game.Players:Chat("gear all 4842207161")
    game.Players:Chat("gear all 4842212980")
end)

addCommand("doomcamera",{},function()
    game.Players:Chat("tp others me")
    game.Players:Chat("gear me 68354832")
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("BlizzardWand")
    local wand = game.Players.LocalPlayer.Backpack:FindFirstChild("BlizzardWand")
    wand.Parent = plr.Character
    wait(0.2)
    wand:Activate()
    wait(0.4)
    game.Players:Chat("reset all")
end)

addCommand("undoomcamera",{},function()
    game.Players:Chat("tp others me")
    game.Players:Chat("gear me 68354832")
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("BlizzardWand")
    local wand = plr.Backpack:FindFirstChild("BlizzardWand")
    wand.Parent = plr.Character
    wait(0.2)
    wand:Activate()
end)

addCommand("stop",{},function()
    runCommand(prefix.."stopmusic",{})
end)

addCommand("stopall",{},function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:isA("Sound") then v:Stop() end
    end
end)

addCommand("playall",{},function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:isA("Sound") then v:Play() end
    end
end)

addCommand("unmusiclock",{},function()
    Loops.musiclock = false
end)

addCommand("railcannon",{},function()
    local s,f=pcall(function()
    local args = {15}
    for i2=1,args[1] do
        for i=1,args[1] do
            game.Players:Chat("gear me 79446473")
            repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun")
            game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun").GripPos=(CFrame.Angles(0,0,math.rad(i2*(360/args[1])))*CFrame.new(math.cos(i*(360/args[1]))*10,0,math.sin(i*(args[1]/360))*10)).p
            game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun").Parent = game.Players.LocalPlayer.Character
        end
    end
    end) if not s then print(f)end
    wait(0.25)
    game.Players:Chat("invisible me")
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 8
    Connections.cannonthing = game:GetService("UserInputService").InputBegan:Connect(function(inputa,gp)
    if gp then return end
    if inputa.UserInputType == Enum.UserInputType.MouseButton1 then
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                v.Click:FireServer(game.Players.LocalPlayer:GetMouse().Hit.p)
            end
        end
    end
    end)
end)

addCommand("widerailcannon",{},function()
    local s,f=pcall(function()
    local args = {15}
    for i2=1,args[1] do
        for i=1,args[1] do
            game.Players:Chat("gear me 79446473")
            repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun")
            game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun").GripPos=(CFrame.Angles(0,0,math.rad(i2*(360/args[1])))*CFrame.new(math.cos(i*(360/args[1]))*10,0,math.sin(i*(args[1]/360))*10)).p
            game.Players.LocalPlayer.Backpack:FindFirstChild("Railgun").Parent = game.Players.LocalPlayer.Character
        end
    end
    end) if not s then print(f)end
    wait(0.25)
    game.Players:Chat("invisible me")
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 8
    Connections.cannonthing = game:GetService("UserInputService").InputBegan:Connect(function(inputa,gp)
    if gp then return end
    if inputa.UserInputType == Enum.UserInputType.MouseButton1 then
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                v.Click:FireServer((v.Handle.CFrame*CFrame.new(0,0,-100)).p)
            end
        end
    end
    end)
end)

addCommand("unrailcannon",{},function()
    Connections.cannonthing:Disconnect()
    game.Players:Chat("reset me")
end)

addCommand("whitelist",{"player"},function(args)
    local Player = GetPlayers(args[1])
    
    for i,v in pairs(Player) do
        if v ~= game.Players.LocalPlayer and not table.find(Whitelisted,v.Name) then
            table.insert(Whitelisted,v.Name)
            GUI:SendMessage("ii' s St upid Ad min", "Whitelisted player "..v.DisplayName..".")
        end
    end
end)

addCommand("blacklist",{"player"},function(args)
    local Player = GetPlayers(args[1])
    
    for i,v in pairs(Player) do
        if table.find(Whitelisted,v.Name) then
            table.remove(Whitelisted,table.find(Whitelisted,v.Name))
            GUI:SendMessage("ii' s St upid Ad min", "Blacklisted/unwhitelisted player "..v.DisplayName..".")
        end
    end
end)

addCommand("unwhitelist",{"player"},function(args)
    runCommand(prefix.."blacklist",args)
end)

addCommand("whitelisted",{},function()
    local whitelisted = Whitelisted
    local message = "Currently Whitelisted ("..#whitelisted.."): "
                for i,v in pairs(whitelisted) do
                    if v ~= whitelisted[#whitelisted] then
                        message = message..v..", "
                    else
                        if #whitelisted ~= 1 then
                            message = message.."& "..v.."."
                        else
                            message = message..v.."."
                        end
                    end
                end
                GUI:SendMessage("ii' s St upid Ad min", message)
end)

addCommand("serverlock",{},function()
    ServerLocked = not ServerLocked
    if ServerLocked then
        GUI:SendMessage("ii' s St upid Ad min", "The server has been locked.")
    else
        GUI:SendMessage("ii' s St upid Ad min", "The server has been unlocked.")
    end
end)

addCommand("person299",{"true/false"},function(args)
    if args[1] == "true" then
        PersonsAdmin = true
        GUI:SendMessage("ii' s St upid Ad min", "Person's Admin has been enabled.")
    else
        PersonsAdmin = false
        GUI:SendMessage("ii' s St upid Ad min", "Person's Admin has been disabled.")
    end
end)

addCommand("serverlocksound",{"true/false","soundid"},function(args)
    if args[1]=="true" then
        ServerLockedSoundEnabled = true
        GUI:SendMessage("ii' s St upid Ad min", "Server locked sounds have been enabled.")
    else
        ServerLockedSoundEnabled = false
        GUI:SendMessage("ii' s St upid Ad min", "Server locked sounds have been disabled.")
    end
    ServerLockedSound = args[2]
end)

addCommand("bansound",{"true/false","soundid"},function(args)
    if args[1]=="true" then
        BanSoundsEnabled = true
        GUI:SendMessage("ii' s St upid Ad min", "Ban sounds have been enabled.")
    else
        BanSoundsEnabled = false
        GUI:SendMessage("ii' s St upid Ad min", "Ban sounds have been disabled.")
    end
    BanSound = args[2]
end)

addCommand("antiserverlock",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        table.insert(ServerLockedProtection,v.Name)
        GUI:SendMessage("ii' s St upid Ad min", v.DisplayName.." is now protected against a server lock.")
    end
end)

addCommand("racheliscool",{"player"},function(args)
    runCommand(prefix.."antiserverlock",args)
end)

addCommand("aidaniscool",{"player"},function(args)
    runCommand(prefix.."antiserverlock",args)
end)

addCommand("unantiserverlock",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        if table.find(ServerLockedProtection,v.Name) then
            table.remove(ServerLockedProtection,table.find(ServerLockedProtection,v.Name))
            GUI:SendMessage("ii' s St upid Ad min", v.DisplayName.." is no longer protected against a server lock.")
        end
    end
end)

addCommand("unracheliscool",{"player"},function(args)
    runCommand(prefix.."unantiserverlock",args)
end)

addCommand("unaidaniscool",{"player"},function(args)
    runCommand(prefix.."unantiserverlock",args)
end)

addCommand("breakbaseplate",{},function()
    game.Players:Chat("gear me 111876831")
lp.Backpack:WaitForChild("April Showers",30)
local tool = lp.Backpack["April Showers"]
tool.Parent = lp.Character
wait(0.1)
tool:Activate()
lp.Character.HumanoidRootPart.CFrame = CFrame.new(lp:GetMouse().Hit.p.X,lp:GetMouse().Hit.p.Y,lp:GetMouse().Hit.p.Z)
wait()
lp.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,3.6)
wait(15)
game.Players:Chat("gear me 110789105")
lp.Backpack:WaitForChild("RageTable",30)
local tool2 = lp.Backpack["RageTable"]
tool2.Parent = lp.Character
wait(0.1)
tool2:Activate()
end)

addCommand("destroybaseplate",{},function()
    chr.HumanoidRootPart.CFrame = CFrame.new(-57.5680008, 4.93264008, -23.7113419, -0.00361082237, 1.2097874e-07, 0.999993503, 6.45502425e-08, 1, -1.20746449e-07, -0.999993503, 6.41138271e-08, -0.00361082237)
    game.Players:Chat("sit me")
    wait(0.75)
    game.Players:Chat("punish me")
    wait()
    game.Players:Chat("unpunish me")
    wait()
    game.Players:Chat("skydive me")
    wait(0.2)
    game.Players:Chat("respawn me")
end)

addCommand("flipbaseplate",{},function()
    chr.HumanoidRootPart.CFrame = CFrame.new(-57.5680008, 4.93264008, -23.7113419, -0.00361082237, 1.2097874e-07, 0.999993503, 6.45502425e-08, 1, -1.20746449e-07, -0.999993503, 6.41138271e-08, -0.00361082237)
    game.Players:Chat("sit me")
    wait(0.75)
    game.Players:Chat("punish me")
    wait()
    game.Players:Chat("unpunish me")
    wait()
    game.Players:Chat("trip me")
    wait(0.2)
    game.Players:Chat("respawn me")
end)

addCommand("forcerespawn",{},function()
    game.Players.LocalPlayer.Character:Destroy()
end)

addCommand("fixvelocity",{},function()
    for i,v in pairs(workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Velocity = Vector3.new(0,0,0)
        end
    end
end)

addCommand("localremoveobby",{},function()pcall(function()
    workspace.Terrain["_Game"]["Workspace"].Obby.Parent = game.Chat
    workspace.Terrain["_Game"]["Workspace"]["Obby Box"].Parent = game.Chat
end)end)

addCommand("nokill",{},function()pcall(function()
    for i,v in pairs(workspace.Terrain["_Game"]["Workspace"].Obby:GetDescendants()) do
        if v:IsA("TouchTransmitter") then v:Destroy() end
    end
end)end)

addCommand("localaddobby",{},function()pcall(function()
    game.Chat:FindFirstChild("Obby").Parent = workspace.Terrain["_Game"]["Workspace"]
    game.Chat:FindFirstChild("Obby Box").Parent = workspace.Terrain["_Game"]["Workspace"]
end)end)

addCommand("extendlogs",{},function()
    plr.PlayerGui:FindFirstChild("ScrollGui").TextButton.Frame.Size = UDim2.new(0,1000,0,1000)
end)

addCommand("debugcommand",{},function()
    GUI:SendMessage("ii' s St upid Ad min", "more debug text yippee")
end)

Connections.Chatted = game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if not running then return end
    local BM = msg:split(" ")
    if BM[1] == "/e" then
        table.remove(BM,1)
    end
    if string.sub(BM[1],0,#prefix) == prefix then
    local commandname = BM[1]:lower()
    local t = ""
    table.remove(BM,1)
    local findargs = {}
    for i,v in pairs(BM) do
        table.insert(findargs,v)
        t=t..v.." "
    end
    spawn(function()runCommand(commandname,findargs)end)
    if consoleOn then
    print("running command: "..commandname.." "..t)
    end
    end
end)

Connections.PlayerChatted = game.Players.PlayerChatted:Connect(function(PlayerChatType,sender,message)--game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering").OnClientEvent:Connect(function(message)
    local s,f=pcall(function()
    
    --print("["..sender.Name.."]: "..message)
    
    if table.find(Whitelisted,sender.Name) then
        if not running then return end
        local BM = message:split(" ")
        if BM[1] == "/e" then
            table.remove(BM,1)
        end
        if string.sub(BM[1],0,1) == prefix then
        local commandname = BM[1]:lower()
        local t = ""
        table.remove(BM,1)
        local findargs = {}
        for i,v in pairs(BM) do
            table.insert(findargs,v)
            t=t..v.." "
        end
        spawn(function()runCommand(commandname,findargs)end)
        if consoleOn then
        GUI:SendMessage("ii' s St upid Ad min", "running command: "..commandname.." "..t)
        end
        end
    end
    end) if not s then print(f)end
end)

local function PlayerAdded(Player)
    spawn(function()
        repeat wait() until Player and Player.Name
        if table.find(Whitelisted,Player.Name) then
            GUI:SendMessage("ii' s St upid Ad min", "You are whitelisted, "..Player.Name..".\nUse .altcmds to see a list of commands.")
        end
        
        if table.find(Banned,Player.Name) then
            repeat wait() until Player and Player.Character
            wait(0.25)
            if BanSoundsEnabled then
                runCommand(prefix.."potatocrashsound",{v.Name,BanSound})
            else
                runCommand(prefix.."potatocrash",{v.Name})
            end
        end
        
        if ServerLocked and not table.find(Whitelisted,Player.Name) and not table.find(ServerLockedProtection,Player.Name) then
                if ServerLockedSoundEnabled then
                    spawn(function()
                        GUI:SendMessage("ii' s St upid Ad min", "This server is currently locked.")
                    end)
                    wait(0.1)
                    repeat wait() until Player and Player.Character
                    wait(0.25)
                    runCommand(prefix.."potatocrashsound",{Player.Name,ServerLockedSound})
                else
                    spawn(function()
                        GUI:SendMessage("ii' s St upid Ad min", "This server is currently locked.")
                    end)
                    wait(0.1)
                    repeat wait() until Player and Player.Character
                    wait(0.25)
                    runCommand(prefix.."potatocrash",{Player.Name})
                end
            end
    end)
end

Connections.PlayerAdded = game.Players.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(game.Players:GetPlayers()) do PlayerAdded(v) end

spawn(function()
for i,v in pairs(Settings["Autorun Commands"]) do
    if not running then return end
    local BM = v:split(" ")
    local commandname = prefix..BM[1]:lower()
    local t = ""
    table.remove(BM,1)
    local findargs = {}
    for i,v2 in pairs(BM) do
        table.insert(findargs,v2)
        t=t..v2.." "
    end
    spawn(function()runCommand(commandname,findargs)end)
    if consoleOn then
    print("autorunning command: "..commandname.." "..t)
    end
end end)

GUI:SendMessage("ii' s St upid Ad min", "Successfully ran.")
print("Loaded in "..tostring(os.clock()-loadtime).."s")