--[[

 ::::::::  :::    ::: ::::::::::: :::     ::: :::::::::: :::::::::  
:+:    :+: :+:    :+:     :+:     :+:     :+: :+:        :+:    :+: 
+:+        +:+    +:+     +:+     +:+     +:+ +:+        +:+    +:+ 
+#++:++#++ +#++:++#++     +#+     +#+     +:+ +#++:++#   +#++:++#:  
       +#+ +#+    +#+     +#+      +#+   +#+  +#+        +#+    +#+ 
#+#    #+# #+#    #+#     #+#       #+#+#+#   #+#        #+#    #+# 
 ########  ###    ### ###########     ###     ########## ###    ### 
for Kohls Admin House NBC

]]--

--// written by sIeazish
--// server rejoin by haroldjd2017ipad
--// with help from MeanClone

local pS = game:GetService("Players")
local MessageSender = require(game.Chat.ChatScript.ChatMain.MessageSender)
MessageSender:RegisterSayMessageFunction(game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest)

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


pS:Chat("fix")
MessageSender:SendMessage("my cousin started doing a weird dance on the floor, hes like shaking and stuff help", "All")
MessageSender:SendMessage("Invite: EQbS3SW4", "All")
wait()
pS:Chat("music 5876271636")
pS:Chat("reset all")
pS:Chat("h shiver (Crashed) - N Organization")
pS:Chat("fogend 0")
wait()
pS:Chat("fogcolor 255 255 255")
pS:Chat("brightness 10")
pS:Chat("ambient 9999999999 9999999999 9999999999")
pS:Chat("time 0")
pS:Chat("trip all")
pS:Chat("setgrav all -2000")
wait(1)
pS:Chat("blind all")
pS:Chat("h shiver (Crashed) - N Organization")
wait(1)
delay(20, FindServer)
while true do wait(1)
    for i = 1,3 do chatted("size all 0.3") end
    chatted("freeze all")
    for i = 1,3 do chatted("size all 10") end
    chatted("clone all")
end
