-- Made by Jotunn
-- Note: Console can be used for commands such as ':kill player'
-- Another note: Alot of shit was taken and altered from veckos script so credits to him lol
-- Credits to tech for the music finder shit
-- Part drawer was inspired from humangas (Aurora)
-- Due to simulation radius being retarded as fuck, lbuild may not work alot of the time or might have client only issues,
-- I recommend going as close to where the build is as possible

-- Since this script is pretty resource heavy, make sure to disable settings you don't need to prevent the chance of crashing

-- // GUI Settings:

_G.musicids = {}
_G.permadmin = true -- this will take a pad as soon as you join
_G.removeobbykill = true -- will auto remove obby kill once you join the server
_G.autoantivamp = true -- will auto blacklist vamp gear
_G.autoantikick = false -- auto enables anti kick
_G.prefix = "" -- edit this to your liking
_G.afkstatus = nil
_G.popupmessages = false -- will show messages on the top of the screen
_G.autohop = true-- auto hops if the game isn't loading
_G.bh = false -- this is for the banhammer don't change it
_G.byened = false -- also for the banhammer, changing will break it
_G.whitelisted = {"Shawnofthedead","Altsarecooleh","TechnoSniperX","KTMY1","ThatOneThing91","humangas","jhone_doe110101","AyitsRachel","1x3x3x7x1x7","Korabi_Dev","me_funzyass", "BANNter_Original","BANNter_Unoriginal","KohlsH_Angler","Antedx","Master0fSouIs"} -- basically grants them immunity to everything
_G.namestatus = false
_G.chatlogs = true
_G.autocrasher = false--autocrasher script, make sure script is in autoexec and _G.autohop is enabled
local whl = false -- autocrasher whitelisted check, dont change
getgenv().draw = false -- drawing lib
getgenv().remove = false -- drawing lib
_G.psize = "0.1" -- default part size
_G.RenderingEnabled = true -- This sets your rendering to false when autocrashing, saves CPU usage
_G.cchat = nil
_G.simradius = false
_G.bullyaria = true
h = [[
Y̵̝̌̍O̵̪̹̐U̷͙͛ ̷͙̐͘D̸̦̞̃I̷͓͈͛͛E̶̹̩͐̀D̸̨̻̀̐

]]


local names = {"AlternativelyTies","DestructedTimes", "SapphireCries","ssapphxre","lastniqhts","AR1AFUL","A6RIA","craayonnss","A6RIA","lovestoriies","velincy","orticyal"}
local connections  = {} 
_G.timeout = {}
local audios = {"317646235","4867685473"}
local facts = {
	"Does anyone even read these?",
	"did you know my nickname is 'joe tuhn', i blame tech",
	"imagine hacking in a little kids game, pathetic.",
	"this script has over 10k lines, when will the suffering end",
	"i'm a hobbyist, not a sociopath. i just dont have time for socializing.",
	"go make some friends, and i dont mean the dc bots!",
	"go outside? hell no!",
	"I didn't come this far to only come this far.",
	"your estimated wait time is 1.5(9)",
	"Look how far you've come.",
    "My accuracy is top-notch amirite",
    "Males.. females.. if there's a hole, there's a way",
    "My build loader still doesn't work. Yes I am venting deal with it.",
    "Live for today and let tomorrow come later.",
    "Why do you even play this game, kah died years ago..",
        "Did you know there's a 1 in 8 billion chance your reading this",
        "Boom Headshot!",
        "\n\n\n\n"..h
            
}


_G.blacklisted = {"thekillercrum","surakurd","Apirlfoolscrasher","bedwarspubbingv2","keeptryingtostopme", "r9_tv"} -- blacklisted Players, will kick if they join

_G.players = {} -- table to store player in the server

if game.PlaceId == 112420803 or game.PlaceId == 115670532 then




    local function space()
        rconsoleprint("")
        rconsoleprint("")
        rconsoleprint("-------------------------------------------------------------------------------------------------------")
        rconsoleprint("")
        rconsoleprint("")
    end

    
        
    _G.teleport = function()
        while true do 
            spawn(function()
            local servers = {}
            local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
		local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)})
		local body = game:GetService'HttpService':JSONDecode(req.Body)
        
        local contents = readfile("ServersHopped.txt")
        contents = contents:split("\n")
        

		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and v.id ~= JobId and v.playing ~= 6 then
                    if not table.find(contents, v.id) then 
					table.insert(servers, v.id)
                    end
                
				end
			end
		end
		if #servers > 0 then
			game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
		else
            
			error("No servers found, reattempting..")
    
		end    
    end)
        wait(1)
    end        
    end
    



    coroutine.wrap(function() -- auto hopper incase server is full or crashed
        wait(5)
        if not game:IsLoaded() and _G.autohop then
            _G.teleport()
            end
        end)()
    


        repeat wait() until game.Players.LocalPlayer
        repeat wait() until game.Players.LocalPlayer.Character


    if _G.autocrasher then 
        rconsoleclear()
        rconsoleerr("Running Jotunnheim's autocrasher, Welcome "..game.Players.LocalPlayer.Name)
        rconsoleerr("Displaying info above..")
        if not _G.RenderingEnabled then 
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        end
        
        local file = isfile("ServersHopped.txt")
        local file2 = isfile("ServersCrashed.txt")
        local file3 = isfile("ServersSkipped.txt")
        if file then 
            warn("file loaded")
        else
            rconsoleerr("Creating file ServersHopped.txt...")
            writefile("ServersHopped.txt", "Why are you here lmfao\n")
        end 

        if file2 then 
            warn("file2 loaded")
            else
                rconsoleerr("Creating file ServesrCrashed.txt...")
                writefile("ServersCrashed.txt", "0\n")
            end 

            if file3 then 
                warn("file3 loaded")
                else
                    rconsoleerr("Creating file ServersSkipped.txt...")
                    writefile("ServersSkipped.txt", "0\n")
                end 
                
        


    
        spawn(function()
        loadstring(game:HttpGet(("https://pastebin.com/raw/yjFbhgVJ"), true))()
        end)
        spawn(function()
             
            wait(30)
            rconsoleerr("Something went wrong, hopping servers..")  
            appendfile("ServersHopped.txt", game.JobId.."\n")  
      _G.teleport()
                end)

                

                coroutine.wrap(function()
                   
                    game:GetService'RunService'.Stepped:Connect(function()
                        
                        pcall(function()
                            for i, v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
                                if v:FindFirstChild("Head") and v.Name == 'Touch to get admin' then
                                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v.Head, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v.Head, 1) 
                                end
                            end
                        end)
                            
                    if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) then 
                        game.Players.LocalPlayer.Character:Destroy()
                        rconsoleerr("Can't detect character, resetting player")
                      
                    else if game.Players.LocalPlayer.Character:FindFirstChild("HotPotato") or game.Players.LocalPlayer.Character:FindFirstChild("BlueBucket") or game.Players.LocalPlayer.Character:FindFirstChild("DisableBackpack") or game.Players.LocalPlayer.Character:FindFirstChild("ice") then
                        game.Players.LocalPlayer.Character:Destroy() 
                        rconsoleerr("Someone attempted to kick, resetting player")
                        repeat task.wait() until game.Players.LocalPlayer.Character
                    end 
                end
            end)
                
            end)()

        repeat wait(.1)
        until game:GetService("Workspace").Terrain["_Game"].Admin.Pads
        rconsoleerr("Character Loaded")
    spawn(function()
    pcall(function()
    regen = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen")
    end)
end)

    _G.contents2 = readfile("ServersCrashed.txt"):split("\n")
        _G.contents3 = readfile("ServersSkipped.txt"):split("\n")

        rconsolename("Loaded Jotunnheim V2's Crasher                                                                         Servers Crashed: ".._G.contents2[1].."        Servers Skipped: ".._G.contents3[1].."        Ping: "..tostring(game.Players.LocalPlayer:GetNetworkPing()))


    if game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen") then
        print("")
    else if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
    rconsoleerr("No regen and pads are taken, Hopping Servers..")        
    skipped = tonumber(_G.contents3[1]) + 1
    writefile("ServersSkipped.txt", tostring(skipped).."\n")    
    appendfile("ServersHopped.txt", game.JobId.."\n")     
    wait(.2)
        _G.teleport()
    end
end
    pcall(function()
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
    end)
local padcheck = true
while padcheck do 
    for i, v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Name.."'s admin" then 
            padcheck = false
        end 
    end
    wait()
end
rconsoleerr("Gotten Admin")
local wlplayers = false
for _, v in pairs(game.Players:GetPlayers()) do
    if table.find(_G.whitelisted, v.Name) then 
        wlplayers = true
    end 
end 

local ChatBar = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar

local function cht(massage)
    ChatBar:SetTextFromInput(massage)
    game.Players:Chat(massage)
    ChatBar.Text = ""
end --this cht function is just like chat but its fixed

local circle = game:HttpGet("https://pastebin.com/raw/N1xuGxTm")
local function errormsg()
    cht("blind all")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n         /                                                                                \n\n\n\n\ ")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\ "..circle.."   /                                                                                \n\n\n\n\ ")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\ \n   |                                                                            \n\n\n\n\ ")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\ \n \n   |                                                                            \n\n\n\n\ ")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\ \n \n \n   |                                                                            \n\n\n\n\ ")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\ \n \n \n   |                                                                            \n\n\n\n\ ")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\ \n \n \n \n \n       \\                                                                               \n\n\n\n\ ")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\ \n \n \n \n \n   "..circle.."                                                                                      \n\n\n\n\ ")
cht("h  \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\ \n \n \n \n \n \n     \\                                                                            \n\n\n\n\ ")
cht("h \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n \n \n \n The server ran into a problem, and will be rebooted shortly. Please wait... \n\n\n\n\n\n\ ")
cht("h \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n\n\n\n\n\n\ \n \n Error code: 256  \n\n\n\n\n\n\ ")
end

if wlplayers then 
    for _, v in pairs(game.Players:GetChildren()) do
        if table.find(_G.whitelisted, v.Name) then 
    game:GetService "Players":Chat(("h Whitelisted Player Detected: "..v.Name..", Hopping Servers.."))
    rconsoleerr("Whitelisted Player Detected: "..v.Name..", Hopping Servers..")
    game.Players:Chat("music 8679659744")
    appendfile("ServersHopped.txt", game.JobId.."\n")  
    skipped = tonumber(_G.contents3[1]) + 1
    writefile("ServersSkipped.txt", tostring(skipped).."\n")    
    task.wait(.3)
        end 
    end
else
    spawn(function()
        errormsg()
        game.Players:Chat("music 000000000000000000000000000000000000000000000000000000006529070845")
        task.wait(1)
    while true do 
for i = 1, 10 do
            for i = 1, 3 do
                game:GetService "Players":Chat(("size all 0.3"))
            end
            game:GetService "Players":Chat(("freeze all"))
            for i = 1, 3 do
                game:GetService "Players":Chat(("size all 10"))
            end
            game:GetService "Players":Chat(("clone all"))
        end
        
wait(.6)



    end
    
end)

rconsoleerr("Successfully Crashed Server")
    
end
crashed = tonumber(_G.contents2[1]) + 1
    appendfile("ServersHopped.txt", game.JobId.."\n") 
    writefile("ServersCrashed.txt", tostring(crashed).."\n")         
        
        wait(.5)
        _G.teleport()

game.Players['hi']:destroy()
return
end


coroutine.wrap(function()
    repeat wait() until game.Players.LocalPlayer
    repeat wait() until game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Character:WaitForChild("I like to waste my robux")
    print("techs in the server")
    for _,v in pairs(game.Players:GetPlayers()) do 
        if v.Name == 'TechnoSniperX' or v.Name == 'Master0fSouIs' then
                game.Players:Chat("unname me")
                game.Players:Chat("unrocket/me")
                wait()
                game.Players:Chat("rocket/"..v.Name)
                game.Players:Chat("name "..v.Name.." techno detector lol")
            end 
    end
end)()

    
  
    if _G.chatlogs then
        loadstring(game:HttpGet(("https://pastebin.com/raw/yjFbhgVJ"), true))()
    end



    



    -- variables/tables:

    local jotunnheim =
        [[
    ___  ________  _________  ___  ___  ________   ________   ___  ___  _______   ___  _____ ______      
   |\  \|\   __  \|\___   ___\\  \|\  \|\   ___  \|\   ___  \|\  \|\  \|\  ___ \ |\  \|\   _ \  _   \    
   \ \  \ \  \|\  \|___ \  \_\ \  \\\  \ \  \\ \  \ \  \\ \  \ \  \\\  \ \   __/|\ \  \ \  \\\__\ \  \   
 __ \ \  \ \  \\\  \   \ \  \ \ \  \\\  \ \  \\ \  \ \  \\ \  \ \   __  \ \  \_|/_\ \  \ \  \\|__| \  \  
|\  \\_\  \ \  \\\  \   \ \  \ \ \  \\\  \ \  \\ \  \ \  \\ \  \ \  \ \  \ \  \_|\ \ \  \ \  \    \ \  \ 
\ \________\ \_______\   \ \__\ \ \_______\ \__\\ \__\ \__\\ \__\ \__\ \__\ \_______\ \__\ \__\    \ \__\
 \|________|\|_______|    \|__|  \|_______|\|__| \|__|\|__| \|__|\|__|\|__|\|_______|\|__|\|__|     \|__|
                                                                                                                                                                                                                                                     
 ]]



    local blg = {}
    local god = false
    local gr = "VampireVanquisher"
    local spam = false
    local paint1 = false
    local paint2 = false
    local paint3 = false
    local disco = false
    local paint4 = false
    local paint5 = false
    local paint6 = false
    local paint7 = false
    local paint8 = false
    local paint9 = false
    local paint10 = false
    local paint11 = false
    local spam = false
    local vis = false
    local paint12 = false
    local ff = false
    _G.antigears = false
    _G.antisize = false
    local msgdeleter = false
    local antilag = false
    local plrs = game:GetService("Players")
    local plr = plrs.LocalPlayer
    local Plrname = plr.Name
    local plrgui = plr.PlayerGui
    local name = plr.Name
    local cha = plr.Character
    local time = 0.00000000000000000000000000000000001
    local Folder = game:GetService("Workspace").Terrain["_Game"].Folder
    local uis = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local rs = game:GetService("ReplicatedStorage")
    local tp = game:GetService("TeleportService")
    local UIS = game:GetService("UserInputService")
local MouseDown = false
local mouse = game.Players.LocalPlayer:GetMouse()
_G.i = 1
local folder = game:GetService("Workspace").Terrain["_Game"].Folder
local parts = {}
    local ws = Folder.Parent.Workspace
    local hookmusic = false
    local red = false
    local blue = false
    local green = false
    local auto = true
    local cyan = false
    local black = false
    local magenta = false
    local brown = false
    local light_gray = false
    local dark_gray = false
    local light_blue = false
    local light_green = false
    local light_cyan = false
    local light_red = false
    local light_magenta = false
    local yellow = false
    local white = false
    local rainbow = false
    local hide = "                                                                  "
    local Admin = ws.Parent.Admin
    local foundregen = false
    local Pads = Admin.Pads
    local ad = ws["Admin Dividers"]
    local house = ws["Basic House"]
    local obby = ws.Obby
    local obbybox = ws["Obby Box"]
    local bricks = ws["Building Bricks"]
    local myjail = name .. "'s jail"
    local getplrs = plrs:GetChildren()
    local antiabuse = false
    local antijail = false
    _G.antifreeze = false
    local antikill = false
    local antifling = false
    local antipunish = false
    local antiblind = false
    local textcolor = false
    _G.takepads = false
    local takeallpads
    local hide = false
    local zero =
        "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    local padbanned = {}

    

if _G.cchat then
    local cmds = {"nuke", "rail", "","mkick","cray","ssnek","srail","rcrail","rsrail","unhide","sclr","unchar","unsize","disable","ghostify", "csrail", "missile", "ssnek", "rj","banhammer", "cage", "gearbl", "jkick", "name", "unname","gear","lmap","flmap","ungear","unhat","pdraw","rpdraw","laser","antikick","bh","usetools","off","rocket","pm","m","h","shield","part","hat","shirt","pants","char","kick","punish","unpunish","freeze","thaw","jail","unjail","clr","music","fix","time","outdoorambient","colorshifttop","colorshiftbottom","fogcolor","fogend","explode","refresh","reset","respawn","ff","unff","god","ungod","kill","logs","fix","skydive","unskydive","trip","size","unsize","stun","unstun","vis","invis","bonfire","smoke","fogend","setgrav","speed","fling","blind","unblind","fly","dog","undog","tp","fire","clone"}
    local cmd = false
    local string2 = "  " 
    local OldNameCall = nil
    OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
        local string2 = ""
        local Args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" and tostring(Self) == 'SayMessageRequest' then
              return
         
        end
    
        return OldNameCall(Self, ...)
    end)
    
    

    function _G.c()
        
    
        amn = game.Players.LocalPlayer.Chatted:Connect(function(msg)
            cmd = false
        amn:Disconnect()
        msgi = msg:split(" ")
        msgp = msg:split("/")
       --if not table.find(cmds,msgi[1]) then
       for i = 1, #cmds do 
           if cmds[i] == msgi[1] or cmds[i] == msgp[1] then
               cmd = true
           end 
    end
    if not cmd then
        for i = 1, tonumber(msg:len()) do
              
         game.Players:Chat("h Hello there people\n\n\n\n\n\n\n"..string2..msg:sub(i,i))
         string2 = string2 .. "     "
        end
        string2 = ""
        end
       _G.c()
    
        end)
    end
    
    _G.c()
end
    


spawn(function()
    pcall(function()
    local regen = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen")
 
    

        local regenpads = function()
            pcall(function()
            fireclickdetector(regen.ClickDetector, 0)
        end)
         end
        
    local Pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads
    if _G.permadmin then 
        if regenpads then 
        regenpads()
        end
        repeat wait()
        until Pads:FindFirstChild('Touch to get admin')
        local mypad = Pads:FindFirstChild('Touch to get admin')
        RunService.Heartbeat:Connect(function()
        coroutine.wrap(function()
            pcall(function()
                
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Torso"), mypad.Head, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Torso"), mypad.Head, 1) 
                end)
            end)()
        end)
    end

end)
end)

    local function addMusic(name, id)
        table.insert(_G.musicids, id)
    end

    addMusic("Heart Afire - Defqwop suggested by: Yikes.exe#1603", 3354340607)
    addMusic("Better Off Alone", 5014057599)
    addMusic("M.U.L.E.", 6526664585)
    addMusic("Uptown", 1845554017)
    addMusic("Cursed Abbey by Gravity", 411946428)
    addMusic("The Turtles Happy Together", 6950127531)
    addMusic("Hey Ya", 6969198609)
    addMusic("Vaporwave", 1650786609)
    addMusic("Just The Two Of Us", 4598531684)
    addMusic("pom pom", 4987310147)
    addMusic("old roblox music", 6401841655)
    addMusic("Dinner Is Not Gone", 5087933569)
    addMusic("Disconnected", 198403839)
    addMusic("Chad", 6520777243)
    addMusic("Da Vincis Notebook - Enormous PP", 5846134019)
    addMusic("The Villain I Appear to be (Diamond Jack)", 1245737020)
    addMusic("swag music", 442860930)
    addMusic("Oh Klahoma", 4574949047)
    addMusic("Driving Synths", 1839823098)
    addMusic("FinalRainbow", 276740455)
    addMusic("Motherboard", 276741165)
    addMusic("Blanklevels", 276740207)
    addMusic("Frontier Justice - Dapper Dog", 315205728)
    addMusic("Gourmet Race (Beta Mix) - Kirby Super Star", 6200441882)
    addMusic("Stronger Than You In Spanish", 6051700940)
    addMusic("Howls Moving Castle", 5334601768)
    addMusic("Beat Your Competition - Vibe tracks", 364319796)
    addMusic("BeatBox -Breaches", 7609050584)
    addMusic("Tokyo Machine - EPIC", 5410085694)
    addMusic("Mice On Venus but make it E X T R A nostalgic", 6586644821)
    addMusic("Glory to CCP", 7252116131)
    addMusic("Coconut Ranger", 1849099489)
    addMusic("Dead Weight", 4657857001)
    addMusic("Cheeseburger Family", 2542847636)
    addMusic("Baby hotline", 6982843231)
    addMusic("KeyMan", 2822219524)
    addMusic("InchMan", 1895754613)

    local botname = "<Jotunn.txt>"
    local guiname = "Jotunnheim V.1 Demo"

    print("ywes")

    if game.CoreGui:FindFirstChild(guiname) then
        game.CoreGui:FindFirstChild(guiname):destroy()
    end

    local library =
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
    local venyx = library.new(guiname, 5013109572)

    


    if _G.afkstatus then
        local UserInputService = game:GetService("UserInputService")
        local AFKStatus = "(Tabbed Out)\n"..plr.DisplayName
        local afk = false

        UserInputService.WindowFocusReleased:Connect(
            function()
                game.Players:Chat("name me " .. AFKStatus)
                afk = true
            end
        )
        UserInputService.WindowFocused:Connect(
            function()
                game.Players:Chat("unname me")
                afk = false
            end
        )
        coroutine.wrap(
            function()
                while true do
                    pcall(
                        function()
                            if afk then
                                if not plr.Character:FindFirstChild(AFKStatus) then
                                    game.Players:Chat("name me " .. AFKStatus)
                                end
                            else
                                if plr.Character:FindFirstChild(AFKStatus) then
                                    game.Players:Chat("unname me")
                                end
                            end
                        end
                    )
                    task.wait(1)
                end
            end
        )()
    end

    coroutine.wrap(
        function()
            rconsoleclear()
            wait()
            rconsoleprint(jotunnheim .. "\n\n\n")
            rconsolewarn("Loading Debug console.\n")
            
            
            rconsolename("Jotunnheim V.1 Console")
            hookfunction(
                print,
                function(a)
                    rconsoleprint(a .. "\n")
                end
            )
            hookfunction(
                error,
                function(a)
                    rconsoleerr(a .. "\n")
                end
            )
            hookfunction(
                warn,
                function(a)
                    rconsolewarn(a .. "\n")
                end
            )
            getgenv().info = function(a)
                rconsoleprint("[INFO] " .. a .. "\n\n")
            end

            rconsolewarn("Loading Venyx's UI Library\n")

            warn("Welcome to Jotunnheim V.1, " .. game.Players.LocalPlayer.Name)

            warn("Note: This Script is still unfinished and may contain some bugs or crashes")
            warn("Type " .. _G.prefix .. "cmds in console for commands")
            repeat
                wait()
            until game.Players.LocalPlayer.Character
            if not ws:FindFirstChild("Baseplate") then
                error("Baseplate was removed?")
            end
        end
    )()

    -- functions:
    local function tchat(msg)
        game.Players:chat(msg)
    end

    local function jot(p)
        if _G.popupmessages then 

            tchat("h/"..p)
        end 
    end
    
    

    local function chat(msg)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    end

    local function color(Text)
        rconsoleerr("@@" .. Text .. "@@")
    end

    local function noti(Title, Text)
        game:GetService("StarterGui"):SetCore(
            "SendNotification",
            {
                Title = Title,
                Text = Text
            }
        )
    end

  


 

    

    

    local function Jotunn()
        if _G.coverlogs then
            for i = 1, 100 do
                tchat(
                    "noob Jotunn.txt game:GetService('HttpService'):JSONDecode(.._G.#(1+0{data.http[math.random(1, #__G.idontgiveafuck)]..)"
                )
            end
        else
            lol = 20
        end
    end

    local function paint()
        pcall(
            function()
                if not plr.Character:FindFirstChild("PaintBucket") then
                    tchat("gear me 000000000000000000000000000000000000000000000000000018474459")
                    local paint = plr.Backpack:WaitForChild("PaintBucket")
                    paint.Parent = plr.Character
                    wait(.1)
                    if not plr.Character:FindFirstChild(paint) then
                        error("Paint Bucket was removed from player?")
                    end
                end
            end
        )
    end



local function skydive()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
        CFrame.new(
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.X,
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Y + 10000,
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Z
    )
    wait()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
end







    local function colour(part, c1, c2, c3)
        pcall(
            function()

                local args = {
                    [1] = "PaintPart",
                    [2] = {
                        ["Part"] = part,
                        ["Color"] = Color3.new(c1, c2, c3)
                    }
                }
                spawn(
                    function()
                        workspace[plr.Name]:WaitForChild("PaintBucket"):WaitForChild("Remotes").ServerControls:InvokeServer(
                            unpack(args)
                        )
                    end
                )
            end
        )
    end

    game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if msg == (".pcolour") then
    while true do
        wait()
        for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Folder:GetChildren()) do
            if v:IsA("Part") then
                colour(v, math.random(), math.random(), math.random())
            end
        end
    end
