-- NOOBCMDS BETAv9.05.21
-- say "!noobcmds" for the list of current commands
-- i'd really love your feedback and suggestions! also dont expect too much yet the script's still in its early development
-- anyways enjoy

local chat = function(...)game.Players:Chat(...)end
local say = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = ":"
local idhider = string.rep(0, 500)

function notif(msg)
game.StarterGui:SetCore("SendNotification", {
Title = "noobot"; 
Text = msg; 
Duration = 5;
})
end

function infnotif(msg)
game.StarterGui:SetCore("SendNotification", {
Title = "noobus infinitus"; 
Text = msg; 
Duration = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999;
})
end


game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 8) == "!prefix " then
prefix = string.sub(msg:lower(), 9, 9)
notif("prefix set to '"..string.sub(msg:lower(), 9, 9).."'")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 4) == prefix.."afk" then wait(.1)
chat("fix")
wait()
chat("time 0")
chat("fogend 200")
chat("fogcolor 255 255 0")
wait()
chat("colorshifttop 255 255 0")
chat("colorshiftbottom 255 255 0")
wait()
chat("music "..idhider.."5043813148")
chat("antimusic on")
wait()
say("when the nob is afk :smirk:")
say("dont abuse bruh i can see logs")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."unafk" then wait(.1)
chat("fix")
say("alr im bac. were yall good boys?")
wait()
chat("antimusic off")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 9) == "!noobcmds" then wait(.1)
notif("press alt f4 for cmds xd (dont look at logs btw)")
wait(.1)
chat("ff DONT PRESS F9!!1!11")
print("wow looks like you outsmarted my outsmarting, congrats ig xd")
print("oh well, these are the current commands i can do")
print("---------------------MAIN COMMANDS--------------------------")
print("*main commands have a fixed prefix of '!'*")
print("!prefix -- changes the command prefix")
print("!songlist -- list of playable songs in this script")
print("!gearlist -- list of kits")
print("!sdlist -- list of shutdown types")
print("!charlist -- list of current chars within the script")
print("!themelist -- list of server themes")
print(prefix.."ad -- displays discord invite")
print(prefix.."rej -- BRUH MAKES YOU REJOIN OFC")
print(prefix.."serhop -- ok this is an abbreviation of server hop, not the name of my physics teacher")
print(prefix.."[type]sd -- ends the server's misery")
print(prefix.."dsaok -- disables the obby kill blocks, weird name for a command innit")
print(prefix.."resetp -- reset the admin pads")
print(prefix.."movebp -- pretty explanatory")
print(prefix.."fixbp -- also explanatory")
print(prefix.."un/spam [command] -- bruh")
print(prefix.."spamspeed [num] -- sets the intervals for spamming")
print(prefix.."sspam -- safer spam, it only runs at a certain limit tho (it's safer because it avoids warns/bans, hopefully)")
print(prefix.."ssloop [num] -- sets the amount of times the safe spam command will repeat")
print(prefix.."f [target] -- attempts to kick someone (not 100% accurate)")
print(prefix.."lag [target] -- lags a player? jokes on you this lags the whole server")
print(prefix.."void [target] -- my Stand, Cream, shall send the target to the emptiness of the dark realm.")
print(prefix.."ascend [target] -- makes a player literally transcend")
print(prefix.."kc -- erase time thing")
print(prefix.."zw -- stop time thing")
print(prefix.."floorkill/unfk [target] -- kills a player everytime they respawn")
print(prefix.."play [musicname] -- play my favorite songs! also what are you doing at my spotify playlist")
print(prefix.."all[gearname/type] [target] -- gears a certain player/s specific gears")
print(prefix.."bangears/unbg [target] -- explanatory as well")
print(prefix.."un/discofog [interval] -- rainbow fog ooooo very naysu")
print(prefix.."antimusic [on/off] -- locks the recently played music (credits to shade and balloon for this :D)")
print(prefix.."songinfo -- displays the details of the current playing song (credits to fallout)")
print("i'd really love your feedback on this one, and your suggestions are a lot of help :)")
end
end)

-- server

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 4) == prefix.."rej" then wait(.1)
say("i l l b e b a c")
local place = game:GetService("TeleportService")
local playur = game:GetService("Players").LocalPlayer
place:Teleport(game.PlaceId, playur)
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 8) == prefix.."servhop" then wait(.1)
say("teleporting to another dimensio- wait what")
wait(.3)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 7) == "!sdlist" then wait(.1)
print("normal -- just your normal shutdown, nothing too complicated")
print("noob -- noob-themed shutdown of course")
print("annoy -- if you're fed up on the server then this is the most appropriate one")
print("space -- ooooo space theme shutdown")
print("fard -- LOLOLOL SERVER FARDXDXDXD")
print("hell -- scary shutdown")
print("hen -- OMG HENTAI SHUTDOWN")
print("car -- a bit different shutdown, it works by lagging until the server chokes to death")
print("you can suggest more themes in the discord server")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 9) == prefix.."normalsd" then wait(.1)
say("welp, there goes the server. join this server btw it's really cool: gg.RP hv US y u zb")
say("and these servers as well, they have really cool scripts for you to check out too!")
say("Coolui - gg.2S_yT_tD_x8_35")
say("DIY Scripts - gg.Qj eF Gp 7N aD")
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)


game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 7) == prefix.."noobsd" then wait(.1)
chat("fix")
wait()
chat("time 0")
chat("fogend 0")
chat("fogcolor 255 255 0")
wait()
chat("colorshifttop 999999999 999999999 0")
chat("colorshiftbottom 999999999 999999999 0")
wait()
chat("music "..idhider.."2590490779")
say("haha server got noobed 🤣🤣🤣🤯😳")
say("also, dont forget to join this cool server! we'll be waiting for you :) gg.RP hv US y u zb")
say("that's not all! join these servers as well, they have EPIC scripts too!")
say("Coolui! gg.2S_yT_tD_x8_35")
say("DIY Scripts! gg.Qj eF Gp 7N aD")
wait(.1)
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 8) == prefix.."annoysd" then wait(.1)
chat("music "..idhider.."131490087")
say("this server must've been full of idiots smh")
say("anyway, join this sort of cool server, idiot free btw: gg.RP hv US y u zb")
say("join these servers as well, they have epic scripts too (idiots are not welcome)")
say("Coolui - gg.2S_yT_tD_x8_35")
say("DIY Scripts - gg.Qj eF Gp 7N aD")
wait(.1)
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 8) == prefix.."spacesd" then wait(.1)
chat("fix")
wait(.1)
chat("music "..idhider.."741535255")
chat("time 0")
chat("fogcolor 0 175 250")
chat("fogend 200")
wait(.1)
say("this server now wanders the vast void of space for eternity..")
say("as you go by, join this server if you want the script! gg.RP hv US y u zb")
say("and these servers as well, they are home to one of the most intelligent people in roblox and makes very cool scripts! :>")
say("Coolui! gg.2S_yT_tD_x8_35")
say("DIY Scripts! gg.Qj eF Gp 7N aD")
wait(.1)
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 7) == prefix.."hellsd" then wait(.1)
chat("music "..idhider.."27697743")
say("Welcome to Hell.")
say("Join the server to escape. RP hv US y u zb")
say("Join these servers as well, they will guide you to the light and make sure you will never end up in this place ever again.")
say("Coolui. gg.2S_yT_tD_x8_35")
say("DIY Scripts. gg.Qj eF Gp 7N aD")
wait(.1)
chat("fix")
wait(.1)
chat("time 0")
chat("fogcolor 0 0 0")
chat("fogend 20")
chat("colorshifttop 10000 0 0")
chat("colorshiftbottom 10000 0 0")
chat("respawn all")
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 7) == prefix.."fardsd" then wait(.1)
chat("music "..idhider.."6736759679")
wait(.1)
chat("fix")
wait(.1)
chat("fogcolor 150 75 25")
chat("fogend 50")
wait(.1)
say("LOL SERVER FARD XDXDXD FUNNIII")
say("JOIN SERVER FOR MORE FARD!!! gg.RP hv US y u zb")
say("AND THESE SERVERS 2!!!")
say("COOLUI!! gg.2S_yT_tD_x8_35")
say("DIY SCRIPTS!! gg.Qj eF Gp 7N aD")
wait(.1)
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)


