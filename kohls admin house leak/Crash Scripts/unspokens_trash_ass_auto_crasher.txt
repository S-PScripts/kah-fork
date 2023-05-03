local whitelisttoggle = false
local whitelisted = {"leakproof9853"}

local plrcount = 0 -- Define the number at first.

for i,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") then -- Check if it's a player.
       plrcount = plrcount+1 -- Update the player count.
    end
end

rconsoleprint("\n[")
rconsoleprint("@@RED@@")
rconsoleprint("+")
rconsoleprint("@@WHITE@@")
rconsoleprint("]: Attempting to crash server: "..game.JobId.."..\n")
wait()
rconsoleprint("[")
rconsoleprint("@@RED@@")
rconsoleprint("+")
rconsoleprint("@@WHITE@@")
rconsoleprint("]: Players in the server: ".. plrcount.." \n")

local haha = game.Players
local plrs = game:GetService("Players")
local plr  = plrs.LocalPlayer
local gr   = "VampireVanquisher"
local http = game:GetService "HttpService"

-- the thing which saves the game id and such

function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
function cmd(i) game.Players:Chat(i) end
--new function
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}

local data
if not isfile('unspokengt.json') then
    writefile('unspokengt.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('unspokengt.json'))
end
if not data then
    warn('Fatal error')
    return
end
function updateFile()
    local suc,er = pcall(function()
        writefile('unspokengt.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
updateFile()

-- server hop function

local function hop()
while true do
    pcall(function()
local response
local req = game:HttpGet("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100")
 response = game:GetService("HttpService"):JSONDecode(req)

            for i, server in pairs(response.data) do
                if game.JobId ~= server.id then -- / You don't want to rejoin the same server.
                    if server.playing <= 5 then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(
                            game.PlaceId,
                            server.id,
                            game:GetService("Players").LocalPlayer
                        )
                        break
            end
                      end
            end
    end)
            wait(0.2)
end
end


local req = game:HttpGet("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100")
response = game:GetService("HttpService"):JSONDecode(req)
for i, server in pairs(response.data) do
amountofservers = i
end

coroutine.wrap(function()
wait(.05)
if not game:IsLoaded() then
hop()
end
end)()

repeat wait()
until game:IsLoaded()

-- checks if regen or admin pads are missing so it leaves server UwU

rconsoleprint("[")
rconsoleprint("@@GREEN@@")
rconsoleprint("+")
rconsoleprint("@@WHITE@@")
rconsoleprint("]: Checking if regen or admin pads are present..\n")


local regen = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen")
local gpad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin")
if not regen and not gpad then
    rconsoleerr("No regen or admin pads found!\nServer hopping..")
    wait(0.3)
    for i,v in pairs(defaultLua) do
    if game.JobId == v then
    che = false
    else
    che = true
    end
    if che == true then
    hop()
    else
    print("waiting for an available game")
    end
    end
end

rconsoleprint("[")
rconsoleprint("@@GREEN@@")
rconsoleprint("+")
rconsoleprint("@@WHITE@@")
rconsoleprint("]: Grabbing admin pads..\n")

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
        hop()
    end

if whitelisttoggle == true then
    for i,v in pairs(whitelisted) do
        if game.Players:FindFirstChild(v) then
            haha:Chat("whitelisted player found"..v.."server hopping to another server")
            hop()
            return rconsoleerr("\n"..v.. " is whitelisted, finding another server..\n")
        end
    end
end

-- command thing so if it doesnt server hop, u can do that ur self

local prefix = "."
local LPlayer = game.Players.LocalPlayer
LPlayer.Chatted:Connect(function(msg)
        msg = msg:lower()
        if string.sub(msg,1,3) == "/e " then
        msg = string.sub(msg,4)
        end
        if string.sub(msg,1,1) == prefix then
                local cmd
                local space = string.find(msg," ")
                if space then
                        cmd = string.sub(msg,2,space-1)
                else
                        cmd = string.sub(msg,2)
                end

                if cmd == "shop" or "srj" then
					hop()
				end
		end
end)

-- the crasher (vg)

 haha:Chat("gear me 94794847")
 wait(0.02)
 haha:Chat("gear me 94794847")
 haha:Chat("gear me 94794847")
 haha:Chat("gear me 94794847")
 wait(0.07)
 haha:Chat("gear me 94794847")
 wait()
 haha:Chat("music 6091850221")
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(math.random, 100000000, -32944))
 wait(.2)
 haha:Chat("tp all me")
 wait()
 haha:Chat("punish others")
 wait(0.03)
 haha:Chat("time 0")
 haha:Chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n This server has been crashed \n \n \n \n \n These might be the reasons: \n \n \n \n  • Someone abused           \n \n  • I'm testing out stuff         \n \n     • Just felt the need to crash \n \n      • Or to fix broken servers     \n \n \n \n \n Thank you for your understanding. \n \n \n \n \n -UNSPOKEN GT ")
 haha:Chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n This server has been crashed \n \n \n \n \n These might be the reasons: \n \n \n \n  • Someone abused           \n \n  • I'm testing out stuff         \n \n     • Just felt the need to crash \n \n      • Or to fix broken servers     \n \n \n \n \n Thank you for your understanding. \n \n \n \n \n -UNSPOKEN GT ")
 haha:Chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n This server has been crashed \n \n \n \n \n These might be the reasons: \n \n \n \n  • Someone abused           \n \n  • I'm testing out stuff         \n \n     • Just felt the need to crash \n \n      • Or to fix broken servers     \n \n \n \n \n Thank you for your understanding. \n \n \n \n \n -UNSPOKEN GT ")
 wait(0.3)
 haha:Chat("gear me 94794847")
 haha:Chat("gear me 94794847")
 wait(0.01)
 plr.Backpack:WaitForChild(gr)
 local v = plr.Backpack:FindFirstChild(gr)
 v.Parent = plr.Character
 wait(.05)
 for i = 1, 4 do
 haha:Chat("size all .3")
 end
 haha:Chat("freeze all")
 for i = 1, 5 do
 haha:Chat("size all 10")
 end 
 haha:Chat("clone all")

rconsoleprint("[")
rconsoleprint("@@GREEN@@")
rconsoleprint("+")
rconsoleprint("@@WHITE@@")
rconsoleprint("]: Crashed the server successfully.\n")

-- checks if ur joining the same crashed server :3

for i,v in pairs(defaultLua) do
if game.JobId == v then
che = false
else
che = true
end
if che == true then
hop()
else
print("waiting for an available server")
end
end
