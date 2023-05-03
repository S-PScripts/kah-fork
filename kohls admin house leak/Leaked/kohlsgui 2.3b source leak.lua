--gui switches
getgenv().allanti = true --enables all antis in the gui if on
getgenv().fakepermadmin = false --gives you perm admin if you dont have the gamepass if on
getgenv().mutemusic = true --enables mutemusic if on [useful for yt showcases]
wait(1) --here because everything breaks if i dont put this here
--start of the script that makes me wanna die
version = "v2.3b"
guiloaded = false
hi = false
players = game:GetService("Players")
function notify(text, value)
    if string.match(tostring(value), "1") then
        warn("kohlsgui - "..text)
    elseif value == 2 then
        print("kohlsgui - "..text)
    end
    if value >= 0 then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "kohlsgui "..version;
            Text = text;
            Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..players.LocalPlayer.UserId.."&width=48&height=48&format=png";
            Duration = 5;
        })
    end
end
if game.PlaceId == 112420803 or game.PlaceId == 115670532 or game.PlaceId == 7525794236 then
if getgenv().fsfsfsfsd then
    notify("kohlsgui has already been loaded :bruh:", 1)
else getgenv().fsfsfsfsd = true
if string.match(version, "beta") then
    notify("This is a beta build, expect bugs/missing features!", 2)
end
notify("Waiting for the game to load...", -1)
repeat wait() until game:IsLoaded()
--workspace stuff
notify("Checking workspace folder...", -1)
function checkfilesystem()
    if not isfolder("kohlsgui") then
        makefolder("kohlsgui")
    end
    if not isfolder("kohlsgui/Configs") then
        makefolder("kohlsgui/Configs")
    end
    if not isfile("kohlsgui/Configs/! readme.txt") then
        writefile("kohlsgui/Configs/! readme.txt", "Hello!\n\nThis is where kohlsgui saves settings.\nDon't mess with them unless you know what you're doing.")
    end
    if not isfolder("kohlsgui/Music IDs") then
        makefolder("kohlsgui/Music IDs")
    end
    if not isfile("kohlsgui/Music IDs/! musiclist.txt") then
        writefile("kohlsgui/Music IDs/! musiclist.txt", "Hello!\n\nThis is where kohlsgui lists Music IDs.\n\n")
    end
    if not isfile("kohlsgui/Music IDs/! readme.txt") then
        writefile("kohlsgui/Music IDs/! readme.txt", "Hello!\n\nThis is where kohlsgui saves stolen Music IDs.")
    end