game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 6) == prefix.."hensd" then wait(.1)
chat("music "..idhider.."6591385583")
say("OH NO INAPPROPRIATE CRASH EXECUTED 😱😱😱")
say("nice crash? join this server, there's lots of these in the wfsn channel ;) RP hv US y u zb")
say("that's not all! join these servers as well, they have EPIC scripts and a very nice wfsn channel too >:)")
say("Coolui! gg.2S_yT_tD_x8_35")
say("DIY Scripts! gg.Qj eF Gp 7N aD")
notif("congrats! you found the secret crash! also, there's another command that has the same theme as this..")
wait(.1)
chat("fix")
wait(.1)
chat("time 0")
chat("fogend 250")
chat("fogcolor 450 0 450")
wait(.1)
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 5) == prefix.."stsd" then wait(.1)
chat("music "..idhider.."6963646672")
say("SCOTLAND FOREVER")
say("COOLUI FOREVER gg.2S_yT_tD_x8_35")
say("DIY SCRIPTS FOREVER gg.Qj eF Gp 7N aD")
chat("fix")
wait(.1)
chat("fogcolor 0 175 250")
chat("fogend 0")
wait(.1)
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 6) == prefix.."cossd" then wait(.1)
chat("music "..idhider.."135809782")
wait(.1)
say("The people will be divided into two; those who will ascend to the Kingdom of Shade, and those who will descry the inevitable oblivion.")
say("Alas, you are the latter. Witness nihility.")
say("But, Lord Shade may give you another chance. Join us in His Kingdom: 3Q 7S qK DG")
wait(.1)
chat("fix")
wait(.1)
chat("time 0")
chat("fogcolor 0 0 0")
chat("fogend 20")
chat("colorshifttop 10000 0 0")
chat("colorshiftbottom 10000 0 0")
chat("respawn all")
wait(.1)
for i = 1,10 do
chat("size all 0.3")
chat("size all 0.3")
chat("size all 0.3")
chat("freeze all")
chat("size all 10")
chat("size all 10")
chat("size all 10")
chat("clone all")
end
wait(1)
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.playing ~= s.maxPlayers then
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 6) == prefix.."carsd" then wait(.1)
chat("music "..idhider.."634151277")
say("i will now take this server to the 'ride' of its life ;)")
say("anyways before this server goes i would like to plug in our server, join it because you're in for a ride ;) RP hv US y u zb")
say("that's not all! join these other servers as well, aside from EPIC scripts you will also find 'family' xd if you know the recent memes")
say("Coolui! gg.2S_yT_tD_x8_35")
say("DIY Scripts! gg.Qj eF Gp 7N aD")
chat(prefix.."spam gear all 253519495")
chat(prefix.."spam gear all 253519495")
chat(prefix.."spam gear all 253519495")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 4) == prefix.."ps " then wait(.1)
local amt = string.sub(msg, 5)
for i = 1,amt,1 do wait(.1)
chat("gear me 000000000000000000108158379")
end

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.Name == "IvoryPeriastron" then
v.Parent = game.Players.LocalPlayer.Character
else
wait()
end
v.Remote:FireServer(Enum.KeyCode.Q)
end
wait()
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 6) == prefix.."dsaok" then wait(.1)
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
wait(.1)
notif("u can now walk over obby :OOO")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."movebp" then wait(.1)
say("moving the baseplate..")
chat("respawn me")
wait()
chat("sit me")
wait(.9)
chat("punish me")
wait(.3)
chat("unpunish me")
wait(.1)
chat("skydive me")
wait(.1)
chat("reset me")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."fixbp" then wait(.1)
say("fixing the baseplate..")
chat("respawn me")
wait()
chat("skydive me")
wait(.1)
chat("sit me")
wait(.9)
chat("punish me")
wait(.3)
chat("unpunish me")
wait(.1)
chat("unskydive me")
wait(.1)
chat("reset me")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."tripbp" then wait(.1)
say("tripping the baseplate..")
chat("respawn me")
wait()
chat("sit me")
wait(.9)
chat("punish me")
wait(.3)
chat("unpunish me")
wait(.1)
chat("trip me")
wait(.1)
chat("unskydive me")
wait(.1)
chat("respawn me")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."ptripbp" then wait(.1)
say("perfectly tripping the baseplate..")
chat("respawn me")
wait()
chat("sit me")
wait(.9)
chat("punish me")
wait(.3)
chat("unpunish me")
wait(.1)
chat("unseizure me")
wait(.1)
for i = 1,4 do
chat("tp me me me me me")
wait(.1)
end
chat("seizure me")
wait(.1)
chat("trip me")
wait(.1)
for i = 1,2 do
chat("normal me me me")
end
wait(.1)
for i = 1,4 do
chat("jail me me")
end
wait(.1)
chat("unjail me")
chat("respawn me")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."ftripbp" then wait(.1)
say("fixing tripped baseplate..")
wait(16)
chat("respawn me")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-583.234253, 1.14362776, -19.6561356)
wait(.1)
chat("jail me")
wait(.1)
chat("setgrav me 1000")
wait(.3)
chat("punish me")
wait(.3)
chat("unpunish me")
wait(.1)
chat("trip me")
wait(.1)
chat("respawn me")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."attach" then wait(.1)
chat("sit me")
wait(.9)
chat("punish me")
wait(.3)
chat("unpunish me")
say("attached to part")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 6) == prefix.."super" then
local cmd = string.sub(msg, 7)
for i = 1,50 do
chat(""..cmd.."")
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 3) == prefix.."rp" then wait(.1)
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
notif("resetting pads..")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 3) == prefix.."ap" then wait(.1)
notif("claiming pads..")
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
wait()
end)
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."norp" then wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10.0229654, 10.6299982, 93.8870163)
wait(.3)
chat("sit me")
wait(1.7)
chat("punish me")
wait(.7)
chat("unpunish me")
wait(.5)
chat("unskydive me")
wait(.3)
chat("respawn me")
notif("reset pad is now gone, reduced to atoms")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 3) == prefix.."cp" then wait(.1)
chat(prefix.."norp")
wait(3.8)
chat(prefix.."rp")
wait(.3)
chat(prefix.."ap")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 8) == prefix.."ascend " then wait(.1)
local target = string.sub(msg, 9)
say("ASCENDING "..target.."..")
chat("fix")
chat("time 0")
chat("outdoorambient 000 000 111")
wait(.1)
chat("stun "..target)
wait(.6)
chat("setgrav "..target.." -253")
wait(.1)
chat("glow me 255 255 0")
chat("music "..idhider.."909227073")
end
end)

local clicktp = false
game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 11) == prefix.."clicktp on" then wait(.1)
clicktp = true
notif("clicktp set to true")
elseif msg == prefix.."clicktp off" then
clicktp = false
notif("clicktp set to false")
end
end)

plr = game.Players.LocalPlayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == 't' then
if mouse.Target then
if clicktp == true then
chat("music "..idhider.."5552582429")
chat("fix")
chat("fogcolor 255 0 0")
wait(.1)
chat("time 0")
chat("fogend 0")
wait(.2)
chat("music")
wait(.1)
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
chat("fix")
end
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."pads" then
notif("tped to pads")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
end
	
if string.sub(msg:lower(), 0, 6) == prefix.."house" then
notif("tped to house")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
end -- CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 6) == prefix.."void " then wait(.1)
local target = string.sub(msg, 7)
chat("blind "..target)
chat("setgrav "..target.." -9e9")
chat("music "..idhider.."5827892235")
say("One by one, my Stand, Cream, will send you to the unending darkness of the void, just like what I did to "..target..".")
wait(6.5)
chat("music")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 3) == prefix.."kc" then wait(.1)
chat("music 5779908464")
wait(1.1)
chat("music 3280066384")
chat("fix")
wait(.1)
chat("time 0")
wait(.1)
chat("time 12")
wait(.1)
chat("time 0")
wait(.5)
chat("colorshifttop 100000 0 0")
chat("colorshiftbottop 100000 0 0")
chat("fogcolor 255 0 0")
chat("fogend 0")
wait(.4)
chat("colorshifttop 0 0 0")
chat("colorshiftbottop 0 0 0")
chat("fogcolor 231 84 128")
wait(.6)
chat("fogcolor 0 0 0")
chat("fogend 50")
wait(.1)
chat("noclip me")
chat(prefix.."spam speed others 0")
wait(1.9)
chat("music 3373991228")
wait(.1)
chat("colorshifttop 100000 0 0")
chat("colorshiftbottop 100000 0 0")
wait(.7)
chat("fix")
wait(.1)
chat("music")
chat("clip me")
wait(.1)
chat(prefix.."unspam")
wait(.3)
chat("speed all 16")
end
end)