end
end)

    local function black()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 0.0666667, 0.0666667, 0.0666667)
            end
        end
    end

    local function white()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 0.972549, 0.972549, 0.972549)
            end
        end
    end

    local function red()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 1, 0, 0)
            end
        end
    end

    local function blue()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 0.0352941, 0.537255, 0.811765)
            end
        end
    end

    local function green()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 0.121569, 0.501961, 0.113725)
            end
        end
    end

    local function orange()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 0.666667, 0.333333, 0)
            end
        end
    end

    local function yellow()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 1, 1, 0)
            end
        end
    end

    local function brown()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 0.486275, 0.360784, 0.27451)
            end
        end
    end


    local function purple()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 0.482353, 0, 0.482353)
            end
        end
    end

    local function pink()
        for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
            if v:IsA("Part") then
                colour(v, 1, 0.4, 0.8)
            end
        end
    end

    local function unpaint()
        pcall(
            function()
                if plr.Character:FindFirstChild("PaintBucket") then
                    plr.Character:FindFirstChild("PaintBucket"):Destroy()
                end
            end
        )
    end
    local p = ""

    


    local function removeobbykill()
        pcall(function()
            repeat wait() until ws.Obby and plr.Character
        if ws.Obby:FindFirstChild("Jump") then
            ws.Obby.Jump.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump1") then
            ws.Obby.Jump1.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump2") then
            ws.Obby.Jump2.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump3") then
            ws.Obby.Jump3.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump4") then
            ws.Obby.Jump4.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump5") then
            ws.Obby.Jump5.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump6") then
            ws.Obby.Jump6.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump7") then
            ws.Obby.Jump7.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump8") then
            ws.Obby.Jump8.TouchInterest:destroy()
        end
        if ws.Obby:FindFirstChild("Jump9") then
            ws.Obby.Jump9.TouchInterest:destroy()
        end
    end)
    end

    local function rejoin()
        tchat(_G.prefix.."rj")
    end

    if _G.removeobbykill then
        removeobbykill()
    end

    -- themes
    local themes = {
        Background = Color3.fromRGB(24, 24, 24),
        Glow = Color3.fromRGB(0, 0, 0),
        Accent = Color3.fromRGB(10, 10, 10),
        LightContrast = Color3.fromRGB(20, 20, 20),
        DarkContrast = Color3.fromRGB(14, 14, 14),
        TextColor = Color3.fromRGB(255, 255, 255)
    }

    -- first page
    local page = venyx:addPage("Main", 5012544693)
    local page2 = venyx:addPage("Misc", 5012544693)
    local page3 = venyx:addPage("Workspace", 5012544693)
    local page4 = venyx:addPage("Gears", 5012544693)
    local page5 = venyx:addPage("Visuals", 5012544693)
    local page9 = venyx:addPage("Console", 5012544693)

    local section1 = page:addSection("Anti Abuse")
    local section2 = page:addSection("Admin")
    local section3 = page2:addSection("Character")
    local sectionob = page2:addSection("Obby Kill")
    local section5 = page3:addSection("Move Parts")
    local sectionreturn = page3:addSection("Return Parts")
    local sectionflip = page3:addSection("Flip Parts")
    local sectionrmove = page3:addSection("Rmove Parts")
    local section4 = page2:addSection("Ags Crasher")
    local section6 = page4:addSection("Anti Gears")
    local section7 = page4:addSection("Custom Gears")
    local section8 = page4:addSection("Paint")
    local section9 = page9:addSection("Text Colour")
    local sectionauto = page2:addSection("Text Colour")
    local section10 = page5:addSection("Music")
    local section11 = page5:addSection("Ambients")
    local section12 = page5:addSection("Visualisers")

    local b = "[CMD] "


    coroutine.wrap(
		function()
			while auto do
				res = rconsoleinput()
				if res == _G.prefix .. "cmds" then
                    error("")
                    color("BLUE")
                    error("Prefix: " .. _G.prefix .. "\n")
                    error("CMDS:\n")
                    error(b .. "logservers")
                    info("Pretty self explanatory, will log all servers")
                    error(b .. "joinserver serverid")
                    info(
                        "Copy server id from logged servers and paste it after joinserver, will join the server obviously"
                    )
                    error(b .. "outfitlog player")
                    info("Will log players outfits")
                    error(b .. "info player")
                    info("Logs player info")
                    error(b .. "gayrate player")
                    info("part/1 - part/10 (Person299 required)")
                    error(b .. "will spawn a fuckton of parts ranging from different sizes")
                    info("blizzard player (Person299 required)")
                    error(b .. "use part cmd first, creates a blizzard made out of parts")
                    info(".pcolour")
                    error(b .. "will spam colour the parts, hold a paintbucket first")
                    info("Logs ")
                    error(b .. "gayrate player")
                    info("Will chat a random gayrate percentage")
                    error(b .. "pwn player")
                    info("Will jail player and superexplode him")
                    error(b .. "break player")
                    info("Will break the player into many parts (Credits to ripend for this one)")
                    error(b .. "glitch player")
                    info("Will make the players character glitch")
                    error(b .. "slock player")
                    info(
                        "This will lock the player from your server, keeping them punished and blinded everytime they join"
                    )
                    error(b .. "infgod player")
                    info("Gives player infinite god and ff")
                    error(b .. "obkill player")
                    info("Grabs a part of the obby and kills the player with it lolol")
                    error(b .. "spam cmd")
                    info("Spams the written command")
                    error(b .. "unspam")

                    info("Disables spam")
                    error(b .. "headrise player")
                    info("makes the Player's head float")
                    error(b .. "skybox player")
                    info("makes a golden box above player")
                    error(b .. "headroot player")
                    info("will stick the players head into they're torso lel")
                    error(b .. "icetower player")
                    info("will freeze the player in a tower of ice")
                    error(b .. "amputate player")
                    info("will break the players avater")
                    color("WHITE")
                    error(b .. "banhammer")
                    info("will grant the player the banhammer (one time use)")
                    error(b .. "kick player")
                    info("self explanatory")
                    error(b .. "ban player")
                    info("self explanatory")
                    error(b .. "timeout player time s/m")
                    info("puts the player in timeout (s for seconds, m for minutes)")
                    error(b .. "antikick")
                    info("enables antikick")
                    error(b .. "off")
                    info("disables antikick")
                    error(b .. "?hook")
                    info("hooks song id, gui one doesnt work and im not bothered to fix it")
                    error(b .. "?unhook")
                    info("unhooks song id")
                    error(b .. "zecoolgun")
                    info("cool gun i made")
                    error(b .. "bangun")
                    info("do i have to explain?")
                    error("forceantikick")
                    info("forces anti kick, only use against strong kick scripts")
                    error("savemap name")
                    info("saves the map as the listed filename")
                    error("lmap name")
                    info("loads the saved map")
                    error("flmap name")
                    info("loads map faster but can be inaccurate")
                    error("fixvel")
                    info("fixes maps velocity")
                    error(b .. "laser player")
                    info("kicks without freeze")
                    error(b .. "smite player ")
                    info("banhammer but it hits them?")
                    error(b .. "laser player")
                    info("fucks the player with lasers")
                    error(b .. "cray player")
                    info("fucks the player with lasers in a circle")
                    error(b .. "crail player")
                    info("fucks the player with railguns")
                    error(b .. "rcrail player")
                    info("crail but it makes the rails rainbow")
                    error(b .. "srail")
                    info("crail but a different version")
                    error(b .. "rsrail player")
                    info("srail but rainbow parts")
                    error(b .. "ssnek player")
                    info("fucks the player with idek")
                    error(b .. "nuke player")
                    info("fucks the player with airstrikes")
                    error(b .. "missile player")
                    info("crail but with missile trackers")
                    error(b .. "rail player")
                    info("spams rails")
                    error(b .. "laser player")
                    info("spams lasers")
                    error(b .. "serverlock")
                    info("locks server, kicks anyone who joins")
                    error(b .. "pdraw 0.1/10")
                    info("lets you draw with parts")
                    error(b .. "rpdraw")
                    info("disables pdraw")
                    error(b .. "sbuild name")
                    info("save builds with parts")
                    error(b .. "lbuild name")
                    info("loads a saved part build")
                    error(b .. "unslock")
                    info("unlocks")
                    error(b .. "rj")
                    info("rejoins the server")
                else
                    tchat(res)
                    
                end
            end
            
        end
    )()



    
    local admin = {prefix = _G.prefix, version = "1.0"}
    local commands = {}
    local descriptions = {}
    local http = game:GetService("HttpService")
    -- functions:
    function addcommand(cmdName, cmdDescription, cmdFunction)
        commands[cmdName] = cmdName
        descriptions[cmdName] = cmdDescription
        plr.Chatted:Connect(
            function(msg)
                msg = msg:lower()
                args = msg:split(" ")
                if args[1] == admin.prefix .. cmdName then
                    cmdFunction()
                elseif args[1] == "/e" and args[2] == admin.prefix .. cmdName then
                    args[2] = args[3]
                    cmdFunction()
                end
            end
        )
    end

    function newHumanoid()
        Instance.new("Humanoid", plr.Character)
    end

    function GetPlayer(target)
        local plrs = game:service("Players"):GetPlayers()
        if target:lower() == "all" then
            return plrs
        elseif target:lower() == "others" then
            for index, plr in pairs(plrs) do
                if plr == game:service("Players").LocalPlayer then
                    table.remove(plrs, index)
                    return plrs
                end
            end
        elseif target:lower() == "me" then
            return {game:service("Players").LocalPlayer}
        else
            local plrTargets = {}
            for index, plr in pairs(plrs) do
                if plr.Name:sub(1, #target):lower() == target:lower() or plr.DisplayName:sub(1, #target):lower() == target:lower() then
                    table.insert(plrTargets, plr)
                end
            end
            return plrTargets
        end
    end
    --// commands

    

    addcommand("antikick",
		"toggles anti kick",
		function()
            error("[*] Enabled anti kick")
				_G.antikick = true
                local deb = true
                _G.aty = game:GetService("RunService").RenderStepped:Connect(function()
                    coroutine.wrap(function()
                    for i, backpack in pairs(plr.Backpack:GetChildren()) do
							for i, v in pairs(backpack:GetChildren()) do -- stuff in backpacks
								if v.Name == "HotPotato" or v.Name == "BlueBucket" or v.Name == "Ro-Orb" or v.Name == "Energy Bomb" or v.Name == "LinkedSword" or v.Name == "DriveBloxUltimateCar" then

                                    v:Destroy()
								end
							end

					end
                end)()
				for _,v in pairs(game.Workspace:GetDescendants()) do 
						if _G.antikick == true and v.Name == "HotPotato" or v.Name == "ice" or v.Name == "BlueBucket" or v.Name == "Ro-Orb" or v.Name == "Energy Bomb" or v.Name == "DriveBloxUltimateCar" then -- backpacks
                            if v.Name == 'ice' and v.Parent.Name == plr.Name and _G.antifreeze == false then
                                tchat("thaw me")
                                v:Destroy()
                            else if v.Name ~= 'ice' then
                            tchat("ff [CLIENT] Deleted "..v.Name.." from "..v.Parent.Name)
                            if deb and v.Parent.Name ~= 'Workspace' and v.Name then
                                tchat("ungear "..v.Parent.Name)
                                end
                                v.Parent = game:GetService("ReplicatedStorage")   
                            coroutine.wrap(function()
                            deb = false
                            wait()
                            deb = true
                            end)()
                        end
                        end
                    end
				end
            end)

				
		end)

        addcommand("forceantikick",
		"toggles anti kick",
		function()
            error("Enabled forced anti kick")
            jot("Try it b -)")
				_G.forceantikick = true
                _G.antikick = false
                if _G.aty then 
                _G.aty:Disconnect()
                end
                local deb = true
                local deb2 = true
                _G.aty = game:GetService("RunService").RenderStepped:Connect(function()
                    coroutine.wrap(function()
                    for i, v in pairs(plr.Backpack:GetChildren()) do
								if _G.forceantikick and v.Name == "HotPotato" or v.Name == "BlueBucket" or v.Name == "Ro-Orb" or v.Name == "Energy Bomb" or v.Name == "DriveBloxUltimateCar" then
									v.Parent = game:GetService("ReplicatedStorage")
								end

					end
                end)()
				for _,v in pairs(game.Workspace:GetDescendants()) do 
                  if v.Parent.Name ~= 'Workspace' and _G.forceantikick == true then
						if v.Name == "HotPotato" or v.Name == "BlueBucket" or v.Name == "Ro-Orb" or v.Name == "Energy Bomb" or v.Name == "DriveBloxUltimateCar" then -- backpacks

                            if deb then
                                jot("Detected "..v.Name..", Character has been destroyed")
                                tchat(_G.prefix.."hide")
                                _G.forceantikick = false
                            end
                            if deb2 then
                                tchat("ungear others FR THOUGHT")
                            end
                            coroutine.wrap(function()
                                deb2 = false
                                wait()
                                deb2 = true
                                end)()
                                local function kickcheck()
                            coroutine.wrap(function()

                            deb = false
                            local uyi = false
                            wait(10)
                            for _,v in pairs(game.Workspace:GetDescendants()) do 
                            if v.Parent.Name ~= 'Workspace' then
                                if v.Name == "HotPotato" or v.Name == "BlueBucket" or v.Name == "Ro-Orb" or v.Name == "Energy Bomb" or v.Name == "DriveBloxUltimateCar" then
                                    uyi = true
                                end
                            end
                            end
                            if uyi == false then
                            error("All kickable gears have been removed, unhiding player")
                            tchat(_G.prefix.."unhide")
                            _G.forceantikick = true
                            deb = true
                        else
                            error("Detected kickable gears, wait another 10 seconds")
                            kickcheck()
                        end
                            end)()
            
                        end
                        kickcheck()
                    end 
                end
				end
            end)

				
		end)

        addcommand("fixvel",
		"fixes velocity",
		function()
			local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
			local Workspace_Folder = Game_Folder.Workspace
			local Admin_Folder = Game_Folder.Admin
			workspace.Terrain._Game.Workspace.Baseplate.Velocity = Vector3.new(0,0,0)
			workspace.Terrain._Game.Workspace.Baseplate.RotVelocity = Vector3.new(0,0,0) 
			for i, v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Basic House"]:GetChildren()) do
				v.Velocity = Vector3.new(0, 0, 0)
				v.RotVelocity = Vector3.new(0, 0, 0)
			end
			for i, v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Obby"]:GetChildren()) do
				v.Velocity = Vector3.new(0, 0, 0)
				v.RotVelocity = Vector3.new(0, 0, 0)
			end
			for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
				v.Velocity = Vector3.new(0, 0, 0)
				v.RotVelocity = Vector3.new(0, 0, 0)
			end
			for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
				v.Velocity = Vector3.new(0, 0, 0)
				v.RotVelocity = Vector3.new(0, 0, 0)
			end
			for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetChildren()) do
				v.Velocity = Vector3.new(0, 0, 0)
				v.RotVelocity = Vector3.new(0, 0, 0)
			end
			Admin_Folder.Regen.Velocity = Vector3.new(0, 0, 0)
			Admin_Folder.Regen.RotVelocity = Vector3.new(0, 0, 0)
			for i, v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetDescendants()) do
				if v.Name == "Head" then
					v.Velocity = Vector3.new(0, 0, 0)
					v.RotVelocity = Vector3.new(0, 0, 0)
				end
			end
			error("Velocity has been fixed!")
		end)

        addcommand(
		"fixbp",
		"description here",
		function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-501, 0.100000001, 0))
			wait(.2)
			tchat("jail me")
			wait(.1)
			if Workspace_Folder:FindFirstChild("Baseplate").CFrame.Y > 0.2 or Workspace_Folder:FindFirstChild("Baseplate").CFrame.X ~= -501 then
				tchat("gear me 108158379")
				wait(1)
				clickivory()
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
					spawn(function() while looping do wait(.1) tchat('unpunish me') end end)
					wait(0.25)
					looping = false
				end
				movepart()
				wait(1)
				clickivory()
				wait(1)
				tchat("respawn me")
			end
			tchat(_G.prefix.."fixp")
			tchat("Set base successfully")
			tchat("h \n\n\n\n\n\n\n\n\-----------------------------------------------------------------------")
			tchat("h \n\n\n\n\n\n\n\n\n\nTheme - Original ")
			tchat("unjail me")
			tchat("fix")
		end
	)

        local function anticheck()
			if _G.antikick == true or _G.forceantikick then
				error("[*] anti kick is enabled, auto disabling for 15 seconds")
				jot("anti kick is enabled, auto disabling for 15 seconds")
				tchat(_G.prefix.."off")
				coroutine.wrap(function()
				wait(15)
				jot("Re-enabled anti kick")
				wait(1)
				tchat(_G.prefix.."antikick")
				end)()
			else
				acheck = false
			end
		end

        if _G.autoantikick then 
            coroutine.wrap(function()
                wait(.2)
            game.Players:Chat(_G.prefix.."antikick")
            end)()
           end 

           for _, p in next, _G.blacklisted do 
            for _, v in pairs(game.Players:GetPlayers()) do 
                if v.Name == p then 
                    jot("Blacklisted player: "..v.Name.." Has Been Found! Kicking Player..")
                    coroutine.wrap(function()
                        wait(1)
                        tchat(_G.prefix.."kick "..v.Name)
                    end)()
                     
                end 
            end 
        end

           addcommand("smite",
		"a",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
            wait(.1)
                tchat(_G.prefix.."banhammer")
                wait(.6)
                for _, h in pairs(plr.Backpack:GetChildren()) do
                if h.Name == 'BanHammer V1.1' then
                h.Parent = plr.Character 
                end
                end
                repeat wait()
                    plr.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
                    mouse1click()
                until plr.Backpack:FindFirstChild("HotPotato")
         
                    for i = 1, 49 do
                        task.wait()
                        tchat("gear me 10468797")
                    end 

                for _, h in pairs(plr.Backpack:GetChildren()) do
                    if h.Name == 'BanHammer v1.1' then
                h.Parent = game.Workspace
                end
            end
                tchat("ungear me")
                
            end 
        end)

        addcommand("sclr",
		"a",
		function()
        tchat("unchar all")
        
        tchat("clr")
        tchat("fix")
        jot("Server has been cleared")
        end)

       
        
        addcommand("cage",
		"a",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
					_G.cagecheck = false
					tchat("gear me 00000000000000000082357101")
					if _G.cagecheck == false then
						_G.cagecheck = true
						repeat task.wait() until plr.Backpack:FindFirstChild('PortableJustice')
						plr.Backpack.PortableJustice.Parent = plr.Character
						repeat task.wait() until game.Workspace[plr.Name].PortableJustice:FindFirstChild('MouseClick')
						local oldpos = plr.Character.HumanoidRootPart.CFrame
						plr.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
						tchat('unff '..Target.Name)
						repeat 
							coroutine.wrap(function()
								game.Workspace[plr.Name].PortableJustice.MouseClick:FireServer(game.Workspace[Target.Name]) 
							end)()
							task.wait() 
						until Target.Character:FindFirstChild('DisableBackpack')
pcall(function()             
    game.Workspace[plr.Name]["PortableJustice"]:Destroy()
							_G.cagecheck = false
end)
						plr.Character:WaitForChild("HumanoidRootPart")
						plr.Character.HumanoidRootPart.CFrame = oldpos
					end

			end
		end
	)	
    addcommand("gearbl",
		"a",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
					_G.cagecheck = false
					tchat("gear me 00000000000000000082357101")
					if _G.cagecheck == false then
						_G.cagecheck = true
						repeat task.wait() until plr.Backpack:FindFirstChild('PortableJustice')
						plr.Backpack.PortableJustice.Parent = plr.Character
						repeat task.wait() until game.Workspace[plr.Name].PortableJustice:FindFirstChild('MouseClick')
						local oldpos = plr.Character.HumanoidRootPart.CFrame
						plr.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
						tchat('unff '..Target.Name)
						repeat 
							coroutine.wrap(function()
								game.Workspace[plr.Name].PortableJustice.MouseClick:FireServer(game.Workspace[Target.Name]) 
							end)()
							task.wait() 
						until Target.Character:FindFirstChild('DisableBackpack')
						coroutine.wrap(function()
							tchat('reset me')
                            tchat('reset '..Target.Name)
							_G.cagecheck = false
                            Target.CharacterAdded:Wait()
                            tchat("pm/"..Target.Name.."/get gearbanned lol")
						end)()
						plr.CharacterAdded:wait()
						plr.Character:WaitForChild("HumanoidRootPart")
						plr.Character.HumanoidRootPart.CFrame = oldpos
					end

			end
		end
	)	


    for _, v in pairs(game.Players:GetChildren()) do
    v.Chatted:Connect(function(msg)	
    if msg:lower() == 'who asked' then 
    wait(.7)
    chat("[Bot] Searching for who asked...")
    wait(.9)
    for _,o in next, game.Players:GetPlayers() do 
        chat("[Bot] "..o.DisplayName.." didn't ask")
        wait(.9)
    end 
    wait(.9)
    chat("[Bot] My search has concluded that nobody asked")
    wait(.7)
    tchat("explode "..v.Name)
end
end)
end     