end
checkfilesystem()
--uilib stuff
notify("Loading UI...", -1)
uilib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
color = Color3.fromRGB(64, 64, 64)
theme = "DarkTheme"
DarkTheme = {
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
LightTheme = {
    Background = Color3.fromRGB(255, 255, 255),
    Header = Color3.fromRGB(200, 200, 200),
    TextColor = Color3.fromRGB(0, 0, 0),
    ElementColor = Color3.fromRGB(224, 224, 224)
}
floor = math.floor
fromInt = function(integer)
    int = tonumber(integer)
    return Color3.fromRGB(floor(int/256^2)%256,floor(int/256)%256,floor(int)%256)
end
toInt = function(col)
    return tostring(floor(col.r*255)*256^2+floor(col.g*255)*256+floor(col.b*255))
end
if isfile("kohlsgui/Configs/ui_theme.cfg") then
    theme = readfile("kohlsgui/Configs/ui_theme.cfg")
end
window = uilib.CreateLib("kohlsgui ["..version.."]", theme)
uilib:ToggleUI()
if isfile("kohlsgui/Configs/ui_color.cfg") then
    color = fromInt(readfile("kohlsgui/Configs/ui_color.cfg"))
    uilib:ChangeColor("SchemeColor", color)
end
if theme == "LightTheme" then
    for i, v in pairs(LightTheme) do
        uilib:ChangeColor(i, v)
    end
    if color == Color3.fromRGB(64, 64, 64) then
        uilib:ChangeColor("SchemeColor", Color3.fromRGB(150, 150, 150))
    end
end
--tabs
hometab = window:NewTab("Home")
abusivetab = window:NewTab("Abusive")
antitab = window:NewTab("Anti")
gearstab = window:NewTab("Gears")
keybindstab = window:NewTab("Keybinds")
misctab = window:NewTab("Miscellaneous")
playerstab = window:NewTab("Players")
settingstab = window:NewTab("Settings")
creditstab = window:NewTab("Credits")
--sections
server = hometab:NewSection("Server")
basicfunctions = hometab:NewSection("Basic Functions")
localplayer = hometab:NewSection("LocalPlayer")
commands = hometab:NewSection("Commands")
admin = abusivetab:NewSection("Admin")
abusiveloops = abusivetab:NewSection("Abusive Loops")
ui = antitab:NewSection("UI")
character = antitab:NewSection("Character")
explosives = gearstab:NewSection("Explosives")
guns = gearstab:NewSection("Guns")
swords = gearstab:NewSection("Swords")
vehicles = gearstab:NewSection("Vehicles")
kits = gearstab:NewSection("Kits [AdminJoy]")
othergears = gearstab:NewSection("Other Gears")
uikeybinds = keybindstab:NewSection("UI")
commandkeybinds = keybindstab:NewSection("Commands")
colorcorrection = misctab:NewSection("ColorCorrection")
moveparts = misctab:NewSection("Move Parts")
music = misctab:NewSection("Music")
server3 = misctab:NewSection("Server")
playernamesection = playerstab:NewSection("Player Name")
playerfunctions = playerstab:NewSection("Player Functions")
floatingheadsettings = settingstab:NewSection("Floating Head [Players]")
rocketsettings = settingstab:NewSection("Rocket [Players]")
uisettings = settingstab:NewSection("UI [kohlsgui]")
credits = creditstab:NewSection("Credits")
externalcredits = creditstab:NewSection("External Credits")
--functions
notify("Loading Functions...", -1)
gamefolder = workspace.Terrain["_Game"]
lighting = game:GetService("Lighting")
mps, runs = game:GetService("MarketplaceService"), game:GetService("RunService")
funy = string.rep("0", 280)
colorcorrectioninstance, val = nil
function joinanotherserver()
    notify("Finding a server to join...", 0)
    wait(0.5)
    while wait(0.1) do
        HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
        ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
        for _, s in pairs(ServersToTP.data) do
            if s.playing ~= s.maxPlayers then
                TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
            end
        end
    end
end
function makecolorcorrection(value)
    val = value
    for _, v in pairs(game:GetService("Lighting"):GetChildren()) do
        if v.ClassName == "ColorCorrectionEffect" then
            v:Destroy()
        end
    end
    colorcorrectioninstance = Instance.new("ColorCorrectionEffect", game:GetService("Lighting"))
    wait()
    if value == 1 then
        colorcorrectioninstance.Saturation = -1
    elseif value == 2 then
        colorcorrectioninstance.Brightness = 9e8
        colorcorrectioninstance.Contrast = 9e9
    elseif value == 3 then
        colorcorrectioninstance.Contrast = 9e9
        colorcorrectioninstance.Saturation = 9e9
        colorcorrectioninstance.TintColor = Color3.new(1,0,0)
    elseif value == 4 then
        colorcorrectioninstance.Saturation = -2
    end
end
function sendKeyPress(object, pressed, key) --yaami i just stole ur code now suck a cock :>
	args = {
		[1] = "KeyPress",
		[2] = {
		["Key"] = key,
		["Down"] = pressed,
		},
	}
	workspace[players.LocalPlayer.Name][object].ServerControl:InvokeServer(unpack(args))
end
function contains(table, val) --ty Diego Pino on stackoverflow.com <3
   for i=1,#table do
      if table[i] == val then 
         return true
      end
   end
   return false
end
multi = math.random(1,100)
function movebrick(brick)
	if brick.CFrame.Y < 500 then
		cf = players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		humanoid = players.LocalPlayer.Character:FindFirstChild("Humanoid")
		torso = players.LocalPlayer.Character:FindFirstChild("Torso")
		wait(0.1)
		for i = 1,10 do
			wait()
			humanoid:ChangeState(11)
			cf.CFrame = brick.CFrame * CFrame.new(-1*(brick.Size.X/2)-(torso.Size.X/2), 0, 0)
		end
		players:Chat("punish me")
		wait(0.1)
		players:Chat("unpunish me")
		wait(0.1)
		multi = math.random(1,100)
		for i = 1,multi do players:Chat("skydive me") end
		wait(0.25)
		players:Chat("respawn me")
		wait(0.1)
	end
end
rokvalue = false
function removeobbykill()
	tempbrick = gamefolder.Workspace.Obby:GetChildren()[math.random(#gamefolder.Workspace.Obby:GetChildren())]
	if tempbrick:FindFirstChild("TouchInterest") == nil then
		rokvalue = true
	end
	for i,v in ipairs(gamefolder.Workspace.Obby:GetChildren()) do
		if v:FindFirstChild("TouchInterest") then
			v.TouchInterest:Destroy()
		end
	end
	return tempvalue
end
--home tab
rejoinserver = server:NewButton("Rejoin Server", "Rejoins your server. Pretty self-explanatory.", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, players.LocalPlayer)
end)
joinanothaserver = server:NewButton("Join Another Server", "Joins another server.", function()
    joinanotherserver()
end)
fakepermadmin = false
if getgenv().fakepermadmin then
    if game.PlaceId == 7525794236 and not mps:UserOwnsGamePassAsync(players.LocalPlayer.UserId, 66254) then
        notify("Fake Perm Admin detected. Enabling fakepermadmin...", -1)
        fakepermadmin = true
    elseif game.PlaceId == 112420803 or game.PlaceId == 115670532 then
        notify("Fake Perm Admin detected. Enabling fakepermadmin...", -1)
        fakepermadmin = true
    end
end
fakepermadmintoggle = basicfunctions:NewToggle("Perm Admin", "Lets you have perm admin w/o having it.", function(state)
    fakepermadmin = state
end)
getadmin = basicfunctions:NewButton("Get Admin", "Gives you admin.", function()
    if gamefolder.Admin.Pads:FindFirstChild(players.LocalPlayer.Name.."'s admin")
    or fakepermadmin then
        notify("You already have admin!", 0)
    else if game.PlaceId == 7525794236 and not mps:UserOwnsGamePassAsync(players.LocalPlayer.UserId, 66254) then
    notify("You already have admin!", 0)
    else pad = gamefolder.Admin.Pads:FindFirstChild("Touch to get admin")
    firetouchinterest(players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), pad.Head, 0)
    firetouchinterest(players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), pad.Head, 1)
end end end)
regenadmin = basicfunctions:NewButton("Regen Admin", "Resets everyone's admin.", function()
    fireclickdetector(gamefolder.Admin.Regen.ClickDetector, 0)
end)
walkspeed = localplayer:NewSlider("WalkSpeed", "Changes your walkspeed.", 500, 16, function(v)
    players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = v
end)
jumppower = localplayer:NewSlider("JumpPower", "Changes your jumppower.", 500, 50, function(v)
    players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = v
end)
gravity = localplayer:NewSlider("Gravity", "Changes the gravity. [client-side]", 196.2, 0, function(v)
    workspace.Gravity = v
end)
noclip = false
nocliptoggle = localplayer:NewToggle("Noclip", "Lets you phase through objects/walls.", function(state)
    noclip = state
    if not noclip then
        for _, v in ipairs(players.LocalPlayer.Character:GetChildren()) do
            if v.ClassName == "Part" and v.Name ~= "Ball" then
                v.CanCollide = true
            end
        end
    end
end)
infinitejump = false
infinitejumptoggle = localplayer:NewToggle("Infinite Jump", "Lets you jump as high as your heart desires.", function(state)
    infinitejump = state
end)
spamsupergui = commands:NewButton("Silent + Spam CMDs", "Loads it. Requires admin for functions.", function()
    local a=Instance.new("ScreenGui")local b=Instance.new("Frame")local c=Instance.new("TextBox")local d=Instance.new("TextLabel")local e=Instance.new("TextButton")local f=Instance.new("TextButton")local g=Instance.new("TextButton")local h=Instance.new("TextButton")a.Name="Silent CMDs"a.Parent=game.CoreGui;a.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;b.Name="Main"b.Parent=a;b.Active=true;b.BackgroundColor3=Color3.fromRGB(255,255,255)b.Position=UDim2.new(0.0220170617,0,0.79061377,0)b.Selectable=true;b.Size=UDim2.new(0,427,0,100)b.Style=Enum.FrameStyle.ChatBlue;b.Draggable=true;c.Parent=b;c.BackgroundColor3=Color3.fromRGB(255,255,255)c.Position=UDim2.new(0.0585480034,0,0.099999994,0)c.Size=UDim2.new(0,200,0,50)c.Font=Enum.Font.SourceSans;c.PlaceholderText="Insert CMD here"c.Text=""c.TextColor3=Color3.fromRGB(0,0,0)c.TextSize=14.000;d.Name="Title"d.Parent=b;d.BackgroundColor3=Color3.fromRGB(255,255,255)d.BorderSizePixel=0;d.Position=UDim2.new(0.222012192,0,-0.245000005,0)d.Size=UDim2.new(0,71,0,21)d.Font=Enum.Font.SourceSansItalic;d.Text="Silent + Spam CMDs"d.TextColor3=Color3.fromRGB(0,0,0)d.TextSize=14.000;e.Name="Close"e.Parent=b;e.BackgroundColor3=Color3.fromRGB(255,255,255)e.BorderSizePixel=0;e.Position=UDim2.new(0.960550189,0,-0.19999665,0)e.Size=UDim2.new(0,30,0,21)e.Font=Enum.Font.SourceSansBold;e.Text="x"e.TextColor3=Color3.fromRGB(0,0,0)e.TextSize=14.000;e.TextScaled=true;f.Name="Execute"f.Parent=b;f.BackgroundColor3=Color3.fromRGB(162,162,207)f.BorderSizePixel=0;f.Position=UDim2.new(0.683674991,0,0,0)f.Size=UDim2.new(0,95,0,23)f.Font=Enum.Font.SourceSans;f.Text="Execute"f.TextColor3=Color3.fromRGB(0,0,0)f.TextSize=14.000;g.Name="Spam"g.Parent=b;g.BackgroundColor3=Color3.fromRGB(207,162,162)g.BorderSizePixel=0;g.Position=UDim2.new(0.683674991,0,0.33,0)g.Size=UDim2.new(0,95,0,23)g.Font=Enum.Font.SourceSans;g.Text="Spam"g.TextColor3=Color3.fromRGB(0,0,0)g.TextSize=14.000;h.Name="Super"h.Parent=b;h.BackgroundColor3=Color3.fromRGB(162,207,162)h.BorderSizePixel=0;h.Position=UDim2.new(0.683674991,0,0.66,0)h.Size=UDim2.new(0,95,0,23)h.Font=Enum.Font.SourceSans;h.Text="Super"h.TextColor3=Color3.fromRGB(0,0,0)h.TextSize=14.000;e.MouseButton1Click:Connect(function()a:Destroy()end)f.MouseButton1Click:Connect(function()game:GetService("Players"):Chat(tostring(c.Text))end)h.MouseButton1Click:Connect(function()for i=1,250 do game:GetService("Players"):Chat(tostring(c.Text))end end)g.MouseButton1Click:Connect(function()if g.Text=="Spam"then g.Text="Stop"elseif g.Text=="Stop"then g.Text="Spam"end;while wait()do if g.Text=="Stop"then game:GetService("Players"):Chat(tostring(c.Text))elseif g.Text=="Spam"then break end end end)
end)
--abusive tab
regenongetallpads = false
regenongetallpadstoggle = admin:NewToggle("Regen Pads on Get All Pads?", "If on, the function below will regen the pads aswell.", function(state)
    regenongetallpads = state
end)
getallpads = admin:NewButton("Get All Pads", "Gets all the pads.", function()
    if regenongetallpads then
        fireclickdetector(gamefolder.Admin.Regen.ClickDetector, 0)
    end
    for i, pad in pairs(gamefolder.Admin.Pads:GetChildren()) do
        firetouchinterest(players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), pad.Head, 0)
        firetouchinterest(players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), pad.Head, 1)
    end