local timestop = false
game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 3) == prefix.."zw" then wait(.1)
freezespam("speed others 0")
chat("music 1571597070")
wait(2.7)
chat("fogcolor 191 7 202")
chat("outdoorambient 223 232 23")
chat("unfly others")
chat("fogend 10")
chat("time 12")
chat("speed others 16")
wait()
chat("fogend 50")
chat("time 11.75")
chat("speed others 15")
wait()
chat("fogend 100")
chat("time 11.25")
chat("speed others 14")
wait()
chat("fogend 150")
chat("time 11")
chat("speed others 13")
wait()
chat("fogend 200")
chat("time 10.75")
chat("speed others 12")
wait()
chat("fogend 250")
chat("time 10.25")
chat("speed others 11")
wait()
chat("fogend 300")
chat("time 10")
chat("speed others 10")
wait()
chat("fogend 350")
chat("time 9.75")
chat("speed others 9")
wait()
chat("fogend 400")
chat("time 9.25")
chat("speed others 8")
wait()
chat("fogend 450")
chat("time 9")
chat("speed others 7")
wait()
chat("fogend 500")
chat("time 8.75")
chat("speed others 6")
wait()
chat("fogend 550")
chat("time 8.25")
chat("speed others 5")
wait()
chat("fogend 600")
chat("time 7.75")
chat("speed others 0")
wait(.07)
chat("fogend 550")
chat("time 7.25")
chat("speed others 0")
wait()
chat("fogend 500")
chat("time 7")
chat("speed others 0")
wait()
chat("fogend 450")
chat("time 6.75")
chat("speed others 0")
wait()
chat("fogend 400")
chat("time 6.25")
chat("speed others 0")
wait()
chat("fogend 350")
chat("time 6")
chat("speed others 0")
wait()
chat("fogend 300")
chat("time 5.75")
chat("speed others 0")
wait()
chat("fogend 250")
chat("time 5.25")
chat("speed others 0")
wait()
chat("fogend 200")
chat("time 4.75")
chat("speed others 0")
wait()
chat("fogend 150")
chat("time 4.25")
chat("speed others 0")
wait()
chat("fogend 100")
chat("time 4")
chat("speed others 0")
wait()
chat("fogend 50")
chat("time 3")
chat("speed others 0")
wait()
chat("fogend 10")
chat("time 2")
chat("speed others 0")
wait(.3)
chat("fogend 9999")
chat("time 1")
chat("music 384043882")
wait(.1)
chat("time 0")
wait()
timestop = true
wait(5)
chat("music 3298763371")
wait(1.6)
chat("time 0")
chat("fogcolor 191 7 202")
chat("fogend 1000")
wait()
chat("fogend 950")
chat("time .5")
wait()
chat("fogend 900")
chat("time 1")
wait()
chat("fogend 850")
chat("time 1.5")
wait()
chat("fogend 800")
chat("time 2")
wait()
chat("fogend 750")
chat("time 2.5")
wait()
chat("fogend 700")
chat("time 3")
wait()
chat("fogend 650")
chat("time 3.5")
wait()
chat("fogend 600")
chat("time 4")
wait()
chat("fogend 550")
chat("time 4.5")
wait()
chat("fogend 500")
chat("time 5")
wait()
chat("fogend 450")
chat("time 5.5")
wait()
chat("fogend 400")
chat("time 6")
wait()
chat("fogend 350")
chat("time 6.5")
wait()
chat("fogend 300")
chat("time 7")
wait()
chat("fogend 250")
chat("time 7.5")
wait()
chat("fogend 200")
chat("time 8")
wait()
chat("fogend 150")
chat("time 8.5")
wait()
chat("fogend 100")
chat("time 9")
wait()
chat("fogend 50")
chat("time 10")
wait()
chat("fogend 10")
chat("time 12")
wait()
chat("music")
wait()
chat("fix")
wait()
timestop = false
wait(.2)
chat("speed others 16")
end
end)

function freezespam(text)
while timestop == true do wait()
game:GetService("Players"):Chat(text)
end
end

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 8) == prefix.."camlock" then wait(.1)
chat("gear me 4842190633")
wait(.5)
chat("respawn me")
say("EVERYONE'S CAM IS NOW LOCKED F O R E V E R")
say("also newcomers will be shiftlocked forever too xd")
end
end)

local ss = 0
game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 11) == prefix.."spamspeed " then wait(.1)
ss = string.sub(msg, 12)
notif("spam speed set to "..string.sub(msg, 12)..". this also applies to safespam")
end
end)

local spamming = false
game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 5) == prefix.."spam" then wait(.1)
spamming = true
spam(string.sub(msg, 7))
elseif msg == prefix.."unspam" then wait(.1)
spamming = false
end
end)

function spam(text)
while spamming == true do wait(ss)
game:GetService("Players"):Chat(text)
end
end

local ssloop = 50
game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 7) == prefix.."sspam " then wait(.1)
for i = 1,ssloop do
chat(""..string.sub(msg:lower(), 8).."")
wait(ss)
end
notif("safe spamming..")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 8) == prefix.."ssloop " then wait(.1)
ssloop = string.sub(msg, 9)
notif("safespam now repeats "..ssloop.." times")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."lag " then wait(.1)
local target = string.sub(msg:lower(), 6)
say("i feel bad for the server, it's gonna die a very slow and painful death :(")
say("also stopping the lag may take a while")
chat(prefix.."spam gear "..target.." 253519495")
elseif msg == prefix.."stopl" then wait(.1)
chat(prefix.."unspam")
wait(.1)
chat("respawn "..target)
wait(.1)
say("wow, the server survived!")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 3) == prefix.."f " then wait(.1)
local target = string.sub(msg:lower(), 4)
say("i will now use 0.1% of my power to try and eliminate "..target.." from this world")
chat("respawn "..target)
wait(.1)
chat("jail "..target)
wait(.1)
chat("punish "..target)
wait(.1)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
chat(prefix.."spam explode "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target.." "..target)
elseif msg == prefix.."stop" then wait(.1)
chat(prefix.."unspam")
wait(.3)
chat("removejails")
wait(.3)
chat("reset "..target)
wait(2)
chat("music")
say("nvm that was harder than i thought xd i need to recharge first")
end
end)

local floorkill = false
game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."floorkill " then wait(.1)
local target = string.sub(msg:lower(), 12)
say(plrname..", welcome to the infinite death.")
wait(.1)
floorkill = true
infspeedspam("speed "..target.." inf")
wait(.1)
elseif msg == prefix.."unfk" then wait(.1)
say("somehow i broke the loop cus you're a poor kid xd")
wait(.1)
floorkill = false
end
end)

function infspeedspam(text)
while floorkill == true do wait()
game:GetService("Players"):Chat(text)
end
end

local bangears = false
game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 10) == prefix.."bangears " then wait(.1)
local target = string.sub(msg, 11)
bangears = true
ungearspam("ungear "..target)
say("sorry "..plrname.." you cant gear now xd")
elseif msg == prefix.."unbg" then wait(.1)
bangears = false
say("wow u can now gear again :o")
end
end)

function ungearspam(text)
while bangears == true do wait()
game:GetService("Players"):Chat(text)
end
end


local players = game:GetService("Players")
local backpack = players.LocalPlayer:WaitForChild("Backpack")
local humanoid = players.LocalPlayer.Character:WaitForChild("Humanoid")

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 10) == prefix.."gearspam " then wait(.1)
local gearID = string.sub(msg, 11)

