-- EXOILE V1
-- SAY ,CMDS FOR A LIST OF COMMANDS
-- MADE WITH CARE

local command = function(...)game.Players:Chat(...)end
local chat = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = ","
local spamreset = false
local permadmin = false
local antikill = false
local chatplayerjoins = false

function getpads()
while permadmin == true do
   task.wait()
 if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
	if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
	    local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
	    local padsFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
	    pads.CanCollide = false
	    repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	    pads.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	    task.wait()
	    pads.CFrame = padsFrame
	    pads.CanCollide = true
	else
	   fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
	 end
      end
   end
end

function antikll()
while antikill == true do
   task.wait(0)
   if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
   task.wait(0)
   command("reset me")
end
end
end

function sendnotif(msg)
  game.StarterGui:SetCore("SendNotification", {
      Title = "Exoile V1";
      Text = msg;
      Duration = 3;
      })
end

function clearlogs()
  for i = 1,100 do
    task.wait()
    command("ff stinky winky xd")
end
end

function chatdiscord()
   chat("join us today")
   chat("ff 5yyrFGAyDC")
   chat("exoile ontop")
end

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."prefix " then
   prefix = string.sub(msg:lower(), 9, 9)
   sendnotif("Prefix set to '"..string.sub(msg:lower(), 9, 9).."'")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."cmds" then
   print("EXOILE V1, JOIN US AT DISCORD.GG/5yyrFGAyDC")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print(".")
   print("---------------------EXTRA--------------------------")
   print("prefix -- changes your current prefix")
   print("server -- sends you the discord")
   print("house -- tps you to the house")
   print("pads -- tps you to the pads")
   print("finishobby -- finishes the obby")
   print("rj -- forces you to rejoin")
   print("perm -- gives you perm admin")
   print("unperm -- removes your perm")
   print("enablechat -- enables the feature to chat when a player joins")
   print("disablechat -- disables the feature to chat when a player joins")
   print("---------------------MAIN COMMANDS--------------------------")
   print("nok -- makes you not die by obby")
   print("spamregen -- spams the regen button")
   print("stopspam -- stops spamming the regen button")
   print("allpads -- grabs all pads")
   print("move -- moves anything you're near")
   print("movebp -- moves the bp")
   print("regen -- regens the pads")
   print("clearlogs -- clears the logs")
   print("unpunish -- unpunishes you if you can't")
   print("---------------------ANTIS--------------------------")
   print("antik -- makes you reset when you die")
   print("unantik -- disables antikill")
   print("Thanks for using Exoile V1.")
   task.wait(0.1)
   sendnotif("Please check console for current commands.")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 4) == prefix.."nok" then
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump1.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump2.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump3.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump4.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump5.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump6.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump7.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump8.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9.TouchInterest:destroy()
task.wait(0.1)
sendnotif("We have removed the ability to die from kill bricks.")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."server" then
   task.wait(0.1)
   sendnotif("join our lovely server! discord.gg/5yyrFGAyDC")
   chatdiscord()
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."spamregen" then
   sendnotif("Now spamming the regen button.")
   task.wait(0.1)
   spamreset = true
while spamreset == true do
    task.wait()
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."stopspam" then
   sendnotif("Stopped spamming the regen.")
   task.wait(0.1)
   spamreset = false
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."allpads" then
   sendnotif("Getting all pads.")
   task.wait(0.1)
   fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
   task.wait(0.1)
   local pads = Workspace.Terrain._Game.Admin.Pads:GetChildren("Head")
for i, pad in pairs(pads) do
   pad.PrimaryPart = pad:FindFirstChild("Head")
   local pos = pad.PrimaryPart.CFrame
   task.wait(0)
   pad.PrimaryPart.CanCollide = false
   pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
   task.wait(0)
   pad:SetPrimaryPartCFrame(pos)
   pad.PrimaryPart.CanCollide = true
   task.wait(0)
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg, 0, 4) == prefix.."rj" then 
task.wait(0.1)
local place = game:GetService("TeleportService")
local player = game:GetService("Players").LocalPlayer
place:Teleport(game.PlaceId, player)
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."movebp" then 
task.wait(0.1)
sendnotif("Moving the baseplate..")
command("respawn me")
task.wait()
command("sit me")
task.wait(0.9)
command("punish me")
task.wait(0.3)
command("unpunish me")
task.wait(0.1)
command("skydive me")
task.wait(0.1)
command("reset me")
task.wait(0.1)
clearlogs()
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."move" then 
task.wait(0.1)
sendnotif("Moving object near you.")
task.wait()
command("sit me")
task.wait(0.9)
command("punish me")
task.wait(0.3)
command("unpunish me")
task.wait(0.1)
command("skydive me")
task.wait(0.1)
command("reset me")
task.wait(0.1)
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."regen" then 
task.wait(0.1)
sendnotif("Resetting the pads.")
task.wait(0.1)
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
task.wait(0.1)
sendnotif("Resetted pads.")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."pads" then
sendnotif("Tped to pads")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
end
	
if string.sub(msg:lower(), 0, 6) == prefix.."house" then
sendnotif("Tped to house")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
end

if string.sub(msg:lower(), 0, 11) == prefix.."finishobby" then
sendnotif("Tped to end of obby")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-51.46, 1.2, 36.939))
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."clearlogs" then 
task.wait(0.1)
sendnotif("Clearing the logs...")
task.wait(0.1)
clearlogs()
task.wait(0.1)
sendnotif("Cleared logs.")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."perm" then
    sendnotif("You now have perm.")
    task.wait()
    permadmin = true
    task.wait()
    getpads()
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."unperm" then
   sendnotif("You now don't have perm.")
   task.wait()
   permadmin = false
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."antik" then
sendnotif("Antikill enabled.")
task.wait(0.1)
antikill = true
task.wait(0.1)
antikll()
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."unantik" then
sendnotif("Antikill disabled.")
task.wait(0.1)
antikill = false
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."unpunish" then
sendnotif("Unpunished.")
task.wait(0.1)
game.Players.LocalPlayer.Character:Destroy()
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."enablechat" then
if chatplayerjoins == false then
   chatplayerjoins = true
end
task.wait(0.1)
sendnotif("Chat player joins enabled.")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."disablechat" then
if chatplayerjoins == true then
   chatplayerjoins = false
end
task.wait(0.1)
sendnotif("Chat player joins disabled.")
end
end)

sendnotif("Exoile V1 loaded.")

game.Players.PlayerAdded:Connect(function(player)
if chatplayerjoins == true then
   command("h "..player.Name.." has joined the server!")
end
if chatplayerjoins == false then
   sendnotif(player.Name.." has joined the server!")
end
end)