addcommand("distort",
    "a",
    function()
        for _, v in next, getinstances() do 
            if v:IsA("Sound") and v.Parent == Folder then 
                
                for i = 1, 1000,1 do 
                    v.TimePosition = i 
                    task.wait(.1)
                end
            end 
        end
    end)

    addcommand("speed",
    "a",
    function()
        local speed = args[2]:split("x")
        local speed = speed[2]
        print(tonumber(speed))

        for _, v in next, getinstances() do 
            if v:IsA("Sound") and v.Parent == Folder then 
                
                for i = 1, v.TimeLength,0.015*speed do 
                    v.TimePosition = i 
                    task.wait()
                end
            end 
        end
    end)
    table.insert(_G.whitelisted,"Exprvssed")
    table.insert(_G.whitelisted,"794x794")

    addcommand("slow",
    "a",
    function()
        local slowed = args[2]:split("x")
        local slwed = slowed[2]

        for _, v in next, getinstances() do 
            if v:IsA("Sound") and v.Parent == Folder then 
                
                for i = 1, v.TimeLength*1000, 1/slowed do 
                    v.TimePosition = i 
                    task.wait(0.5)
                end
            end 
        end
    end)
    
    addcommand("ckick",
    "a",
    function()
        for _Index, Target in pairs(GetPlayer(args[2])) do
            tchat("gear me 0000000000000000000000000000000000000000000000000000000000000000000000223785065")
            if Target.Name ~= game.Players.LocalPlayer.Name then
                tchat("reset "..Target.Name)
                _G.kickpause = true
                local disccheck = true
                local spos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                local acheck = false
                local time = 0 --//credit to bacon B-)
                local ms
                local kickcheck = false
                _G.stable = true
                _G.stop = false
                task.wait(.6)
                --game.Players.LocalPlayer.Character.PortableJustice.Client:Destroy()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
                    if v:IsA'Tool' then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                    --end)
                end
                task.wait(.04)
                tchat("dog "..Target.Name)
                tchat("undog "..Target.Name)
                tchat("unpackage "..Target.Name)
                tchat("removehats "..Target.Name)
                tchat("size "..Target.Name.." nan")
                local args = {
                    [1] = Target.Character
                }

                -- Script generated by SimpleSpy - credits to exx#9394

                tchat(_G.prefix.."usetools")

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(-1*(Target.Character:FindFirstChild("Torso").Size.X/2)-(game.Players.LocalPlayer.Character:FindFirstChild("Torso").Size.X/2), 0, 0)

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(-1*(Target.Character:FindFirstChild("Torso").Size.X/2)-(game.Players.LocalPlayer.Character:FindFirstChild("Torso").Size.X/2), 0, 0)

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(-1*(Target.Character:FindFirstChild("Torso").Size.X/2)-(game.Players.LocalPlayer.Character:FindFirstChild("Torso").Size.X/2), 0, 0)

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos


                tchat("blind "..Target.Name)
                tchat("pm/"..Target.Name.."/Your client has initiated disconnect. [C: 278]")
                task.wait(.1)
                anticheck()
                _G.kickwait = false
                if _G.kickwait == true then
                    task.wait(0.02)
                    _G.antikick = false
                end
                if _G.kcheck == true then
                    coroutine.wrap(function()
                        while _G.kcheck == true do task.wait(.3)
                            if _G.stable == false then
                                repeat
                                    task.wait(.1)
                                until _G.stable == true
                            end
                            if Target.Character:FindFirstChild("HotPotato") or Target.Backpack:FindFirstChild("HotPotato") then
                                
                                break
                            end
                            if not Target.Backpack:FindFirstChild("HotPotato") or not Target.Character:FindFirstChild("HotPotato") then
                                task.wait(.3)
                                _G.stop = true
                                _G.stable = false
                                tchat(_G.prefix.."ckick "..Target.Name)
                            end
                            if Target.Character.Humanoid.Health == 0 then
                                tchat("respawn "..Target.Name)
                                _G.stop = true
                                _G.stable = false
                                _G.kcheck = false
                                task.wait()
                                tchat(_G.prefix.."ckick "..Target.Name)
                                _G.kcheck = true
                                _G.stable = true
                                _G.stop = false
                            end
                        end
                    end)()
                end
                task.wait(.2)
                if _G.stop == false and _G.stable == true then
                    if _G.kmeasure == true then
                        kickcheck = true
                        local measurements = {}
                        local startTime = tick()
                        local StatsService = game:GetService("Stats")
                        coroutine.wrap(function()
                            while kickcheck == true do task.wait()
                                if not Target.Character:FindFirstChild("HotPotato") then
                                    time = time + 0.001
                                    ms = time * 1000
                                end
                                function roundNumber(num, numDecimalPlaces)
                                    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
                                end
                                if Target.Character:FindFirstChild("HotPotato") then
                                    local time2 = tick()
                                    local ping = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. " ms"
                                    kickcheck = false
                                    disccheck = false
                                   
                                end
                            end
                        end)()
                    end
                    _G.stable = false
                    tchat("god "..Target.Name)
                    tchat("ff "..Target.Name)
                    tchat("ungear me")
                    tchat("gear me 25741198")
                    tchat("gear me 25741198")
                    tchat("gear me 25741198")
                    tchat("gear me 25741198")
                    tchat("gear me 25741198")
                    --workspace.Gravity = 0
                    task.wait(.2)
                    local v = Target.Character
                    workspace.CurrentCamera.CameraSubject = v
                    tchat(_G.prefix.."usetools")
                    local Char = game.Players.LocalPlayer.Character or workspace:FindFirstChild(game.Players.LocalPlayer.Name)
                    local hum = Char and Char:FindFirstChildWhichIsA('Humanoid')
                    local hrp = hum and hum.RootPart
                    local hrppos = hrp.CFrame
                    hum = hum:Destroy() or hum:Clone()
                    hum.Parent = Char
                    for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if child:IsA("BasePart") and child.CanCollide == true then
                            child.CanCollide = false
                        end
                    end
                    task.wait()
                    tchat("pm/"..Target.Name.." You are not cool enough to be here >:(")
                    function getRoot(char)
                        local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
                        return rootPart
                    end
                    local vHRP = getRoot(v)
                    tchat("invisible me")
                    while Char and Char.Parent and vHRP and vHRP.Parent do task.wait()
                        local Tools = false
                        for _, v in ipairs(Char:GetChildren()) do
                            if v:IsA('BackpackItem') and v:FindFirstChild('Handle') then
                                Tools = true
                                firetouchinterest(v.Handle, vHRP, 0)
                                firetouchinterest(v.Handle, vHRP, 1)
                            end
                        end
                        if not Tools then
                            break
                        end
                        hrp.CFrame = vHRP.CFrame
                    --[[for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v.Name == "Seizure" then
                                v:Destroy()
                                game.Players.LocalPlayer.Character.Torso.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                                game.Players.LocalPlayer.Character.Torso.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
                            end
                    end]]
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
                        hrp.CFrame = vHRP.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
                        hrp.CFrame = vHRP.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
                        hrp.CFrame = vHRP.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
                    end
                    task.wait(.1)
                    tchat("reset me")
                    while disccheck == true do task.wait()
                        if Target.Character:FindFirstChild("HotPotato") and Target.Backpack:FindFirstChild("HotPotato") then
                            if _G.kcheck == true then
                                _G.kcheck = false
                                _G.kcheck = true
                            end

                            local StatsService = game:GetService("Stats")
                            local ping = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. " ms"
                            disccheck = false
                            _G.stable = true
                            _G.kickpause = false
                            kickcheck = false
                        elseif not Target.Backpack:FindFirstChild("HotPotato") and not Target.Character:FindFirstChild("HotPotato") then
                            tchat("reset "..Target.Name)
                            disccheck = false
                            _G.kickpause = false
                            _G.stable = true
                            kickcheck = false
                        end
                        if acheck == true and _G.antikick == false and _G.kcheck == false then
                            acheck = false
                            --end
                        end
                    end
                end
            end
        end
    end
)
        

        addcommand("jkick",
		"a",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				if Target.Name ~= game.Players.LocalPlayer.Name then
					tchat("reset "..Target.Name)
					local spos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					tchat(_G.prefix.."cage "..Target.Name)
                    tchat("reset me")
					plr.CharacterAdded:wait()
					_G.kickpause = true
					local disccheck = true
					local acheck = false
					local time = 0 --//credit to bacon B-)
					local ms
					local kickcheck = false
					_G.stable = true
					_G.stop = false
					task.wait()
					tchat("unff "..Target.Name)
					tchat("unpackage "..Target.Name)
					tchat("removehats "..Target.Name)
					tchat("size "..Target.Name.." nan")
					--game.Players.LocalPlayer.Character.PortableJustice.Client:Destroy()
					tchat("blind "..Target.Name)
					tchat("pm/"..Target.Name.."/Your client has initiated disconnect. [C: 278]")
					anticheck()
					if _G.kcheck == true then
						coroutine.wrap(function()
							while _G.kcheck == true do task.wait(.3)
								if _G.stable == false then
									repeat
										task.wait(.1)
									until _G.stable == true
								end
								if Target.Character:FindFirstChild("HotPotato") or Target.Backpack:FindFirstChild("HotPotato") then
									error("Stopping kick loop on "..Target.Name.."...")
									break
								end
								if not Target.Character:FindFirstChild("HotPotato") or not Target.Backpack:FindFirstChild("HotPotato") then
									_G.stop = true
									_G.stable = false
									tchat(_G.prefix.."jkick "..Target.Name)
								end
								if Target.Character.Humanoid.Health == 0 then
									tchat("respawn "..Target.Name)
									_G.stop = true
									_G.stable = false
									_G.kcheck = false
									task.wait()
									tchat(_G.prefix.."jkick "..Target.Name)
									_G.kcheck = true
									_G.stable = true
									_G.stop = false
								end
							end
						end)()
					end
					tchat("ungear me")
					task.wait(.2)
					tchat("gear me 25741198")
					tchat("gear me 25741198")
					tchat("gear me 25741198")
					tchat("gear me 25741198")
					tchat("gear me 25741198")
					if _G.stop == false and _G.stable == true then
						if _G.kmeasure == true then
							kickcheck = true
							local measurements = {}
							local startTime = tick()
							local StatsService = game:GetService("Stats")
							coroutine.wrap(function()
								while kickcheck == true do task.wait()
									if not Target.Character:FindFirstChild("HotPotato") then
										time = time + 0.001
										ms = time * 1000
									end
									function roundNumber(num, numDecimalPlaces)
										return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
									end
									if Target.Character:FindFirstChild("HotPotato") then
										local time2 = tick()
										local ping = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. " ms"
										kickcheck = false
										disccheck = false
										chat(botname.." Kicked - [ "..Target.Name.." ] - in "..roundNumber(time2-startTime,2).." seconds at "..ping)
									end
								end
							end)()
						end
						_G.stable = false
						--workspace.Gravity = 0
						task.wait(.3)
						tchat(_G.prefix.."usetools")
						local v = Target.Character
						workspace.CurrentCamera.CameraSubject = v
						local Char = game.Players.LocalPlayer.Character or workspace:FindFirstChild(game.Players.LocalPlayer.Name)
						local hum = Char and Char:FindFirstChildWhichIsA('Humanoid')
						local hrp = hum and hum.RootPart
						local hrppos = hrp.CFrame
						hum = hum:Destroy() or hum:Clone()
						hum.Parent = Char
						for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if child:IsA("BasePart") and child.CanCollide == true then
								child.CanCollide = false
							end
						end
						tchat("spin me")
						tchat("fly me")
						tchat("ff "..Target.Name)
						tchat("pm/"..Target.Name.." You are not cool enough to be here >:(")
						local vHRP = getRoot(v)
						while Char and Char.Parent and vHRP and vHRP.Parent do task.wait()
							local Tools = false
							for _, v in ipairs(Char:GetChildren()) do
								if v:IsA('BackpackItem') and v:FindFirstChild('Handle') then
									Tools = true
									firetouchinterest(v.Handle, vHRP, 0)
									firetouchinterest(v.Handle, vHRP, 1)
								end
							end
							if not Tools then
								break
							end
							hrp.CFrame = vHRP.CFrame
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
							hrp.CFrame = vHRP.CFrame
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
							hrp.CFrame = vHRP.CFrame
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
						end
						task.wait(.1)
						tchat("reset me")
						while disccheck == true do task.wait()
							if Target.Character:FindFirstChild('DisableBackpack') and Target.Character:FindFirstChild("HotPotato") or Target.Backpack:FindFirstChild("HotPotato") then
								error(Target.Name.." has crashed!")
								if _G.kcheck == true then
									_G.kcheck = false
									_G.kcheck = true
									error("Repeat Kick Toggle re-enabled")
								end
								tchat("ghostify "..Target.Name)
								tchat("ff "..Target.Name)
								local StatsService = game:GetService("Stats")
								local ping = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. " ms"
								tchat("name "..Target.Name.." Target Name - [ "..Target.DisplayName.." ]\n\nTarget Status - Fully disconnected")
								tchat("h/\n\n\n\n\n\n\n\n\n\n\n\n\n"..Target.Name.." is fully disconnected!")
								disccheck = false
								_G.stable = true
								_G.kickpause = false
							elseif not Target.Character:FindFirstChild('DisableBackpack') or not Target.Backpack:FindFirstChild("HotPotato") or not Target.Character:FindFirstChild("HotPotato") then
								error(Target.Name.." did not crash.")
								tchat("reset "..Target.Name)
								disccheck = false
								_G.stable = true
								_G.kickpause = false
								if disccheck == false and not Target.Character:FindFirstChild("HotPotato") then
									kickcheck = false
								end
							end
						end
					end
				end
			end
		end
	)

           addcommand("crail",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				local amount = 0
				local playertarg = Target.Name
				repeat
					amount = 0
					tchat("gear me "..string.rep("0", math.random(50, 100)).."79446473")
					for i, v in pairs(plr.Backpack:GetChildren()) do
						if v.Name == "Railgun" then
							amount = amount +1
						end
					end
					game:GetService("RunService").Heartbeat:wait()
				until amount >= 100
				task.wait(.2)
				local tppos = true
				local grav = game.Workspace.Gravity
				tchat("invis me")
				tchat("ungod "..playertarg)
				tchat("speed "..playertarg.." 0")
				tchat("unff "..playertarg)
				wait(.2)
				spawn(function()
					while tppos == true do
						plr.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 10, 0))		
						for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Part") then
								v.CanCollide = false
							end
						end	
						game.Workspace.Gravity = 0
						if tppos == false then break end
						game:GetService("RunService").Heartbeat:wait()
					end
				end)
				local cf = CFrame.new(Vector3.new(0,4,0))
				local segments = 100
				local radius = 25
				local Positions = {}
				local single = 360/segments

				for i = 1, segments do
					local angle = single*i
					local cheating = cf * CFrame.Angles(0,math.rad(angle),0)
					table.insert(Positions, cheating.Position + cheating.LookVector * radius)
				end
				wait(1)
				for i,v in pairs(plr.Backpack:GetChildren()) do
					coroutine.wrap(function()
						pcall(function()
							v.Parent = plr.Character
							v.GripPos = Positions[i]
						end)
					end)()
				end
				wait(1)
				for i,v in pairs(plr.Character:GetChildren()) do
					if v:IsA("Tool") then 
						local player = game.Players.LocalPlayer
						local Mouse = player:GetMouse()
						local num = math.random(1,6)
						local te = Target.Character
						local partcheck = {te:FindFirstChild("Right Leg"), te:FindFirstChild("Left Leg"), te:FindFirstChild("Head") ,te:FindFirstChild("Left Arm") ,te:FindFirstChild("Right Arm"), te:FindFirstChild("HumanoidRootPart"), te:FindFirstChild("Torso")}
						local target = partcheck[math.random(1, #partcheck)]
						local args = {
							[1] = te.HumanoidRootPart.Position 
						}

						v.Click:FireServer(unpack(args))
					end
				end
				wait(.1)
				tppos = false
				wait(.1)
				tchat("unname "..playertarg)
				tchat("vis me")
				tchat("ungear me")
				game.Workspace.Gravity = grav
			end
		end)

        addcommand("missile",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				local amount = 0
				local playertarg = Target.Name
				repeat
					amount = 0
					tchat("gear me "..string.rep("0", math.random(50, 100)).."67747912")
					for i, v in pairs(plr.Backpack:GetChildren()) do
						if v.Name == "LockonLauncher" then
							amount = amount +1
						end
					end
					game:GetService("RunService").Heartbeat:wait()
				until amount >= 100
				task.wait(.2)
				local tppos = true
				local grav = game.Workspace.Gravity
				tchat("invis me")
				tchat("ungod "..playertarg)
				tchat("speed "..playertarg.." 0")
				tchat("unff "..playertarg)
				wait(.2)
				spawn(function()
					while tppos == true do
						plr.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 10, 0))		
						for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Part") then
								v.CanCollide = false
							end
						end	
						game.Workspace.Gravity = 0
						if tppos == false then break end
						game:GetService("RunService").Heartbeat:wait()
					end
				end)
				local cf = CFrame.new(Vector3.new(0,4,0))
				local segments = 100
				local radius = 25
				local Positions = {}
				local single = 360/segments

				for i = 1, segments do
					local angle = single*i
					local cheating = cf * CFrame.Angles(0,math.rad(angle),0)
					table.insert(Positions, cheating.Position + cheating.LookVector * radius)
				end
				wait(1)
				for i,v in pairs(plr.Backpack:GetChildren()) do
					coroutine.wrap(function()
						pcall(function()
							v.Parent = plr.Character
							v.GripPos = Positions[i]
						end)
					end)()
				end
				wait(1)
				for i,v in pairs(plr.Character:GetChildren()) do
					if v:IsA("Tool") then 
						local player = game.Players.LocalPlayer
						local Mouse = player:GetMouse()
						local num = math.random(1,6)
						local te = Target.Character
						local partcheck = {te:FindFirstChild("Right Leg"), te:FindFirstChild("Left Leg"), te:FindFirstChild("Head") ,te:FindFirstChild("Left Arm") ,te:FindFirstChild("Right Arm"), te:FindFirstChild("HumanoidRootPart"), te:FindFirstChild("Torso")}
						local target = partcheck[math.random(1, #partcheck)]
						local args = {
                            [1] = te.HumanoidRootPart.Position
                        }
                        game:GetService("Players").LocalPlayer.Character.LockonLauncher.Remote:FireServer(unpack(args))
                        
					end
				end
				wait(.1)
				tppos = false
				wait(.1)
				tchat("unname "..playertarg)
				tchat("vis me")
				tchat("ungear me")
				game.Workspace.Gravity = grav
			end
		end)

        local players = game.Players

        addcommand("ping",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
                for i = 1, tonumber(args[3]) do 
                    task.wait()
                    game.Players:Chat("gear "..Target.Name.." 000000000000000000000000000000000000000000000000000253519495")
                end
            end 
        end)


	addcommand("rcrail",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				tchat("ungear me")
				task.wait(.2)
				local amount = 0
				local playertarg = Target.Name
				repeat
					amount = 0
					tchat("gear me "..string.rep("0", math.random(50, 100)).."79446473")
					for i, v in pairs(players.LocalPlayer.Backpack:GetChildren()) do
						if v.Name == "Railgun" then
							amount = amount +1
						end
					end
					game:GetService("RunService").Heartbeat:wait()
				until amount >= 100
				task.wait(.2)
				local tppos = true
				local grav = game.Workspace.Gravity
				tchat("invis me")
				tchat("ungod "..playertarg)
				tchat("speed "..playertarg.." 0")
				tchat("unff "..playertarg)
				wait(.2)
				spawn(function()
					while tppos == true do
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 10, 0))		
						for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Part") then
								v.CanCollide = false
							end
						end	
						game.Workspace.Gravity = 0
						if tppos == false then break end
						game:GetService("RunService").Heartbeat:wait()
					end
				end)
				local cf = CFrame.new(Vector3.new(0,4,0))
				local segments = 100
				local radius = 25
				local Positions = {}
				local single = 360/segments

				for i = 1, segments do
					local angle = single*i
					local cheating = cf * CFrame.Angles(0,math.rad(angle),0)
					table.insert(Positions, cheating.Position + cheating.LookVector * radius)
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					coroutine.wrap(function()
						pcall(function()
							v.Parent = game.Players.LocalPlayer.Character
							v.GripPos = Positions[i]
						end)
					end)()
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then 
						local player = game.Players.LocalPlayer
						local Mouse = player:GetMouse()
						local num = math.random(1,6)
						local te = Target.Character
						local partcheck = {te:FindFirstChild("Right Leg"), te:FindFirstChild("Left Leg"), te:FindFirstChild("Head") ,te:FindFirstChild("Left Arm") ,te:FindFirstChild("Right Arm"), te:FindFirstChild("HumanoidRootPart"), te:FindFirstChild("Torso")}
						local target = partcheck[math.random(1, #partcheck)]
						local args = {
							[1] = te.HumanoidRootPart.Position 
						}

						v.Click:FireServer(unpack(args))
					end
				end
				tchat("gear me 000000000000000000000000000000000000000000000000000018474459")
				task.wait(.3)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
				task.wait(.3)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
				_G.crail = true
				wait(.2)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do task.wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(game.Workspace:GetDescendants()) do
							coroutine.wrap(function()
								if v.Name == "Rail" or v.Name == "Effect" then
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
								end
							end)()
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
					game.Workspace.Gravity = grav
				end
				task.wait(.1)
				tppos = false
				wait(.1)
				tchat("unname "..playertarg)
				tchat("vis me")
				game.Workspace.Gravity = grav
			end
		end)

        addcommand("blowup",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				tchat("ungod "..Target.Name)
				tchat("unff "..Target.Name)
				tchat("speed "..Target.Name.." 0")
				for i = 1, 30 do
					tchat("gear me 00000000000000000000000000000000000000000000000000190094159")
				end
				wait(1.1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					pcall(function()
						v.Parent = game.Players.LocalPlayer.Character
						player = game.Players.LocalPlayer
						local Mouse = game.Players.LocalPlayer:GetMouse()
						num = math.random(1,6)
						local te = Target.Character
						if num == 1 then
							target = te:FindFirstChild("Left Leg")
						elseif num == 2 then
							target = te:FindFirstChild("Right Leg")
						elseif num == 3 then
							target = te:FindFirstChild("Head")
						elseif num == 4 then
							target = te:FindFirstChild("Left Arm")
						elseif num == 5 then
							target = te:FindFirstChild("Right Arm")
						elseif num == 6 then
							target = te:FindFirstChild("HumanoidRootPart")
						end
						-- Script generated by SimpleSpy - credits to exx#9394

						local args = {
							[1] = "Activate",
							[2] = target.Position
						}


						game:GetService("Players").LocalPlayer.Character.ModernRocketLauncher.Remote:FireServer(unpack(args))
						game:GetService("RunService").Heartbeat:wait() 
						game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
					end)
				end
			end
		end)

        

	addcommand("rsrail",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				tchat("ungear me")
				task.wait(.1)
				local amount = 0
				local playertarg = Target.Name
				repeat
					amount = 0
					tchat("gear me "..string.rep("0", math.random(50, 100)).."79446473")
					for i, v in pairs(players.LocalPlayer.Backpack:GetChildren()) do
						if v.Name == "Railgun" then
							amount = amount +1
						end
					end
					game:GetService("RunService").Heartbeat:wait()
				until amount >= 100
				task.wait(.2)
				local tppos = true
				local grav = game.Workspace.Gravity
				tchat("invis me")
				tchat("ungod "..playertarg)
				tchat("speed "..playertarg.." 0")
				tchat("unff "..playertarg)
				wait(.2)
				spawn(function()
					while tppos == true do
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 10, 0))		
						for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Part") then
								v.CanCollide = false
							end
						end	
						game.Workspace.Gravity = 0
						if tppos == false then break end
						game:GetService("RunService").Heartbeat:wait()
					end
				end)
				local cf = CFrame.new(Vector3.new(0,4,0))
				local segments = 100
				local radius = 15
				local Positions = {}
				local single = 360/segments

				for i = 1, segments do
					local angle = single*i
					local cheating = cf * CFrame.Angles(math.random(1, 20),math.rad(angle),math.random(1, 20))
					table.insert(Positions, cheating.Position + cheating.LookVector * radius)
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					coroutine.wrap(function()
						pcall(function()
							v.Parent = game.Players.LocalPlayer.Character
							v.GripPos = Positions[i]
						end)
					end)()
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then 
						local player = game.Players.LocalPlayer
						local Mouse = player:GetMouse()
						local num = math.random(1,6)
						local te = Target.Character
						local partcheck = {te:FindFirstChild("Right Leg"), te:FindFirstChild("Left Leg"), te:FindFirstChild("Head") ,te:FindFirstChild("Left Arm") ,te:FindFirstChild("Right Arm"), te:FindFirstChild("HumanoidRootPart"), te:FindFirstChild("Torso")}
						local target = partcheck[math.random(1, #partcheck)]
						local args = {
							[1] = te.HumanoidRootPart.Position 
						}

						v.Click:FireServer(unpack(args))
					end
				end
				tchat("gear me 000000000000000000000000000000000000000000000000000018474459")
				task.wait(.3)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
				task.wait(.3)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 10, 0)
					end
				end
				_G.crail = true
				wait(.2)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do task.wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(game.Workspace:GetDescendants()) do
							coroutine.wrap(function()
								if v.Name == "Rail" or v.Name == "Effect" then
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
								end
							end)()
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
					game.Workspace.Gravity = grav
				end
				task.wait(.1)
				tppos = false
				wait(.1)
				tchat("unname "..playertarg)
				tchat("vis me")
				game.Workspace.Gravity = grav
			end
		end)

        addcommand("fmusic",
		"desc",
		function()
            local geared
            if args[5] then 
            geared = args[2],args[3],args[4],args[5]
            else if args[4] then 
            geared = args[2],args[3],args[4]
            else if args[3] then 
            geared = args[2],args[3]
            else if args[2] then 
            geared = args[2]
            end 
        end 
    end 
end
            local url = "https://search.roblox.com/catalog/json?CatalogContext=2&AssetTypeID=3&PageNumber=1&limit=10&Category=9&SortType=0&keyword="..args[2].."/"
			local returned = http:JSONDecode(game:HttpGet(url))
			if not returned then
				error("Catalog Audio API didn't return anything.")
			end
           local music = returned[1]
            if not music or not music.AssetId then
				error("No Audio found for that search")
			end

	
				tchat("music "..tostring(music.AssetId))
        end)

        addcommand("wl",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
                 
                 appendfile("Whitelisted.txt",Target.Name.."\n")
                 table.insert(_G.whitelisted,Target.Name)
                 tchat("pm/"..Target.Name.."/You've been added to my whitelist")
                end 
            end) 

        
            local wl = isfile("Whitelisted.txt")
            if not wl then 
               writefile("Whitelisted.txt", "shedletsky\n")
            else
              wl = readfile("Whitelisted.txt"):split("\n")
              for i = 1,#wl do 
                table.insert(_G.whitelisted,wl[i])
              end 
            end



        addcommand("bl",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
                 
                 appendfile("Blacklisted.txt",Target.Name.."\n")
                 table.insert(_G.blacklisted,Target.Name)
                 tchat("pm/"..Target.Name.."/Good job, you've earned a spot in my blacklist")
                 wait(.5)
                 tchat("kick "..Target.Name.." Blacklisted")
                end 
            end) 

        
            local blacklist = isfile("Blacklisted.txt")
            if not blacklist then 
               writefile("Blacklisted.txt","agspureiam\n")
            else
              blacklist = readfile("Blacklisted.txt"):split("\n")
              for i = 1,#blacklist do 
                table.insert(_G.blacklisted,blacklist[i])
              end 
            end


	addcommand("srail",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				local amount = 0
				local playertarg = Target.Name
				repeat
					amount = 0
					tchat("gear me "..string.rep("0", math.random(50, 100)).."79446473")
					for i, v in pairs(players.LocalPlayer.Backpack:GetChildren()) do
						if v.Name == "Railgun" then
							amount = amount +1
						end
					end
					game:GetService("RunService").Heartbeat:wait()
				until amount >= 100
				task.wait(.2)
				local tppos = true
				local grav = game.Workspace.Gravity
				tchat("invis me")
				tchat("ungod "..playertarg)
				tchat("speed "..playertarg.." 0")
				tchat("unff "..playertarg)
				wait(.2)
				spawn(function()
					while tppos == true do
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 10, 0))		
						for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Part") then
								v.CanCollide = false
							end
						end	
						game.Workspace.Gravity = 0
						if tppos == false then break end
						game:GetService("RunService").Heartbeat:wait()
					end
				end)
				local cf = CFrame.new(Vector3.new(0,4,0))
				local segments = 100
				local radius = 15
				local Positions = {}
				local single = 360/segments

				for i = 1, segments do
					local angle = single*i
					local cheating = cf * CFrame.Angles(math.random(1, 20),math.rad(angle),math.random(1, 20))
					table.insert(Positions, cheating.Position + cheating.LookVector * radius)
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					coroutine.wrap(function()
						pcall(function()
							v.Parent = game.Players.LocalPlayer.Character
							v.GripPos = Positions[i]
						end)
					end)()
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then 
						local player = game.Players.LocalPlayer
						local Mouse = player:GetMouse()
						local num = math.random(1,6)
						local te = Target.Character
						local partcheck = {te:FindFirstChild("Right Leg"), te:FindFirstChild("Left Leg"), te:FindFirstChild("Head") ,te:FindFirstChild("Left Arm") ,te:FindFirstChild("Right Arm"), te:FindFirstChild("HumanoidRootPart"), te:FindFirstChild("Torso")}
						local target = partcheck[math.random(1, #partcheck)]
						local args = {
							[1] = te.HumanoidRootPart.Position 
						}

						v.Click:FireServer(unpack(args))
					end
				end
				wait(.1)
				tppos = false
				wait(.1)
				tchat("unname "..playertarg)
				tchat("vis me")
				tchat("ungear me")
				game.Workspace.Gravity = grav
			end
		end)
        
        addcommand("setspawn",
		"desc",
		function()
        if rs:FindFirstChild("spawnpoint") then
            rs.spawnpoint:Destroy()
            wait()
        end
        local spawnpoint = Instance.new("Part", rs)
        spawnpoint.Name = "spawnpoint"
        spawnpoint.CFrame = plr.Character.HumanoidRootPart.CFrame
        error("Set spawnpoint to " .. tostring(spawnpoint.CFrame))
        plr.CharacterAdded:Connect(
            function(character)
                if rs:FindFirstChild("spawnpoint") then
                    character:WaitForChild("HumanoidRootPart").CFrame = rs:FindFirstChild("spawnpoint").CFrame
                end
            end
        )
    end)

	

    addcommand("laser",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				for i = 1, 270 do
					tchat("gear me 00000000000000000000000000000000000000000000000000139578207")
				end
				wait(1.1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					pcall(function()
						v.Parent = game.Players.LocalPlayer.Character
						player = game.Players.LocalPlayer
						local Mouse = game.Players.LocalPlayer:GetMouse()
						num = math.random(1,6)
						local te = Target.Character
						if num == 1 then
							target = te:FindFirstChild("Left Leg")
						elseif num == 2 then
							target = te:FindFirstChild("Right Leg")
						elseif num == 3 then
							target = te:FindFirstChild("Head")
						elseif num == 4 then
							target = te:FindFirstChild("Left Arm")
						elseif num == 5 then
							target = te:FindFirstChild("Right Arm")
						elseif num == 6 then
							target = te:FindFirstChild("HumanoidRootPart")
						end
						-- Script generated by SimpleSpy - credits to exx#9394

						args = {
							[1] = target.Position --[[Vector3]]
						}

						game:GetService("Players").LocalPlayer.Character.TriLaserGun.Click:FireServer(unpack(args))
						game:GetService("RunService").Heartbeat:wait()
						game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
					end)
				end
			end
		end)	

	addcommand("cray",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				local amount = 0
				local playertarg = Target.Name
				repeat
					amount = 0
					tchat("gear me "..string.rep("0", math.random(50, 100)).."139578207")
					for i, v in pairs(players.LocalPlayer.Backpack:GetChildren()) do
						if v.Name == "TriLaserGun" then
							amount = amount +1
						end
					end
					game:GetService("RunService").Heartbeat:wait()
				until amount >= 100
				wait(.1)
				local tppos = true
				local grav = game.Workspace.Gravity
				tchat("invis me")
				tchat("ungod "..playertarg)
				tchat("speed "..playertarg.." 0")
				tchat("unff "..playertarg)
				wait(.2)
				spawn(function()
					while tppos == true do
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 10, 0))		
						for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Part") then
								v.CanCollide = false
							end
						end	
						game.Workspace.Gravity = 0
						if tppos == false then break end
						game:GetService("RunService").Heartbeat:wait()
					end
				end)
				local cf = CFrame.new(Vector3.new(0,4,0))
				local segments = 100
				local radius = 25
				local Positions = {}
				local single = 360/segments

				for i = 1, segments do
					local angle = single*i
					local cheating = cf * CFrame.Angles(0,math.rad(angle),0)
					table.insert(Positions, cheating.Position + cheating.LookVector * radius)
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					coroutine.wrap(function()
						pcall(function()
							v.Parent = game.Players.LocalPlayer.Character
							v.GripPos = Positions[i]
						end)
					end)()
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then 
						local player = game.Players.LocalPlayer
						local Mouse = player:GetMouse()
						local num = math.random(1,6)
						local te = Target.Character
						local partcheck = {te:FindFirstChild("Right Leg"), te:FindFirstChild("Left Leg"), te:FindFirstChild("Head") ,te:FindFirstChild("Left Arm") ,te:FindFirstChild("Right Arm"), te:FindFirstChild("HumanoidRootPart"), te:FindFirstChild("Torso")}
						local target = partcheck[math.random(1, #partcheck)]
						local args = {
							[1] = te.HumanoidRootPart.Position 
						}

						v.Click:FireServer(unpack(args))
					end
				end
				wait(.1)
				tppos = false
				wait(.1)
				tchat("unname "..playertarg)
				tchat("vis me")
				tchat("ungear me")
				game.Workspace.Gravity = grav
			end
		end)

        addcommand("swarm",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				tchat("ungod "..Target.Name)
				tchat("unff "..Target.Name)
				tchat("speed "..Target.Name.." 0")
				for i = 1, 30 do
					tchat("gear me 00000000000000000000000000000000000000000000000000215448210")
				end
				wait(1.1)
				tchat(_G.prefix.."usetools")
				task.wait(.1)
				-- Script generated by SimpleSpy - credits to exx#9394
				local args = {
					[1] = "LeftDown",
					[2] = target.Position
				}
				game:GetService("Players").LocalPlayer.Character.MysticalGriffin.Remote:FireServer(unpack(args))
				local args2 = {
					[1] = "LeftUp"
				}
				game:GetService("Players").LocalPlayer.Character.MysticalGriffin.Remote:FireServer(unpack(args2))
				game:GetService("RunService").Heartbeat:wait() 
				game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
			end
		end)


        addcommand("fgear",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
                
			    if args[4] and args[4] ~= "" then  
                _G.gear = args[3].."%"..args[4] 
                else 
                    _G.gear = args[3]
                end 
                local gearapi = "https://catalog.roblox.com/v1/search/items?category=All&includeNotForSale=true&keyword=".._G.gear.."&limit=120"
                local nm = {}
                for i = 1, 100 do 
                    table.insert(nm,i)
                end

                response = http:JSONDecode(game:HttpGet(gearapi))
                    for i = 1, 120 do 
                    if not plr.Backpack:FindFirstChildOfClass("Tool") then 
                        task.wait(.1)
                    tchat("gear "..Target.Name.." "..response.data[i].id)
                    end 
                end
                    

            end 
        end)
                



	addcommand("ssnek",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				local amount = 0
				local playertarg = Target.Name
				repeat
					amount = 0
					tchat("gear me "..string.rep("0", math.random(50, 100)).."113299620")
					for i, v in pairs(players.LocalPlayer.Backpack:GetChildren()) do
						if v.Name == "Snake Sniper" then
							amount = amount +1
						end
					end
					game:GetService("RunService").Heartbeat:wait()
				until amount >= 100
				task.wait(.2)
				local tppos = true
				local grav = game.Workspace.Gravity
				tchat("invis me")
				tchat("speed "..playertarg.." 0")
				tchat("god "..Target.Name)
				wait(.2)
				spawn(function()
					while tppos == true do
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 10, 0))		
						for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Part") then
								v.CanCollide = false
							end
						end	
						game.Workspace.Gravity = 0
						if tppos == false then break end
						game:GetService("RunService").Heartbeat:wait()
					end
				end)
				local cf = CFrame.new(Vector3.new(0,4,0))
				local segments = 100
				local radius = 18
				local Positions = {}
				local single = 360/segments

				for i = 1, segments do
					local angle = single*i
					local cheating = cf * CFrame.Angles(math.random(1, 10),math.rad(angle),math.random(1, 10))
					table.insert(Positions, cheating.Position + cheating.LookVector * radius)
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					coroutine.wrap(function()
						pcall(function()
							v.Parent = game.Players.LocalPlayer.Character
							v.GripPos = Positions[i]
						end)
					end)()
				end
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then 
						local player = game.Players.LocalPlayer
						local Mouse = player:GetMouse()
						local num = math.random(1,6)
						local te = Target.Character
						local partcheck = {te:FindFirstChild("Right Leg"), te:FindFirstChild("Left Leg"), te:FindFirstChild("Head") ,te:FindFirstChild("Left Arm") ,te:FindFirstChild("Right Arm"), te:FindFirstChild("HumanoidRootPart"), te:FindFirstChild("Torso")}
						local target = partcheck[math.random(1, #partcheck)]
						local args = {
							[1] = te.HumanoidRootPart.Position 
						}

						-- Script generated by SimpleSpy - credits to exx#9394
						v.MousePos:FireServer(unpack(args))	
						v.MouseDown:FireServer()
						v.MouseUp:FireServer()
					end
				end
				wait(.1)
				tppos = false
				wait(.1)
				tchat("unname "..playertarg)
				tchat("vis me")
				tchat("ungear me")
				tchat("speed "..playertarg.." 16")
				game.Workspace.Gravity = grav
			end
		end)

        addcommand("dfcolour",
		"desc",
		function()
            colorAPI = {}

colorAPI.color = function(Part, color)
	local thread = coroutine.create(function() -- x3.5 speed boost
		local Arguments =
        {
            ["Part"] = Part,
            ["Color"] = color
        }
        game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Arguments)
	end)
	coroutine.resume(thread)
end

colorAPI.transformToColor3 = function(col)
    local r = col.r
    local g = col.g
    local b = col.b
    return Color3.new(r,g,b);
end

-- colorAPI.Color3 = function(brickColor)
--     return colorAPI.transformToColor3(BrickColor.new(brickColor))
-- end

colorAPI.colorObbyBox = function(color) -- Default is "Teal"
	for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
		colorAPI.color(v, color) -- colorAPI.transformToColor3(BrickColor.new("Bright red"))
	end
end

colorAPI.colorObbyBricks = function(color)-- Default is "Really red"
	  for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby"]:GetChildren()) do
		colorAPI.color(v, color)
	end
end

colorAPI.colorAdminDivs = function(color)-- Default is "Dark stone grey"
	for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
		colorAPI.color(v, color)
	end
end

colorAPI.colorPads = function(color)-- Default is "Bright green"
	for i,v in pairs(game.Workspace.Terrain["_Game"].Admin["Pads"]:GetChildren()) do
		colorAPI.color(v.Head, color)
	end
end

colorAPI.colorHouse = function(arg)
	  local wallsC = arg.wallsC
	  local baseC = arg.baseC
	  local roofC = arg.roofC
	  local WANDDC = arg.WANDDC
	  local stairsC = arg.stairsC
	  local floorC = arg.floorC
	  local rooftsC = arg.rooftsC
	  local chiC = arg.chiC
	  
	  -------------------------------------------------------------------- House (really messy ik) --------------------------------------------------------------------
	  
		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetChildren()) do
			coroutine.wrap(function()
					if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
						colorAPI.color(v, wallsC) -- Default is "Brick yellow"
					end -- House walls
				
					if v.Name == "SmoothBlockModel40" then
						colorAPI.color(v, baseC) -- Default is "Bright green"
					end -- House grass base
				
					if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
						colorAPI.color(v, roofC) -- Default is "Bright red"
					end -- House roof
				
					if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
						colorAPI.color(v, WANDDC) -- Default is "Dark orange"
					end -- House windows and door outlines
				
					if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
						colorAPI.color(v, stairsC) -- Default is "Dark stone grey"
					end -- House Stairs
				
					if v.Name == "SmoothBlockModel112" then
						colorAPI.color(v, floorC) -- Default is "Medium blue"
					end -- House floor
				
					if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
						colorAPI.color(v, rooftsC) -- Default is "Reddish brown"
					end -- House roof thingys
				
					if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
						colorAPI.color(v, chiC) -- Default is "Sand red"
					end -- Chi top part
			end)()
		end
end

colorAPI.colorBuildingBricks = function(arg)
		local DarkStoneGrey = arg.DarkStoneGrey
		local DeepBlue = arg.DeepBlue
		local NY = arg.NY
		local IW = arg.IW
		local LimeGreen = arg.LimeGreen
		local MSG = arg.MSG
		local RB = arg.RB
		local RR = arg.RR
		local TP = arg.TP
		
		-------------------------------------------------------------------- Building Bricks --------------------------------------------------------------------
	  
		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetChildren()) do
			coroutine.wrap(function()
				if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
					colorAPI.color(v, DarkStoneGrey) -- Default is "Dark stone grey"
				end
				
				if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
					colorAPI.color(v, DeepBlue) -- Default is "Deep blue"
				end
				
				if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
					colorAPI.color(v, NY) -- Default is "New Yeller"
				end
				
				if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
					colorAPI.color(v, IW) -- Default is "Institutional white"
				end
				
				if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part9" or v.Name == "Part5" then
					colorAPI.color(v, LimeGreen) -- Default is "Lime green"
				end
				
				if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" then
					colorAPI.color(v, MSG) -- Default is "Medium Stone grey"
				end
				
				if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
					colorAPI.color(v, RB) -- Default is "Really black"
				end
				
				if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
					colorAPI.color(v, RR) -- Default is "Really red"
				end
				
				if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
					colorAPI.color(v, TP) -- Default is "Toothpaste"
				end
			end)()
		end
