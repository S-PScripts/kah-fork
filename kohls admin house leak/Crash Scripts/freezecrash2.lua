-- epic crash script by MeanClone

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
chatted("fogend 0 0 0")
chatted("time 0")
chatted("ambient 255 255 255")
chatted("colorshiftbottom 255 255 255")
chatted("ambient 255 255 255")
chatted("outdoorambient 255 255 255")
chatted("colorshifttop 255 255 255")

spawn(function()
    while true do
        chatted("fogcolor "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)))
        wait()
    end
end)

local songs = {
    "4531883677",
    "4531883677",
    "4531883677",
    "474545527",
    "4531883677"
}

wait()
chatted("m You Been Crashed By the Crasher")
chatted("name all rip")
chatted("music "..songs[math.random(1, #songs)])

wait(1.5)

chatted("blind all")
chatted("h You Been Crashed Leave")
chatted("blind all")
say("You Have Been Crashed")
say("Script Made By Crasher")

delay(1000000000000, FindServer)

while true do wait(1)
    for i = 1,3 do chatted("size all 0.3") end
    chatted("freeze all")
    for i = 1,3 do chatted("size all 10") end
    chatted("clone all")
end
