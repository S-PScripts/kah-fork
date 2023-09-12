--[[
    .___                                                          __   
  __| _/_____      ____    ____    ____    ____    ____   __ __ _/  |_ 
 / __ | \__  \   _/ ___\  /  _ \ _/ ___\  /  _ \  /    \ |  |  \\   __\
/ /_/ |  / __ \_ \  \___ (  <_> )\  \___ (  <_> )|   |  \|  |  / |  |  
\____ | (____  /  \___  > \____/  \___  > \____/ |___|  /|____/  |__|  
     \/      \/       \/              \/              \/                                                                                                                                                        
for Kohls Admin House NBC

]]--

--// written by sIeazish
--// autopaint by shade4real

local plrs = game.Players
local lp = plrs.LocalPlayer

local MessageSender = require(game.Chat.ChatScript.ChatMain.MessageSender)
MessageSender:RegisterSayMessageFunction(game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest)

coroutine.wrap(function()
    local char = lp.Character or lp.CharacterAdded:Wait()
    for l,k in pairs(game:GetService'Workspace'.Terrain['_Game'].Workspace:GetDescendants()) do
        coroutine.wrap(function()
            --[[


            COLOR HERE
            |
            |
            v


            ]]
            local color = Color3.fromRGB(34, 139, 34) --RGB COLOR
            if k then
                local suc,er = pcall(function() lp.Character:WaitForChild("PaintBucket"):WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = k,Color = color}) end)
                if not suc then print(er) end
            end
        end)()
    end
    plrs:Chat('gear me 00000000000000000000000000000000000000000000000000000000000000018474459')
    local bucket = lp.Backpack:WaitForChild('PaintBucket')
    lp.Character.Humanoid:EquipTool(bucket)
end)()

plrs:Chat('music 1761317440')
plrs:Chat('fix')
plrs:Chat('name all coconut')
wait()
plrs:Chat('fogend 100')
plrs:Chat('fogcolor 34 139 34')

att = 5

repeat wait()
plrs:Chat('size all 0.3')
att = att - 1
until att == 0

att = 5

repeat wait()
plrs:Chat('size all 2')
att = att - 1
until att == 0

plrs:Chat('paint all brown')
plrs:Chat('speed all 50')
plrs:Chat('h its the coco fruit, of the coco tree - N Organization')
wait(3)
plrs:Chat('ungear me')
