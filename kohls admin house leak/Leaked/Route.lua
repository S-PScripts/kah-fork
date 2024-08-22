-- Settings

getgenv().prefix = '-'

local Loopgrabber = false
local perm = false

-- Services

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local g = getgenv()
local CONS = {}
local connections = {}

function chat(msg)
   game.Players:Chat(msg)
end

-- Vars

local list = {}
local loops = {}
local Loops = {}

function dcrash()
   for i = 1, 50 do
      game.Players:Chat("dog all all all")
   end
   for i = 1, 50 do
      game.Players:Chat("clone all all all")
   end
   while task.wait() do
      game.Players:Chat("clone all all all")
   end
end

function fixpaint()
   loadstring(game:HttpGet(
                  "https://raw.githubusercontent.com/DIZZYTHELEGEND/Zmod/main/betterfixcolor"))()
end

-- Ima use techs pad grabber thats faster because like yeah its better imo, the old version is still an option

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local state = false

function option(text, color, time, callback)
   Notification:Notify(
      { Title = "Route", Description = text },
      { OutlineColor = color, Time = time, Type = "option" },
      {
         Image = "rbxassetid://16754163547",
         ImageColor = Color3.fromRGB(52, 50, 201),
         Callback = function(State)
            state = State
            callback(state)
         end
      }
   )
end

task.spawn(function()
    while true do
        task.wait()
        coroutine.wrap(function() -- LoopGrab
            if Loopgrabber then
                local pads = adminFlr.Pads:GetChildren()
                for _, pad in pairs(pads) do
                    coroutine.wrap(function()
                        pcall(function()
                            local head = pad:FindFirstChild("Head")
                            if head then
                                local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                                firetouchinterest(head, spr, 1)
                                firetouchinterest(head, spr, 0)
                                firetouchinterest(head, spr, 1)
                                task.wait()
                                firetouchinterest(head, spr, 0)
                                
                                if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
                                    fireclickdetector(adminFlr.Regen.ClickDetector)
                                end
                            end
                        end)
                    end)()
                end
            end
        end)()
        
        coroutine.wrap(function()
            if perm and adminFlr.Pads:FindFirstChild(game.Players.LocalPlayer.Name.."'s admin") == nil then
                pcall(function()
                    local pad = adminFlr.Pads:FindFirstChild("Touch to get admin")
                    if pad then
                        local head = pad:FindFirstChild("Head")
                        if head then
                            local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                            firetouchinterest(head, spr, 1)
                            firetouchinterest(head, spr, 0)
                            firetouchinterest(head, spr, 1)
                            task.wait()
                            firetouchinterest(head, spr, 0)
                        end
                    end
                end)
            end
        end)()
    end
end)




task.spawn(function()
   while true do
      task.wait(0)
      if regenfind == true then
         local root = game.Players.LocalPlayer.Character.HumanoidRootPart
         root.Anchored = true
         repeat
            wait(.15)
            root.CFrame = CFrame.new(-7.165, root.Position.Y + 2500, 94.743)
         until workspace.Terrain._Game.Admin:FindFirstChild("Regen") or regenfind == false
         root.Anchored = false
         root.CFrame = workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0, 3, 0)
         regenfind = false
         game.Players:Chat("respawn me")
      end
   end
end)

if (Request == "all" or Request == "others" or Request == "everyone") then

elseif (Request == "friends") then
   game.Players:Chat(":tp friends me")
end

function regen()
   fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end

local function getNAME(name)
   local FoundPlayers = {}
   local LowerName = name:lower()

   if LowerName == "me" then
       FoundPlayers = {Player}
   elseif LowerName == "all" then
       FoundPlayers = PlayerService:GetPlayers()
   else
       for PlayerI, Player in pairs(PlayerService:GetPlayers()) do
           if Player.Name:lower():find("^" .. name:lower()) then
               table.insert(FoundPlayers, Player)
           end
       end
   end

   return FoundPlayers
end

local function clearLogs()
   game.Players:Chat("ff " .. ("⬛"):rep(36) .. "\n" .. ("⬛"):rep(37) .. ("⬛"):rep(36) .. "\n" .. ("⬛"):rep(37))
end


function say(msg)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

function OSclose()
   game.Players:Chat("gear me 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000094794847")
   repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
   game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher").Parent = game.Players.LocalPlayer.Character
   repeat wait() until not game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Coffin")
   repeat wait() until game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Remote")
   game.Players.LocalPlayer.Character.VampireVanquisher.Remote:FireServer(Enum.KeyCode.Q)
   for i = 1, 100 do
      game.Players:Chat("size me 0.3")
   end
end

function CheckForCrash()
   local Ping1 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
   task.wait(3.2)
   local Ping2 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
   if (Ping1 == Ping2) then
      return true
   else
      return false
   end
end

function notif(text, color, time)
   Notification:Notify(
      { Title = "Violet", Description = text },
      { OutlineColor = color, Time = time, Type = "Default" }
   )
end

local commands = {}
local function cmd(cmd, discr, action)
   local commandList = cmd:split(", ")
   for _, cmd in ipairs(commandList) do
      commands[cmd] = { discr = discr, action = action }
      table.insert(list, { name = cmd, description = discr })
   end
end

cmd("cmds", "List all available commands using print", function()
   game.Players.LocalPlayer.PlayerGui["Dizzys List Lib"].TopBar.Visible = true
end)

cmd("pfx, prefix", "Changes your prefix with arg2!", function(arg2)
   prefix = arg2
   notif("Prefix set to: " .. prefix, Color3.fromRGB(160, 32, 240), 2)
end)

cmd("regen, reg", "Regens the admin pads", function()
   regen()
   notif("Regenerated pads", Color3.fromRGB(160, 32, 240), 2)
end)
cmd("nok, noobbykill", "Walk on the obby without dying", function()
   nok(2)
   notif("No Obby Kill has been Enabled", Color3.fromRGB(160, 32, 240), 2)
end)

cmd("test, t", "Testing", function()
   notif("Works", Color3.fromRGB(160, 32, 240), 2)
end)

cmd("notifier, messagenotifier", "Toggles Anti-Abuse", function()
   ChatNotif = not ChatNotif
   local status = ChatNotif and "enabled" or "disabled"
   notif("Notifier is now " .. status .. ".", Color3.fromRGB(100, 200, 255), 3)
end)

cmd("grab, get,findgear", "Grabs the specified tool name [arg2]", function(args)
   if #args < 2 then
       return
   end
   
   local fixer = table.concat(args, " ", 2)
   local url = "https://catalog.roblox.com/v1/search/items/details?Category=11&Subcategory=5&Limit=10&CreatorName=Roblox&Keyword=" .. HttpService:UrlEncode(fixer)

   local success, response = pcall(function()
       return game:HttpGet(url)
   end)

   if success then
       local decode = HttpService:JSONDecode(response)
       if decode and decode.data and decode.data[1] and decode.data[1].id then
           local gearId = decode.data[1].id
           Players:Chat("gear me " .. tostring(gearId))
       end
   end
end)