end)
loopregenpads = false
loopregenpadstoggle = abusiveloops:NewToggle("Loop Regen Pads", "Keeps resetting pads until you turn it off.", function(state)
    loopregenpads = state
end)
loopgetallpads = false
loopgetallpadstoggle = abusiveloops:NewToggle("Loop Get All Pads", "Keeps getting all pads until you turn it off.", function(state)
    loopgetallpads = state
    if state then
        fireclickdetector(gamefolder.Admin.Regen.ClickDetector, 0)
    end
end)
if game.PlaceId == 112420803 or game.PlaceId == 115670532 then
    server2 = abusivetab:NewSection("Crash Server")
    crashmethod = false
    crashmethoddropdown = server2:NewDropdown("Crash Method", "Selects the crash method.", {"vampire", "size all"}, function(currentOption)
        crashmethod = currentOption
    end)
    crashbutton = server2:NewButton("Crash Server", "Crashes the server. Requires admin.", function()
        if crashmethod then
            if crashmethod == "vampire" then
                players:Chat("gear me "..funy.."94794847")
                vampire = players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher")
                players.LocalPlayer.Character.Humanoid:EquipTool(vampire)
                for i = 1,10 do
                    players:Chat("size me .3")
                    wait()
                end
            elseif crashmethod == "size all" then
                for i = 1,10 do
                    for i = 1,3 do players:Chat("size all .3") end
                    players:Chat("freeze all")
                    for i = 1,3 do players:Chat("size all 10") end
                    players:Chat("clone all")
                end
            end
            notify("Server crashed. :trole:", 0)
            joinanotherserver()
        else notify("Crash method not selected.", 0)
        end
    end)