chat("ungear me")
repeat wait() until #backpack:GetChildren() == 0
notif("gearing..")
for i = 1,500 do
chat("gear me "..idhider..""..gearID)
end
wait(1)
notif("activating gears..")
for i,v in ipairs(backpack:GetChildren()) do
humanoid:EquipTool(v)
v:Activate()
end
wait(3)
chat("ungear me")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 7) == prefix.."coords" then wait(.1)
print(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
notif("see console for your current coordinates (the first three numbers are your coords)")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."goto " then
local coords = string.sub(msg:lower(), 7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(coords)
end
end)

-- music

local discofog = false
game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg, 0, 10) == prefix.."discofog " then wait(.1)
local int = string.sub(msg, 11)
discofog = true
chat("time 0")
wait(.1)
chat("fogend 200")
say("epilepsy warning")
wait(.1)
while discofog == true do
chat("fogcolor 255 0 0")
wait(int)
chat("fogcolor 240 0 15")
wait(int)
chat("fogcolor 225 0 30")
wait(int)
chat("fogcolor 210 0 45")
wait(int)
chat("fogcolor 195 0 60")
wait(int)
chat("fogcolor 180 0 75")
wait(int)
chat("fogcolor 165 0 90")
wait(int)
chat("fogcolor 150 0 105")
wait(int)
chat("fogcolor 135 0 120")
wait(int)
chat("fogcolor 120 0 135")
wait(int)
chat("fogcolor 105 0 150")
wait(int)
chat("fogcolor 90 0 165")
wait(int)
chat("fogcolor 75 0 180")
wait(int)
chat("fogcolor 60 0 195")
wait(int)
chat("fogcolor 45 0 210")
wait(int)
chat("fogcolor 30 0 225")
wait(int)
chat("fogcolor 15 0 240")
wait(int)
chat("fogcolor 0 0 255")
wait(int)
chat("fogcolor 15 15 240")
wait(int)
chat("fogcolor 30 30 225")
wait(int)
chat("fogcolor 45 45 210")
wait(int)
chat("fogcolor 60 60 195")
wait(int)
chat("fogcolor 75 75 180")
wait(int)
chat("fogcolor 90 90 165")
wait(int)
chat("fogcolor 105 105 150")
wait(int)
chat("fogcolor 120 120 135")
wait(int)
chat("fogcolor 135 135 120")
wait(int)
chat("fogcolor 150 150 105")
wait(int)
chat("fogcolor 165 165 90")
wait(int)
chat("fogcolor 180 180 75")
wait(int)
chat("fogcolor 195 195 60")
wait(int)
chat("fogcolor 210 210 45")
wait(int)
chat("fogcolor 225 225 30")
wait(int)
chat("fogcolor 240 240 15")
wait(int)
chat("fogcolor 255 255 0")
wait(int)
chat("fogcolor 255 240 0")
wait(int)
chat("fogcolor 255 225 0")
wait(int)
chat("fogcolor 255 210 0")
wait(int)
chat("fogcolor 255 195 0")
wait(int)
chat("fogcolor 255 180 0")
wait(int)
chat("fogcolor 255 165 0")
wait(int)
chat("fogcolor 255 150 0")
wait(int)
chat("fogcolor 255 135 0")
wait(int)
chat("fogcolor 255 120 0")
wait(int)
chat("fogcolor 255 105 0")
wait(int)
chat("fogcolor 255 90 0")
wait(int)
chat("fogcolor 255 75 0")
wait(int)
chat("fogcolor 255 60 0")
wait(int)
chat("fogcolor 255 45 0")
wait(int)
chat("fogcolor 255 30 0")
wait(int)             
chat("fogcolor 255 15 0")
wait(int) 
end
elseif string.sub(msg, 0, 11) == prefix.."undiscofog" then wait(.1)
discofog = false
chat("fix")
say("disco fog disabled")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == "!songlist" then wait(.1)
print("-------------------SONGLIST--------------------")
print("amogus[1-3] -- amogus drip based on volume, with 1 being the least sus and 3 being the most sus")
print("chill[1-2] -- play some relaxing tunes :)")
print("sadchill -- some chill but sad tunes to calm you down..")
print("cm[1-9] -- cinematic songs by really slow motion")
print("vibe[1-4] -- some vibe songs :)")
print("loud[1-3] -- blast people's ears with these")
print("retro[1-6] -- retrowave songs by home :D")
print("mov -- :(")
print("cat -- :D")
print("err -- dont crash the script!")
print("china -- the pyrocynical friends meme xd")
print("xhpp -- xue hao piao piao")
print("mario -- some loud ass mario music")
print("ab[1-2] -- angy bord theme")
print("bp[1-2] -- bad pigis theme")
print("resonance -- n o s t a l g i a ?")
print("foodshop -- that one music from eggdog diner xd")
print("ablesis -- t o m m y i n n i t")
print("speedrun -- you know what this is dont you")
print("21ch[1-3] -- shittiest memes of the 21st century")
print("lol -- literally just pure dying")
print("fnfmadness -- pennywise vs george")
print("fnfzavodila -- madness but 1% easier")
print("fnfballistic -- bombhead song")
print("doom -- major headbangs")
print("boss -- some cool rock id i copied from logs xd")
print("anthem -- OUR National Anthem.")
print("myrave[1-2] -- crab rave oof remix lmao")
print("tday1 -- day theme from terraria")
print("tday2 -- day theme from terraria but a bit louder")
print("pizza -- the pizza theme from spider man xd")
print("td -- the darkness by built by titan")
print("bf -- breaking free by built by titan")
print("secretaudio -- ...")
print("--------------------JOJO SECTION--------------------")
print("speb -- stand proud eurobeat")
print("dr -- dark rebirth")
print("np -- noble pope")
print("awaken -- pillar men theme")
print("st -- BRRRAKA MONOGA")
print("aweb -- AWAKEN EUROBEAT REMIX")
print("ebgt -- IL VENTO DORIFTO")
print("kira -- kira's theme lmao")
print("ktel -- kira's theme but in an elevator")
print("jt1 -- jotaro's theme")
print("jt2 -- josuke's theme")
print("ot -- okuyasu's theme")
print("gt -- yknow what this is")
print("--------------------NCS SECTION--------------------")
print("sg -- say goodbye by unknown brain")
print("dotm -- dancing on the moon by unknown brain")
print("wdi -- why do i by unknown brain")
print("p10 -- perfect 10 by unknown brain")
print("wwl -- why we lose by cartoon")
print("23 -- 23 by diamond eyes")
print("everything -- everything by diamond eyes")
print("flutter -- flutter by diamond eyes")
print("ho -- hold on by diamond eyes")
print("shivers -- shivers by netrum")
print("cb -- colorblind by netrum")
print("ac -- any closer by netrum")
print("lights -- lights by jim yosef")
print("lyg -- let you go by jim yosef")
print("fwm -- fall with me by jim yosef")
print("cd -- chasing dreams by jim yosef")
print("hwa -- here we are by laszlo")
print("ftl -- fall to light by laszlo")
print("sn -- supernova by laszlo")
print("wbh -- way back home by krys talk")
print("colors -- colors by tobu")
print("alibi -- alibi by distrion")
print("lost1 -- lost by lost sky")
print("wws -- where we started by lost sky")
print("vision -- vision by lost sky")
print("away -- away by subtact")
print("wy -- want you by subtact")
print("pain -- pain my max brhon")
print("inf -- infinite by valence")
print("bliss -- bliss by tari")
print("slow -- slow by diviners")
print("falling -- falling by diviners")
print("fa -- feel again by culture code")
print("swm -- stay with me by mendum")
print("is -- interstellar by au6")
print("ha -- happy accidents by inukshuk")
print("rl -- red line by anna yvette")
print("liu -- light it up by robin hustin")
print("cof -- chance on faith by uplink")
print("ss -- supersonic by rob gasser")
print("hope -- hope by retrovision")
print("dd2 -- double d by debris and dazers")
print("nw -- new world by kira")
print("lost2 -- lost by the eden project")
print("breathe -- breathe by glude")
print("castle -- castle by clarx")
print("js1 -- just stay by beatcore")
print("js2 -- joystick by jensation")
notif("press f9 for list of music commands")
end
end)

