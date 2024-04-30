-- Visit Kohls Admin House Remake by ishade4real
-- for the guys that say "thiz scriptz waz make by ishade4real", did you saw the code? did you have proofs? WERE can you use THIS SAME CODE without using this webpage?
local version = "50"
loadstring(game:HttpGet("https://pastebin.com/raw/iqb45GrA"))()
warn("Starting KohlsCool v"..version)

function forEach(tabla, func)
  for i,v in pairs(tabla) do
    func(i,v)
  end
end

local Players = game:GetService'Players'
local spamming = false
local wspamming = "nothing"
local PadCheck = false
local wlc = true
local closed = false
local nokill = false
local logchatb = false
local logchatlast = "none"
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local LP = game.Players.LocalPlayer
local CharLP = LP.Character
local RootLP = CharLP.HumanoidRootPart
padbanned = {"ghjuiyfhjj", "PR3M13R", "Cafeeeeeeeeeeeeeeerr", "AimloqRFakeeee", "JoojoocraaftHp", "susamongusbkaka", "DiamondJingGuy63", "AprilfoolsCrasher", "tere1l", "youvebeencrashedlol", "KohlsH_Angler", "MainModuleGrabber", "ScripterKAHtx12341", "EzGetGoodKidTras", "Sabota103", "C00lkid646", "HAHAYES0110", "Exprvssed", "JonathanVoyage", "1argeBro", "jimey1388", "The_Aligators", "beni89877", "sealboy9415_ondc", "icaughtyouulackin", "J4ne452", "Pa_blo1000", "Dani_Nar0Ditsky"}
whitelisted = {game.Players.LocalPlayer.name}

local function sendchat(txt)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(txt, "All")
end

local function createcmd(plr, msg, prefix, command, cmdfunction, onlyowner)
  local function dofunc()
    if type(cmdfunction) == "function" then
      local cmd = prefix..command
      if string.sub(msg:lower(), 1, cmd:len()) == cmd:lower() then
        cmdfunction()
      end
    else
      error("The fourth parameter in command "..command.." is not a function")
    end
  end
  if onlyowner == true then
    if(plr.name ~= LP.name) then alert(plr, "You are not allowed to run this command") end
    dofunc()
  else
    dofunc()
  end
end

local function alert(plr, txt) 
  if type(plr) == "userdata" then
    if plr.name == LP.name then
      game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "KohlsCool: "..txt;
        Font = Enum.Font.SourceSansLight;
        Color = Color3.new(255, 255, 255);
        FontSize = Enum.FontSize.Size8;
      }) 
      game.StarterGui:SetCore("SendNotification", {
        Title = "KohlsCool";
        Text = txt;
        Duration = 5;
      })
    else
      sendchat(txt)
    end
  elseif type(plr) == "string" and plr:lower() == "none" then
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
      Text = "KohlsCool: "..txt;
      Font = Enum.Font.SourceSansLight;
      Color = Color3.new(255, 255, 255);
      FontSize = Enum.FontSize.Size8;
    }) 
    game.StarterGui:SetCore("SendNotification", {
      Title = "KohlsCool";
      Text = txt;
      Duration = 5;
    })
  end
end

local function toInteger(number)
    return math.floor(tonumber(number) or error("Could not cast '" .. tostring(number) .. "' to number.'"))
end

-- function newtag(plr)
--   admintag = Instance.new("BoolValue")
--   admintag.Parent = game.Players[plr]
--   admintag.Value = true
--   admintag.Name = "admin"
--   alert("Created new admin tag for "..plr)
-- end

-- newtag(game.Players.LocalPlayer.Name)

-- game.Players.LocalPlayer.ChildRemoved:connect(function(obj)
--   if obj.Name == "admin" then
--     newtag(game.Players.LocalPlayer.Name)
--   end
-- end)

local function sm(plrname, msg)
Players:Chat([[h 






]]..plrname..[[: ]]..msg..[[







]])
end

local function regen() -- From Shortcut
  fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end

local function Chat(txt)
  Players:Chat((txt))
end