end
--anti tab
antiblind = false
antigrayscale = false
antiwhiteblind = false
antiexplosion = false
antifreeze = false
antifire = false
antijail = false
antikill = false
antipunish = false
antiseizure = false
antismoke = false
antiblindtoggle = ui:NewToggle("Anti-Blind", "If on, prevents getting blinded.", function(state)
    antiblind = state
	if players.LocalPlayer.PlayerGui:FindFirstChild("EFFECTGUIBLIND") and antiblind then
		players.LocalPlayer.PlayerGui.EFFECTGUIBLIND:Destroy()
	end
end)
antigrayscaletoggle = ui:NewToggle("Anti-GrayScale", "If on, prevents having your screen grayscaled.", function(state)
    antigrayscale = state
end)
antiwhiteblindtoggle = ui:NewToggle("Anti-WhiteBlind", "If on, prevents getting blinded by a periastron.", function(state)
    antiwhiteblind = state
	if players.LocalPlayer.PlayerGui:FindFirstChild("Blind") and antiwhiteblind then
		players.LocalPlayer.PlayerGui.Blind:Destroy()
	end
end)
antiexplosiontoggle = character:NewToggle("Anti-Explosion", "If on, prevents explosions from lagging you.", function(state)
    antiexplosion = state
end)
antifreezetoggle = character:NewToggle("Anti-Freeze", "If on, prevents getting frozen. Requires admin.", function(state)
    antifreeze = state
	if players.LocalPlayer.Character:FindFirstChild("ice") and antifreeze then
		players:Chat("thaw me")
	end
end)
antifiretoggle = character:NewToggle("Anti-Fire", "If on, prevents having a fire. Requires admin.", function(state)
    antifire = state
	if players.LocalPlayer.Character.Torso:FindFirstChild("Fire") and antifire then
		players:Chat("unfire me")
	end
end)
antijailtoggle = character:NewToggle("Anti-Jail", "If on, prevents getting jailed. Requires admin.", function(state)
    antijail = state
	if gamefolder.Folder:FindFirstChild(players.LocalPlayer.Name.."'s jail") and antijail then
		players:Chat("unpunish me")
	end
end)
antikilltoggle = character:NewToggle("Anti-Kill", "if on, prevents getting killed. Requires admin.", function(state)
    antikill = state
	if players.LocalPlayer.Character.Humanoid.Health == 0 and antikill then
		players:Chat("reset me")
	end
end)
antipunishtoggle = character:NewToggle("Anti-Punish", "If on, prevents getting punished. Requires admin.", function(state)
    antipunish = state
	if lighting:FindFirstChild(players.LocalPlayer.Name) and antipunish then
		players:Chat("unpunish me")
	end
end)