cmd("antikill, autorespawn", "Auto respawns when u die", function()
   while task.wait() do
      game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function() if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
            game.Players:Chat("reset me")
            game.Players:Chat("god me")
         end end)
   end
end)

cmd("collect", "Slenderman pages (plr)", function(arg1)
   local players = getNAME(arg1)
     chatshit("invis me")
    chatshit("music 00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000202501610")
    chatshit("invis me")
    chatshit("!findhat me slenderman")
    chatshit("fogend 100")
    chatshit("fogcolor 0 0 0")
    chatshit("speed ".. players[1] .." 0")
    chatshit("speed me 50")
    game.Players:Chat("size me 2")
    wait(0.2)
game.Players.LocalPlayer.Character.Humanoid:MoveTo(players.Character.HumanoidRootPart.Position)
chatshit("invis me")
chatshit("invis me")
chatshit("!findhat me slenderman")
chatshit("pm/".. players[1] .. " COLLECT MY PAGES BUDDY")
chatshit("pm/".. players[1] .. " COLLECT MY PAGES BUDDY")
chatshit("pm/".. players[1] .. " COLLECT MY PAGES BUDDY")
chatshit("pm/".. players[1] .. " COLLECT MY PAGES BUDDY")
chatshit("pm/".. players[1] .. " COLLECT MY PAGES BUDDY")
wait(1)
chatshit("pm/".. players[1] .. " Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")
chatshit("pm/".. players[1] .." Its not too late")

task.wait(9)
chatshit("blind ".. players[1])
chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")

chatshit("".. players[1] .." I got you now")
chatshit("".. players[1] .." I got you now")


chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")


chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")

chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")
chatshit("pm/".. players[1] .." I got you now")
wait(1)
chatshit("fling ".. v.Name)
chatshit("fling ".. v.Name)

chatshit("fling ".. v.Name)

chatshit("fling ".. v.Name)

chatshit("fling ".. v.Name)

chatshit("fling ".. v.Name)

chatshit("fling ".. v.Name)
chatshit("fling ".. v.Name)
chatshit("fling ".. v.Name)
chatshit("fling ".. v.Name)

chatshit("fix")
chatshit("clr")
    end)

cmd("fixregen, fixreg", "Fixes regen pad", function()
end)
cmd("tohouse, house", "Teleports you to house", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28.3467445, 8.22999954, 73.5216293)
end)

local musictable = {
   ["1"] = {id = "6680495507", name = "Robbery"},
   ["2"] = {id = "6772846771", name = "7H0T"},
   ["3"] = {id = "6781116057", name = "Deja Vu"},
   ["4"] = {id = "1837871444", name = "Anarchy"},
   ["5"] = {id = "6897686359", name = "Broadway"},
   ["6"] = {id = "6695430066", name = "Unknown"},
   ["7"] = {id = "6872126938", name = "Surf Curse"},
   ["8"] = {id = "6788646778", name = "Rare Gem"},
   ["9"] = {id = "6847929757", name = "Lonely"},
   ["10"] = {id = "6953866301", name = "Unknown"},
   ["11"] = {id = "7014573768", name = "Money Real Long"},
   ["12"] = {id = "8997664593", name = "Unknown"},
   ["13"] = {
       id = "15689455422",
       name = "kirkiimad - i love (slow+reverb version)"
   },
   ["14"] = {id = "5410086218", name = "Crabrave"},
   ["15"] = {id = "6828176320", name = "Unknown"},
   ["16"] = {id = "6703926669", name = "Unknown"},
   ["17"] = {id = "6937042327", name = "Stunning"},
   ["18"] = {id = "6670954642", name = "Unknown"},
   ["19"] = {id = "6845637094", name = "Legends"},
   ["20"] = {id = "6805032026", name = "KILL BILL (Fast)"},
   ["21"] = {id = "13530437708", name = "Phonk 1 - The Final Phonk"},
   ["22"] = {id = "6708444383", name = "Met her on the internet"},
   ["23"] = {id = "7027334622", name = "Hushabye"},
   ["25"] = {id = "9043918359", name = "Stay Dangerous"},
   ["26"] = {id = "6924735395", name = "Get you (Slowed)"},
   ["27"] = {id = "6911766512", name = "Phonk 2"},
   ["28"] = {id = "1840003540", name = "Tell it to yourself"},
   ["29"] = {id = "9042523170", name = "Come Closer"},
   ["30"] = {id = "1846808350", name = "Get up and Boogie"},
   ["31"] = {id = "9047105533", name = "DIZZY - Lofi"}, -- So epic ngl
   ["32"] = {id = "9048375035", name = "All dropping 8 beats"},
   ["33"] = {id = "6529070845", name = "Brace Yourself"},
   ["34"] = {id = "6917155909", name = "They trying to be cray"},
   ["35"] = {id = "6913550990", name = "TLT FNAF 2"},
   ["36"] = {id = "1839029458", name = "Exotico Speedo"},
   ["37"] = {id = "35930009", name = "Monster Mash"},
   ["38"] = {id = "11808880515", name = "women song"},
   ["39"] = {id = "6681840651", name = "What?!"},
   ["40"] = {id = "1841647093", name = "Life in an Elevator"},
   ["41"] = {id = "1837070127", name = "Prima Bossa"},
   ["42"] = {id = "6806140478", name = "Night Lights"},
   ["43"] = {id = "2042581436", name = "annoying citizen"},
   ["44"] = {id = "8147012902", name = "gigachad loop"},
   ["45"] = {id = "6893776529", name = "Plasdu & 1006x3 - Kroxxxxroadxx"},
   ["46"] = {id = "9124780123", name = "Miss the rage Loop (Sparo Loop)"},
   ["47"] = {id = "142376088", name = "Raining Tacos"},
   ["48"] = {id = "1846368080", name = "Stadium Rave (A)"},
   ["49"] = {id = "1840511219", name = "Funky Fanfare"},
   ["50"] = {id = "1839404854", name = "Rock In"},
   ["51"] = {id = "6674211522", name = "Loud music fail"},
   ["52"] = {id = "6984999899", name = "AAAAAAAAAAAAAAAAAAAAA"},
   ["53"] = {id = "1838097718", name = "Royal Dedication"},
   ["54"] = {id = "9038845849", name = "dubstep"},
   ["55"] = {id = "1843622301", name = "Mumbai Moon"},
   ["56"] = {id = "14145627857", name = "Catch My Drift"},
   ["57"] = {id = "14145624031", name = "Phonk Vol. 1"},
   ["58"] = {id = "13530438299", name = "stop posting about baller"},
   ["59"] = {id = "6770303644", name = "Minecraft Chest"},
   ["60"] = {id = "6783714255", name = "Brooklyn blood bop"},
   ["61"] = {id = "1838028467", name = "VIP Me"},
   ["62"] = {id = "1848354536", name = "chill back"},
   ["63"] = {id = "45819151", name = "sad depressing music 4am"},
   ["64"] = {id = "5410085763", name = "TOKYO MACHINE - PLAY!"},
   ["65"] = {id = "16190783444", name = "CHIPI CHIPI CHAPA CHAPA"},
   ["66"] = {id = "16190782786", name = "Lil Kuudere X sukoyomi"},
   ["67"] = {id = "6844230235", name = "WHAT THE HELL"},
   ["68"] = {id = "15689451063", name = "Interworld - Metamorphosis"},
   ["69"] = {id = "1841668624", name = "Have a Lazy Day a"},
   ["70"] = {id = "1848350335", name = "Desert Sands"},
   ["71"] = {id = "1837853076", name = "SEE YOU IN HELL!"},
   ["72"] = {id = "1838635121", name = "Sad End"},
   ["73"] = {id = "6841685130", name = "ButtonPress_53"},
   ["74"] = {id = "1839817591", name = "Animation Opening"},
   ["75"] = {id = "1837879082", name = "Paradise Falls"},
   ["76"] = {id = "1837392641", name = "Cannibal Collection"},
   ["77"] = {id = "6901063458", name = "Rihanna - SOS"},
   ["78"] = {id = "16662831858", name = "WahRA - Idk Remix"},
   ["79"] = {id = "15689440479", name = "Phonk"},
   ["80"] = {id = "1840006904", name = "Tricky"},
   ["81"] = {id = "17422208483", name = "Drama"},
   ["82"] = {id = "16190758325", name = "Unknown"},
   ["82"] = {id = "15689441772", name = "Phonk"},
   ["83"] = {id = "6889574376", name = "Unknown"},
   ["84"] = {id = "6991661856", name = "Unknown"},
   ["85"] = {id = "6969006426", name = "Unknown"},
   ["86"] = {id = "16190757458", name = "Actual Brainrot Potion"},
   ["87"] = {id = "6831109213", name = "Unknown"}

}