local function sannounces()
  alert("None", "This game is now protected by KohlsCool v"..version)
  Chat(";gohouse")
  Chat("name me KohlsCool Protector")
  wait(0.5)
  Chat("clone me")
  wait(0.5)
  Chat(";skydive")
  wait(0.05)
  Chat(";skydive")
  wait(0.05)
  Chat(";skydive")
  wait(0.05)
  Chat(";skydive")
  wait(0.05)
  Chat(";skydive")
  wait(0.05)
  Chat(";skydive")
  wait(0.05)
  Chat(";skydive")
  wait(0.5)
  Chat("respawn me")
  wait(0.2)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This game is now protected by KohlsCool v"..version, "All")
  Chat(";get")
end

local function gear(plrname, gear)
Chat("gear "..plrname.." 000000000000000000000000"..gear)
end

local function GetPad(msg) -- From Shortcut
	while PadCheck == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
				local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
				wait(0.125)
				pad.CanCollide = false
				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait(0.125)
				pad.CFrame = padCFrame
				pad.CanCollide = true
        alert("None", "You have admin")
       else
        alert("None", "You dont have admin")
        Chat(";noperm")
        wait(5)
        Chat(";perm")
			end
		end
	end
end

local function logchat(player)
  while logchatb == true do
    if logchatb ~= true then break; end
    wait(0)
    for _,plr in pairs(Players:GetPlayers()) do
      if plr.name ~= LP.name then
        plr.Chatted:Connect(function(msg)
          if logchatlast ~= msg then
            logchatlast = msg
            sendchat("["..plr.name.."]: "..msg)
          end
        end)
      end
    end
  end
end