end

--[[

fixed library lol

spawn(function()
	colorAPI.colorObbyBox(colorAPI.transformToColor3(BrickColor.new("Teal")))
end)

spawn(function()
	colorAPI.colorObbyBricks(colorAPI.transformToColor3(BrickColor.new("Really red")))
end)

spawn(function()
	colorAPI.colorAdminDivs(colorAPI.transformToColor3(BrickColor.new("Dark stone grey")))
end)

spawn(function()
	colorAPI.colorPads(colorAPI.transformToColor3(BrickColor.new("Bright green")))
end)

spawn(function()
	colorAPI.colorBuildingBricks({
		DarkStoneGrey = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
		DeepBlue = colorAPI.transformToColor3(BrickColor.new("Deep blue")),
		NY = colorAPI.transformToColor3(BrickColor.new("New Yeller")),
		IW = colorAPI.transformToColor3(BrickColor.new("Institutional white")),
		LimeGreen = colorAPI.transformToColor3(BrickColor.new("Lime green")),
		MSG = colorAPI.transformToColor3(BrickColor.new("Medium Stone grey")),
		RB = colorAPI.transformToColor3(BrickColor.new("Really black")),
		TP = colorAPI.transformToColor3(BrickColor.new("Toothpaste")),
		RR = colorAPI.transformToColor3(BrickColor.new("Really red"))
	})
end)

spawn(function()
	colorAPI.colorHouse({
		wallsC = colorAPI.transformToColor3(BrickColor.new("Brick yellow")),
		baseC = colorAPI.transformToColor3(BrickColor.new("Bright green")),
		roofC = colorAPI.transformToColor3(BrickColor.new("Bright red")),
		WANDDC = colorAPI.transformToColor3(BrickColor.new("Dark orange")),
		stairsC = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
		floorC = colorAPI.transformToColor3(BrickColor.new("Medium blue")),
		rooftsC = colorAPI.transformToColor3(BrickColor.new("Reddish brown")),
		chiC = colorAPI.transformToColor3(BrickColor.new("Sand red"))
	})
end)

]]--

-------------------------------------------------------------------- BASIC API STUFF HERE --------------------------------------------------------------------

game:GetService("Players"):Chat("gear me 00000000000000000018474459")
		repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild('PaintBucket')
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.50)
		coroutine.wrap(function()
			colorAPI.colorHouse({
				wallsC = colorAPI.transformToColor3(BrickColor.new("Brick yellow")),
				baseC = colorAPI.transformToColor3(BrickColor.new("Bright green")),
				roofC = colorAPI.transformToColor3(BrickColor.new("Bright red")),
				WANDDC = colorAPI.transformToColor3(BrickColor.new("Dark orange")),
				stairsC = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
				floorC = colorAPI.transformToColor3(BrickColor.new("Medium blue")),
				rooftsC = colorAPI.transformToColor3(BrickColor.new("Reddish brown")),
				chiC = colorAPI.transformToColor3(BrickColor.new("Sand red"))
			})
		end)()
    spawn(function()
	colorAPI.colorBuildingBricks({
		DarkStoneGrey = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
		DeepBlue = colorAPI.transformToColor3(BrickColor.new("Deep blue")),
		NY = colorAPI.transformToColor3(BrickColor.new("New Yeller")),
		IW = colorAPI.transformToColor3(BrickColor.new("Institutional white")),
		LimeGreen = colorAPI.transformToColor3(BrickColor.new("Lime green")),
		MSG = colorAPI.transformToColor3(BrickColor.new("Medium Stone grey")),
		RB = colorAPI.transformToColor3(BrickColor.new("Really black")),
		TP = colorAPI.transformToColor3(BrickColor.new("Toothpaste")),
		RR = colorAPI.transformToColor3(BrickColor.new("Really red"))
	})
end)
		colorAPI.color(game.Workspace.Terrain["_Game"].Workspace["Baseplate"], colorAPI.transformToColor3(BrickColor.new("Bright green")))
		spawn(function()
			colorAPI.colorObbyBox(colorAPI.transformToColor3(BrickColor.new("Teal")))
		end)
		spawn(function()
			colorAPI.colorObbyBricks(colorAPI.transformToColor3(BrickColor.new("Really red")))
		end)
		spawn(function()
			colorAPI.colorAdminDivs(colorAPI.transformToColor3(BrickColor.new("Dark stone grey")))
		end)
		spawn(function()
			colorAPI.colorPads(colorAPI.transformToColor3(BrickColor.new("Bright green")))
		end)
wait(0.6)
game.Players:Chat("ungear 000000000000000000000000000000000000000000000000000000000 me "..math.random(99999))
--nil
    end)
            

	addcommand("rail",
		"desc",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				tchat("ungod "..Target.Name)
				tchat("unff "..Target.Name)
				tchat("speed "..Target.Name.." 0")
				for i = 1, 220 do
					tchat("gear me 0000000000000000000000000000000000000000000000000079446473")
				end
				wait(1.1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					pcall(function()
						v.Parent = game.Players.LocalPlayer.Character
						player = game.Players.LocalPlayer
						local Mouse = game.Players.LocalPlayer:GetMouse()
						num = math.random(1,6)
						local te = Target.Character
						if num == 1 then
							target = te:FindFirstChild("Left Leg")
						elseif num == 2 then
							target = te:FindFirstChild("Right Leg")
						elseif num == 3 then
							target = te:FindFirstChild("Head")
						elseif num == 4 then
							target = te:FindFirstChild("Left Arm")
						elseif num == 5 then
							target = te:FindFirstChild("Right Arm")
						elseif num == 6 then
							target = te:FindFirstChild("HumanoidRootPart")
						end
						-- Script generated by SimpleSpy - credits to exx#9394

						args = {
							[1] = target.Position --[[Vector3]]
						}

						game:GetService("Players").LocalPlayer.Character.Railgun.Click:FireServer(unpack(args))
						game:GetService("RunService").Heartbeat:wait() 
						game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
					end)
				end
			end
		end)		


	addcommand("nuke",
		"k",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
				for i = 1, 220 do
					tchat("gear me 0000000000000000000000000000000000000000000000000088885539")
				end
				wait(1.1)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					pcall(function()
						v.Parent = game.Players.LocalPlayer.Character
						player = game.Players.LocalPlayer
						local Mouse = game.Players.LocalPlayer:GetMouse()
						num = math.random(1,6)
						local te = Target.Character
						if num == 1 then
							target = te:FindFirstChild("Left Leg")
						elseif num == 2 then
							target = te:FindFirstChild("Right Leg")
						elseif num == 3 then
							target = te:FindFirstChild("Head")
						elseif num == 4 then
							target = te:FindFirstChild("Left Arm")
						elseif num == 5 then
							target = te:FindFirstChild("Right Arm")
						elseif num == 6 then
							target = te:FindFirstChild("HumanoidRootPart")
						end

						args = {
							[1] = target.Position --[[Vector3]]
						}

						game:GetService("Players").LocalPlayer.Character["Tactical Airstrike"].OnMouseClick:FireServer(unpack(args))
						game:GetService("RunService").Heartbeat:wait() 
						game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
					end)
				end
			end
		end)


	addcommand("spike",
		"k",
		function()
			for i = 1, 220 do
				tchat("gear me 00000000000000000000000000000000000261439002")
			end
			wait(2)
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				pcall(function()
					v.Parent = game.Players.LocalPlayer.Character
					task.wait()
					player = game.Players.LocalPlayer
					local Mouse = game.Players.LocalPlayer:GetMouse()

					args = {
						[1] = Enum.KeyCode.Q
					}

					game:GetService("Players").LocalPlayer.Character.WintersGreatSword.Remote:FireServer(unpack(args))
					task.wait(0.1)
					game.Players.LocalPlayer.Character.Humanoid:UnequipTools(v)
				end)
			end
			--	end
		end)

    addcommand(
        "gayrate",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                local A_1 = Target.Name .. " is " .. math.random(1, 100) .. "% gay"
                local A_2 = "All"
                local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                Event:FireServer(A_1, A_2)
            end
        end
    )

    addcommand("bp",
		"baseplate game, no more house",
		function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4000, 15000, 4000))
			wait(.2)
			tchat("jail me")
			wait(.1)
			if Workspace_Folder:FindFirstChild("Baseplate").CFrame.Y > 0.2 or Workspace_Folder:FindFirstChild("Baseplate").CFrame.X ~= -501 then
				tchat("gear me 108158379")
				wait(1)
				clickivory()
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
					spawn(function() while looping do wait(.1) tchat('unpunish me') end end)
					wait(0.25)
					looping = false
				end
				movepart()
				wait(1)
				clickivory()
				wait(1)
				tchat("respawn me")
				tchat("clr")
			end
			local Stable_Check = false
			wait()
			if Stable_Check == false then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4019, 15004, 4000))
				tchat("gear me 108158379")
				wait(1)
				clickivory()
				error(" Moving...")
				Stable_Check = true
				if Workspace_Folder.Spawn1 then
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
					spawn(function() while looping do wait(.1) tchat('unpunish me') end end)
					wait(0.3)
					looping = false
					clickivory()
					wait(.2)
					tchat("respawn me")
					wait(.2)
				end
				wait(0.2)
				Stable_Check = false
				error(
                    "Moved successfully")
			else
				error("Moving... Please wait")
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4022, 15004, 4000))
			tchat("gear me 108158379")
			wait(1)
			clickivory()
			if Stable_Check == false then
				error("Moving...")
				Stable_Check = true
				if Workspace_Folder.Spawn2 then
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
					spawn(function() while looping do wait(.1) tchat('unpunish me') end end)
					wait(.3)
					looping = false
					clickivory()
					wait(.2)
					tchat("respawn me")
					wait(.2)
				end
				wait(0.2)
				Stable_Check = false
				error("Moved successfully")
			else
				error("Moving... Please wait")
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4026, 15004, 4000))
			tchat("gear me 108158379")
			wait(1)
			clickivory()
			if Stable_Check == false then
				Stable_Check = true
				if Workspace_Folder.Spawn3 then
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
					spawn(function() while looping do wait(.1) tchat('unpunish me') end end)
					wait(.3)
					looping = false
					clickivory()
					wait(.2)
					tchat("respawn me")
					wait(.2)
				end
				wait(0.2)
				Stable_Check = false
				error("Moved successfully")
			else
				error(j"Moving... Please wait")
			end
			error("Baseplate-map set successfully")
		end)


    addcommand("cscu",
		"crash shortcut user",
		function()
			tchat("//spam //super //uncs")
			tchat("-spam -super -uncs")
			wait()
			tchat("//spam //super //spam //super //spam //super //spam //super //spam //super //spam //super //spam //super //spam //super //spam //super //spam //super")
			tchat("-spam -super -spam -super -spam -super -spam -super -spam -super -spam -super -spam -super -spam -super -spam -super -spam -super -spam -super")
			error("RIP to any scv2 users that have you whitelisted")
		end)

        addcommand(
		"smap",
		"description here",
		function()
			local colors = {}
			if args[2] then
				file = args[2]
			end
			file = file .. ".json"
			function formatcf(part: Part)
				return part.CFrame * CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
			end
			tchat("punish others")
			task.wait(.2)
			local http = game:GetService("HttpService")
			for i, v in next, game:GetService("Workspace"):GetDescendants() do
				if v:IsA("Part") or v.Name:lower():match("spawn") then
					colors[v:GetFullName()] = tostring(formatcf(v))
				end
			end
			writefile(file, http:JSONEncode(colors))
			error("Saved map successfully as "..file)
			tchat("unpunish others")
		end)

        addcommand(
		"sbuild",
		"description here",
		function()
			local colors = {}
			if args[2] then
				file = args[2]
			end
			file = file .. ".json"
			task.wait(.2)
			local http = game:GetService("HttpService")
            table.insert(colors,"Number Of Parts : ".._G.i)
			for i, v in next, Folder:GetChildren() do
				if v:IsA("Part") then
					table.insert(colors, v.Name.. " : "..tostring(v.CFrame.X)..", "..tostring(v.CFrame.Y)..", "..tostring(v.CFrame.Z))
				end
			end
			writefile(file, http:JSONEncode(colors))
			error("Saved build successfully as "..file)
		end)

        addcommand(
		"lbuild",
		"",
		function()
			if args[2] then
				file = args[2]:lower()
			end
			file = file .. ".json"
			if not isfile(file) then
				return error("No file found as - "..file)
			end
			if isfile(file) then
				error("Loading build file - "..file)
			end
            tchat("clr")
			local http = game:GetService("HttpService")
			local colors = http:JSONDecode(readfile(file))
			local xop = true
            if not colors[1]:match("Number") then 
                chat("cannot locate 'Number Of Parts' in table")
            else
            
            nparts = colors[1]:split(": ")
            nparts = nparts[2]
            if tonumber(nparts) > 500 then 
                chat(file.." contains more then 500 parts, are you sure you want to load?")
                op = plr.Chatted:Connect(function(m)
                    if m == 'yes' then 
                        xop = false
                        op:Disconnect()
                    end 
                end)
                while xop do 
                    wait(.1)
                end 
                tchat("respawn me")
                wait(.3)
            end 
                
                 
            chat("Loading "..nparts.." Parts..")
            local pcheck = false
            spawn(function()
                task.wait(.1)
            for i = 1,tonumber(nparts),1 do
            task.wait()
                tchat("part/3/0.1/3")
                warn("loaded parts "..tostring(i).. " / "..nparts)
            end 
        end)
            tchat("respawn others")
            tchat("m/Generating part build, please be patient")
            local ss = 1
            Folder.ChildAdded:Connect(function(v)
                if v.Name == 'Part' then 
                    v.Name = 'part'..tostring(ss)
                    ss = ss + 1
                end 
            end )
        
            for i = 1, #colors do 
                if colors[i]:match("part") then 
                    pname = colors[i]:split(" : ")
                    pos = pname[2]:split(", ")
                    pname = tostring(pname[1])

                    x,y,z = tonumber(pos[1]),tonumber(pos[2]),tonumber(pos[3])
                    if Folder:FindFirstChild(pname) then 
                        if Folder[pname].CFrame.X ~= x then 
                            repeat task.wait()
                                Folder[pname].CFrame = CFrame.new(x,y,z)
                                plr.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
                            until Folder[pname].CFrame == CFrame.new(x,y,z)
                            Folder[pname].Anchored = true

                        end
                    end


                end
            end 
        end
        end)

        addcommand(
		"pause",
		"pauses sound",
		function()
            for i, v in pairs(Folder:GetDescendants()) do
                if v:IsA("Sound") then
                    v:Pause()
                end
    end  
end)

addcommand(
		"stop",
		"stop sound",
		function()
            for i, v in pairs(Folder:GetDescendants()) do
                if v:IsA("Sound") then
                    v:Stop()
                end
    end  
end)