local lp = game:GetService("Players").LocalPlayer
local mps = game:GetService("MarketplaceService")
lp.Chatted:connect(function(msg)
if msg == prefix.."songinfo" then
local song = mps:GetProductInfo(tonumber(string.sub(game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId, 33)))
chat("h "..song.Name.." ")
print(song.Name.." "..song.AssetId)
setclipboard(song.AssetId.."")
notif("song id copied to clipboard, check console for song title and id")
end
end) 

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play amogus1" then wait(.1)
chat("music "..idhider.."6132224076")
say("just playing normal amogus.. nothing to be sus of")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play amogus2" then wait(.1)
chat("music "..idhider.."6105432316")
say("Playing loud amogus, now this is kinda sus")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play amogus3" then wait(.1)
chat("music "..idhider.."6490413778")
say("PLAYING THE MOST SUS AMOGUS, YOUR EARS SHALL BE DISCOMBOBULATED")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play mario" then wait(.1)
chat("music "..idhider.."315260005")
say("playing very loud mario music lol")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play china" then wait(.1)
chat("music "..idhider.."3956426561")
say("playing the chinese meme song from pyrocynical xd")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play xhpp" then wait(.1)
chat("music "..idhider.."5087235546")
say("playing xue hao piao piao")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play chill3" then wait(.1)
chat("music "..idhider.."6080083300")
say("playing c h i l l music vol.3.. feel free to relax :)")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play chill2" then wait(.1)
chat("music "..idhider.."2023642240")
say("play c h i l l music vol.3.. feel free to vibe ;)")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play chill1" then wait(.1)
chat("music "..idhider.."302574962")
say("play c h i l l music.. feel free to chill :>")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm1" then wait(.1)
say("playing end of an era by rsm..")
chat("music "..idhider.."1446760913")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm2" then wait(.1)
say("playing edge of eternity by rsm..")
chat("music "..idhider.."1444491420")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm3" then wait(.1)
say("playing take us higher by rsm..")
chat("music "..idhider.."1315794257")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm4" then wait(.1)
say("playing beyonder by rsm..")
chat("music "..idhider.."1329373804")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm5" then wait(.1)
say("playing event horizon by rsm..")
chat("music "..idhider.."2390406700")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm6" then wait(.1)
say("playing fight to the finish by rsm..")
chat("music "..idhider.."1595549437")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm7" then wait(.1)
say("playing internecine by rsm..")
chat("music "..idhider.."3088839908")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm8" then wait(.1)
say("playing fight for humanity by rsm..")
chat("music "..idhider.."5704888734")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cm9" then wait(.1)
say("playing avalanche by rsm..")
chat("music "..idhider.."2299636861")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play vibe1" then wait(.1)
say("this guy do be speaking facts tho")
chat("music "..idhider.."6928507308")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play vibe2" then wait(.1)
say("welcome to the come zone 😏")
chat("music "..idhider.."6842201548")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play vibe3" then wait(.1)
say("ayye vamos a vibrar con esta épica música mexicana")
chat("music "..idhider.."4748003994")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play vibe4" then wait(.1)
say("this one's actually a vibe")
chat("music "..idhider.."2993762545")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play loud1" then wait(.1)
say("idk what to say, just, enjoy")
chat("music "..idhider.."378096249")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play loud2" then wait(.1)
say("ok this one isn't actually that loud")
chat("music "..idhider.."4729946291")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play loud3" then wait(.1)
say("vroom vroom")
chat("music "..idhider.."634151277")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play loud4" then wait(.1)
say("kung fu panda")
chat("music "..idhider.."6595348473")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play loud5" then wait(.1)
say("does anyone know the title of this song")
chat("music "..idhider.."6924893453")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 14) == prefix.."play sadchill" then wait(.1)
chat("music "..idhider.."194833143")
say("playing sad chill music.. maybe there's a way i can cheer you up? :(")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play retro1" then wait(.1)
chat("music "..idhider.."741535255")
say("p l a y i n g r e s o n a n c e b y h o m e . .")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play retro2" then wait(.1)
say("playing we're finally landing by home..")
chat("music "..idhider.."3725167147")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play retro3" then wait(.1)
say("playing hold by home..")
chat("music "..idhider.."2827378468")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play retro4" then wait(.1)
say("playing pyxis by home..")
chat("music "..idhider.."418001129")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play retro5" then wait(.1)
say("playing head on by home..")
chat("music "..idhider.."1832907515")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play retro6" then wait(.1)
say("playing scanlines by home..")
chat("music "..idhider.."509289547")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play retro7" then wait(.1)
say("playing decay by home..")
chat("music "..idhider.."6519593980")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play retro8" then wait(.1)
say("playing oort cloud by home..")
chat("music "..idhider.."1104120163")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 14) == prefix.."play foodshop" then wait(.1)
chat("music "..idhider.."5612733610")
say("playing food shop from tomodachi life..")
say("share some food pls im hungry doing all your commands :(")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play ablesis" then wait(.1)
chat("music "..idhider.."6192048437")
say("playing able sisters from animal crossing..")
say("literally just tommyinnit.. hey you watch that too?")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 14) == prefix.."play speedrun" then wait(.1)
chat("music "..idhider.."6029210056")
say("fun fact: scientists say that when you listen to this song, your speed increases by 69%")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play 21ch1" then wait(.1)
chat("music "..idhider.."6922328844")
say("what would happen if everyone farded at once? 🤔")
wait(3.6)
say("lets find out 😳")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play 21ch2" then wait(.1)
say("sussy memes")
chat("music "..idhider.."5482009290")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play 21ch3" then wait(.1)
say("sussy memes pt.2!!1!11")
chat("music "..idhider.."7086024063")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play 21ch4" then wait(.1)
say("omg inapropir8 audio!!1!11!1!111")
chat("music "..idhider.."6658371729")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play 21ch5" then wait(.1)
say("nooo!1!1 edp445 eats big chungus!!11!1!11!1! 😤😤🤬 report1!1!11")
chat("music "..idhider.."6744186126")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play 21ch6" then wait(.1)
say("drem borgir review??1!1?!!1?!11")
chat("music "..idhider.."6755020402")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play err" then wait(.1)
say("Unfortunately, the script got toast for being cringe. The commands end here.")
chat("music "..idhider.."158964012")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play lol" then wait(.1)
say("just dont choke ok?")
chat("music "..idhider.."6924399169")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play ab1" then wait(.1)
say("playing angy bords lo qualty")
chat("music "..idhider.."6494818409")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play ab2" then wait(.1)
say("playing angy bords loud")
chat("music "..idhider.."5885368869")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play bp1" then wait(.1)
say("playing bad pigis")
chat("music "..idhider.."6472339966")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play bp2" then wait(.1)
say("playing pig drip 😎")
chat("music "..idhider.."6542800230")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play mov" then wait(.1)
say("playing mice on venus by c418..")
say("*cries*")
chat("music "..idhider.."4607680255")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cat" then wait(.1)
say("playing cat by c418..")
say("*dances*")
chat("music "..idhider.."5476362039")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 16) == prefix.."play fnfmadness" then wait(.1)
say("playing madness from fnf..")
say("e this makes me headbang so much")
chat("music "..idhider.."6529278552")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 17) == prefix.."play fnfzavodila" then wait(.1)
say("playing zavodila from fnf..")
say("like madness and ballistic this does me the headbangs a")
chat("music "..idhider.."6578243952")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 18) == prefix.."play fnfballistic" then wait(.1)
say("playing ballistic from fnf..")
say("one of the 3 songs i like the most from the game!")
chat("music "..idhider.."6401254298")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play doom1" then wait(.1)
say("PLAYING THE ONLY THING THEY FEAR IS YOU")
chat("music "..idhider.."5813352760")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play doom2" then wait(.1)
say("PLAYING BFG DIVISION")
chat("music "..idhider.."6712856805")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play boss" then wait(.1)
say("playing- why do i hear boss music")
chat("music "..idhider.."4492014664")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play anthem" then wait(.1)
say("Please rise for OUR National Anthem.")
chat("music "..idhider.."1064109642")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play subsurf" then wait(.1)
say("PLAYING SUBWAY SUFRERS THEME LOL")
chat("music "..idhider.."3275109968")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play myrave1" then wait(.1)
say("playing OOF rave")
chat("music "..idhider.."2590490779")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play myrave2" then wait(.1)
say("playing OOFlies")
chat("music "..idhider.."992136812")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play rage" then wait(.1)
say("PLAYING ANGRY KOREAN GAMER")
chat("music "..idhider.."445095775")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play tday1" then wait(.1)
say("playing terraria day..")
say("*space noises???*")
chat("music "..idhider.."153676740")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play tday2" then wait(.1)
say("playing terraria day..BUT HEKKIN LOUD")
say("*space noises..BUT IN A GODDAMN BLACKHOLE*")
chat("music "..idhider.."1299278500")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play pizza" then wait(.1)
say("playing pizza theme")
say("pizza time")
chat("music "..idhider.."2514889110")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 17) == prefix.."play secretaudio" then wait(.1)
chat("music")
say("playing secret audio..")
wait(9)
say("uhh.. it should've played by now..")
wait(3)
say("hold on im checking the script for errors..")
wait(3)
say("alright let's see..")
wait(2)
chat("music "..idhider.."2501673052")
wait(1.2)
for i = 1,30 do
chat("time 0")
chat("fogcolor 0 0 0")
chat("fogend 30")
end
say("OH NO.. IT'S THE VIRUS..")
for i = 1,1 do
chat("dog me")
wait(.1)
chat("creeper me")
wait(.1)
chat("ghost me")
wait(.1)
chat("rainbowify me")
end
chat("reset me")
wait(5)
say("THE SCRIPT IS INFECTED..")
for i = 1,3 do
chat("dog me")
wait(.1)
chat("creeper me")
wait(.1)
chat("ghost me")
wait(.1)
chat("rainbowify me")
end
chat("reset me")
wait(2)
say("HELP ME-")
for i = 1,5 do
chat("dog me")
wait(.1)
chat("creeper me")
wait(.1)
chat("ghost me")
wait(.1)
chat("rainbowify me")
end
chat("reset me")
wait(.3)
chat("fogend 20")
chat("colorshifttop 10000 0 0")
chat("colorshiftbottom 10000 0 0")
say("The end is here. Prepare yourselves.")
wait(3)
chat("clr")
chat("fix")
chat("music "..idhider.."2579579615") -- hmm... what is this? *thinking face emoji*
say("SIKE")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play td" then wait(.1)
say("playing the darkness by built by titan..")
chat("music "..idhider.."237470118")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play bf" then wait(.1)
say("playing breaking free by built by titan..")
chat("music "..idhider.."327801866")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play st" then wait(.1)
say("PLAYING STROHEIM'S THEME")
chat("music "..idhider.."1226516741")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play ot" then wait(.1)
say("PLAYING OKUYASU'S THEME")
chat("music "..idhider.."4565178415")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play dr" then wait(.1)
say("PLAYING DARK REBIRTH")
chat("music "..idhider.."2045276365")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play np" then wait(.1)
say("PLAYING NOBLE POPE")
chat("music "..idhider.."892277085")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play gt" then wait(.1)
chat("music "..idhider.."4417688795")
say("PLAYING GIORNO'S THEME")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play jt1" then wait(.1)
say("PLAYING JOTARO'S THEME")
chat("music "..idhider.."5031010706")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play jt2" then wait(.1)
say("PLAYING JOSUKE'S THEME")
chat("music "..idhider.."2480672843")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play awaken" then wait(.1)
say("PLAYING AWAKEN")
say("AYAYAYAYYY")
chat("music "..idhider.."627848963")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play aweb" then wait(.1)
say("PLAYING AWAKEN EUROBEAT REMIX")
chat("music "..idhider.."4694086718")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play kira" then wait(.1)
say("playing kira's theme..")
say("oh well, i hope i can play a peaceful game in this server..")
chat("music "..idhider.."2444413386")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play speb" then wait(.1)
say("PLAYING STAND PROUD EUROBEAT REMIX")
chat("music "..idhider.."5385305660")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play ebgt" then wait(.1)
say("PLAYING IL VENTO DORIFTO")
say("AAAAAAAAAAAAAAAAAAAAAAAA")
chat("music "..idhider.."4495057685")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play ktel" then wait(.1)
say("playing kira's theme.. but in an elevator lol")
say("kira just wants a peaceful elevator ride.")
chat("music "..idhider.."5679907631")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play sg" then wait(.1)
say("playing say goodbye by unknown brain..")
say("you know the rules, so say goodbye")
chat("music "..idhider.."4429302234")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play dotm" then wait(.1)
say("playing dancing on the moon by unknown brain..")
chat("music "..idhider.."6763134876")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play wdi" then wait(.1)
say("playing why do i by unknown brain..")
chat("music "..idhider.."1662469321")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play wwl" then wait(.1)
say("playing why we lose by cartoon..")
chat("music "..idhider.."1926002971")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play alibi" then wait(.1)
say("playing alibi by distrion..")
chat("music "..idhider.."5190857515")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play colors" then wait(.1)
say("playing colors by tobu..")
chat("music "..idhider.."5613736298")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play alone" then wait(.1)
say("playing alone by asketa & natan chaim..")
chat("music "..idhider.."3238426686")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play ftl" then wait(.1)
say("playing fall to light by laszlo..")
chat("music "..idhider.."2312917766")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play hwa" then wait(.1)
say("playing here we are by laszlo..")
chat("music "..idhider.."1270099291")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play dld" then wait(.1)
say("playing don't look down by laszlo..")
chat("music "..idhider.."329008103")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play sn" then wait(.1)
say("playing supernova by laszlo..")
chat("music "..idhider.."560344930")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play inf" then wait(.1)
say("playing infinite by valence..")
chat("music "..idhider.."661990096")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play 23" then wait(.1)
say("playing 23 by diamond eyes..")
chat("music "..idhider.."6454109499")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 16) == prefix.."play everything" then wait(.1)
say("playing everything by diamond eyes..")
chat("music "..idhider.."1613711615")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play flutter" then wait(.1)
say("playing flutter by diamond eyes..")
chat("music "..idhider.."2510363621")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play holdon" then wait(.1)
say("playing hold on by diamond eyes..")
chat("music "..idhider.."2999445029")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play wbh" then wait(.1)
say("playing way back home by krys talk..")
chat("music "..idhider.."4580786668")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play pain" then wait(.1)
say("playing pain by max brhon..")
chat("music "..idhider.."5932464246")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play wws" then wait(.1)
say("playing where we started by lost sky..")
chat("music "..idhider.."6533553218")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play lost1" then wait(.1)
say("playing lost by lost sky..")
chat("music "..idhider.."4403213713")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play lost2" then wait(.1)
say("playing lost by the eden project..")
chat("music "..idhider.."375144859")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play vision" then wait(.1)
say("playing vision by lost sky..")
chat("music "..idhider.."5932464246")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play outlaw" then wait(.1)
say("playing outlaw by it's different..")
chat("music "..idhider.."855766751")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play shadows" then wait(.1)
say("playing shadows by it's different..")
chat("music "..idhider.."644835635")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play shivers" then wait(.1)
say("playing shivers by netrum..")
chat("music "..idhider.."6474652862")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 11) == prefix.."play bliss" then wait(.1)
say("playing bliss by tari..")
chat("music "..idhider.."1206379754")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play slow" then wait(.1)
say("playing slow by diviners..")
chat("music "..idhider.."5626114687")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play liu" then wait(.1)
say("playing light it up by robin hustin..")
chat("music "..idhider.."2291227488")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play cof" then wait(.1)
say("playing chance on faith by uplink..")
chat("music "..idhider.."4933155578")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play lights" then wait(.1)
say("playing lights by jim yosef..")
chat("music "..idhider.."275848143")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play fwm" then wait(.1)
say("playing fall with me by jim yosef..")
chat("music "..idhider.."6274778525")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play lyg" then wait(.1)
say("playing let you go by jim yosef..")
chat("music "..idhider.."5161200071")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play cb" then wait(.1)
say("playing colorblind by netrum..")
chat("music "..idhider.."5769168263")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play fa" then wait(.1)
say("playing feel again by culture code..")
chat("music "..idhider.."2039114629")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play rl" then wait(.1)
say("playing red line by anna yvette..")
chat("music "..idhider.."3980717154")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play swm" then wait(.1)
say("playing stay with me by mendum..")
chat("music "..idhider.."299904692")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play ely" then wait(.1)
say("playing elysium by mendum..")
chat("music "..idhider.."870242868")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play cd" then wait(.1)
say("playing chasing dreams by jim yosef..")
chat("music "..idhider.."3422182559")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play ha" then wait(.1)
say("playing happy accidents by inukshuk..")
chat("music "..idhider.."940249266")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play tfg" then wait(.1)
say("playing too far gone by inukshuk..")
chat("music "..idhider.."1576204389")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play is" then wait(.1)
say("playing interstellar by au6..")
chat("music "..idhider.."5162677713")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play nw" then wait(.1)
say("playing new world by kira..")
chat("music "..idhider.."5559681751")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play ac" then wait(.1)
say("playing any closer by netrum..")
chat("music "..idhider.."6303250557")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play dd2" then wait(.1)
say("playing double d by debris and dazers..")
chat("music "..idhider.."2824198425")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play ns" then wait(.1)
say("playing new style by droptek..")
chat("music "..idhider.."5944781747")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play wy" then wait(.1)
say("playing want you by subtact..")
chat("music "..idhider.."6303237647")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play away" then wait(.1)
say("playing away by subtact..")
chat("music "..idhider.."4073212490")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play ruby" then wait(.1)
say("playing ruby by jim yosef and alex skrindo..")
chat("music "..idhider.."4954439384")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."play ss" then wait(.1)
say("playing supersonic by rob gasser..")
chat("music "..idhider.."1796267247")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."play hope" then wait(.1)
say("playing hope by retrovision..")
chat("music "..idhider.."2446563125")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 12) == prefix.."play castle" then wait(.1)
say("playing castle by clarx..")
chat("music "..idhider.."5046738115")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play breathe" then wait(.1)
say("playing breathe by glude..")
chat("music "..idhider.."394243013")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 14) == prefix.."play rseasons" then wait(.1)
say("playing seasons remix by rival, cadmium and futuristik..")
chat("music "..idhider.."1755270401")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."play falling" then wait(.1)
say("playing falling by diviners..")
chat("music "..idhider.."4924129997")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play js1" then wait(.1)
say("playing just stay by beatcore..")
chat("music "..idhider.."1278026963")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play js2" then wait(.1)
say("playing joystick by jensation..")
chat("music "..idhider.."878183240")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play c10" then wait(.1)
say("playing cloud 10 by fareoh..")
chat("music "..idhider.."549039708")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."play c10" then wait(.1)
say("playing perfect 10 by unknown brain..")
chat("music "..idhider.."2101578049")
end
end)

