--[[ 

.d8888.  .o88b.  .d8b.  d8888b. d88888b  .o88b. d8888b.  .d8b.  .d8888. db   db 
88'  YP d8P  Y8 d8' `8b 88  `8D 88'     d8P  Y8 88  `8D d8' `8b 88'  YP 88   88 
`8bo.   8P      88ooo88 88oobY' 88ooooo 8P      88oobY' 88ooo88 `8bo.   88ooo88 
  `Y8b. 8b      88~~~88 88`8b   88~~~~~ 8b      88`8b   88~~~88   `Y8b. 88~~~88 
db   8D Y8b  d8 88   88 88 `88. 88.     Y8b  d8 88 `88. 88   88 db   8D 88   88 
`8888Y'  `Y88P' YP   YP 88   YD Y88888P  `Y88P' 88   YD YP   YP `8888Y' YP   YP 
for Kohls Admin House NBC

]]--

--// written by sIeazish
--// server rejoin by haroldjd2017ipad
--// with help from MeanClone

local pS = game:GetService("Players")
local zalgo = game:HttpGet("https://pastebin.com/raw/d7eTDKbJ")

function chatted(i) game.Players:Chat(i) end
function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
function logn(msg)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Crash Script"; 
        Text = msg; 
        Duration = 5;
    })
end
local function FindServer()
    local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            x[#x + 1] = v.id
            amount = v.playing
        end
    end
    if #x > 0 then
        logn("Joining a server with "..amount.." Players")
        wait(0.25)
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    else
        logn(":(")
    end
end

if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
    Success, err1 = pcall(function()
        local gameFlr = game:GetService("Workspace").Terrain["_Game"]
        if gameFlr.Admin:FindFirstChild("Regen") then
            function TsprF(c) fireclickdetector(gameFlr.Admin.Regen.ClickDetector, c) end
            TsprF(1)
            TsprF(0)
        end
    end)
end

if err1 then
    logn("an error ocured: "..err1)
    FindServer()
end

local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
local Success2, err2 = pcall(function()
    for i, pad in pairs(pads) do
        pad.PrimaryPart = pad:FindFirstChild("Head")
        local pos = pad.PrimaryPart.CFrame
        wait(0)
        pad.PrimaryPart.CanCollide = false
        pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait(0)
        pad:SetPrimaryPartCFrame(pos)
        pad.PrimaryPart.CanCollide = true
    end
end)

if not Success2 then
    logn("an error ocured: "..err2)
    FindServer()
end

pS:Chat("h/"..zalgo)

wait(1)

local MessageSender = require(game.Chat.ChatScript.ChatMain.MessageSender)
MessageSender:RegisterSayMessageFunction(game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest)

pS:Chat("music null")
pS:Chat("time 12")
pS:Chat("fogend 200")
pS:Chat("fogcolor 0 0 0")
pS:Chat("outdoorambient 0 0 0")
MessageSender:SendMessage("wait whats that over there?", "All")
wait(2)
pS:Chat("music null")
pS:Chat("fogend 100")
pS:Chat("fogcolor 0 0 0")
pS:Chat("outdoorambient 0 0 0")
pS:Chat("time 8")
MessageSender:SendMessage("..", "All")
wait(2)
pS:Chat("music 292124372")
pS:Chat("time 0")
pS:Chat("fogend 25")
pS:Chat("fogcolor 0 0 0")
pS:Chat("outdoorambient 0 0 0")
MessageSender:SendMessage("AAAAGH!!", "All")
wait(3)
pS:Chat("music 6469287699")
pS:Chat("h You've met with a terrible fate, haven't you? (Crashed) - N Organization")
MessageSender:SendMessage("Invite: EQbS3SW4", "All")
pS:Chat("reset all")
wait()
delay(20, FindServer)
while true do wait(1)
    for i = 1,3 do chatted("size all 0.3") end
    chatted("freeze all")
    for i = 1,3 do chatted("size all 10") end
    chatted("clone all")
end