function mysplit (inputstr, link, sep)
  if link == nil then link = true end
  if sep == nil then
    sep = "%s"
  end
  local t={}
  if link then
    inputstr = game:HttpGet(inputstr)
  end
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
	  str = str:gsub(",", ""):gsub("\"", ""):gsub("{", ""):gsub("}", "")
      table.insert(t, str)
    end
  return t
end

local ovc = mysplit("https://kohlscool.sergioesquina.repl.co/version",true)
local version = ovc[1].."."..(ovc[2]+1).."-Beta"
warn("Starting KohlsCool v"..version)

local RunService = game:GetService("RunService")

_G.prefix = ";" -- ONLY ONE CHARACTER

local gui = loadstring(game:HttpGet("https://kohlscool.sergioesquina.repl.co/gui"))

function forEach(tabla, func)
    for i,v in pairs(tabla) do
      func(i,v)
    end
end

--[[
  DONT EDIT ANYTHING
  EVERY LOCAL IS IN-GAME EDITABLE
]]
_G.cmds = {}
local antimb = true
local permSystem = false
local antipunishb = true
local antidogb = true
local antiblindb = true
local anticrash = true
local antivoid = true
local antifreeze = true
local antijail = true
local Players = game:GetService('Players')
local Stable_Check = false
local spamming = false
local autoadmin = false
local autoadminword = "none"
local autoadminonjoin = false
local admins = {}
local dead = false
local loopgrab = false
local logchat = false
local wspamming = "nothing"
local PadCheck = false
local mymusic = false
local mymusiccode = 0
local wlc = true
local closed = false
local nokill = false
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local LP = game.Players.LocalPlayer
while not LP.Character:FindFirstChild("HumanoidRootPart") do
RunService.Heartbeat:Wait()
if LP.Character:FindFirstChild("HumanoidRootPart") then 
  break 
end 
end
local CharLP = game.Players.LocalPlayer.Character
local RootLP = CharLP.HumanoidRootPart
local padbanned = {}
local scriptBannedTable = mysplit("https://kohlscool.sergioesquina.repl.co/sb")
local banned = mysplit("https://kohlscool.sergioesquina.repl.co/b")
local whitelisted = {game.Players.LocalPlayer.name}
padsCFrame = {}
table.insert(padsCFrame, CFrame.new(-40.7649879, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-36.7649803, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-32.7649765, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-20.7649632, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-44.7649994, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-12.7649641, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-28.7649689, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-16.7649612, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-24.764967, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))

local function scriptBanned(plrname)
  if table.find(scriptBannedTable, plrname) then
    return true
  else
    return nil
  end
end

local function hasGamePass(playerId, gamePassId)
	if permSystem == true then
		if string.match(game:HttpGet("https://inventory.roblox.com/v1/users/"..playerId.."/items/GamePass/"..gamePassId), gamePassId) then
			return true
		else
			return false
		end
  else
    return nil
  end
end

local function getDisplayName(plr)
  if plr.DisplayName ~= nil then
    return plr.DisplayName
  else
    return plr.Name
  end
end

local function sendlog(player, msg)
      local Webhook = "https://discord.com/api/webhooks/1077324213859389500/1mQQpMxnX97gqlW-he9XDNpVkktOGaHzZD329td3uZdi6ETkvdeSYiPpPUGyU4GrbQmO"
  
      local Headers = {["content-type"] = "application/json"}
  
      local AccountAge = player.AccountAge
      local UserId = player.UserId
      local PlayerName = player.Name
      local placeId = game.PlaceId
      local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
  
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
		      ["name"] = "KohlsCool Version:",
		      ["value"] = version,
		      ["inline"] = true
		  },
          {
            ["name"] = "Staff Token", 
            ["value"] = _G.staffkey, 
            ["inline"] = true
          }, 

          {
                      ["name"] = "GameId:",
                      ["value"] = game.PlaceId,
                      ["inline"] = true
                  },
                  {
                      ["name"] = "GameName:",
                      ["value"] = PlaceName,
                      ["inline"] = true
                  },
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
                  {
                      ["name"] = "DisplayName:",
                      ["value"] = getDisplayName(game.Players.LocalPlayer),
                      ["inline"] = true
                  }
              },
          }}
      }
  
      local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
      local HttpRequest = http_request or request or HttpPost or syn.request;
  
      HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
end

local function sendreport(reported, reason)
	local player = game.Players.LocalPlayer
	if not reason or reason == nil then
		reason = "No reason"
	end
	if not reported or reported == nil or typeof(reported) == string then
		alert("none", "You need to put a player to report")
		return
	end
	local Webhook = "https://discord.com/api/webhooks/1077324427089412356/LmP6cq2ki2Eq_LEue3W44NQlLozap8RGxkPW4dH5KmF-siNunR8PsSXQhkRQpz-zRZyc"
	
	local Headers = {["content-type"] = "application/json"}

      local AccountAge = player.AccountAge
      local UserId = player.UserId
      local PlayerName = player.Name
      local placeId = game.PlaceId
      local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
  
	local PlayerData = {
		["embeds"] = {{
			["title"] = "**New Player Report!**",
			["color"] = tonumber(0x2B6BE4),
			["author"] = {
				["name"] = PlayerName,
				["icon_url"] = "https://roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.name
			},
			["fields"] = {
				{
					["name"] = "GameId:",
					["value"] = game.PlaceId,
					["inline"] = true
				},
				{
					["name"] = "GameName:",
					["value"] = PlaceName,
					["inline"] = true
				},
				{
					["name"] = "Reporter User Age:",
					["value"] = AccountAge.." Days",
					["inline"] = true
				},
				{
					["name"] = "Reporter User Id:",
					["value"] = UserId,
					["inline"] = true
				},
				{
					["name"] = "Reporter Display Name:",
					["value"] = getDisplayName(game.Players.LocalPlayer),
					["inline"] = false
				},
				{
					["name"] = "Reported Name:",
					["value"] = reported.Name,
					["inline"] = true
				},
				{
					["name"] = "Reported DisplayName:",
					["value"] = getDisplayName(reported),
					["inline"] = true
				},
          {
            ["name"] = "Reason:",
            ["value"] = reason,
            ["inline"] = true
          }
			}
		}}
	}
  
      local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
      local HttpRequest = http_request or request or HttpPost or syn.request;
  
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
    --[[game.StarterGui:SetCore("ChatMakeSystemMessage", {
          Text = "KohlsCool: "..txt;
          Font = Enum.Font.SourceSansLight;
          Color = Color3.new(255, 255, 255);
          FontSize = Enum.FontSize.Size8;
        })]]
    game.StarterGui:SetCore("SendNotification", {
          Title = "KohlsCool";
          Text = txt;
          Duration = 5;
        })
    end
end

alert("none", "Starting up, please wait...")