-- chars

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == "!charlist" then wait(.1)
print("noobgod -- me ofc")
print("titan -- chad titan from aot")
print("monke -- return to monke")
print("armor -- netherite titan")
print("ufo -- :OOO alien from area 51 visited me with granny and impostor!!1!11")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 10)
if string.sub(msg:lower(), 0, 9) == prefix.."noobgod " then wait(.1)
chat("removeclothes "..target)
chat("noob "..target)
chat("shirt "..target.." 6373120996")
chat("pants "..target.." 6373118206")
chat("hat "..target.." 6380274618")
chat("hat "..target.." 6097951179")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 9)
if string.sub(msg:lower(), 0, 8) == prefix.."heaven " then wait(.1)
chat("removeclothes "..target)
chat("paint "..target.." white")
chat("shirt "..target.." 3455586429")
chat("pants "..target.." 3455584452")
chat("hat "..target.." 6902333316")
chat("hat "..target.." 6964089847")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 6)
if string.sub(msg:lower(), 0, 5) == prefix.."rok " then wait(.1)
chat("removeclothes "..target)
chat("paint "..target.." brown")
chat("pants "..target.." 5802837580")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 8)
if string.sub(msg:lower(), 0, 7) == prefix.."monke " then wait(.1)
chat("music 512028153")
chat("char "..target.." 426455687")
say("return to monke")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 4) == prefix.."ufo" then
local target = string.sub(msg:lower(), 6)
game.Players:Chat("size "..target.." 0.3")
game.Players:Chat("size "..target.." 0.3")
game.Players:Chat("size "..target.." 0.3")
game.Players:Chat("size "..target.." 0.3")
game.Players:Chat("size "..target.." 0.3")
game.Players:Chat("size "..target.." 0.3")
game.Players:Chat("size "..target.." 0.3")
game.Players:Chat("unsize "..target)
game.Players:Chat("size "..target.." 4")
game.Players:Chat("paint "..target.." brown")
game.Players:Chat("name "..target.." Ufo")
wait(0.25)
game.Players:Chat("removelimbs "..target)
game.Players:Chat("dog "..target)
game.Players:Chat("rainbowify "..target)
game.Players:Chat("spin "..target)
chat("music 379117773")
chat("m omg guys i found among us ufo on roblox 2021 real not clickbait scary gone wrong dont do at 3am granny came to my house i became impostor O_O")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 8)
if string.sub(msg:lower(), 0, 7) == prefix.."titan " then wait(.1)
chat("music 854860112")
chat("char "..target.." 4")
wait(1)
chat("skydive "..target)
chat("paint "..target.." red")
chat("name "..target.." fat titan xd")
chat("size "..target.." 9")
chat("size "..target.." 9")
chat("speed "..target.." 00000000000000000024")
chat("shirt "..target.." 0000000000000000005890850361")
chat("pants "..target.." 0000000000000000005890811739")
chat("m OMG GUYS ITS FAT TITAN OoO ;-; SUSSY IMPOSTOR BAKA ONO HELP BUILD WALL")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 8)
if string.sub(msg:lower(), 0, 11) == prefix.."gigamonke " then wait(.1)
chat("music 6380379286")
chat("char "..target.." 4")
wait(1)
chat("skydive "..target)
chat("paint "..target.." pastel brown")
chat("name "..target.." MONKE TITAN POGGG")
chat("size "..target.." 9")
chat("speed "..target.." 00000000000000000024")
chat("shirt "..target.." 0000000000000000006473437501")
chat("pants "..target.." 0000000000000000006473440992")
chat("m YOOO IT'S MONKE MAN FROM LIZARD VS MONKE POGGERSSS")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 8)
if string.sub(msg:lower(), 0, 7) == prefix.."armor " then wait(.1)
chat("music 2305694707")
chat("char "..target.." 4")
wait(1)
chat("skydive "..target)
chat("paint "..target.." pastel brown")
chat("name "..target.." diamond armor titan :o")
chat("size "..target.." 9")
chat("speed "..target.." 00000000000000000024")
chat("shirt "..target.." 0000000000000000006055390141")
chat("pants "..target.." 0000000000000000006061244080")
chat("m ayo it's the diamond armor man from captain sparkles fallen kingdom vid omg big fan")
end
end)