antiseizuretoggle = character:NewToggle("Anti-Seizure", "If on, prevents getting seizured. Requires admin.", function(state)
    antiseizure = state
	if players.LocalPlayer.Character:FindFirstChild("Seizure") and antiseizure then
		players:Chat("unseizure me")
	end
end)
antismoketoggle = character:NewToggle("Anti-Smoke", "If on, prevents getting smoked. Requires admin.", function(state)
    antismoke = state
	if players.LocalPlayer.Character:FindFirstChild("Torso"):FindFirstChild("Smoke") and antismoke then
		players:Chat("unsmoke me")
	end
end)
antisparklestoggle = character:NewToggle("Anti-Sparkles", "If on, prevents getting sparkled. Requires admin.", function(state)
    antisparkles = state
	if players.LocalPlayer.Character:FindFirstChild("Torso"):FindFirstChild("Sparkles") and antisparkles then
		players:Chat("normal me")
	end
end)
antiswagtoggle = character:NewToggle("Anti-Swag", "If on, prevents getting 'swagged'. Requires admin.", function(state)
    antiswag = state
	if players.LocalPlayer.Character:FindFirstChild("EpicCape") and antiswag then
		players:Chat("normal me")
	end
end)
--gears tab
gear1e = explosives:NewButton("Bad Bunny", "Gives a Bad Bunny. Requires admin.", function()
    players:Chat("gear me "..funy.."24839406")
end)
gear2e = explosives:NewButton("CocoWHAAA?", "Gives a CocoWHAAA?. Requires admin.", function()
    players:Chat("gear me "..funy.."24396804")
end)
gear3e = explosives:NewButton("Subspace Tripmine", "Gives a Subspace Tripmine. Requires admin.", function()
    players:Chat("gear me "..funy.."11999247")
end)
gear4e = explosives:NewButton("Intern Racing Chair", "Gives an Intern Racing Chair. Requires admin.", function()
    players:Chat("gear me "..funy.."169602388")
end)
gear5e = explosives:NewButton("Scroll of Sevenless", "Gives a Scroll of Sevenless. Requires admin.", function()
    players:Chat("gear me "..funy.."125013830")
end)
gear6e = explosives:NewButton("Airstrike", "Gives an Airstrike. Requires admin.", function()
    players:Chat("gear me "..funy.."88885539")
end)
gear1g = guns:NewButton("Historic 'Timmy' Gun", "Gives a Historic 'Timmy' Gun. Requires admin.", function()
    players:Chat("gear me "..funy.."116693764")
end)
gear2g = guns:NewButton("Luger Pistol", "Gives a Luger Pistol. Requires admin.", function()
    players:Chat("gear me "..funy.."95354288")
end)
gear3g = guns:NewButton("The General's .45", "Gives a The General's .45. Requires admin.", function()
    players:Chat("gear me "..funy.."97885508")
end)
gear4g = guns:NewButton("Trench Warfare Shotgun", "Gives a Trench Warfare Shotgun. Requires admin.", function()
    players:Chat("gear me "..funy.."94233344")
end)
gear5g = guns:NewButton("Hyperlaser Gun", "Gives a Hyperlaser Gun. Requires admin.", function()
    players:Chat("gear me "..funy.."130113146")
end)
gear6g = guns:NewButton("Transmorph Ray Gun", "Gives a Transmorph Ray Gun. Requires admin.", function()
    players:Chat("gear me "..funy.."29099749")
end)
gear1s = swords:NewButton("Sword of Light", "Gives a Sword of Light. Requires admin.", function()
    players:Chat("gear me "..funy.."77443461")
end)
gear2s = swords:NewButton("Ivory Periastron", "Gives an Ivory Periastron. Requires admin.", function()
    players:Chat("gear me "..funy.."108158379")
end)
gear3s = swords:NewButton("Nightmare Dragon Slayer", "Gives a Nightmare Dragon Slayer. Requires admin.", function()
    players:Chat("gear me "..funy.."1103011681")
end)
gear4s = swords:NewButton("Chartreuse Periastron Gamma", "Gives a Chartreuse Periastron. Requires admin.", function()
    players:Chat("gear me "..funy.."80661504")
end)
gear5s = swords:NewButton("Rainbow Periastron Omega", "Gives a Rainbow Periastron. Requires admin.", function()
    players:Chat("gear me "..funy.."159229806")
end)
gear6s = swords:NewButton("Telamonster: the Chaos Edge", "Gives a Telamonster. Requires admin.", function()
    players:Chat("gear me "..funy.."93136746")
end)
gear1v = vehicles:NewButton("Pompous, the Cloud", "Gives a Pompous, the Cloud. Requires admin.", function()
    players:Chat("gear me "..funy.."107458483")
end)
gear2v = vehicles:NewButton("Rainbow Disco Hyperbike", "Gives a Rainbow Disco Hyperbike. Requires admin.", function()
    players:Chat("gear me "..funy.."215355157")
end)
gear3v = vehicles:NewButton("Red Convertible", "Gives a Red Convertible. Requires admin.", function()
    players:Chat("gear me "..funy.."164207580")
end)
gear4v = vehicles:NewButton("Red Rolling Hoverboard", "Gives a Red Rolling Hoverboard. Requires admin.", function()
    players:Chat("gear me "..funy.."2350119937")
end)
gear5v = vehicles:NewButton("RC Tank", "Gives a RC Tank. Requires admin.", function()
    players:Chat("gear me "..funy.."83021197")
end)
gear6v = vehicles:NewButton("Ultimate Drive Speedster", "Gives an Ultimate Drive Speedster. Requires admin.", function()
    players:Chat("gear me "..funy.."253519495")
end)
gear1k = kits:NewButton("Heal", "Gives a Heal kit. Requires admin.", function()
    players:Chat("gear me "..funy.."11419319")
    players:Chat("gear me "..funy.."61916132")
    players:Chat("gear me "..funy.."115377964")
    players:Chat("gear me "..funy.."2316760298")
    players:Chat("gear me "..funy.."2103276507")
end)
gear2k = kits:NewButton("Troll", "Gives a Troll kit. Requires admin.", function()
    players:Chat("gear me "..funy.."82357101")
    players:Chat("gear me "..funy.."94794847")
    players:Chat("gear me "..funy.."243788010")
    players:Chat("gear me "..funy.."268586231")
end)
gear3k = kits:NewButton("God", "Gives a God kit. Requires admin.", function()
    players:Chat("gear me "..funy.."159229806")
    players:Chat("gear me "..funy.."93136802")
    players:Chat("gear me "..funy.."108158379")
    players:Chat("gear me "..funy.."73829193")
    players:Chat("gear me "..funy.."69499437")
    players:Chat("gear me "..funy.."80661504")
    players:Chat("gear me "..funy.."120307951")
    players:Chat("gear me "..funy.."99119240")
    players:Chat("gear me "..funy.."94794774")
    players:Chat("gear me "..funy.."71037101")
    players:Chat("gear me "..funy.."93136746")
end)
gear4k = kits:NewButton("Dark", "Gives a Dark kit. Requires admin.", function()
    players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 32
    players:Chat("paint me black")
    players:Chat("cape me black")
    players:Chat("removehats me")
    players:Chat("removeface me")
    players:Chat("name me  ")
    players:Chat("trail me black")
    players:Chat("gear me "..funy.."108149175")
end)
gear5k = kits:NewButton("Magic", "Gives a Magic kit. Requires admin.", function()
    players:Chat("gear me "..funy.."2316760298")
    players:Chat("gear me "..funy.."127506105")
    players:Chat("gear me "..funy.."10760425")
    players:Chat("gear me "..funy.."66416616")
    players:Chat("gear me "..funy.."2261167878")
    players:Chat("gear me "..funy.."27860496")
end)
gear6k = kits:NewButton("Bomb", "Gives a Bomb kit. Requires admin.", function()
    players:Chat("gear me "..funy.."11999247")
    players:Chat("gear me "..funy.."12890798")
    players:Chat("gear me "..funy.."243788010")
    players:Chat("gear me "..funy.."88885539")
end)
gear1o = othergears:NewButton("Paint Bucket", "Gives a Paint Bucket. Requires admin.", function()
    players:Chat("gear me "..funy.."18474459")
end)
gear2o = othergears:NewButton("Laser Finger Pointers", "Gives a Laser Finger Pointers. Requires admin.", function()
    players:Chat("gear me "..funy.."115377964")
end)
gear3o = othergears:NewButton("Portable Justice", "Gives a Portable Justice. Requires admin.", function()
    players:Chat("gear me "..funy.."82357101")
end)
gear4o = othergears:NewButton("Medusa Head", "Gives a Medusa Head. Requires admin.", function()
    players:Chat("gear me "..funy.."89487934")
end)
gear5o = othergears:NewButton("Stop Hitting Yourself", "Gives a Stop Hitting Yourself. Requires admin.", function()
    players:Chat("gear me "..funy.."91360104")
end)
gear6o = othergears:NewButton("Instant Treehouse", "Gives an Instant Treehouse. Requires admin.", function()
    players:Chat("gear me "..funy.."119917513")
end)
--keybinds tab
flykeybind = commandkeybinds:NewKeybind("fly me", "Enables fly by pressing the key. Requires admin.", Enum.KeyCode.Z, function()
	players:Chat("fly me")
end)
ffkeybind = commandkeybinds:NewKeybind("ff me", "Enables ff by pressing the key. Requires admin.", Enum.KeyCode.X, function()
    players:Chat("ff me")
end)
resetkeybind = commandkeybinds:NewKeybind("reset me", "Resets you by pressing the key. Requires admin.", Enum.KeyCode.C, function()
    players:Chat("reset me")
end)
respawnkeybind = commandkeybinds:NewKeybind("respawn me", "Respawns you by pressing the key. Requires admin.", Enum.KeyCode.V, function()
    players:Chat("respawn me")
end)
skydivekeybind = commandkeybinds:NewKeybind("skydive me", "Skydives you by pressing the key. Requires admin.", Enum.KeyCode.B, function()
    players:Chat("skydive me")
end)
tpmememe = commandkeybinds:NewKeybind("tp me me me", "Phases you by pressing the key. Requires admin.", Enum.KeyCode.N, function()
    players:Chat("tp me me me")
end)
--misc tab
rgbhell, mutemusic = false, false
reset = colorcorrection:NewButton("Reset", "Resets your screen.", function()
    makecolorcorrection(0)
end)
blackandwhite = colorcorrection:NewButton("Black and White", "Makes your screen look like a B&W film.", function()
    makecolorcorrection(1)
end)
deepfry = colorcorrection:NewButton("Deep Fry", "Makes your screen look like a trash meme.", function()
    makecolorcorrection(2)
end)
hell = colorcorrection:NewButton("h e l l", "Makes your screen look like h e l l.", function()
    makecolorcorrection(3)
end)
reversecolors = colorcorrection:NewButton("Reverse Colors", "Makes your screen colors reversed.", function()
    makecolorcorrection(4)
end)
rgbhelltoggle = colorcorrection:NewToggle("rgb h e l l", "Makes your h e l l scream rgb.", function(state)
    if state and val == 3 then
        rgbhell = true
    elseif state and val ~= 3 then
        rgbhell = false
        if val == 3 then
            makecolorcorrection(val)
        end
        notify("Screen isn't h e l l.", 0)
    else rgbhell = false
        if val == 3 then
            makecolorcorrection(val)
        end
    end
end)
moveadminpads = moveparts:NewButton("Move Admin Pads", "Moves the Admin Pads. Requires admin.", function()
	pos = players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	for _, v in ipairs(gamefolder.Admin.Pads:GetDescendants()) do
		if v.Name == "Head" then
			for i = 1,5 do movebrick(v) end
		end
	end
	players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = pos
	notify("Admin Pads have (already) been moved!", 0)
end)
moveadminresetpad = moveparts:NewButton("Move Admin Reset Pad", "Moves the Admin Reset Pad. Requires admin.", function()
	pos = players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	brick = gamefolder.Admin:FindFirstChild("Regen")
	for i = 1,5 do movebrick(brick) end
	players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = pos
	notify("Admin Reset Pad has (already) been moved!", 0)
end)
moveobbybox = moveparts:NewButton("Move Obby Box", "Moves the Obby Box. Requires admin.", function()
	pos = players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	for _, v in ipairs(gamefolder.Workspace["Obby Box"]:GetChildren()) do
		for i = 1,5 do movebrick(v) end
	end
	players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = pos
	notify("Obby Box has (already) been moved!", 0)
end)
moveobbykill = moveparts:NewButton("Move Obby Lava", "Moves the lava on the obby. Requires admin.", function()
	removeobbykill()
	pos = players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	for _, v in ipairs(gamefolder.Workspace.Obby:GetChildren()) do
		for i = 1,5 do movebrick(v) end
	end
	players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = pos
	notify("Obby Lava has (already) been moved!", 0)
end)
mutemusictoggle = music:NewToggle("Mute Music", "Mutes the music. [client-side]", function(state)
    mutemusic = state
    if not state and gamefolder.Folder:FindFirstChild("Sound") then
        gamefolder.Folder.Sound.Volume = 1
    end
end)
stealid = music:NewButton("Steal Music ID", "Steals the current Music ID, if it exists.", function()
    if gamefolder.Folder:FindFirstChild("Sound") then
        checkfilesystem()
        id = string.match(gamefolder.Folder.Sound.SoundId, "%d+")
        name = mps:GetProductInfo(id).Name
        if not isfile("kohlsgui/Music IDs/"..id..".txt") then
            writefile("kohlsgui/Music IDs/"..id..".txt", id.." - "..name)
            appendfile("kohlsgui/Music IDs/! musiclist.txt", id.." - "..name.."\n")
        end
        notify("Check workspace for the Music ID. "..id, 2)
    else notify("Music not found.", 0)
    end
end)
icespawn = server3:NewButton("Make Ice Spawn", "Makes a giant spawn out of ice. Requires admin.", function()
    players:Chat("respawn me")
    wait(0.1)
    hrt = players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    hrt.CFrame = gamefolder.Workspace.Spawn3.CFrame
    players:Chat("freeze me")
    players:Chat("ff me")
    for i = 2,10 do players:Chat("size me "..i) end
end)
removeobbykil = server3:NewButton("Remove Obby Kill", "Makes the obby not kill you. [client-side]", function()
	removeobbykill()
	if rokvalue then
		notify("Obby Kill has already been removed!", 0)
	else notify("Obby Kill has been removed!", 0)
	end
end)
retexture = server3:NewButton("Retexture Map", "Retextures the map into stone. Requires admin.", function()
    players:Chat("ungear me")
    repeat wait() until #players.LocalPlayer.Backpack:GetChildren() == 0
    for i = 1,2 do players:Chat("gear me "..funy.."59190534") end
    repeat wait() until #players.LocalPlayer.Backpack:GetChildren() == 2
    for _, v in ipairs(players.LocalPlayer.Backpack:GetChildren()) do
	    players.LocalPlayer.Character.Humanoid:EquipTool(v)
	    players.LocalPlayer.Character:WaitForChild("StatueStaffOfStonyJustice")
	    sendKeyPress("StatueStaffOfStonyJustice", true, "x") -- tell the server to press X
    end
end)
--players tab
playername = false
function getname(text) --ty FighterRBX on robloxforum.com <3
	playerfound = false
    for _, v in ipairs(players:GetChildren()) do
        if string.sub(string.lower(v.Name), 1, string.len(text)) == string.lower(text) then
        	playerfound = true
            return v.Name
        end
    end
    if not playerfound then
    	return false
    end