cmd("pmusic, music, msc", "Sets a song to play", function(arg1)
   local song = musictable[arg1]
   if song then
       chat("music 000000000000000000000000000000000000000000000" .. song.id)
       chat("h \n\n\n\n\n\n\nNow Playing\n\n" .. song.name)
       if arg1 == "1" or arg1 == "3" then
           wait(0.4)
           chat(prefix .. "time 8")
     end
   else
       notif("Music with audio num " .. arg1 .. " was not found?",
             Color3.fromRGB(255, 0, 0), 3)
   end
end)

cmd("fixcam, fixc", "Fixes your camera from funny and cam breakers", function()
   local lp = game.Players.LocalPlayer
   local ui = game:GetService("UserInputService")
   local contextActionService = game:GetService("ContextActionService")
   local runService = game:GetService("RunService")

   contextActionService:UnbindAction("ShoulderCameraSprint")
   runService:UnbindFromRenderStep("ShoulderCameraUpdate")
   contextActionService:UnbindAction("ShoulderCameraZoom")

   while true do
       wait()

       repeat runService.Heartbeat:Wait() until game.Workspace.CurrentCamera
           .CameraType == Enum.CameraType.Scriptable

       runService:UnbindFromRenderStep("ShoulderCameraUpdate")
       contextActionService:UnbindAction("ShoulderCameraZoom")
       contextActionService:UnbindAction("ShoulderCameraSprint")

       local weaponSystem = game:GetService("ReplicatedStorage")
                                :FindFirstChild("WeaponsSystem")
       if not weaponSystem then return end

       for _, v in pairs(weaponSystem:GetDescendants()) do
           if v:IsA("Script") then v.Disabled = true end
           v:Destroy()
       end

       local weaponScript = lp.PlayerGui:FindFirstChild("ClientWeaponsScript")
       local weaponGui = lp.PlayerGui:FindFirstChild("WeaponsSystemGui")
       local clientWeaponScript = lp.PlayerScripts:FindFirstChild(
                                      "ClientWeaponsScript")

       if weaponScript then
           weaponScript.Disabled = true
           weaponScript:Destroy()
       end

       if weaponGui then weaponGui:Destroy() end

       if clientWeaponScript then
           clientWeaponScript.Disabled = true
           clientWeaponScript:Destroy()
       end

       game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior
                                                               .Default
       ui.MouseIconEnabled = true
       lp.CameraMaxZoomDistance = 999995897345554
       lp.CameraMinZoomDistance = 0.5

       local camera = game:GetService("Workspace"):FindFirstChild("Camera")
       if camera then camera.FieldOfView = 70 end

       game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
       game.Workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid
       lp.Character.Humanoid.AutoRotate = true

       notif("Fixed Cam", Color3.fromRGB(100, 200, 255), 3)
   end
end)

cmd("fixpaint, fixp", "Fixes the map colors", function()
   fixpaint()
   notif("Fixed Paint.", Color3.fromRGB(100, 200, 255), 3)
end)

cmd("messp, messpaint", "Changes the map color with random colors", function()
   notif("Messed Paint.", Color3.fromRGB(100, 200, 255), 3)
   loadstring(game:HttpGet(
                  "https://raw.githubusercontent.com/DIZZYTHELEGEND/Zmod/main/messpaint"))()
end)

cmd("sweep, clean", "Cleans up the map", function()
   chat(
       "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n~ Route ~\n\n\nSWEEP\n\nSWEEP\n\nSWEEP!\n\n\n\nCleaning map!")
   chat("fix")
   chat("clr")
   chat(prefix .. "fixpaint shit")
   notif("Done!", Color3.fromRGB(100, 200, 255), 3)
end)

-- Crash Related
cmd("vgc, vgcrash, vampirecrash",
   "Crashes the server using the Vampire Vanquisher Gear",
   function() vcrash() end)

cmd("silc, silcrash, silentcrash", "Silently Crashes the server with no tools",
   function() scrash() end)

cmd("tcrash, tempcrash, tempc", "Silently TEMP Crashes the server with no tools",function(arg1) 
   tempcrash(tonumber(arg1)) 
end)

cmd("p2c, personc, personcrash", "Silently Crashes the server with no tools",
   function() pscrash() end)