-- gears

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == "!gearlist" then wait(.1)
print("allperis -- all types of peris")
print("allkatanas -- not really all katanas it's just like the peris where if you obtain every piece it becomes something special yeah it's like that")
print("allswords -- op swords")
print("allranged -- some ranged items")
print("allbombs -- boom")
print("btools -- just a replacement for btools")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 9)
if string.sub(msg:lower(), 0, 8) == prefix.."btools " then wait(.1)
chat("gear "..target.." "..idhider.."16200420")
chat("gear "..target.." "..idhider.."16201421")
chat("gear "..target.." "..idhider.."16200402")
chat("gear "..target.." "..idhider.."16201628")
chat("gear "..target.." "..idhider.."16200508")
chat("gear "..target.." "..idhider.."16200199")
chat("gear "..target.." "..idhider.."16200204")
chat("gear "..target.." "..idhider.."58880579")
chat("gear "..target.." "..idhider.."36431591")
chat("gear "..target.." "..idhider.."18474459")
say("note that the changes made by these tools do not affect other players.")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 11)
if string.sub(msg:lower(), 0, 10) == prefix.."allperis " then wait(.1)
chat("gear "..target.." "..idhider.."159229806")
chat("gear "..target.." "..idhider.."108158379")
chat("gear "..target.." "..idhider.."120307951")
chat("gear "..target.." "..idhider.."99119240")
chat("gear "..target.." "..idhider.."73829193")
chat("gear "..target.." "..idhider.."80661504")
chat("gear "..target.." "..idhider.."69499437")
chat("gear "..target.." "..idhider.."93136802")
say("all peris have now been added to your inventory")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 13)
if string.sub(msg:lower(), 0, 12) == prefix.."allkatanas " then wait(.1)
chat("gear "..target.." "..idhider.."18017365")
chat("gear "..target.." "..idhider.."25545089")
chat("gear "..target.." "..idhider.."18776718")
chat("gear "..target.." "..idhider.."21294489")
chat("gear "..target.." "..idhider.."20577851")
chat("gear "..target.." "..idhider.."22787168")
say("fun fact: press any keypad and a special sword will be in your inventory ;)")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 12)
if string.sub(msg:lower(), 0, 11) == prefix.."allranged " then wait(.1)
chat("gear "..target.." "..idhider.."125013830")
chat("gear "..target.." "..idhider.."90718505")
chat("gear "..target.." "..idhider.."1427401206")
chat("gear "..target.." "..idhider.."130113146")
chat("gear "..target.." "..idhider.."212296936")
chat("gear "..target.." "..idhider.."139578207")
chat("gear "..target.." "..idhider.."116693764")
chat("gear "..target.." "..idhider.."78005009")
chat("gear "..target.." "..idhider.."97885508")
chat("gear "..target.." "..idhider.."60357972")
chat("gear "..target.." "..idhider.."90718350") 
say("enjoy these guns")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 11)
if string.sub(msg:lower(), 0, 10) == prefix.."allbombs " then wait(.1)
chat("gear "..target.." "..idhider.."11999247")
chat("gear "..target.." "..idhider.."154727201")
chat("gear "..target.." "..idhider.."503955938")
chat("gear "..target.." "..idhider.."28277486")
chat("gear "..target.." "..idhider.."113299590")
chat("gear "..target.." "..idhider.."183665698")
chat("gear "..target.." "..idhider.."24839406")
chat("gear "..target.." "..idhider.."88885539")
chat("gear "..target.." "..idhider.."119101643")
chat("gear "..target.." "..idhider.."33383241")
say("haha inventory go boom")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
local target = string.sub(msg, 12)
if string.sub(msg:lower(), 0, 11) == prefix.."allswords " then wait(.1)
chat("gear "..target.." "..idhider.."108149175")
chat("gear "..target.." "..idhider.."101191388")
chat("gear "..target.." "..idhider.."77443461")
chat("gear "..target.." "..idhider.."77443491")
chat("gear "..target.." "..idhider.."268586231")
chat("gear "..target.." "..idhider.."1103011681")
chat("gear "..target.." "..idhider.."93136746")
chat("gear "..target.." "..idhider.."94794774")
chat("gear "..target.." "..idhider.."83704165")
chat("gear "..target.." "..idhider.."37816777")
chat("gear "..target.." "..idhider.."68539623")
chat("gear "..target.." "..idhider.."139574344")
chat("gear "..target.." "..idhider.."658805662")
chat("gear "..target.." "..idhider.."184757813")
chat("gear "..target.." "..idhider.."139578136")
say("wow ur samurai now nice")
end
end)

