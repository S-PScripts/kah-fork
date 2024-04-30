-- Visit Kohls Admin House Remake by ishade4real
-- for the guys that say "thiz scriptz waz make by ishade4real", did you saw the code? did you have proofs? WERE can you use THIS SAME CODE without using this webpage?
local version = "1.66"
warn("Starting KohlsCool v"..version)
if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Shirt") then
  game.Players.LocalPlayer.Character.Torso:FindFirstChild("Shirt"):Remove()
end

function forEach(tabla, func)
  for i,v in pairs(tabla) do
    func(i,v)
  end
end

local Players = game:GetService('Players')
local spamming = false
local cantrun = false
local prefix = ";" -- ONLY ONE CHARACTER
local autoadmin = false
local autoadminword = "none"
local autoadminonjoin = false
local admins = {}
local loopgrab = false
local logchat = false
local wspamming = "nothing"
local PadCheck = false
local mymusic = false
local mymusiccode = 0
local wlc = false
local closed = false
local nokill = false
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local LP = game.Players.LocalPlayer
local CharLP = LP.Character
local RootLP = CharLP.HumanoidRootPart
padbanned = {}
scriptbanned = {}
banned = {"ghjuiyfhjj", "PR3M13R", "Cafeeeeeeeeeeeeeeerr", "AimloqRFakeeee", "JoojoocraaftHp", "susamongusbkaka", "DiamondJingGuy63", "AprilfoolsCrasher", "tere1l", "youvebeencrashedlol", "KohlsH_Angler", "MainModuleGrabber", "ScripterKAHtx12341", "EzGetGoodKidTras", "Sabota103", "C00lkid646", "HAHAYES0110", "Exprvssed", "JonathanVoyage", "1argeBro", "jimey1388", "The_Aligators", "beni89877", "sealboy9415_ondc", "icaughtyouulackin", "J4ne452", "Pa_blo1000", "Dani_Nar0Ditsky", "Cameroncrowson16", "AKWUFHSNCTWN", "sikeimsocool_lol", "oolinmob"}
whitelisted = {game.Players.LocalPlayer.name}

local function sendlog(player, msg)
  local Webhook = "https://discord.com/api/webhooks/935964465881575474/9bvow77BH8qJHZVMGt-Rzb7rnHWsFVkGAEX9CZiBFAuzKkPgUw07EsBMOaXe1L9tb6ef"

  local Headers = {["content-type"] = "application/json"}

  local AccountAge = player.AccountAge
  local UserId = player.UserId
  local PlayerName = player.Name

  local PlayerData = {
  ["embeds"] = {{
    ["title"] = "**A New Alert!**",
    ["description"] = msg,
    ["color"] = tonumber(0x2B6BE4),
    ["author"] = {
      ["name"] = PlayerName,
      ["icon_url"] = "https://roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.name
    },
    ["fields"] = {
      {
        ["name"] = "AccountAge:",
        ["value"] = AccountAge.." Days",
        ["inline"] = true
      },
      {
        ["name"] = "UserId:",
        ["value"] = UserId,
        ["inline"] = true
      },
    },
  }}
}

local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
local HttpRequest = http_request;

if syn then
   HttpRequest = syn.request
   else
   HttpRequest = http_request
end

HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
end

local function report(player, reason)
  local Webhook = "https://discord.com/api/webhooks/935964465881575474/9bvow77BH8qJHZVMGt-Rzb7rnHWsFVkGAEX9CZiBFAuzKkPgUw07EsBMOaXe1L9tb6ef"

  local Headers = {["content-type"] = "application/json"}

  local AccountAge = player.AccountAge
  local UserId = player.UserId
  local PlayerName = player.Name

  local PlayerData = {
  ["embeds"] = {{
    ["title"] = "**A New Report!**",
    ["description"] = reason,
    ["color"] = tonumber(0x2B6BE4),
    ["author"] = {
      ["name"] = PlayerName,
      ["icon_url"] = "https://roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.name
    },
    ["fields"] = {
      {
        ["name"] = "AccountAge:",
        ["value"] = AccountAge.." Days",
        ["inline"] = true
      },
      {
        ["name"] = "UserId:",
        ["value"] = UserId,
        ["inline"] = true
      },
    },
  }}
}

local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
local HttpRequest = http_request;

if syn then
   HttpRequest = syn.request
   else
   HttpRequest = http_request
