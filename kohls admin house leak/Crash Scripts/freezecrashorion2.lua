






-- Made By Nexxor
-- v9.0
--   ____  _____  _____ ____  _   _ 
--  / __ \|  __ \|_   _/ __ \| \ | |
-- | |  | | |__) | | || |  | |  \| |
-- | |  | |  _  /  | || |  | |     |
-- | |__| | | \ \ _| || |__| | |\  |
--  \____/|_|  \_\_____\____/|_| \_| 
wait(2) 
local settings = {
    musicid = ""
}
function loadsettings()
    if not isfile("orion settings.json") then
        rconsoleerr("Settings File Not Found! Redirecting To Settings Saver...")
        savesettings()
    else
        local http = game:GetService("HttpService")
        settings = http:JSONDecode(readfile("orion settings.json"))
    end
end
function savesettings()
    local http = game:GetService("HttpService")
    rconsoleprint("\n Enter Music Id: ")
    local id = rconsoleinput()
    local settings = {
        musicid = id
    }
    local json = http:JSONEncode(settings)
    writefile("orion settings.json", json)
    rconsoleprint("\n Settings Saved Please Rejoin To Start Crashing!")
    return rconsoleprint("\n Settings Saved Please Rejoin To Start Crashing!")
end
loadsettings()
function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
function cmd(i) game.Players:Chat(i) end
-- re function
local crashfile = isfile("NBC Servers Crashed.txt")
if crashfile == false then
    writefile("NBC Servers Crashed.txt", "NBC Crash File")
end
local bccrashfile = isfile("BC Servers Crashed.txt")
if bccrashfile == false then
    writefile("BC Servers Crashed.txt", "BC Crash File")
end

local countfile = isfile("AmmountCrashed.txt")
if countfile == false then
    writefile("AmmountCrashed.txt", "0")
end
local bccountfile = isfile("BC AmmountCrashed.txt")
if bccountfile == false then
    writefile("BC AmmountCrashed.txt", "0")
end

function updatename()
    spawn(function()
    local nbccrash = readfile("AmmountCrashed.txt")
    local bccrash = readfile("BC AmmountCrashed.txt")
    rconsolename("Orion v9.0 NBC Servers Crashed: " ..nbccrash.. " | BC Servers Crashed: " ..bccrash)
    end)
end
updatename()
--new function
local http = game:GetService('HttpService')
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}

local data
if not isfile('cs.json') then
    writefile('cs.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('cs.json'))
end
if not data then
    warn('Fatal error')
    return
end
function updateFile()
    local suc,er = pcall(function()
        writefile('cs.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
updateFile()

function serverhop()
    while wait() do
        pcall(function()
            local x = {}
            for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100")).data) do
                local check = true
                for _,v2 in pairs(data) do
                    if v2 == v.id then
                        check = false
                    end
                end
                if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId and check then
                    x[#x + 1] = v.id
                    amount = v.playing
                end
            end
            if #x > 0 then
                wait(0.25)
                game:GetService("TeleportService"):TeleportToPlaceInstance("112420803", x[math.random(1, #x)])
            end
            if #x == 0 then
                rconsoleprint([[
                    
No server found trying BC version]])
                bchop()
            end
        end)
    end
end

local http = game:GetService('HttpService')
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}

local data
if not isfile('bc.json') then
    writefile('bc.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('bc.json'))
end
if not data then
    warn('Fatal error')
    return
end
function bcfile()
    local suc,er = pcall(function()
        writefile('bc.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
bcfile()

function bchop()
    while wait() do
        pcall(function()
            local x = {}
            for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/115670532/servers/Public?sortOrder=Asc&limit=100")).data) do
                local check = true
                for _,v2 in pairs(data) do
                    if v2 == v.id then
                        check = false
                    end
                end
                if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId and check then
                    x[#x + 1] = v.id
                    amount = v.playing
                end
            end
            if #x > 0 then
                wait(0.25)
                game:GetService("TeleportService"):TeleportToPlaceInstance("115670532", x[math.random(1, #x)])
            end
            if #x == 0 then
                rconsoleprint([[
                    
No server found trying NBC version]])
                    serverhop()
            end
        end)
    end
end
function changeserver()
    serverhop()
end
repeat wait() until game:IsLoaded()
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
local regen = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen")
local gpad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin")
if not regen and not gpad then
    changeserver()
    wait(999)
end
if regen then
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0) 
end
if game.Players.LocalPlayer.Character.Head then
local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()
		for i, pad in pairs(pads) do
			Spawn(function()
				local cre = pad.Head
				local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
			    firetouchinterest(cre, spr, 1)
				wait()
				firetouchinterest(cre, spr, 0)
			end)
		end
    else
        changeserver()
    end
local whitelisttoggle = true
local whitelisted = {"haroldjd2017ipad", "gamingkhoaito129", "leakproof9853"}
if whitelisttoggle == true then
    for i,v in pairs(whitelisted) do
        if game.Players:FindFirstChild(v) then
            cmd("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n Whitelisted Player Found " ..v.. "\n Buy Orion Today \n .gg/C_N__D3_yq__qj")
            changeserver()
            return rconsoleerr("\n"..v.. " Is In Game Skipping...")
        end
    end
end
-- Command Varibles
wait(0.5)
cmd("music " ..settings.musicid)
cmd("time 0")
cmd("fogcolor 0 0 0")
cmd("fogend 0")
cmd("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n You Have Been Kicked By Orion v9: \n ORION IS BACK BABYYYYYY V9 OUT NOW \n .gg/C_N__D3_yq__qj")
local antibanfunction = false
wait(0.5)
spawn(function()
    while antibanfunction == false do wait()
        for i = 1,3 do cmd("size all 0.3") end
        cmd("freeze all")
        for i = 1,3 do cmd("size all 10") end
        cmd("clone all")
    end
end)
wait(2)
updatename()
antibanfunction = true
rconsoleprint("@@GREEN@@")
rconsoleprint([[
    
Server Crashed!]])
rconsoleprint([[


]])
spawn(function()
local plrcount = 0 -- Define the number at first.

for i,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") then -- Check if it's a player.
       plrcount = plrcount+1 -- Update the player count.
    end
end
local id = game.JobId
rconsoleprint(id.. " Crashed With " ..plrcount.. " People")
if game.PlaceId == 112420803 then
    local ammount = readfile("AmmountCrashed.txt")
    writefile("AmmountCrashed.txt", ammount+1)
    appendfile("NBC Servers Crashed.txt", "\n " ..id.. " | " ..plrcount.. " Playing")
else
    if game.PlaceId == 115670532 then
        appendfile("BC Servers Crashed.txt", "\n " ..id.. " | " ..plrcount.. " Playing")
        local ammount = readfile("BC AmmountCrashed.txt")
        writefile("BC AmmountCrashed.txt", ammount+1)
    end
end
local nbccrash = readfile("AmmountCrashed.txt")
local bccrash = readfile("BC AmmountCrashed.txt")
rconsoleprint("\n NBC: " ..nbccrash.. " | BC: " ..bccrash)
end)

changeserver()
