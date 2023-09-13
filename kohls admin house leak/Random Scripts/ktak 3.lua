	print([[
	Version: 52.1/made message deleter op (?), small optimizations
	Changelog:
	9/22/2021:
	improved message deleter
	i do not test my code before updating it
	5/22/2021:
	lgear + kpaint copy and pasted in hopefully it works  :troll:
	
	planned whenever i feel like it: //fp [audio-id]: would force the audio you play and if any other id is played it'll play your audio id again
	//fpoff


	--

	--trueantikill will most likely not work if you are running these commands in order from likeliness disable to fix:
	--["crashserver","pmlag","nlag","loopexplode","partspam"]
	--requestadmin will always work as long as you are alive and these parts exist: regen button, admin pads.

	--
	
	
	
	Help:
	Prefix: "//"
	
	dm ████████████ if there are any problems or suggestions
	
	Commands:
	"trueantikill" (enabled by default, disables on first use)
	"crashserver" (sometimes the server won't crash, but it'll still freeze for long enough for some or all people to leave)
	"mcrashserver" (does what crashserver does but says "meanie!" in ":h" before crashing)
	"shiftcrash" (gives everyone a broken camera and then crashes the server)
	"mshiftcrash" (gives everyone a broken camera and then says "meanie!" in ":h" and crashes the server)
	"gearpack" (gives you incredibly overpowered gears)
	"rangedpack" (gives you meh gears)
	"requestadmin" (resets admin and gives you all admin pads, good for stopping abusers without the perm admin gamepass)
	"loopkill [player]" (automatically kills the specified player every wait(1))
	"loopkilloff" (disables loopkill for all players, no i will not make it disable for one player)
	"loopexplode [player]" (automatically explodes and respawns the player)
	"loopexplodeoff" (disables loopexplode for all players, no i will not make it disable for one player)
	"improveday" (visual improvement, looks best with default everything colors)
	"shiftlock" (broken shiftlock for all, camera won't move, might only work if they equip it)
	"loopfling" (repeatedly flings the specified player until "//loopflingoff" is said)
	"loopflingoff" (disables loopfling for all players)
	"everythingisred" (paints everything red, keep paint bucket held and don't lose it or it'll break obviously)
	"==1cs" (paints everything magenta, keep paint bucket held or it'll break obviously)
	"box [player]" (it turns you into a box what else did you expect? might not work when you do all or others)
	"crowdcontrol" (automatically resets everyone and tps them to you)
	"freedom" (stops controlling the crowd, stops //crowdcontrol)
	"protection" (remade, stops other exploiters from being able to lag you by resetting you every wait(1) )
	"protectionoff" (disables exploiter protection, see command above this for more info)
	"nlag" (lags a player using pm)
	"lagoff" (stops lag if it wasn't automatic, lag commands should automatically disable)
	"giveantikill [player]" (gives another player antikill)
	"removeantikill [player]" (removes antikill from another player)
	"gearplr [player] [gear]" paint,timestop,radio,treehouse,airstrike
	"gearprint" prints all the gears you can use in gearplr in the console (f9)
	"ineed@someone" @someone is needed (works better with persons or prisoners gamepass)
	"igot@someone" Discord now has @someone! (disables ineed@someone)
	"rejoinserver" rejoins the server
	"messagedeleter" deletes pms and maybe :m(s) (command turns it on/off) can stop exploiters from lagging you
	"savetools [packname] [ids]" make your own gearpacks
	"loadtools [playername] [packname]" load your own gearpacks, if you want to edit or delete them go to the workspace folder of your magic-thing and open gearpacks.txt
	"loopres [plr]" loop respawns a player
	"loopresoff"
	"thorns" karma for every command someone uses against you, persons admin and something else is not supported.
	"thornswl" give thorns
	"rthorns" remove thorns
	"nowplaying" print the currently playing sound id
	"whitelistuser [player]" allows the user to use most of the scripts commands
	"unwhitelist [player]" unwhitelists the user
	"antimusic" disables music whenever its added
	"restore [player]"
	"disabletools [player]"
	"llogs" make logs laggy
	"flogs" flood logs with random thing
	"explode [player]" alot
	"anticrashon" stops people from using the annoying bat gear
	"anticrashoff" you know what this does don't you?
	"printpacks" prints your gearpacks
	"regen" regens the admin pads
	"antibombon" annoying part velocity gear 
	"antibomboff" annoying part velocity gear anti disabler
	"q [player]" gets them out of your sight
	"afcon" antifreezecrash
	"afcoff" antifreezecrashoff
	"antidog" (toggle, enabled by default)
	
	lgear:
	"lgear [gearid]" loopgear
	"lgoff" stop looping PLEASE HOW DO I TURN IT OFF Help
	"wtime [number]" change how fast lgear loops
	
	paint:
	"rpaint" paint everything random
	"paint [number] [number] [number]" paint everything a custom color
	"spaint [obby,house,obbybox,buildingbricks] [number] [number] [number]"
	antipartmove commands:
	"antipartmove" [TOGGLE] prevents people from moving parts (respawns them and prints who they are, ENABLED BY DEFAULT)
	"partwhitelist" [player] whitelists a player from antipartmove
	"unpartwhitelist" [player] you know what this does, you're a fool if you don't
	
	autopunish commands:
	"autopunish" automatically punishes players
	
	"autopunish player [playername]" automatically punishes a certain player
	"autopunishoff player [playername]" stops autopunishing a certain player
	
	"autopunish wl [player]" stops a user from getting punished by autopunish
	"autopunish unwl [player]" unwhitelists a player
	
	"autopunish whitelist [player]" stops a user from getting punished by autopunish
	"autopunish unwhitelist [player]" unwhitelists a player
	
	antikill + thorns + dthorns = semi-immortality
	
	Gamepass Commands:
	"rocketfailure [player]" (sends player on a space mission via a fast moving untested rocket, spoiler: BOOM!)
	"pmlag [player]" (does //nlag but better prisoners299 admin needed)
	
	mini person tutorial:
	1. //box [player]
	4. undog [player]
	counting
	don't think this is good enough for a command
	--]])
	
	local players = game:GetService("Players")
	local lplayer = players.LocalPlayer
	local chatted = lplayer.Chatted
	local gamefolder = game:GetService("Workspace").Terrain["_Game"]
	local market = game:GetService("MarketplaceService")
	local lagtext = game:HttpGetAsync("https://raw.githubusercontent.com/exceptional0/kohlsantikill/master/largetext.txt")
	local removesong = false	
	local SfolderS = game.Workspace.Terrain["_Game"].Folder
	local Debris = game:GetService("Debris")
	--lagtext and anti lava blocks is from oofkohlsv2
	if _G.spermisloading then
	repeat
	wait(0.3)
	until _G.permloaded
	end
	-- // Anti Lava Blocks from oofkohlsv2
	for _,v in pairs(gamefolder.Workspace.Obby:GetDescendants()) do
    if v:IsA("TouchTransmitter") then
    v:Destroy()
    end
	end
	SfolderS.ChildAdded:connect(function(NOMOOSICPLS)
	if NOMOOSICPLS.Name == "Sound" and removesong == true then
	task.defer(NOMOOSICPLS.Destroy,NOMOOSICPLS)
	end
	end)
	getgenv().messagedeleter = true
	print("message deleter is on by default, protects you from being lagged.")
	lplayer.PlayerGui.ChildAdded:Connect(function(messagedeleter)
	if messagedeleter.Name == "MessageGUI" and getgenv().messagedeleter or messagedeleter.Name == "HintGUI" and getgenv().messagedeleter then
	task.defer(messagedeleter.Destroy,messagedeleter)
	end
	end)
	lplayer.PlayerGui.ChildAdded:Connect(function(messagedeleter2)
	if messagedeleter2:IsA("Message") and getgenv().messagedeleter then
	task.defer(messagedeleter2.Destroy,messagedeleter2)
	end
	end)
	--10 - QMCMAS, remix by Keiichi Suzuki 46:40
	SfolderS.ChildAdded:Connect(function(messagedeleter3)
	if messagedeleter3:IsA("Message") and getgenv().messagedeleter then
	task.defer(messagedeleter3.Destroy,messagedeleter3)
	end
	end)

	--// gamepass autogive admin 
	--note: too lazy to improve
	if not market:UserOwnsGamePassAsync(lplayer.UserId, 66254) and not _G.permloaded then
    local path = game:GetService("Workspace").Terrain["_Game"].Admin.Pads
    for i,v in pairs(path:GetChildren()) do
        if v.Name:match("Touch to get") and v:FindFirstChildOfClass("Part") then
            for x,y in pairs(path:GetDescendants()) do
                if y:IsA("TouchTransmitter") then
                    firetouchinterest(lplayer.Character.HumanoidRootPart, y.Parent, 0)
                    wait()
                    firetouchinterest(lplayer.Character.HumanoidRootPart, y.Parent, 1)
                end
            end
        else
            fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
            wait()
            for x,y in pairs(path:GetDescendants()) do
                if y:IsA("TouchTransmitter") then
                    firetouchinterest(lplayer.Character.HumanoidRootPart, y.Parent, 0)
                    wait()
                    firetouchinterest(lplayer.Character.HumanoidRootPart, y.Parent, 1)
                end
            end
            end
    end
	end
	wait(2.5)
	

	--// locals setup 
	local trueantikill = true
	local loopexplode = false
	
	--//findname
function getplr(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
    if Target == "all" then
        for i,v in pairs(game.Players:GetPlayers()) do
            table.insert(Found,v)
        end
    elseif Target == "others" then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found,v)
            end
        end   
	elseif Target == "me" then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found,v)
            end
        end  
    else
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end

local function cget(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    return Found    
end
	local function xget(name)
	local name2 = name
	for i2,v2 in pairs(cget(name)) do
	if v2 ~= nil then
	name2 = v2
	end
	end
	return name2
	end
	
	--// Anti Spam Kill (first execute)
	coroutine.wrap(function()
	players:Chat("god me")
	lplayer.Character.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and trueantikill == true then
	players:Chat("god me")
	end
	end)
	
	players:Chat(":ff me")
	lplayer.Character.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and trueantikill == true then
	players:Chat("ff me")
	end
	end)
	
	lplayer.Character:WaitForChild("Humanoid").Died:Connect(function(doometernal)
    if trueantikill == true then 
	players:Chat("reset me")
	
	wait(0.2)
	
	players:Chat("god me")
	players:Chat("ff me")
	
	
	lplayer.Character.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and trueantikill == true then
	players:Chat("god me")
	end
	end)
	
	lplayer.Character.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and trueantikill == true then
	players:Chat("ff me")
	end
	end)
	end
	end)

	--// Anti Spam Kill (On Death Restart)
	lplayer.CharacterAdded:connect(function(char)
	lplayer.Character:WaitForChild("Humanoid").Died:Connect(function(doometernal)
    if trueantikill == true then 
	players:Chat("reset me")
	
	wait(0.2)
	
	players:Chat("god me")
	players:Chat("ff me")
	
	wait(0)
	
	lplayer.Character.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and trueantikill == true then
	players:Chat("god me")
	end
	end)
	
	lplayer.Character.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and trueantikill == true then
	wait(0)
	players:Chat("ff me")
	end
	end)
	end
	end)
	end)
	end)()
	local hmmmmmmmmmmmmmmmmmmmmmmmmm = true
	lplayer.Character.ChildAdded:Connect(function(pissed)
	if pissed.Name == "Addon" and pissed:IsA("Seat") and hmmmmmmmmmmmmmmmmmmmmmmmmm == true then
	players:Chat("undog me")
	end
	end)
	local Name = "gearpacks.txt"
	local idtable = {}

	if not pcall(function() readfile(Name) end) then writefile(Name, game:service'HttpService':JSONEncode(idtable)) end

	local gearpacks = game:service'HttpService':JSONDecode(readfile(Name))

	local function Save()
	writefile(Name,game:service'HttpService':JSONEncode(gearpacks))
	end



	local function savegearpack(name, ...)
	local ids = {...}
	gearpacks[name] = ids
	print("saving..")
	print("saved in " ..name.. ":", unpack(ids))
	print("say //loadtools " ..name.. " to use it!")
	Save()
	end
	
	--fixed somehow
	local function loadgearpack(plrname, gpname)
	local ChosenPlayer = xget(plrname).Name or xget(plrname)
	local bees = tostring(gpname)
	print(bees)
	if gearpacks[bees] ~= nil then
	print("gearpack has been found!")
	local minn = 1
	repeat
	wait(0.054)
	local maxn = #gearpacks[bees]
	players:Chat("gear " ..ChosenPlayer.. " " ..string.rep("0",13).. "" ..unpack(gearpacks[bees],minn,minn).. "")
	minn = minn + 1
	until minn == maxn + 1
	else
	print("gearpack is nil please check if you made any errors if not dm exceptional#8287!")
	print(bees)
	end
	end
	--loopexplodeon,loopkillon,loopflingon,nlagon,pmlagon,loopreson,protectionon
	local whitelistedtable = {
	users = {},
	antikillon = {},
	thornson = {},
	defenseon = {},
	loopexplodeon = {},
	loopflingon = {},
	loopkillon = {},
	nlagon = {},
	pmlagon = {},
	loopreson = {},
	protectionon = {},
	gearstealeron = {},
	previouswhitelistedusers = {}
	}
	local function removefromtable(Table,playername)
	for i = 1,#Table do
	local zZZ = Table[i]
	if zZZ == playername then
	table.remove(Table,i)
	end
	end
	end
	
	local function whitelistplr(user) 
	local whuser = ""
	local WatchInuXBokuSS = ""
	for i,v in pairs(getplr(user)) do
	whuser = v
	end
	if whuser ~= nil then
	local whchatted = whuser.Chatted
	local whname = whuser.Name
	local whchar = whuser.Character
	table.insert(whitelistedtable.users, whname)
	table.insert(whitelistedtable.antikillon, whname)
	if not table.find(whitelistedtable.previouswhitelistedusers, whname) then
	table.insert(whitelistedtable.previouswhitelistedusers, whname)
		--// Anti Spam Kill (first execute)
	players:Chat("god " ..whname.. "")
	whchar.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and table.find(whitelistedtable.antikillon, whname) then
	players:Chat("god me")
	end
	end)
	players:Chat(":ff " ..whname.. "")
	whchar.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and table.find(whitelistedtable.antikillon, whname) then
	players:Chat("ff " ..whname.. "")
	end
	end)
	whchar:WaitForChild("Humanoid").Died:Connect(function(doometernal)
    if table.find(whitelistedtable.antikillon, whname) then 
	print("died")
	players:Chat("reset " ..whname.. "")
	
	wait(0.2)
	
	players:Chat("god " ..whname.. "")
	players:Chat("ff " ..whname.. "")
	
	
	whchar.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and table.find(whitelistedtable.antikillon, whname) then
	players:Chat("god " ..whname.. "")
	end
	end)
	
	whchar.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and table.find(whitelistedtable.antikillon, whname) then
	players:Chat("ff " ..whname.. "")
	end
	end)
	end
	end)
	--// Anti Spam Kill (On Death Restart)
	whuser.CharacterAdded:connect(function(charv)
	whchar = whuser.Character
	wait(0)
	whchar:WaitForChild("Humanoid").Died:Connect(function(doometernal)
    if table.find(whitelistedtable.antikillon, whname) then 
	players:Chat("reset " ..whname.. "")
	
	wait(0.2)
	
	players:Chat("god " ..whname.. "")
	players:Chat("ff " ..whname.. "")
	
	
	whchar.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and table.find(whitelistedtable.antikillon, whname) then
	players:Chat("god " ..whname.. "")
	end
	end)
	
	whchar.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and table.find(whitelistedtable.antikillon, whname) then
	players:Chat("ff " ..whname.. "")
	end
	end)
	end
	end)
	end)
	whchatted:Connect(function(msg)
	if table.find(whitelistedtable.users, whname) then
	if msg:lower() == "//trueantikill" then
	if not table.find(whitelistedtable.antikillon, whname) then
	table.insert(whitelistedtable.antikillon, whname)
	else
	removefromtable(whitelistedtable.antikillon, whname)
	end
	elseif msg:lower() == "//crashserver" then
	local prefix = ":"
	local lplrispossiblycool1 = players
	local lplrispossiblycool = lplrispossiblycool1.LocalPlayer
	local lname = lplrispossiblycool.Name
	game.Players:Chat(prefix.. "gear all 94794847")
	lplrispossiblycool.Backpack:WaitForChild("VampireVanquisher")
	repeat
	wait()
	until lplrispossiblycool.Character.HumanoidRootPart ~= nil
	lplrispossiblycool.Backpack.VampireVanquisher.Parent = lplrispossiblycool.Character
	for i=1,10 do
	game.Players:Chat(prefix.. "size all 0.3")
	wait(0.2)
	end
	elseif msg:match("//gearpack") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	local person = v.Name
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "92142829")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "94233344")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "117544573")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "268586231")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "68539623")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "45177979")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "233520257")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "87361662")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "233520257")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "71037101")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "212641536")
	wait(0.1)
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "99119240")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "212296936")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "292969139")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "79446473")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "127506257")
	wait()
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "97885508")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "16924676")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "106064315")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "77443461")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "80576967")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "60357972")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "61459706")
	wait(0.3)
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "61459706")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "82357101")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "82357123")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "1208300505")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "26421972")
	end
	elseif msg:match("//rangedpack") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "139577901")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "94233286")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "115377964")
	wait()
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "116693764")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "1145358579")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "243788599")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "21420014")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "30847685")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "85879456")
	wait(0.1)
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "34898883")
	end
	elseif msg:match("//rocketfailure") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	local person = v.Name
	chicken:Chat("rocket/" ..person.. "")
	wait()
	chicken:Chat("spin " ..person.. "")
	wait(0.2)
	chicken:Chat("jump " ..person.. "")
	wait(2)
	chicken:Chat("explode " ..person.. "")
	end
	elseif msg:match("//improveday") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	chicken:Chat("time 7")
	wait()
	chicken:Chat("colorshifttop 600 400 0")
	chicken:Chat("colorshiftbottom 600 400 0")
	elseif msg:match("//shiftlock") then
	local splitstring = string.split(msg, " ")
	local person = splitstring[2]
	players:Chat("gear all " ..string.rep("0",13).. "4842207161")
	lplayer.Backpack:WaitForChild("AR")
	lplayer.Backpack.AR.Parent = lplayer.Character
	wait(0.3)
	if lplayer.Character:FindFirstChild("AR") then
	lplayer.Character.AR.Parent = lplayer.Backpack
	end
	elseif msg:match("//everythingisred") then
	local splitstring = string.split(msg, " ")
	local person = splitstring[2]
	game.Players:Chat("gear me  " ..string.rep("0",13).. "18474459")
	wait(0.1)
	lplayer.Backpack:WaitForChild("PaintBucket")
	lplayer.Backpack.PaintBucket.Parent = lplayer.Character
	lplayer.Character:WaitForChild("PaintBucket")
	lplayer.Character.PaintBucket:WaitForChild("Remotes")
	lplayer.Character.PaintBucket.Remotes:WaitForChild("ServerControls")
	local a = workspace:GetDescendants()
	local egg = lplayer.Character.PaintBucket.Remotes.ServerControls
	local ColorSelection = BrickColor.new("Really red").Color
	for i, v in pairs(a) do
	if v:IsA("BasePart") then
	local Data = {}
	Data.Part = v
	Data.Color = ColorSelection
	local A_1 = "PaintPart"
	local A_2 = Data
	local event = lplayer.Character.PaintBucket.Remotes.ServerControls
	event:InvokeServer(A_1, A_2)
	end
	end
	elseif msg:match("//everythingismagenta") then
	local splitstring = string.split(msg, " ")
	local person = splitstring[2]
	game.Players:Chat("gear me " ..string.rep("0",13).. "18474459")
	wait(0.1)
	lplayer.Backpack:WaitForChild("PaintBucket")
	lplayer.Backpack.PaintBucket.Parent = lplayer.Character
	lplayer.Character:WaitForChild("PaintBucket")
	lplayer.Character.PaintBucket:WaitForChild("Remotes")
	lplayer.Character.PaintBucket.Remotes:WaitForChild("ServerControls")
	wait(0.6)
	local a = workspace:GetDescendants()
	local egg = lplayer.Character.PaintBucket.Remotes.ServerControls
	local ColorSelection = BrickColor.new("Magenta").Color
	for i, v in pairs(a) do
	if v:IsA("BasePart") then
	local Data = {}
	Data.Part = v
	Data.Color = ColorSelection
	local A_1 = "PaintPart"
	local A_2 = Data
	local event = lplayer.Character.PaintBucket.Remotes.ServerControls
	event:InvokeServer(A_1, A_2)
	end
	end
	elseif msg:match("//mcrashserver") then	
	local prefix = ":"
	local lplrispossiblycool1 = players
	local lplrispossiblycool = lplrispossiblycool1.LocalPlayer
	local lname = lplrispossiblycool.Name
	lplrispossiblycool1:Chat("h meanie!")
	lplrispossiblycool1:Chat(prefix.. "gear all " ..string.rep("0",13).. "94794847")
	lplrispossiblycool.Backpack:WaitForChild("VampireVanquisher")
	repeat
	wait()
	until lplrispossiblycool.Character.HumanoidRootPart ~= nil
	lplrispossiblycool.Backpack.VampireVanquisher.Parent = lplrispossiblycool.Character
	for i=1,10 do
	lplrispossiblycool1:Chat(prefix.. "size all 0.3")
	wait(0.2)
	end
	elseif msg:match("//mshiftcrash") then
	local prefix = ":"
	
	players:Chat("gear all " ..string.rep("0",13).. "4842207161")
	lplayer.Backpack:WaitForChild("AR")
	lplayer.Backpack.AR.Parent = lplayer.Character
	wait(0.3)
	lplayer.Character.AR.Parent = lplayer.Backpack
	wait(0.5)
	players:Chat("h meanie!")
	for i=1,3 do
	game.Players:Chat(prefix.. "size all 0.3")
	wait(0.2)
	end
	game.Players:Chat(prefix.. "freeze all")
	wait(0.2)
	for i=1,3 do
	game.Players:Chat(prefix.. "size all 10")
	wait(0.2)
	end
	game.Players:Chat(prefix.. "clone all")
	wait(0.2)
	elseif msg:match("//shiftcrash") then
	local prefix = ":"
	
	players:Chat("gear all " ..string.rep("0",13).. "4842207161")
	lplayer.Backpack:WaitForChild("AR")
	lplayer.Backpack.AR.Parent = lplayer.Character
	wait(0.3)
	lplayer.Character.AR.Parent = lplayer.Backpack
	wait(0.5)
	for i=1,3 do
	game.Players:Chat(prefix.. "size all 0.3")
	wait(0.2)
	end
	game.Players:Chat(prefix.. "freeze all")
	wait(0.2)
	for i=1,3 do
	game.Players:Chat(prefix.. "size all 10")
	wait(0.2)
	end
	game.Players:Chat(prefix.. "clone all")
	wait(0.2)
	elseif msg:match("//box") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	local person = v.Name
	players:Chat("size " ..person.. " 0.3")
	players:Chat("size " ..person.. " 0.3")
	players:Chat("size " ..person.. " 0.3")
	wait(0.1)
	players:Chat("size " ..person.. " 0.3")
	players:Chat("size " ..person.. " 0.3")
	players:Chat("size " ..person.. " 0.3")
	wait(0.1)
	players:Chat("size " ..person.. " 0.3")
	wait(0.1)
	players:Chat("size " ..person.. " 1.5")
	players:Chat("size " ..person.. " 2")
	players:Chat("size " ..person.. " 2")
	players:Chat("size " ..person.. " 2")
	players:Chat("size " ..person.. " 2")
	players:Chat("size " ..person.. " 2")
	end
	elseif msg:match("//gearplr") then
	local splitstring = string.split(msg, " ")
	local bird = players
	local person = splitstring[2]
	local gearimp = splitstring[3]
	local gearstr = gearimp:lower()
	if gearstr == "paint" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "18474459")
	end
	elseif gearstr == "radio" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "212641536")
	end
	elseif gearstr == "timestop" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "71037101")
	end
	elseif gearstr == "airstrike" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "88885539")
	end
	elseif gearstr == "treehouse" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "119917513")
	end
	elseif gearstr == "zombiestaff" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "26421972")
	end
	elseif gearstr == "bodyswap" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "78730532")
	end
	elseif gearstr == "ultimateyellowcar" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "253519495")
	end
	elseif gearstr == "megaphone" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "44116233")
	end
	elseif gearstr == "snowballcannon" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "67755182")
	end
	elseif gearstr == "medusasword" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "59190534")
	end
	elseif gearstr == "rmagiccarpet" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "225921000")
	end
	elseif gearstr == "deluxecarpet" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "477910063")
	end
	elseif gearstr == "procket" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "298085284")
	end
	elseif gearstr == "subtripmine" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "11999247")
	end
	elseif gearstr == "bombotable" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "243788010")
	end
	elseif gearstr == "cameraglitch" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "987032734")
	end
	elseif gearstr == "sensglitch" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "68354832")
	end
	elseif gearstr == "arshiftlock" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "4842207161")
	end
	elseif gearstr == "darkheart" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "16895215")
	end
	elseif gearstr == "rcwand" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "75550883")
	end
	elseif gearstr == "exceptionalsfavorite" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "75941738")
	end
	end
	elseif msg:match("//loadtools") then
	local splitstring = string.split(msg, " ")
	local bird1 = players
	local person = splitstring[2]
	local impname = splitstring[3]
	loadgearpack(person,impname)
	elseif msg:lower() == "//printpacks" then
	print(unpack(gearpacks))
	elseif msg:lower() == "//regen" then
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
	elseif msg:match("//disabletools") then
	local splitstring = string.split(msg, " ")
	local personiwanttobrutallymurder = splitstring[2]
	for i,v in pairs(getplr(personiwanttobrutallymurder)) do
	personiwanttobrutallymurder = v
	end
	local channel6 = players
	local lplayerisimportant = channel6.LocalPlayer
	local backpack = lplayerisimportant.Backpack
	channel6:Chat("gear me " ..string.rep("0",13).. "82357101")
	backpack:WaitForChild("PortableJustice")
	local toolremover = backpack.PortableJustice
	if channel6.LocalPlayer.Character ~= nil then
	toolremover.Parent = channel6.LocalPlayer.Character
	toolremover = channel6.LocalPlayer.Character.PortableJustice
	end
	if personiwanttobrutallymurder.Character ~= nil and toolremover ~= nil then
	toolremover:WaitForChild("MouseClick")
	channel6:Chat("fly " ..personiwanttobrutallymurder.Name.. "")
	channel6:Chat("tp " ..personiwanttobrutallymurder.Name.. " me")
	channel6:Chat("unff " ..personiwanttobrutallymurder.Name.. "")
	wait(0)
	wait(0.1)
	local arg1 = personiwanttobrutallymurder.Character
	local notarg = lplayerisimportant.Character.PortableJustice.MouseClick
	notarg:FireServer(arg1)
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()
	elseif toolremover ~= nil then
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()
	end
	elseif msg:lower() == "//antimusic" then
	if removesong == true then
	removesong = false
	else
	removesong = true
	players:Chat("music")
	end
	end
	end
	end)
	
	local function lagishthefoolish2(foolishfish)
	local speakish = players
	speakish:Chat("pm/" ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("pm/" ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("pm/" ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("pm/" ..foolishfish.. " " ..lagtext.. "")
	end

	wait(0)
	--loop commands (enable)
	whchatted:Connect(function(msg)
	if table.find(whitelistedtable.users, whname) then
	if msg:match(" ") then
	local splitstring = string.split(msg, " ")
	local TALKTALKTALKTALK = players
	local chicken = players
	local foolishfool = splitstring[2]
	for i,v in pairs(getplr(foolishfool)) do
	foolishfool = v.Name
	end
	
	if splitstring[1]:lower() == "//loopres" then
	if not table.find(whitelistedtable.loopreson, whname) then
	table.insert(whitelistedtable.loopreson, whname)
	end
	repeat
	wait(0.2)
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	until players:FindFirstChild(foolishfool) == nil or table.find(whitelistedtable.loopreson, whname) == nil
	elseif splitstring[1]:lower() == "//nlag" then
	local splitstring = string.split(msg, " ")
	if not table.find(whitelistedtable.nlagon, whname) then
	table.insert(whitelistedtable.nlagon, whname)
	end
	repeat
	wait(0.2)
	TALKTALKTALKTALK:Chat("pm " ..foolishfool.. " " ..lagtext.. "")
	TALKTALKTALKTALK:Chat("pm " ..foolishfool.. " " ..lagtext.. "")
	TALKTALKTALKTALK:Chat("pm " ..foolishfool.. " " ..lagtext.. "")
	until game.Players:FindFirstChild(foolishfool) == nil or table.find(whitelistedtable.nlagon, whname) == nil
	elseif splitstring[1]:lower() == "//pmlag" then
	if not table.find(whitelistedtable.pmlagon, whname) then
	table.insert(whitelistedtable.pmlagon, whname)
	end
	repeat
	wait(0.4)
	lagishthefoolish2(foolishfool)
	until game.Players:FindFirstChild(foolishfool) == nil or table.find(whitelistedtable.pmlagon, whname) == nil
	elseif splitstring[1]:lower() == "//loopexplode" then
	if not table.find(whitelistedtable.loopexplodeon, whname) then
	table.insert(whitelistedtable.loopexplodeon, whname)
	end
	repeat
	wait()
	TALKTALKTALKTALK:Chat("explode " ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "")
	until game.Players:FindFirstChild(foolishfool) == nil or table.find(whitelistedtable.loopexplodeon, whname) == nil
	elseif splitstring[1]:lower() == "//protection" then
	if not table.find(whitelistedtable.protectionon, whname) then
	table.insert(whitelistedtable.protectionon, whname)
	end
	while wait(1) and table.find(whitelistedtable.protectionon, whname) do
	TALKTALKTALKTALK:Chat("reset " ..whname.. "")
	end
	
	elseif splitstring[1]:lower() == "//loopfling" then
	if not table.find(whitelistedtable.loopflingon, whname) then
	table.insert(whitelistedtable.loopflingon , whname)
	end
	repeat
	wait()
	chicken:Chat("fling " ..foolishfool.. "")
	until game.Players:FindFirstChild(foolishfool) == nil or table.find(whitelistedtable.loopflingon, whname) == nil
	elseif splitstring[1]:lower() == "//loopkill" then
	if not table.find(whitelistedtable.loopkillon, whname) then
	table.insert(whitelistedtable.loopkillon, whname)
	end
	repeat
	chicken:Chat("kill " ..foolishfool.. "")
	until game.Players:FindFirstChild(foolishfool) == nil or table.find(whitelistedtable.loopkillon, whname) == nil
	--end if loopres
	end
	end
	end
	end)
	--// loop commands (disable)
	whchatted:Connect(function(msg)
	if table.find(whitelistedtable.users, whname) then
	if msg:lower() == "//loopexplodeoff" then
	if table.find(whitelistedtable.loopexplodeon, whname) then
	removefromtable(whitelistedtable.loopexplodeon, whname)
	end
	elseif msg:lower() == "//loopkilloff" then
	if table.find(whitelistedtable.loopkillon, whname) then
	removefromtable(whitelistedtable.loopkillon, whname)
	end
	elseif msg:lower() == "//loopflingoff" then
	if table.find(whitelistedtable.loopflingon, whname) then
	removefromtable(whitelistedtable.loopflingon, whname)
	end
	elseif msg:lower() == "//protectionoff" then
	if table.find(whitelistedtable.protectionon, whname) then
	removefromtable(whitelistedtable.protectionon, whname)
	end
	elseif msg:lower() == "//lagoff" then
	if table.find(whitelistedtable.nlagon, whname) then
	removefromtable(whitelistedtable.nlagon, whname)
	end
	if table.find(whitelistedtable.pmlagon, whname) then
	removefromtable(whitelistedtable.pmlagon, whname)
	end
	elseif msg:lower() == "//loopresoff" then
	if table.find(whitelistedtable.loopreson, whname) then
	removefromtable(whitelistedtable.loopreson, whname)
	end
	end
	end
	end)
	--thorns
	
local thornsvictims = players
local inflictthornsdamage = players
local thornsuser = whuser
local thornsusername = whname
local impname = thornsvictims.LocalPlayer.Name
local function checkif(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    return Found    
end


table.insert(whitelistedtable.thornson, whname)

thornsuser.Chatted:Connect(function(message)
if message:lower() == "//thorns" then
if not table.find(whitelistedtable.thornson, whname) then
table.insert(whitelistedtable.thornson, whname)
else
removefromtable(whitelistedtable.thornson, whname)
end
elseif message:lower() == "//dthorns" then
if not table.find(whitelistedtable.defenseon, whname) then
table.insert(whitelistedtable.defenseon, whname)
else
removefromtable(whitelistedtable.defenseon, whname)
end
elseif message:lower() == "//gearstealer" then
if not table.find(whitelistedtable.gearstealeron, whname) then
table.insert(whitelistedtable.gearstealeron, whname)
else
removefromtable(whitelistedtable.gearstealeron, whname)
end
end
end)
for i,v in pairs(thornsvictims:GetPlayers()) do
if v.Name ~= thornsusername and v.Name ~= impname then
v.Chatted:Connect(function(talking)
if talking:match(" ") and table.find(whitelistedtable.thornson, whname) then
	local splitstring = string.split(talking, " ")
	local chicken = players
	local victims = splitstring[2]
	local victim = splitstring[2]
	-- i think i named victimname wrong LOL too late to change it now though
	local victimname = v.Name
	for i,z in pairs(checkif(victim)) do
	if z.Name ~= nil then
	victim = z.Name
	else
	victim = "noonefound!"
	end
	if splitstring[1]:lower() == "kill" and victim == thornsusername or splitstring[1]:lower() == "kill" and victims:lower() == "all" or splitstring[1]:lower() == "kill" and victims:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername or splitstring[1]:lower() == ":kill" and victims:lower() == "all" or splitstring[1]:lower() == ":kill" and victims:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "smoke" and victim == thornsusername or splitstring[1]:lower() == "smoke" and victims:lower() == "all" or splitstring[1]:lower() == "smoke" and victims:lower() == "others" or splitstring[1]:lower() == ":smoke" and victim == thornsusername or splitstring[1]:lower() == ":smoke" and victims:lower() == "all" or splitstring[1]:lower() == ":smoke" and victims:lower() == "others" then
	inflictthornsdamage:Chat("smoke " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	inflictthornsdamage:Chat("unsmoke " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername or splitstring[1]:lower() == "explode" and victims:lower() == "all" or splitstring[1]:lower() == "explode" and victims:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername or splitstring[1]:lower() == ":explode" and victims:lower() == "all" or splitstring[1]:lower() == ":explode" and victims:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername or splitstring[1]:lower() == "respawn" and victims:lower() == "all" or splitstring[1]:lower() == "respawn" and victims:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername or splitstring[1]:lower() == ":respawn" and victims:lower() == "all" or splitstring[1]:lower() == ":respawn" and victims:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername or splitstring[1]:lower() == "unff" and victims:lower() == "all" or splitstring[1]:lower() == "unff" and victims:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername or splitstring[1]:lower() == ":unff" and victims:lower() == "all" or splitstring[1]:lower() == ":unff" and victims:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername or splitstring[1]:lower() == "fling" and victims:lower() == "all" or splitstring[1]:lower() == "fling" and victims:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername or splitstring[1]:lower() == ":fling" and victims:lower() == "all" or splitstring[1]:lower() == ":fling" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("fly " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername or splitstring[1]:lower() == "stun" and victims:lower() == "all" or splitstring[1]:lower() == "stun" and victims:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername or splitstring[1]:lower() == ":stun" and victims:lower() == "all" or splitstring[1]:lower() == ":stun" and victims:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unstun " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername or splitstring[1]:lower() == "fire" and victims:lower() == "all" or splitstring[1]:lower() == "fire" and victims:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername or splitstring[1]:lower() == ":fire" and victims:lower() == "all" or splitstring[1]:lower() == ":fire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername or splitstring[1]:lower() == "bonfire" and victims:lower() == "all" or splitstring[1]:lower() == "bonfire" and victims:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername or splitstring[1]:lower() == ":bonfire" and victims:lower() == "all" or splitstring[1]:lower() == ":bonfire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername or splitstring[1]:lower() == "reset" and victims:lower() == "all" or splitstring[1]:lower() == "reset" and victims:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername or splitstring[1]:lower() == ":reset" and victims:lower() == "all" or splitstring[1]:lower() == ":reset" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername or splitstring[1]:lower() == "jail" and victims:lower() == "all" or splitstring[1]:lower() == "jail" and victims:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername or splitstring[1]:lower() == ":jail" and victims:lower() == "all" or splitstring[1]:lower() == ":jail" and victims:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unjail " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername or splitstring[1]:lower() == "punish" and victims:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername or splitstring[1]:lower() == ":punish" and victims:lower() == "all" or splitstring[1]:lower() == ":punish" and victims:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unpunish " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername or splitstring[1]:lower() == "ungod" and victims:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername or splitstring[1]:lower() == ":ungod" and victims:lower() == "all" or splitstring[1]:lower() == ":ungod" and victims:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername or splitstring[1]:lower() == "damage" and victims:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername or splitstring[1]:lower() == ":damage" and victims:lower() == "all" or splitstring[1]:lower() == ":damage" and victims:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername or splitstring[1]:lower() == "setgrav" and victims:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername or splitstring[1]:lower() == ":setgrav" and victims:lower() == "all" or splitstring[1]:lower() == ":setgrav" and victims:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("grav " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername or splitstring[1]:lower() == "speed" and victims:lower() == "all" or splitstring[1]:lower() == "speed" and victims:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername or splitstring[1]:lower() == ":speed" and victims:lower() == "all" or splitstring[1]:lower() == ":speed" and victims:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername or splitstring[1]:lower() == "name" and victims:lower() == "all" or splitstring[1]:lower() == "name" and victims:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername or splitstring[1]:lower() == ":name" and victims:lower() == "all" or splitstring[1]:lower() == ":name" and victims:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername or splitstring[1]:lower() == "blind" and victims:lower() == "all" or splitstring[1]:lower() == "blind" and victims:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername or splitstring[1]:lower() == ":blind" and victims:lower() == "all" or splitstring[1]:lower() == ":blind" and victims:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unblind " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername or splitstring[1]:lower() == "removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == "removelimbs" and victims:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername or splitstring[1]:lower() == "creeper" and victims:lower() == "all" or splitstring[1]:lower() == "creeper" and victims:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername or splitstring[1]:lower() == ":creeper" and victims:lower() == "all" or splitstring[1]:lower() == ":creeper" and victims:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("uncreeper " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "health" and victim == thornsusername or splitstring[1]:lower() == "health" and victims:lower() == "all" or splitstring[1]:lower() == "health" and victims:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername or splitstring[1]:lower() == ":health" and victims:lower() == "all" or splitstring[1]:lower() == ":health" and victims:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername or splitstring[1]:lower() == "noclip" and victims:lower() == "all" or splitstring[1]:lower() == "noclip" and victims:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername or splitstring[1]:lower() == ":noclip" and victims:lower() == "all" or splitstring[1]:lower() == ":noclip" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("clip " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "char" and victim == thornsusername or splitstring[1]:lower() == "char" and victims:lower() == "all" or splitstring[1]:lower() == "char" and victims:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername or splitstring[1]:lower() == ":char" and victims:lower() == "all" or splitstring[1]:lower() == ":char" and victims:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unchar " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername or splitstring[1]:lower() == "seizure" and victims:lower() == "all" or splitstring[1]:lower() == "seizure" and victims:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername or splitstring[1]:lower() == ":seizure" and victims:lower() == "all" or splitstring[1]:lower() == ":seizure" and victims:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unseizure " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername or splitstring[1]:lower() == "infect" and victims:lower() == "all" or splitstring[1]:lower() == "infect" and victims:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername or splitstring[1]:lower() == ":infect" and victims:lower() == "all" or splitstring[1]:lower() == ":infect" and victims:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername or splitstring[1]:lower() == "freeze" and victims:lower() == "all" or splitstring[1]:lower() == "freeze" and victims:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername or splitstring[1]:lower() == ":freeze" and victims:lower() == "all" or splitstring[1]:lower() == ":freeze" and victims:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("thaw " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername or splitstring[1]:lower() == "clone" and victims:lower() == "all" or splitstring[1]:lower() == "clone" and victims:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername or splitstring[1]:lower() == ":clone" and victims:lower() == "all" or splitstring[1]:lower() == ":clone" and victims:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername or splitstring[1]:lower() == "noobify" and victims:lower() == "all" or splitstring[1]:lower() == "noobify" and victims:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername or splitstring[1]:lower() == ":noobify" and victims:lower() == "all" or splitstring[1]:lower() == ":noobify" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername or splitstring[1]:lower() == "spin" and victims:lower() == "all" or splitstring[1]:lower() == "spin" and victims:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername or splitstring[1]:lower() == ":spin" and victims:lower() == "all" or splitstring[1]:lower() == ":spin" and victims:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unspin " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "gear" and victim ~= thornsusername and table.find(whitelistedtable.gearstealeron,whname) and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" or splitstring[1]:lower() == ":gear" and table.find(whitelistedtable.gearstealeron,whname) and victim ~= thornsusername and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" then
	inflictthornsdamage:Chat("gear " ..thornsusername.. " " ..splitstring[3].. "")
	--end if string == "kill" then
	end
	end
	end
	end)
	end
	end
thornsvictims.PlayerAdded:Connect(function(victimhasjoined)
if victimhasjoined ~= thornsusername and victimhasjoined.Name ~= impname then
local victimname = victimhasjoined.Name
victimhasjoined.Chatted:Connect(function(talking2)
if talking2:match(" ") and table.find(whitelistedtable.thornson, whname) then
	local splitstring = string.split(talking2, " ")
	local chicken = players
	local victims = splitstring[2]
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	if v.Name ~= nil then
	victim = v.Name
	else
	victim = "noonefound!"
	end
	if splitstring[1]:lower() == "kill" and victim == thornsusername or splitstring[1]:lower() == "kill" and victims:lower() == "all" or splitstring[1]:lower() == "kill" and victims:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername or splitstring[1]:lower() == ":kill" and victims:lower() == "all" or splitstring[1]:lower() == ":kill" and victims:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername or splitstring[1]:lower() == "explode" and victims:lower() == "all" or splitstring[1]:lower() == "explode" and victims:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername or splitstring[1]:lower() == ":explode" and victims:lower() == "all" or splitstring[1]:lower() == ":explode" and victims:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername or splitstring[1]:lower() == "respawn" and victims:lower() == "all" or splitstring[1]:lower() == "respawn" and victims:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername or splitstring[1]:lower() == ":respawn" and victims:lower() == "all" or splitstring[1]:lower() == ":respawn" and victims:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername or splitstring[1]:lower() == "unff" and victims:lower() == "all" or splitstring[1]:lower() == "unff" and victims:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername or splitstring[1]:lower() == ":unff" and victims:lower() == "all" or splitstring[1]:lower() == ":unff" and victims:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername or splitstring[1]:lower() == "fling" and victims:lower() == "all" or splitstring[1]:lower() == "fling" and victims:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername or splitstring[1]:lower() == ":fling" and victims:lower() == "all" or splitstring[1]:lower() == ":fling" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("fly " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "smoke" and victim == thornsusername or splitstring[1]:lower() == "smoke" and victims:lower() == "all" or splitstring[1]:lower() == "smoke" and victims:lower() == "others" or splitstring[1]:lower() == ":smoke" and victim == thornsusername or splitstring[1]:lower() == ":smoke" and victims:lower() == "all" or splitstring[1]:lower() == ":smoke" and victims:lower() == "others" then
	inflictthornsdamage:Chat("smoke " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	inflictthornsdamage:Chat("unsmoke " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername or splitstring[1]:lower() == "stun" and victims:lower() == "all" or splitstring[1]:lower() == "stun" and victims:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername or splitstring[1]:lower() == ":stun" and victims:lower() == "all" or splitstring[1]:lower() == ":stun" and victims:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	inflictthornsdamage:Chat("unstun " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername or splitstring[1]:lower() == "fire" and victims:lower() == "all" or splitstring[1]:lower() == "fire" and victims:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername or splitstring[1]:lower() == ":fire" and victims:lower() == "all" or splitstring[1]:lower() == ":fire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	inflictthornsdamage:Chat("unfire " ..thornsusername.. "")
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername or splitstring[1]:lower() == "bonfire" and victims:lower() == "all" or splitstring[1]:lower() == "bonfire" and victims:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername or splitstring[1]:lower() == ":bonfire" and victims:lower() == "all" or splitstring[1]:lower() == ":bonfire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername or splitstring[1]:lower() == "reset" and victims:lower() == "all" or splitstring[1]:lower() == "reset" and victims:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername or splitstring[1]:lower() == ":reset" and victims:lower() == "all" or splitstring[1]:lower() == ":reset" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername or splitstring[1]:lower() == "jail" and victims:lower() == "all" or splitstring[1]:lower() == "jail" and victims:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername or splitstring[1]:lower() == ":jail" and victims:lower() == "all" or splitstring[1]:lower() == ":jail" and victims:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unjail " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername or splitstring[1]:lower() == "punish" and victims:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername or splitstring[1]:lower() == ":punish" and victims:lower() == "all" or splitstring[1]:lower() == ":punish" and victims:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unpunish " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername or splitstring[1]:lower() == "ungod" and victims:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername or splitstring[1]:lower() == ":ungod" and victims:lower() == "all" or splitstring[1]:lower() == ":ungod" and victims:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername or splitstring[1]:lower() == "damage" and victims:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername or splitstring[1]:lower() == ":damage" and victims:lower() == "all" or splitstring[1]:lower() == ":damage" and victims:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername or splitstring[1]:lower() == "setgrav" and victims:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername or splitstring[1]:lower() == ":setgrav" and victims:lower() == "all" or splitstring[1]:lower() == ":setgrav" and victims:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("grav " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername or splitstring[1]:lower() == "speed" and victims:lower() == "all" or splitstring[1]:lower() == "speed" and victims:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername or splitstring[1]:lower() == ":speed" and victims:lower() == "all" or splitstring[1]:lower() == ":speed" and victims:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername or splitstring[1]:lower() == "name" and victims:lower() == "all" or splitstring[1]:lower() == "name" and victims:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername or splitstring[1]:lower() == ":name" and victims:lower() == "all" or splitstring[1]:lower() == ":name" and victims:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername or splitstring[1]:lower() == "blind" and victims:lower() == "all" or splitstring[1]:lower() == "blind" and victims:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername or splitstring[1]:lower() == ":blind" and victims:lower() == "all" or splitstring[1]:lower() == ":blind" and victims:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unblind " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername or splitstring[1]:lower() == "removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == "removelimbs" and victims:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername or splitstring[1]:lower() == "creeper" and victims:lower() == "all" or splitstring[1]:lower() == "creeper" and victims:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername or splitstring[1]:lower() == ":creeper" and victims:lower() == "all" or splitstring[1]:lower() == ":creeper" and victims:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("uncreeper " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "health" and victim == thornsusername or splitstring[1]:lower() == "health" and victims:lower() == "all" or splitstring[1]:lower() == "health" and victims:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername or splitstring[1]:lower() == ":health" and victims:lower() == "all" or splitstring[1]:lower() == ":health" and victims:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername or splitstring[1]:lower() == "noclip" and victims:lower() == "all" or splitstring[1]:lower() == "noclip" and victims:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername or splitstring[1]:lower() == ":noclip" and victims:lower() == "all" or splitstring[1]:lower() == ":noclip" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("clip " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "char" and victim == thornsusername or splitstring[1]:lower() == "char" and victims:lower() == "all" or splitstring[1]:lower() == "char" and victims:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername or splitstring[1]:lower() == ":char" and victims:lower() == "all" or splitstring[1]:lower() == ":char" and victims:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unchar " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername or splitstring[1]:lower() == "seizure" and victims:lower() == "all" or splitstring[1]:lower() == "seizure" and victims:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername or splitstring[1]:lower() == ":seizure" and victims:lower() == "all" or splitstring[1]:lower() == ":seizure" and victims:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unseizure " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername or splitstring[1]:lower() == "infect" and victims:lower() == "all" or splitstring[1]:lower() == "infect" and victims:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername or splitstring[1]:lower() == ":infect" and victims:lower() == "all" or splitstring[1]:lower() == ":infect" and victims:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername or splitstring[1]:lower() == "freeze" and victims:lower() == "all" or splitstring[1]:lower() == "freeze" and victims:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername or splitstring[1]:lower() == ":freeze" and victims:lower() == "all" or splitstring[1]:lower() == ":freeze" and victims:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("thaw " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername or splitstring[1]:lower() == "clone" and victims:lower() == "all" or splitstring[1]:lower() == "clone" and victims:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername or splitstring[1]:lower() == ":clone" and victims:lower() == "all" or splitstring[1]:lower() == ":clone" and victims:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername or splitstring[1]:lower() == "noobify" and victims:lower() == "all" or splitstring[1]:lower() == "noobify" and victims:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername or splitstring[1]:lower() == ":noobify" and victims:lower() == "all" or splitstring[1]:lower() == ":noobify" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername or splitstring[1]:lower() == "spin" and victims:lower() == "all" or splitstring[1]:lower() == "spin" and victims:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername or splitstring[1]:lower() == ":spin" and victims:lower() == "all" or splitstring[1]:lower() == ":spin" and victims:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	if table.find(whitelistedtable.defenseon, whname) then
	wait(0.1)
	inflictthornsdamage:Chat("unspin " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "gear" and victim ~= thornsusername and table.find(whitelistedtable.gearstealeron,whname) and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" or splitstring[1]:lower() == ":gear" and table.find(whitelistedtable.gearstealeron,whname) and victim ~= thornsusername and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" then
	inflictthornsdamage:Chat("gear " ..thornsusername.. " " ..splitstring[3].. "")
	--end if string == "kill" then
	end
	end
	end
	end
	end)
	end
	end)
	end
	end
	end
	
	local function unwhitelist(user)
	if table.find(whitelistedtable.users, user) then
	removefromtable(whitelistedtable.users, user)
	end
	if table.find(whitelistedtable.loopkillon, user) then
	removefromtable(whitelistedtable.loopkillon, user)
	end
	if table.find(whitelistedtable.loopexplodeon, user) then
	removefromtable(whitelistedtable.loopexplodeon, user)
	end
	if table.find(whitelistedtable.loopflingon, user) then
	removefromtable(whitelistedtable.loopflingon, user)
	end
	if table.find(whitelistedtable.thornson, user) then
	removefromtable(whitelistedtable.thornson, user)
	end
	if table.find(whitelistedtable.defenseon, user) then
	removefromtable(whitelistedtable.defenseon, user)
	end
	if table.find(whitelistedtable.protectionon, user) then
	removefromtable(whitelistedtable.protectionon, user)
	end
	if table.find(whitelistedtable.nlagon, user) then
	removefromtable(whitelistedtable.nlagon, user)
	end
	if table.find(whitelistedtable.pmlagon, user) then
	removefromtable(whitelistedtable.pmlagon, user)
	end
	if table.find(whitelistedtable.antikillon, user) then
	removefromtable(whitelistedtable.antikillon, user)
	end
	end
	

	--// commands
	lplayer.Chatted:Connect(function(msg)
	local splitstring2 = string.split(msg, " ")
	local person
	local command = splitstring2[1]
	local target2
	local targetname2
	if splitstring2 ~= nil then 
	if table.getn(splitstring2) >= 2 then
	person = splitstring2[2]
	target2 = xget(person)
	if target2 ~= person then
	targetname2 = target2.Name
	else
	targetname2 = person
	end
	end
	end
	if msg:lower() == "//trueantikill" then
	if trueantikill == false then
	trueantikill = true
	else
	trueantikill = false
	end
	elseif msg:lower() == "//crashserver" then
	local prefix = ":"
	local lplrispossiblycool1 = players
	local lplrispossiblycool = lplrispossiblycool1.LocalPlayer
	local lname = lplrispossiblycool.Name
	game.Players:Chat(prefix.. "gear all " ..string.rep("0",13).. "94794847")
	lplrispossiblycool.Backpack:WaitForChild("VampireVanquisher")
	repeat
	wait()
	until lplrispossiblycool.Character.HumanoidRootPart ~= nil
	lplrispossiblycool.Backpack.VampireVanquisher.Parent = lplrispossiblycool.Character
	for i=1,10 do
	game.Players:Chat(prefix.. "size all 0.3")
	wait(0.2)
	end
	elseif command:lower() == "//q" then
	if person ~= "all" and person ~= "others" and person ~= "admins" then
	players:Chat("reset " ..targetname2.. "")
	players:Chat("setgrav " ..targetname2.. " -90000000000")
	wait(0.2)
	players:Chat("punish " ..targetname2.. "")
	players:Chat("blind " ..targetname2.. "")
	else
	players:Chat("reset " ..person.. "")
	players:Chat("setgrav " ..person.. " -90000000000")
	wait(0.2)
	players:Chat("punish " ..person.. "")
	players:Chat("blind " ..person.. "")
	end
	elseif command:lower() == "//p" then
	--this one was stolen from shortcut lmfao
	if lplayer.Character ~= nil then
	lplayer.Character:Destroy()
	end
	elseif msg:match("//gearpack") then
	local chicken = players
	person = targetname2
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "92142829")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "94233344")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "117544573")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "268586231")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "68539623")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "45177979")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "233520257")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "87361662")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "233520257")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "71037101")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "212641536")
	wait(0.1)
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "99119240")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "212296936")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "292969139")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "79446473")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "127506257")
	wait()
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "97885508")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "16924676")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "106064315")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "77443461")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "80576967")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "60357972")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "61459706")
	wait(0.3)
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "61459706")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "82357101")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "82357123")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "1208300505")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "26421972")
	elseif msg:match("//rangedpack") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "139577901")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "94233286")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "115377964")
	wait()
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "116693764")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "1145358579")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "243788599")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "21420014")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "30847685")
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "85879456")
	wait(0.1)
	chicken:Chat("gear " ..person.. " " ..string.rep("0",13).. "34898883")
	end
	elseif msg:match("//requestadmin") then
	   local path = game:GetService("Workspace").Terrain["_Game"].Admin.Pads
    for i,v in pairs(path:GetChildren()) do
        if v.Name:match("Touch to get") and v:FindFirstChildOfClass("Part") then
            for x,y in pairs(path:GetDescendants()) do
                if y:IsA("TouchTransmitter") then
                    firetouchinterest(lplayer.Character.HumanoidRootPart, y.Parent, 0)
                    wait()
                    firetouchinterest(lplayer.Character.HumanoidRootPart, y.Parent, 1)
                end
            end
        elseif not v.Name:match("Touch to get") and v:FindFirstChildOfClass("Part") then
            fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
            wait()
            for x,y in pairs(path:GetDescendants()) do
                if y:IsA("TouchTransmitter") then
                    firetouchinterest(lplayer.Character.HumanoidRootPart, y.Parent, 0)
                    wait()
                    firetouchinterest(lplayer.Character.HumanoidRootPart, y.Parent, 1)
                end
            end
            end
	end
	elseif msg:match("//rocketfailure") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	local person = v.Name
	chicken:Chat("rocket/" ..person.. "")
	wait()
	chicken:Chat("spin " ..person.. "")
	wait(0.2)
	chicken:Chat("jump " ..person.. "")
	wait(2)
	chicken:Chat("explode " ..person.. "")
	end
	elseif msg:match("//improveday") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	chicken:Chat("time 7")
	wait()
	chicken:Chat("colorshifttop 600 400 0")
	chicken:Chat("colorshiftbottom 600 400 0")
	elseif msg:match("//shiftlock") then
	local splitstring = string.split(msg, " ")
	local person = splitstring[2]
	players:Chat("gear all " ..string.rep("0",13).. "4842207161")
	lplayer.Backpack:WaitForChild("AR")
	lplayer.Backpack.AR.Parent = lplayer.Character
	wait(0.3)
	if lplayer.Character:FindFirstChild("AR") then
	lplayer.Character.AR.Parent = lplayer.Backpack
	end
	elseif msg:match("//everythingisred") then
	local splitstring = string.split(msg, " ")
	local person = splitstring[2]
	game.Players:Chat("gear me " ..string.rep("0",13).. "18474459")
	wait(0.1)
	lplayer.Backpack:WaitForChild("PaintBucket")
	lplayer.Backpack.PaintBucket.Parent = lplayer.Character
	lplayer.Character:WaitForChild("PaintBucket")
	lplayer.Character.PaintBucket:WaitForChild("Remotes")
	lplayer.Character.PaintBucket.Remotes:WaitForChild("ServerControls")
	local a = workspace:GetDescendants()
	local egg = lplayer.Character.PaintBucket.Remotes.ServerControls
	local ColorSelection = BrickColor.new("Really red").Color
	for i, v in pairs(a) do
	if v:IsA("BasePart") then
	local Data = {}
	Data.Part = v
	Data.Color = ColorSelection
	local A_1 = "PaintPart"
	local A_2 = Data
	local event = lplayer.Character.PaintBucket.Remotes.ServerControls
	event:InvokeServer(A_1, A_2)
	end
	end
	elseif msg:match("==1cs") then
	local splitstring = string.split(msg, " ")
	local person = splitstring[2]
	game.Players:Chat("gear me " ..string.rep("0",13).. "18474459")
	wait(0.1)
	lplayer.Backpack:WaitForChild("PaintBucket")
	lplayer.Backpack.PaintBucket.Parent = lplayer.Character
	lplayer.Character:WaitForChild("PaintBucket")
	lplayer.Character.PaintBucket:WaitForChild("Remotes")
	lplayer.Character.PaintBucket.Remotes:WaitForChild("ServerControls")
	wait(0.6)
	local workspacefolder = game:GetService("Workspace").Terrain["_Game"].Workspace
	local egg = lplayer.Character.PaintBucket.Remotes.ServerControls
	local ColorSelection = BrickColor.new("Maroon").Color
	for i, v in pairs(workspacefolder:GetDescendants()) do
	if v:IsA("BasePart") then
	local Data = {}
	Data.Part = v
	Data.Color = ColorSelection
	local A_1 = "PaintPart"
	local A_2 = Data
	local event = lplayer.Character.PaintBucket.Remotes.ServerControls
	event:InvokeServer(A_1, A_2)
	end
	end
	elseif msg:lower() == "//crashserver" then
	local prefix = ":"
	local lplrispossiblycool1 = players
	local lplrispossiblycool = lplrispossiblycool1.LocalPlayer
	local lname = lplrispossiblycool.Name
	game.Players:Chat(prefix.. "gear all " ..string.rep("0",13).. "94794847")
	lplrispossiblycool1:Chat("h meanie!")
	lplrispossiblycool.Backpack:WaitForChild("VampireVanquisher")
	repeat
	wait()
	until lplrispossiblycool.Character.HumanoidRootPart ~= nil
	lplrispossiblycool.Backpack.VampireVanquisher.Parent = lplrispossiblycool.Character
	for i=1,10 do
	game.Players:Chat(prefix.. "size all 0.3")
	wait(0.2)
	end
	elseif msg:match("//mshiftcrash") then
	local prefix = ":"
	
	players:Chat("gear all " ..string.rep("0",13).. "4842207161")
	lplayer.Backpack:WaitForChild("AR")
	lplayer.Backpack.AR.Parent = lplayer.Character
	wait(0.3)
	lplayer.Character.AR.Parent = lplayer.Backpack
	wait(0.5)
	players:Chat("h meanie!")
	for i=1,3 do
	game.Players:Chat(prefix.. "size all 0.3")
	wait(0.2)
	end
	game.Players:Chat(prefix.. "freeze all")
	wait(0.2)
	for i=1,3 do
	game.Players:Chat(prefix.. "size all 10")
	wait(0.2)
	end
	game.Players:Chat(prefix.. "clone all")
	wait(0.2)
	elseif msg:match("//shiftcrash") then
	local prefix = ":"
	
	players:Chat("gear all " ..string.rep("0",13).. "4842207161")
	lplayer.Backpack:WaitForChild("AR")
	lplayer.Backpack.AR.Parent = lplayer.Character
	wait(0.3)
	lplayer.Character.AR.Parent = lplayer.Backpack
	wait(0.5)
	for i=1,3 do
	game.Players:Chat(prefix.. "size all 0.3")
	wait(0.2)
	end
	game.Players:Chat(prefix.. "freeze all")
	wait(0.2)
	for i=1,3 do
	game.Players:Chat(prefix.. "size all 10")
	wait(0.2)
	end
	game.Players:Chat(prefix.. "clone all")
	wait(0.2)
	elseif msg:match("//box") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	local person = v.Name
	players:Chat("size " ..person.. " 0.3")
	players:Chat("size " ..person.. " 0.3")
	players:Chat("size " ..person.. " 0.3")
	wait(0.1)
	players:Chat("size " ..person.. " 0.3")
	players:Chat("size " ..person.. " 0.3")
	players:Chat("size " ..person.. " 0.3")
	wait(0.1)
	players:Chat("size " ..person.. " 0.3")
	wait(0.1)
	players:Chat("size " ..person.. " 1.5")
	players:Chat("size " ..person.. " 2")
	players:Chat("size " ..person.. " 2")
	players:Chat("size " ..person.. " 2")
	players:Chat("size " ..person.. " 2")
	players:Chat("size " ..person.. " 2")
	end
	elseif msg:match("//gearplr") then
	local splitstring = string.split(msg, " ")
	local bird = players
	local person = splitstring[2]
	local gearimp = splitstring[3]
	local gearstr = gearimp:lower()
	if gearstr == "paint" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "18474459")
	end
	elseif gearstr == "radio" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "212641536")
	end
	elseif gearstr == "timestop" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "71037101")
	end
	elseif gearstr == "airstrike" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "88885539")
	end
	elseif gearstr == "treehouse" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "119917513")
	end
	elseif gearstr == "zombiestaff" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "26421972")
	end
	elseif gearstr == "bodyswap" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "78730532")
	end
	elseif gearstr == "ultimateyellowcar" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "253519495")
	end
	elseif gearstr == "megaphone" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "44116233")
	end
	elseif gearstr == "snowballcannon" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "67755182")
	end
	elseif gearstr == "medusasword" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "59190534")
	end
	elseif gearstr == "rmagiccarpet" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "225921000")
	end
	elseif gearstr == "deluxecarpet" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "477910063")
	end
	elseif gearstr == "procket" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "298085284")
	end
	elseif gearstr == "subtripmine" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "11999247")
	end
	elseif gearstr == "bombotable" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "243788010")
	end
	elseif gearstr == "cameraglitch" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "987032734")
	end
	elseif gearstr == "sensglitch" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "68354832")
	end
	elseif gearstr == "arshiftlock" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "4842207161")
	end
	elseif gearstr == "darkheart" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "16895215")
	end
	elseif gearstr == "rcwand" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "75550883")
	end
	elseif gearstr == "exceptionalsfavorite" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "75941738")
	end
	elseif gearstr == "rocketjump" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "169602103")
	end
	elseif gearstr == "fans" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "124126528")
	end
	elseif gearstr == "badbunny" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "24839406")
	end
	elseif gearstr == "ltrap" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "80576913")
	end
	elseif gearstr == "forcefield" then
	for i,v in pairs(getplr(person)) do
	bird:Chat("gear " ..person.. " " ..string.rep("0",13).. "90718618")
	end
	end
	elseif msg:match("//gearprint") then
	print([[
	paint - paintbucket
	radio - golden boombox
	timestop - stop time
	airstrike - airstrike
	treehouse - instant treehouse
	zombiestaff - zombie staff obviously :|
	bodyswap - body swap potion
	ultimateyellowcar - ultimate drive speedster (car go vroom vroom)
	megaphone - megaphone
	medusasword - sword that turns things to stone
	snowballcannon - not working but still funny
	rmagiccarpet - rainbow magic carpet
	deluxecarpet - deluxe rainbow magic carpet
	procket - personal rocketship
	subtripmine - subspace tripmine
	bombotable - table that goes boom boom on hit
	cameraglitch - part of a camera glitch
	sensglitch - part of a sensitivity glitch
	arshiftlick - shiftlocks all and breaks camera
	darkheart - darkheart
	rcwand - rubber chicken wand
	rocketjump - Seranok's Rocket Jumper
	fans - Seranok's Golden Chalice Of Fame
	badbunny - fake eggs
	ltrap -
	forcefield -
	]])
	elseif msg:lower() == "//rejoinserver" then
	game:GetService("TeleportService"):Teleport(game.PlaceId, lplayer)
	elseif msg:match("//savetools") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local gearpackname = splitstring[2]
	table.remove(splitstring,1)
	table.remove(splitstring,1)
	savegearpack(gearpackname,unpack(splitstring))
	elseif msg:match("//loadtools") then
	local splitstring = string.split(msg, " ")
	local bird1 = players
	local person = splitstring[2]
	local impname = splitstring[3]
	loadgearpack(person,impname)
	elseif msg:lower() == "//printpacks" then
	for ii,vv in pairs(gearpacks) do
	print(ii, vv)
	end
	elseif msg:lower() == "//antimusic" then
	if removesong == true then
	removesong = false
	else
	removesong = true
	players:Chat("music")
	end
	elseif msg:lower() == "//messagedeleter" then
	if not getgenv().messagedeleter then
	getgenv().messagedeleter = true
	else
	getgenv().messagedeleter = false
	end
	elseif msg:lower() == "//nowplaying" then
	if SfolderS:FindFirstChild("Sound") then
	print(tostring(game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId))
	else
	print("music isn't playing?")
	end
	elseif msg:match("//whitelistuser") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	local person = v.Name
	end
	whitelistplr(person)
	elseif msg:match("//unwhitelist") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	person = v.Name
	end
	print(person)
	unwhitelist(person)
	elseif msg:match("//restore") then
	local splitstring = string.split(msg, " ")
	local chicken = players
	local person = splitstring[2]
	for i,v in pairs(getplr(person)) do
	person = v.Name
	end
	players:Chat("fly " ..person.. "")
	wait(0.1)
	players:Chat("reset " ..person.. "")
	players:Chat("fly " ..person.. "")
	wait(0.3)
	players:Chat("ff " ..person.. "")
	players:Chat("god " ..person.. "")
	elseif msg:match("//disabletools") then
	local splitstring = string.split(msg, " ")
	local personiwanttobrutallymurder = splitstring[2]
	for i,v in pairs(getplr(personiwanttobrutallymurder)) do
	personiwanttobrutallymurder = v
	end
	local channel6 = players
	local lplayerisimportant = channel6.LocalPlayer
	local backpack = lplayerisimportant.Backpack
	channel6:Chat("gear me " ..string.rep("0",13).. "82357101")
	backpack:WaitForChild("PortableJustice")
	local toolremover = backpack.PortableJustice
	if channel6.LocalPlayer.Character ~= nil then
	toolremover.Parent = channel6.LocalPlayer.Character
	toolremover = channel6.LocalPlayer.Character.PortableJustice
	end
	if personiwanttobrutallymurder.Character ~= nil and toolremover ~= nil then
	toolremover:WaitForChild("MouseClick")
	channel6:Chat("fly " ..personiwanttobrutallymurder.Name.. "")
	channel6:Chat("tp " ..personiwanttobrutallymurder.Name.. " me")
	channel6:Chat("unff " ..personiwanttobrutallymurder.Name.. "")
	wait(0)
	wait(0.1)
	local arg1 = personiwanttobrutallymurder.Character
	local notarg = lplayerisimportant.Character.PortableJustice.MouseClick
	notarg:FireServer(arg1)
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()
	elseif toolremover ~= nil then
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()
	end
	elseif msg:lower() == "//regen" then
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
	elseif msg:match("//explode") then
	local splitstring = string.split(msg, " ")
	if splitstring[2] ~= nil then
	local person = splitstring[2]
	if splitstring[2] ~= "me" and splitstring[2] ~= "all" and splitstring[2] ~= "others" then
	for i,v in pairs(getplr(person)) do
	person = v.Name
	end
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	players:Chat("explode " ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "," ..person.. "")
	elseif splitstring[2] == "all" then
	players:Chat("explode all,all,all,all,all,all,all,all,all")
	players:Chat("explode all,all,all,all,all,all,all,all,all")
	players:Chat("explode all,all,all,all,all,all,all,all,all")
	players:Chat("explode all,all,all,all,all,all,all,all,all")
	players:Chat("explode all,all,all,all,all,all,all,all,all")
	players:Chat("explode all,all,all,all,all,all,all,all,all")
	players:Chat("explode all,all,all,all,all,all,all,all,all")
	elseif splitstring[2] == "me" then
	players:Chat("explode me,me,me,me,me,me,me,me,me,me,me,me,me,me,me")
	players:Chat("explode me,me,me,me,me,me,me,me,me,me,me,me,me,me,me")
	players:Chat("explode me,me,me,me,me,me,me,me,me,me,me,me,me,me,me")
	players:Chat("explode me,me,me,me,me,me,me,me,me,me,me,me,me,me,me")
	players:Chat("explode me,me,me,me,me,me,me,me,me,me,me,me,me,me,me")
	players:Chat("explode me,me,me,me,me,me,me,me,me,me,me,me,me,me,me")
	elseif splitstring[2] == "others" then
	players:Chat("explode others,others,others,others,others")
	players:Chat("explode others,others,others,others,others")
	players:Chat("explode others,others,others,others,others")
	players:Chat("explode others,others,others,others,others")
	players:Chat("explode others,others,others,others,others")
	players:Chat("explode others,others,others,others,others")
	end
	end
	elseif msg:lower() == "//ll" or msg:lower() == "//itsasecret" or msg:lower() == "//llogs" then
	local speakish = players
	local foolishfish = "dwadawdawdadaw"
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	wait(0.6)
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	wait(0.4)
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	wait(0.6)
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	wait(0.2)
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	wait(0.6)
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	wait(0.2)
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	wait(0.6)
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	wait(0.2)
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff " ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("ff" ..foolishfish.. " " ..lagtext.. "")
	elseif msg:lower() == "//flogs" or msg:lower() == "//itsanothersecret" then
	local japanesehorrorstory = players
	japanesehorrorstory:Chat("ff foolishfish")
	japanesehorrorstory:Chat("ff inuxbokuss")
	japanesehorrorstory:Chat("ff meansforcefield")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	wait(1)
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	wait(0.5)
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	wait(0.3)
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	japanesehorrorstory:Chat("ff sowdnadawidnaldadnawldknwadawndkajwldn")
	elseif msg:lower() == "//ineed@someone" then
	_G.ineedatsomeone = true
	local IREALLYNEEDATSOMEONE = players
	while wait(0.4) and _G.ineedatsomeone do
	local firstarg = math.random(0,10)
	local secondarg = math.random(0,10)
	local thirdarg = math.random(0,10)
	local fogarg = math.random(70,150)
	IREALLYNEEDATSOMEONE:Chat("part/" ..firstarg.. "/" ..secondarg.. "/" ..thirdarg.. "")
	IREALLYNEEDATSOMEONE:Chat("time 0")
	IREALLYNEEDATSOMEONE:Chat("fogend " ..fogarg.. "")
	IREALLYNEEDATSOMEONE:Chat("disco")
	IREALLYNEEDATSOMEONE:Chat("clone all")
	end
	
	end
	end)
	wait(0)
	--i think this function is retarded but idk tbh
	local function lagishthefoolish(foolishfish)
	local speakish = players
	speakish:Chat("pm/" ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("pm/" ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("pm/" ..foolishfish.. " " ..lagtext.. "")
	speakish:Chat("pm/" ..foolishfish.. " " ..lagtext.. "")
	end


	wait(0.04)
	--loop commands (enable)
	chatted:Connect(function(msg)
	if msg:match(" ") then
	local splitstring = string.split(msg, " ")
	local TALKTALKTALKTALK = players
	local chicken = players
	local foolishfool = splitstring[2]
	for i,v in pairs(getplr(foolishfool)) do
	foolishfool = v.Name
	end
	
	if splitstring[1]:lower() == "//loopres" then
	_G.loopres = true
	repeat
	wait(0.2)
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "," ..foolishfool.. "")
	until players:FindFirstChild(foolishfool) == nil or _G.loopres == false
	elseif splitstring[1]:lower() == "//nlag" then
	local splitstring = string.split(msg, " ")
	_G.nlag = true
	repeat
	wait(0.2)
	TALKTALKTALKTALK:Chat("pm " ..foolishfool.. " " ..lagtext.. "")
	TALKTALKTALKTALK:Chat("pm " ..foolishfool.. " " ..lagtext.. "")
	TALKTALKTALKTALK:Chat("pm " ..foolishfool.. " " ..lagtext.. "")
	until game.Players:FindFirstChild(foolishfool) == nil or _G.nlag == false
	elseif splitstring[1]:lower() == "//pmlag" then
	_G.lag = true
	repeat
	wait(0.4)
	lagishthefoolish(foolishfool)
	until game.Players:FindFirstChild(foolishfool) == nil or _G.lag == false
	elseif splitstring[1]:lower() == "//loopexplode" then
	_G.loopexplode = true
	repeat
	wait()
	TALKTALKTALKTALK:Chat("explode " ..foolishfool.. "")
	TALKTALKTALKTALK:Chat("respawn " ..foolishfool.. "")
	until game.Players:FindFirstChild(foolishfool) == nil or _G.loopexplode == false
	elseif splitstring[1]:lower() == "//protection" then
	_G.exploiterprotection = true
	while wait(1) and _G.exploiterprotection do
	TALKTALKTALKTALK:Chat("reset me")
	end
	
	elseif splitstring[1]:lower() == "//crowdcontrol" then
	_G.crowdcontrol = true
	while wait() and _G.crowdcontrol do
	TALKTALKTALKTALK:Chat("reset others")
	wait()
	TALKTALKTALKTALK:Chat("tp others me")
	end
	
	elseif splitstring[1]:lower() == "//ineed@someone" then
	_G.ineedatsomeone = true
	local IREALLYNEEDATSOMEONE = players
	while wait(0.4) and _G.ineedatsomeone do
	local firstarg = math.random(0,10)
	local secondarg = math.random(0,10)
	local thirdarg = math.random(0,10)
	local fogarg = math.random(70,150)
	IREALLYNEEDATSOMEONE:Chat("part/" ..firstarg.. "/" ..secondarg.. "/" ..thirdarg.. "")
	IREALLYNEEDATSOMEONE:Chat("time 0")
	IREALLYNEEDATSOMEONE:Chat("fogend " ..fogarg.. "")
	IREALLYNEEDATSOMEONE:Chat("disco")
	IREALLYNEEDATSOMEONE:Chat("clone all")
	end
	
	--why did i use so much coroutine.wrap(function() again?
	elseif splitstring[1]:lower() == "//loopfling" then
	_G.loopfling = true
	repeat
	wait()
	chicken:Chat("fling " ..foolishfool.. "")
	until game.Players:FindFirstChild(foolishfool) == nil or _G.loopfling == false
	
	elseif splitstring[1]:lower() == "//loopkill" then
	_G.loopkill = true
	repeat
	wait(0.4)
	chicken:Chat("kill " ..foolishfool.. "")
	until game.Players:FindFirstChild(foolishfool) == nil or _G.loopkill == false
	--end if loopres
	end
	end
	end)
	
	--// loop commands (disable)
	chatted:Connect(function(msg)
	if msg:lower() == "//loopexplodeoff" then
	_G.loopexplode = false
	elseif msg:lower() == "//loopkilloff" then
	_G.loopkill = false
	elseif msg:lower() == "//loopflingoff" then
	_G.loopfling = false
	elseif msg:lower() == "//freedom" then
	_G.crowdcontrol = false
	elseif msg:lower() == "//protectionoff" then
	_G.exploiterprotection = false
	elseif msg:lower() == "//lagoff" then
	if _G.nlag then
	_G.nlag = false
	end
	if _G.lag then
	_G.lag = false
	end
	elseif msg:lower() == "//igot@someone" then
	_G.ineedatsomeone = false
	elseif msg:lower() == "//loopresoff" then
	_G.loopres = false
	elseif msg:lower() == "//antidog" then
	if hmmmmmmmmmmmmmmmmmmmmmmmmm ~= true then
	hmmmmmmmmmmmmmmmmmmmmmmmmm = true
	else
	hmmmmmmmmmmmmmmmmmmmmmmmmm = false
	end
	end
	end)
	
	--thorns
	
	
local thornstable = {}
local previouskarmatable = {}
local thornsvictims = players
local inflictthornsdamage = players
local thornsuser = thornsvictims.LocalPlayer
local thornsusername = thornsuser.Name
local thornstoggle = true
local defensivethorns = true
local test = false
local gearstealertoggle = false
function checkif(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
	 if Target == "others" then
		table.insert(Found,"pleaserunonce")
        elseif Target == "me" then
		table.insert(Found,"pleaserunonce")
		elseif Target == "all" then
		table.insert(Found,"pleaserunonce")
		elseif Target == "admins" then
		table.insert(Found,"pleaserunonce")
		else
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end 
	end
    return Found    
end

local function givethorns(user)
local thornsuser2 = user
local thornsusername2 = thornsuser2.Name

table.insert(thornstable,thornsusername2)
wait(0)
if not table.find(previouskarmatable,thornsusername2) then
table.insert(previouskarmatable,thornsusername2)
for i,v in pairs(thornsvictims:GetPlayers()) do
if v.Name ~= thornsusername2 and v.Name ~= thornsusername then
v.Chatted:Connect(function(talking)
if talking:match(" ") and table.find(thornstable,thornsusername2) then
	local splitstring = string.split(talking, " ")
	local chicken = players
	local victims = splitstring[2]
	local victim = splitstring[2]
	local victimname = v.Name
	for i,v in pairs(checkif(victim)) do
	if v.Name ~= nil then
	victim = v.Name
	else
	victim = "noonefound!"
	end
	if splitstring[1]:lower() == "kill" and victim == thornsusername2 or splitstring[1]:lower() == "kill" and victims:lower() == "all" or splitstring[1]:lower() == "kill" and victims:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername2 or splitstring[1]:lower() == ":kill" and victims:lower() == "all" or splitstring[1]:lower() == ":kill" and victims:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername2 or splitstring[1]:lower() == "explode" and victims:lower() == "all" or splitstring[1]:lower() == "explode" and victims:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername2 or splitstring[1]:lower() == ":explode" and victims:lower() == "all" or splitstring[1]:lower() == ":explode" and victims:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername2 or splitstring[1]:lower() == "respawn" and victims:lower() == "all" or splitstring[1]:lower() == "respawn" and victims:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername2 or splitstring[1]:lower() == ":respawn" and victims:lower() == "all" or splitstring[1]:lower() == ":respawn" and victims:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername2 or splitstring[1]:lower() == "unff" and victims:lower() == "all" or splitstring[1]:lower() == "unff" and victims:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername2 or splitstring[1]:lower() == ":unff" and victims:lower() == "all" or splitstring[1]:lower() == ":unff" and victims:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername2 or splitstring[1]:lower() == "fling" and victims:lower() == "all" or splitstring[1]:lower() == "fling" and victims:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername2 or splitstring[1]:lower() == ":fling" and victims:lower() == "all" or splitstring[1]:lower() == ":fling" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("fly " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername2 or splitstring[1]:lower() == "stun" and victims:lower() == "all" or splitstring[1]:lower() == "stun" and victims:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername2 or splitstring[1]:lower() == ":stun" and victims:lower() == "all" or splitstring[1]:lower() == ":stun" and victims:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unstun " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername2 or splitstring[1]:lower() == "fire" and victims:lower() == "all" or splitstring[1]:lower() == "fire" and victims:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername2 or splitstring[1]:lower() == ":fire" and victims:lower() == "all" or splitstring[1]:lower() == ":fire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername2 or splitstring[1]:lower() == "bonfire" and victims:lower() == "all" or splitstring[1]:lower() == "bonfire" and victims:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername2 or splitstring[1]:lower() == ":bonfire" and victims:lower() == "all" or splitstring[1]:lower() == ":bonfire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername2 or splitstring[1]:lower() == "reset" and victims:lower() == "all" or splitstring[1]:lower() == "reset" and victims:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername2 or splitstring[1]:lower() == ":reset" and victims:lower() == "all" or splitstring[1]:lower() == ":reset" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername2 or splitstring[1]:lower() == "jail" and victims:lower() == "all" or splitstring[1]:lower() == "jail" and victims:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername2 or splitstring[1]:lower() == ":jail" and victims:lower() == "all" or splitstring[1]:lower() == ":jail" and victims:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unjail " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername2 or splitstring[1]:lower() == "punish" and victims:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername2 or splitstring[1]:lower() == ":punish" and victims:lower() == "all" or splitstring[1]:lower() == ":punish" and victims:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unpunish " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername2 or splitstring[1]:lower() == "ungod" and victims:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername2 or splitstring[1]:lower() == ":ungod" and victims:lower() == "all" or splitstring[1]:lower() == ":ungod" and victims:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername2 or splitstring[1]:lower() == "damage" and victims:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername2 or splitstring[1]:lower() == ":damage" and victims:lower() == "all" or splitstring[1]:lower() == ":damage" and victims:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername2 or splitstring[1]:lower() == "setgrav" and victims:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername2 or splitstring[1]:lower() == ":setgrav" and victims:lower() == "all" or splitstring[1]:lower() == ":setgrav" and victims:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	if defensivethorns == true then
	inflictthornsdamage:Chat("grav " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername2 or splitstring[1]:lower() == "speed" and victims:lower() == "all" or splitstring[1]:lower() == "speed" and victims:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername2 or splitstring[1]:lower() == ":speed" and victims:lower() == "all" or splitstring[1]:lower() == ":speed" and victims:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername2 or splitstring[1]:lower() == "name" and victims:lower() == "all" or splitstring[1]:lower() == "name" and victims:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername2 or splitstring[1]:lower() == ":name" and victims:lower() == "all" or splitstring[1]:lower() == ":name" and victims:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername2.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername2 or splitstring[1]:lower() == "blind" and victims:lower() == "all" or splitstring[1]:lower() == "blind" and victims:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername2 or splitstring[1]:lower() == ":blind" and victims:lower() == "all" or splitstring[1]:lower() == ":blind" and victims:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unblind " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername2 or splitstring[1]:lower() == "removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == "removelimbs" and victims:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername2 or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername2 or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername2 or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername2 or splitstring[1]:lower() == "creeper" and victims:lower() == "all" or splitstring[1]:lower() == "creeper" and victims:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername2 or splitstring[1]:lower() == ":creeper" and victims:lower() == "all" or splitstring[1]:lower() == ":creeper" and victims:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("uncreeper " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "health" and victim == thornsusername2 or splitstring[1]:lower() == "health" and victims:lower() == "all" or splitstring[1]:lower() == "health" and victims:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername2 or splitstring[1]:lower() == ":health" and victims:lower() == "all" or splitstring[1]:lower() == ":health" and victims:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername2 or splitstring[1]:lower() == "noclip" and victims:lower() == "all" or splitstring[1]:lower() == "noclip" and victims:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername2 or splitstring[1]:lower() == ":noclip" and victims:lower() == "all" or splitstring[1]:lower() == ":noclip" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("clip " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "char" and victim == thornsusername2 or splitstring[1]:lower() == "char" and victims:lower() == "all" or splitstring[1]:lower() == "char" and victims:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername2 or splitstring[1]:lower() == ":char" and victims:lower() == "all" or splitstring[1]:lower() == ":char" and victims:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unchar " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "smoke" and victim == thornsusername or splitstring[1]:lower() == "smoke" and victims:lower() == "all" or splitstring[1]:lower() == "smoke" and victims:lower() == "others" or splitstring[1]:lower() == ":smoke" and victim == thornsusername or splitstring[1]:lower() == ":smoke" and victims:lower() == "all" or splitstring[1]:lower() == ":smoke" and victims:lower() == "others" then
	inflictthornsdamage:Chat("smoke " ..victimname.. "")
	if defensivethorns == true then
	inflictthornsdamage:Chat("unsmoke " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername2 or splitstring[1]:lower() == "seizure" and victims:lower() == "all" or splitstring[1]:lower() == "seizure" and victims:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername2 or splitstring[1]:lower() == ":seizure" and victims:lower() == "all" or splitstring[1]:lower() == ":seizure" and victims:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unseizure " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername2 or splitstring[1]:lower() == "infect" and victims:lower() == "all" or splitstring[1]:lower() == "infect" and victims:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername2 or splitstring[1]:lower() == ":infect" and victims:lower() == "all" or splitstring[1]:lower() == ":infect" and victims:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername2 or splitstring[1]:lower() == "freeze" and victims:lower() == "all" or splitstring[1]:lower() == "freeze" and victims:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername2 or splitstring[1]:lower() == ":freeze" and victims:lower() == "all" or splitstring[1]:lower() == ":freeze" and victims:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("thaw " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername2 or splitstring[1]:lower() == "clone" and victims:lower() == "all" or splitstring[1]:lower() == "clone" and victims:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername2 or splitstring[1]:lower() == ":clone" and victims:lower() == "all" or splitstring[1]:lower() == ":clone" and victims:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername2 or splitstring[1]:lower() == "noobify" and victims:lower() == "all" or splitstring[1]:lower() == "noobify" and victims:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername2 or splitstring[1]:lower() == ":noobify" and victims:lower() == "all" or splitstring[1]:lower() == ":noobify" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername2 or splitstring[1]:lower() == "spin" and victims:lower() == "all" or splitstring[1]:lower() == "spin" and victims:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername2 or splitstring[1]:lower() == ":spin" and victims:lower() == "all" or splitstring[1]:lower() == ":spin" and victims:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unspin " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername2 or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername2 or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "gear" and victim ~= thornsusername2 and gearstealertoggle == true and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" or splitstring[1]:lower() == ":gear" and gearstealertoggle == true and victim ~= thornsusername2 and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" then
	inflictthornsdamage:Chat("gear " ..thornsusername2.. " " ..splitstring[3].. "")
	--end if string == "kill" then
	end
	end
	end
	end)
	end
	end

thornsvictims.PlayerAdded:Connect(function(victimhasjoined)
if victimhasjoined.Name ~= thornsusername and victimhasjoined.Name ~= thornsusername2 then
local victimname = victimhasjoined.Name
victimhasjoined.Chatted:Connect(function(talking2)
if talking2:match(" ") and table.find(thornstable,thornsusername2) then
	local splitstring = string.split(talking2, " ")
	local chicken = players
	local victims = splitstring[2]
	local victim = splitstring[2]
	for i,z in pairs(checkif(victim)) do
	if z.Name ~= nil then
	victim = z.Name
	else
	victim = "noonefound!"
	end
	if splitstring[1]:lower() == "kill" and victim == thornsusername2 or splitstring[1]:lower() == "kill" and victims:lower() == "all" or splitstring[1]:lower() == "kill" and victims:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername2 or splitstring[1]:lower() == ":kill" and victims:lower() == "all" or splitstring[1]:lower() == ":kill" and victims:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername2 or splitstring[1]:lower() == "explode" and victims:lower() == "all" or splitstring[1]:lower() == "explode" and victims:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername2 or splitstring[1]:lower() == ":explode" and victims:lower() == "all" or splitstring[1]:lower() == ":explode" and victims:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername2 or splitstring[1]:lower() == "respawn" and victims:lower() == "all" or splitstring[1]:lower() == "respawn" and victims:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername2 or splitstring[1]:lower() == ":respawn" and victims:lower() == "all" or splitstring[1]:lower() == ":respawn" and victims:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername2 or splitstring[1]:lower() == "unff" and victims:lower() == "all" or splitstring[1]:lower() == "unff" and victims:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername2 or splitstring[1]:lower() == ":unff" and victims:lower() == "all" or splitstring[1]:lower() == ":unff" and victims:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername2 or splitstring[1]:lower() == "fling" and victims:lower() == "all" or splitstring[1]:lower() == "fling" and victims:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername2 or splitstring[1]:lower() == ":fling" and victims:lower() == "all" or splitstring[1]:lower() == ":fling" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("fly " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername2 or splitstring[1]:lower() == "stun" and victims:lower() == "all" or splitstring[1]:lower() == "stun" and victims:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername2 or splitstring[1]:lower() == ":stun" and victims:lower() == "all" or splitstring[1]:lower() == ":stun" and victims:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unstun " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername2 or splitstring[1]:lower() == "fire" and victims:lower() == "all" or splitstring[1]:lower() == "fire" and victims:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername2 or splitstring[1]:lower() == ":fire" and victims:lower() == "all" or splitstring[1]:lower() == ":fire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername2 or splitstring[1]:lower() == "bonfire" and victims:lower() == "all" or splitstring[1]:lower() == "bonfire" and victims:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername2 or splitstring[1]:lower() == ":bonfire" and victims:lower() == "all" or splitstring[1]:lower() == ":bonfire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "smoke" and victim == thornsusername or splitstring[1]:lower() == "smoke" and victims:lower() == "all" or splitstring[1]:lower() == "smoke" and victims:lower() == "others" or splitstring[1]:lower() == ":smoke" and victim == thornsusername or splitstring[1]:lower() == ":smoke" and victims:lower() == "all" or splitstring[1]:lower() == ":smoke" and victims:lower() == "others" then
	inflictthornsdamage:Chat("smoke " ..victimname.. "")
	if defensivethorns == true then
	inflictthornsdamage:Chat("unsmoke " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername2 or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername2 or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername2 or splitstring[1]:lower() == "reset" and victims:lower() == "all" or splitstring[1]:lower() == "reset" and victims:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername2 or splitstring[1]:lower() == ":reset" and victims:lower() == "all" or splitstring[1]:lower() == ":reset" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername2 or splitstring[1]:lower() == "jail" and victims:lower() == "all" or splitstring[1]:lower() == "jail" and victims:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername2 or splitstring[1]:lower() == ":jail" and victims:lower() == "all" or splitstring[1]:lower() == ":jail" and victims:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unjail " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername2 or splitstring[1]:lower() == "punish" and victims:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername2 or splitstring[1]:lower() == ":punish" and victims:lower() == "all" or splitstring[1]:lower() == ":punish" and victims:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unpunish " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername2 or splitstring[1]:lower() == "ungod" and victims:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername2 or splitstring[1]:lower() == ":ungod" and victims:lower() == "all" or splitstring[1]:lower() == ":ungod" and victims:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername2 or splitstring[1]:lower() == "damage" and victims:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername2 or splitstring[1]:lower() == ":damage" and victims:lower() == "all" or splitstring[1]:lower() == ":damage" and victims:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername2 or splitstring[1]:lower() == "setgrav" and victims:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername2 or splitstring[1]:lower() == ":setgrav" and victims:lower() == "all" or splitstring[1]:lower() == ":setgrav" and victims:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("grav " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername2 or splitstring[1]:lower() == "speed" and victims:lower() == "all" or splitstring[1]:lower() == "speed" and victims:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername2 or splitstring[1]:lower() == ":speed" and victims:lower() == "all" or splitstring[1]:lower() == ":speed" and victims:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername2 or splitstring[1]:lower() == "name" and victims:lower() == "all" or splitstring[1]:lower() == "name" and victims:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername2 or splitstring[1]:lower() == ":name" and victims:lower() == "all" or splitstring[1]:lower() == ":name" and victims:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername2.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername2 or splitstring[1]:lower() == "blind" and victims:lower() == "all" or splitstring[1]:lower() == "blind" and victims:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername2 or splitstring[1]:lower() == ":blind" and victims:lower() == "all" or splitstring[1]:lower() == ":blind" and victims:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unblind " ..thornsusername2.. "")
	end
	
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername2 or splitstring[1]:lower() == "removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == "removelimbs" and victims:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername2 or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername2 or splitstring[1]:lower() == "creeper" and victims:lower() == "all" or splitstring[1]:lower() == "creeper" and victims:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername2 or splitstring[1]:lower() == ":creeper" and victims:lower() == "all" or splitstring[1]:lower() == ":creeper" and victims:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("uncreeper " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "health" and victim == thornsusername2 or splitstring[1]:lower() == "health" and victims:lower() == "all" or splitstring[1]:lower() == "health" and victims:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername2 or splitstring[1]:lower() == ":health" and victims:lower() == "all" or splitstring[1]:lower() == ":health" and victims:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername2 or splitstring[1]:lower() == "noclip" and victims:lower() == "all" or splitstring[1]:lower() == "noclip" and victims:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername2 or splitstring[1]:lower() == ":noclip" and victims:lower() == "all" or splitstring[1]:lower() == ":noclip" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("clip " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "char" and victim == thornsusername2 or splitstring[1]:lower() == "char" and victims:lower() == "all" or splitstring[1]:lower() == "char" and victims:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername2 or splitstring[1]:lower() == ":char" and victims:lower() == "all" or splitstring[1]:lower() == ":char" and victims:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unchar " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername2 or splitstring[1]:lower() == "seizure" and victims:lower() == "all" or splitstring[1]:lower() == "seizure" and victims:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername2 or splitstring[1]:lower() == ":seizure" and victims:lower() == "all" or splitstring[1]:lower() == ":seizure" and victims:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unseizure " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername2 or splitstring[1]:lower() == "infect" and victims:lower() == "all" or splitstring[1]:lower() == "infect" and victims:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername2 or splitstring[1]:lower() == ":infect" and victims:lower() == "all" or splitstring[1]:lower() == ":infect" and victims:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername2 or splitstring[1]:lower() == "freeze" and victims:lower() == "all" or splitstring[1]:lower() == "freeze" and victims:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername2 or splitstring[1]:lower() == ":freeze" and victims:lower() == "all" or splitstring[1]:lower() == ":freeze" and victims:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("thaw " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername2 or splitstring[1]:lower() == "clone" and victims:lower() == "all" or splitstring[1]:lower() == "clone" and victims:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername2 or splitstring[1]:lower() == ":clone" and victims:lower() == "all" or splitstring[1]:lower() == ":clone" and victims:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername2 or splitstring[1]:lower() == "noobify" and victims:lower() == "all" or splitstring[1]:lower() == "noobify" and victims:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername2 or splitstring[1]:lower() == ":noobify" and victims:lower() == "all" or splitstring[1]:lower() == ":noobify" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername2 or splitstring[1]:lower() == "spin" and victims:lower() == "all" or splitstring[1]:lower() == "spin" and victims:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername2 or splitstring[1]:lower() == ":spin" and victims:lower() == "all" or splitstring[1]:lower() == ":spin" and victims:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unspin " ..thornsusername2.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername2 or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername2 or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "gear" and victim ~= thornsusername2 and gearstealertoggle == true and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" or splitstring[1]:lower() == ":gear" and gearstealertoggle == true and victim ~= thornsusername2 and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" then
	inflictthornsdamage:Chat("gear " ..thornsusername2.. " " ..splitstring[3].. "")
	--end if string == "kill" then
	end
	end
	end
	end)
	end
	end)
	end
end

local function clearthorns(Table,playername)
for i = 1,#Table do
local zZZ = Table[i]
if zZZ == playername then
table.remove(Table,i)
end
end
end

--[[thornsvictims.PlayerRemoving:Connect(function(deltable)
	if table.find(thornstable, deltable.Name) then 
	clearthorns(thornstable, deltable.Name)
	end
	end)--]]

thornsuser.Chatted:Connect(function(message)
if message:lower() == "//thorns" then
if thornstoggle == false then
thornstoggle = true
print("thorns on!")
else
thornstoggle = false
print("thorns off.")
end
elseif message:lower() == "//gearstealer" then
if gearstealertoggle == false then
gearstealertoggle = true
print("gear stealer on!")
else
gearstealertoggle = false
print("gear stealer off!")
end
elseif message:lower() == "//dthorns" then
if defensivethorns == false then
defensivethorns = true
print("defense on, please make sure you have thorns on too or this won't work.")
else
defensivethorns = false
print("defense off.")
end
elseif message:lower() == "//testhorns" then
if test == false then
test = true
print("test mode on!")
else
test = false
print("test mode off!")
end
elseif message:match(" ") then
local splitstring = string.split(message, " ")
if splitstring[1] ~= nil and splitstring[2] ~= nil then
if splitstring[1]:lower() == "//thornswl" then
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	victim = v
	end
	if victim ~= nil then
	givethorns(victim)
	print("gave thorns to " ..victim.Name.. "!")
	end
	elseif splitstring[1]:lower() == "//rthorns" then
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	victim = v.Name
	end
	if victim ~= nil then
	clearthorns(thornstable,victim)
	print("removed thorns from " ..victim.Name.. ".")
	end
	end
	end
end
end)

local anticrasherrr = true
	--reload, nausea, clear sky
for i,v in pairs(thornsvictims:GetPlayers()) do
if v.Name ~= thornsusername then
local chicken = game.Players
local personiwanttobrutallymurder = v
v.CharacterAdded:Connect(function()
v.Backpack.ChildAdded:Connect(function(fuckingmurderer)
if fuckingmurderer.Name == "VampireVanquisher" and anticrasherrr == true then
print("" ..v.Name.. " has a blacklisted gear (//anticrash, cause of server crashes)")
v.Backpack:WaitForChild("VampireVanquisher")
chicken:Chat("removetools " ..v.Name.. "")
	if v.Character ~= nil then
	local channel6 = players
	local lplayerisimportant = channel6.LocalPlayer
	local mbackpack = lplayerisimportant.Backpack
	channel6:Chat("gear me " ..string.rep("0",13).. "82357101")
	mbackpack:WaitForChild("PortableJustice")
	local toolremover = mbackpack.PortableJustice
	if channel6.LocalPlayer.Character ~= nil then
	toolremover.Parent = channel6.LocalPlayer.Character
	toolremover = channel6.LocalPlayer.Character.PortableJustice
	end
	if personiwanttobrutallymurder.Character ~= nil and toolremover ~= nil then
	toolremover:WaitForChild("MouseClick")
	channel6:Chat("fly " ..personiwanttobrutallymurder.Name.. "")
	channel6:Chat("tp " ..personiwanttobrutallymurder.Name.. " me")
	channel6:Chat("unff " ..personiwanttobrutallymurder.Name.. "")
	wait(0)
	wait(0.1)
	local arg1 = personiwanttobrutallymurder.Character
	local notarg = lplayerisimportant.Character.PortableJustice.MouseClick
	notarg:FireServer(arg1)
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()
	elseif toolremover ~= nil then
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()

end
end
end
end)
end)
end
end
	local antivel = true

for i,v in pairs(thornsvictims:GetPlayers()) do
if v.Name ~= thornsusername then
local chicken = game.Players
local personiwanttobrutallymurder = v
personiwanttobrutallymurder.CharacterAdded:Connect(function()
personiwanttobrutallymurder.Backpack.ChildAdded:Connect(function(fuckingmurderer)
if fuckingmurderer.Name == "RemoteExplosiveDetonator" and antivel == true then
print("" ..personiwanttobrutallymurder.Name.. " has a blacklisted gear (//antibomb, cause of a part glitch)")
personiwanttobrutallymurder.Backpack:WaitForChild("RemoteExplosiveDetonator")
chicken:Chat("removetools " ..v.Name.. "")
	if v.Character ~= nil then
	local channel6 = players
	local lplayerisimportant = channel6.LocalPlayer
	local mbackpack = lplayerisimportant.Backpack
	channel6:Chat("gear me " ..string.rep("0",13).. "82357101")
	mbackpack:WaitForChild("PortableJustice")
	local toolremover = mbackpack.PortableJustice
	if channel6.LocalPlayer.Character ~= nil then
	toolremover.Parent = channel6.LocalPlayer.Character
	toolremover = channel6.LocalPlayer.Character.PortableJustice
	end
	if personiwanttobrutallymurder.Character ~= nil and toolremover ~= nil then
	toolremover:WaitForChild("MouseClick")
	channel6:Chat("fly " ..personiwanttobrutallymurder.Name.. "")
	channel6:Chat("tp " ..personiwanttobrutallymurder.Name.. " me")
	channel6:Chat("unff " ..personiwanttobrutallymurder.Name.. "")
	wait(0)
	wait(0.1)
	local arg1 = personiwanttobrutallymurder.Character
	local notarg = lplayerisimportant.Character.PortableJustice.MouseClick
	notarg:FireServer(arg1)
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()
	elseif toolremover ~= nil then
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()

end
end
end
end)
end)
end
end
local afreeze = true
for i,v in pairs(players:GetPlayers()) do
if v.Name ~= lplayer.Name then
v.Chatted:Connect(function(onomatopoeia22)
local simpstring = string.split(onomatopoeia22," ")
if table.getn(simpstring) >= 3 and afreeze == true then
local command = simpstring[1]
local arr = simpstring[3]
if tonumber(arr) ~= nil then
if command:match("size") and tonumber(arr) <= 0.5 then
if simpstring[2] == "me" then
players:Chat("punish " ..v.Name.. "")
players:Chat("respawn " ..v.Name.. "")
print("" ..v.Name.. " attempted to size themself less than 0.5 (crash method)")
else
players:Chat("punish " ..simpstring[2].. "")
players:Chat("respawn " ..simpstring[2].. "")
print("" ..v.Name.. " attempted to size someone less than 0.5 (crash method)")
end
end
end
end
end)
end
end
players.PlayerAdded:Connect(function(MAGUSNIGHTFEVERBRUTALSCREAMVERSION2013)
if MAGUSNIGHTFEVERBRUTALSCREAMVERSION2013.Name ~= lplayer.Name then
local plll = MAGUSNIGHTFEVERBRUTALSCREAMVERSION2013
plll.Chatted:Connect(function(FROMTERRIBLESATURN)
local spspsspwspwosdoadoawd = string.split(FROMTERRIBLESATURN," ")
if table.getn(spspsspwspwosdoadoawd) >= 3 then
local command = spspsspwspwosdoadoawd[1]
local bbbbrraiiinzzzzzzzzzzzzzzzzzzzzzzzzzzz = spspsspwspwosdoadoawd[3]
if tonumber(spspsspwspwosdoadoawd[3]) ~= nil then
if command:match("size") and tonumber(bbbbrraiiinzzzzzzzzzzzzzzzzzzzzzzzzzzz) <= 0.5 and afreeze == true then
if spspsspwspwosdoadoawd[2] == "me" then
players:Chat("punish " ..plll.Name.. "")
players:Chat("respawn " ..plll.Name.. "")
print("" ..plll.Name.. " attempted to size themself less than 0.5 (crash method)")
else
players:Chat("punish " ..spspsspwspwosdoadoawd[2].. "")
players:Chat("respawn " ..spspsspwspwosdoadoawd[2].. "")
print("" ..plll.Name.. " attempted to size someone less than 0.5 (crash method)")
end
end
end
end
end)
end
end)
	
	lplayer.Chatted:Connect(function(fuckyou)
	if fuckyou:lower() == "//anticrashoff" then
	anticrasherrr = false
	elseif fuckyou:lower() == "//anticrashon" then
	anticrasherrr = true
	elseif fuckyou:lower() == "//afcon" then
	afreeze = true
	elseif fuckyou:lower() == "//afcoff" then
	afreeze = false
	end
	end)
	
game.Players.PlayerAdded:Connect(function(victimhasjoined)
if victimhasjoined.Name ~= thornsusername then
local chicken = game.Players
local personiwanttobrutallymurder = victimhasjoined
victimhasjoined.CharacterAdded:Connect(function()
local nvvr = personiwanttobrutallymurder:WaitForChild("Backpack")
nvvr.ChildAdded:Connect(function(fuckingmurderer)
if fuckingmurderer.Name == "RemoteExplosiveDetonator" and antivel == true then
print("" ..personiwanttobrutallymurder.Name.. " has a blacklisted gear (//antibomb, cause of a part glitch)")
nvvr:WaitForChild("RemoteExplosiveDetonator")
chicken:Chat("removetools " ..victimhasjoined.Name.. "")
	if personiwanttobrutallymurder.Character ~= nil then
	local channel6 = players
	local lplayerisimportant = channel6.LocalPlayer
	local mbackpack = lplayerisimportant.Backpack
	channel6:Chat("gear me " ..string.rep("0",13).. "82357101")
	mbackpack:WaitForChild("PortableJustice")
	local toolremover = mbackpack.PortableJustice
	if channel6.LocalPlayer.Character ~= nil then
	toolremover.Parent = channel6.LocalPlayer.Character
	toolremover = channel6.LocalPlayer.Character.PortableJustice
	end
	if personiwanttobrutallymurder.Character ~= nil and toolremover ~= nil then
	toolremover:WaitForChild("MouseClick")
	channel6:Chat("fly " ..personiwanttobrutallymurder.Name.. "")
	channel6:Chat("tp " ..personiwanttobrutallymurder.Name.. " me")
	channel6:Chat("unff " ..personiwanttobrutallymurder.Name.. "")
	wait(0)
	wait(0.1)
	local arg1 = personiwanttobrutallymurder.Character
	local notarg = lplayerisimportant.Character.PortableJustice.MouseClick
	notarg:FireServer(arg1)
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()
	elseif toolremover ~= nil then
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()

end
end
end
end)
end)
end
end)
game.Players.PlayerAdded:Connect(function(victimhasjoined2)
if victimhasjoined2.Name ~= thornsusername then
local chicken = game.Players
local personiwanttobrutallymurder = victimhasjoined2
victimhasjoined2.CharacterAdded:Connect(function()
local nvvrim = victimhasjoined2:WaitForChild("Backpack")
nvvrim.ChildAdded:Connect(function(fuckingmurderer)
if fuckingmurderer.Name == "VampireVanquisher" and anticrasherrr == true then
print("" ..personiwanttobrutallymurder.Name.. " has a blacklisted gear (//anticrash, cause of server crashes)")
nvvrim:WaitForChild("VampireVanquisher")
chicken:Chat("removetools " ..victimhasjoined2.Name.. "")
	if personiwanttobrutallymurder.Character ~= nil then
	local channel6 = players
	local lplayerisimportant = channel6.LocalPlayer
	local mbackpack = lplayerisimportant.Backpack
	channel6:Chat("gear me "  ..string.rep("0",13).. "82357101")
	mbackpack:WaitForChild("PortableJustice")
	local toolremover = mbackpack.PortableJustice
	if channel6.LocalPlayer.Character ~= nil then
	toolremover.Parent = channel6.LocalPlayer.Character
	toolremover = channel6.LocalPlayer.Character.PortableJustice
	end
	if personiwanttobrutallymurder.Character ~= nil and toolremover ~= nil then
	toolremover:WaitForChild("MouseClick")
	channel6:Chat("fly " ..personiwanttobrutallymurder.Name.. "")
	channel6:Chat("tp " ..personiwanttobrutallymurder.Name.. " me")
	channel6:Chat("unff " ..personiwanttobrutallymurder.Name.. "")
	wait(0)
	wait(0.1)
	local arg1 = personiwanttobrutallymurder.Character
	local notarg = lplayerisimportant.Character.PortableJustice.MouseClick
	notarg:FireServer(arg1)
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()
	elseif toolremover ~= nil then
	toolremover:Destroy()
	lplayerisimportant.PlayerGui.HelpGui:Destroy()

end
end
end
end)
end)
end
end)

	lplayer.Chatted:Connect(function(fuckyou2)
	if fuckyou2 == "//antibomboff" then
	antivel = false
	end
	if fuckyou2 == "//antibombon" then
	antivel = true
	end
	end)
	
for i,v in pairs(thornsvictims:GetPlayers()) do
if v.Name ~= thornsusername then
v.Chatted:Connect(function(talking)
if talking:match(" ") and thornstoggle == true then
	local splitstring = string.split(talking, " ")
	if splitstring[1] ~= nil and splitstring[2] ~= nil then
	local chicken = players
	local victims = splitstring[2]
	local victim = splitstring[2]
	-- i think i named victimname wrong LOL too late to change it now though
	local victimname = v.Name
	for i,z in pairs(checkif(victim)) do
	if z.Name ~= nil then
	victim = z.Name
	else
	victim = "noonefound!"
	end
	if splitstring[1]:lower() == "kill" and victim == thornsusername or splitstring[1]:lower() == "kill" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "kill" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername or splitstring[1]:lower() == ":kill" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":kill" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername or splitstring[1]:lower() == "explode" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "explode" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername or splitstring[1]:lower() == ":explode" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":explode" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername or splitstring[1]:lower() == "respawn" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "respawn" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername or splitstring[1]:lower() == ":respawn" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":respawn" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername or splitstring[1]:lower() == "unff" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "unff" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername or splitstring[1]:lower() == ":unff" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":unff" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername or splitstring[1]:lower() == "fling" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "fling" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername or splitstring[1]:lower() == ":fling" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":fling" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("fly " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "smoke" and victim == thornsusername or splitstring[1]:lower() == "smoke" and victims:lower() == "all" or splitstring[1]:lower() == "smoke" and victims:lower() == "others" or splitstring[1]:lower() == ":smoke" and victim == thornsusername or splitstring[1]:lower() == ":smoke" and victims:lower() == "all" or splitstring[1]:lower() == ":smoke" and victims:lower() == "others" then
	inflictthornsdamage:Chat("smoke " ..victimname.. "")
	if defensivethorns == true then
	inflictthornsdamage:Chat("unsmoke " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername2 or splitstring[1]:lower() == "reload" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "reload" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername2 or splitstring[1]:lower() == ":reload" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":reload" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername or splitstring[1]:lower() == "stun" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "stun" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername or splitstring[1]:lower() == ":stun" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":stun" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unstun " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername or splitstring[1]:lower() == "fire" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "fire" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername or splitstring[1]:lower() == ":fire" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":fire" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername or splitstring[1]:lower() == "bonfire" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "bonfire" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername or splitstring[1]:lower() == ":bonfire" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":bonfire" and splitstring[2]:lower() == "others" then --victims
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername or splitstring[1]:lower() == "reset" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "reset" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername or splitstring[1]:lower() == ":reset" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":reset" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername or splitstring[1]:lower() == "jail" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "jail" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername or splitstring[1]:lower() == ":jail" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":jail" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unjail " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername or splitstring[1]:lower() == "punish" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername or splitstring[1]:lower() == ":punish" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":punish" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unpunish " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername or splitstring[1]:lower() == "ungod" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername or splitstring[1]:lower() == ":ungod" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":ungod" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername or splitstring[1]:lower() == "damage" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername or splitstring[1]:lower() == ":damage" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":damage" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername or splitstring[1]:lower() == "setgrav" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername or splitstring[1]:lower() == ":setgrav" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":setgrav" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("grav " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername or splitstring[1]:lower() == "speed" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "speed" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername or splitstring[1]:lower() == ":speed" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":speed" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername or splitstring[1]:lower() == "name" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "name" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername or splitstring[1]:lower() == ":name" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":name" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername or splitstring[1]:lower() == "blind" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "blind" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername or splitstring[1]:lower() == ":blind" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":blind" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unblind " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername or splitstring[1]:lower() == "removelimbs" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "removelimbs" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername or splitstring[1]:lower() == ":removelimbs" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername or splitstring[1]:lower() == "creeper" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "creeper" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername or splitstring[1]:lower() == ":creeper" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":creeper" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("uncreeper " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "health" and victim == thornsusername or splitstring[1]:lower() == "health" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "health" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername or splitstring[1]:lower() == ":health" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":health" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername or splitstring[1]:lower() == "noclip" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "noclip" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername or splitstring[1]:lower() == ":noclip" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":noclip" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("clip " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "char" and victim == thornsusername or splitstring[1]:lower() == "char" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "char" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername or splitstring[1]:lower() == ":char" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":char" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unchar " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername or splitstring[1]:lower() == "seizure" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "seizure" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername or splitstring[1]:lower() == ":seizure" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":seizure" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unseizure " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername or splitstring[1]:lower() == "infect" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "infect" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername or splitstring[1]:lower() == ":infect" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":infect" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername or splitstring[1]:lower() == "freeze" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "freeze" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername or splitstring[1]:lower() == ":freeze" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":freeze" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("thaw " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername or splitstring[1]:lower() == "clone" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "clone" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername or splitstring[1]:lower() == ":clone" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":clone" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername or splitstring[1]:lower() == "noobify" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "noobify" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername or splitstring[1]:lower() == ":noobify" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":noobify" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername or splitstring[1]:lower() == "spin" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "spin" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername or splitstring[1]:lower() == ":spin" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":spin" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unspin " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername or splitstring[1]:lower() == "reload" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "reload" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername or splitstring[1]:lower() == ":reload" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":reload" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "gear" and victim ~= thornsusername and gearstealertoggle == true and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" or splitstring[1]:lower() == ":gear" and gearstealertoggle == true and victim ~= thornsusername and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" then
	inflictthornsdamage:Chat("gear " ..thornsusername.. " " ..splitstring[3].. "")
	--end if string == "kill" then
	end
	end
	end
	end
	end)
	end
	end
	

thornsvictims.PlayerAdded:Connect(function(victimhasjoined)
if victimhasjoined ~= thornsuser then
local victimname = victimhasjoined.Name
victimhasjoined.Chatted:Connect(function(talking2)
if talking2:match(" ") and thornstoggle == true then
	local splitstring = string.split(talking2, " ")
	if splitstring[1] ~= nil and splitstring[2] ~= nil then
	local chicken = players
	local victims = splitstring[2]
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	if v.Name ~= nil then
	victim = v.Name
	else
	victim = "noonefound!"
	end
	if splitstring[1]:lower() == "kill" and victim == thornsusername or splitstring[1]:lower() == "kill" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "kill" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername or splitstring[1]:lower() == ":kill" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":kill" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername or splitstring[1]:lower() == "explode" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "explode" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername or splitstring[1]:lower() == ":explode" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":explode" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername or splitstring[1]:lower() == "respawn" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "respawn" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername or splitstring[1]:lower() == ":respawn" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":respawn" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername or splitstring[1]:lower() == "unff" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "unff" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername or splitstring[1]:lower() == ":unff" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":unff" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername or splitstring[1]:lower() == "fling" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "fling" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername or splitstring[1]:lower() == ":fling" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":fling" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("fly " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "smoke" and victim == thornsusername or splitstring[1]:lower() == "smoke" and victims:lower() == "all" or splitstring[1]:lower() == "smoke" and victims:lower() == "others" or splitstring[1]:lower() == ":smoke" and victim == thornsusername or splitstring[1]:lower() == ":smoke" and victims:lower() == "all" or splitstring[1]:lower() == ":smoke" and victims:lower() == "others" then
	inflictthornsdamage:Chat("smoke " ..victimname.. "")
	if defensivethorns == true then
	inflictthornsdamage:Chat("unsmoke " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername2 or splitstring[1]:lower() == "reload" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "reload" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername2 or splitstring[1]:lower() == ":reload" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":reload" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername or splitstring[1]:lower() == "stun" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "stun" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername or splitstring[1]:lower() == ":stun" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":stun" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unstun " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername or splitstring[1]:lower() == "fire" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "fire" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername or splitstring[1]:lower() == ":fire" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":fire" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername or splitstring[1]:lower() == "bonfire" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "bonfire" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername or splitstring[1]:lower() == ":bonfire" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":bonfire" and splitstring[2]:lower() == "others" then --victims
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unfire " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername or splitstring[1]:lower() == "reset" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "reset" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername or splitstring[1]:lower() == ":reset" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":reset" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername or splitstring[1]:lower() == "jail" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "jail" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername or splitstring[1]:lower() == ":jail" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":jail" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unjail " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername or splitstring[1]:lower() == "punish" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername or splitstring[1]:lower() == ":punish" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":punish" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unpunish " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername or splitstring[1]:lower() == "ungod" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername or splitstring[1]:lower() == ":ungod" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":ungod" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername or splitstring[1]:lower() == "damage" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername or splitstring[1]:lower() == ":damage" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":damage" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername or splitstring[1]:lower() == "setgrav" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername or splitstring[1]:lower() == ":setgrav" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":setgrav" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("grav " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername or splitstring[1]:lower() == "speed" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "speed" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername or splitstring[1]:lower() == ":speed" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":speed" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername or splitstring[1]:lower() == "name" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "name" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername or splitstring[1]:lower() == ":name" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":name" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername or splitstring[1]:lower() == "blind" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "blind" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername or splitstring[1]:lower() == ":blind" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":blind" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unblind " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername or splitstring[1]:lower() == "removelimbs" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "removelimbs" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername or splitstring[1]:lower() == ":removelimbs" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername or splitstring[1]:lower() == "creeper" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "creeper" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername or splitstring[1]:lower() == ":creeper" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":creeper" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("uncreeper " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "health" and victim == thornsusername or splitstring[1]:lower() == "health" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "health" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername or splitstring[1]:lower() == ":health" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":health" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername or splitstring[1]:lower() == "noclip" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "noclip" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername or splitstring[1]:lower() == ":noclip" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":noclip" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("clip " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "char" and victim == thornsusername or splitstring[1]:lower() == "char" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "char" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername or splitstring[1]:lower() == ":char" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":char" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unchar " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername or splitstring[1]:lower() == "seizure" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "seizure" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername or splitstring[1]:lower() == ":seizure" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":seizure" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unseizure " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername or splitstring[1]:lower() == "infect" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "infect" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername or splitstring[1]:lower() == ":infect" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":infect" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername or splitstring[1]:lower() == "freeze" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "freeze" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername or splitstring[1]:lower() == ":freeze" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":freeze" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("thaw " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername or splitstring[1]:lower() == "clone" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "clone" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername or splitstring[1]:lower() == ":clone" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":clone" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername or splitstring[1]:lower() == "noobify" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "noobify" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername or splitstring[1]:lower() == ":noobify" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":noobify" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("normal " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername or splitstring[1]:lower() == "spin" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "spin" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername or splitstring[1]:lower() == ":spin" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":spin" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	if defensivethorns == true then
	wait(0.1)
	inflictthornsdamage:Chat("unspin " ..thornsusername.. "")
	end
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername or splitstring[1]:lower() == "reload" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == "reload" and splitstring[2]:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername or splitstring[1]:lower() == ":reload" and splitstring[2]:lower() == "all" or splitstring[1]:lower() == ":reload" and splitstring[2]:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	elseif splitstring[1]:lower() == "gear" and victim ~= thornsusername and gearstealertoggle == true and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" or splitstring[1]:lower() == ":gear" and gearstealertoggle == true and victim ~= thornsusername and splitstring[2]:lower() ~= "others" and splitstring[2]:lower() ~= "all" then
	inflictthornsdamage:Chat("gear " ..thornsusername.. " " ..splitstring[3].. "")
	--end if string == "kill" then
	end
	end
	end
	end
	end)
	end
	end)
	
--give antikill




local whohasantikill = {
antikillon = {}
}



--get player
function getplrr(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    return Found    
end

local lPlPlPl = lplayer
local PlPlPl = lPlPlPl.Chatted
local plrimp = players

--[[plrimp.PlayerRemoving:Connect(function(deltable)
	if table.find(whohasantikill.antikillon, deltable.Name) then 
	removeantikill(whohasantikill.antikillon, deltable.Name)
	end
	end)
	--]]
	
local function removeantikill(Table,playername)
for i = 1,#Table do
local zZZ = Table[i]
if zZZ == playername then
table.remove(Table,i)
end
end
end


local function antikill(target,toggle)
if toggle == true then
local Praisebeetothebubble = tostring(target)

print("gave antikill to: " ..Praisebeetothebubble.. "")
for i,v in pairs(getplrr(Praisebeetothebubble)) do
	local whomst = v
	local giveantikill = v.Character
	local giveantikillstring = v.Name
	local debuggiveantikill = tostring(giveantikill)
	table.insert(whohasantikill.antikillon, giveantikillstring)
	
	print(unpack(whohasantikill.antikillon))
	players:Chat("god " ..giveantikillstring.. "")
	giveantikill.Humanoid.Changed:Connect(function(dwnia)
	if egg == "Health" and table.find(whohasantikill.antikillon, giveantikillstring) then
	players:Chat("god " ..giveantikillstring.. "")
	end
	end)
	
	players:Chat(":ff " ..giveantikillstring.. "")
	giveantikill.ChildRemoved:Connect(function(squid)
	if squid:IsA("ForceField") and table.find(whohasantikill.antikillon, giveantikillstring) then
	players:Chat("ff " ..giveantikillstring.. "")
	end
	end)
	
	giveantikill:WaitForChild("Humanoid").Died:Connect(function(fish)
    if table.find(whohasantikill.antikillon, giveantikillstring) then 
	
	players:Chat("reset " ..giveantikillstring.. "")
	
	wait(0.2)
	
	players:Chat("god " ..giveantikillstring.. "")
	players:Chat("ff " ..giveantikillstring.. "")
	
	
	giveantikill.Humanoid.Changed:Connect(function(eeeeeeeeeee)
	if egg == "Health" and table.find(whohasantikill.antikillon, giveantikillstring) then
	players:Chat("god " ..giveantikillstring.. "")
	end
	end)
	
	giveantikill.ChildRemoved:Connect(function(waaaa)
	if squid:IsA("ForceField") and table.find(whohasantikill.antikillon, giveantikillstring) then
	players:Chat("ff " ..giveantikillstring.. "")
	end
	end)
	end
	end)

	--// Anti Spam Kill (On Death Restart)
	whomst.CharacterAdded:connect(function(zzzzzz)
	local whomst = v
	local giveantikill = v.Character
	local giveantikillstring = v.Name
	giveantikill:WaitForChild("Humanoid").Died:Connect(function(what)
	
    if table.find(whohasantikill.antikillon, giveantikillstring) then 
	
	players:Chat("reset " ..giveantikillstring.. "")
	
	wait(0.2)
	
	players:Chat("god " ..giveantikillstring.. "")
	players:Chat("ff " ..giveantikillstring.. "")
	
	
	giveantikill.Humanoid.Changed:Connect(function(waaaahhhhh)
	if egg == "Health" and table.find(whohasantikill.antikillon, giveantikillstring) then
	players:Chat("god " ..giveantikillstring.. "")
	end
	end)
	
	giveantikill.ChildRemoved:Connect(function(renamingthismightfixit)
	if squid:IsA("ForceField") and table.find(whohasantikill.antikillon, giveantikillstring) then
	players:Chat("ff " ..giveantikillstring.. "")
	end
	end)
	end
	end)
	end)
	end
	
	elseif toggle == false then
	local Praisebeetothebubble = tostring(target)

	for i,v in pairs(getplrr(Praisebeetothebubble)) do
	local delantikillstr = v.Name
	removeantikill(whohasantikill.antikillon, delantikillstr)

end
end
end

--command form is the superior form (even for hiding it, /c system)
PlPlPl:Connect(function(bRainfReeze)
if bRainfReeze:match("//giveantikill") then
	local splitstring = string.split(bRainfReeze, " ")
	local tHisIsString2 = splitstring[2]
	
	for i,v in pairs(getplrr(tHisIsString2)) do
	local givemepls = v.Name
	antikill(givemepls,true)
	end
	
end
end)

--yar har your antikill is now mine
PlPlPl:Connect(function(fReezebRain)
if fReezebRain:match("//removeantikill") then
	local splitstring = string.split(fReezebRain, " ")
	local tHisIsString2 = splitstring[2]
	
	for i,v in pairs(getplrr(tHisIsString2)) do
	local givemepls = v.Name
	antikill(givemepls,false)
	end
	
end
end)	

--autopunish
local PLAYERS = players
local AUTOPUNISH = false
local LOCALPLAYERNAME = lplayer.Name
local LOCALPLAYER = lplayer
local WHITELISTED = {}
local AUTOPUNISHINGPLAYERS = {}

local function FINDUSER(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    return Found    
end

local function UNWHITELIST(Table,playername)
for i = 1,#Table do
local zZZ = Table[i]
if zZZ == playername then
table.remove(Table,i)
end
end
end



LOCALPLAYER.Chatted:Connect(function(MSG)
if MSG:lower() == "//autopunish" then
if AUTOPUNISH == false then
AUTOPUNISH = true
for i,v in pairs(PLAYERS:GetPlayers()) do
if v.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, v.Name) then
wait(1.25)
PLAYERS:Chat("punish " ..v.Name.. "")
end
end
else
AUTOPUNISH = false
end
end
if MSG:match(" ") then
local splitstring = string.split(MSG, " ")
if splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "wl" and splitstring[3] ~= nil or splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "whitelist" and splitstring[3] ~= nil then
local TOBEWHITELISTEDNAME
for i,v in pairs(FINDUSER(splitstring[3])) do
if v.Name ~= nil then
TOBEWHITELISTEDNAME = v.Name
wait(0)
table.insert(WHITELISTED, TOBEWHITELISTEDNAME)
end
end

elseif splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "unwl" and splitstring[3] ~= nil or splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "unwhitelist" and splitstring[3] ~= nil then
local TOBEUNWHITELISTED
for i,v in pairs(FINDUSER(splitstring[3])) do
if v.Name ~= nil then
TOBEUNWHITELISTED = v.Name
UNWHITELIST(WHITELISTED, TOBEUNWHITELISTED)
end
end

elseif splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "player" and splitstring[3] ~= nil then
local TOBEAUTOPUNISHED
local TOBEAUTOPUNISHEDNAME
for i,v in pairs(FINDUSER(splitstring[3])) do
if v ~= nil and v.Name ~= nil then
TOBEAUTOPUNISHED = v
TOBEAUTOPUNISHEDNAME = v.Name
end
end
if TOBEAUTOPUNISHED ~= nil and TOBEAUTOPUNISHEDNAME ~= nil then
table.insert(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME)

PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")

TOBEAUTOPUNISHED.Chatted:Connect(function(MSGHERE)
if table.find(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME) then
local impstring = string.split(MSGHERE," ")
if impstring[1] ~= nil and impstring[2] ~= nil then
if impstring[1]:lower() == "unpunish" or impstring[1]:lower() == ":unpunish" or impstring[1]:lower() == "respawn" or impstring[1]:lower() == ":respawn" or impstring[1]:lower() == "reset" or impstring[1]:lower() == ":reset" or impstring[1]:lower() == "char" or impstring[1]:lower() == ":char" or impstring[1]:lower() == "reload" or impstring[1]:lower() == ":reload" and impstring[2] ~= nil then
if impstring[2]:lower() == "me" then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
end
end
end
end
end)
for i,NOUNPUNISHING in pairs(PLAYERS:GetPlayers()) do
if NOUNPUNISHING.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, NOUNPUNISHING.Name) then
NOUNPUNISHING.Chatted:Connect(function(MESSAGEISHERE)
if table.find(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME) and NOUNPUNISHING.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, NOUNPUNISHING.Name) then
local impstring = string.split(MESSAGEISHERE," ")
if impstring[2] ~= nil then
if impstring[1]:lower() == "unpunish" or impstring[1]:lower() == ":unpunish" or impstring[1]:lower() == "respawn" or impstring[1]:lower() == ":respawn" or impstring[1]:lower() == "reset" or impstring[1]:lower() == ":reset" or impstring[1]:lower() == "char" or impstring[1]:lower() == ":char" or impstring[1]:lower() == "reload" or impstring[1]:lower() == ":reload" and impstring[2] ~= nil then
for i,v in pairs(FINDUSER(impstring[2])) do
if v.Name ~= nil then
if v.Name == TOBEAUTOPUNISHEDNAME then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
wait(0.2)
PLAYERS:Chat("punish " ..NOUNPUNISHING.Name.. "")
end
end
end
if impstring[2]:lower() == "all" or impstring[2]:lower() == "others" or impstring[2]:lower() == "admins" then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
wait(0.2)
PLAYERS:Chat("punish " ..NOUNPUNISHING.Name.. "")
end
end
end
end
end)
end
end
PLAYERS.PlayerAdded:Connect(function(NOUNPUNISHING2)
if NOUNPUNISHING2.Name ~= LOCALPLAYERNAME and table.find(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME) and not table.find(WHITELISTED, NOUNPUNISHING2.Name) then
NOUNPUNISHING2.Chatted:Connect(function(MESSAGEISHERE)
if table.find(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME) and NOUNPUNISHING2.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, NOUNPUNISHING2.Name) then
local impstring = string.split(MESSAGEISHERE," ")
if impstring[1]:lower() == "unpunish" or impstring[1]:lower() == ":unpunish" or impstring[1]:lower() == "respawn" or impstring[1]:lower() == ":respawn" or impstring[1]:lower() == "reset" or impstring[1]:lower() == ":reset" or impstring[1]:lower() == "char" or impstring[1]:lower() == ":char" or impstring[1]:lower() == "reload" or impstring[1]:lower() == ":reload" and impstring[2] ~= nil then
for i,v in pairs(FINDUSER(impstring[2])) do
if v.Name ~= nil then
if v.Name == TOBEAUTOPUNISHEDNAME then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
wait(0.2)
PLAYERS:Chat("punish " ..NOUNPUNISHING2.Name.. "")
end
end
end
if impstring[2]:lower() == "all" or impstring[2]:lower() == "others" or impstring[2]:lower() == "admins" then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
wait(0.2)
PLAYERS:Chat("punish " ..NOUNPUNISHING2.Name.. "")
end
end
end
end)
end
end) --h
end
end --h
end --h
end) 

lplayer.Chatted:Connect(function(fuck)
local splitstring = string.split(fuck," ") 
if splitstring[1]:lower() == "//autopunishoff" and splitstring[2]:lower() == "player" and splitstring[3] ~= nil then
for i,v in pairs(FINDUSER(splitstring[3])) do
if v.Name ~= nil then
if table.find(AUTOPUNISHINGPLAYERS, v.Name) then
UNWHITELIST(AUTOPUNISHINGPLAYERS, v.Name)
end
end
end
end
end)

for i,v in pairs(PLAYERS:GetPlayers()) do
if v.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, v.Name) then
v.Chatted:Connect(function(MESSAGE)
if MESSAGE:match(" ") and AUTOPUNISH == true and not table.find(WHITELISTED, v.Name) then
	local splitstring = string.split(MESSAGE, " ")
	local VICTIMSNAME = v.Name
	local targetname
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" or splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" or splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" or splitstring[1]:lower() == "char" or splitstring[1]:lower() == ":char" or splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" or splitstring[1]:lower() == "unchar" or splitstring[1]:lower() == ":unchar" then
	if splitstring[2]:lower() ~= "me" then
	for i,z in pairs(FINDUSER(splitstring[2])) do
	if z.Name ~= nil then
	targetname = z.Name
	PLAYERS:Chat("punish " ..targetname.. "")
	end
	end
	end
	if splitstring[2]:lower() == "all" then
	for i,x in pairs(PLAYERS:GetPlayers()) do
	if x.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, x.Name) then
	wait(0.5)
	PLAYERS:Chat("punish " ..x.Name.. "")
	end
	end	
	elseif splitstring[2]:lower() == "me" then
	PLAYERS:Chat("punish " ..v.Name.. "")
	end
	--end if splitstring[1]:lower() == "unpunish" or ect then below
	end
	end
	if MESSAGE:match("/") and AUTOPUNISH == true then
	local splitstring = string.split(MESSAGE, "/")
	local VICTIMSNAME = v.Name
	local targetname
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" or splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" or splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" or splitstring[1]:lower() == "char" or splitstring[1]:lower() == ":char" or splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
	if splitstring[2]:lower() ~= "me" then
	for i,z in pairs(FINDUSER(splitstring[2])) do
	if z.Name ~= nil then
	targetname = z.Name
	PLAYERS:Chat("punish " ..targetname.. "")
	end
	end
	elseif splitstring[2]:lower() == "me" then
	PLAYERS:Chat("punish " ..v.Name.. "")
	end
	end
	if splitstring[2]:lower() == "all" then
	for i,x in pairs(PLAYERS:GetPlayers()) do
	if x.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, x.Name) then
	wait(0.5)
	PLAYERS:Chat("punish " ..x.Name.. "")
	end
	end	
	--end if splitstring[1]:lower() == "unpunish" then below
	end
	end
	end)
	end
	end
	
	
	PLAYERS.PlayerAdded:Connect(function(VICTIMJOINED)
	if VICTIMJOINED.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, VICTIMJOINED.Name) then
	if AUTOPUNISH == true then
	PLAYERS:Chat("respawn " ..VICTIMJOINED.Name.. "")
	wait(0.4)
	PLAYERS:Chat("punish " ..VICTIMJOINED.Name.. "")
	end
	VICTIMJOINED.Chatted:Connect(function(MESSAGE)
	if MESSAGE:match(" ") and AUTOPUNISH == true and not table.find(WHITELISTED, VICTIMJOINED.Name) then
	local splitstring = string.split(MESSAGE, " ")
	local VICTIMSNAME = VICTIMJOINED.Name
	local targetname
	
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" or splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" or splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" or splitstring[1]:lower() == "char" or splitstring[1]:lower() == ":char" or splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
	if splitstring[2]:lower() ~= "me" then
	for i,z in pairs(FINDUSER(splitstring[2])) do
	if z.Name ~= nil then
	targetname = z.Name
	PLAYERS:Chat("punish " ..targetname.. "")
	end
	end
	elseif splitstring[2]:lower() == "me" then
	PLAYERS:Chat("punish " ..VICTIMJOINED.Name.. "")
	end
	end
	if splitstring[2]:lower() == "all" then
	for i,x in pairs(PLAYERS:GetPlayers()) do
	if x.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, x.Name) then
	wait(0.5)
	PLAYERS:Chat("punish " ..x.Name.. "")
	end
	end	

	--end if splitstring[1]:lower() == "unpunish" then below
	end
	end
	if MESSAGE:match("/") and AUTOPUNISH == true then
	local splitstring = string.split(MESSAGE, "/")
	local VICTIMSNAME = VICTIMJOINED.Name
	local targetname
	
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" or splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" or splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" or splitstring[1]:lower() == "char" or splitstring[1]:lower() == ":char" or splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
	if splitstring[2]:lower() ~= "me" then
	for i,z in pairs(FINDUSER(splitstring[2])) do
	if z.Name ~= nil then
	targetname = z.Name
	PLAYERS:Chat("punish " ..targetname.. "")
	end
	end
	elseif splitstring[2]:lower() == "me" then
	PLAYERS:Chat("punish " ..VICTIMJOINED.Name.. "")
	end
	end
	if splitstring[2]:lower() == "all" then
	for i,x in pairs(PLAYERS:GetPlayers()) do
	if x.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, x.Name) then
	wait(0.5)
	PLAYERS:Chat("punish " ..x.Name.. "")
	end
	end	
	--end if splitstring[1]:lower() == "unpunish" then below
	end
	end
	end)
	
	end
	end)

	

	--hi
	
	
	wait(0)
	players.PlayerRemoving:Connect(function(deltable)
	if table.find(whohasantikill.antikillon, deltable.Name) then 
	removeantikill(whohasantikill.antikillon, deltable.Name)
	end
	if table.find(thornstable, deltable.Name) then
	clearthorns(thornstable, deltable.Name)
	end
	if table.find(whitelistedtable.users, deltable.Name) then
	unwhitelist(deltable.Name)
	end
	if table.find(AUTOPUNISHINGPLAYERS, deltable.Name) then
	clearthorns(AUTOPUNISHINGPLAYERS, deltable.Name)
	end
	if table.find(whitelistedtable.previouswhitelistedusers, deltable.Name) then
	clearthorns(whitelistedtable.previouswhitelistedusers, deltable.Name)
	end
	end)
	
	--anti-partmove
	
	local GMAIL = game.Players
	local MAXIMIZE = lplayer
	local RESTRAININGORDERS = {}
	local ITSDEATHGRIPS = true
	MAXIMIZE.Chatted:Connect(function(MYDREAM)
	local splitstring = string.split(MYDREAM," ")
	if splitstring[1] == "//partwhitelist" and splitstring[2] ~= nil then
	for i,v in pairs(getplr(splitstring[2])) do
	if v ~= nil then
	table.insert(RESTRAININGORDERS,v.Name)
	end
	end

	elseif splitstring[1] == "//unpartwhitelist" and splitstring[2] ~= nil then
	if not table.find(RESTRAININGORDERS,splitstring[2]) then
	for i,v in pairs(getplr(splitstring[2])) do
	if v ~= nil then
	removefromtable(RESTRAININGORDERS,v.Name)
	end	-- v ~= nil
	end	--getplr 
	elseif table.find(RESTRAININGORDERS,splitstring[2]) then
	removefromtable(RESTRAININGORDERS,splitstring[2])
	end	--table.find
	elseif splitstring[1] == "//antipartmove" then
	if ITSDEATHGRIPS == true then
	ITSDEATHGRIPS = false
	else
	ITSDEATHGRIPS = true
	end -- if ITSDEATHGRIPS
	end --elseif orgin(ifsplitstring = partwhitelist
	end) -- function
	local prefix = ":"
	local function MESSAGE(xxx)
	GMAIL:Chat(xxx)
	end
	coroutine.wrap(function()
	for i,v in pairs(GMAIL:GetPlayers()) do
	if v.Name ~= MAXIMIZE.Name then
	local restrainedname = v.Name
	if v.Character ~= nil then
	local restrainedname = v.Name
	local humanoidv = v.Character:WaitForChild("Humanoid")
	local vvvvvvv
	if humanoidv.RigType == Enum.HumanoidRigType.R6 then
	vvvvvvv = v.Character:WaitForChild("Torso",10)
	elseif humanoidv.RigType == Enum.HumanoidRigType.R15 then
	vvvvvvv = v.Character:WaitForChild("UpperTorso",10)
	end
	if vvvvvvv ~= nil then
	vvvvvvv.ChildAdded:Connect(function(GOVERNMENTPLATES)
	if GOVERNMENTPLATES.Name == "Snap" and ITSDEATHGRIPS == true and not table.find(RESTRAININGORDERS,restrainedname) then
	MESSAGE("" ..prefix.. "respawn " ..restrainedname.. "")
	print("" ..restrainedname.. " attempted to move a part and was respawned.")
	end
	end)
	end
	end
	
	v.CharacterAdded:Connect(function(podayto)
	local humanoidx = v.Character:WaitForChild("Humanoid")
	local lifestealisop
	if humanoidx.RigType == Enum.HumanoidRigType.R6 then
	lifestealisop = v.Character:WaitForChild("Torso",10)
	elseif humanoidx.RigType == Enum.HumanoidRigType.R15 then
	lifestealisop = v.Character:WaitForChild("UpperTorso",10)
	end	
	if lifestealisop ~= nil then
	lifestealisop.ChildAdded:Connect(function(GOVERNMENTPLATES)
	if GOVERNMENTPLATES.Name == "Snap" and ITSDEATHGRIPS == true and not table.find(RESTRAININGORDERS,restrainedname) then
	MESSAGE("" ..prefix.. "respawn " ..restrainedname.. "")
	print("" ..restrainedname.. " attempted to move a part and was respawned.")
	end
	end)
	end
	end)
	end
	end
	end)()
		coroutine.wrap(function()
		GMAIL.PlayerAdded:Connect(function(vampirism)
		if vampirism.Name ~= MAXIMIZE.Name then
		vampirism.CharacterAdded:Connect(function(onomatopoeia)
		local restrainedname = vampirism.Name
		local humanoidy = vampirism.Character:WaitForChild("Humanoid")
		local siphon
		if humanoidy.RigType == Enum.HumanoidRigType.R6 then
		siphon = vampirism.Character:WaitForChild("Torso")
		elseif humanoidy.RigType == Enum.HumanoidRigType.R15 then
		siphon = vampirism.Character:WaitForChild("UpperTorso")
		end	
		siphon.ChildAdded:Connect(function(GOVERNMENTPLATES)
		if GOVERNMENTPLATES.Name == "Snap" and ITSDEATHGRIPS == true and not table.find(RESTRAININGORDERS,restrainedname) then
		MESSAGE("" ..prefix.. "respawn " ..restrainedname.. "")
		print("" ..restrainedname.. " attempted to move a part and was respawned.")
		end
		end)
		end)
		end
		end)
		end)()
		
		--note: this is horribly unoptimized too lazy, i think this script is causing my game to crash sometimes, too lazy to do anything about it
		




local houseofdoujinshi = {Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel178,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel165,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel162,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel147,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel140,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel129,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel127,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel126,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel130,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel125,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel123,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel122,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel120,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel114,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel112,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel110,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel115,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel103,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel102,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel118,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel98,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel97,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel89,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel87,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel119,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel86,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel84,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel108,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel81,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel80,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel128,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel78,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel77,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel135,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel75,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel88,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel74,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel72,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel70,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel69,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel66,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel64,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel62,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel143,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel61,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel124,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel65,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel131,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel57,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel42,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel48,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel41,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel38,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel73,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel35,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel39,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel53,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel34,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel49,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel55,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel56,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel106,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel33,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel30,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel117,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel32,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel58,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel111,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel95,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel29,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel28,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel27,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel25,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel109,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel26,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel63,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel24,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel51,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel21,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel20,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel76,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel68,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel40,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel18,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel17,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel45,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel99,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel15,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel31,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel11,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel12,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel10,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel67,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel9,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel22,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel52,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel7,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel6,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel137,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel113,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel46,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel5,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel19,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel16,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel100,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel54,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel4,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel47,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel14,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel3,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel44,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel176,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel36,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel2,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel60,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel104,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel50,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel43,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel37,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel83,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel8,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel59,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel79,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel13,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel23,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel160,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel1,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel230,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel228,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel227,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel225,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel224,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel223,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel222,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel221,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel220,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel217,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel215,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel213,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel212,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel218,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel209,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel207,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel205,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel204,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel203,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel198,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel195,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel194,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel190,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel216,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel188,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel186,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel183,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel181,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel179,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel177,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel175,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel219,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel173,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel172,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel189,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel168,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel166,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel161,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel157,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel156,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel206,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel171,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel187,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel155,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel154,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel200,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel182,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel214,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel229,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel152,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel148,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel180,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel146,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel141,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel196,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel142,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel139,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel226,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel138,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel134,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel149,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel133,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel132,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel184,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel150,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel164,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel121,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel167,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel116,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel151,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel231,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel169,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel93,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel163,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel201,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel96,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel92,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel101,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel193,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel211,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel90,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel199,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel153,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel107,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel71,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel197,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel174,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel185,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel191,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel94,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel145,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel192,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel158,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel136,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel170,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel208,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel210,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel202,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel85,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel144,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel91,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel105,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel159,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel232,Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel82}
local houseofsuffering = {Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider2,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider3,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider4,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider7,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider9,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider5,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider1,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider8,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider10,Workspace.Terrain._Game.Workspace["Admin Dividers"].Divider6,Workspace.Terrain._Game.Workspace["Admin Dividers"].Back}
local houseofetiquette = {Workspace.Terrain._Game.Workspace["Obby Box"]["Left Wall"],Workspace.Terrain._Game.Workspace["Obby Box"]["Back Wall"],Workspace.Terrain._Game.Workspace["Obby Box"]["Right Wall"],Workspace.Terrain._Game.Workspace["Obby Box"]["Ceiling Wall"]}
local houseofinstantdeath = {Workspace.Terrain._Game.Workspace.Obby.Jump9,Workspace.Terrain._Game.Workspace.Obby.Jump2,Workspace.Terrain._Game.Workspace.Obby.Jump1,Workspace.Terrain._Game.Workspace.Obby.Jump,Workspace.Terrain._Game.Workspace.Obby.Jump8,Workspace.Terrain._Game.Workspace.Obby.Jump5,Workspace.Terrain._Game.Workspace.Obby.Jump4,Workspace.Terrain._Game.Workspace.Obby.Jump3,Workspace.Terrain._Game.Workspace.Obby.Jump7,Workspace.Terrain._Game.Workspace.Obby.Jump6}
local houseofhouse = {Workspace.Terrain._Game.Workspace["Building Bricks"].Part61,Workspace.Terrain._Game.Workspace["Building Bricks"].Part60,Workspace.Terrain._Game.Workspace["Building Bricks"].Part59,Workspace.Terrain._Game.Workspace["Building Bricks"].Part51,Workspace.Terrain._Game.Workspace["Building Bricks"].Part47,Workspace.Terrain._Game.Workspace["Building Bricks"].Part46,Workspace.Terrain._Game.Workspace["Building Bricks"].Part45,Workspace.Terrain._Game.Workspace["Building Bricks"].Part53,Workspace.Terrain._Game.Workspace["Building Bricks"].Part43,Workspace.Terrain._Game.Workspace["Building Bricks"].Part42,Workspace.Terrain._Game.Workspace["Building Bricks"].Part40,Workspace.Terrain._Game.Workspace["Building Bricks"].Part52,Workspace.Terrain._Game.Workspace["Building Bricks"].Part38,Workspace.Terrain._Game.Workspace["Building Bricks"].Part37,Workspace.Terrain._Game.Workspace["Building Bricks"].Part35,Workspace.Terrain._Game.Workspace["Building Bricks"].Part34,Workspace.Terrain._Game.Workspace["Building Bricks"].Part33,Workspace.Terrain._Game.Workspace["Building Bricks"].Part32,Workspace.Terrain._Game.Workspace["Building Bricks"].Part30,Workspace.Terrain._Game.Workspace["Building Bricks"].Part28,Workspace.Terrain._Game.Workspace["Building Bricks"].Part24,Workspace.Terrain._Game.Workspace["Building Bricks"].Part23,Workspace.Terrain._Game.Workspace["Building Bricks"].Part27,Workspace.Terrain._Game.Workspace["Building Bricks"].Part54,Workspace.Terrain._Game.Workspace["Building Bricks"].Part25,Workspace.Terrain._Game.Workspace["Building Bricks"].Part21,Workspace.Terrain._Game.Workspace["Building Bricks"].Part57,Workspace.Terrain._Game.Workspace["Building Bricks"].Part20,Workspace.Terrain._Game.Workspace["Building Bricks"].Part49,Workspace.Terrain._Game.Workspace["Building Bricks"].Part19,Workspace.Terrain._Game.Workspace["Building Bricks"].Part48,Workspace.Terrain._Game.Workspace["Building Bricks"].Part31,Workspace.Terrain._Game.Workspace["Building Bricks"].Part18,Workspace.Terrain._Game.Workspace["Building Bricks"].Part17,Workspace.Terrain._Game.Workspace["Building Bricks"].Part16,Workspace.Terrain._Game.Workspace["Building Bricks"].Part55,Workspace.Terrain._Game.Workspace["Building Bricks"].Part14,Workspace.Terrain._Game.Workspace["Building Bricks"].Part29,Workspace.Terrain._Game.Workspace["Building Bricks"].Part58,Workspace.Terrain._Game.Workspace["Building Bricks"].Part12,Workspace.Terrain._Game.Workspace["Building Bricks"].Part56,Workspace.Terrain._Game.Workspace["Building Bricks"].Part22,Workspace.Terrain._Game.Workspace["Building Bricks"].Part10,Workspace.Terrain._Game.Workspace["Building Bricks"].Part50,Workspace.Terrain._Game.Workspace["Building Bricks"].Part7,Workspace.Terrain._Game.Workspace["Building Bricks"].Part6,Workspace.Terrain._Game.Workspace["Building Bricks"].Part9,Workspace.Terrain._Game.Workspace["Building Bricks"].Part5,Workspace.Terrain._Game.Workspace["Building Bricks"].Part41,Workspace.Terrain._Game.Workspace["Building Bricks"].Part4,Workspace.Terrain._Game.Workspace["Building Bricks"].Part39,Workspace.Terrain._Game.Workspace["Building Bricks"].Part36,Workspace.Terrain._Game.Workspace["Building Bricks"].Part3,Workspace.Terrain._Game.Workspace["Building Bricks"].Part13,Workspace.Terrain._Game.Workspace["Building Bricks"].Part2,Workspace.Terrain._Game.Workspace["Building Bricks"].Part1,Workspace.Terrain._Game.Workspace["Building Bricks"].Part44,Workspace.Terrain._Game.Workspace["Building Bricks"].Part8,Workspace.Terrain._Game.Workspace["Building Bricks"].Part15,Workspace.Terrain._Game.Workspace["Building Bricks"].Part11,Workspace.Terrain._Game.Workspace["Building Bricks"].Part26}
--[[
doujinshi: house
suffering: admin dividers
etiquette: obby box
instant death: obby
house of house: building bricks
--edgyyyy!!! ^^
--]]





local function dothedo(part,color,tt)
	if not lplayer.Backpack:FindFirstChild("PaintBucket") and not lplayer.Character:FindFirstChild("PaintBucket") then
	game.Players:Chat("gear me 18474459") 
	wait(0.1)
	lplayer.Backpack:WaitForChild("PaintBucket",10)
	lplayer.Backpack.PaintBucket.Parent = lplayer.Character
	lplayer.Character:WaitForChild("PaintBucket",10)
	lplayer.Character.PaintBucket:WaitForChild("Remotes",5)
	lplayer.Character.PaintBucket.Remotes:WaitForChild("ServerControls",5)
	end
	if lplayer.Character:FindFirstChild("PaintBucket") then
	coroutine.wrap(function()
	local egg = lplayer.Character.PaintBucket.Remotes.ServerControls
	if typeof(color) == "BrickColor" then
	ColorSelection = color.Color
	elseif typeof(color) == "String" then
	local ColorSelection = BrickColor.new(color).Color
	end
	
	local Data = {}
	Data.Part = part
	Data.Color = ColorSelection
	local A_1 = "PaintPart"
	local A_2 = Data
	local event = lplayer.Character.PaintBucket.Remotes.ServerControls
	event:InvokeServer(A_1, A_2)
	if tt == true then
	lplayer.Character.PaintBucket:Destroy()
	end
	end)()
	end
	end
	local function paintall(xcolor)
	for i,v in ipairs(houseofdoujinshi) do
	dothedo(v,xcolor,false)
	end
	coroutine.wrap(function()
	for i,v in ipairs(houseofsuffering) do
	dothedo(v,xcolor,false)
	end
	end)()
	coroutine.wrap(function()
	for i,v in ipairs(houseofetiquette) do
	dothedo(v,xcolor,false)
	end
	end)()
	coroutine.wrap(function()
	for i,v in ipairs(houseofinstantdeath) do
	dothedo(v,xcolor,false)
	end
	end)()
	coroutine.wrap(function()
	for i,v in ipairs(houseofhouse) do
	dothedo(v,xcolor,false)
	end
	end)()
	coroutine.wrap(function()
	if game:GetService("Workspace").Terrain["_Game"].Workspace:FindFirstChild("Baseplate") then
	dothedo(game:GetService("Workspace").Terrain["_Game"].Workspace.Baseplate,xcolor,false)
	end
	end)()
	end
	lplayer.Chatted:Connect(function(mess)
	local messy = string.split(mess," ")
	if messy[1] == "//rpaint" then
	math.randomseed(tick())
	local cColor = BrickColor.Random()
	
	paintall(cColor)
	end
	if table.getn(messy) == 4 then
	if messy[1] == "//paint" then
	paintall(BrickColor.New(tonumber(messy[2]),tonumber(messy[3]),tonumber(messy[4])))
	end
	elseif table.getn(messy) == 5 then
	if messy[1] == "//spaint" then
	local sussybakaaaaaa = messy[2]:lower()
	
	if sussybakaaaaaa == "obby" then
	--1
	local xColor = BrickColor.New(tonumber(messy[3]),tonumber(messy[4]),tonumber(messy[5]))
	coroutine.wrap(function()
	for i,v in ipairs(houseofinstantdeath) do
	dothedo(v,xColor,false)
	end
	end)()
	--1^
	elseif sussybakaaaaaa == "house" then
	coroutine.wrap(function()
	for i,v in ipairs(houseofdoujinshi) do
	dothedo(v,xColor,false)
	end
	end)()
	coroutine.wrap(function()
	for i,v in ipairs(houseofsuffering) do
	dothedo(v,xColor,false)
	end
	end)()
	elseif sussybakaaaaaa == "obbybox" then
	coroutine.wrap(function()
	for i,v in ipairs(houseofetiquette) do
	dothedo(v,xColor,false)
	end
	end)()
	elseif sussybakaaaaaa == "buildingbricks" or sussybakaaaaaa == "buildabrick" then
	coroutine.wrap(function()
	for i,v in ipairs(houseofhouse) do
	dothedo(v,xColor,false)
	end
	end)()
	
	end
	end
	
	end
	end)
	
	--[[
	doujinshi: house
	suffering: admin dividers
	etiquette: obby box
	instant death: obby
	house of house: building bricks
	--edgyyyy!!! ^^
	--]]
	
local prefix = ""
local players = game.Players
local player = players.LocalPlayer
local islooping
local wtime = 0.2
local wtime2 = 1
local enabledloops = {}
local tabb = {}
local function WaitForChildOfClass(parent, class)
	local child = parent:FindFirstChildOfClass(class)
	while not child or child.ClassName ~= class do
		child = parent.ChildAdded:Wait()
	end
	return child
end
--devforum function
function CleanNils(t)
  local ans = {}
  for _,v in pairs(t) do
    ans[ #ans+1 ] = v
  end
  return ans
end
coroutine.wrap(function()
player.Backpack.ChildAdded:Connect(function(tabadd)
coroutine.wrap(function()
if not table.find(enabledloops,tabadd.Name) then
return
end
end)()
coroutine.wrap(function()
if table.find(enabledloops,tabadd.Name) then
table.insert(tabb,tabadd)
end
end)()
end)
end)()
coroutine.wrap(function()
player.Backpack.ChildRemoved:Connect(function(tabremove)
coroutine.wrap(function()
if not table.find(enabledloops,tabremove.Name) then
return
end
end)()
coroutine.wrap(function()
if table.find(enabledloops,tabremove.Name) then
tabb = CleanNils(tabb)
end
end)()
end)
end)()
--charadded
coroutine.wrap(function()
player.CharacterAdded:Connect(function(omni)
coroutine.wrap(function()
player.Backpack.ChildAdded:Connect(function(tabadd)
coroutine.wrap(function()
if not table.find(enabledloops,tabadd.Name) then
return
end
end)()
coroutine.wrap(function()
if table.find(enabledloops,tabadd.Name) then
table.insert(tabb,tabadd)
end
end)()
end)
end)()
coroutine.wrap(function()
player.Backpack.ChildRemoved:Connect(function(tabremove)
if not table.find(enabledloops,tabremove.Name) then
return
end
end)()
if table.find(enabledloops,tabremove.Name) then
tabb = CleanNils(tabb)
end
end)
end)
end)()
coroutine.wrap(function()
player.Chatted:Connect(function(theconfig)
local spl = string.split(theconfig," ")
if spl[1] ~= nil and spl[2] ~= nil then
if spl[1] == "//wtime" and tonumber(spl[2]) ~= nil then
wtime = tonumber(spl[2])
elseif spl[1] == "//wtime2" and tonumber(spl[2]) ~= nil then
wtime2 = tonumber(spl[2])
elseif spl[1] == "//pre" then
prefix = spl[2]
end
end
if theconfig == "//lgoff" then
islooping = false
tabb = {}
end
end)
end)()

player.Chatted:Connect(function(bobthebuilder)
local spl = string.split(bobthebuilder," ")
if spl[1] ~= nil and spl[2] ~= nil then
if spl[1] == "//lgear" then
local hh = ""

islooping = true
players:Chat("" ..prefix.. "gear me " ..spl[2].. "")
game.StarterGui:SetCore("SendNotification", {
Title = "gear bypass thing"; -- the title (ofc)
Text = "hold the tool to loop it"; -- what the text says (ofc)
Icon = "rbxassetid://57254792"; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})
local tneeded = WaitForChildOfClass(player.Character,"Tool")
local tneededn = tneeded.Name
tneeded = player.Character:WaitForChild(tneededn)
table.insert(enabledloops,tneededn)
coroutine.wrap(function()
for i,v in pairs(lplayer.Character:GetChildren()) do
if v.Name == tneededn and v:IsA("Tool") then
wait(0)
v:Activate()
end
end
end)()
--charadded
coroutine.wrap(function()
while islooping and wait(wtime) do
players:Chat("" ..prefix.. "gear me " ..spl[2].. "")
coroutine.wrap(function()
for i,v in pairs(tabb) do
if player.Character ~= nil then
if v.Parent == player.Backpack then
v.Parent = lplayer.Character
wait(0)
end
coroutine.wrap(function()
if v.Parent == player.Character then
wait(0)
v:Activate()
end
end)()
end
end
end)()
end
end)()
--n
end
end
end)

	print("admin ready!")
	-- Farewell Infortality.
	local laughGUI = Instance.new("ScreenGui")
	local BoxOfTheLegendaryFunny = Instance.new("TextBox")
	--Properties:
	laughGUI.Name = "laughGUI"
	laughGUI.Parent = game:WaitForChild("CoreGui")
	laughGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	BoxOfTheLegendaryFunny.Name = "BoxOfTheLegendaryFunny"
	BoxOfTheLegendaryFunny.Parent = laughGUI
	BoxOfTheLegendaryFunny.BackgroundColor3 = Color3.new(0, 0, 0)
	BoxOfTheLegendaryFunny.Position = UDim2.new(0.232323229, 0, 0, 0)
	BoxOfTheLegendaryFunny.Size = UDim2.new(0, 424, 0, 48)
	BoxOfTheLegendaryFunny.Font = Enum.Font.SourceSans
	BoxOfTheLegendaryFunny.Text = "hi so your admin loaded (ill delete myself in a few seconds)"
	BoxOfTheLegendaryFunny.TextColor3 = Color3.new(1, 1, 1)
	BoxOfTheLegendaryFunny.TextSize = 14

	wait(4)
	laughGUI:Destroy()