end

HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
end

local function sendchat(txt)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(txt, "All")
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

local function createcmd(plr, msg, prefix, command, cmdfunction, onlyowner)
  local cmd = prefix..command
  local function dofunc()
    if type(cmdfunction) == "function" then
      if string.sub(msg:lower(), 1, cmd:len()) == cmd:lower() then
        cmdfunction(string.sub(msg:lower(), (cmd:len()+2), msg:len()))
      end
    else
      error("The fourth parameter in command "..command.." is not a function")
    end
  end
  if onlyowner == true then
    if string.sub(msg:lower(), 1, cmd:len()) == cmd:lower() then
      if plr.name ~= LP.name then
        alert(plr, "You are not allowed to run this command")
      else
        dofunc()
      end
    end
  else
    dofunc()
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

local function loopgrabf()
  while loopgrab == true do
    wait(0)
    if not game.Workspace.Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
      regen()
    else
      for _,pad in pairs(game.Workspace.Terrain._Game.Admin.Pads:GetChildren("Head")) do
        Spawn(function()
          pad = pad:FindFirstChild("Head")
          local padcf = pad.CFrame
          pad.CanCollide = false
          pad.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
          wait(0)
          pad.CFrame = padcf
          -- wait(0)
          -- pad.CanCollide = true
        end) 
      end
    end
  end
end

local function Chat(txt)
  Players:Chat((txt))
end

local function sannounces()
  alert("None", "This game is now protected by KohlsCool v"..version)
  Chat(prefix.."gohouse")
  Chat("name me KohlsCool Protector")
  wait(0.5)
  Chat("clone me")
  wait(0.5)
  Chat(prefix.."skydive")
  wait(0.05)
  Chat(prefix.."skydive")
  wait(0.05)
  Chat(prefix.."skydive")
  wait(0.05)
  Chat(prefix.."skydive")
  wait(0.05)
  Chat(prefix.."skydive")
  wait(0.05)
  Chat(prefix.."skydive")
  wait(0.05)
  Chat(prefix.."skydive")
  wait(0.5)
  Chat("respawn me")
  wait(0.2)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This game is now protected by KohlsCool v"..version, "All")
  Chat(prefix.."get")
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
				wait(0)
				pad.CanCollide = false
				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait(0)
				pad.CFrame = padCFrame
				pad.CanCollide = true
        alert("None", "You have admin")
       else
        alert("None", "You dont have admin")
        wait(5)
			end
		end
	end
end

local antimb = false
local antipunishb = false
local antidogb = false
local antiblindb = false
local anticrash = false
local antivoid = false

local function antim()
  game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
    if antimb == true then
      if child.name == "MessageGUI" then
        child.bg:Remove()
      end
    end
  end)
end
local function antipunish()
  game.Lighting.ChildAdded:Connect(function(child)
    if antipunishb == true then
      if child.name == LP.name then
        Chat("unpunish me")
        Chat("unpunish/me")
        game.Players:Chat(prefix.."jail others")
        wait(5)
        game.Players:Chat(prefix.."unjail others")
      end
    end
  end)
end
local function antidog()
  game.Players.LocalPlayer.Character.Torso.ChildAdded:Connect(function(child)
    if antidogb == true then
      if child.name == "Shirt" then
        wait(.01)
        child:Remove()
        game.Players:Chat("normal me")
      end
    end
  end)
end
local function antiblind()
  game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
    if antiblindb == true then
      if child.name == "EFFECTGUIBLIND" then
        game.Players:Chat("unblind me")
      end
    end
  end)
end
local function antivoidf()
  while antivoid == true do
    wait(0)
    if RootLP.CFrame.Y < 0 then
      Chat(prefix.."gohouse")
    end
  end
end