cmd("viruscrash, vircrash", "basically another silent crash", function()
   game.Players:Chat("music 0000000000000000000007266001792")
   game.Players:Chat("h n\n\n\n\n\n\n\n\n\nYoU ArE an\nI\nD\nI\nO")
   game.Players:Chat("h n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nT")
   task.wait(1)
   game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
   task.wait(0.5)
   game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
   task.wait(0.5)
   game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
   task.wait(0.5)
   game.Players:Chat(
       "h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
   task.wait(2)
   for i = 1, 12 do
       chat("freeze all all all           shit")
       chat("dog all all all                   shit")
   end
   while true do
       task.wait()
       chat("clone all all all            shit")
   end
end)

cmd("time, skip", "allows you to skip to a certain time in the song",
    function(arg1)
    local sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
    sound.TimePosition = arg1
    notif("Music has been skipped to: " .. arg1, Color3.fromRGB(100, 200, 255),
          3)
end)

cmd("vol, volume", "allows you to skip to a certain time in the song",
    function(arg1)
    local sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
    sound.Volume = arg1
    notif("Music Volume has been set to: " .. arg1,
          Color3.fromRGB(100, 200, 255), 3)
end)

cmd("pitch, mspeed", "allows you to skip to a certain time in the song",
    function(arg1)
    local sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
    sound.PlaybackSpeed = arg1
    notif("Music Pitch has been set to: " .. arg1,
          Color3.fromRGB(100, 200, 255), 3)
end)



cmd("antiblgears, blgears", "Toggles the Anti-BlacklistedGears", function()
   if not g.AntiBlacklistgr then
       g.AntiBlacklistgr = true
       notif("Anti-BlacklistedGears is now enabled.",
             Color3.fromRGB(100, 200, 255), 3)
       repeat
           game:GetService("RunService").RenderStepped:Wait()
           pcall(function()
               for _, player in pairs(game.Players:GetPlayers()) do
                   spawn(function()
                       local backpack = player.Backpack
                       if backpack then
                           for _, gear in ipairs(backpack:GetChildren()) do
                               if gear:IsA("Tool") and
                                   Blacklistedgear(gear.Name) then
                                   gear:Destroy()
                                   chat("respawn " .. player.Name)
                                   notif(
                                       "Someone attempted to use a Blacklisted gear: " ..
                                           player.Name,
                                       Color3.fromRGB(100, 200, 255), 4)

                                   break
                               end
                           end
                       end
                   end)
               end
           end)
       until not g.AntiBlacklistgr
   else
       g.AntiBlacklistgr = false
       notif("Anti-BlacklistedGears is now disabled.",
             Color3.fromRGB(100, 200, 255), 3)
   end
end)

cmd("unantivg, noantivg", "Disables anticrash", function()
   Loops.antiservercrash = false
end)


cmd("findregen, fregen", "Gives u free perm", function()
   regenfind = true
end)

cmd("unfindregen, nofregen", "Gives u free perm", function()
   regenfind = false
end)

cmd("ref, re", "Short command for reload", function(arg1) --<<< ill fix this
   	local pos = game.Workspace[LocalPlayer.Name].HumanoidRootPart.CFrame
    wait(0.1)
    chat("unchar me")
    wait(0.25)
    LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)

cmd("bring", "Short command for tp [plr] me", function(arg1) --<< Same here
   local players = getNAME(arg1)
         game.Players:Chat("tp " .. players[1].Name .. " me")
   end)

cmd("goto", "Short command for tp me [plr]", function(arg1) --<<< why do you need an argument |
   local players = getNAME(arg1)
         game.Players:Chat("tp me " ..players[1].Name) --<<< tp me already gets the closest player     |
   end)

cmd("vampirecrash, vgcrash", "Crashes the server using vampire gear medthod", function()
   OSclose()
end)

cmd("perm2, autoadmin2", "Gives you another free perm incase the other one stops working (Worse tho)", function()
   while true do
      if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
         if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
            local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin")
            :FindFirstChild("Head")
            local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(
            "Touch to get admin"):FindFirstChild("Head").CFrame
            task.wait()
            pad.CanCollide = false
            repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            task.wait()
            pad.CFrame = padCFrame
            pad.CanCollide = true
         else
            fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
         end
      end

      task.wait()
   end
end)

cmd("antiblgears, blgears", "Toggles the Anti-BlacklistedGears", function()
   if not g.AntiBlacklistgr then
       g.AntiBlacklistgr = true
       notif("Anti-BlacklistedGears is now enabled.",
             Color3.fromRGB(100, 200, 255), 3)
       repeat
           game:GetService("RunService").RenderStepped:Wait()
           pcall(function()
               for _, player in pairs(game.Players:GetPlayers()) do
                   spawn(function()
                       local backpack = player.Backpack
                       if backpack then
                           for _, gear in ipairs(backpack:GetChildren()) do
                               if gear:IsA("Tool") and
                                   Blacklistedgear(gear.Name) then
                                   gear:Destroy()
                                   chat("respawn " .. player.Name)
                                   notif(
                                       "Someone attempted to use a Blacklisted gear: " ..
                                           player.Name,
                                       Color3.fromRGB(100, 200, 255), 4)

                                   break
                               end
                           end
                       end
                   end)
               end
           end)
       until not g.AntiBlacklistgr
   else
       g.AntiBlacklistgr = false
       notif("Anti-BlacklistedGears is now disabled.",
             Color3.fromRGB(100, 200, 255), 3)
   end
end)
-- Given to Exfamous by DIZZY, leaking this makes you gay and if you use this and you are NOT Exfamous then kys
cmd("antim, antipm, antipmkick", "Toggles anti-pm", function()
   if not g.AntiPM then
       g.AntiPM = true
       notif("Anti-PM is now enabled.", Color3.fromRGB(100, 200, 255), 3)
       while g.AntiPM do
           for i, v in pairs(
                           game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
               if v.Name == "MessageGUI" or v.Name == "Message" or v.Name ==
                   "HintGUI" or v.Name == "Ice" then v:Destroy() end
           end
           for i, v in pairs(
                           game.Workspace.Terrain["_Game"].Folder:GetDescendants()) do
               if v.Name == "Message" then v:Destroy() end
           end
           task.wait()
       end
   else
       task.wait()
       g.AntiPM = false
       notif("Anti-PM is now disabled.", Color3.fromRGB(100, 200, 255), 3)
   end
end)

g.antirocc = false

cmd("antirocket, antiroc", "Toggles Anti-Rocket", function()
   if not antirocc then
       antirocc = true
       notif("Anti-rocket is now enabled", Color3.fromRGB(100, 200, 255), 3)
       while antirocc do
           task.wait()
           for _, p in ipairs(game.Players:GetPlayers()) do
               local character = p.Character
               if character then
                   local rocket = character:FindFirstChild("Rocket")
                   while rocket do
                       rocket:Destroy()
                       rocket = character:FindFirstChild("Rocket")
                   end
               end
           end
       end
   else
       antirocc = false
       notif("Anti-rocket is now disabled", Color3.fromRGB(100, 200, 255), 3)
   end
end)

cmd("antiplant", "Toggles Anti-BitePlant", function()
   g.antiplant = not g.antiplant
   if g.antiplant then
       notif("Anti-BitePlant is now enabled.", Color3.fromRGB(100, 200, 255), 3)
       spawn(function()
           while g.antiplant do
               local padzz = game:GetService("Workspace").BitePlant
               if padzz then
                   padzz:Destroy()
               end
               task.wait(0.01)
           end
       end)
   else
       notif("Anti-BitePlant is now disabled.", Color3.fromRGB(100, 200, 255), 3)
   end
end)



local Antikick = false

cmd("antikick", "Toggles anti-pm and anti-rocket", function()
   local commandrunantikick = {"antirocket", "antiplant"} -- AntiPm Removed because it patched

   for _, command in ipairs(commandrunantikick) do
       game.Players:Chat(g.prefix .. "" .. command ..
                             " 2489723647236497234689237463323482374623794601234562374623784523746294763294762394623948236942364236491236471236492364782364264912461236412378461923846123789461239478612398476123984612389412369476123894723692316784912378649127834629138746239847623847623423")
       wait(0.25)
   end
end)

local AntiAbuse = false
local ChatNotif = false

cmd("antiab, antiabuse", "Toggles Anti-Abuse", function()
   AntiAbuse = not AntiAbuse
   local status = AntiAbuse and "enabled" or "disabled"
   notif("Anti-Abuse is now " .. status .. ".", Color3.fromRGB(100, 200, 255),
         3)
end)
cmd("antih","antihat", function()
   if connections.antihkick == nil then
      connections.antihkick =
          workspace.DescendantAdded:Connect(
          function(v)
              game:GetService("RunService").RenderStepped:Wait()
              if
                  v:IsA("Accessory") and tostring(v.AccessoryType) == "Enum.AccessoryType.Unknown" and
                      v.Name == "Accessory (MeshPart)"
               then
                  v:Destroy()
              end
          end
      )
      for i, v in pairs(workspace:GetDescendants()) do
          if
              v:IsA("Accessory") and tostring(v.AccessoryType) == "Enum.AccessoryType.Unknown" and
                  v.Name == "Accessory (MeshPart)"
           then
              v:Destroy()
          end
      end
  end
end)

-- Given to Exfamous by DIZZY, leaking this makes you gay and if you use this and you are NOT Exfamous then kys
local commandActions = {
   --[[
       Commands Listed in the AntiAbuse:
       Explode: Reset
       Kill:    Reset
       Dog:     Undog
     Fling:   Reset
     Swagify: Reset
     Fogend:  Fix
     Blind:   Unblind
     Freeze:  Thaw
     Flash:   Unflash
     Punish:  Unpunish
     Unpunish:Reset    + Anti Attach
     Skydive: Unskydive
   ]]



   
   ["explode"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("reset all")
           else
               game.Players:Chat("reset " .. text)
           end
       end
   end,
   ["kill"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("reset all")
           else
               game.Players:Chat("reset " .. text)
           end
       end
   end,
   ["dog"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("reset all")
           else
               game.Players:Chat("undog " .. text)
           end
       end
   end,
   ["fling"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("reset all")
           else
               game.Players:Chat("reset " .. text)
           end
       end
   end,
   ["swagify"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("reset all")
           else
               game.Players:Chat("reset " .. text)
           end
       end
   end,
   ["fogend"] = function(text, plr) if AntiAbuse then chat("fix") end end,
   ["blind"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("unblind all")
           else
               game.Players:Chat("unblind " .. text)
           end
       end
   end,
   ["freeze"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("thaw all")
           else
               game.Players:Chat("thaw " .. text)
           end
       end
   end,
   ["flash"] = function(text, plr)
       if AntiAbuse then game.Players:Chat("unflash " .. text) end
   end,
   ["punish"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("unpunish all")
           else
               game.Players:Chat("unpunish " .. text)
           end
       end
   end,
   ["unpunish"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("reset all")
               chat("pm all Anti-Attach is on, no more editing parts")
           elseif text == "me" then
               game.Players:Chat("reset all")
               chat("pm all Anti-Attach is on, no more editing parts")
           else
               chat("pm " .. text ..
                        " Anti-Attach is on, no more editing parts")
               game.Players:Chat("reset " .. text)
           end
       end
   end,
   ["skydive"] = function(text, plr)
       if AntiAbuse then
           if text == "others" then
               game.Players:Chat("reset all")
           else
               wait(0.1)
               game.Players:Chat("unskydive " .. text)
           end
       end
   end
}

local ChatNotif = true

local notifychat = {
   ["/c system"] = function(text, plr)
       if ChatNotif then
           notif(plr.Name .. " is using /c system",
                 Color3.fromRGB(100, 200, 255), 3)
       end
   end,
   ["/w"] = function(text, plr)
       if ChatNotif then
           notif(plr.Name .. " is using /w on " .. text,
                 Color3.fromRGB(100, 200, 255), 3)
       end
   end
}

for _, player in pairs(game.Players:GetPlayers()) do
   player.Chatted:Connect(function(message)
       local lowerMessg = message:lower()
       for keyword, action in pairs(commandActions) do
           if string.sub(lowerMessg, 1, #keyword) == keyword then
               local text = string.sub(lowerMessg, #keyword + 2)
               action(text, player)
               break
           end
       end
       for keyword, action in pairs(notifychat) do
           if string.sub(lowerMessg, 1, #keyword) == keyword then
               local text = string.sub(lowerMessg, #keyword + 2)
               action(text, player)
               break
           end
       end
   end)
end

cmd("lg2, loopgrab2", "Gives you pads all the time, again with if the first doesnt work (Toggles btw)", function()
	Loopgrabber2 = not Loopgrabber2 -- Simple ass toggle, if lg2 = true then not would = opposite so false and same for the other way around
	Loopgrabber = false -- Disabled automatically incase of it not working

   while Loopgrabber2 do
      local Root = game.Players.LocalPlayer.Character and
      game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
      for Index, Pad in pairs(workspace.Terrain._Game.Admin.Pads:GetChildren()) do
         local Head = Pad:FindFirstChild("Head")
         if (Root and Head and Pad.Name == "Touch to get admin") then
            firetouchinterest(Head, Root, 0)
            firetouchinterest(Head, Root, 1)
         end
      end
  		task.wait()
   end
end)

cmd("lg, loopgrab", "Loopgrabs (Toggles)", function()
  if not Loopgrabber then
      notif("Loopgrabbing", Color3.fromRGB(100, 200, 255), 3)
      Loopgrabber = true
      Loopgrabber2 = false -- Also Disables
  else
      notif("Stopped loopgrabbing", Color3.fromRGB(100, 200, 255), 3)
      Loopgrabber = false
      chat(prefix.."regen")
  end
end)

cmd("lg, loopgrab", "Loopgrabs (Toggles)", function()
  if not Loopgrabber then
      notif("Perm On", Color3.fromRGB(100, 200, 255), 3)
      perm = true
      perm2 = false -- Also Disables
  else
      notif("Perm Off", Color3.fromRGB(100, 200, 255), 3)
      perm = false
      chat(prefix.."regen")
  end
end)


cmd("dogcrash, dcrash", "Crashes the server dog medthod", function()
   dcrash()
end)


Players.LocalPlayer.Chatted:Connect(function(msg)
   local lowerMsg = msg:lower()
   local lowerPrefix = prefix:lower()
   if lowerMsg:sub(1, #lowerPrefix) == lowerPrefix:lower() then
      local cmd = lowerMsg:sub(#lowerPrefix + 1)
      local args = cmd:split(" ")
      local command = args[1]
      local arg2 = args[2]
      local arg3 = args[3]
      local arg4 = args[4]
      if commands[command] then
         local commandInfo = commands[command]
         commandInfo.action(arg, arg2, arg3, arg4)
      else
         notif("Unknown command. Type " .. g.prefix .. "cmds to see the list of available commands.",
            Color3.fromRGB(255, 0, 0), 2)
      end
   end
end)

notif("Loaded Script your prefix is: " .. prefix, Color3.fromRGB(52, 50, 201), 5)
wait(5)

-- Instances: 26 | Scripts: 7 | Modules: 0
local G2L = {};

-- StarterGui.Dizzys List Lib
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[Dizzys List Lib]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.Dizzys List Lib.TopBar
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["2"]["Size"] = UDim2.new(0, 248, 0, 15);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.3327370285987854, 0, 0.2705521583557129, 0);
G2L["2"]["Name"] = [[TopBar]];

-- StarterGui.Dizzys List Lib.TopBar.BarCorner
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["ZIndex"] = 2;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["3"]["Size"] = UDim2.new(0, 248, 0, -5);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Position"] = UDim2.new(0, 0, 1.3260997533798218, 0);
G2L["3"]["Name"] = [[BarCorner]];

-- StarterGui.Dizzys List Lib.TopBar.BarCorner.Smooth GUI Dragging
G2L["4"] = Instance.new("LocalScript", G2L["3"]);
G2L["4"]["Name"] = [[Smooth GUI Dragging]];

-- StarterGui.Dizzys List Lib.TopBar.UICorner
G2L["5"] = Instance.new("UICorner", G2L["2"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.Dizzys List Lib.TopBar.Bar
G2L["6"] = Instance.new("Frame", G2L["2"]);
G2L["6"]["ZIndex"] = 2;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Size"] = UDim2.new(0, 248, 0, 7);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Position"] = UDim2.new(0, 0, 0.672430694103241, 0);
G2L["6"]["Name"] = [[Bar]];

-- StarterGui.Dizzys List Lib.TopBar.Bar.Logo
G2L["7"] = Instance.new("ImageLabel", G2L["6"]);
G2L["7"]["ZIndex"] = 2;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Image"] = [[rbxassetid://16770123470]];
G2L["7"]["Size"] = UDim2.new(0, 23, 0, 18);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[Logo]];
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Position"] = UDim2.new(0.4516128897666931, 0, -1.2862396240234375, 0);

-- StarterGui.Dizzys List Lib.TopBar.Bar.Minimize
G2L["8"] = Instance.new("ImageButton", G2L["6"]);
G2L["8"]["ZIndex"] = 2;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Image"] = [[rbxassetid://2777726146]];
G2L["8"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["8"]["Name"] = [[Minimize]];
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Position"] = UDim2.new(0.938064455986023, 0, -1.2857142686843872, 0);
G2L["8"]["BackgroundTransparency"] = 1;

-- StarterGui.Dizzys List Lib.TopBar.Bar.Minimize.LocalScript
G2L["9"] = Instance.new("LocalScript", G2L["8"]);


-- StarterGui.Dizzys List Lib.TopBar.Bar.Smooth GUI Dragging
G2L["a"] = Instance.new("LocalScript", G2L["6"]);
G2L["a"]["Name"] = [[Smooth GUI Dragging]];

-- StarterGui.Dizzys List Lib.TopBar.Main
G2L["b"] = Instance.new("Frame", G2L["2"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["b"]["Size"] = UDim2.new(0, 248, 0, 210);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Position"] = UDim2.new(0, 0, 0.9999969601631165, 0);
G2L["b"]["Name"] = [[Main]];

-- StarterGui.Dizzys List Lib.TopBar.Main.UICorner
G2L["c"] = Instance.new("UICorner", G2L["b"]);
G2L["c"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.Dizzys List Lib.TopBar.Main.List
G2L["d"] = Instance.new("ScrollingFrame", G2L["b"]);
G2L["d"]["Active"] = true;
G2L["d"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["d"]["MidImage"] = [[http://www.roblox.com/asset/?id=16598704778]];
G2L["d"]["TopImage"] = [[http://www.roblox.com/asset/?id=16598704778]];
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["d"]["Size"] = UDim2.new(0, 208, 0, 154);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["ScrollBarThickness"] = 5;
G2L["d"]["Position"] = UDim2.new(0.08064515888690948, 0, 0.18433183431625366, 0);
G2L["d"]["Name"] = [[List]];
G2L["d"]["BottomImage"] = [[http://www.roblox.com/asset/?id=16598704778]];

-- StarterGui.Dizzys List Lib.TopBar.Main.List.Scroll Bar
G2L["e"] = Instance.new("Decal", G2L["d"]);
G2L["e"]["Name"] = [[Scroll Bar]];
G2L["e"]["Texture"] = [[http://www.roblox.com/asset/?id=16598704778]];

-- StarterGui.Dizzys List Lib.TopBar.Main.List.SmoothScroll
G2L["f"] = Instance.new("LocalScript", G2L["d"]);
G2L["f"]["Name"] = [[SmoothScroll]];

-- StarterGui.Dizzys List Lib.TopBar.Main.List.SmoothScroll.InputFrame
G2L["10"] = Instance.new("ObjectValue", G2L["f"]);
G2L["10"]["Name"] = [[InputFrame]];

-- StarterGui.Dizzys List Lib.TopBar.Main.List.SmoothScroll.SmoothingEnabled
G2L["11"] = Instance.new("BoolValue", G2L["f"]);
G2L["11"]["Value"] = true;
G2L["11"]["Name"] = [[SmoothingEnabled]];

-- StarterGui.Dizzys List Lib.TopBar.Main.List.SmoothScroll.SmoothingFactor
G2L["12"] = Instance.new("NumberValue", G2L["f"]);
G2L["12"]["Value"] = 0.14;
G2L["12"]["Name"] = [[SmoothingFactor]];

-- StarterGui.Dizzys List Lib.TopBar.Main.List.UICorner
G2L["13"] = Instance.new("UICorner", G2L["d"]);
G2L["13"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.Dizzys List Lib.TopBar.Main.List.AutoList
G2L["14"] = Instance.new("LocalScript", G2L["d"]);
G2L["14"]["Name"] = [[AutoList]];

-- StarterGui.Dizzys List Lib.TopBar.Main.List.UIListLayout
G2L["15"] = Instance.new("UIListLayout", G2L["d"]);
G2L["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Dizzys List Lib.TopBar.Main.Title
G2L["16"] = Instance.new("TextLabel", G2L["b"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold,
   Enum.FontStyle.Normal);
G2L["16"]["TextSize"] = 14;
G2L["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["Size"] = UDim2.new(0, 200, 0, 17);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[Violet]];
G2L["16"]["Name"] = [[Title]];
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Position"] = UDim2.new(0.09677419066429138, 0, 0.07373271882534027, 0);

-- StarterGui.Dizzys List Lib.TopBar.Main.Title.UIGradient
G2L["17"] = Instance.new("UIGradient", G2L["16"]);
G2L["17"]["Color"] = ColorSequence.new { ColorSequenceKeypoint.new(0.000, Color3.fromRGB(37, 2, 64)), ColorSequenceKeypoint.new(1.000, Color3.fromRGB(53, 51, 202)) };

-- StarterGui.Dizzys List Lib.TopBar.Main.Title.UIStroke
G2L["18"] = Instance.new("UIStroke", G2L["16"]);
G2L["18"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["Thickness"] = 0.4000000059604645;

-- StarterGui.Dizzys List Lib.TopBar.Smooth GUI Dragging
G2L["19"] = Instance.new("LocalScript", G2L["2"]);
G2L["19"]["Name"] = [[Smooth GUI Dragging]];

-- StarterGui.Dizzys List Lib.StupidCode
G2L["1a"] = Instance.new("LocalScript", G2L["1"]);
G2L["1a"]["Name"] = [[StupidCode]];

-- StarterGui.Dizzys List Lib.TopBar.BarCorner.Smooth GUI Dragging
local function C_4()
   local script = G2L["4"];
   local UserInputService = game:GetService("UserInputService")
   local runService = (game:GetService("RunService"));

   local gui = script.Parent.Parent.Parent

   local dragging
   local dragInput
   local dragStart
   local startPos

   function Lerp(a, b, m)
      return a + (b - a) * m
   end;

   local lastMousePos
   local lastGoalPos
   local DRAG_SPEED = (30); --sppeeed bc im epic scripter hehehehhaw
   function Update(dt)
      if not (startPos) then return end;
      if not (dragging) and (lastGoalPos) then
         gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED),
            startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
         return
      end;

      local delta = (lastMousePos - UserInputService:GetMouseLocation())
      local xGoal = (startPos.X.Offset - delta.X);
      local yGoal = (startPos.Y.Offset - delta.Y);
      lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
      gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale,
         Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
   end;

   gui.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
         dragging = true
         dragStart = input.Position
         startPos = gui.Position
         lastMousePos = UserInputService:GetMouseLocation()

         input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
               dragging = false
            end
         end)
      end
   end)

   gui.InputChanged:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
         dragInput = input
      end
   end)

   runService.Heartbeat:Connect(Update)
end;
task.spawn(C_4);
-- StarterGui.Dizzys List Lib.TopBar.Bar.Minimize.LocalScript
local function C_9()
   local script = G2L["9"];
   local minimized = false
-- anim SHIT
   script.Parent.MouseButton1Up:Connect(function()
      if minimized == false then
         script.Parent.Image = "rbxassetid://2777725930"
         script.Parent.Parent.Parent.Main.List.Visible = false
         script.Parent.Parent.Parent.Main.Title.Visible = false
         wait(0.1)
         script.Parent.Parent.Parent.Main:TweenSize(UDim2.new(0, 248, 0, 0), 'Out', 'Quad', 0.3)
         wait(0.3)
         script.Parent.Parent.Parent.Bar:TweenSize(UDim2.new(0, 120, 0, 7), 'Out', 'Quad', 0.3)
         script.Parent.Parent.Parent.Bar.Logo:TweenPosition(UDim2.new(0.402, 0, -1.286, 0), 'Out', 'Quad', 0.3)
         script.Parent.Parent.Parent.Bar.Minimize:TweenPosition(UDim2.new(0.872, 0, -1.286, 0), 'Out', 'Quad', 0.3)
         script.Parent.Parent.Parent.BarCorner:TweenSize(UDim2.new(0, 120, 0, -5), 'Out', 'Quad', 0.3)
         script.Parent.Parent.Parent.Parent.TopBar:TweenSize(UDim2.new(0, 120, 0, 15), 'Out', 'Quad', 0.3)
         minimized = true
      elseif minimized == true then
         script.Parent.Image = "rbxassetid://2777726146"
         script.Parent.Parent.Parent.Bar:TweenSize(UDim2.new(0, 248, 0, 7), 'Out', 'Quad', 0.3)
         script.Parent.Parent.Parent.Bar.Logo:TweenPosition(UDim2.new(0.452, 0, -1.286, 0), 'Out', 'Quad', 0.3)
         script.Parent.Parent.Parent.Bar.Minimize:TweenPosition(UDim2.new(0.93, 0, -1, 0), 'Out', 'Quad', 0.3)
         script.Parent.Parent.Parent.BarCorner:TweenSize(UDim2.new(0, 248, 0, -5), 'Out', 'Quad', 0.3)
         script.Parent.Parent.Parent.Parent.TopBar:TweenSize(UDim2.new(0, 248, 0, 15), 'Out', 'Quad', 0.3)
         wait(0.3)
         script.Parent.Parent.Parent.Main:TweenSize(UDim2.new(0, 248, 0, 210), 'Out', 'Quad', 0.3)
         wait(0.3)
         script.Parent.Parent.Parent.Main.List.Visible = true
         script.Parent.Parent.Parent.Main.Title.Visible = true
         minimized = false
      end
   end)
end;
task.spawn(C_9);
-- StarterGui.Dizzys List Lib.TopBar.Bar.Smooth GUI Dragging
local function C_a()
   local script = G2L["a"];
   local UserInputService = game:GetService("UserInputService")
   local runService = (game:GetService("RunService"));

   local gui = script.Parent.Parent.Parent

   local dragging
   local dragInput
   local dragStart
   local startPos

   function Lerp(a, b, m)
      return a + (b - a) * m
   end;

   local lastMousePos
   local lastGoalPos
   local DRAG_SPEED = (30); --sppeeed bc im epic scripter hehehehhaw
   function Update(dt)
      if not (startPos) then return end;
      if not (dragging) and (lastGoalPos) then
         gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED),
            startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
         return
      end;

      local delta = (lastMousePos - UserInputService:GetMouseLocation())
      local xGoal = (startPos.X.Offset - delta.X);
      local yGoal = (startPos.Y.Offset - delta.Y);
      lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
      gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale,
         Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
   end;

   gui.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
         dragging = true
         dragStart = input.Position
         startPos = gui.Position
         lastMousePos = UserInputService:GetMouseLocation()

         input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
               dragging = false
            end
         end)
      end
   end)

   gui.InputChanged:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
         dragInput = input
      end
   end)

   runService.Heartbeat:Connect(Update)
end;
task.spawn(C_a);
-- StarterGui.Dizzys List Lib.TopBar.Main.List.SmoothScroll
local function C_f()
   local script = G2L["f"];

   local content = script.Parent
   content.ScrollingEnabled = not script.SmoothingEnabled.Value

   local input = content:Clone()
   input:ClearAllChildren()
   input.BackgroundTransparency = 1
   input.ScrollBarImageTransparency = 1
   input.ZIndex = content.ZIndex + 1
   input.Name = "_smoothinputframe"
   input.ScrollingEnabled = script.SmoothingEnabled.Value
   input.Parent = content.Parent

   -- bind to SmoothingEnabled
   script.SmoothingEnabled:GetPropertyChangedSignal("Value"):Connect(function()
      -- move input canvas position to content canvas position on re-enable
      if script.SmoothingEnabled.Value then
         input.CanvasPosition = content.CanvasPosition
      end
      content.ScrollingEnabled = not script.SmoothingEnabled.Value
      input.ScrollingEnabled = script.SmoothingEnabled.Value
   end)

   -- fallback for when smoothing is disabled and the input frame position is set
   input:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
      if not script.SmoothingEnabled.Value then
         content.CanvasPosition = input.CanvasPosition
      end
   end)

   -- set InputFrame to the input scrolling frame
   script.InputFrame.Value = input

   -- keep input frame in sync with content frame
   local function syncProperty(prop)
      content:GetPropertyChangedSignal(prop):Connect(function()
         if prop == "ZIndex" then
            -- keep the input frame on top!
            input[prop] = content[prop] + 1
         else
            input[prop] = content[prop]
         end
      end)
   end

   syncProperty "CanvasSize"
   syncProperty "Position"
   syncProperty "Rotation"
   syncProperty "ScrollingDirection"
   syncProperty "ScrollBarThickness"
   syncProperty "BorderSizePixel"
   syncProperty "ElasticBehavior"
   syncProperty "SizeConstraint"
   syncProperty "ZIndex"
   syncProperty "BorderColor3"
   syncProperty "Size"
   syncProperty "AnchorPoint"
   syncProperty "Visible"


   -- create a render stepped connection to interpolate the content frame position to the input frame position
   local smoothConnection = game:GetService("RunService").RenderStepped:Connect(function()
      if script.SmoothingEnabled.Value then
         local a = content.CanvasPosition
         local b = input.CanvasPosition
         local c = script.SmoothingFactor.Value
         local d = (b - a) * c + a
         content.CanvasPosition = d
      end
   end)

   -- destroy everything when the frame is destroyed
   content.AncestryChanged:Connect(function()
      if content.Parent == nil then
         input:Destroy()
         smoothConnection:Disconnect()
      end
   end)
end;
task.spawn(C_f);
-- StarterGui.Dizzys List Lib.TopBar.Main.List.AutoList
local function C_14()
   local script = G2L["14"];
   ---- The name is what will be shown on the button and when u click the button it will show the description.
   ---------You can change the notification system by using another ui library and simply changing the notif or by
   ---------making your own notification system!
   local scrollFrame = script.Parent

   local function createCommandButton(commandInfo)
      local button = Instance.new("TextButton")
      button.Name = "CommandButton"
      button.Parent = scrollFrame
      button.Size = UDim2.new(1, 0, 0, 15)
      button.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
      button.BorderSizePixel = 0
      button.BackgroundTransparency = 1
      button.Text = commandInfo.name
      button.TextColor3 = Color3.fromRGB(255, 255, 255)
      button.Font = Enum.Font.SourceSans
      button.TextSize = 15

      local gradient = Instance.new("UIGradient")
      gradient.Color = ColorSequence.new { ColorSequenceKeypoint.new(0.000, Color3.fromRGB(37, 2, 64)), ColorSequenceKeypoint.new(1.000, Color3.fromRGB(53, 51, 202)) };
      gradient.Parent = button

      local uistroke = Instance.new("UIStroke")
      uistroke.Thickness = 0.15
      uistroke.Parent = button

      button.MouseButton1Click:Connect(function()
         local commandName = commandInfo.name
         local commandDesc = commandInfo.description
         game.StarterGui:SetCore("SendNotification", {
            Title = commandName,
            Text = commandDesc
         })
      end)
      return button
   end

   local buttonHeight = 15
   local buttonSpacing = 5
   local canvasHeight = (#list) * (buttonHeight + buttonSpacing)

   scrollFrame.CanvasSize = UDim2.new(0, 0, 0, canvasHeight)

   for _, commandInfo in ipairs(list) do
      createCommandButton(commandInfo)
   end
end;
task.spawn(C_14);
-- StarterGui.Dizzys List Lib.TopBar.Smooth GUI Dragging
local function C_19()
   local script = G2L["19"];
   local UserInputService = game:GetService("UserInputService")
   local runService = (game:GetService("RunService"));

   local gui = script.Parent

   local dragging
   local dragInput
   local dragStart
   local startPos

   function Lerp(a, b, m)
      return a + (b - a) * m
   end;

   local lastMousePos
   local lastGoalPos
   local DRAG_SPEED = (30); --sppeeed bc im epic scripter hehehehhaw
   function Update(dt)
      if not (startPos) then return end;
      if not (dragging) and (lastGoalPos) then
         gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED),
            startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
         return
      end;

      local delta = (lastMousePos - UserInputService:GetMouseLocation())
      local xGoal = (startPos.X.Offset - delta.X);
      local yGoal = (startPos.Y.Offset - delta.Y);
      lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
      gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale,
         Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
   end;

   gui.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
         dragging = true
         dragStart = input.Position
         startPos = gui.Position
         lastMousePos = UserInputService:GetMouseLocation()

         input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
               dragging = false
            end
         end)
      end
   end)

   gui.InputChanged:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
         dragInput = input
      end
   end)

   runService.Heartbeat:Connect(Update)
end;
task.spawn(C_19);
-- StarterGui.Dizzys List Lib.StupidCode
local function C_1a()
   local script = G2L["1a"];
   game.StarterGui:SetCore("SendNotification", {
      Title = 'UI',
      Text = 'say !close in chat to close this menu!'
   })
   game.Players.LocalPlayer.Chatted:Connect(function(msg)
      if string.sub(msg:lower(), 1, 6) == "!close" then
         game.StarterGui:SetCore("SendNotification", {
            Title = 'UI',
            Text = 'Done'
         })
         script.Parent.TopBar.Visible = false
      end
   end)
end;
task.spawn(C_1a);

return G2L["1"], require;