addcommand(
		"resume",
		"resumes sound",
		function()
            for i, v in pairs(Folder:GetDescendants()) do
                if v:IsA("Sound") then
                    v:Resume()
                end
    end  
end)
    
	addcommand(
		"lmap",
		"slower mover, this is more likely to be 100% accurate ",
		function()
			if args[2] then
				file = args[2]:lower()
			end
			file = file .. ".json"
			if not isfile(file) then
				return error("No file found as - "..file)
			end
			if isfile(file) then
				error("Loading build file - "..file)
			end
			local http = game:GetService("HttpService")
			local colors = http:JSONDecode(readfile(file))
			function stringtocf(str)
				return CFrame.new(table.unpack(str:gsub(" ", ""):split(",")))
			end
			function formatcf(part: Part)
				return part.CFrame * CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
			end
			function checkcf(c1, c2, threshhold)
				local split1 = c1:gsub(" ", ""):split(",")
				local split2 = c2:gsub(" ", ""):split(",")
				local tor = false
				if math.abs(tonumber(split2[1]) - tonumber(split1[1])) > threshhold then
					tor = true
				end
				if math.abs(tonumber(split2[2]) - tonumber(split1[2])) > threshhold then
					tor = true
				end
				if math.abs(tonumber(split2[3]) - tonumber(split1[3])) > threshhold then
					tor = true
				end
				return tor
			end
			for i, v in next, game:GetService("Workspace"):GetDescendants() do
				--task.spawn(function()
				local color = colors[v:GetFullName()]
				if color and not v.Name:lower():match("head") then
					if tostring(formatcf(v)) ~= color then
						local checked = checkcf(tostring(formatcf(v)), color, 0.27) -- 0.26
						if checked then
							local cfm = stringtocf(color)
							local checker = false
							local function takepartto(partt)
								repeat
									wait()
								until checker == false
								checker = true
								for i, v in pairs(game.Workspace:GetDescendants()) do
									if v.Name == "TestMYBOX" then
										v:Destroy()
									else
										continue
									end
								end
								--local ChatBar = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
								local function randomsim()
									local tablesim = {"|", "<", ".", ">", "/", "?", ";", ":", "@", "'", "~", "#", "]", "}", "[", "{", "=", "+", "-", "_", ")", "(", "*", "&", "^", "%", "$", "!"}
									return tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]
								end
								local selectionbox = Instance.new('SelectionBox')
								selectionbox.LineThickness = .03
								selectionbox.Parent = workspace.CurrentCamera
								selectionbox.Adornee = partt
								selectionbox.Name = "TestMYBOX"
								selectionbox.Color3 = Color3.new(255, 0, 0)
								local function waitforivory()
									repeat
										wait()
										if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)

										end
										if game:GetService("Players").LocalPlayer.Character:FindFirstChild("IvoryPeriastron") then

										else
											tchat("gear me 000000000000000000108158379")
											wait(.1)
										end
										wait()
									until game:GetService("Players").LocalPlayer.Character:FindFirstChild("IvoryPeriastron")
									wait(.1)
								end
								removeobbykill()
								local function clickiv()
									local iv = game:GetService("Players").LocalPlayer.Character:FindFirstChild("IvoryPeriastron")
									repeat
										game:GetService("RunService").Heartbeat:wait()
									until iv:FindFirstChild("Remote")
									local Remote = iv:FindFirstChild("Remote")
									Remote:FireServer(Enum.KeyCode.E)
								end

								local part2 = partt
								local position = cfm
								local spos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								for i, v in pairs(game.Workspace:GetDescendants()) do
									if v ~= partt and v:IsA("Part") then
										v.CanCollide = false
									end
								end
								game.Workspace.Gravity = 0
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
								wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
								wait()
								waitforivory()
								task.wait(.2)
								local tempting = true
								task.spawn(function()
									while tempting == true do
										game.Workspace.Gravity = 0
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
										task.wait()
										game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
									end
								end)
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
								task.wait(.01)
								repeat
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
									task.wait(.1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
									task.wait(.1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
									wait(.1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
									wait(.1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
								until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == position
								wait(.1)
								if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == position then
									clickiv()
									game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
									tempting = false
								end
								wait(.15)
								if part2.Name == "Part" then
									tchat(_G.prefix.."fix")
								end
								local target = part2
								repeat
									game:GetService("RunService").Heartbeat:wait()
								until game.Workspace.Camera:FindFirstChild("FakeCharacter")
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
								local me = game.Players.LocalPlayer
								local function movepart()
									if me.Character then
										local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
										_G.looping = true
										task.spawn(function()
											while true do
												pcall(function()
													game:GetService('RunService').Heartbeat:Wait()
													game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
													cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(me.Character['Torso'].Size.X/2), 0, 0)
												end)
												if _G.looping == false or _G.fix == true then break end
											end
										end)
										spawn(function() while _G.looping == true do task.wait(.2) tchat("unpunish me") end end)
										wait(0.25)
										_G.looping = false
										--	end
									end
								end
								task.wait(.2)
								_G.checking = true
								_G.securecheck = false
								task.spawn(function()
									while _G.checking == true do
										game:GetService('RunService').Heartbeat:Wait()
										if game.Players.LocalPlayer.Character:FindFirstChild("ice") or game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
											_G.securecheck = true
											tchat("unpunish me")
											task.wait()
											tchat("thaw me")
										end
									end
								end)
								repeat
									movepart()
								until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")
								for i, v in pairs(game.Players.LocalPlayer.Character.Torso:GetChildren()) do
									if v:IsA("Weld") and v.Part1 ~= part2 then
										v:Destroy()
									end
								end
								task.wait(.1)
								if _G.securecheck == true then
									waitforivory()
									task.wait(.1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
									game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
									wait(.01)
									repeat
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
										task.wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
										task.wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
										task.wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
										task.wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
									until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == position
									wait(.1)
									if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == position then
										clickiv()
										game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
										tempting = false
									end
									repeat
										movepart()
									until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")
								end
								task.wait(.1)
								clickiv()
								_G.checking = false
								task.wait(.2)
								selectionbox.Color3 = Color3.new(0, 255, 0)
								repeat
									game:GetService("RunService").Heartbeat:wait()
								until game.workspace:FindFirstChild("Pulse")
								for i, v in pairs(game.Workspace:GetDescendants()) do
									if v:IsA("Part") then
										v.CanCollide = true
									end
								end
								task.wait(.2)
								tchat("respawn me "..randomsim())
								repeat
									game:GetService("RunService").Heartbeat:wait()
								until(game.Workspace:FindFirstChild(me.Name))
								task.wait(.3)
                                if _G.cleared then 
                                    _G.cleared = false
                                end
								partt = nil
								game.Workspace.Gravity = 196.2
								wait()
								game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
								checker = false
							end

							takepartto(v)
							repeat
								task.wait()
							until checker == false
							task.wait(0.1) -- 0.2
						end
					end
				end
				--end)
			end
		end)

	addcommand(
		"flmap",
		"faster mover, can at times be in-accurate",
		function()
			if args[2] then
				file = args[2]:lower()
			end
			file = file .. ".json"
			if not isfile(file) then
				return error("No file found as - "..file)
			end
			if isfile(file) then
				error("Loading build file - "..file)
			end
			local http = game:GetService("HttpService")
			local colors = http:JSONDecode(readfile(file))
			function stringtocf(str)
				return CFrame.new(table.unpack(str:gsub(" ", ""):split(",")))
			end
			function formatcf(part: Part)
				return part.CFrame * CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
			end
			function checkcf(c1, c2, threshhold)
				local split1 = c1:gsub(" ", ""):split(",")
				local split2 = c2:gsub(" ", ""):split(",")
				local tor = false
				if math.abs(tonumber(split2[1]) - tonumber(split1[1])) > threshhold then
					tor = true
				end
				if math.abs(tonumber(split2[2]) - tonumber(split1[2])) > threshhold then
					tor = true
				end
				if math.abs(tonumber(split2[3]) - tonumber(split1[3])) > threshhold then
					tor = true
				end
				return tor
			end
			for i, v in next, game:GetService("Workspace"):GetDescendants() do
				--task.spawn(function()
				local color = colors[v:GetFullName()]
				if color and not v.Name:lower():match("head") then
					if tostring(formatcf(v)) ~= color then
						local checked = checkcf(tostring(formatcf(v)), color, 0.27) -- 0.26
						if checked then
							local cfm = stringtocf(color)
							local checker = false
							local function takepartto(partt)
								if not game.Workspace:FindFirstChild(partt) and _G.looping == true then
									_G.looping = false
									print("Error")
								end
								repeat
									wait()
								until checker == false
								checker = true
								for i, v in pairs(game.Workspace:GetDescendants()) do
									if v.Name == "TestMYBOX" then
										v:Destroy()
									else
										continue
									end
								end
								local function randomsim()
									local tablesim = {"|", "<", ".", ">", "/", "?", ";", ":", "@", "'", "~", "#", "]", "}", "[", "{", "=", "+", "-", "_", ")", "(", "*", "&", "^", "%", "$", "!"}
									return tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]..tablesim[math.random(1, #tablesim)]
								end
								local selectionbox = Instance.new('SelectionBox')
								selectionbox.LineThickness = .03
								selectionbox.Parent = workspace.CurrentCamera
								selectionbox.Adornee = partt
								selectionbox.Name = "TestMYBOX"
								selectionbox.Color3 = Color3.new(255, 0, 0)
								local function waitforivory()
									repeat
										task.wait(.1)
										if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)

										end
										if game:GetService("Players").LocalPlayer.Character:FindFirstChild("IvoryPeriastron") then

										else
											tchat("gear me 000000000000000000108158379")
										end

									until game:GetService("Players").LocalPlayer.Character:FindFirstChild("IvoryPeriastron")
								end
								tchat("health me nan")
								local function clickiv()
									local iv = game:GetService("Players").LocalPlayer.Character:FindFirstChild("IvoryPeriastron")
									repeat
										game:GetService("RunService").Heartbeat:wait()
									until iv:FindFirstChild("Remote")
									local Remote = iv:FindFirstChild("Remote")
									Remote:FireServer(Enum.KeyCode.E)
								end

								local part2 = partt
								local position = cfm
								local spos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								for i, v in pairs(game.Workspace:GetDescendants()) do
									if v ~= partt and v:IsA("Part") then
										v.CanCollide = false
									end
								end
								game.Workspace.Gravity = 0
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
								task.wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
								task.wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
								task.wait()
								waitforivory()
								task.wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
								wait(.1)
								clickiv()
								game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
								if part2.Name == "Part" then
									tchat(_G.prefix.."fix")
								end
								local target = part2
								repeat
									game:GetService("RunService").Heartbeat:wait()
								until game.Workspace.Camera:FindFirstChild("FakeCharacter")
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
								local me = game.Players.LocalPlayer
								local function movepart()
									if me.Character then
										local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
										_G.looping = true
										spawn(function()
											while true do
												game:GetService('RunService').Heartbeat:Wait()
												game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
												cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(me.Character['Torso'].Size.X/2), 0, 0)
												if _G.looping == false or _G.fix == true then break end
											end
										end)
										spawn(function() while _G.looping == true do task.wait(.2) tchat("unpunish me") end end)
										wait()
										_G.looping = false
										--	end
									end
								end
								repeat
									movepart()
								until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")
								--	task.wait(.2)
								for i, v in pairs(game.Players.LocalPlayer.Character.Torso:GetChildren()) do
									if v:IsA("Weld") and v.Part1 ~= part2 then
										v:Destroy()
									end
								end
								task.wait()
								clickiv()
								task.wait()
								selectionbox.Color3 = Color3.new(0, 255, 0)
								repeat
									game:GetService("RunService").Heartbeat:wait()
								until game.workspace:FindFirstChild("Pulse")
								for i, v in pairs(game.Workspace:GetDescendants()) do
									if v:IsA("Part") then
										v.CanCollide = true
									end
								end
								task.wait()
								tchat("respawn me "..randomsim())
								repeat
									game:GetService("RunService").Heartbeat:wait()
								until(game.Workspace:FindFirstChild(me.Name))
								task.wait(.2)
								partt = nil
								game.Workspace.Gravity = 196.2
								wait()
								game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
								checker = false
							end

							takepartto(v)
							repeat
								task.wait()
							until checker == false
							task.wait(0.1) -- 0.2
						end
					end
				end
				--end)
			end
		end)


    addcommand(
        "serverlock",
        "description here",
        function()
            jot("Server has been locked")
            error("Server lock activated")
            for _, v in pairs(game.Players:GetPlayers()) do 
            for i = 1, #_G.whitelisted do 
                if v.Name == _G.whitelisted[i] then
                    tchat("pm/"..v.Name.."/[Jotunn.txt] You are whitelisted from serverlock, you must be really cool")
                end 
            end
        end
            _G.slock = true
            game.Players.PlayerAdded:Connect(function(p)
                local wl = false
                if _G.slock then 
                    for i = 1, #_G.whitelisted do
                        if p.Name == _G.whitelisted[i] then 
                        wl = true
                        end 
                    end
                    if wl then 
                    repeat wait() until p.Character
                    jot("Whitedlisted player, "..p.Name.." Has Joined!")
                    tchat("tp "..p.Name.." me")
                    wl = false
                    else 
                    jot(p.Name.." tried to join the server")
                    repeat wait() until p.Character
                    tchat("pm/"..p.Name.."/This Server is locked")
                    wait()
                    tchat(_G.prefix.."kick "..p.Name.." Serverlock Enabled")
                    end
                end 
            end) 
     end)

        addcommand(
        "fixcam",
        "description here",
        function()
            task.spawn(function()
                error("Camera  has been fixed")
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
        end)

        addcommand(
        "unslock",
        "description here",
        function()
            jot("Server has been unlocked")
            error("Server lock De-activated")
            _G.slock = false
        end)

            addcommand(
        "bangun",
        "description here",
        function()    
            if _G.coolammo then 
                _G.coolammo:Disconnect()
            end
            tchat("gear me 17237675")
            local deb = true
_G.banammo = game.Workspace.ChildAdded:Connect(function(b)
    if b.Name == 'Bullet' then
        b.Touched:Connect(function(hum)
            if game.Players:FindFirstChild(hum.Parent.Name) and deb and hum.Parent.Name ~= plr.Name then
                coroutine.wrap(function()
                    deb = false
                    wait(.3)
                    deb = true
                end)()
                spawn(function()
                tchat("music 2323663829")
                wait(.5)
                tchat("music")
                end)
                tchat("kick "..hum.Parent.Name)
                jot("Hello there people\n\n\n\n\n\n\nDon't worry, it only kicks though bangun sounds cooler ;)")
            end 
        end)
    end 
end)
end)

addcommand(
        "zecoolgun",
        "description here",
        function()    
            tchat("gear me 17237675")
            if _G.banammo then 
                _G.banammo:Disconnect()
            end
            local deb = true
_G.coolammo = game.Workspace.ChildAdded:Connect(function(b)
    if b.Name == 'Bullet' then
        b.Touched:Connect(function(hum)
            if game.Players:FindFirstChild(hum.Parent.Name) and deb and hum.Parent.Name ~= plr.Name then
                coroutine.wrap(function()
                    deb = false
                    wait(.3)
                    deb = true
                end)()
                spawn(function()
                tchat("music 2323663829")
                wait(.5)
                tchat("music")
                end)
                tchat("setgrav "..hum.Parent.Name.." nan")
                tchat("pm/"..hum.Parent.Name.."/"..facts[math.random(1,#facts)])
            end 
        end)
    end 
end)
end)

    addcommand(
        "banhammer",
        "description here",
        function()
            tchat("gear me 10468797")
            jot("\n\n\nThe banhammer has been summoned!\nUse it wisely!")
            coroutine.wrap(function()
            wait()
            
            tchat("music "..audios[math.random(1,2)])
            wait(3)
            tchat("music")
            end)()


            
    
                            local hammer = plr.Backpack:WaitForChild("BanHammer V1.1", 3)
                            if hammer then
                                local deb = false
                                hammer.Handle.Touched:Connect(
                                    function(part)
                                        local hum =
                                            part.Parent:FindFirstChild("Humanoid") or part.Parent.Parent:FindFirstChild("Humanoid")
                                        if hum and hum.Health ~= 0 and not deb then
                                            deb = true
                                            coroutine.wrap(
                                                function()
                                                    task.wait(4)
                                                    deb = false
                                                end
                                            )()
                                            local lp = game.Players:GetPlayerFromCharacter(hum.Parent)
                                            if lp.Name == 'Exprvssed' then
                                                jot("[Jotunn.txt] Using my own weapons against me?")
                                            
                                            else if lp and lp ~= game.Players.LocalPlayer then
                                                _G.bh = true
                                                coroutine.wrap(function()
                                                    tchat("music 147722910")
                                                wait(0.3)
                                                tchat("music")
                                                end)()
                                                wait(.3)
                                                tchat(_G.prefix.."kick " .. lp.Name)
                                                    jot("\n\n"..lp.Name.." touched the banhammer LOL")
                                                game.Players.ChildAdded:Connect(function(p)
                                                    if p.Name == lp.Name then 
                                                        _G.bh = true
                                                        jot(lp.Name.." thought he could rejoin LOL")
                                                        error("[*] Banned player, "..lp.Name.." tried rejoining..")
                                                        repeat wait() until p.Character
                                                        tchat(_G.prefix.."kick "..p.Name)
                                                    end 
                                                end)

                                            end
    
                                            end
                                        end
                                    end
                                )
                            end
                        
        end)

    addcommand(
        "headrise",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                tchat("size " .. Target.Name .. " .3")
                tchat("bighead " .. Target.Name)
                wait()
                tchat("size " .. Target.Name .. " 10")
                wait()
                tchat("thaw " .. Target.Name)
                wait()
                tchat("unsize " .. Target.Name)
                Jotunn()
            end
        end
    )

    addcommand(
        "skybox",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                tchat("size " .. Target.Name .. " .3")
                tchat("freeze " .. Target.Name)
                tchat("size " .. Target.Name .. " 10")
                tchat("goldify " .. Target.Name)
                tchat("clone " .. Target.Name)
                tchat("reset " .. Target.Name)
                wait(.1)
                Jotunn()
            end
        end
    )

    addcommand(
        "icetower",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                for i = 1, 30 do
                    tchat("size " .. Target.Name .. " .6")
                    tchat("seizure " .. Target.Name)
                    tchat("freeze " .. Target.Name)
                    tchat("unsize " .. Target.Name)
                end
                Jotunn()
            end
        end
    )

    addcommand(
        "headroot",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                tchat("size " .. Target.Name .. " 10")
                tchat("freeze " .. Target.Name)
                tchat("bighead " .. Target.Name)
                tchat("size " .. Target.Name .. " .3")
                tchat("thaw " .. Target.Name)
                tchat("unsize " .. Target.Name)
                Jotunn()
            end
        end
    )



    addcommand(
        "pdraw",
        "description here",
        function()
            getgenv().draw = true
            getgenv().remove = false
            _G.psize = args[2]
        end)

        addcommand(
        "pdelete",
        "description here",
        function()
            getgenv().draw = false
            getgenv().remove = true
        end)


        addcommand(
        "rpdraw",
        "description here",
        function()
            getgenv().draw = false
            getgenv().remove = false
        end)

    addcommand(
        "amputate",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                tchat("size " .. Target.Name .. " 10")
                wait(.3)
                tchat("freeze " .. Target.Name)
                wait(.3)
                tchat("trip " .. Target.Name)
                wait(.3)
                tchat("unsize " .. Target.Name)
                wait(.3)
                tchat("paint " .. Target.Name .. " red")
                wait(.1)
                Jotunn()
            end
        end
    )

    UIS.InputBegan:Connect(function(a)
        if a.UserInputType == Enum.UserInputType.MouseButton1 and getgenv().draw or getgenv().remove then
            MouseDown = true 
        end
    end)
    UIS.InputEnded:Connect(function(a)
        if a.UserInputType == Enum.UserInputType.MouseButton1 and getgenv().draw or getgenv().remove then
            MouseDown = false
        end
    end)



    spawn(function()
    while task.wait() do
        if MouseDown == true and getgenv().draw then
            if mouse.Target ~= nil then
                task.wait()
                game.Players:Chat("part/3/".._G.psize.."/3")
                     
                     
                 
            end
        else if MouseDown == true and getgenv().delete then 
            if mouse.Target ~= 'Part' then
                mouse.Target:Destroy()
            end 
        end
        end
    end
    end)
    
    coroutine.wrap(function()
        while task.wait() do
            pcall(function()
            for _, v in pairs(rs:GetChildren()) do 
                if v.Name:sub(1,4) == 'part' then
                    nm = v.Name 
                    nm = nm:split("__")
                    if table.find(parts, nm[1]) then
                        if not Folder:FindFirstChild(nm[1]) then 
                        for i = 1, #parts do 
                            if parts[i] == nm[1] then 
                                table.remove(parts,i)
                                return
                            end 
                        end
                        else
                        nmv = nm[2]
                        nmv = nmv:split(", ")
                        x = tonumber(nmv[1])
                        y = tonumber(nmv[2])
                        z = tonumber(nmv[3])
                        Folder:FindFirstChild(nm[1]).CFrame = CFrame.new(x,y,z)
                        end
                        
                end 
            end 
        end
            end)
        
        end
    end)()
    
    Folder.ChildAdded:Connect(function(a)
                 if a:IsA("Part") and getgenv().draw then
                     a.Name = "part"..tostring(_G.i)
                     b = Instance.new("Part", game.ReplicatedStorage)
                     b.Name = a.Name.."__"..tostring(mouse.Hit)
                     _G.i = _G.i + 1 
                     table.insert(parts,a.Name)
             end
    end)

    addcommand(
        "obkill",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                local obbykill = ws["Obby"]:FindFirstChild("Jump")
                removeobbykill()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                obbykill.CFrame *
                                CFrame.new(
                                    -1 * (obbykill.Size.X / 2) -
                                        (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )

                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            tchat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false
                tchat("invis me")
                wait(.12)
                for i = 1, 5 do
                    wait()
                    tchat("tp me " .. Target.Name)
                end
                wait(.35)
                tchat("skydive me")
                wait(.35)
                tchat("respawn me")
            end
        end
    )

    addcommand(
        "infgod",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                tchat("pm " .. Target.Name .. " You have been granted the Power of a God.")
                wait(5)
                tchat("reset " .. Target.Name)
                Target.CharacterAdded:Connect(
                    function(character)
                        tchat("god " .. Target.Name)
                        tchat("ff " .. Target.Name)
                        character.ChildRemoved:Connect(
                            function(child)
                                if child.Name == "ForceField" then
                                    tchat("ff " .. Target.Name)
                                end
                            end
                        )
                        character:WaitForChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(
                            function()
                                tchat("god " .. Target.Name)
                                if character:WaitForChild("Humanoid").Health == 0 then
                                    tchat("reset " .. Target.Name)
                                end
                            end
                        )
                    end
                )
            end
        end
    )

    plr.Chatted:Connect(
        function(msg)
            msg = msg:split(" ")
            if msg[1] == _G.prefix .. "joinserver" then
                id = msg[2]
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, id, plr)
            end
        end
    )

    plr.Chatted:connect(
        function(msg)
            msg = msg:split(" ")
            if msg[1] == _G.prefix .. "pwn" then
                local victim = msg[2]
                tchat("jail " .. victim)
                wait(.1)
                for i = 1, 50 do
                    tchat(":explode " .. victim)
                end
                wait(2.5)
                tchat("unjail " .. victim)
            end
        end
    )

    plr.Chatted:connect(
        function(msg)
            msgh = msg:split(" ")
            if msgh[1] == _G.prefix .. "spam" then  
                command = msg:split("spam ")
                spam = true
                while spam do
                    tchat(command[2])
                    task.wait()
                end
            end
        end
    )

    plr.Chatted:connect(
        function(msg)
            if msg == _G.prefix .. "unspam" then
                spam = false
            end
        end
    )

    plr.Chatted:connect(
        function(msg)
            msg = msg:split(" ")
            if msg[1] == _G.prefix .. "glitch" then
                local victim = msg[2]
                tchat(":setgrav " .. victim .. " -1000")
                tchat("seizure " .. victim)
                Jotunn()
            end
        end
    )

    plr.Chatted:connect(
        function(msg)
            msg = msg:split(" ")
            if msg[1] == _G.prefix .. "break" then
                local victim = msg[2]
                tchat("freeze " .. victim)
                for i = 1, 100 do
                    tchat("dog " .. victim)
                end
                wait(.4)
                for i = 1, 100 do
                    tchat("dog " .. victim)
                end
                wait(.1)
                tchat("goldify " .. victim)
                wait(.2)
                tchat("thaw " .. victim)
                wait(.2)
                tchat("explode " .. victim)
                Jotunn()
            end
        end
    )
   

    addcommand("ban", "description here", function()
        for _Index, Target in pairs(GetPlayer(args[2])) do
        _G.byened = true
        if args[3] then 
        tchat(_G.prefix.."kick "..Target.Name.." "..args[3])
        else
            tchat(_G.prefix.."kick "..Target.Name)
        end
        game.Players.ChildAdded:Connect(function(p)
            if p.Name == Target.Name then 
                _G.byened = true
                jot(p.Name.." thought he could rejoin LOL")
                error("[*] Banned player, "..p.Name.." tried rejoining..")
                repeat wait() until p.Character
                if args[3] then 
                    tchat(_G.prefix.."kick "..Target.Name.." "..args[3])
                    else
                        tchat(_G.prefix.."kick "..Target.Name)
                    end
            end 
        end)
        end 
    end)

    addcommand("blizzard", "description here", function()
        for _Index, Target in pairs(GetPlayer(args[2])) do 
    if not sethiddenproperty then
                game.Players:Chat("synapse")
            else
                sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
                game:GetService("Workspace").Terrain["_Game"].Folder:WaitForChild("Part")
                mob = true
                while mob == true do
                    wait()
                    local Position = Target.Character:WaitForChild("HumanoidRootPart").CFrame
                    for _,v in pairs(Folder:GetChildren()) do
                        if v.Name == 'Part' then
                            v.CFrame = Position + Vector3.new(math.random(-10,10),math.random(-5,10),math.random(-10,10))
    
                        end
                    end
                end
            end
    end
    end)





    addcommand("orb", "description here", function()
        for _Index, Target in pairs(GetPlayer(args[2])) do 

			local unanchoredparts = {}
			local movers = {}
			for index, part in pairs(workspace:GetDescendants()) do
				if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(Target.Character) == false then
					table.insert(unanchoredparts, part)
					part.Massless = true
					part.CanCollide = false
					if part:FindFirstChildOfClass("BodyPosition") ~= nil then
						part:FindFirstChildOfClass("BodyPosition"):Destroy()
					end
				end
			end
			for index, part in pairs(unanchoredparts) do
				local mover = Instance.new("BodyPosition", part)
				table.insert(movers, mover)
				mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			end
			repeat
				for index, mover in pairs(movers) do
					mover.Position = Target.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(0, 0, 5))
				end
				wait(0.5)
			until Target.Character:FindFirstChild("Humanoid").Health <= 0
			for _, mover in pairs(movers) do
				mover:Destroy()
			end
        end



        end)

    

        

        addcommand(".gayrate", "description here", function()
            for _Index, Target in pairs(GetPlayer(args[2])) do 
            local A_1 = "<Mob.txt> "..Target.Name.." is "..math.random(1,100).."% gay"
                        local A_2 = "All"
                        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                        Event:FireServer(A_1, A_2)
            
            end
            end)

            addcommand("cblizzard", "description here", function()
                if not sethiddenproperty then
                    game.Players:Chat("synapse")
                else
                    game.Players:Chat("invis me")
                    wait()
                    game.Players:Chat("clone me")
                    wait(.2)
                    game.Players:Chat("respawn me")
                    sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
                    game:GetService("Workspace").Terrain["_Game"].Folder:WaitForChild("Part")
                    blizzard = true
                    while blizzard == true do
                        wait()
                        local Name = game.Players.LocalPlayer.Name
                        local ClonePosition = Folder[Name]:WaitForChild("HumanoidRootPart").CFrame
                        for _,v in pairs(Folder:GetChildren()) do
                            if v.Name == 'Part' then
                                v.CFrame = ClonePosition + Vector3.new(math.random(-10,10),math.random(-5,10),math.random(-10,10))
                            end
                        end
                    end
                end
            end)
           
        addcommand("blizzard", "description here", function()
            for _Index, Target in pairs(GetPlayer(args[2])) do 
        if not sethiddenproperty then
                    game.Players:Chat("synapse")
                else
                    sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
                    game:GetService("Workspace").Terrain["_Game"].Folder:WaitForChild("Part")
                    blizzard = true
                    while blizzard == true do
                        wait()
                        local Position = Target.Character:WaitForChild("HumanoidRootPart").CFrame
                        local Folder = game:GetService("Workspace").Terrain["_Game"].Folder
                        for _,v in pairs(Folder:GetChildren()) do
                            if v.Name == 'Part' then
                                v.CFrame = Position + Vector3.new(math.random(-10,10),math.random(-5,10),math.random(-10,10))
        
                            end
                        end
                    end
                end
        end
        end)

        addcommand("disable",
		"stops part scripts",
		function()
            blizzard = false
            plr.Character.Humanoid.Health = nil
            wait(.2)
                        tchat("reset me")
        end)
        

        addcommand("off",
		"removes anti kick",
		function()
            error("Disabled anti kick")
				_G.antikick = false
                _G.aty:Disconnect()
		end)

        addcommand("usetools",
		"usetools xd",
		function()
			local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
			for _, v in ipairs(Backpack:GetChildren()) do
				v.Parent = game.Players.LocalPlayer.Character
				v:Activate()
			end
		end
	)

    addcommand("hide",
    "usetools xd",
    function()
                    _G.hide = true
                    coroutine.wrap(
                        function()
                            if not plr.Character then
                                error("Character Does not exist?")
                            else
                                _G.mypos = plr.Character.HumanoidRootPart.CFrame
                                wait()
                                plr.Character:Remove()
                                error("Character Has been Destroyed, Protected from commands")
                            end
                            plr.CharacterAdded:Connect(
                                function(character)
                                    if _G.hide then
                                        character:Destroy()
                                    end
                                end
                            )
                        end
                    )()
            end
        )

        addcommand("unhide",
        "usetools xd",
        function()
            _G.hide = false
            tchat("respawn me")
            plr.CharacterAdded:Wait(.1)
            plr.Character:WaitForChild("HumanoidRootPart").CFrame = _G.mypos
        end)
    
local a = [[













































̡͜Z̴͘͜͢͝A̷̛͜͟͝Ļ́͝҉G̵͟͞Ǫ̴̛́͢!҉̴͘͜҉

]]

local b = [[




̸̀͟͟͝T͏̧͡͏h̵̨̢̛͜i҉̡͢͞s̢͝ ̶̨̡̀͠i͟͝͡s̶̵̢̀͜ ̴̛͘͏t̸́͘h́͡͝è̕͢͡͏ ̵̷͝ę́͜ǹ̵̵̢̛d̶̡̕͝
]]

local c = [[
















































T̶̢hę̸̷ ͡h̨̧o҉̛u͜r̨̨ ҉͜i̕͞͞s ne͝͠͏a͜͝r̡͢

]]

plr.Chatted:connect(function(msgg)
	if string.sub(msgg, 5) == ("part/") then
        msgg = msgg:split("/")
        if msg[2]:len() == 2 or msg[2]:len() == 1 then
		for i = 1, 200 do 
            wait()
			game.Players:Chat("part/"..msg[2].."/"..msg[2].."/"..msg[2])
		end
     end
	end
end)

plr.Chatted:Connect(function(m)
    if m == _G.prefix..'bh' then
            game.Players:Chat("gear me 10468797")
            game.Players:Chat("h/"..c)
            wait()
            game.Players:Chat("shiny me")
            game.Players:Chat("unhat me")
            wait()
            game.Players:Chat("name me "..a)
            wait()
            game.Players:Chat("speed me 60")
            coroutine.wrap(function()
            game.Players:Chat("music 695296619")
            wait(2)
            game.Players:Chat("music")
            end)()
            local hammer = plr.Backpack:WaitForChild("BanHammer V1.1", 3)

						if hammer then
							local deb = false
							hammer.Handle.Touched:Connect(
								function(part)
									local hum = part.Parent:FindFirstChild("Humanoid") or part.Parent.Parent:FindFirstChild("Humanoid")
									if hum and hum.Health ~= 0 and not deb then
										deb = true
										coroutine.wrap(
											function()
												task.wait(1.2)
												deb = false
											end
										)()
										local lp = game.Players:GetPlayerFromCharacter(hum.Parent)
										if lp and lp ~= game.Players.LocalPlayer then
											wait()
											  coroutine.wrap(function()
											game.Players:Chat("music 4895128830")
											wait(2)
											game.Players:Chat("music")
											   end)()
											wait()
											game.Players:Chat("setgrav " .. lp.Name .." inf")
											    for i = 1, 3 do
												game.Players:Chat("pm/"..lp.Name.." "..b)
											   end
							            end
								    end
							end)
					    end
        end
end)



    



addcommand("kick",
		"a",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
                if args[3] then 
                    _G.kickmsg = "Player: "..Target.Name.."\nStatus: Kicked from server\nReason: "..args[3]
                    _G.banmsg = "Player: "..Target.Name.."\nStatus: Banned from server\nReason: "..args[3]
                else
                _G.kickmsg = "Player: "..Target.Name.."\nStatus: Kicked from Server\nReason: No Reason Given"
                _G.banmsg = "Player: "..Target.Name.."\nStatus: Banned from server\nReason: No Reason Given"
                end
                local hammermsg = "Player: "..Target.Name.."\nStatus: touched the banhammer lol"
				if Target.Name ~= game.Players.LocalPlayer.Name then
					_G.kickpause = true
					tchat("respawn "..Target.Name)
					Target.CharacterAdded:wait()
					if plr.Character.Humanoid.Health == 0 then
						tchat("reset me")
                        plr.CharacterAdded:Wait()
					end
                    _G.kcheck = true
					local disccheck = true
					local spos = plr.Character:WaitForChild("HumanoidRootPart").CFrame
					local acheck = false
					local time = 0 --//credit to bacon B-)
					local ms
					local kickcheck = false
                    _G.kmeasure = true
					_G.stable = true
					_G.stop = false
                    anticheck()
					task.wait(.2)
					tchat("size "..Target.Name.." nan")
					tchat("freeze "..Target.Name)
					tchat("gear me 25741198")
                    wait()
                    if _G.bh then 
                        tchat("name "..Target.Name.." "..hammermsg)
                        _G.bh = false
                    else if _G.byened then
                        tchat("name "..Target.Name.." ".._G.banmsg)
                        _G.byened = false
                    else
                        tchat("name "..Target.Name.." ".._G.kickmsg)
                    end
                    end
                    
					_G.kickwait = false
					if game.Players.LocalPlayer.Character:FindFirstChild("ice") then

						tchat("size others nan")
						tchat("gear others 25741198")
						tchat("freeze others")
						tchat("pm/others/UNO KICK B-)")
						tchat("reset me")
						_G.kickwait = true
					end
					if _G.kcheck == true then
						coroutine.wrap(function()
							while _G.kcheck == true do task.wait(.3)
								if _G.stable == false then
									repeat
										task.wait(.1)
									until _G.stable == true
								end
                                local Target = game.Players:FindFirstChild(Target.Name)
								if Target.Character:FindFirstChild("HotPotato") or Target.Backpack:FindFirstChild("HotPotato") then
									error("["..error("*").."]  Stopping kick loop on "..Target.Name.."...")
									break
								end
								_G.kickwait = false
								if plr.Character:FindFirstChild("ice") then
										tchat("size others nan")
									tchat("gear others 25741198")
									tchat("freeze others")
									tchat("pm/others/You cannot kick a master at work B-)")
									tchat("reset me")
									_G.kickwait = true
								end
								if not Target.Character:FindFirstChild("ice") then
									tchat("gear others 25741198")
									tchat("freeze "..Target.Name)
									_G.stop = true
									_G.stable = false
									tchat("thaw me")
									tchat("gear me 25741198")
                                    if args[3] then
									tchat(_G.prefix.."kick "..Target.Name.." "..args[3])
                                    else
                                        tchat(_G.prefix.."kick "..Target.Name)
                                    end
								end
							end
						end)()
					end
					task.wait(.2)
					tchat("gear me 25741198")
					tchat("gear me 25741198")
					tchat("gear me 25741198")
					tchat("gear me 25741198")
					tchat("gear me 25741198")
					if _G.stop == false and _G.stable == true then
						if _G.kmeasure == true then
							kickcheck = true
							local measurements = {}
							local startTime = tick()
							local StatsService = game:GetService("Stats")
							coroutine.wrap(function()
								while kickcheck == true do task.wait()
									if not Target.Character:FindFirstChild("HotPotato") then
										time = time + 0.001
										ms = time * 1000
									end
									function roundNumber(num, numDecimalPlaces)
										return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
									end
									if Target.Character:FindFirstChild("HotPotato") then
										local time2 = tick()
										local ping = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. " ms"
										kickcheck = false
										disccheck = false
										error(botname.." Kicked - [ "..Target.Name.." ] - in "..roundNumber(time2-startTime,2).." seconds at "..ping)
									end
								end
							end)()
						end
						_G.stable = false
						tchat("ff "..Target.Name)
						--workspace.Gravity = 0
						task.wait(.3)
						tchat(_G.prefix.."usetools")
						task.wait(.1)
						if not game.Players.LocalPlayer.Character:FindFirstChild("HotPotato") then
							tchat(_G.prefix.."usetools")
						end
						local v = Target.Character
						workspace.CurrentCamera.CameraSubject = v
						local Char = game.Players.LocalPlayer.Character or workspace:FindFirstChild(game.Players.LocalPlayer.Name)
						local hum = Char and Char:FindFirstChildWhichIsA('Humanoid')
						local hrp = hum and hum.RootPart
						local hrppos = hrp.CFrame
						hum = hum:Destroy() or hum:Clone()
						hum.Parent = Char
						for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if child:IsA("BasePart") and child.CanCollide == true then
								child.CanCollide = false
							end
						end
                        if _G.bh then 
						tchat("pm/"..Target.Name.." The banhammer has asserted it's power, you have been banned from this server")
                        else
                            tchat("pm/"..Target.Name.." scum isnt needed here")
                        end  
						function getRoot(char)
							local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
							return rootPart
						end
						local vHRP = getRoot(v)
						while Char and Char.Parent and vHRP and vHRP.Parent do task.wait()
							local Tools = false
							for _, v in ipairs(Char:GetChildren()) do
								if v:IsA('BackpackItem') and v:FindFirstChild('Handle') then
									Tools = true
									firetouchinterest(v.Handle, vHRP, 0)
									firetouchinterest(v.Handle, vHRP, 1)
								end
							end
							if not Tools then
								break
							end
							hrp.CFrame = vHRP.CFrame
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
							hrp.CFrame = vHRP.CFrame
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
							hrp.CFrame = vHRP.CFrame
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
							--	tchat("noclip "..Target.Name)
							hrp.CFrame = vHRP.CFrame
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
						end
						task.wait(.1)
						tchat("reset me")
						while disccheck == true do task.wait()
							if Target.Character:FindFirstChild("ice") and Target.Character:FindFirstChild("HotPotato") or Target.Backpack:FindFirstChild("HotPotato") then
								--error("["..error("*").."] "..Target.Name.." has crashed!")
								if _G.kcheck == true then
									_G.kcheck = false
									_G.kcheck = true
									--error("[*]:","Repeat Kick Toggle re-enabled")
								end
								tchat("ghostify "..Target.Name)
								tchat("ff "..Target.Name)
								local StatsService = game:GetService("Stats")
								local ping = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. " ms"
								--tchat("name "..Target.Name.." Target Name - [ "..Target.DisplayName.." ]\n\nTarget Status - Fully disconnected")
								--tchat("h/\n\n\n\n\n\n\n\n\n\n\n\n\n[*]: "..Target.Name.." is fully disconnected!")
								disccheck = false
								_G.stable = true
								_G.kickpause = false
							elseif not Target.Backpack:FindFirstChild("HotPotato") or not Target.Character:FindFirstChild("HotPotato") then
								error(Target.Name.." did not crash.")
								tchat("reset "..Target.Name)
								disccheck = false
								_G.kickpause = false
								_G.stable = true
								if disccheck == false and not Target.Character:FindFirstChild("HotPotato") then
									kickcheck = false
								end
							end
						end
					end
				end
			end
		end
	)

   

    addcommand("nkick",
    "a",
    function()
        for _Index, Target in pairs(GetPlayer(args[2])) do
            if args[3] then 
                _G.kickmsg = "Player: "..Target.Name:sub(1,1).."\nStatus: Kicked from server\nReason: "..args[3]
                _G.banmsg = "Player: "..Target.Name:sub(1,1).."\nStatus: Banned from server\nReason: "..args[3]
            else
            _G.kickmsg = "Player: "..Target.Name:sub(1,1).."\nStatus: Kicked from Server\nReason: No Reason Given"
            _G.banmsg = "Player: "..Target.Name:sub(1,1).."\nStatus: Banned from server\nReason: No Reason Given"
            end
            local hammermsg = "Player: "..Target.Name:sub(1,1).."\nStatus: touched the banhammer lol"
            if Target.Name ~= game.Players.LocalPlayer.Name then
                _G.kickpause = true
                tchat("respawn "..Target.Name:sub(1,1))
                Target.CharacterAdded:wait()
                if plr.Character.Humanoid.Health == 0 then
                    tchat("reset me")
                    plr.CharacterAdded:Wait()
                end
                _G.kcheck = true
                local disccheck = true
                local spos = plr.Character:WaitForChild("HumanoidRootPart").CFrame
                local acheck = false
                local time = 0 --//credit to bacon B-)
                local ms
                local kickcheck = false
                _G.kmeasure = true
                _G.stable = true
                _G.stop = false
                anticheck()
                task.wait(.2)
                tchat("size "..Target.Name:sub(1,1).." nan")
                tchat("freeze "..Target.Name:sub(1,1))
                tchat("gear me 25741198")
                wait()
                if _G.bh then 
                    tchat("name "..Target.Name:sub(1,1).." "..hammermsg)
                    _G.bh = false
                else if _G.byened then
                    tchat("name "..Target.Name:sub(1,1).." ".._G.banmsg)
                    _G.byened = false
                else
                    tchat("name "..Target.Name:sub(1,1).." ".._G.kickmsg)
                end
                end
                
                _G.kickwait = false
                if game.Players.LocalPlayer.Character:FindFirstChild("ice") then
                    tchat("size others nan")
                    tchat("gear others 25741198")
                    tchat("freeze others")
                    tchat("pm/others/UNO KICK B-)")
                    tchat("reset me")
                    _G.kickwait = true
                end
                if _G.kcheck == true then
                    coroutine.wrap(function()
                        while _G.kcheck == true do task.wait(.3)
                            if _G.stable == false then
                                repeat
                                    task.wait(.1)
                                until _G.stable == true
                            end
                            local Target = game.Players:FindFirstChild(Target.Name)
                            if Target.Character:FindFirstChild("HotPotato") or Target.Backpack:FindFirstChild("HotPotato") then
                                error("["..error("*").."]  Stopping kick loop on "..Target.Name.."...")
                                break
                            end
                            _G.kickwait = false
                            if plr.Character:FindFirstChild("ice") then
                                tchat(_G.prefix.."antikick")
                                tchat("size others nan")
                                tchat("gear others 25741198")
                                tchat("freeze others")
                                tchat("pm/others/You cannot kick a master at work B-)")
                                tchat("reset me")
                                _G.kickwait = true
                            end
                            if not Target.Character:FindFirstChild("ice") then
                                tchat("gear others 25741198")
                                tchat("freeze "..Target.Name:sub(1,1))
                                _G.stop = true
                                _G.stable = false
                                tchat("thaw me")
                                tchat("gear me 25741198")
                                if args[3] then
                                tchat(_G.prefix.."nkick "..Target.Name:sub(1,1).." "..args[3])
                                else
                                    tchat(_G.prefix.."nkick "..Target.Name:sub(1,1))
                                end
                            end
                        end
                    end)()
                end
                task.wait(.2)
                tchat("gear me 25741198")
                tchat("gear me 25741198")
                tchat("gear me 25741198")
                tchat("gear me 25741198")
                tchat("gear me 25741198")
                if _G.stop == false and _G.stable == true then
                    if _G.kmeasure == true then
                        kickcheck = true
                        local measurements = {}
                        local startTime = tick()
                        local StatsService = game:GetService("Stats")
                        coroutine.wrap(function()
                            while kickcheck == true do task.wait()
                                if not Target.Character:FindFirstChild("HotPotato") then
                                    time = time + 0.001
                                    ms = time * 1000
                                end
                                function roundNumber(num, numDecimalPlaces)
                                    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
                                end
                                if Target.Character:FindFirstChild("HotPotato") then
                                    local time2 = tick()
                                    local ping = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. " ms"
                                    kickcheck = false
                                    disccheck = false
                                    error(botname.." Kicked - [ "..Target.Name.." ] - in "..roundNumber(time2-startTime,2).." seconds at "..ping)
                                end
                            end
                        end)()
                    end
                    _G.stable = false
                    tchat("ff "..Target.Name:sub(1,1))
                    --workspace.Gravity = 0
                    task.wait(.3)
                    tchat(_G.prefix.."usetools")
                    task.wait(.1)
                    if not game.Players.LocalPlayer.Character:FindFirstChild("HotPotato") then
                        tchat(_G.prefix.."usetools")
                    end
                    local v = Target.Character
                    workspace.CurrentCamera.CameraSubject = v
                    local Char = game.Players.LocalPlayer.Character or workspace:FindFirstChild(game.Players.LocalPlayer.Name)
                    local hum = Char and Char:FindFirstChildWhichIsA('Humanoid')
                    local hrp = hum and hum.RootPart
                    local hrppos = hrp.CFrame
                    hum = hum:Destroy() or hum:Clone()
                    hum.Parent = Char
                    for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if child:IsA("BasePart") and child.CanCollide == true then
                            child.CanCollide = false
                        end
                    end
                    if _G.bh then 
                    tchat("pm/"..Target.Name:sub(1,1).." The banhammer has asserted it's power, you have been banned from this server")
                    else
                        tchat("pm/"..Target.Name:sub(1,1).." scum isnt needed here")
                    end  
                    function getRoot(char)
                        local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
                        return rootPart
                    end
                    local vHRP = getRoot(v)
                    while Char and Char.Parent and vHRP and vHRP.Parent do task.wait()
                        local Tools = false
                        for _, v in ipairs(Char:GetChildren()) do
                            if v:IsA('BackpackItem') and v:FindFirstChild('Handle') then
                                Tools = true
                                firetouchinterest(v.Handle, vHRP, 0)
                                firetouchinterest(v.Handle, vHRP, 1)
                            end
                        end
                        if not Tools then
                            break
                        end
                        hrp.CFrame = vHRP.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
                        hrp.CFrame = vHRP.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
                        hrp.CFrame = vHRP.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
                        --	tchat("noclip "..Target.Name)
                        hrp.CFrame = vHRP.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
                    end
                    task.wait(.1)
                    tchat("reset me")
                    while disccheck == true do task.wait()
                        if Target.Character:FindFirstChild("ice") and Target.Character:FindFirstChild("HotPotato") or Target.Backpack:FindFirstChild("HotPotato") then
                            --error("["..error("*").."] "..Target.Name.." has crashed!")
                            if _G.kcheck == true then
                                _G.kcheck = false
                                _G.kcheck = true
                                --error("[*]:","Repeat Kick Toggle re-enabled")
                            end
                            tchat("ghostify "..Target.Name:sub(1,1))
                            tchat("ff "..Target.Name:sub(1,1))
                            local StatsService = game:GetService("Stats")
                            local ping = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. " ms"
                            --tchat("name "..Target.Name.." Target Name - [ "..Target.DisplayName.." ]\n\nTarget Status - Fully disconnected")
                            --tchat("h/\n\n\n\n\n\n\n\n\n\n\n\n\n[*]: "..Target.Name.." is fully disconnected!")
                            disccheck = false
                            _G.stable = true
                            _G.kickpause = false
                        elseif not Target.Backpack:FindFirstChild("HotPotato") or not Target.Character:FindFirstChild("HotPotato") then
                            error(Target.Name.." did not crash.")
                            tchat("reset "..Target.Name:sub(1,1))
                            disccheck = false
                            _G.kickpause = false
                            _G.stable = true
                            if disccheck == false and not Target.Character:FindFirstChild("HotPotato") then
                                kickcheck = false
                            end
                        end
                    end
                end
            end
        end
    end
)


            addcommand("cc",
		"a",
		function()
			for _Index, Target in pairs(GetPlayer(args[2])) do
                tchat("freeze all")
               wait(.2)
                for i = 1, 500 do 
                    tchat("dog all all all all all all all all all all all all all all all all all all all "..i)
                end
            end 
            end)




    

    addcommand(
        "rj",
        "rejoins the fucking server",function()
        tp:TeleportToPlaceInstance(game.PlaceId,game.JobId,plr)
        end)

    local slocked = {}
    addcommand(
        "slock",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                table.insert(slocked,Target.Name)
                tchat("punish " .. Target.Name)
                tchat("blind " .. Target.Name)
                tchat("pm " .. Target.Name .. " You have been Server Locked by " .. plr.Name .. ".")
                wait()
                game.Workspace.ChildAdded:Connect(
                    function(child)
                        for _, v in next, slocked do
                        if child.Name == Target.Name and Target.Name == v then
                            tchat("punish " .. Target.Name)
                            tchat("blind " .. Target.Name)
                        end
                    end
                    end
                )
                game.Players.PlayerAdded:Connect(
                    function(player)
                        for _, v in next, slocked do
                        if player.Name == Target.Name and Target.Name == v then
                            tchat("pm " .. Target.Name .. " You have been Server Locked by " .. plr.Name)
                            tchat("punish " .. Target.Name)
                            tchat("blind " .. Target.Name)
                        end
                        end
                    end
                )
            end
        end
    )

    addcommand(
        "house",
        "description here",
        function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-29.809, 8.229, 72.000)
		end
	)


    addcommand(
        "freg",
        "description here",
        function()
			error("Attempting to find vertical regen...")
			error("Checking saved coords first...")
			local root = game.Players.LocalPlayer.Character.HumanoidRootPart
			wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000000, 1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-200000, 50000, 3500000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-7, 534009, 95));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000003, -1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1101734, 33651680, -33531784));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000003, -1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000000, -3));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(3, -1000000, 1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -3, -1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, -3, 1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 3, 1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-7, 200009, 95));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000003, 1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000003, 1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(454545, 150000, -678678));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(306712, 420552, 398158));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, 1000003, 1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, 1000003, -1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, -1000003, -1000000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-397746, 503, -168829));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-674082.8125,-698538.6875,-286853.125));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(45400, -49860, 56673));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-559702.25,-724234.1875,-563028.25));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-504678,-470264.90625,-387767.9375));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-397745.9375,499.0865173339844,-168829.078125));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(56470, -48312, 28578));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-9, 60008, 89));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-123317.0625, 119352.671875, 911237));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(75304, -49638, 47300));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(34120, -48830, 30233));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(279584.8125,-47841.0234375,410623.0625));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-225255.265625,-146865.9375,51726.44140625));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(77822, -49751, 79116));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(42682, -29202, 29886));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(54933, -500353, 85934));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(51052, -49558, 34068));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-23529.498046875,-21270.994140625,-17196.0078125));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(57099.02734375,-40034.640625,708909.75));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(562191.25,-39999.55078125,110908.984375));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(777584.875,52895.4140625,3576.002685546875));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(777584.875,52895.4140625,3576.002685546875));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(824511,1000000,24944.01953125));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(782629, 385179, 234698));wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-251773, 1000003, 382563));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(653864.8125,247022.828125,149027.078125));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500000, 300000, 500000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-300000, 300000, 300000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(300000, 300000, 300000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(300000, 300000, -300000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-300000, 300000, -300000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500000, 300000, 500000));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-7, 12009, 95));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(734399, 560502, 2776));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-360263, 421796, 716100));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(999982, 3143, 999997));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(696973, 999997, -1000001));wait(.15)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100000, 10000, 100000));wait(.15)
			wait(.15)
			tchat(_G.prefix.."house")
			tchat(_G.prefix.."house")
			error("Still looking for regen...")
			wait(.3)
			repeat 
				wait()
				root.CFrame = CFrame.new(-7.165, root.Position.Y+2000 , 94.743)
			until workspace.Terrain._Game.Admin:FindFirstChild("Regen")
			root.CFrame = workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0,3,0)
			if workspace.Terrain._Game.Admin:FindFirstChild("Regen") then
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
				error("Found regen!")
				GraphicalEffects.CrystalRing("Eggplant", 5)
			end
		end)

    addcommand(
        "unslock",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                error("[*]")
                table.remove(slocked,Target.Name)
        end
            
        end)

        addcommand(
        "slocked",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                
                error("[*] Server locked players:")
                for _,v in next, slocked do 
                error(v)
                end
        end
            
        end)

        
    
    
    game.Players.PlayerAdded:Connect(
        function(pr)
                if pr.Name == 'rwegretful' and _G.bullyaria then 
                    repeat task.wait() until pr.Character
                    tchat("music 1839334310")
        wait(.4)
tchat("tp rwegretful me")

pr.CharacterAdded:Connect(function(c)
    if _G.bullyaria then
    local name = names[math.random(1,#names)]
    if name == 'velincy' then
        game.Players:Chat("name rwegretful "..name)
        wait(1)
    game.Players:Chat("h/Hello there, vel.. fr thought LOL")
    wait(1)
    game.Players:Chat("explode rwegretful")
    else
    game.Players:Chat("h/Hello there, "..name)
    game.Players:Chat("name rwegretful "..name)
    end
    c.ChildRemoved:Connect(function(a)
        if a.Name == name then 
            game.Players:Chat("name rwegretful "..name)
        end 
    end)
end
end)
wait(1)
tchat("reset rwegretful")
end
                for i = 1, #_G.blacklisted do
                    if pr.Name == _G.blacklisted[i] then
                        jot("Blacklisted player: "..pr.Name.." Has joined, kicking player..")
                        error("Blacklisted player: "..pr.Name.." Has joined, kicking player")
                        tchat(_G.prefix.."kick "..pr.Name)
                    end
                end
                for i = 1, #_G.whitelisted do
                    if pr.Name == _G.whitelisted[i] then
                        error("Whitelisted player: "..pr.Name.." Has joined")
                        jot("Whitelisted player: "..pr.Name.." Has joined")
                        pr.CharacterAdded:Wait()
                        tchat("tp "..pr.Name.." me")
                    end
                end
        end
    )


    addcommand(
        "outfitlog",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                id = Target.UserId
                url = syn.request({Url = "https://avatar.roblox.com/v1/users/" .. id .. "/outfits?itemsPerPage=20"})
                outfits = http:JSONDecode(url.Body)
                error("\n" .. Target.Name .. "'s Outfits:\n")
                for i, v in pairs(outfits.data) do
                    error(i .. ") Outfit Name: " .. v.name)
                end
                error("\nTotal: " .. outfits.total)
            end
        end
    )

    addcommand(
        "info",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                id = Target.UserId
                friends = syn.request({Url = "https://friends.roblox.com/v1/users/" .. id .. "/friends/count"})
                followers = syn.request({Url = "https://friends.roblox.com/v1/users/" .. id .. "/followers/count"})
                name = syn.request({Url = "https://users.roblox.com/v1/users/" .. id})
                previousnames =
                    syn.request(
                    {Url = "https://users.roblox.com/v1/users/" .. id .. "/username-history?limit=10&sortOrder=Asc"}
                )
                status = syn.request({Url = "https://users.roblox.com/v1/users/" .. id .. "/status"})

                friends = http:JSONDecode(friends.Body)
                followers = http:JSONDecode(followers.Body)
                name = http:JSONDecode(name.Body)
                previousnames = http:JSONDecode(previousnames.Body)
                status = http:JSONDecode(status.Body)

                error("Username: " .. name.name)
                error("\nDisplayName: " .. name.displayName)
                error("\nDescription: " .. name.description)
                error("\nStatus: " .. status.status)
                error("\nuserId: " .. name.id)
                error("\nFriend Count: " .. friends.count)
                error("\nAccount Created: " .. name.created)
                for i, v in pairs(previousnames.data) do
                    error("\nPrevious Names: " .. v.name)
                    total = i
                end
            end
        end
    )

    plr.Chatted:Connect(
        function(msg)
            if msg == _G.prefix .. "logservers" then
                url =
                    syn.request(
                    {
                        Url = "https://games.roblox.com/v1/games/" ..
                            game.PlaceId .. "/servers/Public?limit=10&sortOrder=Asc"
                    }
                )
                response = http:JSONDecode(url.Body)
                for i, server in pairs(response.data) do
                    if server.id == game.JobId then
                        error("\n" .. i .. ") Server You're currently in!\n")
                        error("Server Id: " .. server.id)
                        error("Server Ping: " .. server.ping)
                        error("Server Fps: " .. server.fps)
                        error("Players Playing: " .. server.playing .. "\n")
                        error("---------------------------------------------------------------------------------\n")
                    else
                        error("\n" .. i .. ") Found Server!\n")
                        error("Server Id: " .. server.id)
                        error("Server Ping: " .. server.ping)
                        error("Server Fps: " .. server.fps)
                        error("Players Playing: " .. server.playing .. "\n")
                        error("---------------------------------------------------------------------------------\n")
                    end
                end
            end
        end
    )

    addcommand(
        "pban",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                table.insert(padbanned,Target.Name)
                error((Target.Name.." has been added to the pad-banned table"))
            end 
        end)

       

        addcommand(
        "rpban",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                for i = 1, #padbanned do 
                    if padbanned[i] == Target.Name then 
                        table.remove(padbanned,i)
                    end 
                end
                error((Target.Name.." has been removed from the pad-banned table"))
            end 
        end)

        addcommand(
        "timeout",
        "description here",
        function()
            for _Index, Target in pairs(GetPlayer(args[2])) do
                table.insert(_G.timeout,Target.Name)
                print(args[3])
                if string.match(args[3],"m") then
                 _G.timed = args[3]:split("m")   
                else
                 _G.timed = args[3]:split("s") 
                end

                local timed = tonumber(_G.timed[1])

                if string.match(args[3],"m") then
                    timed = timed*60
                end 
                function out()
                    tchat("cage "..Target.DisplayName)
                    tchat("name "..Target.Name.." (Time-Out)\n"..Target.DisplayName)
                    
                end 
                tchat("cage "..Target.Name)
                    tchat("name "..Target.Name.." (Time-Out)\n"..Target.DisplayName)
                tchat("h/You are under time-out, Please reflect on your behaviour while you do so")
                spawn(function()
                    wait(3)
                    tchat("h/Say /timeout to view your remaining time..")
                end)
                local extratime = 0.01
                local a = Target.CharacterAdded:Connect(function()
                    if table.find(_G.timeout,Target.Name) then
                        pcall(function()
                        out()
                        
                    end)
                end
                end) 
                local b = Target.Chatted:Connect(function(msg)
                    if msg == '/timeout' and table.find(_G.timeout,Target.Name) then 
                        chat("Your remaining time is "..tostring(timed).." seconds..")
                    end 
                end)
                for i = 1, timed do 
                    wait(1)
                    timed = timed - 1

                end 
                a:Disconnect()
                b:Disconnect()
                for i = 1, #_G.timeout do 
                    if _G.timeout[i] == Target.Name then 
                table.remove(_G.timeout,i)
                    end 
                end
                wait(.1)
                tchat("reset "..Target.Name)
                tchat("h/Your time-out is over, "..Target.Name)

                
            end
        end)

        coroutine.wrap(function()
            local deb = true
    for _, v in pairs(Pads:GetChildren()) do
    if v:FindFirstChild("Head") then
    v.Head.Touched:Connect(function(p)
        if table.find(padbanned, p.Parent.Name) and deb then
            coroutine.wrap(function()
                deb = false
                game.Players[p.Parent.Name].CharacterAdded:Wait()
                deb = true
            end)()
            b = p.Parent.Name
            regenpads()
            tchat("respawn "..b)
            wait(.1)
            tchat("pm/"..b.." your banned from pads LOL")
        end 
    end) 
end
end
end)()

    

    section1:addToggle(
        "Anti Kill",
        nil,
        function(value)
            if value == true then
                antikill = true
                error("Anti kill enabled")
                coroutine.wrap(
                    function()
                        while antikill do
                            task.wait(time)
                            if plr.Character:WaitForChild("Humanoid").Health == 0 then
                                tchat("reset me")
                                wait(.17)
                            end
                        end
                    end
                )()
            else
                antikill = false
                error("Anti kill Disabled")
            end
        end
    )

    section1:addToggle(
        "Anti Jail",
        nil,
        function(value)
            if value == true then
                antijail = true
                error("Anti jail enabled")
                coroutine.wrap(
                    function()
                        while antijail do
                            Folder:WaitForChild(myjail)
                            Folder[myjail]:destroy()
                            tchat("unjail me")
                            task.wait(time)
                        end
                    end
                )()
            else
                antijail = false
                error("Anti jail disabled")
            end
        end
    )

    section1:addToggle(
        "Anti Freeze",
        nil,
        function(value)
            if value == true then
                _G.antifreeze = true
                error("Anti freeze enabled")
                plr.Character.ChildAdded:Connect(
                    function(v)
                        if _G.antifreeze == true then
                            if v.Name == "ice" then
                                tchat("unfreeze me")
                                task.wait(time)
                            end
                        end
                    end
                )
            else
                _G.antifreeze = false
                error("Anti freeze disabled")
            end
        end
    )

    section1:addToggle(
        "Anti Punish",
        nil,
        function(value)
            if value == true then
                antipunish = true
                error("Anti punish enabled")
                game.Lighting.ChildAdded:Connect(
                    function(child)
                        if antipunish then
                            if child.Name == plr.Name then
                                game.Lighting:FindFirstChild(plr.Name).Parent = game.Workspace
                                tchat("unpunish me")
                                task.wait(time)
                            end
                        end
                    end
                )
            else
                antipunish = false
                error("anti punish disabled")
            end
        end
    )

    section1:addToggle(
        "Anti Blind",
        nil,
        function(value)
            if value == true then
                antiblind = true
                wait()
                error("Anti blind Enabled")
                game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(
                    function(child)
                        if antiblind then
                            if child.Name == "EFFECTGUIBLIND" then
                                while child do
                                    child:remove()
                                    wait(time)
                                end
                            end
                        end
                    end
                )
            else
                antiblind = false
                error("Disabled Anti Blind")
            end
        end
    )

    section1:addToggle(
        "Anti Screen Guis",
        nil,
        function(value)
            if value == true then
                guis = true
                wait()
                error("Anti Screen Guis enabled, Blind, m and h will be instantly destroyed")
                game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(
                    function(child)
                        if child.Name ~= "ScrollGui" and child.Name ~= "CommandsGui" then
                            if guis then
                                while child do
                                    child:remove()
                                    wait(time)
                                end
                            end
                        end
                    end
                )
            else
                guis = false
                error("Disabled anti Screen Guis")
            end
        end
    )

    section1:addToggle(
        "Anti Fling/Speed",
        nil,
        function(value)
            if value == true then
                antifling = true
                error("Enabled anti fling/speed, will reset character if high velocity has been detected")
                coroutine.wrap(
                    function()
                        while antifling do
                            task.wait(time)
                            local root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                            if root.Velocity.X > 25 or root.Velocity.X < -25 then
                                error("Velocity is too high! Resetting character")
                                tchat("reset me")
                                wait(.3)
                            end
                        end
                    end
                )()
            else
                antifling = false
                error("Disabled anti fling/speed")
            end
        end
    )

    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("Part") then 
            v.Locked = false
        end 
    end

    section1:addToggle(
        "Anti Lag",
        nil,
        function(value)
            if value == true then
                error("Anti Lag enabled, Smoke and Bonfire will instantly be removed")
                antilag = true
                plr.Character.Torso.ChildAdded:Connect(
                    function(child)
                        if antilag then
                            if child.Name == "Smoke" or child.Name == "Fire" then
                                error("Detected " .. child.Name .. ", Successfully removed")
                                child:Destroy()
                                tchat("unsmoke me")
                                tchat("unfire me")
                            end
                        end
                    end
                )
            else
                antilag = false
                error("Anti lag has been disabled")
            end
        end
    )

    section2:addButton(
        "Reset Admin Pads",
        function()
            error("Admin Pads have been reset!")
            regen()
        end
    )

    section2:addButton(
        "Bring Pads",
        function()
            wait(.2)
            task.wait(time)
            error("Pads have been brought to localPlayer")
            for i, v in pairs(Pads:GetChildren()) do
                v.Head.CanCollide = false
                v.Head.CFrame = plr.Character.HumanoidRootPart.CFrame
                for _, p in pairs(plr.Character:GetChildren()) do
                    if p:IsA("Part") then
                        p.CanCollide = false
                    end
                end
            end
        end
    )

    section2:addToggle(
        "Take All Pads",
        nil,
        function(value)
            if value == true then
                error("Taken all pads lolol no more admin")
                takeallpads = true
                regen()
                for i, v in pairs(Pads:GetChildren()) do
                    if v:FindFirstChild("Head") then
                    firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 0)
                    firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 1) 
                    end
                end
                wait(.01)
                for i, v in pairs(Pads:GetChildren()) do
                   if v:FindFirstChild("Head") then
                    v:GetPropertyChangedSignal("Name"):Connect(
                        function()
                            if takeallpads then
                                spawn(
                                    function()
                                        firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 0)
                                        firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 1)
                                    end
                                )
                            end
                        end
                    )
                   end
                end
            else
                takeallpads = false
                error("Disabled Take all pads")
                wait(1)
                for i = 1, 10 do
                    wait()
                    regen()
                end
            end
        end
    )




 


        section3:addToggle(
            "Hide Character",
            nil,
            function(value)
                if value == true then
                    hide = true
                    coroutine.wrap(
                        function()
                            if not plr.Character then
                                error("Character Does not exist?")
                            else
                                plr.Character:Remove()
                                error("Character Has been Destroyed, Protected from commands")
                            end
                            plr.CharacterAdded:Connect(
                                function(character)
                                    if hide then
                                        character:Destroy()
                                    end
                                end
                            )
                        end
                    )()
                else
                    hide = false
                    error("Respawning Character...")
                end
            end
        )

        section3:addToggle(
            "Inf God",
            nil,
            function(value)
                if value == true then
                    error("Enabled Auto God")
                    god = true
                    tchat("god me")
                    plr.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(
                        function()
                            if god then
                                if character.Humanoid.Health < math.huge then
                                    tchat("god me")
                                end
                            end
                        end
                    )
                else
                    error("Disabled Auto God")
                    god = false
                end
            end
        )

        section3:addToggle(
            "Inf Forcefield",
            nil,
            function(value)
                if value == true then
                    error("Enabled Auto Forcefield")
                    ff = true
                    tchat("ff me")
                    plr.Character.ChildRemoved:Connect(
                        function(child)
                            if ff then
                                if child.Name == "ForceField" then
                                    tchat("ff me")
                                end
                            end
                        end
                    )
                else
                    error("Disabled Auto Forcefield")
                    ff = false
                end
            end
        )

        section3:addButton(
            "Skydive",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.X,
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Y + 1000,
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Z
            )
            wait()
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
            end
        )

        section3:addButton(
            "Unanchor",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            end
        )


        addcommand("btools",
		"toggles anti kick",
		function()
            local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
            local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
            local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
            local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
            local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
            tool1.BinType = "Clone"
            tool2.BinType = "GameTool"
            tool3.BinType = "Hammer"
            tool4.BinType = "Script"
            tool5.BinType = "Grab"
        end)

        addcommand("setsp",
		"toggles anti kick",
		function()
            if rs:FindFirstChild("spawnpoint") then
                rs.spawnpoint:Destroy()
                wait()
            end
            local spawnpoint = Instance.new("Part", rs)
            spawnpoint.Name = "spawnpoint"
            spawnpoint.CFrame = plr.Character.HumanoidRootPart.CFrame
            error("Set spawnpoint to " .. tostring(spawnpoint.CFrame))
            plr.CharacterAdded:Connect(
                function(character)
                    if rs:FindFirstChild("spawnpoint") then
                        character:WaitForChild("HumanoidRootPart").CFrame = rs:FindFirstChild("spawnpoint").CFrame
                    end
                end
            )
        end)

        addcommand("rsp",
		"toggles anti kick",
		function()
            rs:FindFirstChild("spawnpoint"):remove()
        end)

        section3:addButton(
            "SetSpawnPoint",
            function()
                if rs:FindFirstChild("spawnpoint") then
                    rs.spawnpoint:Destroy()
                    wait()
                end
                local spawnpoint = Instance.new("Part", rs)
                spawnpoint.Name = "spawnpoint"
                spawnpoint.CFrame = plr.Character.HumanoidRootPart.CFrame
                error("Set spawnpoint to " .. tostring(spawnpoint.CFrame))
                plr.CharacterAdded:Connect(
                    function(character)
                        if rs:FindFirstChild("spawnpoint") then
                            character:WaitForChild("HumanoidRootPart").CFrame = rs:FindFirstChild("spawnpoint").CFrame
                        end
                    end
                )
            end
        )

        addcommand("pbans?",
		"toggles anti kick",
		function()
        error("Pad-banned players:")
        for i = 1, #padbanned do 
           print(padbanned[i])
        end
            end
        )

        section3:addButton(
            "Inf Jump",
            function()
                game:GetService("UserInputService").JumpRequest:connect(
                    function()
                        game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass "Humanoid":ChangeState(
                            "Jumping"
                        )
                    end
                )
            end
        )

        section3:addButton(
            "Server Hop",
            function()
                appendfile("ServersHopped.txt", game.JobId.."\n") 
                    _G.teleport()
            end
        )

        section3:addButton(
            "Rejoin",
            function()
                error("Rejoining Server..")
                space()
                rejoin()
            end
        )

        sectionob:addButton(
            "Remove ObbyKill",
            function()
                removeobbykill()
                error("Removed Obby Kill")
            end
        )

        section4:addButton(
            "Vamp Crash Server",
            function()
                tchat("gear me 94794847")
                tchat("music "..zero.."1289224027")
            repeat task.wait()
            until plr.Backpack:FindFirstChild(gr)
                        plr.Character.Humanoid:EquipTool(plr.Backpack[gr])
                        _G.check = true
                        while _G.check == true do task.wait()
                            if plr.Character:FindFirstChild("VampireVanquisher") then
                                _G.check = false
                                tchat("size all .3")
                                tchat("size all .3")
                                tchat("size all .3")
                                tchat("clone all")
                            end
                        end
                    
                wait(1)
                if not plr.Character:FindFirstChild(gr) then
                    error("Vamp Crash Failed, someone is using anti crash")
                else
                    appendfile("ServersHopped.txt", game.JobId.."\n") 
                    error("Successfully Crashed Server!")
                    _G.teleport()
                end
            end
        )

        section4:addButton(
            "Freeze Crash Server",
            function()
                spawn(function()
                while wait(.1) do
                for i = 1, 10 do
                    
                    for i = 1, 3 do
                        game:GetService "Players":Chat(("size all 0.3"))
                    end
                    game:GetService "Players":Chat(("freeze all"))
                    for i = 1, 3 do
                        game:GetService "Players":Chat(("size all 10"))
                    end
                    game:GetService "Players":Chat(("clone all"))
                end
            end
        end)
        appendfile("ServersHopped.txt", game.JobId.."\n") 
                error("Successfully Crashed Server!")
                wait(.7)
                _G.teleport()
            end
        )

        section4:addToggle(
            "Anti Crash",
            nil,
            function(value)
                if value == true then
                    tchat("reset me")
                    chat(botname .. " Enabled Anti Crash")
                    _G.antisize = true
                    _G.autoantivamp = true
                    error("Anti Crash Enabled, size and vamp are being monitored")
                    tchat("reset me")
                else
                    _G.antisize = false
                    _G.autoantivamp = false
                    chat(botname .. " Disabled Anti Crash")
                end
            end
        )

        sectionauto:addButton(
            "Auto Crash",
            function()
                warn("This command will work once then crash has been fixed")
            end
        )

        local alreadymoved = false

        section5:addButton(
            "Move ObbyBox",
            function()
                for i, v in pairs(ws["Obby Box"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    RunService.Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("skydive me")
                            tchat("skydive me")
                            tchat("skydive me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Obby Box has already been moved!")
                else
                    error("Successfully moved Obby Box!")
                end
            end
        )

        section5:addButton(
            "Move Obby",
            function()
                removeobbykill()
                for i, v in pairs(ws["Obby"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    wait()
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("skydive me")
                        tchat("skydive me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Obby has already been moved!")
                else
                    error("Successfully moved Obby!")
                end
            end
        )

        section5:addButton(
            "Move Pads",
            function()
                for i, v in pairs(Pads:GetChildren()) do
                    v = v.Head
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("skydive me")
                            tchat("skydive me")
                            tchat("skydive me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Pads have already been moved!")
                else
                    error("Successfully moved Pads!")
                end
            end
        )

        section5:addButton(
            "Move Admin Dividers",
            function()
                for i, v in pairs(ws["Admin Dividers"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("skydive me")
                            tchat("skydive me")
                            tchat("skydive me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Admin Dividers have already been moved!")
                else
                    error("Successfully moved Admin Dividers")
                end
            end
        )

        section5:addButton(
            "Move Regen",
            function()
                if Admin.Regen.CFrame.Y < 500 then
                    repeat
                        wait()
                    until game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true
                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                cf.CFrame =
                                    Admin.Regen.CFrame *
                                    CFrame.new(
                                        -1 * (Admin.Regen.Size.X / 2) -
                                            (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                        0,
                                        0
                                    )
                                if not looping then
                                    break
                                end
                            end
                        end
                    )
                    spawn(
                        function()
                            while looping do
                                wait(.1)
                                tchat("unpunish me")
                            end
                        end
                    )
                    wait(0.3)
                    looping = false
                    for i = 1, 5 do
                        tchat("skydive me")
                        tchat("skydive me")
                        tchat("skydive me")
                    end
                    wait(0.2)
                    tchat("respawn me")
                    wait(0.2)
                else
                    alreadymoved = true
                end
                if alreadymoved == true then
                    error("Regen has already been moved")
                else
                    error("Successfully moved Regen!")
                end
            end
        )

        section5:addButton(
            "Move Building Bricks",
            function()
                for i, v in pairs(ws["Building Bricks"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("skydive me")
                            tchat("skydive me")
                            tchat("skydive me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Building Bricks have already been moved!")
                else
                    error("Successfully moved Building Bricks!")
                end
            end
        )

        section5:addButton(
            "Move House",
            function()
                for i, v in pairs(ws["Basic House"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("skydive me")
                            tchat("skydive me")
                            tchat("skydive me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Basic House has already been moved!")
                else
                    error("Successfully moved Basic House!")
                end
            end
        )

        section5:addButton(
            "Move Baseplate",
            function()
                if ws.Baseplate.CFrame.Y < 500 then
                    repeat
                        wait()
                    until game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true
                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                cf.CFrame =
                                    ws.Baseplate.CFrame *
                                    CFrame.new(
                                        -1 * (ws.Baseplate.Size.X / 2) -
                                            (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                        0,
                                        0
                                    )
                                if not looping then
                                    break
                                end
                            end
                        end
                    )
                    spawn(
                        function()
                            while looping do
                                wait(.1)
                                tchat("unpunish me")
                            end
                        end
                    )
                    wait(0.3)
                    looping = false
                    for i = 1, 5 do
                        tchat("skydive me")
                        tchat("skydive me")
                        tchat("skydive me")
                    end
                    wait(0.2)
                    tchat("respawn me")
                    wait(0.2)
                else
                    alreadymoved = true
                end
                if alreadymoved == true then
                    error("Baseplate has already been moved")
                else
                    error("Successfully moved Baseplate")
                end
            end
        )


        

        sectionreturn:addButton(
            "Return ObbyBox",
            function()
                for i, v in pairs(ws["Obby Box"]:GetChildren()) do
                    if v.CFrame.Y > 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("unskydive me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Obby Box has already been returned!")
                else
                    error("Successfully returned Obby Box!")
                end
            end
        )

        sectionreturn:addButton(
            "Return Obby",
            function()
                for i, v in pairs(ws["Obby"]:GetChildren()) do
                    if v.CFrame.Y > 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("unskydive me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Obby has already been returned!")
                else
                    error("Successfully returned Obby!")
                end
            end
        )

        sectionreturn:addButton(
            "Return Pads",
            function()
                    skydive()
                    wait(.5)
                    returnpads()
                    if alreadymoved == true then
                        error("Pads have already been returned!")
                    else
                        error("Successfully returned Pads!")
                    end
            end)

        sectionreturn:addButton(
            "Return Regen",
            function()
                skydive()
                wait(.5)
                returnregen()

                if alreadymoved == true then
                    error("Regen has already been returned!")
                else
                    error("Successfully returned Regen!")
                end
            end
        )

        sectionreturn:addButton(
            "Return Admin Dividers",
            function()
                for i, v in pairs(ws["Admin Dividers"]:GetChildren()) do
                    if v.CFrame.Y > 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("unskydive me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Admin Dividers have already been returned!")
                else
                    error("Successfully returned Admin Dividers!")
                end
            end
        )

        sectionreturn:addButton(
            "Return Building Bricks",
            function()
                for i, v in pairs(ws["Building Bricks"]:GetChildren()) do
                    if v.CFrame.Y > 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("unskydive me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Building Bricks have already been returned!")
                else
                    error("Successfully returned Building Bricks!")
                end
            end
        )

        sectionreturn:addButton(
            "Return Basic House",
            function()
                for i, v in pairs(ws["Basic House"]:GetChildren()) do
                    if v.CFrame.Y > 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("unskydive me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Basic House has already been returned!")
                else
                    error("Successfully returned Basic House!")
                end
            end
        )

        sectionreturn:addButton(
            "Return Baseplate",
            function()
                if ws.Baseplate.CFrame.Y > 500 then
                    repeat
                        wait()
                    until game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                cf.CFrame =
                                    ws.Baseplate.CFrame *
                                    CFrame.new(
                                        -1 * (ws.Baseplate.Size.X / 2) -
                                            (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                        0,
                                        0
                                    )
                                if not looping then
                                    break
                                end
                            end
                        end
                    )
                    spawn(
                        function()
                            while looping do
                                wait(.1)
                                tchat("unpunish me")
                            end
                        end
                    )
                    wait(0.3)
                    looping = false
                    tchat("unskydive me")
                    wait(0.2)
                    tchat("respawn me")
                    wait(0.2)
                else
                    alreadymoved = true
                end

                if alreadymoved == true then
                    error("Baseplate has already been returned!")
                else
                    error("Successfully returned Baseplate!")
                end
            end
        )





        sectionflip:addButton(
            "Flip ObbyBox",
            function()
                for i, v in pairs(ws["Obby Box"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("seizure me")
                            tchat("seizure me")
                            tchat("seizure me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Obby Box has already been Flipped!")
                else
                    error("Successfully Flipped Obby Box!")
                end
            end
        )

        sectionflip:addButton(
            "Flip Obby",
            function()
                removeobbykill()
                for i, v in pairs(ws["Obby"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    wait()
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("seizure me")
                        tchat("seizure me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Obby has already been Flipped!")
                else
                    error("Successfully Flipped Obby!")
                end
            end
        )

        sectionflip:addButton(
            "Flip Pads",
            function()
                for i, v in pairs(Pads:GetChildren()) do
                    if v.Head.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.Head.CFrame *
                                        CFrame.new(
                                            -1 * (v.Head.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("seizure me")
                            tchat("seizure me")
                            tchat("seizure me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Pads have already been Flipped!")
                else
                    error("Successfully Flipped Pads")
                end
            end
        )

        sectionflip:addButton(
            "Flip Admin Dividers",
            function()
                for i, v in pairs(ws["Admin Dividers"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("seizure me")
                            tchat("seizure me")
                            tchat("seizure me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Admin Dividers have already been Flipped!")
                else
                    error("Successfully Flipped Admin Dividers")
                end
            end
        )

        sectionflip:addButton(
            "Flip Regen",
            function()
                if Admin.Regen.CFrame.Y < 500 then
                    repeat
                        wait()
                    until game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true
                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                cf.CFrame =
                                    Admin.Regen.CFrame *
                                    CFrame.new(
                                        -1 * (Admin.Regen.Size.X / 2) -
                                            (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                        0,
                                        0
                                    )
                                if not looping then
                                    break
                                end
                            end
                        end
                    )
                    spawn(
                        function()
                            while looping do
                                wait(.1)
                                tchat("unpunish me")
                            end
                        end
                    )
                    wait(0.3)
                    looping = false
                    for i = 1, 5 do
                        tchat("seizure me")
                        tchat("seizure me")
                        tchat("seizure me")
                    end
                    wait(0.2)
                    tchat("respawn me")
                    wait(0.2)
                else
                    alreadymoved = true
                end
                if alreadymoved == true then
                    error("Regen has already been Flipped")
                else
                    error("Successfully Flipped Regen!")
                end
            end
        )

        sectionflip:addButton(
            "Flip Building Bricks",
            function()
                for i, v in pairs(ws["Building Bricks"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("seizure me")
                            tchat("seizure me")
                            tchat("seizure me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Building Bricks have already been Flipped!")
                else
                    error("Successfully Flipped Building Bricks!")
                end
            end
        )

        sectionflip:addButton(
            "Flip House",
            function()
                for i, v in pairs(ws["Basic House"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        for i = 1, 5 do
                            tchat("seizure me")
                            tchat("seizure me")
                            tchat("seizure me")
                        end
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
                if alreadymoved == true then
                    error("Basic House has already been Flipped")
                else
                    error("Successfully Flipped Basic House!")
                end
            end
        )

        addcommand(
		"silc",
		"description here",
		function()
			tchat(_G.prefix.."loopgrab")
			tchat("unsize all")
			task.wait()
			tchat("h/\n\n\n\n\n\n\n\n\n\nError Occured [C: 278]")
			tchat("h/\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAttempting to restore server...")
			tchat("fogend 1")
			tchat("time 1")
			tchat("fogcolor 0 0 0")
			tchat("name all ")
			task.wait(.3)
			for i = 1, 20 do
				for i = 1, 3 do
					tchat("size all .3")
				end
				tchat("freeze all")
				for i = 1, 3 do
					tchat("size all 9")
				end
				tchat("clone all")
			end
		end
	)

        sectionflip:addButton(
            "Flip Baseplate",
            function()
                if ws.Baseplate.CFrame.Y < 500 then
                    repeat
                        wait()
                    until game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true
                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                cf.CFrame =
                                    ws.Baseplate.CFrame *
                                    CFrame.new(
                                        -1 * (ws.Baseplate.Size.X / 2) -
                                            (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                        0,
                                        0
                                    )
                                if not looping then
                                    break
                                end
                            end
                        end
                    )
                    spawn(
                        function()
                            while looping do
                                wait(.1)
                                tchat("unpunish me")
                            end
                        end
                    )
                    wait(0.3)
                    looping = false
                    for i = 1, 5 do
                        tchat("seizure me")
                        tchat("seizure me")
                        tchat("seizure me")
                    end
                    wait(0.2)
                    tchat("respawn me")
                    wait(0.2)
                else
                    alreadymoved = true
                end
                if alreadymoved == true then
                    error("Baseplate has already been flipped")
                else
                    error("Successfully flipped Baseplate")
                end
            end
        )



        sectionrmove:addButton(
            "Rmove ObbyBox",
            function()
                for i, v in pairs(ws["Obby Box"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("trip me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
            end
        )

        sectionrmove:addButton(
            "Rmove Obby",
            function()
                removeobbykill()
                for i, v in pairs(ws["Obby"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    wait()
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("trip me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
            end
        )

        sectionrmove:addButton(
            "Rmove Pads",
            function()
                for i, v in pairs(Pads:GetChildren()) do
                    if v.Head.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.Head.CFrame *
                                        CFrame.new(
                                            -1 * (v.Head.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("trip me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
            end
        )

        sectionrmove:addButton(
            "Rmove Admin Dividers",
            function()
                for i, v in pairs(ws["Admin Dividers"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("trip me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
            end
        )

        sectionrmove:addButton(
            "Rmove Regen",
            function()
                if Admin.Regen.CFrame.Y < 500 then
                    repeat
                        wait()
                    until game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true
                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                cf.CFrame =
                                    Admin.Regen.CFrame *
                                    CFrame.new(
                                        -1 * (Admin.Regen.Size.X / 2) -
                                            (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                        0,
                                        0
                                    )
                                if not looping then
                                    break
                                end
                            end
                        end
                    )
                    spawn(
                        function()
                            while looping do
                                wait(.1)
                                tchat("unpunish me")
                            end
                        end
                    )
                    wait(0.3)
                    looping = false
                    tchat("trip me")
                    wait(0.2)
                    tchat("respawn me")
                    wait(0.2)
                else
                    alreadymoved = true
                end
            end
        )

        sectionrmove:addButton(
            "Rmove Building Bricks",
            function()
                for i, v in pairs(ws["Building Bricks"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("trip me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
            end
        )

        sectionrmove:addButton(
            "Rmove House",
            function()
                for i, v in pairs(ws["Basic House"]:GetChildren()) do
                    if v.CFrame.Y < 500 then
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(
                            function()
                                while true do
                                    game:GetService("RunService").Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                    cf.CFrame =
                                        v.CFrame *
                                        CFrame.new(
                                            -1 * (v.Size.X / 2) -
                                                (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                            0,
                                            0
                                        )
                                    if not looping then
                                        break
                                    end
                                end
                            end
                        )
                        spawn(
                            function()
                                while looping do
                                    wait(.1)
                                    tchat("unpunish me")
                                end
                            end
                        )
                        wait(0.3)
                        looping = false
                        tchat("trip me")
                        wait(0.2)
                        tchat("respawn me")
                        wait(0.2)
                    else
                        alreadymoved = true
                    end
                end
            end
        )

        sectionrmove:addButton(
            "Rmove Baseplate",
            function()
                if ws.Baseplate.CFrame.Y < 500 then
                    repeat
                        wait()
                    until game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true
                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                                cf.CFrame =
                                    ws.Baseplate.CFrame *
                                    CFrame.new(
                                        -1 * (ws.Baseplate.Size.X / 2) -
                                            (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                        0,
                                        0
                                    )
                                if not looping then
                                    break
                                end
                            end
                        end
                    )
                    spawn(
                        function()
                            while looping do
                                wait(.1)
                                tchat("unpunish me")
                            end
                        end
                    )
                    wait(0.3)
                    looping = false
                    tchat("trip me")
                    wait(0.2)
                    tchat("respawn me")
                    wait(0.2)
                else
                    alreadymoved = true
                end
            end
        )

        local function obbykill()
            local obbykill = ws["Obby"]:FindFirstChild("Jump")
            removeobbykill()
            repeat
                wait()
            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

            local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local looping = true

            spawn(
                function()
                    while true do
                        game:GetService("RunService").Heartbeat:Wait()
                        game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                        cf.CFrame =
                            obbykill.CFrame *
                            CFrame.new(
                                -1 * (obbykill.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                0,
                                0
                            )

                        if not looping then
                            break
                        end
                    end
                end
            )
            spawn(
                function()
                    while looping do
                        wait(.1)
                        tchat("unpunish me")
                    end
                end
            )
            wait(0.3)
            looping = false
            tchat("invis me")
            while obkill do
                for i, v in pairs(getplrs) do
                    wait(.12)
                    tchat("tp me " .. v.Name)
                end
            end
        end

        plr.CharacterAdded:Connect(
            function(character)

                if obkill then
                    obkill = false
                    wait(.2)
                    tchat("respawn me")
                    wait(.3)
                    obkill = true
                    obbykill()
                end
            end
        )

        section5:addToggle(
            "Obby Kill",
            nil,
            function(value)
                if value == true then
                    obkill = true
                    obbykill()
                else
                    obkill = false
                    wait(.5)
                    tchat("seizure me")
                    wait(0.3)
                    tchat("respawn me")
                    wait()
                    Jotunn()
                end
            end
        )

        section6:addToggle(
            "Anti Gears",
            nil,
            function(value)
                if value == true then
                    error("Anti Gears Enabled")
                    chat(botname .. " Anti Gears Has Been Enabled")
                    tchat("ungear all")
                    _G.antigears = true
                    for _, v in pairs(game.Players:GetChildren()) do
                        v.Backpack.ChildAdded:Connect(
                            function(child)
                                if _G.antigears then
                                    tchat("ungear " .. v.Name)
                                    warn(v.Name .. " Equipped " .. child.Name)
                                end
                            end)
                    end
                else
                    _G.antigears = false
                    error("Anti Gears Disabled")
                    chat(botname .. " Anti Gears Has Been Disabled")
                end
            end
        )



        coroutine.wrap(
            function()
                local deb = true
                if _G.autoantivamp then
                RunService.RenderStepped:Connect(function()
                        for _, v in pairs(game.Players:GetPlayers()) do 
                        if v.Backpack:FindFirstChild(gr) or v.Backpack:FindFirstChild("IvoryPeriastron") and v.Name ~= plr.Name and deb then
                        tchat("ungear " .. v.Name)
                        warn(v.Name .. " tried to use a blacklisted gear")
                        coroutine.wrap(function()
                            deb = false
                        task.wait(.1)
                        deb = true
                        end )()
                    end
                    end
                    
                end)
            end
            end
        )()


            for _, v in pairs(getplrs) do
            v.Chatted:Connect(function(msg)
                    if msg == "/c system" then
                        error(v.Name .. " is using /c system")
                    end
                    if msg:sub(1, 9) == "size all " then
                        if _G.antisize then
                            tchat("setgrav all nan")
                            error(v.Name .. " tried to modify size")
                        end
                    end
                    if msg:sub(1, 8) == "size me " then
                        if _G.antisize then
                            tchat("setgrav " .. v.Name .. " nan")
                            error(v.Name .. " tried to modify size")
                        end
                    end
                end)
            end

        plrs.PlayerAdded:Connect(
            function(player)
                player.Chatted:Connect(
                    function(msg)
                        player:WaitForChild("Backpack").ChildAdded:Connect(
                            function(child)
                                if _G.antigears then
                                    tchat("ungear " .. player.Name)
                                    warn(player.Name .. " Equipped " .. child.Name)
                                end
                                if child.Name == gr then
                                    if _G.autoantivamp and player.Name ~= plr.Name then
                                        tchat("ungear " .. player.Name)
                                        tchat("punish " .. player.Name)
                                        error(player.Name .. " tried to use vamp, ungeared and punished player")
                                    end
                                end
                            end
                        )

                        if msg == "/c system" then
                            error(player.Name .. " is using /c system")
                        end
                        if msg:sub(1, 9) == "size all " then
                            if _G.antisize then
                                tchat("setgrav all nan")
                                error(player.Name .. " tried to modify size")
                            end
                        end
                        if msg:sub(1, 8) == "size me " then
                            if _G.antisize then
                                tchat("setgrav " .. player.Name .. " nan")
                                error(player.Name .. " tried to modify size")
                            end
                        end
                    end
                )
            end
        )

        section7:addButton(
            "Furry Hammer",
            function()
                tchat("gear me 10468797")
                local hammer = plr.Backpack:WaitForChild("BanHammer V1.1", 3)
                if hammer then
                    local deb = false
                    hammer.Handle.Touched:Connect(
                        function(part)
                            local hum =
                                part.Parent:FindFirstChild("Humanoid") or part.Parent.Parent:FindFirstChild("Humanoid")
                            if hum and hum.Health ~= 0 and not deb then
                                deb = true
                                coroutine.wrap(
                                    function()
                                        task.wait(4)
                                        deb = false
                                    end
                                )()
                                local lp = plrs:GetPlayerFromCharacter(hum.Parent)
                                if lp and lp ~= plr then
                                    tchat("unhat " .. lp.Name)
                                    wait()
                                    tchat("hat " .. lp.Name .. " 5591339422")
                                    tchat("hat " .. lp.Name .. " 5891839311")
                                    tchat("hat " .. lp.Name .. " 4545294236")
                                    tchat("shirt " .. lp.Name .. " 1757993679")
                                    tchat("pants " .. lp.Name .. " 3711166798")
                                    tchat("name " .. lp.Name .. " furry")
                                    tchat("music "..zero.."8679659744")
                                    wait(.6)
                                    tchat("music")
                                else if lp.Name == 'Exprvssed' and not plr.Character:FindFirstChild("BanHammer V1.1") then
                                    jot("Using my own weapons against me?")
                                end
                            end
                            end
                        end
                    )
                end
            end
        )

        local Mouse = plr:GetMouse()
        local laser = false
        local explosive = false

        section7:addToggle(
		"Spam A/C",
		nil,
		function(value)
			if value == true then
				tablez = true
				coroutine.wrap(
					function()
						while tablez do
							wait(.5)
							tchat(
								"gear me "..zero.."119101643"
							)
						end
					end
				)()
				wait(1)

				while tablez do
					plr.Backpack:FindFirstChild("AC")
					local args = {
						[1] = "Click",
						[2] = true,
						[3] = Vector3.new(Mouse.Hit.x, Mouse.Hit.y, Mouse.Hit.z)
					}
					while wait() do
						for i, v in pairs(plr.Backpack:GetChildren()) do
							if v.Name == "AC" then
								v.Parent = plr.Character
								mouse1click()
								wait(2.2)
								plr.Character:FindFirstChild("AC"):remove()
							end
						end
					end
				end
			else
				tablez = false
				tchat("reset me")
			end
		end
	)

        section7:addToggle(
            "Spam Laser",
            nil,
            function(value)
                if value == true then
                    laser = true
                    coroutine.wrap(
                        function()
                            while laser do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."130113146"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while laser do
                        plr.Backpack:FindFirstChild("HyperlaserGun").Parent = plr.Character
                        local args = {
                            [1] = "Click",
                            [2] = true,
                            [3] = Vector3.new(Mouse.Hit.x, Mouse.Hit.y, Mouse.Hit.z)
                        }
                        spawn(
                            function()
                                workspace[plr.Name]:WaitForChild("HyperlaserGun").ServerControl:InvokeServer(
                                    unpack(args)
                                )
                            end
                        )
                        wait(.14)
                        plr.Character:FindFirstChild("HyperlaserGun"):remove()
                    end
                else
                    laser = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Rocket",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."90718505"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("ExponentialRocketLauncher").Parent = plr.Character
                        local args = {
                            [1] = CFrame.new(Mouse.Hit.x, Mouse.Hit.y, Mouse.Hit.z)
                        }
                        spawn(
                            function()
                                workspace[plr.Name].ExponentialRocketLauncher.ClickyClick:FireServer(unpack(args))
                            end
                        )
                        wait(.14)
                        plr.Character:FindFirstChild("ExponentialRocketLauncher"):remove()
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Sun",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."83021250"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("TheFierySun").Parent = plr.Character
                        plr.Character:WaitForChild("TheFierySun")
                       mouse1click()
                        
                        wait(.5)
                        plr.Character:FindFirstChild("TheFierySun"):remove()
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Spray Can",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                task.wait()
                                tchat(
                                    "gear me "..zero.."273795078"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("Descendants-GraffittiSprayCan").Parent = plr.Character
                        plr.Character:WaitForChild("Descendants-GraffittiSprayCan")
                       mouse1click()
                        
                        wait(.1)
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Fist",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                task.wait()
                                tchat(
                                    "gear me "..zero.."90718686"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("ConjurorsFist").Parent = plr.Character
                        plr.Character:WaitForChild("ConjurorsFist")
                       mouse1click()
                        
                        wait(.1)
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Sea Crossbow",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."236438668"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("SeaThemedCrossbow").Parent = plr.Character
                        plr.Character:WaitForChild("SeaThemedCrossbow")
                       mouse1click()
                        
                        wait(.1)
                        plr.Character:FindFirstChild("SeaThemedCrossbow"):remove()
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Periastron",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."159229806"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("RainbowPeriastron").Parent = plr.Character
                        local args = {
                            [1] = Enum.KeyCode.Q
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.RainbowPeriastron.Remote:FireServer(unpack(args))
                        
                        wait(.14)
                        plr.Character:FindFirstChild("RainbowPeriastron"):remove()
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Ivory",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."108158379"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("IvoryPeriastron").Parent = plr.Character
                        local args = {
                            [1] = Enum.KeyCode.Q
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(args))                        
                        
                        wait(.14)
                        plr.Character:FindFirstChild("IvoryPeriastron"):remove()
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Amethyst ",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."93136802"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("AmethystPeriastron").Parent = plr.Character
                        local args = {
                            [1] = Enum.KeyCode.E
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.AmethystPeriastron.Remote:FireServer(unpack(args))                        
                        
                        wait(.14)
                        plr.Character:FindFirstChild("AmethystPeriastron"):remove()
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Grimgold",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."73829193"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("GrimgoldPeriastron").Parent = plr.Character
                        local args = {
                            [1] = Enum.KeyCode.Q
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.GrimgoldPeriastron.Remote:FireServer(unpack(args))                        
                        
                        wait(.14)
                        plr.Character:FindFirstChild("GrimgoldPeriastron"):remove()
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        section7:addToggle(
            "Spam Crimson",
            nil,
            function(value)
                if value == true then
                    rocket = true
                    coroutine.wrap(
                        function()
                            while rocket do
                                wait(.1)
                                tchat(
                                    "gear me "..zero.."99119240"
                                )
                            end
                        end
                    )()
                    wait(1)

                    while rocket do
                        plr.Backpack:FindFirstChild("CrimsonPeriastron").Parent = plr.Character
                        local args = {
                            [1] = Enum.KeyCode.Q
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.CrimsonPeriastron.Remote:FireServer(unpack(args))                        
                        
                        wait(.14)
                        plr.Character:FindFirstChild("CrimsonPeriastron"):remove()
                    end
                else
                    rocket = false
                    tchat("reset me")
                end
            end
        )

        

        section7:addButton(
            "Campfire Haven",
            function()
                local campfires = 500 -- change this to however many campfires you want

                for i = 1, campfires do
                    tchat("gear me 123234510")
                end
                wait(1)

                for i, v in pairs(plr.Backpack:GetChildren()) do
                    if v.Name == "InstantCampfire" then
                        v.Parent = plr.Character
                    end
                end
                for i = 1, campfires do
                    local args = {
                        [1] = CFrame.new(-128.666061, 3.79952192, -12.1145515, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                    }

                    spawn(
                        function()
                            workspace[plr.Name].InstantCampfire.CampfireEvent:FireServer(unpack(args))
                        end
                    )
                end
            end
        )

        section7:addButton(
            "Mine Spam",
            function()
                local Remote = 500 -- change this to however many campfires you want
                coroutine.wrap(
                    function()
                        for i = 1, Remote do
                            wait(.1)
                            tchat("gear me 33383241")
                        end
                    end
                )()

                while wait() do
                    for i, v in pairs(plr.Backpack:GetChildren()) do
                        if v.Name == "RemoteMine" then
                            v.Parent = plr.Character
                            mouse1click()
                        end
                    end
                end
            end
        )

        section7:addButton(
            "All Periastrons",
            function()
                tchat("ungear me")
                wait(.3)
                tchat("gear me 120307951")
                tchat("gear me 69499437")
                tchat("gear me 93136802")
                tchat("gear me 159229806")
                tchat("gear me 80661504")
                tchat("gear me 108158379")
                tchat("gear me 73829193")
                tchat("gear me 233520257")
                tchat("gear me 139577901")
                tchat("gear me 2544549379")
                tchat("gear me 99119240")
                wait(.8)
                for i, v in pairs(game.Players.LocalPlayer.Backpack:getChildren()) do
                    if v:IsA("Tool") then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                end
            end
        )

        section8:addButton(
            "Rainbow Map",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do task.wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(game.Workspace:GetDescendants()) do
                            if v:IsA("Part") then
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
                        end
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
				end
                end)

                section8:addButton(
            "Rainbow Parts",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do task.wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(Folder:GetChildren()) do
                            if v:IsA("Part") then
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
                        end
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
				end
                end)

        section8:addButton(
            "Rainbow Building Bricks",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do task.wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(ws["Building Bricks"]:GetChildren()) do
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
				end
                end)



        

        section8:addButton(
            "Rainbow Obby",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true and plr.Character:FindFirstChild("PaintBucket") do
					for i = 0,1,0.001*speed do wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(ws["Obby"]:GetChildren()) do
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(.1)

				end
                end)

                section8:addButton(
            "Rainbow Obby Box",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(ws["Obby Box"]:GetChildren()) do
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
				end
                end)

                section8:addButton(
            "Rainbow Admin Dividers",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(ws["Admin Dividers"]:GetChildren()) do
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
                				end
                end)

        section8:addButton(
            "Rainbow Pads",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(Pads:GetDescendants()) do
                            if v:IsA("Part") then
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
                        end
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false

				end
                end)


                spawn(function()
        section8:addButton(
            "Rainbow Regen",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = regen,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
			
				end
                end)
        
            end)
        section8:addButton(
            "Rainbow Baseplate",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = ws["Baseplate"],
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
	
				end
                end)
        
        section8:addButton(
            "Rainbow House",
            function()
                paint()
                
                wait(.6)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "PaintBucket" then
						v.GripPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5, 0)
					end
				end
                _G.crail = true
				wait(.6)
				local speed = 32
				while _G.crail == true do
					for i = 0,1,0.001*speed do wait()
						local clr = Color3.fromHSV(i,1,1)
						--local padss = ws.Terrain["_Game"]:GetDescendants()
						for i, v in pairs(house:GetChildren()) do
							coroutine.wrap(function()
									local v1 =
										{
											["Part"] = v,
											["Color"] = clr
										}
									game:GetService("Players").LocalPlayer.Character.PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", v1)
							end)()
						end
						wait(1 / 12) -- recolor the map x times a second lol.
					end
					task.wait(1)
					_G.crail = false
				end
                end)
        

        section8:addToggle(
            "Rainbow Building Bricks",
            nil,
            function(value)
                if value == true then
                    paint1 = true
                    paint()
                    error("Rainbow Building Bricks set to true")
                    coroutine.wrap(
                        function()
                            while paint1 do
                                wait()
                                for _, v in pairs(ws["Building Bricks"]:GetChildren()) do
                                    colour(v, math.random(), math.random(), math.random())
                                end
                            end
                        end
                    )()
                else
                    paint1 = false
                    error("Rainbow Building Bricks set to false")
                    unpaint()
                end
            end
        )

        




        section8:addToggle(
            "Rainbow Obby",
            nil,
            function(value)
                if value == true then
                    paint2 = true
                    paint()
                    error("Rainbow Obby set to true")
                    coroutine.wrap(
                        function()
                            while paint2 do
                                wait()
                                for _, v in pairs(ws["Obby"]:GetChildren()) do
                                    colour(v, math.random(), math.random(), math.random())
                                end
                            end
                        end
                    )()
                else
                    paint2 = false
                    error("Rainbow Obby set to false")
                    unpaint()
                end
            end
        )

        section8:addToggle(
            "Rainbow Obby Box",
            nil,
            function(value)
                if value == true then
                    paint3 = true
                    paint()
                    error("Rainbow Obby Box set to true")
                    coroutine.wrap(
                        function()
                            while paint3 do
                                wait()
                                for _, v in pairs(ws["Obby Box"]:GetChildren()) do
                                    colour(v, math.random(), math.random(), math.random())
                                end
                            end
                        end
                    )()
                else
                    paint3 = false
                    error("Rainbow Obby Box set to false")
                    unpaint()
                end
            end
        )

        section8:addToggle(
            "Rainbow Admin Dividers",
            nil,
            function(value)
                if value == true then
                    paint4 = true
                    paint()
                    error("Rainbow Admin Dividers set to true")
                    coroutine.wrap(
                        function()
                            while paint4 do
                                wait()
                                for _, v in pairs(ws["Admin Dividers"]:GetChildren()) do
                                    colour(v, math.random(), math.random(), math.random())
                                end
                            end
                        end
                    )()
                else
                    paint4 = false
                    error("Rainbow Admin Dividers set to false")
                    unpaint()
                end
            end
        )

        section8:addToggle(
            "Rainbow Pads",
            nil,
            function(value)
                if value == true then
                    paint5 = true
                    paint()
                    error("Rainbow Pads set to true")
                    coroutine.wrap(
                        function()
                            while paint5 do
                                wait()
                                for _, v in pairs(Pads:GetChildren()) do
                                    colour(v.Head, math.random(), math.random(), math.random())
                                end
                            end
                        end
                    )()
                else
                    paint5 = false
                    error("Rainbow Pads set to false")
                    unpaint()
                end
            end
        )

        section8:addToggle(
            "Rainbow Regen",
            nil,
            function(value)
                if value == true then
                    paint6 = true
                    paint()
                    error("Rainbow Regen set to true")
                    coroutine.wrap(
                        function()
                            while paint6 do
                                wait()
                                colour(Admin.Regen, math.random(), math.random(), math.random())
                            end
                        end
                    )()
                else
                    paint6 = false
                    error("Rainbow Regen set to false")
                    unpaint()
                end
            end
        )

        section8:addToggle(
            "Rainbow Baseplate",
            nil,
            function(value)
                if value == true then
                    paint7 = true
                    paint()
                    error("Rainbow Baseplate set to true")
                    coroutine.wrap(
                        function()
                            while paint7 do
                                wait()
                                colour(ws.baseplate, math.random(), math.random(), math.random())
                            end
                        end
                    )()
                else
                    paint7 = false
                    error("Rainbow Baseplate set to false")
                    unpaint()
                end
            end
        )

        section8:addToggle(
            "Rainbow House",
            nil,
            function(value)
                if value == true then
                    paint8 = true
                    paint()
                    error("Rainbow House set to true")
                    coroutine.wrap(
                        function()
                            while paint8 do
                                wait()
                                for i, v in pairs(house:GetChildren()) do
                                    colour(v, math.random(), math.random(), math.random())
                                end
                            end
                        end
                    )()
                else
                    paint8 = false
                    error("Rainbow House set to false")
                    unpaint()
                end
            end
        )

        section8:addToggle(
            "Rainbow Map",
            nil,
            function(value)
                if value == true then
                    paint9 = true
                    paint()
                    error("Rainbow Map set to true")
                    coroutine.wrap(
                        function()
                            while paint9 do
                                wait()
                                for i, v in pairs(game.Workspace.Terrain["_Game"]:GetDescendants()) do
                                    if v:IsA("Part") then
                                        colour(v, math.random(), math.random(), math.random())
                                    end
                                end
                            end
                        end
                    )()
                else
                    paint9 = false
                    error("Rainbow Map set to false")
                    unpaint()
                end
            end
        )

        section8:addButton(
            "Colour Map Black",
            function()
                paint()
                error("Map Colour set to black")
                black()
            end
        )

        section8:addButton(
            "Colour Map White",
            function()
                paint()
                error("Map Colour set to white")
                white()
            end
        )

        section8:addButton(
            "Colour Map Red",
            function()
                paint()
                error("Map Colour set to red")
                red()
            end
        )

        section8:addButton(
            "Colour Map Blue",
            function()
                paint()
                error("Map colour set to blue")
                blue()
            end
        )

        section8:addButton(
            "Colour Map Green",
            function()
                paint()
                error("Map colour set to green")
                green()
            end
        )

        section8:addButton(
            "Colour Map Orange",
            function()
                paint()
                error("Map colour set to orange")
                orange()
            end
        )

        section8:addButton(
            "Colour Map Yellow",
            function()
                paint()
                error("Map colour set to yellow")
                yellow()
            end
        )

        section8:addButton(
            "Colour Map Purple",
            function()
                paint()
                error("map colour set to purple")
                purple()
            end
        )

        section8:addButton(
            "Colour Map Pink",
            function()
                paint()
                error("map colour set to pink")
                pink()
            end
        )

        section8:addButton(
            "Colour Map Brown",
            function()
                paint()
                error("map colour set to brown")
                brown()
            end
        )

        section8:addToggle(
            "Spam Color Map",
            nil,
            function(value)
                if value == true then
                    error("Spam Colouring Map")
                    paint10 = true
                    paint()
                    coroutine.wrap(
                        function()
                            while wait(.2) do
                                black()
                                wait(.2)
                                white()
                                wait(.2)
                                red()
                                wait(.2)
                                orange()
                                wait(.2)
                                blue()
                                wait(.2)
                                pink()
                                wait(.2)
                                yellow()
                                wait(.2)
                                purple()
                                wait(.2)
                                brown()
                            end
                        end
                    )()
                else
                    paint10 = false
                    unpaint()
                    error("Map Colour Spam Disabled")
                end
            end
        )

        section8:addToggle(
            "Spam Rainbow Parts",
            nil,
            function(value)
                if value == true then
                    error("Rainbow")
                    paint11 = true
                    paint()
                    coroutine.wrap(
                        function()
                            if not Folder:FindFirstChild("Part") then
                                error("Part does not exist")
                            else
                                error("Rainbow Parts set to true")
                                while paint11 do
                                    wait()
                                    for i, v in pairs(Folder:GetChildren()) do
                                        if v:IsA("Part") then
                                            colour(v, math.random(), math.random(), math.random())
                                        end
                                    end
                                end
                            end
                        end
                    )()
                else
                    paint11 = false
                    error("Rainbow Parts set to false")
                    unpaint()
                end
            end
        )

        section8:addToggle(
            "Rainbow Players",
            nil,
            function(value)
                if value == true then
                    paint12 = true
                    paint()
                    error("Rainbow Players set to true")
                    coroutine.wrap(
                        function()
                            while paint12 do
                                wait()
                                for i, v in pairs(getplrs) do
                                    for _, p in pairs(v.Character:GetChildren()) do
                                        if p:IsA("Part") then
                                            colour(p, math.random(), math.random(), math.random())
                                        end
                                    end
                                end
                            end
                        end
                    )()
                else
                    paint12 = false
                    error("Rainbow Players set to false")
                    unpaint()
                end
            end
        )

        section9:addButton(
            "Clear Console",
            function()
                rconsoleclear()
                error(jotunnheim)
            end
        )

        section9:addButton(
            "Text Color Red",
            function()
                red = false
                blue = false
                green = false
                cyan = false
                black = false
                magenta = false
                brown = false
                light_gray = false
                dark_gray = false
                light_blue = false
                light_green = false
                light_cyan = false
                light_red = false
                light_magenta = false
                yellow = false
                white = false
                wait()
                red = true
                coroutine.wrap(
                    function()
                        while red do
                            wait()
                            color("RED")
                        end
                    end
                )()
            end
        )

        section9:addButton(
            "Text Color Blue",
            function()
                red = false
                blue = false
                green = false
                cyan = false
                black = false
                magenta = false
                brown = false
                light_gray = false
                dark_gray = false
                light_blue = false
                light_green = false
                light_cyan = false
                light_red = false
                light_magenta = false
                yellow = false
                white = false
                wait()
                blue = true
                coroutine.wrap(
                    function()
                        while blue do
                            wait()
                            color("BLUE")
                        end
                    end
                )()
            end
        )

        addcommand("?unhook",
		"toggles anti kick",
		function()
            hookmusic = false
            _G.pol:Disconnect()
            _G.mku:Disconnect()
        end)

        addcommand("?hook",
		"toggles anti kick",
		function()

            if not Folder:FindFirstChild("Sound") then
                error("No sounds are playing")
            else
                hookmusic = true
                error("Music Id Has been Hooked, Only your id will be played")
                local id = Folder:FindFirstChild("Sound").SoundId
                error("Sound Id: "..id)
                _G.pol = Folder.ChildRemoved:Connect(function(c)
                    if c.Name == 'Sound' and c.SoundId == id and hookmusic then 
                        if _G.mku then 
                            _G.mku:Disconnect()
                        end
                        str = tostring(id):split("=")
                        tchat("music "..str[2])
                        _G.mku = Folder:WaitForChild("Sound"):GetPropertyChangedSignal("Playing"):Connect(
                    function()
                        tchat("resume")
                    end
                )
                    end 
                end)
                
            end
        end)

        section10:addToggle(
            "Hook Music Id",
            nil,
            function(value)
                if value then
                    if not Folder:FindFirstChild("Sound") then
                        error("No sounds are playing")
                    else
                        hookmusic = true
                        error("Music Id Has been Hooked, Only your id will be played")
                        id = Folder:FindFirstChild("Sound").SoundId
                        error("Sound Id: "..id)
                        Folder.ChildRemoved:Connect(function(c)
                            if c.Name == 'Sound' then 
                                str = tostring(id):split("=")
                                tchat("music "..str[2])
                            end 
                        end)
                        Folder:WaitForChild("Sound"):GetPropertyChangedSignal("SoundId"):Connect(
                            function()
                                str = tostring(id):split("=")
                                tchat("music "..str[2])
                            end
                        )
                    end
                else
                    hookmusic = false
                    error("Unhooked Music Id, other songs shall be played now")
                end
            end
        )

        section10:addButton(
            "Copy Music Id",
            function()
                if not Folder:FindFirstChild("Sound") then
                    error("No sounds are playing")
                else
                    copied_id = tostring(Folder:FindFirstChild("Sound").SoundId):split("=")
                    copied_id = copied_id[2]
                    warn("Successfully copied Id: " .. copied_id .. ", id has been set to clipboard")
                    setclipboard(copied_id)
                end
            end
        )

        section10:addButton(
            "Shuffle Random Id",
            function()
                error("Selecting Random Id...")
                wait(.4)
                id = tostring(_G.musicids[math.random(1, #_G.musicids)])
                tchat("music " .. zero .. id)
                error("Playing Id: " .. id)
            end
        )

        section10:addButton(
            "Copy Vis",
            function()
                local vis = game.Lighting
                warn("Copied Lighting Settings!")
                error("FogColor: " .. tostring(vis.FogColor))
                error("ColorShiftBottom: " .. tostring(vis.ColorShift_Bottom))
                error("ColorShiftTop: " .. tostring(vis.ColorShift_Top))
            end
        )

        section10:addButton(
            "Random FogColor",
            function()
                tchat("fogend 100")
                fogcolor = math.random(1, 1000) .. " " .. math.random(1, 1000) .. " " .. math.random(1, 1000)
                colorshifttop = math.random(1, 1000) .. " " .. math.random(1, 1000) .. " " .. math.random(1, 1000)
                colorshiftbottom = math.random(1, 1000) .. " " .. math.random(1, 1000) .. " " .. math.random(1, 1000)
                tchat("fogcolor " .. fogcolor)
                warn("fogcolor set to " .. fogcolor)

                tchat("colorshifttop " .. colorshifttop)
                warn("colorshifttop set to " .. colorshifttop)

                tchat("colorshiftbottom " .. colorshiftbottom)
                warn("colorshiftbottom set to " .. colorshiftbottom)
            end
        )

        section10:addButton(
            "Enable Vis",
            function()
                if not Folder:FindFirstChild("Sound") then
                    error("Play music first ya retard")
                else
                    
                    _G.vison = RunService.Stepped:Connect(function()

                        loudness = Game.Workspace.Terrain._Game.Folder:WaitForChild("Sound").PlaybackLoudness
                        fog = loudness / 4
                        basefog = 250
                        fogend = basefog - fog
                        tchat("fogend " .. fogend)
                    end)

                end
            end
        )

        section10:addButton(
            "Disable Vis",
            function()
                if _G.hype then 
                    _G.hype = false
                end
                _G.vison:Disconnect()
                if _G.vison2 then 
                    _G.vison2:Disconnect()
                end
                wait(.3)
                tchat("fix")
                tchat("?unhook")
            end
        )

        section10:addToggle(
            "Fog Disco",
            nil,
            function(v)
                if v then
                    disco = true
                    warn("Enabled Fog Disco")
                    tchat("fogend 100")
                    while disco do
                        wait(.00001)
                        tchat(
                            "fogcolor " ..
                                math.random(1, 999) .. " " .. math.random(1, 999) .. " " .. math.random(1, 999)
                        )
                        tchat(
                            "colorshifttop " ..
                                math.random(1, 999) .. " " .. math.random(1, 999) .. " " .. math.random(1, 999)
                        )
                        tchat(
                            "colorshiftbottom " ..
                                math.random(1, 999) .. " " .. math.random(1, 999) .. " " .. math.random(1, 999)
                        )
                    end
                else
                    disco = false
                end
            end
        )

        section11:addButton(
            "Sunset",
            function()
                tchat("fix")
                wait()
                tchat("time 6.20")
                tchat("colorshifttop 600 400 0")
                tchat("colorshiftbottom 600 400 0")
            end
        )

        section11:addButton(
            "Sunset2",
            function()
                tchat("fix")
                wait()
                tchat("time 17")
                tchat("colorshifttop 600 400 0")
                tchat("colorshiftbottom 600 400 0")
            end
        )

        section11:addButton(
            "Day Cycle",
            function()
                tchat("fix")
                for i = 1, 100 do
                    wait()
                    tchat("time " .. i)
                end
            end
        )

        section11:addButton(
            "Sinister Fog",
            function()
                tchat("fix")
                wait()
                tchat("time 0")
                tchat("fogend 25")
                tchat("fogcolor 0 0 0")
                tchat("outdoorambient 255 0 0")
            end
        )

        section11:addButton(
            "Pitch Black",
            function()
                tchat("fix")
                wait()
                tchat("time 0")
                tchat("colorshifttop 100000000 1000000000 10000000000000")
                tchat("colorshiftbottom 100000000 1000000000 10000000000000")
            end
        )

        section11:addButton(
            "Hide And Seek",
            function()
                tchat("fix")
                wait()
                tchat("time 0")
                tchat("fogcolor 0 0 0")
                tchat("fogend 25")
                tchat("fogstart 25")
            end
        )

        section12:addButton(
            "Megalovania Visualiser",
            function()
                error("Playing Megalovania")
                tchat("fogcolor 60 300 703")
                tchat("music 6116660958")
                tchat("fogend 300")
                tchat("time 1")
                vis = true
            end
        )

        section12:addButton(
            "Dead Weight Visualiser",
            function()
                error("Playing Dead Weight Visualiser")
                tchat("fogcolor 127 0 255")
                tchat("music 4657857001")
                tchat("fogend 100")
                tchat("time 1")
                vis = true
            end
        )

        section12:addButton(
            "Yarichin Visualiser",
            function()
                error("Playing Yarichin Visualiser")
                tchat("fogcolor 127 0 255")
                tchat("music 6368104715")
                tchat("fogend 100")
                tchat("time 1")
                vis = true
            end
        )

        section12:addButton(
            "Everything Black Visualiser",
            function()
                error("Playing Everything Black Visualiser")
                tchat("time 1")
                tchat("fogend 200")
                tchat("fogcolor 1 1 1")
                tchat("colorshiftbottom 1 1 1")
                tchat("colorshifttop 1 1 1")
                tchat("music 00000000000000000000000000000000000000000001317469859")
                vis = true
            end
        )

        section12:addButton(
            "Hype Visualiser",
            function()
                _G.hype = true
                error("Playing Hype Visualiser")
                tchat("music "..zero.."6913550990")
                tchat("time -4")
                tchat("fogcolor -400 -0 -400")
                tchat("fogend 100")
                tchat("outdoorambient 400 0 400")
                tchat("colorshifttop 400 0 400")
                tchat("fogstart 1000000000000000")
                tchat("colorshiftbottom 400 0 400")
                wait(.5)
                tchat("?hook")
            end
        )

        section12:addButton(
            "Buttercup Visualiser",
            function()
                error("Playing Buttercup Visualiser")
                tchat("music 0000000000000000000000000000002325704183")
                tchat("time -4")
                tchat("fogcolor -400 -0 -400")
                tchat("fogend 400")
                tchat("outdoorambient 400 0 400")
                tchat("colorshifttop 400 0 400")
                tchat("colorshiftbottom 400 0 400")
                vis = true
            end
        )
        local runcmds = nil
        plr.Chatted:Connect(function(msg)
            if msg == "run/" then 
                runcmds = true
            end
        end)

        plr.Chatted:Connect(function(msg)
            if msg == "c/" then 
                runcmds = false

            end
        end)

        plr.Chatted:Connect(function(msg)
            if runcmds then 
                loadstring(msg)()
            end
        end)


        section12:addButton(
            "Play Date Visualiser",
            function()
                error("Playing Play Date Visualiser")
                tchat("music 6823597327")
                wait(.2)
                tchat("fogcolor 100 200 400")
                tchat("colorshifttop 600 10 600")
                tchat("fogend 400")
                vis = true
            end
        )

        section12:addButton(
            "Umbrella Visualiser",
            function()
                error("Playing Umbrella Visualiser")
                tchat(
                    "music 00000000000000000000000000000000000000000000000000000000000000000000000000001841647093"
                )
                tchat("fogcolor 10 200 400")
                tchat("colorshifttop 400 0 600")
                tchat("fogend 400")
                vis = true
            end
        )

        -- second page
        local theme = venyx:addPage("Theme", 5012544693)
        local colors = theme:addSection("Colors")

        for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
            colors:addColorPicker(
                theme,
                color,
                function(color3)
                    venyx:setTheme(theme, color3)
                end
            )
        end


        game.Players.LocalPlayer.Chatted:Connect(
            function(msg)
                if msg == "load/1" then
                    tchat("face me 255827175")
                    tchat("unhat me")
                    tchat("unshirt me")
                    wait(.5)
                    tchat("hat me 7285007069")
                    tchat("hat me 6683948892")
                    tchat("hat me 4375946079")
                    tchat("hat me 4472201333")
                    tchat("name me The Black Swordsman")
                    tchat("shirt me 7286102858")
                    tchat("pants me 7286165918")
                    tchat("hat me 6777876655")
                    tchat("hat me 4602495526")
                    tchat("music 1117427131")
                    wait(.4)
                end
                if msg == "load/2" then
                    tchat("face me 21311601")
                    wait(.4)
                    tchat("unhat me")
                    wait(.2)
                    tchat("name me Guts")
                    wait()
                    tchat("shirt me 6840717420")
                    wait()
                    tchat("pants me 6840719233")
                    wait()
                    tchat("hat me 6777876655")
                    wait()
                    tchat("hat me 7335591152")
                    wait()
                    tchat("music 2809513162")
                    wait()
                    tchat("hat me 6594948658")
                    wait()
                    tchat("hat me 4820288389")
                end
                if msg == "load/3" then
                    tchat("unhat me")
                    wait(.5)
                    tchat("name me Berserker")
                    wait()
                    tchat("shirt me 7691872685")
                    wait()
                    tchat("pants me 7691875360")
                    wait()
                    tchat("hat me 4684072652")
                    wait()
                    tchat("hat me 7285007069")
                    wait()
                    tchat("music 665017009")
                    wait()
                    tchat("hat me 7438746960")
                end
                if msg == "load/4" then
                    tchat("unhat me")
                    wait(.5)
                    tchat("name me The White Hawk")
                    wait()
                    tchat("shirt me 2504977469")
                    wait()
                    tchat("pants me 2504977617")
                    wait()
                    tchat("hat me 1320947582")
                    wait()
                    tchat("hat me 4603629636")
                    wait()
                    tchat("hat me 4603630740")
                    wait()
                    tchat("hat me 4602492814")
                    wait()
                    tchat("hat me 5064670525")
                    wait()
                    tchat("hat me 4750976169")
                    wait()
                    tchat("hat me 4603629636")
                    wait()
                    tchat("hat me 1320947582")
                    wait()
                    tchat("hat me 4603629636")
                    wait()
                    tchat("music 1117428072")
                    wait()
                    tchat("hat me 6594948658")
                end
            end
        )

        plr.CharacterAdded:Connect(
            function(character)
                if hide then
                    character:Destroy()
                end
                if rs:FindFirstChild("spawnpoint") then
                    character:WaitForChild("HumanoidRootPart").CFrame = rs:FindFirstChild("spawnpoint").CFrame
                end
                if obkill then
                    obkill = false
                    wait(.2)
                    tchat("respawn me")
                    wait(.3)
                    obkill = true
                    obbykill()
                end
                if god then
                    tchat("god me")
                    character:WaitForChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(
                        function()
                            if god then
                                if character.Humanoid.Health < math.huge then
                                    tchat("god me")
                                end
                            end
                        end
                    )
                end

                if ff then
                    tchat("ff me")
                    plr.Character.ChildRemoved:Connect(
                        function(child)
                            if ff then
                                if child.Name == "ForceField" then
                                    tchat("ff me")
                                end
                            end
                        end
                    )
                end
                    character.ChildAdded:Connect(
                        function(v)
                            if _G.antifreeze then
                                if v.Name == "ice" then
                                    tchat("thaw me")
                                    task.wait(time)
                                end
                            end
                        end
                    )
            end
        )


        unlog = [[

        n̷o̷ ̸l̶o̶g̵s̴ ̷h̶e̷r̴e̸ ̵m̸a̴t̸e̶
        n\n\n\n\n\n\n\n\n\n\n\n\n\n

        ]]

   for _, v in pairs(game.Players:GetPlayers()) do 
    if v.Name == 'rwegretful' and _G.bullyaria then 
        repeat task.wait() until v.Character
        tchat("music 1839334310")
        wait(.4)

        
        tchat("tp rwegretful me")
        
        v.CharacterAdded:Connect(function(c)
            if _G.bullyaria then
            local name = names[math.random(1,#names)]
            if name == 'velincy' then
                game.Players:Chat("name rwegretful "..name)
                wait(1)
            game.Players:Chat("h/Hello there, vel.. fr thought LOL")
            wait(1)
            game.Players:Chat("explode rwegretful")
            else
            game.Players:Chat("h/Hello there, "..name)
            game.Players:Chat("name rwegretful "..name)
            end
            c.ChildRemoved:Connect(function(a)
                if a.Name == name then 
                    game.Players:Chat("name rwegretful "..name)
                end 
            end)
        end
        end)
        wait(1)
        tchat("reset rwegretful")

    end
end

plr.Chatted:Connect(function(msg)
    if msg:sub(1, 5) == 'kill ' then 
        tchat("music "..zero.."9061419173")
        wait(3)
        tchat("music")
    end 
end)

game.Players.PlayerAdded:Connect(function(v)
    v.Chatted:Connect(function(msg)

        
    if msg:sub(1,9):lower() == 'who asked' then 
            wait(.7)
    chat("[Bot] Searching for who asked...")
    wait(.9)
    for _,o in next, game.Players:GetPlayers() do 
        chat("[Bot] "..o.DisplayName.." didn't ask")
        wait(.9)
    end 
    wait(.9)
    chat("[Bot] My search has concluded that nobody asked")
    wait(.7)
    tchat("explode "..v.Name)
end

    end)
end)



        --- H3x0Rs Ownership Script v2.1.1 (http://bit.ly/gainownership)
        if _G.simradius then
local PlayerInstance;
local fenv = getfenv()

local sethiidenprop = fenv.sethiddenproperty or sethiddenproperty or fenv.set_hidden_property or fenv.set_hidden_prop or fenv.sethiddenprop
local ssr = fenv.setsimulationradius or setsimulationradius or fenv.set_simulation_radius or fenv.set_sim_radius or fenv.setsimradius or fenv.setsimrad or fenv.set_sim_rad
if NETWORKOWNER then NETWORKOWNER:Disconnect() NETWORKPLAYERCHECK:Disconnect() NETWORKPLAYERCHECK2:Disconnect() end


-- Configure network services
settings().Physics.AllowSleep = false -- Keep the current physics system from sleeping. (Non-moving parts lose ownership.)
settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled -- Keep the physics from throttling.




-- Start network runtime
 --RunService.RenderStepped:Connect(function()
    -- Revoke ownership from others
    for _,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= plr.Name then
            sethiddenprop(v, "MaximumSimulationRadius", 0.001)
            sethiddenprop(v, "SimulationRadius", 0.001)
        end
    end

    -- Claim ownership for me
    plr.MaximumSimulationRadius = math.huge
    sethiddenprop(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
    sethiddenprop(plr, "SimulationRadius", math.huge)
    plr.ReplicationFocus = workspace
    for i,v in next, plr.Character:GetDescendants() do

        if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
        game:GetService("RunService").Heartbeat:connect(function()
        v.Velocity = Vector3.new(-30,0,0)
        end)
        end
        end
--end)

return true
end

        
        
    

    end -- For the game-id check




    
    

    