end
playernametextbox = playernamesection:NewTextBox("Player Name", "Gets the player name. [no display names]", function(txt)
	playername = getname(txt)
	if not playername then
		notify("Player not found.", 0)
	else notify("Player found: \n"..playername, 0)
	end
end)
adminvarslist = {"all", "admins", "me", "nonadmins", "others", "random"}
adminvars = playernamesection:NewDropdown("Admin Variables", "Sets the player name to the variable.", adminvarslist, function(currentOption)
    playername = currentOption
    notify("Admin Variable selected: \n"..currentOption, 0)
end)
bangears = playerfunctions:NewButton("Ban Gears", "Gets a player banned from gears. Requires admin.", function()
	if not playername then
		notify("Player not found or not inputted.", 0)
	elseif contains(adminvarslist, playername) then
        notify("This function doesn't work with admin variables.", 0)
    else pos = players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
    players:Chat("gear me "..funy.."82357101")
    jail = players.LocalPlayer.Backpack:WaitForChild("PortableJustice")
    players.LocalPlayer.Character.Humanoid:EquipTool(jail)
    players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[playername].HumanoidRootPart.CFrame
    wait(0.1)
	players.LocalPlayer.Character:WaitForChild("PortableJustice").MouseClick:FireServer(workspace[playername])
	workspace[playername]:WaitForChild("DisableBackpack")
    wait(0.1)
    players:Chat("reset "..playername)
    players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = pos
	end
end)
blockifyplayer = playerfunctions:NewButton("Blockify Player", "Blockifies the player. Requires admin.", function()
	if not playername then
		notify("Player not found or not inputted.", 0)
	else players:Chat("size "..playername.." nan")
	 players:Chat("unsize "..playername)
	end
end)
glitchplayer = playerfunctions:NewButton("Glitch Player", "Glitches the player. Requires admin.", function()
	if not playername then
		notify("Player not found or not inputted.", 0)
	else players:Chat("speed "..playername.." inf")
	end
end)
floatheadval = 3
floatheadmulti = 1
floatinghead = playerfunctions:NewButton("Floating Head [normal heads only]", "Makes the player head float. Requires admin.", function()
	if not playername then
		notify("Player not found or not inputted.", 0)
	else for i = 1,floatheadmulti do players:Chat("size "..playername.." 0."..floatheadval) end
	players:Chat("bighead "..playername)
	players:Chat("unsize "..playername)
	end
end)
rrocket = false
rocketplayer = playerfunctions:NewButton("Rocket Player", "Makes the player a rocket. Requires admin.", function()
	if not playername then
		notify("Player not found or not inputted.", 0)
	else players:Chat("dog "..playername)
	players:Chat("size "..playername.." 0.3")
    if rrocket then
        players:Chat("trail "..playername.." rainbow")
	end end
end)
trapplayer = playerfunctions:NewButton("Trap Player", "Traps the player. Requires admin.", function()
	if not playername then
		notify("Player not found or not inputted.", 0)
	else players:Chat("freeze "..playername)
	players:Chat("name "..playername.." ")
	players:Chat("thaw "..playername)
	end
end)
untrapplayer = playerfunctions:NewButton("Un-Trap Player", "Un-Traps the player. Requires admin.", function()
	if not playername then
		notify("Player not found or not inputted.", 0)
	else players:Chat("unname "..playername)
	end
end)
--settings tab
floatheadvalslider = floatingheadsettings:NewSlider("Value", "Sets the Floating Head value. lower = better", 9, 3, function(s)
    floatheadval = s
end)
floatheadmultislider = floatingheadsettings:NewSlider("Multiplier", "Amplifies the Floating Head. higher = better", 3, 1, function(s)
    floatheadmulti = s
end)
rrockettoggle = rocketsettings:NewToggle("Rainbow Rocket", "If on, a rocket will be rainbow.", function(state)
    rrocket = state
end)
changecolor = uisettings:NewColorPicker("Change Color", "Changes the color. [rainbow not supported]", color, function(c)
    color = c
end)
setcolor = uisettings:NewButton("Set Color", "Sets the color. [saves it aswell]", function()
    checkfilesystem()
    writefile("kohlsgui/Configs/ui_color.cfg", toInt(color))
    uilib:ChangeColor("SchemeColor", color)
end)
resetcolor = uisettings:NewButton("Reset Color", "Resets the color. [backs up the save aswell]", function()
    checkfilesystem()
    if isfile("kohlsgui/Configs/ui_color.cfg") then
        tempcolor = readfile("kohlsgui/Configs/ui_color.cfg")
        delfile("kohlsgui/Configs/ui_color.cfg")
        writefile("kohlsgui/Configs/ui_color_"..math.random()..".bak", tempcolor)
    end
    if theme == "DarkTheme" then
        uilib:ChangeColor("SchemeColor", Color3.fromRGB(64, 64, 64))
    else uilib:ChangeColor("SchemeColor", Color3.fromRGB(150, 150, 150))
    end
end)
themetoggle = uisettings:NewToggle("Dark/Light Theme", "Toggles between dark and light theme. [saves]", function(state)
    checkfilesystem()
    if state then
        writefile("kohlsgui/Configs/ui_theme.cfg", "LightTheme")
        for i, v in pairs(LightTheme) do
            uilib:ChangeColor(i, v)
        end
        if color == Color3.fromRGB(64, 64, 64) then
            uilib:ChangeColor("SchemeColor", Color3.fromRGB(150, 150, 150))
        end
    else
        writefile("kohlsgui/Configs/ui_theme.cfg", "DarkTheme")
        for i, v in pairs(DarkTheme) do
            uilib:ChangeColor(i, v)
        end
        if color == Color3.fromRGB(150, 150, 150) then
            uilib:ChangeColor("SchemeColor", Color3.fromRGB(64, 64, 64))
        end
    end
end)
--credits tab
damix = credits:NewButton("Damix2131 - size all crash method", "He also helped with Join Another Server.", function()
    do end
end)
muhara = credits:NewButton("muhara#6937 [catboxer125] - backend dev", "[no description here]", function()
    notify("isn't muhara#6937 just a sexy guy?", 0)
end)
fighterrbx = externalcredits:NewButton("FighterRBX - helped with Player Name", "robloxforum.com", function()
    setclipboard("https://robloxforum.com/threads/string-match-to-auto-fill-usernames.68390/post-375587")
    notify("Copied link to clipboard!", 0)
end)
undonebuilder = externalcredits:NewButton("UndoneBuilder - helped with UI Color saving", "devforum.roblox.com", function()
    setclipboard("https://devforum.roblox.com/t/integer-hex-support-for-color3/169819/10")
    notify("Copied link to clipboard!", 0)
end)
xheptc = externalcredits:NewButton("xHeptc - ui lib", "very sexy indeed", function()
    setclipboard("hhttps://xheptcofficial.gitbook.io/kavo-library")
    notify("Copied link to clipboard!", 0)
end)
--internal shit
workspace.ChildAdded:connect(function(i)
	if i.Name == players.LocalPlayer.Name then
		lp = i
        humanoid = i:WaitForChild("Humanoid")
        humanoid.Died:connect(function()
            if antikill then
                players:Chat("reset me")
            end
        end)
        lp.ChildAdded:connect(function(i2)
            if i2.Name == "ice" and antifreeze then
                players:Chat("thaw me")
            end
            if i2.Name == "Seizure" and antiseizure then
                players:Chat("unseizure me")
            end
            if i2.Name == "EpicCape" and antiswag then
                players:Chat("normal me")
            end
        end)
        lp:WaitForChild("Torso").ChildAdded:connect(function(i3)
            if i3.Name == "Fire" and antifire then
                players:Chat("unfire me")
            end
            if i3.Name == "Smoke" and antismoke then
                players:Chat("unsmoke me")
            end
            if i3.Name == "Sparkles" and antisparkles then
                players:Chat("unsparkles me")
            end
        end)
    end
end)
game:GetService("Lighting").ChildAdded:connect(function(i4)
    wait()
	if i4.Name == players.LocalPlayer.Name and antipunish then
		players:Chat("unpunish me")
	end
end)
gamefolder.Folder.ChildAdded:connect(function(i5)
    wait()
	if i5.Name == players.LocalPlayer.Name.."'s jail" and antijail then
		players:Chat("unjail me")
	end
end)
players.LocalPlayer.PlayerGui.ChildAdded:connect(function(i6)
    wait()
	if i6.Name == "EFFECTGUIBLIND" and antiblind then
		i6:Destroy()
	end
	if i6.Name == "Blind" and antiwhiteblind then
		i6:Destroy()
	end
end)
workspace.DescendantAdded:connect(function(i7)
    wait()
    if i7.Name == "Explosion" and antiexplosion then
        i7:Destroy()
    end
end)
game:GetService("UserInputService").JumpRequest:connect(function()
    if infinitejump then
        players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
    end
end)
game:GetService("ScriptContext").Error:Connect(function(message)
    if string.match(message, "HTTP 429") then
        notify("Server could not be found. Retrying in a sec...", 0)
    elseif string.match(message, "attempt to index nil with 'Head'")
    or string.match(message, "Touch to get admin") then
        if getgenv().fakepermadmin then
            fakepermadmin = false
            if not guiloaded then
                hi = true
                notify("No pad has been found.", 0)
                joinanotherserver()
            else notify("No pad has been found. Join another server I guess.", 0)
            end
        end
    end
end)
game:GetService("RunService").Stepped:Connect(function()
    if noclip then
        for _, v in ipairs(players.LocalPlayer.Character:GetChildren()) do
            if v.ClassName == "Part" then
                v.CanCollide = false
            end
        end
    end
    if loopregenpads then
        fireclickdetector(gamefolder.Admin.Regen.ClickDetector, 0)
    end
    if loopgetallpads then
        for _, pad in pairs(gamefolder.Admin.Pads:GetChildren()) do
            firetouchinterest(players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), pad.Head, 0)
            firetouchinterest(players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), pad.Head, 1)
        end
    end
    if fakepermadmin
    and gamefolder.Admin.Pads:FindFirstChild(players.LocalPlayer.Name.."'s admin") == nil then
        pad = gamefolder.Admin.Pads:FindFirstChild("Touch to get admin")
        firetouchinterest(players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), pad.Head, 0)
        firetouchinterest(players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), pad.Head, 1) 
    end
	if antigrayscale and workspace.CurrentCamera:FindFirstChild("GrayScale") then
		workspace.CurrentCamera.GrayScale:Destroy()
	end
    if val == 3 and rgbhell then
        game:GetService("Lighting").ColorCorrection.TintColor = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
    end
    if mutemusic and gamefolder.Folder:FindFirstChild("Sound") then
        gamefolder.Folder.Sound.Volume = 0
    end
