-- Made By Nexxor
-- Teleport Scripts By yaami<3 Thanks To ShortCut Script
-- v3.3 (Private)
-- Leak Status: NOT LEAKED :p
-- Number Of People That Have Access: 3
--   ____  _____  _____ ____  _   _ 
--  / __ \|  __ \|_   _/ __ \| \ | |
-- | |  | | |__) | | || |  | |  \| |
-- | |  | |  _  /  | || |  | | .  |
-- | |__| | | \ \ _| || |__| | |\  |
--  \____/|_|  \_\_____\____/|_| \_|

function chatted(i) game.Players:Chat(i) end
function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
wait(1)
local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
        for i, pad in pairs(pads) do
            Spawn(function()
                pad.PrimaryPart = pad:FindFirstChild("Head")
                local pos = pad.PrimaryPart.CFrame
                wait(0)
                pad.PrimaryPart.CanCollide = false
                pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait(0)
                pad:SetPrimaryPartCFrame(pos)
                pad.PrimaryPart.CanCollide = true
            end)
        end
chatted("m Server Crashed By Orion")
chatted("char all 856610926")
chatted("time 0")
say("SERVER CRASHED BY ORION! Mad BC Orion Is On Top? Then Ki|_,|_ Your Self xd")
say("Join RoSploit cuz We Cooler Then U")
say("AMONGUS Orion On Top Rosploit On Top")
say("ORION OVER THROWS DIY")
say("FEAR US ROSPLOIT ON TOP")
chatted("name all crashed by orion exploit")
wait(2)
chatted("music 6842201548")
chatted("jail others")
chatted("fogend 0")
while true do wait(1)
    for i = 1,3 do chatted("size all 0.3") end
    chatted("freeze all")
    for i = 1,3 do chatted("size all 10") end
    chatt