local lp = game:GetService("Players").LocalPlayer
local antimusic = false
lp.Chatted:connect(function(msg)
if msg == prefix.."antimusic on" then
song = game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound")
if song then
id = string.sub(song.SoundId, 33)
chat("h antimusic enabled, i can now enjoy my music in peace..")
antimusic = true
end
elseif msg == prefix.."antimusic off" then
chat("h antimusic disabled, everyone can play their songs again xd")
antimusic = false
end
end)

spawn(function()
while true do wait()
if antimusic == true then
local song = game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound")
if not song then
chat("h lol i have antimusic on xd")
chat("music "..idhider..""..id)
wait(.1)
else
if string.sub(song.SoundId, 33) ~= id then
chat("h lol i have antimusic on xd")
chat("music "..idhider..""..id)
wait(.1)
end
end
end
end
end)

local anticrash = false
game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."anticrash on" then wait(.1)
anticrash = not anticrash
notif("anticrash enabled")
end
end)

if anticrash == true then
for i, player in pairs(game:GetService("Players"):GetPlayers()) do
if player.Character then
if player.Character:FindFirstChild("VampireVanquisher") then
local plrname = player.Name
chat("ungear "..plrname)
chat("unsize "..plrname)
chat("h hey "..plrname.." why use vampire gear to crash the server? join our djsgord server for more professional crashes smh RP hv US y u zb")
else
chat("h hey "..plrname.." why use vampire gear to crash the server? join our djsgord server for more professional crashes smh RP hv US y u zb")
end
end
wait(0.28)
end
if player.Character:FindFirstChild("HumanoidRootPart") then
if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
local plrname = player.Name
chat("reset "..plrname)
chat("unclone "..plrname)
chat("h hey "..plrname.." why use vampire gear to crash the server? join our djsgord server for more professional crashes smh RP hv US y u zb")
else
chat("h hey "..plrname.." why use vampire gear to crash the server? join our djsgord server for more professional crashes smh RP hv US y u zb")
end
end
end


game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == "get rekt nerd" then wait(.1)
chat("music "..idhider.."5341775662")
chat("h press alt f4 to pay respects xdxdxd")
wait(5.2)
chat("music")
notif("congrats, you found one of the noobeggs! here's a cookie to celebrate")
chat("gear me 35684857")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 13) == "bing chilling" then wait(.1)
chat("music "..idhider.."6943574179")
notif("congrats, you found one of the noobeggs! have john xina's ice cream ;)")
chat("gear me 57902859")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 4) == "FARD" then wait(.1)
chat("music "..idhider.."4809574295")
wait(.1)
for i = 1,5 do wait()
chat("explode all")
end
wait(.6)
chat("music")
notif("congrats! you found the fard easter egg!")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 8) == "infinity" then wait(.1)
infnotif("as the saying goes, curiosity kills the cat. ;)")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 8) == "annoying popups" then wait(.1)
infnotif("as you wish, my lord.")
infnotif("as you wish, my lord.")
infnotif("as you wish, my lord.")
infnotif("as you wish, my lord.")
infnotif("as you wish, my lord.")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 16) == prefix.."paint all black" then
game.Players:Chat("gear me 00000000000000000018474459")
wait(1)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
wait(0.25)
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
Spawn(function()
if v:IsA("Part") then
local Partse =
{
["Part"] = v,
["Color"] = Color3.new(255,0,0)
}
game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
end
end)
end
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == "!themelist" then wait(.1)
print("day -- sunrise, sort of")
print("noon -- OH GOD IT'S SO BRIGHT")
print("night -- this one's pretty much the best")
print("space -- actually kinda cool")
print("astro -- space but with a s c e n s i o n")
print("universe -- ASTRO BUT YOU'LL GO TO THE EDGE OF THE FUCKING UNIVERSE")
print("retro -- synthwave/grid theme??") 
print("ntheme -- noob ofc")
print("fard -- LMFAO I LOVE HOW PPL IMMEDIATELY FIXES WITH THIS THEME")
print("hell -- wow hell nice")
print("darkrealm -- OH GOD IT'S SO DARK")
wait(.1)
notif("check console")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."darkrealm" then
chat(prefix.."paint all black")
wait(6)
chat("time 0")
wait()
chat("fogcolor 0 0 0")
chat("fogend 30")
wait()
chat("music "..idhider.."5154880218")
wait(.1)
chat("reset all")
chat("h Welcome to the Dark Realm.")
wait(2)
chat(prefix.."antimusic on")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."hell" then wait(.1)
chat("music "..idhider.."27697743")
chat("fix")
wait(.1)
chat("time 0")
chat("fogcolor 0 0 0")
chat("fogend 20")
chat("colorshifttop 10000 0 0")
chat("colorshiftbottom 10000 0 0")
wait(.1)
say("Server theme set to Hell.")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."fard" then wait(.1)
chat("music "..idhider.."6736759679")
wait(.1)
chat("fix")
wait(.1)
chat("fogcolor 150 75 25")
chat("fogend 50")
say("SERVER THEME SET TO FARDD XDXDXDXD FUNNY")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."ntheme" then wait(.1)
chat("fix")
wait()
chat("time 0")
chat("fogend 200")
chat("fogcolor 255 255 0")
wait()
chat("colorshifttop 255 255 0")
chat("colorshiftbottom 255 255 0")
wait()
chat("music "..idhider.."2590490779")
say("Server theme set to Noob :)")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."space" then wait(.1)
chat("fix")
wait(.1)
chat("music "..idhider.."4586671980")
chat("time 0")
chat("fogcolor 0 175 250")
chat("fogend 200")
wait(.1)
say("Server theme set to Space :O")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."astro" then wait(.1)
chat("fix")
wait(.1)
chat("music "..idhider.."2134066102")
chat("time 0")
chat("fogcolor 0 175 250")
chat("fogend 200")
wait(.1)
chat("stun all")
wait(.5)
chat("setgrav all -253")
say("Server theme set to Space, but we ascend as well :O")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."universe" then wait(.1)
chat("fix")
wait(.1)
chat("music "..idhider.."1299278500")
chat("time 0")
chat("fogcolor 0 175 250")
chat("fogend 0")
wait(.1)
chat("stun all")
wait(.5)
chat("setgrav all -999")
say("SERVER THEME SET TO UNIVERSE WHERE THE HECK ARE WE GOING")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."retro" then wait(.1)
chat("fix")
wait()
chat("time 4")
chat("outdoorambient 135 8 186")
chat("fogcolor 135 8 186")
chat("fogend 200")
wait()
chat("music "..idhider.."741535255")
say("Server theme set to Retro :)")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."scotland" then wait(.1)
chat("music "..idhider.."6963646672")
chat("fix")
wait(.1)
chat("fogcolor 0 175 250")
chat("fogend 100")
wait(.1)
say("SERVER THEME SET TO SCOTLAND")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."fire" then wait(.1)
chat("fix")
wait()
chat("time 0")
chat("outdoorambient 255 69 0")
chat("colorshiftbottom 255 69 0")
chat("colorshifttop 255 69 0")
wait()
chat("fogcolor 255 69 0")
chat("fogend 150")
chat("music "..idhider.."6712856805")
say("SERVER THEME SET TO FIREEE >:D")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."night" then wait(.1)
chat("fix")
wait()
chat("time 4")
chat("outdoorambient 000 000 111")
chat("music "..idhider.."4048226747")
say("Server theme set to Night :)")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."noon" then wait(.1)
chat("fix")
wait()
chat("time 12")
chat("outdoorambient 255 248 220")
chat("music "..idhider.."3048805264")
say("Server theme set to Noon :)")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 4) == prefix.."day" then wait(.1)
chat("fix")
wait()
chat("time 6.17")
chat("outdoorambient 200 150 0")
chat("music "..idhider.."2669493892")
say("Server theme set to Day :)")
end
end)