end)
--respawn character
wait(0.1)
if not guiloaded and not hi then
    notify("Waiting for character to respawn...", -1, false)
    if not fakepermadmin
    and not mps:UserOwnsGamePassAsync(players.LocalPlayer.UserId, 66254) then
    players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    pos = players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
    players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
    repeat wait() until players.LocalPlayer.Character.Humanoid.Health ~= 0
    players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    else players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
    repeat wait() until players.LocalPlayer.Character.Humanoid.Health == 0
    players:Chat("reset me")
    end
    if getgenv().allanti then
        notify("All Anti detected! Enabling all antis...", -1)
        antiblind = true
		antigrayscale = true
        antiwhiteblind = true
        antiexplosion = true
        antifreeze = true
        antifire = true
        antijail = true
        antikill = true
        antipunish = true
        antiseizure = true
        antismoke = true
    end
    if getgenv().mutemusic then
        notify("Mute Music detected! Enabling mutemusic...", -1)
        mutemusic = true
    end
    uilib:ToggleUI()
    notify("Loading done! :D", 2)
    toggleuikeybind = uikeybinds:NewKeybind("Toggle UI", "Toggles the UI by pressing the key.", Enum.KeyCode.LeftControl, function()
        uilib:ToggleUI()
    end)
    if game.PlaceId == 115670532 then
        notify("Gears might not work in R15.", 0)
    end
    guiloaded = true
end
end
else notify("You aren't in Kohls Admin House. :bruh:", 1)
end
--end of the script that makes me wanna die