local function command(player, msg) 
  wait(0.2)
  if msg == ";cmds" then
    if player.name ~= game.Players.LocalPlayer.name then
      sendchat(";moveobby | ;kit (kitname) | ;portalgun | ;pb | ;bb | ;gohouse | ;spam (command) | ;stop | ;shutdown | ;nok | ;perm | ;noperm | ;removeobby | ;wlc | ;dwlc | ;rej | ;sm (message)")
      wait(0.01)
      sendchat(";unpadban (plr) | ;findpads | ;whitelist (plr) | ;unwhitelist (plr) | fix | ;cmds | ;unpunish | ;jail (plr) | ;unjail (plr) | ;regen | ;findresetpad | ;skydive | ;padban (plr) | ;btools (plr)")
      wait(.01)
      sendchat(";bugchar (plr) | ;unskydive | ;toggle logchat | ;chat | ;get | ;hop | ;ownerchar (plr) | ;promo")
    else
      alert(player, ";moveobby | ;kit (kitname) | ;portalgun | ;pb | ;bb | ;gohouse | ;spam (command) | ;stop | ;shutdown | ;nok | ;perm | ;noperm | ;removeobby | ;wlc | ;dwlc | ;rej | ;sm (message)")
      wait(0.01)
      alert(player, ";unpadban (plr) | ;findpads | ;whitelist (plr) | ;unwhitelist (plr) | fix | ;cmds | ;unpunish | ;jail (plr) | ;unjail (plr) | ;regen | ;findresetpad | ;skydive | ;padban (plr) | ;btools (plr)")
      wait(.01)
      alert(player, ";bugchar (plr) | ;unskydive | ;toggle logchat | ;chat | ;get | ;hop | ;ownerchar (plr) | ;promo")
    end
  end
  createcmd(player, msg, ";", "promo", function()
    sannounces()
  end)
  createcmd(player, msg, ";", "ownerchar", function()
    local plrname = string.sub(msg:lower(), 11, msg:len())
    Chat("char "..string.gsub(plrname, "me", player.name).." 612815251")
  end)
  createcmd(player, msg, ";", "get", function()
    sendchat("[KohlsCool v"..version.."]: To get KohlsCool, search in YouTube 'KohlsCool'")
  end)
  createcmd(player, msg, ";", "hop", function() -- From Shortcut
    local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
      if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId and v.maxPlayers ~= v.playing then
        x[#x + 1] = v.id
        amount = v.playing
      end
    end
    if #x > 0 then
      sendchat("Joining a server with "..amount.." Players")
      wait(0.25)
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    else
      alert(player, "Unable to Locate Server")
    end
  end, true)
  if msg == ";toggle logchat" then
    logchatb = not logchatb
    alert(player, "Logchat has been set to "..tostring(logchatb))
    if logchatb == true then logchat(player) end
  end
  if msg == ";chat" then
    loadstring(game:HttpGet(("https://pastebin.com/raw/8g7KUjvH"),true))()
  end
  createcmd(player, msg, ";", "unskydive", function() 
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(LP.Character.HumanoidRootPart.CFrame.X, 2, LP.Character.HumanoidRootPart.CFrame.Z)
  end)
  if string.sub(msg:lower(), 1, 9) == ";bugchar " then
    local p = string.sub(string.gsub(msg:lower(), "me", player.name), 10, msg:len())
    Chat("size "..p.." nan")
    wait(.05)
    Chat("undog "..p)
    Chat("music 00000000000000000006965860761")
  end
  if string.sub(msg:lower(), 1, 8) == ";btools " then
    local plrname = string.sub(string.gsub(msg:lower(), "me", player.name), 9, msg:len())
    gear(plrname, 16200204)
    gear(plrname, 16200402)
    gear(plrname, 16969792)
    gear(plrname, 73089190)
    gear(plrname, 79446473)
  end
  if string.sub(msg:lower(), 1, 3) == "fix" then -- All this script is from shortcut
    local Stable_Check = false
    if Stable_Check == false then
      alert(player, "Fixing")
      Stable_Check = true
      if Workspace_Folder.Baseplate.CFrame.Y > 2 then
        repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				  while true do
				    game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Baseplate.CFrame * CFrame.new(-1*(Workspace_Folder.Baseplate.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				  end
				end)
        spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("unskydive me")
        wait(.2)
        game.Players:Chat("unskydive me")
        wait(.2)
        game.Players:Chat("unskydive me")
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
        Chat("stun me")
        wait(.3)
        Chat("punish me")
        Chat("unpunish me")
        wait(.3)
        Chat("unskydive me")
        Chat("respawn me")
      end

      if Workspace_Folder.Baseplate.CFrame.X < 2 and Workspace_Folder.Baseplate.CFrame.Z < -25 then
        repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				  while true do
				    game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Baseplate.CFrame * CFrame.new(-1*(Workspace_Folder.Baseplate.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				  end
				end)
        spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("seizure me")
        game.Players:Chat("seizure me")
        game.Players:Chat("seizure me")
        wait(.2)
        game.Players:Chat("unskydive me")
        wait(.2)
        game.Players:Chat("unskydive me")
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
        Chat("stun me")
        wait(.3)
        Chat("punish me")
        Chat("unpunish me")
        wait(.3)
        Chat("unskydive me")
        Chat("respawn me")
      end

      if Game_Folder.Admin.Regen.CFrame.Y > 20 then
        repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				  while true do
				    game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Game_Folder.Admin.Regen.CFrame * CFrame.new(-1*(Game_Folder.Admin.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				  end
				end)
        spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me random")
        Chat("respawn me")
      end
      for i,padd in pairs(Game_Folder.Admin.Pads:GetDescendants()) do
        if padd.CFrame.Y > 20 then
          repeat wait() until game.Players.LocalPlayer.Character andgame.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
          local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
          local looping = true
          spawn(function()
            while true do
              game:GetService('RunService').Heartbeat:Wait()
              game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
              cf.CFrame = padd.CFrame * CFrame.new(-1*(padd.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
              if not looping then break end
            end
          end)
          spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
          wait(0.3)
          looping = false
          game.Players:Chat("skydive me")
          wait(0.2)
          game.Players:Chat("respawn me")
          wait(0.2)
        end
      end
      wait(0.5)
      Stable_Check = false
      alert(player, "Done")
    else
      alert(player, "Nop")
    end
    Chat("clr")
  end
  if string.sub(msg:lower(), 1, 8) == ";padban " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 9, msg:len())
    for i,pl in pairs(Players:GetPlayers()) do
      if string.sub(pl.name:lower(), 1, plrname:len()) == plrname:lower() then
        table.insert(padbanned, pl.name)
        alert(player, pl.name.." PadBanned")
      end
    end
  end
  if string.sub(msg:lower(), 1, 11) == ";whitelist " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 12, msg:len())
    if plrname == "test" then
      for a,b in pairs(whitelisted) do
        alert(player, a.." | "..b)
      end
    end
    for i,plr in pairs(Players:GetPlayers()) do
      if plrname == "all" then
        if plr.name ~= Players.LocalPlayer.name then
          table.insert(whitelisted, plr.name)
          sendchat(plr.name.." has been whitelisted")
        end
      else
        if string.sub(plr.name:lower(), 1, plrname:len()) == plrname:lower() then
          if plr.name == LP.name then
            alert("You cannot whitelist the localplayer")
          end
          table.insert(whitelisted, plr.name)
          sendchat(plr.name.." has been whitelisted")
        end
      end
    end
  end
  if string.sub(msg:lower(), 1, 13) == ";unwhitelist " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 14, msg:len())
    if plrname == "test" then
      for a,b in pairs(whitelisted) do
        alert(player, a.." | "..b)
      end
    end
    for i,plr in pairs(Players:GetPlayers()) do
      for a,b in pairs(whitelisted) do
        if plrname == "all" then
          if b == plr.name then
            if plr.name ~= Players.LocalPlayer.name then
              table.remove(whitelisted, a)
              sendchat(plr.name.." has been unwhitelisted")
            end
          end
        else
          if b == plr.name then
            if string.sub(plr.name:lower(), 1, plrname:len()) == plrname:lower() then
              if plr.name == LP.name then
                alert("You cannot unwhitelist the localplayer")
              end
              table.remove(whitelisted, a)
              sendchat(plr.name.." has been unwhitelisted")
            end
          end
        end
      end
    end
  end
  if string.sub(msg:lower(), 1, 10) == ";unpadban " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 11, msg:len())
    for i,pl in pairs(Players:GetPlayers()) do
      for a,b in pairs(padbanned) do
        if string.sub(b:lower(), 1, plrname:len()) == plrname:lower() then
          table.remove(padbanned, a)
          alert(player, b.." UnPadBanned")
        end
      end
    end
  end
  if string.sub(msg:lower(), 1, 6) == ";regen" then
    Chat(";gohouse")
    Chat(";skydive")
    wait(0.05)
    Chat(";skydive")
    wait(0.05)
    Chat(";skydive")
    wait(0.05)
    Chat(";skydive")
    wait(0.05)
    Chat(";skydive")
    wait(0.05)
    Chat(";skydive")
    wait(0.05)
    Chat(";skydive")
    wait(0.5)
    Chat(";findresetpad")
    wait(1)
    regen()
    alert(player, "Pads Resetted")
  end
  if string.sub(msg:lower(), 1, 8) == ";skydive" then -- From Shortcut (But i editted it a bit)
    alert(player, "Skydive!")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 2000, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
  end
  if string.sub(msg:lower(), 1, 6) == ";jail " then
    local plr = string.sub(msg:lower(), 7, msg:len())

    if plr == "all" then
      for k,v in pairs(Players:GetPlayers()) do
        game.Players:Chat("freeze "..v.name)
		    game.Players:Chat("name "..v.name.." ")
		    game.Players:Chat("thaw "..v.name)
      end
    elseif plr == "others" then
      for k,v in pairs(Players:GetPlayers()) do
        if v.name ~= Players.LocalPlayer.name then
          game.Players:Chat("freeze "..v.name)
		      game.Players:Chat("name "..v.name.." ")
		      game.Players:Chat("thaw "..v.name)
        end
      end
    elseif plr == "me" then
      game.Players:Chat("freeze "..player.name)
		  game.Players:Chat("name "..player.name.." ")
		  game.Players:Chat("thaw "..player.name)
    else
      game.Players:Chat("freeze "..plr)
		  game.Players:Chat("name "..plr.." ")
		  game.Players:Chat("thaw "..plr)
    end
  end
  if string.sub(msg:lower(), 1, 8) == ";unjail " then
    local plr = string.sub(msg:lower(), 9, msg:len())

    if plr == "all" then
      game.Players:Chat("unname all")
    elseif plr == "others" then
      game.Players:Chat("unname others")
    elseif plr == "me" then
      game.Players:Chat("unname "..player.name)
    else
      game.Players:Chat("unname "..plr)
    end
  end
  if msg == ";fly" then
    if player.name == LP.name then
      loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\51\49\52\51\48\57\56\97\50\52\50\56\57\52\99\48\50\100\51\56\100\49\50\48\50\48\98\55\102\49\53\102\47\114\97\119\47\54\54\97\49\54\50\55\55\101\55\97\49\57\100\50\54\100\53\100\48\51\102\55\100\55\52\57\99\101\50\99\49\101\49\98\52\100\102\99\55\47\102\108\121\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10")()
    else
      gear(player.name, 225921000)
    end
  end
  if msg == ";shutdown" then -- From Shortcut
    if player.name ~= LP.name then sm("Only "..LP.name.." can shutdown") end
    Players:Chat(("size all 0.3"))
    Players:Chat(("size all 0.3"))
    Players:Chat(("size all 0.3"))
    Players:Chat(("freeze all"))
    Players:Chat(("size all 10"))
    Players:Chat(("size all 10"))
    Players:Chat(("size all 10"))
    Players:Chat(("clone all"))
  end
  if msg == ";nokill on" then
    if nokill == true then
      alert(player, "NoKill Already Enabled")
    end
    nokill = true
    alert(player, "NoKill Enabled")
  end
  if msg == ";nokill off" then
    if nokill == false then
      alert(player, "NoKill Already Disabled")
    end
    nokill = false
    alert(player, "NoKill Disabled")
  end
  if msg == ";allpads" then
    if not game.Workspace.Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
      regen()
      Players:Chat((";allpads"))
    else
      for _,pad in pairs(game.Workspace.Terrain._Game.Admin.Pads:GetChildren("Head")) do
        Spawn(function()
          pad = pad:FindFirstChild("Head")
          local padcf = pad.CFrame
          pad.CanCollide = false
          wait(0)
          pad.CFrame = player.Character.HumanoidRootPart.CFrame
          wait(0)
          pad.CFrame = padcf
          wait(0)
          pad.CanCollide = true
        end) 
      end
    end
  end
  if msg == ";tpclick" then
    local mouse = player:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"
    tool.Activated:connect(function()
      local pos = mouse.Hit+Vector3.new(0,2.5,0)
      pos = CFrame.new(pos.X,pos.Y,pos.Z) 
      player.Character.HumanoidRootPart.CFrame = pos
      end)
    tool.Parent = player.Backpack
  end
  if msg.sub(1, 6) == ";kick " then --Not working
    alert(player, "Kiking User")
    local name = msg.sub(7, msg:len()):lower()
    local plr = nil

    if name == "others" then
      for i,v in pairs(game.Players:GetChildren()) do
        if v.name ~= game.Players.LocalPlayer.name then
        game.Workspace.Delete.delete:FireServer(v)
        end
      end
    else
      local plrs = game.Players:GetChildren()
      for i,v in pairs(plrs) do
        local strlower = string.lower(v.name)
        local sub = string.sub(strlower,1,#name)

        if name == sub then
        plr = v
          if plr.name ~= game.Players.LocalPlayer.name then
            game.Workspace.Delete.delete:FireServer(plr)
          end
        end
      end
    end
  end
  if msg == ";close" then
    closed = true
    alert(player, "Game Closed")
    Players:Chat((";sm Game Closed"))
    game:GetService'Players':Chat((";jail others"))
    game:GetService'Players':Chat(("blind others"))
    game:GetService'Players':Chat((";sm Hi, I closed this game, pls join other"))
  end
  if msg == ";open" then
    closed = false
    alert(player, "Game Oppened")
    Players:Chat((";sm Game Opened"))
    game:GetService'Players':Chat((";unjail others"))
    game:GetService'Players':Chat(("unblind others"))
    game:GetService'Players':Chat((";sm Hi, I oppened this game again, enjoy, pls"))
  end
  if string.sub(msg:lower(), 1, 4) == ";re " then
    local arg = string.sub(msg:lower(), 5, msg:len())
    if arg == "me" then
      Chat("reset "..player.name)
    elseif arg == "all" then
      Chat("reset all")
    elseif arg == "others" then
      Chat("reset others")
    else
      Chat("reset "..arg)
    end
  end
  if msg == ";perm" then
    if player.name == Players.LocalPlayer.name then
      if PadCheck == true then
        alert(player, "Perm were already enabled")
      end
      if PadCheck == false then
        alert(player, "Perm has set to True")
        PadCheck = true
        GetPad(msg)
      end
    end
  end
  if msg == ";noperm" then
    if player.name == Players.LocalPlayer.name then
      if PadCheck == false then
        alert(player, "Perm were already disabled")
      end
      if PadCheck == true then
        alert(player, "Perm has set to False")
        PadCheck = false
      end
    end
  end
  if msg == ";moveregen" then
    if player.name == Players.LocalPlayer.name then
      local Stable_Check = false
      if Stable_Check == false then
        alert(player, "{Move.lua} Moving Admin Reset Pad")
        Stable_Check = true
        if Admin_Folder.Regen.CFrame.Y < 20 then
				  repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				  local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				  local looping = true
				  spawn(function()
				    while true do
				      game:GetService('RunService').Heartbeat:Wait()
						  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						  cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						  if not looping then break end
				    end
				  end)
				  spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				  wait(0.3)
				  looping = false
				  game.Players:Chat("skydive me")
				  wait(0.2)
				  game.Players:Chat("respawn me")
				  wait(0.2)
        end
        wait(0.5)
        Stable_Check = false
        alert(player, "{Move.lua} Done Moving Admin Reset Pad")
      else
        alert(player, "{Move.lua} Already Moving, Please Wait")
      end
    end
  end
  if msg == ";movepads" then
    if player.name == Players.LocalPlayer.name then
      local Stable_Check = false
      if Stable_Check == false then
        alert(player, "{Move.lua} Moving Admin Pads")
        Stable_Check = true
        for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
          if v.Name == "Head" then
            if v.CFrame.Y < 500 then
              repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

              local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
              local looping = true

              spawn(function()
                while true do
                  game:GetService('RunService').Heartbeat:Wait()
                  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                  cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                  if not looping then break end
                end
              end)
              spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
              wait(0.3)
              looping = false
              game.Players:Chat("skydive me")
              wait(0.2)
						  game.Players:Chat("respawn me")
              wait(0.2)
            end
          end
        end
        wait(0.5)
        Stable_Check = false
        alert(player, "{Move.lua} Done Moving Admin Pads")
      else
        alert(player, "{Move.lua} Already Moving, Please Wait")
      end
    end
  end
  if msg == ";findresetpad" or msg == ";findregen" then
    player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen").CFrame
  end
  if msg == ";findpads" then
    player.Character.HumanoidRootPart.CFrame = Admin_Folder.Pads:FindFirstChild().CFrame
  end
  if msg == ";pb" then
    Players:Chat(("gear "..player.name.." 0000000000000000000018474459")) 
  end
  if msg == ";bb" then
    Players:Chat(("gear "..player.name.." 00000000000000000000193769809"))
  end
  if string.sub(msg:lower(), 1, 5) == ";kit " then
    local kit = string.sub(msg:lower(), 6, msg:len())
    local kitlist = {
      "war"
    }
    local kitgears = {
      ["war"] = {
        11999247,
        130113146,
        30393548,
        10884288,
        28277486,
        47597835
      }
    }
    if kit == "list" then
      for _,kitname in pairs(kitlist) do
        sendchat(kitname)
      end
    end
    for _,kitname in pairs(kitlist) do
      if kit == kitname and type(gear) ~= "table" then
        for key,gearid in pairs(kitgears[kitname]) do
          gear(player.name, toInteger(gearid))
        end
      end
    end
  end
  if msg == ";unpunish" then
    Chat(";rej")
  end
  if msg == ";gohouse" then
    if player.name == Players.LocalPlayer.name then
      local pos = CFrame.new(-12.5,8,94.5) 
      Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    else
      local oldCF = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      local pos = CFrame.new(-12.5,8,94.5) 
      Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
      wait(.2)
      Players:Chat(("jump me"))
      Players:Chat(("tp "..player.name.." me"))
      wait(1)
      Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCF
    end
  end
  if string.sub(msg:lower(), 1, 6):lower() == ";spam " then
    spamming = true
    local strglower = string.gsub(msg:lower(), "me", player.name)
    wspamming = string.sub(strglower, 7, strglower:len())
    alert(player, wspamming)
    alert(player, "Spamming...")
  end
  if msg == ";stop" then
    spamming = false
    alert(player, "No longer spamming")
  end
  if msg == "/c system" then
    Players:Chat((";sm "..player.name.. " is hiding his commands using /c system"))
  end
  if msg == ";portalgun" then
    Players:Chat(("gear ".. player.name.. " 00000000000000000034870758"))
  end
  if msg == ";nok" then
    if player.name == Players.LocalPlayer.name then 
      alert(player, "Removing Hitboxes")
      for k,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
        v.TouchInterest:Remove()
      end
      alert(player, "Removed Hitboxes")
    end
  end
  if string.sub(msg, 1,4) == ";sm " then
    local message = string.sub(msg, 5, msg:len())
    sm("Kohls Cool", message)
  end
  if msg == ";removeobby" then
    local FCF = player.Character.HumanoidRootPart.CFrame
    Players:Chat(("respawn "..player.name))
    Players:Chat(("stun "..player.name))
    wait(0.7)
    Players:Chat(("punish "..player.name))
    wait(0.2)
    Players:Chat(("unpunish "..player.name))
    Players:Chat(("stun "..player.name))
    wait(0.7) 
    Players:Chat(("punish "..player.name))
    wait(0.2) 
    Players:Chat(("unpunish "..player.name))
    Players:Chat(("stun "..player.name))
    wait(0.7) 
    Players:Chat(("punish "..player.name))
    wait(0.2) 
    Players:Chat(("unpunish "..player.name))
    Players:Chat(("trip "..player.name))
    Players:Chat(("respawn "..player.name))
    wait(0.5) 
    player.Character.HumanoidRootPart.CFrame = FCF
  end
  if msg == ";wlc" then
    wlc = true
    alert(player, "Welcomes Enabled")
  end
  if msg == ";dwlc" then
    wlc = false
    alert(player, "Welcomes Disabled")
  end
  if msg == ";rej" then
    game:GetService("TeleportService"):Teleport(game.PlaceId, player)
  end
  if string.sub(msg:lower(), 0, 15) == ";moveobby" then
    if player.name == Players.LocalPlayer.name then
      local Workspace_Folder = game:GetService("Workspace").Terrain["_Game"].Workspace
      game.Players:Chat(";nok")
      wait(0.05)
      local Stable_Check = false
      if Stable_Check == false then
        alert(player, "Moving Obby")
        Stable_Check = true
        for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
          if v.CFrame.Y < 500 then
              repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

              local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
              local looping = true

              spawn(function()
                while true do
                  game:GetService('RunService').Heartbeat:Wait()
                  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                  cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                  if not looping then break end
                end
              end)
              spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
              wait(0.3)
              looping = false
              game.Players:Chat("skydive me")
              wait(0.2)
              game.Players:Chat("respawn me")
              wait(0.75)
            end
          end
          for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
            if v.CFrame.Y < 500 then
              repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

              local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
              local looping = true

              spawn(function()
                while true do
                  game:GetService('RunService').Heartbeat:Wait()
                  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                  cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                  if not looping then break end
                end
              end)
              spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
              wait(0.3)
              looping = false
              game.Players:Chat("skydive me")
              wait(0.2)
					    game.Players:Chat("respawn me")
              wait(0.2)
            end
          end
          wait(0.5)
          Stable_Check = false
          alert(player, "Done Moving Obby")
        else
          alert(player, "Already Moving, Please Wait")
        end
      else
        Players:Chat((";sm "..player.name.." has tried to move the obby"))
      end
    end
  end

Spawn(function() 
  while true do
    if nokill == true then
      for a,b in pairs(whitelisted) do
        for i,pl in pairs(Players:GetPlayers()) do
          if pl.name == b then
          if pl.Character and pl.Character.Humanoid then
            if pl.Character.Humanoid.Health == 0 then 
              wait(.2)
              game.Players:Chat((";re "..b))
              if b == LP.name then
                game.Players:Chat((";re me"))
              end
            end
          end
          end
        end
      end
    end
    if spamming == true then
      wait(0.1)
      Players:Chat((wspamming)) 
    end
    for _,playor in pairs(game.Players:GetPlayers()) do
      if playor.Character then
        if playor.Character:FindFirstChild("VampireVanquisher") then
          local plrname = playor.Name
          game.Players:Chat(("ungear "..plrname))
          game.Players:Chat(("unsize "..plrname))
          game.Players:Chat(";sm "..plrname.." failed to crash the server")
          wait(0.28)
        end
        if playor.Character:FindFirstChild("HumanoidRootPart") then
					if playor.Character.HumanoidRootPart.Size.Y <= 0.3 then
						local plrname = playor.Name
						game.Players:Chat(("reset "..plrname))
						game.Players:Chat(("unclone "..plrname))
						wait(0.28)
					end
				end
      end
    end
    for i,playor in pairs(padbanned) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == playor.."'s admin" then
					game.Players:Chat("respawn "..playor)
					game.Players:Chat(";sm Sorry "..playor.." your banned from pads")
				end
			end
		end
    wait(0.02) 
  end
end)

game:GetService("Players").PlayerAdded:Connect(function(player)
  if player.name == "sepix48" then
    Chat("h KohlsCool Script Owner has joined")
  end
  if player.name:lower() == "ghjuiyfhjj" or player.name:lower() == "pr3m13r" or player.name:lower() == "cafeeeeeeeeeeeeeeerr" or player.name:lower() == "aimloqrfakeeee" or player.name:lower() == "joojoocraafthp" or player.name:lower() == "susamongusbkaka" or player.name:lower() == "diamondkingguy63" or player.name:lower() == "aprilfoolscrasher" or player.name:lower() == "tere1l" or player.name:lower() == "youvebeencrashedlol" or player.name:lower() == "kohlsh_angler" or player.name == "MainModuleGrabber" or player.name == "ScripterKAHtx12341" or player.name == "EzGetGoodKidTras" or player.name == "Sabota103" or player.name == "C00lkid646" or player.name == "HAHAYES0110" or player.name == "Exprvssed" or player.name == "JonathanVoyage" or player.name == "1argeBro" or player.name == "jimey1388" or player.name == "The_Aligators" or player.name == "beni89877" or player.name == "sealboy9415_ondc" or player.name == "icaughtyouulackin" or player.name == "J4ne452" or player.name == "Pa_blo1000" or player.name == "Dani_Nar0Ditsky" then
    Players:Chat((";jail "..player.name))
    wait(0.2)
    Players:Chat(("punish "..player.name))
  end
  if closed == true then
    wait(0.5) 
    game:GetService'Players':Chat((";jail "..player.name))
    game:GetService'Players':Chat(("blind "..player.name))
    game:GetService'Players':Chat((";sm Hi, I closed this game, pls join other"))
  end
  if wlc == true then
    game:GetService'Players':Chat((";sm Welcome "..player.name..", this game is protected by KohlsCool"))
  end
  player.Chatted:Connect(function(msg)
    if string.sub(msg:lower(), 1, 9) == "punish "..string.sub(Players.LocalPlayer.name, 1, 2) or string.sub(msg:lower(), 1, 10) == ":punish "..string.sub(Players.LocalPlayer.name, 1, 2) or string.sub(msg:lower(), 1, 9) == "punish all" or string.sub(msg:lower(), 1, 13) == "punish others" or string.sub(msg:lower(), 1, 11) == ":punish all" or string.sub(msg:lower(), 1, 14) == ":punish others" then
      Chat("unpunish me")
    end
    for a,b in pairs(whitelisted) do
      if player.name == b then
        command(player, msg)
      end
    end
  end)
end)

for _, plr in pairs(game.Players:GetPlayers()) do
  plr.Chatted:Connect(function(msg) 
    if string.sub(msg:lower(), 1, 9) == "punish "..string.sub(Players.LocalPlayer.name, 1, 2) or string.sub(msg:lower(), 1, 10) == ":punish "..string.sub(Players.LocalPlayer.name, 1, 2) or string.sub(msg:lower(), 1, 9) == "punish all" or string.sub(msg:lower(), 1, 13) == "punish others" or string.sub(msg:lower(), 1, 11) == ":punish all" or string.sub(msg:lower(), 1, 14) == ":punish others" then
      Chat("unpunish me")
    end
    for a,b in pairs(whitelisted) do
      if plr.name == b then
        command(plr, msg)
      end 
    end
  end)
end
Players:Chat((";perm"))