if scriptBanned(LP.Name) then
  game.StarterGui:SetCore("ChatMakeSystemMessage", {
          Text = "KohlsCool: ".." You are scriptbanned, you are not able to run any command, join our Discord server to try to get unbanned: https://discord.gg/jVkjX8Q6X6";
          Font = Enum.Font.SourceSansLight;
          Color = Color3.new(255, 255, 255);
          FontSize = Enum.FontSize.Size8;
        })
  alert("none", "You are scriptbanned, you are not able to run any command, join our Discord server to try to get unbanned: https://discord.gg/jVkjX8Q6X6")
  PadCheck = false
  game.Players:Chat(";toggle antivoid")
  game.Players:Chat(";toggle antijail")
  game.Players:Chat(";toggle antifreeze")
  game.Players:Chat(";toggle anticrash")
  game.Players:Chat(";toggle antipunish")
  game.Players:Chat(";toggle antidog")
  game.Players:Chat(";toggle antiblind")
  game.Players:Chat(";toggle antim")
  wait(2)
  for i, v in pairs(whitelisted) do 
    if v == LP.Name then 
      table.remove(whitelisted, i)
    end
  end
else 
  if game.CoreGui:FindFirstChild("KCGUI") or getgenv().isloadkc then 
  alert("none", "KohlsCool is already executed.") 
for i, v in pairs(whitelisted) do 
    if v == LP.Name then 
      table.remove(whitelisted, i)
    end
    end
  else
  alert("none", "Fully loaded, type ';cmds' to see a list of commands")
    getgenv().isloadkc = true
  end

end

local function createcmd(plr, msg, prefix, command, cmdfunction, onlyowner)
  _G.cmds[#_G.cmds+1] = command
    local cmd = _G.prefix..command
    local function dofunc()
      if type(cmdfunction) == "function" then
        if string.sub(msg:lower(), 1, cmd:len()) == cmd:lower() then
          cmdfunction(string.sub(msg, (cmd:len()+2), msg:len()))
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

local function sm(plrname, msg)
    Players:Chat("h \n\n\n\n\n\n\n\n"..plrname..": "..msg.."\n\n\n\n\n\n\n\n")
end

local function regen() -- From Shortcut
    if game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen") then
      fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen"):FindFirstChild("ClickDetector"), 0)
    end
end

local function loopgrabf()
    local padcf = nil
    while loopgrab == true do
    RunService.Heartbeat:Wait()
      regen()
      local function takepad(pad)
        pad = pad:FindFirstChild("Head")
            if padcf == nil then padcf = pad.CFrame end
            pad.CanCollide = false
            pad.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            RunService.Heartbeat:Wait()
            pad.CFrame = padcf
      end
        forEach(workspace.Terrain._Game.Admin.Pads:GetChildren("Head"), function(i,pad)
          spawn(function()
            RunService.Heartbeat:Wait()
            takepad(pad)
            end)
          end)
      end
  Players:Chat(_G.prefix.."seepads")
end

local function Chat(txt)
    Players:Chat((txt))
end

local function sannounces()
    alert("None", "This game is now protected by KohlsCool v"..version)
    Chat(_G.prefix.."gohouse")
    Chat("name me KohlsCool Protector")
    wait(0.5)
    Chat("clone me")
    wait(0.5)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.5)
    Chat("respawn me")
    wait(0.2)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This game is now protected by KohlsCool v"..version, "All")
    Chat(_G.prefix.."get")
end

local function gear(plrname, gear)
    Chat("gear "..plrname.." 000000000000000000000000"..gear)
end

local function GetPad(msg) -- From Shortcut
  	while PadCheck == true do
    RunService.Heartbeat:Wait()
  		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
  			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
  				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
  				local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
  				pad.CanCollide = false
  				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
  				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  				RunService.Heartbeat:Wait()
  				pad.CFrame = padCFrame
  				pad.CanCollide = true
          alert("None", "You have admin")
        else
          alert("None", "You dont have admin")
          regen()
  			end
  		end
  	end
end


_G.keybinds = {
	["gohouse"] = "G",
	["safechat"] = "P"
}

local function keyBinds(player,key)
  if table.find(whitelisted, player.Name) then
    for cmd,bind in pairs(_G.keybinds) do
      if key:lower() == bind:lower() then
        Chat(_G.prefix..cmd)
      end
    end
  end
end

local LPMouse = LP:GetMouse()

LPMouse.KeyDown:Connect(function(key)
    key = key:lower()
    keyBinds(LP, key)
end)

local function autoadmincheck(player,msg,admin)
    if player.name == admin then
    local block = false
      forEach({"logs", "cmds", "commands", "m ", "h", "name", "/", "size", "94794847", ";"}, function(i,word)
          if msg:find(word) then
            block = true
          end
      end)
      if not block then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat(string.gsub(msg:lower(), "me", player.name))
        end
      end
      if string.sub(msg:lower(), 1, 6) == "carpet" or string.sub(msg:lower(), 1, 7) == ":carpet" then
        Chat("gear "..string.sub(msg:gsub("me", player.name):lower(), 8).." 00000000000000000000000225921000")
      end
      if string.sub(msg:lower(), 1, 2) == "m " or string.sub(msg:lower(), 1, 3) == ":m " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("h \n\n\n\n\n\n\n\n\n"..player.name..":\n\n\n\n\n\n"..string.sub(msg, 3, msg:len()).."\n\n\n")
        end
      end
      if string.sub(msg:lower(), 1, 4) == "info" then
        Chat("h \n \n \n \n \n \n \n \n \n There are some special commands:\n'btools plr' -> You can get btools! (but only you can see it)\n 'carpet plr' -> You can get a fly carpet \n \n \n \n Replace 'plr' with your name or 'me'")
      end
      if string.sub(msg:lower(), 1, 2) == "h " or string.sub(msg:lower(), 1, 3) == ":h " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("h \n\n\n\n\n\n\n\n"..player.name..": "..string.sub(msg, 3, msg:len()).."\n\n\n\n\n\n")
        end
      end
      if string.sub(msg:lower(), 1, 5) == "name " or string.sub(msg:lower(), 1, 6) == ":name " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("name "..string.sub(msg:gsub("me", player.name):gsub(":", ""), 6, msg:len()))
        end
      end
      if string.sub(msg:lower(), 1, 7) == "btools " then
        Chat(_G.prefix.."btools "..string.gsub(string.sub(msg, 8, msg:len()), "me", player.name))
      end
    end
end

local function startmusic()
    Chat("music 00000000000000000000000"..tostring(mymusiccode))
end