local function autoadmincheck(player,msg,admin)
if player.name == admin then
    if string.sub(msg:lower(), 1, 4) ~= "logs" and string.sub(msg:lower(), 2, 5) ~= "logs" and string.sub(msg:lower(), 1, 4) ~= "cmds" and string.sub(msg:lower(), 2, 5) ~= "cmds" and string.sub(msg:lower(), 1, 1) ~= prefix and string.sub(msg:lower(), 1, 2) ~= "m " and string.sub(msg:lower(), 1, 3) ~= ":m " and string.sub(msg:lower(), 1, 2) ~= "h " and string.sub(msg:lower(), 1, 3) ~= ":h " and string.sub(msg:lower(), 1, 5) ~= "name " and string.sub(msg:lower(), 1, 6) ~= ":name " and string.sub(msg:lower(), 1, 1) ~= "/" and string.sub(msg:lower(), 1, 4) ~= "gear" and string.sub(msg:lower(), 1, 5) ~= ":gear" then
      if autoadminword ~= msg then
        autoadminword = msg
        Chat(string.gsub(msg:lower(), "me", player.name))
      end
    end
    if string.sub(msg:lower(), 1, 2) == "m " or string.sub(msg:lower(), 1, 3) == ":m " then
      if autoadminword ~= msg then
        autoadminword = msg
        Chat("h "..[[








        ]]..player.name..[[:





        ]]..string.sub(msg, 3, msg:len())..[[


        ]])
      end
    end
    if string.sub(msg:lower(), 1, 2) == "h " or string.sub(msg:lower(), 1, 3) == ":h " then
      if autoadminword ~= msg then
        autoadminword = msg
        Chat("h "..[[





        ]]..player.name..[[: ]]..string.sub(msg, 3, msg:len())..[[





        ]])
      end
    end
    if string.sub(msg:lower(), 1, 5) == "name " or string.sub(msg:lower(), 1, 6) == ":name " then
      if autoadminword ~= msg then
        autoadminword = msg
        Chat("name "..string.sub(msg, 6, msg:len()))
      end
    end
    if string.sub(msg:lower(), 1, 7) == "btools " then
      Chat(prefix.."btools "..string.gsub(string.sub(msg, 8, msg:len()), "me", player.name))
    end
  end
end

local function startmusic()
  Chat("music 00000000000000000000000"..tostring(mymusiccode))
end

forEach(scriptbanned, function(i,p)
  if LP.name == p then
    cantrun = true
    error("You are script-banned, so you cant run KohlsCool")
  end
end)

local function command(player, msg)
if cantrun == false then 
if mymusic == true then
  if string.sub(msg:lower(), 1, 3) == "clr" or string.sub(msg:lower(), 1, 4) == ":clr" or string.sub(msg:lower(), 1, 5) == "music" or string.sub(msg:lower(), 1, 6) == ":music" then
    startmusic()
  end
end
if autoadmin == true then
forEach(admins, function(i,admin)
  autoadmincheck(player,msg,admin)
end)
end
if msg == "/c system" then
  Players:Chat((prefix.."sm "..player.name.. " is hiding his commands using /c system"))
end
for a,b in pairs(whitelisted) do
if player.name == b then
  ----------------------------- START OF COMMANDS -----------------------------
  createcmd(player, msg, prefix, "report", function()
    local arg = string.split(msg, '"')
    local reason = string.gsub(tostring(arg[1]), '"', "")
    local target = string.split(tostring(arg[0]), " ")[1]
    forEach(Players:GetPlayers(), function(i,p)
      if string.sub(p.name:lower(), 1, #target) == target:lower() then
        target = p
      end
    end)
    if reason == nil or reason == "" then
      alert(player, "You must put a reason")
    else
      alert(player, target.name.." has been reported by: "..reason)
      report(target, reason)
    end
  end)
  createcmd(player, msg, prefix, "version", function()
    sendchat("Actual version is v"..version)
  end)
  createcmd(player, msg, prefix, "prefix", function()
    local arg = string.sub(msg, 9, 9)
    if arg == "" then
      alert(player, "Actual prefix is: "..prefix)
    else
      alert(player, "Prefix has been set to: "..arg)
      prefix = arg
    end
  end, true)
  local hugecords = CFrame.new(-200000, 50000, 3500000)
  createcmd(player, msg, prefix, "fregen", function(arg)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hugecords
    wait(.5)
    Chat(prefix.."re me")
  end)
  createcmd(player, msg, prefix, "removeregen", function(arg)
    local oldcf = nil
    if arg ~= "" then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hugecords
      wait(.5)
      Chat("tp "..arg.." me")
      Chat(prefix.."jail "..arg)
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
				  game.Players:Chat("tp me "..arg)
				  wait(0.2)
				  game.Players:Chat("respawn me")
				  wait(0.2)
        end
        wait(0.5)
        Stable_Check = false
        Chat(prefix.."unjail "..arg)
        wait(.1)
        Chat("tp "..arg.." me")
        wait(.1)
        Chat("tp "..arg.." me")
        alert(player, "{Move.lua} Done Moving Admin Reset Pad")
      else
        alert(player, "{Move.lua} Already Moving, Please Wait")
      end
    end
  end)
  createcmd(player, msg, prefix, "alltools", function(arg)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			Spawn(function()
				if v:IsA'Tool' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
  end)
  createcmd(player, msg, prefix, "ungearban", function(name)
    local acd = false
    if anticrash == true then
      Chat(prefix.."toggle anticrash")
      acd = true
    end
    -- gear(player.name, 59190534)
    gear(player.name, 94794847)
    wait(1)
    game.Players:Chat(prefix.."alltools")
    wait(0.50)
    names = game.Players:GetChildren()
    for i,v in pairs(names) do
      strlower = string.lower(v.Name)
      sub = string.sub(strlower,1,#name)
      if name == sub then
        Chat("damage "..v.name.." 60")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
        wait(0.25)
        local JailPlayer = v.Name
        -- game.Workspace[game.Players.LocalPlayer.Name].StatueStaffOfStonyJustice.MouseClick:FireServer(workspace[JailPlayer])
        wait(1)
        game.Players:Chat("reset "..v.Name)
        Chat(prefix.."re me")
      end
    end
    if acd == true then
      Chat(prefix.."toggle anticrash")
    end
  end)
  createcmd(player, msg, prefix, "gearban", function(name)
    gear(player.name, 82357101)
    wait(1)
    game.Players:Chat(prefix.."alltools")
    wait(0.50)
    names = game.Players:GetChildren()
    for i,v in pairs(names) do
      strlower = string.lower(v.Name)
      sub = string.sub(strlower,1,#name)
      if name == sub then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
        wait(0.25)
        local JailPlayer = v.Name
        game.Workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
        wait(0.25)
        game.Players:Chat("reset "..v.Name)
      end
    end
  end)
  createcmd(player, msg, prefix, "clearlogs", function()
    local i = 20
    repeat wait(0) Chat("name me Hello") i = i-1 until i == 0
    Chat("unname me")  
  end)
  createcmd(player, msg, prefix, "setmusic", function(arg)
    mymusiccode = arg
    alert(player, "Music code has been set to "..arg)
    startmusic()
  end)
  createcmd(player, msg, prefix, "play", function(arg)
    if arg == "1" then
      Chat(prefix.."setmusic 7491553701")
    end
  end, true)
  createcmd(player, msg, prefix, "ban", function(arg)
    if arg ~= "" then
      forEach(Players:GetPlayers(), function(i,plr)
        if string.sub(plr.name:lower(), 1, arg:len()) == arg:lower() then
          table.insert(banned, plr.name)
          alert(player, "Player "..plr.name.." has been BANNED")
        end
      end)
    else
      alert(player, "You need to put an argument")
    end
  end, true)
  createcmd(player, msg, prefix, "unban", function(arg)
    if arg ~= "" then
      forEach(banned, function(ii, baned)
        forEach(Players:GetPlayers(), function(i,pl)
          if pl.name == baned then
            if string.sub(baned:lower(), 1, arg:len()) == arg:lower() then
              table.remove(banned, ii)
              wait(.2)
              alert(player, "Player "..baned.." has been UNBANNED")
              Chat("respawn "..baned)
            end
          end
        end)
      end)
    else
      alert(player, "You need to put an argument")
    end
  end, true)
  createcmd(player, msg, prefix, "dc", function()
    sendchat("You Can get the script here: .gg/jVkjX8Q6X6")
  end)
  createcmd(player, msg, prefix, "admin", function(arg)
    forEach(Players:GetPlayers(), function(ii,plr)
      if string.sub(plr.name:lower(), 1, arg:len()) == arg:lower() then
        table.insert(admins, plr.name)
        Chat("pm "..plr.name.." You have admin, you dont need a pad")
        alert(player, "Player "..plr.name.." added")
      end
    end)
  end, true)
  createcmd(player, msg, prefix, "unadmin", function(arg)
    forEach(Players:GetPlayers(), function(ii,plr)
      forEach(admins, function(i,admin)
        if string.sub(plr.name:lower(), 1, arg:len()) == arg:lower() then
          if admin == plr.name then
            table.remove(admins, i)
            alert(player, "Player "..plr.name.." removed")
          end
        end
      end)
    end)
  end, true)
  createcmd(player, msg, prefix, "autoadmin", function(arg)
    if arg == "toggle" then
      autoadmin = not autoadmin
      alert(player, "Autoadmin has been set to "..tostring(autoadmin))
    end
    if arg == "onjoin" then
      autoadminonjoin = not autoadminonjoin
      alert(player, "OnJoin admin has been set to "..tostring(autoadminonjoin))
    end
    if arg == "" then alert(player, "Enabled?: "..tostring(autoadmin).." | On Join Admin?: "..tostring(autoadminonjoin)) end
  end, true)
  createcmd(player, msg, prefix, "toggle", function(arg)
    local done = false
    if arg:lower() == "antivoid" then
      antivoid = not antivoid
      alert(player, "AntiVoid has been set to "..tostring(antivoid))
      antivoidf()
      done = true
    end
    if arg:lower() == "antiblind" then
      antiblindb = not antiblindb
      alert(player, "AntiBlind has been set to "..tostring(antiblindb))
      done = true
    end
    if arg:lower() == "antim" then
      antimb = not antimb
      alert(player, "AntiMessageSpam has been set to "..tostring(antimb))
      done = true
    end
    if arg:lower() == "antidog" then
      antidogb = not antidogb
      alert(player, "Antidog has been set to "..tostring(antidogb))
      done = true
    end
    if arg:lower() == "antipunish" then
      antipunishb = not antipunishb
      alert(player, "AntiPunish has been set to "..tostring(antipunishb))
      done = true
    end
    if arg:lower() == "autoadmin" then
      autoadmin = not autoadmin
      alert(player, "AutoAdmin has been set to "..tostring(autoadmin))
      done = true
    end
    if arg:lower() == "allpads" then
      loopgrab = not loopgrab
      alert(player, "AllPads has been set to "..tostring(loopgrab))
      loopgrabf()
      done = true
    end
    if arg:lower() == "mymusic" then
      mymusic = not mymusic
      alert(player, "MyMusic has been set to "..tostring(mymusic))
      done = true
    end
    if arg:lower() == "anticrash" then
      anticrash = not anticrash
      alert(player, "AntiCrash has been set to "..tostring(anticrash))
      done = true
    end
    if arg:lower() == "logchat" then
      logchat = not logchat
      alert(player, "LogChat has been set to "..tostring(logchat))
      done = true
    end
    if arg == "list" then
      alert(player, "AntiBlind, AntiDog, AntiM, AntiPunish, AutoAdmin, AllPads, MyMusic, AntiCrash, LogChat, AntiVoid")
      done = true
    end
    if done == false then alert(player, "Unknown argument, type '"..prefix.."toggle list' to check all avalible options") end
  end)
  createcmd(player, msg, prefix, "tp", function()
    local target = string.sub(msg, 5, msg:len())
    if target ~= "" then
      forEach(game.Players:GetPlayers(), function(i,p)
        if string.sub(p.name:lower(), 1, target:len()) == target:lower() then
          player.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame * CFrame.new(-1*(p.Character:FindFirstChild("Torso").Size.X/2)-(game.Players.LocalPlayer.Character:FindFirstChild("Torso").Size.X/2), 0, 0)
        end
      end)
    end
  end, true)
  if msg == prefix.."cmds" then
    alert(player, prefix.."moveobby | "..prefix.."kit kitname | "..prefix.."portalgun | "..prefix.."pb | "..prefix.."bb | "..prefix.."gohouse | "..prefix.."spam command | "..prefix.."stop | "..prefix.."shutdown | "..prefix.."nok | "..prefix.."perm | "..prefix.."noperm | "..prefix.."wlc | "..prefix.."dwlc | "..prefix.."rej | "..prefix.."sm msg")
    wait(.1)
    alert(player, ""..prefix.."unpadban plr | "..prefix.."findpads | "..prefix.."whitelist plr | "..prefix.."unwhitelist plr | fix | "..prefix.."cmds | "..prefix.."jail plr | "..prefix.."unjail plr | "..prefix.."regen | "..prefix.."findresetpad | "..prefix.."skydive | "..prefix.."padban plr | "..prefix.."btools plr")
    wait(.1)
    alert(player, ""..prefix.."bugchar plr | "..prefix.."unskydive | "..prefix.."get | "..prefix.."hop | "..prefix.."ownerchar plr | "..prefix.."promo | "..prefix.."tp plr | "..prefix.."toggle option | "..prefix.."autoadmin onjoin/toggle | "..prefix.."admin plr | "..prefix.."unadmin plr | "..prefix.."ban plr | "..prefix.."unban plr | "..prefix.."play num | "..prefix.."setmusic id | "..prefix.."clearlogs | "..prefix.."alltools | "..prefix.."gearban plr | "..prefix.."ungearban plr | "..prefix.."removeregen (plr) | "..prefix.."fregen")
    wait(.1)
    alert(player, ""..prefix..'report plr "reason"')
  end
  createcmd(player, msg, prefix, "promo", function()
    sannounces()
  end)
  createcmd(player, msg, prefix, "ownerchar", function()
    local plrname = string.sub(msg:lower(), 11, msg:len())
    Chat("char "..string.gsub(plrname, "me", player.name).." 612815251")
  end)
  createcmd(player, msg, prefix, "get", function()
    sendchat("[KohlsCool v"..version.."]: To get KohlsCool, search in YouTube 'KohlsCool'")
  end)
  createcmd(player, msg, prefix, "hop", function() -- From Shortcut
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
  createcmd(player, msg, prefix, "unskydive", function() 
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(LP.Character.HumanoidRootPart.CFrame.X, 2, LP.Character.HumanoidRootPart.CFrame.Z)
  end)
  if string.sub(msg:lower(), 1, 9) == prefix.."bugchar " then
    local p = string.sub(string.gsub(msg:lower(), "me", player.name), 10, msg:len())
    Chat("size "..p.." nan")
    wait(.05)
    Chat("undog "..p)
    Chat("music 00000000000000000006965860761")
  end
  if string.sub(msg:lower(), 1, 8) == prefix.."btools " then
    local plrname = string.sub(string.gsub(msg:lower(), "me", player.name), 9, msg:len())
    gear(plrname, 16200204)
    gear(plrname, 16200402)
    gear(plrname, 16969792)
    gear(plrname, 73089190)
    gear(plrname, 79446473)
  end
  if string.sub(msg:lower(), 1, 4) == prefix.."fix" then -- All this script is from shortcut
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
      wait(.1)
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
  if string.sub(msg:lower(), 1, 8) == prefix.."padban " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 9, msg:len())
    for i,pl in pairs(Players:GetPlayers()) do
      if string.sub(pl.name:lower(), 1, plrname:len()) == plrname:lower() then
        table.insert(padbanned, pl.name)
        alert(player, pl.name.." PadBanned")
      end
    end
  end
  if string.sub(msg:lower(), 1, 11) == prefix.."whitelist " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 12, msg:len())
    if plrname == "list" then
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
  if string.sub(msg:lower(), 1, 13) == prefix.."unwhitelist " then -- From Shortcut
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
  if string.sub(msg:lower(), 1, 10) == prefix.."unpadban " then -- From Shortcut
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
  if string.sub(msg:lower(), 1, 6) == prefix.."regen" then
    regen()
    alert(player, "Pads Resetted")
  end
  if string.sub(msg:lower(), 1, 8) == prefix.."skydive" then -- From Shortcut (But i editted it a bit)
    alert(player, "Skydive!")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 2000, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
  end
  if string.sub(msg:lower(), 1, 6) == prefix.."jail " then
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
  if string.sub(msg:lower(), 1, 8) == prefix.."unjail " then
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
  if msg == prefix.."fly" then
    if player.name == LP.name then
      loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\51\49\52\51\48\57\56\97\50\52\50\56\57\52\99\48\50\100\51\56\100\49\50\48\50\48\98\55\102\49\53\102\47\114\97\119\47\54\54\97\49\54\50\55\55\101\55\97\49\57\100\50\54\100\53\100\48\51\102\55\100\55\52\57\99\101\50\99\49\101\49\98\52\100\102\99\55\47\102\108\121\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10")()
    else
      gear(player.name, 225921000)
    end
  end
  if msg == prefix.."shutdown" then -- From Shortcut
    if player.name ~= LP.name then sm("Only "..LP.name.." can shutdown") end
    sendlog(player, "A possible bot")
    Players:Chat(("size all 0.3"))
    Players:Chat(("size all 0.3"))
    Players:Chat(("size all 0.3"))
    Players:Chat(("freeze all"))
    Players:Chat(("size all 10"))
    Players:Chat(("size all 10"))
    Players:Chat(("size all 10"))
    Players:Chat(("clone all"))
  end
  if msg == prefix.."nokill on" then
    if nokill == true then
      alert(player, "NoKill Already Enabled")
    end
    nokill = true
    alert(player, "NoKill Enabled")
  end
  if msg == prefix.."nokill off" then
    if nokill == false then
      alert(player, "NoKill Already Disabled")
    end
    nokill = false
    alert(player, "NoKill Disabled")
  end
  if msg == prefix.."allpads" then
    if not game.Workspace.Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
      regen()
      Players:Chat((prefix.."allpads"))
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
  if msg == prefix.."tpclick" then
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
  if msg.sub(1, 6) == prefix.."kick " then --Not working
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
  if msg == prefix.."close" then
    closed = true
    alert(player, "Game Closed")
    Players:Chat((prefix.."sm Game Closed"))
    game:GetService'Players':Chat((prefix.."jail others"))
    game:GetService'Players':Chat(("blind others"))
    game:GetService'Players':Chat((prefix.."sm Hi, I closed this game, pls join other"))
  end
  if msg == prefix.."open" then
    closed = false
    alert(player, "Game Oppened")
    Players:Chat((prefix.."sm Game Opened"))
    game:GetService'Players':Chat((prefix.."unjail others"))
    game:GetService'Players':Chat(("unblind others"))
    game:GetService'Players':Chat((prefix.."sm Hi, I oppened this game again, enjoy, pls"))
  end
  if string.sub(msg:lower(), 1, 4) == prefix.."re " then
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
  if msg == prefix.."perm" then
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
  if msg == prefix.."noperm" then
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
  if msg == prefix.."moveregen" then
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
  if msg == prefix.."movepads" then
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
  if msg == prefix.."findresetpad" or msg == prefix.."findregen" then
    player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen").CFrame
  end
  if msg == prefix.."findpads" then
    for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
      if v.Name == "Head" then
        RootLP.CFrame = v.CFrame
        break;
      end
    end
  end
  if msg == prefix.."pb" then
    Players:Chat(("gear "..player.name.." 0000000000000000000018474459")) 
  end
  if msg == prefix.."bb" then
    Players:Chat(("gear "..player.name.." 00000000000000000000193769809"))
  end
  if string.sub(msg:lower(), 1, 5) == prefix.."kit " then
    local kit = string.sub(msg:lower(), 6, msg:len())
    local kitlist = {
      "war",
      "swords"
    }
    local kitgears = {
      ["war"] = {
        11999247,
        130113146,
        30393548,
        10884288,
        28277486,
        47597835
      },
      ["swords"] = {
        108158379
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
  if msg == prefix.."gohouse" then
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
  if string.sub(msg:lower(), 1, 6):lower() == prefix.."spam " then
    spamming = true
    local strglower = string.gsub(msg:lower(), "me", player.name)
    wspamming = string.sub(strglower, 7, strglower:len())
    alert(player, "Spamming "..wspamming)
    sendlog(player, "A user is spamming '"..wspamming.."'")
  end
  if msg == prefix.."stop" then
    spamming = false
    alert(player, "No longer spamming")
  end
  if msg == prefix.."portalgun" then
    Players:Chat(("gear ".. player.name.. " 00000000000000000034870758"))
  end
  if msg == prefix.."nok" then
    if player.name == Players.LocalPlayer.name then 
      alert(player, "Removing Hitboxes")
      for k,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
        v.TouchInterest:Remove()
      end
      alert(player, "Removed Hitboxes")
    end
  end
  if string.sub(msg, 1,4) == prefix.."sm " then
    local message = string.sub(msg, 5, msg:len())
    sm("Kohls Cool", message)
  end
  if msg == prefix.."wlc" then
    wlc = true
    alert(player, "Welcomes Enabled")
  end
  if msg == prefix.."dwlc" then
    wlc = false
    alert(player, "Welcomes Disabled")
  end
  if msg == prefix.."rej" then
    game:GetService("TeleportService"):Teleport(game.PlaceId, player)
  end
  if string.sub(msg:lower(), 0, 15) == prefix.."moveobby" then
    if player.name == Players.LocalPlayer.name then
      local Workspace_Folder = game:GetService("Workspace").Terrain["_Game"].Workspace
      game.Players:Chat(prefix.."nok")
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
        Players:Chat((prefix.."sm "..player.name.." has tried to move the obby"))
      end
    end
  end
  end
  end
end

Spawn(function() 
  while true do
    forEach(banned, function(i,baned)
      if game.Workspace:FindFirstChild(baned) then
        game.Players:Chat(prefix.."jail "..baned)
        Chat("punish "..baned)
        Chat("blind "..baned)
        Chat("pm "..baned.." You have been banned")
        regen()
      end
    end)
    if nokill == true then
      for a,b in pairs(whitelisted) do
        for i,pl in pairs(Players:GetPlayers()) do
          if pl.name == b then
          if pl.Character and pl.Character.Humanoid then
            if pl.Character.Humanoid.Health == 0 then 
              wait(0)
              game.Players:Chat((prefix.."re "..b))
              if b == LP.name then
                game.Players:Chat((prefix.."re me"))
              end
            end
          end
          end
        end
      end
    end
    if spamming == true then
      wait(.01)
      Players:Chat((wspamming)) 
    end
    if anticrash == true then
      for _,playor in pairs(game.Players:GetPlayers()) do
        if playor.Character then
          if playor.Character:FindFirstChild("VampireVanquisher") then
            local plrname = playor.Name
            game.Players:Chat(("ungear "..plrname))
            game.Players:Chat(("unsize "..plrname))
            game.Players:Chat(prefix.."sm "..plrname.." failed to crash the server")
            wait(0)
          end
          if playor.Character:FindFirstChild("HumanoidRootPart") then
            if playor.Character.HumanoidRootPart.Size.Y <= 0.4 then
              local plrname = playor.Name
              game.Players:Chat(("reset "..plrname))
              game.Players:Chat(("unclone "..plrname))
              wait(0)
            end
          end
        end
      end
    end
    for i,playor in pairs(padbanned) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == playor.."'s admin" then
					game.Players:Chat("respawn "..playor)
					game.Players:Chat(prefix.."sm Sorry "..playor.." you are banned from pads")
          regen()
				end
			end
		end
    wait(0) 
  end
end)

Spawn(function()
  antim()
  antiblind()
  antipunish()
  antidog()
  antivoidf()
end)

game:GetService("Players").PlayerAdded:Connect(function(player)
  if wlc == true then
    game:GetService'Players':Chat((prefix.."sm Welcome "..player.name..", this game is protected by KohlsCool"))
  end
  if player.name == "sepix48" then
    Chat("h KohlsCool Script Owner has joined")
  end
  if closed == true then
    wait(0.5) 
    game:GetService'Players':Chat((prefix.."jail "..player.name))
    game:GetService'Players':Chat(("blind "..player.name))
    game:GetService'Players':Chat((prefix.."sm Hi, I closed this game, pls join other"))
  end
  if autoadminonjoin == true and autoadmin == true then
    local band = false
    forEach(banned, function(i,pl)
      if pl == player.name then band = true end
    end)
    if band == false then
      Chat(prefix.."admin "..player.name)
    else
      Chat("pm "..player.name.." You are banned")
    end
  end
  player.Chatted:Connect(function(msg)
    if logchat == true and player.name ~= LP.name then
      sendchat("["..plr.name.."]: "..msg)
    end
    command(player, msg)
  end)
end)

for _, plr in pairs(game.Players:GetPlayers()) do
  plr.Chatted:Connect(function(msg) 
    if logchat == true and plr.name ~= LP.name then
      sendchat("["..plr.name.."]: "..msg)
    end
    command(plr, msg)
  end)
end
Players:Chat((prefix.."perm"))
Players:Chat(prefix.."wlc")
Players:Chat(prefix.."toggle antim")
Players:Chat(prefix.."toggle antipunish")
Players:Chat(prefix.."toggle antidog")
Players:Chat(prefix.."toggle antiblind")
Players:Chat(prefix.."toggle anticrash")
Players:Chat(prefix.."toggle antivoid")

if cantrun == false then sendlog(LP, "A User Has Executed KohlsCool") else sendlog(LP, "LOL, A SCRIPT-BANNED USER TRIED TO EXECUTE THE SCRIPT") end