local function clickivory() -- YES, FINALLY IVORY MOVING METHOD
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v:IsA("Tool") and v.Name == "IvoryPeriastron" then
        v.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.name)
      --repeat wait() until workspace[LP]:FindFirstChild("IvoryPeriaston")
        for i,w in pairs(workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
          if w:IsA("Tool") and v.Name == "IvoryPeriastron" then
            local wkspt = w
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
          wait(.1)
            local Remote = wkspt.Remote
            wait(.1)
            Remote:FireServer(Enum.KeyCode.E)
          end
        end
        v.Parent = game.Players.LocalPlayer.Backpack
      end
    end
end

local function command(player, msg)
  if dead == true then
    return;
  end
  if string.sub(msg, 1, 2) == _G.prefix.." " then msg = _G.prefix..string.sub(msg, 3, #msg) end
	if mymusic == true then
    if player.Name == LP.Name then return; end
		if string.sub(msg:lower(), 1, 3) == "clr" or string.sub(msg:lower(), 1, 4) == ":clr" or string.sub(msg:lower(), 1, 5) == "music" or string.sub(msg:lower(), 1, 6) == ":music" and player.name ~= LP.name then
			startmusic()
		end
	end
	if autoadmin == true then
		forEach(admins, function(i,admin)
			autoadmincheck(player,msg,admin)
		end)
	end
	if msg == "/c system" then
		Players:Chat((_G.prefix.."sm sussy alert"))
	end
	for a,b in pairs(whitelisted) do
		if player.name == b then
			local LP = game.Players.LocalPlayer
			local CharLP = game.Players.LocalPlayer.Character
      repeat wait() until CharLP:FindFirstChild("HumanoidRootPart")
			local RootLP = CharLP.HumanoidRootPart
			----------------------------- START OF COMMANDS -----------------------------
      createcmd(player, msg, prefix, "exit", function()
        game.CoreGui.KCGUI:Remove() 
        getgenv().isloadkc = false;


          antimb = false
          permSystem = false
          antipunishb = false
          antidogb = false
          antiblindb = false
          anticrash = false
          antivoid = false
          antifreeze = false
          antijail = false
          Stable_Check = false
          spamming = false
          autoadmin = false
          autoadminword = "none"
          autoadminonjoin = false
          admins = {}
          loopgrab = false
          logchat = false
          wspamming = "nothing"
          PadCheck = false
          mymusic = false
          mymusiccode = 0
          wlc = false
          closed = false
          nokill = false
          scriptBannedTable = {}
          banned = {}
          dead = true 
          _G.staffkey = nil



          
          whitelisted = {}
          
          alert(player, "Succesfully exited KohlsCool")
          sendlog(player, "A user has exited KohlsCool :(")
        end, true)
      createcmd(player, msg, prefix, "givetools", function(narg)
local pname = "noplrlmao"
          for _,p in pairs(game.Players:GetPlayers()) do 
            if string.sub(p.name:lower(), 1,#narg) == narg:lower() then 
              pname = p.name
            end
          end 
          if pname == "noplrlmao" then alert(player, "No player found") 
return
          end
          local v = game.Players:FindFirstChild(pname).Character
	--workspace.CurrentCamera.CameraSubject = v
	local Char = player.Character or workspace:FindFirstChild(player.name)
          local pivot = player.Character:GetPivot()
	--[[local hum = Char and Char:FindFirstChildWhichIsA('Humanoid')
	local hrp = hum and Char.HumanoidRootPart
	local hrppos = hrp.CFrame
alert(LP, " destroing hum")
	hum = hum:Destroy() or hum:Clone()
	hum.Parent = Char
	hum:ClearAllChildren()
	player:ClearCharacterAppearance()
          hrp = hum.RootPart
	coroutine.wrap(function()
              alert(LP, " fetching hrp")
		player.CharacterAdded:Wait():WaitForChild('HumanoidRootPart').CFrame = wait() and hrppos
	end)()
alert(LP, "alltools")
          

          Chat(_G.prefix.."alltools")
          wait(.05)
	local vHRP = v.HumanoidRootPart
	while Char and Char.Parent and vHRP and vHRP.Parent do
		local Tools = false 
            alert(LP, " Touching")
		for _, v in ipairs(Char:GetChildren()) do
			if v:IsA('BackpackItem') then
				Tools = true
				firetouchinterest(v.Handle, vHRP, 0)
				firetouchinterest(v.Handle, vHRP, 1)
			end
		end
		if not Tools then 
              alert(LP, "briking :(")
			
              break
		end
            
alert(LP, "setting pos")
		hrp.CFrame = vHRP.CFrame
		wait()
            if player.Backpack:GetChildren().size == 0 then
            break end
	end
	Chat(_G.prefix..'re me')]]
          

          
          
          
          for _, w in ipairs(player.Backpack:GetChildren()) do 
          
            if w:IsA("BackpackItem") then 
              w.Parent = Char 
              --[[if Char[w.name]:FindFirstChild("Handle") then 
                
                w=Char[w.name]
                firetouchinterest(w.Handle, v.HumanoidRootPart, 0)
                firetouchinterest(w.Handle, v.HumanoidRootPart, 1)
                wait(2)]]
              --end
              w:Activate()
            
                
              
              
              player.Character:PivotTo(v:GetPivot() * CFrame.new(0.5, 0, 7))
              wait(.2) 
              w.Parent = workspace 
            end 
          end 
          wait(.2)
          player.Character:PivotTo(pivot)
        end, true)
			createcmd(player, msg, prefix, "loadreg", function(playername)
			  local oldcf = RootLP.CFrame
				  forEach(Players:GetPlayers(), function(i, playerr) 
				    if string.sub(playerr.Name:lower(), 1, #playername) == playername:lower() then
					    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Admin_Folder.Regen.CFrame
					    wait(1)
					    Chat("tp "..playerr.Name.." me")
					    wait(0.2)
				    end
		    end)
		    RootLP.CFrame = oldcf
		    wait(.2)
		    Chat("tp "..playername.." me")
	    end)
      createcmd(player, msg, prefix, "bringpads", function()
          if Stable_Check == false then
            workspace.Gravity = 0
     if Workspace_Folder["Basic House"]:FindFirstChild(" SmoothBlockModel112") then 
              game.Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel112.CanCollide = false 
            end 
if Workspace_Folder["Basic House"]:FindFirstChild("SmoothBlockModel38") then 
game.Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel38.CanCollide = false 
            end
            
            local usedCFrames = {}
            local remaining = {}
            for i,v in pairs(padsCFrame) do
              table.insert(remaining, v)
            end
          alert(player, "{Move.lua} Moving Admin Pads")
          Stable_Check = true
          for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
            if v.Name == "Head" then
              if v.CFrame.Y > 0 then
                  v.CanCollide = false
                workspace.Gravity = 0
                  local function ior(t)
                  return math.random(1, table.getn(t))
                end

                local io = ior(remaining)
                local function check()
                  if table.find(usedCFrames, remaining[io]) then
                    io = ior(remaining)
                    check()
                  end
                end
                repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                  
                gear(LP.name, 108158379)
                  Chat("size me 0.5")
                wait(.2)
                  
                  RootLP.Velocity = Vector3.new(0, 0, 0)
                repeat wait() cf.CFrame = remaining[io] until cf.CFrame == remaining[io]
                  RootLP.Velocity = Vector3.new(0, 0, 0)
                table.insert(usedCFrames, remaining[io])
                  RootLP.Velocity = Vector3.new(0, 0, 0)
                table.remove(remaining, io)
                  RootLP.Velocity = Vector3.new(0, 0, 0)
                wait(.2)
                  RootLP.Velocity = Vector3.new(0, 0, 0)

                clickivory()
                  wait(.2)
  
                spawn(function()

                  while true do
                    game:GetService('RunService').Heartbeat:Wait()
                    game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                    cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                    if not looping then break end
                  end
                end)
                  
                  repeat cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0) wait() until cf.CFrame == v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                spawn(function() while looping do wait() game.Players:Chat('unpunish me') end end)
                  
                wait(0.2)

                looping = false
                clickivory()
                wait(0.2)
                game.Players:Chat("reset me")
                wait(0.2)
                  workspace.Gravity = 198.6

              end
            end
          end
          wait(0.5)
          Stable_Check = false
          alert(player, "{Move.lua} Done Moving Admin Pads")
            if Workspace_Folder["Basic House"]:FindFirstChild(" SmoothBlockModel112") then 
game.Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel112.CanCollide = true 
            end 
if Workspace_Folder["Basic House"]:FindFirstChild(" SmoothBlockModel38") then 
game.Workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel38.CanCollide = true 
            end

            workspace.Gravity = 196.2

        else
          alert(player, "{Move.lua} Already Moving, Please Wait")
        end
      end, true)
			createcmd(player, msg, prefix, "fixcam", function()
					local ReplicatedStorage = game:GetService("ReplicatedStorage")
					local WeaponsSystem = ReplicatedStorage:WaitForChild("WeaponsSystem")
					local weaponModule = require(WeaponsSystem:WaitForChild("WeaponsSystem"))
					local camera = game:GetService("Workspace").Camera
					weaponModule.camera:setEnabled(false)
					weaponModule.camera.rotateCharacterWithCamera = false
					camera.CameraSubject = script.Parent
					weaponModule.normalOffset = Vector3.new(0,0,0)
					alert(player, "Camera fixed")
			end, true)
			createcmd(player, msg, prefix, "report", function(args)
					if not args or args == nil then alert(player, "You need to put the player name and the reason of the report") end
					local args = string.split(args, "/")
					local reported = args[1]:lower()
					local reason = args[2]
					local done = false
					if not reported or reported == nil then alert(player, "You need to put a player name") return; end
					forEach(game.Players:GetPlayers(), function(i,plr)
							if done == true then
								return
							end
							if string.sub(plr.Name:lower(), 1, #reported) == reported or string.sub(plr.DisplayName:lower(), 1, #reported) == reported and done ~= true then
								reported = plr
								done = true
							end
						end)
					if typeof(reported) == string then alert(player, "Not player found") return; end
					if not reason or reason == nil then
						alert(player, "You need to put a reason")
						return;
					end
					sendreport(reported, reason)
					alert(player, "Your report has been succesfully sent")
			end, true)
			createcmd(player, msg, prefix, "copyname", function(plrname)
				
			end)
        createcmd(player, msg, prefix, "movebp", function()
            
          end, true)
  createcmd(player, msg, prefix, "bringregen", function()
          
        end)
  createcmd(player, msg, prefix, "animation", function(name)
    
  end)
  createcmd(player, msg, prefix, "lua", function(code)
    
  end)
  createcmd(player, msg, prefix, "ivory", function()
    
  end)
  createcmd(player, msg, prefix, "setspawn", function()
    
	end)
  createcmd(player, msg, prefix, "sniper", function()
    game.Players:Chat("hat me 5063578607")
    wait(1)
    loadstring(game:HttpGet('https://pastebin.com/raw/FnizMkZ2'))();
  end)
  createcmd(player, msg, prefix, "animated", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/BDUDcrnJ'))();
  end)
  createcmd(player, msg, prefix, "fps", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/33suAc48'))();
  end)
  createcmd(player, msg, prefix, "flygui", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/8i7zj2dw'))();
  end)
  createcmd(player, msg, prefix, "box", function()
    game.Players:Chat("hat me 4753371200")
    wait(2)
    loadstring (game:HttpGet('https://pastebin.com/raw/4jmE2XtP'))();
  end)
  createcmd(player, msg, prefix, "scgui", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/6xdUb7eF'))();
  end)
  createcmd(player, msg, prefix, "hidepad", function()
    local padss = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for c, htg in pairs(padss) do
			repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

			function cht(i) game.Players:Chat(i) end
			function rnd() return math.random(-1000000, 1000000) end
			function rndL() return math.random(5, 1000000) end
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

			cht("unchar "..PlrU)
			wait()
			cht("freeze "..PlrU)
			cht("name "..PlrU)
			cht("thaw "..PlrU)
			wait(0.28)
			cf.CFrame = CFrame.new(Vector3.new(rnd(), rndL(), rnd()))
			wait(0.25)
			cht("tp "..PlrU.." me")
			wait(0.25)

			local jkfv = htg.Head

			local looping = true
			spawn(function()
				while true do
					game:GetService('RunService').Heartbeat:Wait()
					game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
					cf.CFrame = jkfv.CFrame * CFrame.new(-1*(jkfv.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
					if not looping then break end
				end
			end)
			spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
			wait(0.3)
			looping = false

			cht("tp me "..PlrU)
			cht("unchar "..PlrU)
			cht("unchar me")
			wait(0.75)
		end
	end)
  createcmd(player, msg, prefix, "upme", function()
    player.Character:Remove()
  end)
  createcmd(player, msg, prefix, "findregen", function()
    game.Players:Chat(_G.prefix.."fregen")
    wait(1.5)
    game.Players:Chat(_G.prefix.."gohouse")
    wait(.2)
    if not workspace["Terrain"]._Game["Admin"]:FindFirstChild("Regen") then
      game.Players:Chat(_G.prefix.."regen")
    end
    repeat wait() until workspace[LP.name]
    if workspace:FindFirstChild(game.Players.LocalPlayer.name) then
      if workspace[game.Players.LocalPlayer.name]:FindFirstChild("HumanoidRootPart") then
        workspace[game.Players.LocalPlayer.name].HumanoidRootPart.Anchored = true
        repeat wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.165, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y+2000 , 94.743) until game:GetService("Workspace"):FindFirstChild("Terrain"):FindFirstChild("_Game"):FindFirstChild("Admin"):FindFirstChild("Regen") or not workspace:FindFirstChild(LP.Name)
        workspace[game.Players.LocalPlayer.name].HumanoidRootPart.Anchored = false
        repeat wait() workspace[game.Players.LocalPlayer.name].HumanoidRootPart.CFrame = workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0,3,0) until workspace[game.Players.LocalPlayer.name].HumanoidRootPart.CFrame == workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0,3,0)
      end
    end
  end, true)
  createcmd(player, msg, prefix, "version", function()
    sendchat("Actual version is v"..version)
  end)
  createcmd(player, msg, prefix, "prefix", function()
    local arg = string.sub(msg, 9, 9)
    if arg == "" then
      alert(player, "Actual prefix is: "..prefix)
    else
      alert(player, "Prefix has been set to: "..arg)
      _G.prefix = arg
    end
  end, true)
  local hugecords = CFrame.new(-438209, 16829, 709340)
  createcmd(player, msg, prefix, "fregen", function()
        RootLP.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hugecords
        wait(.5)
        Chat("setgrav others inf")
        RootLP.Anchored = true
  end)
  createcmd(player, msg, prefix, "removeregen", function()
    local oldcf = nil
    gear(LP.name, 108158379)
    wait(1)
    local arg = "adsasdasd"
    if arg ~= "" then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hugecords
      wait(.2)
      Chat("jail me")
      wait(.2)
      clickivory()
      
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
				  wait(1)
				  looping = false
				  clickivory()
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
  end)
  createcmd(player, msg, prefix, "alltools", function(arg)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			Spawn(function()
				if v:IsA'BackpackItem' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
  end)
      createcmd(player, msg, prefix, "kick", function(tk)
    local name = tk:lower() 
    local plr = LP

    if false then 
            --[[local alr = false
      for i,p in pairs(game.Players:GetChildren()) do
        if p.name ~= game.Players.LocalPlayer.name and alr == true then 

alr = false

                Chat(_G.prefix.."kick "..p.name)
                wait(1.2)
                alr = false
              elseif alr ~= nil then 
                repeat wait() until alr == nil 
Chat(_G.prefix.."kick "..p.name)

              end
            end]]
    else
      local plrs = game.Players:GetChildren()
      for i,v in pairs(plrs) do
        local strlower = string.lower(v.name)
        local sub = string.sub(strlower,1,#name)

        if name == sub then 
        plr = v
          if plr.name ~= game.Players.LocalPlayer.name then
            for i=1,3 do gear(LP.name, 25741198) wait() end
                  repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("HotPotato") or game.Players.LocalPlayer.Backpack:FindFirstChild("BlueBucket")
                Chat("respawn "..plr.Name)
                  local pv = CharLP:GetPivot()
                  wait(.05)
                  RootLP.CFrame = CFrame.new(-300, 3, 500)
                  wait(.1)
              
                  Chat("tp "..plr.name.." me")
                  
               Chat("size "..plr.name.." nan")
                  Chat("blind "..plr.name)
                  Chat("ff "..plr.name)
                  Chat("rainbowify "..plr.name)
                  Chat("name "..plr.name.." "..[[Client Status:
KICKED 
KICKED 
KICKED 
KICKED 
KICKED 
KICKED
]])
                  wait(.2)
                  
                  Chat(_G.prefix.. "givetools "..plr.name)
                  
                  wait(.1)
                  
                  Chat("freeze "..plr.name)
                  Chat("noclip "..plr.name)
                  
                  wait(0.8)
                  CharLP:PivotTo(pv)
                  wait(0.2)
                  Chat("clear potato mess")
                  Chat(_G.prefix.."re me")
          end
        end
      end
          end

        end)
  createcmd(player, msg, prefix, "ungearban", function(name)
    local acd = false
    if anticrash == true then
      Chat(_G.prefix.."toggle anticrash")
      acd = true
    end
    -- gear(player.name, 59190534)
    gear(player.name, 94794847)
    wait(1)
    game.Players:Chat(_G.prefix.."alltools")
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
        Chat(_G.prefix.."re me")
        wait(.1)
      end
    end
    if acd == true then
      Chat(_G.prefix.."toggle anticrash")
    end
  end)
  createcmd(player, msg, prefix, "gearban", function(name)
    gear(player.name, 82357101)
    wait(1)
    game.Players:Chat(_G.prefix.."alltools")
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
    local i = 60
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
      Chat(_G.prefix.."setmusic 7491553701")
    end
  end, true)
  createcmd(player, msg, prefix, "ban", function(arg)
    if arg ~= "" then
      forEach(Players:GetPlayers(), function(i,plr)
        if string.sub(plr.name:lower(), 1, arg:len()) == arg:lower() then
          if not table.find(banned, plr.name) then
            table.insert(banned, plr.name)
            alert(player, "Player "..plr.name.." has been BANNED")
          else
            alert(player, plr.name.." is already banned")
          end
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
    sendchat("[KohlsCool v"..version.."]: You Can get the script here: dsc.gg/kohlscool")
  end)
  createcmd(player, msg, prefix, "admin", function(arg)
    forEach(Players:GetPlayers(), function(ii,plr)
      if string.sub(plr.name:lower(), 1, arg:len()) == arg:lower() then
        if not table.find(admins, plr.name) then
          table.insert(admins, plr.name)
          Chat("pm "..plr.name.." You have admin, you dont need a pad \n Also, type 'info'")
          alert(player, "Player "..plr.name.." added")
        else
          alert(player, plr.name.." is already admin")
        end
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
      if loopgrab == true then regen() end
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
    if arg:lower() == "antifreeze" then
      antifreeze = not antifreeze
      alert(player, "AntiFreeze has been set to "..tostring(antifreeze))
      done = true
    end
    if arg:lower() == "antijail" then
      antijail = not antijail
      alert(player, "AntiJail has been set to "..tostring(antijail))
      done = true
    end
    if arg:lower() == "antikill" then
      if nokill == true then Chat(_G.prefix.."nokill off") else Chat(_G.prefix.."nokill on") end
      done = true
    end
    if arg:lower() == "othersperms" then
      permSystem = not permSystem
      alert(player, "PermSystem has been set to "..tostring(permSystem).." (actual perm users still have perm, you can remove it using ;unadmin plr or ;toggle autoadmin)")
      done = true
    end
    if arg:lower() == "list" then
      alert(player, "AntiBlind, AntiDog, AntiM, AntiPunish, AutoAdmin, AllPads, MyMusic, AntiCrash, LogChat, AntiVoid, AntiFreeze, AntiJail, AntiKill, OthersPerms")
      done = true
    end
    if done == false then alert(player, "Unknown argument, type '".._G.prefix.."toggle list' to check all avalible options") end
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
  if msg == _G.prefix.."cmds" then
    alert(player, _G.prefix.."moveobby | ".._G.prefix.."kit (kitname) | ".._G.prefix.."portalgun | ".._G.prefix.."pb | ".._G.prefix.."bb | ".._G.prefix.."gohouse | ".._G.prefix.."spam (command) | ".._G.prefix.."stop | ".._G.prefix.."shutdown | ".._G.prefix.."nok | ".._G.prefix.."perm | ".._G.prefix.."noperm | ".._G.prefix.."wlc | ".._G.prefix.."dwlc | ".._G.prefix.."rej | ".._G.prefix.."sm (message)")
    wait(.1)
    alert(player, "".._G.prefix.."unpadban (plr) | ".._G.prefix.."findpads | ".._G.prefix.."whitelist (plr) | ".._G.prefix.."unwhitelist (plr) | ".._G.prefix.."fixbp | ".._G.prefix.."cmds | ".._G.prefix.."jail (plr) | ".._G.prefix.."unjail (plr) | ".._G.prefix.."regen | ".._G.prefix.."skydive | ".._G.prefix.."padban (plr) | ".._G.prefix.."btools (plr)")
    wait(.1)
    alert(player, "".._G.prefix.."bugchar (plr) | ".._G.prefix.."unskydive | ".._G.prefix.."get | ".._G.prefix.."hop | ".._G.prefix.."ownerchar (plr) | ".._G.prefix.."promo | ".._G.prefix.."tp (plr) | ".._G.prefix.."toggle (option) | ".._G.prefix.."autoadmin (onjoin/toggle) | ".._G.prefix.."admin (plr) | ".._G.prefix.."unadmin (plr) | ".._G.prefix.."ban (plr) | ".._G.prefix.."unban (plr) | ".._G.prefix.."play (num) | ".._G.prefix.."setmusic (id) | ".._G.prefix.."alltools | ".._G.prefix.."gearban (plr) | ".._G.prefix.."ungearban (plr) | ".._G.prefix.."removeregen | ".._G.prefix.."fregen")
    wait(.1)
    alert(player, _G.prefix.."upme | ".._G.prefix.."sniper | ".._G.prefix.."setspawn | ".._G.prefix.."lua (lua code) | ".._G.prefix.."animation (animation name) | ".._G.prefix.."bringregen | ".._G.prefix.."ivory | ".._G.prefix.."clearlogs | ".._G.prefix.."movebp | ".._G.prefix.."copyname (name or display name) | ".._G.prefix.."report (playername)/(reason) | ".._G.prefix.."fixcam | ".._G.prefix.."movepads | ".._G.prefix.."animated | ".._G.prefix.."fps | ".._G.prefix.."flygui | ".._G.prefix.."box | ".._G.prefix.."scgui | ".._G.prefix.."hidepad | ".._G.prefix.."kick (player)")
  end
  createcmd(player, msg, prefix, "promo", function()
    sannounces()
  end)
  createcmd(player, msg, prefix, "ownerchar", function()
    local plrname = string.sub(msg:lower(), 11, msg:len())
    Chat("char "..string.gsub(plrname, "me", player.name).." 612815251")
  end)
  createcmd(player, msg, prefix, "get", function()
    Chat(_G.prefix.."dc")
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
      sendchat("bye im hopping "..amount.." Players")
      wait(0.25)
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    else
      alert(player, "Unable to Locate Server")
    end
  end, true)
  createcmd(player, msg, prefix, "unskydive", function() 
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(LP.Character.HumanoidRootPart.CFrame.X, 2, LP.Character.HumanoidRootPart.CFrame.Z)
  end)
  if string.sub(msg:lower(), 1, 9) == _G.prefix.."bugchar " then
    local p = string.sub(string.gsub(msg:lower(), "me", player.name), 10, msg:len())
    Chat("size "..p.." nan")
    wait(.05)
    Chat("undog "..p)
    Chat("music 00000000000000000006965860761")
  end
  if string.sub(msg:lower(), 1, 8) == _G.prefix.."btools " then
    local plrname = string.sub(string.gsub(msg:lower(), "me", player.name), 9, msg:len())
    gear(plrname, 16200204)
    gear(plrname, 16200402)
    gear(plrname, 16969792)
    gear(plrname, 73089190)
    gear(plrname, 79446473)
  end
  if string.sub(msg:lower(), 1, 6) == _G.prefix.."fixbp" then -- All this script is from shortcut (but i added ivory)
    local ajc = false
    local avc = false
    if Stable_Check == false then
      alert(player, "Fixing")
    if antijail == true then 
      ajc = true
      Chat(";toggle antijail")
    end
    if antivoid == true then
      avc = true
      Chat(";toggle antivoid")
    end
    end
    if Stable_Check == false then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-501, 0.100000001, 0))
      wait(.2)
      Chat("jail me")
      wait(.1)
      Stable_Check = true
      if not Workspace_Folder:FindFirstChild("Baseplate") then Stable_Check = false end
      if Workspace_Folder:FindFirstChild("Baseplate").CFrame.Y > 0.2 or Workspace_Folder:FindFirstChild("Baseplate").CFrame.X ~= -501 then
        gear(LP.name, 108158379)
        wait(1)
        clickivory()
        local target = Workspace_Folder.Baseplate
        function movepart()
          local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
          local looping = true
          spawn(function()
            while true do
              game:GetService('RunService').Heartbeat:Wait()
              game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
              cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
              if not looping then break end
            end
          end)
          spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
          wait(0.25)
          looping = false
        end
        movepart()
        wait(1)
        
        clickivory()
        wait(1)
        game.Players:Chat("respawn me")
      end
      Stable_Check = false
      alert(player, "Done")
      if ajc == true then Chat(";toggle antijail") end
      if avc == true then Chat(";toggle antivoid") end
    else
      alert(player, "For security reasons, you must wait")
    end
  end
  if string.sub(msg:lower(), 1, 8) == _G.prefix.."padban " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 9, msg:len())
    for i,pl in pairs(Players:GetPlayers()) do
      if string.sub(pl.name:lower(), 1, plrname:len()) == plrname:lower() then
        table.insert(padbanned, pl.name)
        alert(player, pl.name.." PadBanned")
      end
    end
  end
  if string.sub(msg:lower(), 1, 11) == _G.prefix.."whitelist " then -- From Shortcut
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
  if string.sub(msg:lower(), 1, 13) == _G.prefix.."unwhitelist " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 14, msg:len())
    if plrname == "list" then
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
              if plr.name ~= LP.name then
                table.remove(whitelisted, a)
                sendchat(plr.name.." has been unwhitelisted")
              end
              alert(player, "You cannot unwhitelist the localplayer")
            end
          end
        end
      end
    end
  end
  if string.sub(msg:lower(), 1, 10) == _G.prefix.."unpadban " then -- From Shortcut
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
  if string.sub(msg:lower(), 1, 6) == _G.prefix.."regen" then
    regen()
    alert(player, "Pads Resetted")
  end
  if string.sub(msg:lower(), 1, 8) == _G.prefix.."skydive" then -- From Shortcut (But i editted it a bit)
    alert(player, "Skydive!")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 2000, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
  end
  if string.sub(msg:lower(), 1, 6) == _G.prefix.."jail " then
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
  if string.sub(msg:lower(), 1, 8) == _G.prefix.."unjail " then
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
  if msg == _G.prefix.."fly" then
    gear(player.name, 225921000)
    -- loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\51\49\52\51\48\57\56\97\50\52\50\56\57\52\99\48\50\100\51\56\100\49\50\48\50\48\98\55\102\49\53\102\47\114\97\119\47\54\54\97\49\54\50\55\55\101\55\97\49\57\100\50\54\100\53\100\48\51\102\55\100\55\52\57\99\101\50\99\49\101\49\98\52\100\102\99\55\47\102\108\121\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10")()
  end
  if msg == _G.prefix.."shutdown" then -- From Shortcut
    if player.name ~= LP.name then sm("Only "..LP.name.." can shutdown") end
    
    anticrash = false
    Chat("blind all")
    gear(LP.name, 94794847)
    repeat RunService.Heartbeat:Wait() until player.Backpack:FindFirstChild("VampireVanquisher") 
    Chat(_G.prefix.."alltools")
    repeat RunService.Heartbeat:Wait() until workspace[player.name]:FindFirstChild("VampireVanquisher")
        Players:Chat(_G.prefix.."sm Get rekt")
        wait(.05)
    Players:Chat(("size all 0.3"))
    Players:Chat(("size all 0.3"))
    Players:Chat(("size all 0.3"))
    Players:Chat(("freeze all"))
    Players:Chat(("size all 10"))
    Players:Chat(("size all 10"))
    Players:Chat(("size all 10"))
    Players:Chat(("clone all"))
        sendlog(player, "A possible bot")
  end
  if msg == _G.prefix.."nokill on" then
    if nokill == true then
      alert(player, "NoKill Already Enabled")
    end
    nokill = true
    alert(player, "NoKill Enabled")
  end
  if msg == _G.prefix.."nokill off" then
    if nokill == false then
      alert(player, "NoKill Already Disabled")
    end
    nokill = false
    alert(player, "NoKill Disabled")
  end
  if msg == _G.prefix.."allpads" then
    regen()
    for _,pad in pairs(game.Workspace.Terrain._Game.Admin.Pads:GetChildren("Head")) do
      Spawn(function()
        pad = pad:FindFirstChild("Head")
        local padcf = pad.CFrame
        pad.CanCollide = false
        wait(0.01)
        pad.CFrame = player.Character.HumanoidRootPart.CFrame
        wait(0.01)
        pad.CFrame = padcf
        wait(0.01)
        pad.CanCollide = true
      end) 
    end
  end
  if msg == _G.prefix.."tpclick" then
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
  if msg == _G.prefix.."close" then
    closed = true
    alert(player, "Game Closed, no more player will join")
  end
  if msg == _G.prefix.."open" then
    closed = false
    alert(player, "Game Oppened")
  end
  if string.sub(msg:lower(), 1, 4) == _G.prefix.."re " then
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
  if msg == _G.prefix.."perm" then
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
  if msg == _G.prefix.."firstperm" then
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
  if msg == _G.prefix.."noperm" then
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
  if msg == _G.prefix.."moveregen" then
    if player.name == Players.LocalPlayer.name then
      
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
  if msg == _G.prefix.."movepads" then
    if player.name == Players.LocalPlayer.name then
      
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
  if msg == _G.prefix.."findpads" then
    local done = false
    for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
      if done == false then
        workspace[LP.name].HumanoidRootPart.CFrame = v:FindFirstChild("Head").CFrame
        done = true
      end
    end
  end
  if msg == _G.prefix.."pb" then
    Players:Chat(("gear "..player.name.." 0000000000000000000018474459")) 
  end
  if msg == _G.prefix.."bb" then
    Players:Chat(("gear "..player.name.." 00000000000000000000193769809"))
  end
  if string.sub(msg:lower(), 1, 5) == _G.prefix.."kit " then
    local kit = string.sub(msg:lower(), 6, msg:len())
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
      for kitname,gears in next, kitgears do
        sendchat(kitname)
      end
    end
    for kitname, gears in next, kitgears do
      if kit == kitname then
        for i, gearid in pairs(gears) do 
                gear(player.name, gearid)
      end
    end
  end
  end
  if msg == _G.prefix.."gohouse" then
    if player.name == Players.LocalPlayer.name then
      local pos = CFrame.new(-12.5,8,94.5) 
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
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
  if string.sub(msg:lower(), 1, 6):lower() == _G.prefix.."spam " then
    spamming = true
    local strglower = string.gsub(msg:lower(), "me", player.name)
    if not strglower:find("hop") and not strglower:find("rej") then
      wspamming = string.sub(strglower, 7, strglower:len())
      alert(player, "Spamming "..wspamming)
      sendlog(player, "A user is spamming '"..wspamming.."'")
    else
      alert(player, "You cant spam "..string.sub(strglower, 7, strglower:len()))
    end
  end
  if msg == _G.prefix.."stop" then
    spamming = false
    alert(player, "No longer spamming")
  end
  if msg == _G.prefix.."portalgun" then
    Players:Chat(("gear ".. player.name.. " 00000000000000000034870758"))
  end
  if msg == _G.prefix.."nok" then
    if player.name == Players.LocalPlayer.name then 
      alert(player, "Removing Hitboxes")
      for k,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
        v.TouchInterest:Remove()
      end
      alert(player, "Removed Hitboxes")
    end
  end
  if string.sub(msg, 1,4) == _G.prefix.."sm " then
    local message = string.sub(msg, 5, msg:len())
    sm("Kohls Cool", message)
  end
  if msg == _G.prefix.."wlc" then
    wlc = true
    alert(player, "Welcomes Enabled")
  end
  if msg == _G.prefix.."dwlc" then
    wlc = false
    alert(player, "Welcomes Disabled")
  end
  if msg == _G.prefix.."rej" then
    game:GetService("TeleportService"):Teleport(game.PlaceId, player)
  end
  if string.sub(msg:lower(), 0, 15) == _G.prefix.."moveobby" then
    if player.name == Players.LocalPlayer.name then
      local Workspace_Folder = game:GetService("Workspace").Terrain["_Game"].Workspace
      game.Players:Chat(_G.prefix.."nok")
      wait(0.05)
      
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
        Players:Chat((_G.prefix.."sm "..player.name.." has tried to move the obby"))
      end
    end
  end
  end
  end

--------------- ANTIS ----------------
spawn(function()
  while true do
    if dead == true then
      break;
    end
    RunService.Heartbeat:Wait() 
    ---------- ANTI DOG ---------
    if antidogb == true then
      if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso") then
          if workspace[game.Players.LocalPlayer.Name].Torso.Transparency == 1 and workspace[game.Players.LocalPlayer.Name].Torso.BrickColor == BrickColor.new("Brown") then
          game:GetService'Players':Chat(("undog me"))
          
        end
      end
    end
    ---------- ANTI VOID ----------
    if antivoid == true then
      pcall(function()
        local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if cf.Y < -1 then
          Chat(_G.prefix.."gohouse")
        end
      end)
    end
  end
end)
----------- ANTI MESSAGE CRASH --------
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
    if dead == true then
      return;
    end
  if antimb == true then
    if child.name == "MessageGUI" then
      if not child:FindFirstChild("bg") then
        repeat RunService.Heartbeat:Wait() until child:FindFirstChild("bg")
      end
      child.bg:Remove()
    end
  end
------------- ANTI BLIND ------------
  if antiblindb == true then
    if child.name == "EFFECTGUIBLIND" then
      pcall(function()
        repeat RunService.Heartbeat:Wait() child:Remove() until child.Parent == nil
      end)
    end
  end
end)
-------- ANTI JAIL --------
game:GetService("Workspace").Terrain["_Game"].Folder.ChildAdded:Connect(function(child)
    if dead == true then
      return;
    end
  if antijail == true then
    if child.name == game.Players.LocalPlayer.Name .. "'s jail" then
      game:GetService'Players':Chat(("unjail me"))
      
    end
  end
end)
--------- ANTI PUNISH ---------
game.Lighting.ChildAdded:Connect(function(child)
    if dead == true then
      return;
    end
  if antipunishb == true then
    if child.name == game.Players.LocalPlayer.Name then
      game:GetService'Players':Chat(("unpunish me"))
      Chat("freeze others")
      regen()
    end
  end
end)
--------- ANTI FREEZE ---------
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(child)
    if dead == true then
      return;
    end
  if child.name == "ice" and antifreeze == true then
    game:GetService'Players':Chat(("thaw me"))
    RunService.Heartbeat:Wait() 
  end
end)



Spawn(function() 
  while true do
    if dead == true then
      break;
    end
    forEach(banned, function(i,baned)
      if game.Workspace:FindFirstChild(baned) then
        --[[game.Players:Chat("freeze "..baned)
        Chat("punish "..baned)
        Chat("blind "..baned)
        Chat("setgrav "..baned.." -9e9")]]
            Chat("punish "..baned)
        regen()
      end
    end)
    if nokill == true then
      for a,b in pairs(whitelisted) do
        for i,pl in pairs(Players:GetPlayers()) do
          if pl.name == b then
          if pl.Character:FindFirstChild("Humanoid") then
            if pl.Character.Humanoid.Health < 2 then 
              RunService.Heartbeat:Wait()
              game.Players:Chat((_G.prefix.."re "..b))
              if b == LP.name then
                game.Players:Chat((_G.prefix.."re me"))
              end
            end
            end
          end
        end
      end
    end
    if spamming == true then
      wait(0)
      Players:Chat((wspamming)) 
    end
    if anticrash == true then
      for _,playor in pairs(game.Players:GetPlayers()) do
        if playor:FindFirstChild("Backpack") then
          if playor.Backpack:FindFirstChild("VampireVanquisher") then
            local plrname = playor.Name
          repeat Chat(_G.prefix.."re "..plrname) RunService.Heartbeat:Wait() until not playor.Backpack:FindFirstChild(" VampireVanquisher")
            game.Players:Chat(_G.prefix.."sm "..plrname.." no")
            RunService.Heartbeat:Wait() 
          end
          if playor:FindFirstChild("Character") then
            if playor.Character:FindFirstChild("VampireVanquisher") then
              repeat Chat(_G.prefix.."re "..plrname) RunService.Heartbeat:Wait() until not playor.Character:FindFirstChild(" VampireVanquisher")
              game.Players:Chat(_G.prefix.."sm "..plrname.." no")
              RunService.Heartbeat:Wait() 
            end
          end
          if workspace:FindFirstChild(playor.name) then
            if workspace[playor.name]:FindFirstChild("HumanoidRootPart") then
              if workspace[playor.name].HumanoidRootPart.Size.Y < 1 then
                local plrname = playor.Name
              repeat Chat(_G.prefix.."re "..plrname) game.Players:Chat(("unclone "..plrname)) RunService.Heartbeat:Wait() until workpsace[playor.name].HumanoidRootPart.Size.Y > 0.9
                wait(0)
              end
            end
          end
        end
      end
    end
    for i,playor in pairs(padbanned) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == playor.."'s admin" then
					game.Players:Chat("respawn "..playor)
					game.Players:Chat(_G.prefix.."sm Sorry "..playor.." no pads for u")
          regen()
				end
			end
		end
    RunService.Heartbeat:Wait() 
  end
end)
                            
game:GetService("Players").PlayerAdded:Connect(function(player)
    if dead == true then
      return;
    end
    if closed == true then
      RunService.Heartbeat:Wait() 
      if player.Name ~= LP.name then
          Chat(_G.prefix.."kick "..player.Name)
      end
    end


    
    if wlc == true then
      game:GetService'Players':Chat((_G.prefix.."sm lol "..player.name.." just joined"))
    end
    if player.name == "sepix48" then
      Chat("h KohlsCool Script Owner has joined")
    end
    
    if autoadminonjoin == true and autoadmin == true then
      local band = false
      if table.find(banned, player.name) then
        band = true
      end
      if band == false then
        if not hasGamePass(plr.UserId, 66254) and plr.Name ~= LP.name then Chat(_G.prefix.."admin "..player.name)
        end
      else
        Chat("pm "..player.name.." You are perm banned")
      end
    end
    player.Chatted:Connect(function(msg)
        if logchat == true and player.name ~= LP.name then
          sendchat("["..player.name.."]: "..msg)
        end
        command(player, msg)
    end)
end)

for _, plr in pairs(game.Players:GetPlayers()) do
    if dead == true then
      return;
    end
  --[[if hasGamePass(plr.UserId, 66254) and plr.Name ~= LP.name then
    autoadmin = true
    table.insert(admins, plr.Name)
    alert(plr, plr.Name.." has been added because he has bought perm admin")
  end]]
  plr.Chatted:Connect(function(msg)
      if logchat == true and plr.name ~= LP.name then
        sendchat("["..plr.name.."]: "..msg)
      end
      command(plr, msg)
  end)
end

if not game.CoreGui:FindFirstChild("KCGUI") then gui()
  game.Players:Chat(";firstperm")

sendlog(LP, "A User Has Executed KohlsCool")
end
