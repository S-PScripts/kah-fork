game.Players:chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n omg a pro script was just loaded by glee and no u cant have it 😎")
game.Players:chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n omg a pro script was just loaded by glee and no u cant have it 😎")


game.Players.LocalPlayer.Chatted:Connect(function(msg) 
    if string.sub(msg:lower(), 0, 6) == ":house" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-29.0648632, 7.85896826, 73.8250351, 0.999998808, 4.69892676e-08, -0.00155096618, -4.68835246e-08, 1, 6.82139998e-08, 0.00155096618, -6.81412047e-08, 0.999998808)
        end
end)
 
 game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 6) == ":spawn" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37.5425644, 1.80732727, -25.333395, -0.999980152, 0, 0.00630147522, 0, 1, 0, -0.00630147522, 0, -0.999980152)
        end
 end)
     
 
 game.Players.LocalPlayer.Chatted:Connect(function(msg)
     if string.sub(msg:lower(), 0, 7) == ":getpad" then 
         plr = game:GetService("Players").LocalPlayer

X1 = plr.Character:FindFirstChild("HumanoidRootPart").CFrame.X
Y1 = plr.Character:FindFirstChild("HumanoidRootPart").CFrame.Y
Z1 = plr.Character:FindFirstChild("HumanoidRootPart").CFrame.Z
wait(0.001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame= CFrame.new(-32.9446106, 8.6299963, 94.2264557, -0.999785066, 8.04972444e-09, -0.0207333937, 7.24179605e-09, 1, 3.90425576e-08, 0.0207333937, 3.88840178e-08, -0.999785066)
wait(0.001)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+5,Z1)
     end
     
 end)
 game.Players.LocalPlayer.Chatted:Connect(function(msg)
         
    if string.sub(msg:lower(), 0, 9) == ":infyield" then
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   
end
    end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
        Character:WaitForChild("Humanoid").Died:Connect(function()
                game.Players:Chat("reload me")
        end)

end)
game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 4) == ":nok" then
        for _, i in pairs(game.Workspace.Terrain._Game.Workspace:FindFirstChild("Obby"):GetChildren()) do
            if i:FindFirstChild("TouchInterest") then
                i:FindFirstChild("TouchInterest"):Destroy()
            end
        end
end
end)

game.Players.PlayerAdded:Connect(function(plr)
game.Players:Chat("h/ \n \n \n Glee Hub: "..plr.DisplayName.." Just joined \n \n \n")
end)

local antip = true
task.spawn(function()
while antip do
task.wait()
if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
game.Players:Chat("unpunish me "..math.random(10, 1000))
end
wait()
end
end)
getgenv().antikek = true
task.spawn(function()
while getgenv().antikek do
task.wait()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v.Name == "HotPotato" then
v:Destroy()
end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.Name == "HotPotato" then
v:Destroy()
end
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 8) == ":clicktp" then
            
            game.Players:Chat("pm overglee hold ctrl and click to where u wanna tp -- GleeHub")
            
                       local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
end
    end)



getgenv().antikek = true
task.spawn(function()
while getgenv().antikek do
task.wait()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v.Name == "BlueBucket" then
v:Destroy()
end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.Name == "BlueBucket" then
v:Destroy()
end
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 4) == ":rej" then
local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer



ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)



ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 5) == ":shop" then
            
            Time = 0.5 
repeat wait() until game:IsLoaded()
wait(Time)
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
   local Site;
   if foundAnything == "" then
       Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
   else
       Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
   end
   local ID = ""
   if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
       foundAnything = Site.nextPageCursor
   end
   local num = 0;
   for i,v in pairs(Site.data) do
       local Possible = true
       ID = tostring(v.id)
       if tonumber(v.maxPlayers) > tonumber(v.playing) then
           for _,Existing in pairs(AllIDs) do
               if num ~= 0 then
                   if ID == tostring(Existing) then
                       Possible = false
                   end
               else
                   if tonumber(actualHour) ~= tonumber(Existing) then
                       local delFile = pcall(function()
                           delfile("NotSameServers.json")
                           AllIDs = {}
                           table.insert(AllIDs, actualHour)
                       end)
                   end
               end
               num = num + 1
           end
           if Possible == true then
               table.insert(AllIDs, ID)
               wait()
               pcall(function()
                   writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                   wait()
                   game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
               end)
               wait(2)
           end
       end
   end
end
 
function Teleport()
   while wait() do
       pcall(function()
           TPReturner()
           if foundAnything ~= "" then
               TPReturner()
           end
       end)
   end
end
 
Teleport()
end
end)

local Players = game:GetService("Players")

local Blacklisted = {}

local function GetPlayer(Name)
    for _, Player in pairs(Players:GetPlayers()) do
        if (Player.DisplayName:sub(1, #Name):lower() == Name:lower() or Player.Name:sub(1, #Name):lower() == Name:lower()) then
            return Player
        end
    end
end

Players.LocalPlayer.Chatted:Connect(function(Message)
    local Split = Message:lower():split(" ")
    if (Split[1] == ":blacklist") then
        local Target = GetPlayer(Split[2])
        if (Target) then
            table.insert(Blacklisted, Target.UserId)
            print("Blacklisted: " .. Target.UserId)
        end
    elseif (Split[1] == ":unblacklist") then
        local Target = GetPlayer(Split[2])
        if (Target) then
            local isBlacklisted = table.find(Blacklisted, Target.UserId)
            if (isBlacklisted) then 
                table.remove(Blacklisted, isBlacklisted)
                print("Unblacklisted: " .. Target.UserId)
            end
        end
    end
end)

task.spawn(function()
    while true do
        for _, Player in pairs(Players:GetPlayers()) do
            if (table.find(Blacklisted, Player.UserId)) then
                local Character = Player.Character

                if (Character and Character.Parent ~= game:GetService("Lighting")) then
                    Players:Chat("punish " .. Player.Name)
                    Players:Chat("speed " .. Player.Name .. " nan")
                    Players:Chat("blind "..Player.Name)
                end
            end
        end
        task.wait()
    end
end)

local uss = game:GetService("UserInputService")
uss.WindowFocused:Connect(function()
    game.Players:chat("unname me")
end)
uss.WindowFocusReleased:Connect(function()
    local username = game.Players.LocalPlayer.DisplayName
    game.Players:chat("name me (Tabbed Out) \n " ..username)
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 10) == ":blacklist" then
            game.Players:Chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n lol glee just blacklisted some nerd 🤓")
        end
        game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 12) == ":unblacklist" then
            game.Players:Chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n glee just unblacklisted someone, they can come out of timeout now")
        end
end)
game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.sub(msg:lower(), 0, 11) == ":protection" then
            

game:GetService'Players':Chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n Server is now protected by Glee Hub!")

for i,vai in pairs(game.Players:GetChildren()) do
    while vai ~= nil do wait(0.3)
if #game.Players:GetChildren() < #game.Players:GetChildren() and #game.Players:GetChildren() > #game.Players:GetChildren() then
    wait(0.6)
end
        for i,v in pairs(game.Players:GetChildren()) do
            if game:GetService("Workspace"):FindFirstChild(tostring(v.Name)) == nil then
            game:GetService("Players"):Chat("unpunish all")
            wait(0.2)
            end
            if v.Character.Humanoid ~= nil then
            if v.Character.Humanoid.Health < 100 then
                if v.Character.Humanoid.Health ~= 0 then
                game:GetService'Players':Chat(("health "..v.Name.." 100"))
                if v.Character.Humanoid.Health < 51 then
                    game:GetService'Players':Chat(("ff "..v.Name))
                end
                end
            elseif #game.Players:GetChildren() < #game.Players:GetChildren() and #game.Players:GetChildren() > #game.Players:GetChildren() then
            end
            if v.Character.Humanoid.Health == 0 then
                game:GetService'Players':Chat(("reset "..v.Name))
            elseif #game.Players:GetChildren() < #game.Players:GetChildren() and #game.Players:GetChildren() > #game.Players:GetChildren() then
                end
            if v.Character.Humanoid.PlatformStand == true then
                game:GetService'Players':Chat(("unstun "..v.Name))
            elseif #game.Players:GetChildren() < #game.Players:GetChildren() and #game.Players:GetChildren() > #game.Players:GetChildren() then
            end
            end
            for i,bruv in pairs(v.Character:GetChildren()) do
                if bruv.Name == "Seizure" then
                    game:GetService'Players':Chat(("unseizure "..v.Name))
                end
                end
            for i,ve in pairs(v.Backpack:GetChildren()) do
                if ve.Name == "VampireVanquisher" then
                    game:GetService'Players':Chat(("reset "..v.Name))
                    game:GetService'Players':Chat(("h/-------------"..v.Name.." TRYED TO CRASH THE SERVER LOL-------------"))
                    end
            end
            for i,vi in pairs(v.Character:GetChildren()) do
                if vi.Name == "VampireVanquisher" then
                    game:GetService'Players':Chat(("reset "..v.Name))
                    game:GetService'Players':Chat(("h/-------------"..v.Name.." TRYED TO CRASH THE SERVER LOL-------------"))
            end
            end
                for i,v1r in pairs(game.Workspace.Terrain["_Game"].Folder:GetChildren()) do
                    if v1r.Name == v.Name.."'s jail" then
                        wait(0.5)
                        game:GetService'Players':Chat(("removejails"))
                end
        end
        end
        for i,vr in pairs(game.Workspace.Terrain["_Game"].Folder:GetChildren()) do
            if vr.Name == "Sound" then
                game:GetService'Players':Chat(("stopmusic"))
                game:GetService'Players':Chat(("h/Sorry, try next time using a boombox!"))
            end
        end
    end
end
end
end)
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.sub(msg:lower(), 0, 5) == ":capy" then
        game.Players:Chat(":char all 13744")
        game.Players:Chat("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n Capybara.")
end
end)

--song id's lmfao 6911766512 6834218705
local prefix = ":"
local antifreeze = false
local antipunish = false
local antivg = false
local a1 = "PaintPart"
local inf = 999999999999999999999999999999999999999999999999
local bruh = game:GetService("Players"):GetPlayers()
function Notify(Title,Text,Duration,Button1Text,Button2Text)
	local NotificationBindable = Instance.new("BindableFunction")
	game.StarterGui:SetCore("SendNotification", {
		Title = Title;
		Text = Text;
		Icon = "";
		Duration = Duration;
		Button1 = Button1Text;
		Button2 = Button2Text;
		Callback = NotificationBindable;
	})
	return NotificationBindable
end

local lplr = game.Players.LocalPlayer

---30, 8, 70
-- Rip 4udi0_Maker (my alt)

--// Command functions \\--

function a8(msg)
	while PadCheck == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				local a9 = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
				local aa = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame;
				wait(0)
				a9.CanCollide = false;
				repeat
					wait()
				until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				a9.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
				wait(0)
				a9.CFrame = aa;
				a9.CanCollide = true
			else
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			end
		end
	end
end;
function anpun()
	while antipunish == true do
		wait(0)
		if lplr.Character.Parent == game:GetService("Lighting") then
			fchat(":unpunish "..lplr.Name)
		end
	end
end;
function anfrz()
	while antifreeze == true do
		wait(0)
		if lplr.Character:FindFirstChild("ice") then
			fchat(":thaw "..lplr.Name)
		end
	end
end;
function auto()
	while wait(0.1) do
		if lplr.Character.Humanoid.Health > 1 then
			fchat("reset me")
		end
	end
end;
function crash()
	for i = 1,20 do fchat("size others 0.3") end
	fchat("freeze others")
	for i = 1,20 do fchat("size others 10") end
	fchat("clone others")
	for i = 1,20 do fchat("freeze others") end
	for i = 1,20 do fchat("size others 10") end
	for i = 1,20 do fchat("clone others") end
	for i = 1,20 do fchat("size others 0.3") end
	for i = 1,20 do fchat("size others 0.3") end
	fchat("freeze others")
	for i = 1,20 do fchat("size others 10") end
	fchat("clone others")
	for i = 1,20 do fchat("freeze others") end
	for i = 1,20 do fchat("size others 0.3") end
	fchat("freeze others")
	for i = 1,20 do fchat("size others 10") end
	fchat("clone others")

	for i = 1,20 do fchat("size others 0.3") end
	fchat("freeze others")
	for i = 1,20 do fchat("size others 10") end
	fchat("clone others")
	for i = 1,20 do fchat("freeze others") end
	for i = 1,20 do fchat("size others 10") end
	for i = 1,20 do fchat("clone others") end
	for i = 1,20 do fchat("size others 0.3") end
	for i = 1,20 do fchat("size others 0.3") end
	fchat("freeze others")
	for i = 1,20 do fchat("size others 10") end
	fchat("clone others")
	for i = 1,20 do fchat("freeze others") end
	for i = 1,20 do fchat("size others 0.3") end
	fchat("freeze others")
	for i = 1,20 do fchat("size others 10") end
	fchat("clone others")
end;
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end;
function toTokens(str)
	local tokens = {}
	for op,name in string.gmatch(str,"([+-])([^+-]+)") do
		table.insert(tokens,{Operator = op,Name = name})
	end
	return tokens
end;
function splitString(str,delim)
	local broken = {}
	if delim == nil then delim = "," end
	for w in string.gmatch(str,"[^"..delim.."]+") do
		table.insert(broken,w)
	end
	return broken
end;
function onlyIncludeInTable(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end;
function removeTableMatches(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end;
function getPlayersByName(Name)
	local Name,Len,Found = string.lower(Name),#Name,{}
	for _,v in pairs(bruh) do
		if Name:sub(0,1) == '@' then
			if string.sub(string.lower(v.Name),1,Len-1) == Name:sub(2) then
				table.insert(Found,v)
			end
		else
			if string.sub(string.lower(v.Name),1,Len) == Name or string.sub(string.lower(v.DisplayName),1,Len) == Name then
				table.insert(Found,v)
			end
		end
	end
	return Found
end;
function getPlayer(victim, lplr)
	if victim == nil then return {lplr.Name} end
	local nameList = splitString(victim,",")

	local foundList = {}

	for _,name in pairs(nameList) do
		if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
		local tokens = toTokens(name)
		local initialPlayers = bruh

		for i,v in pairs(tokens) do
			if v.Operator == "+" then
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(victim) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = onlyIncludeInTable(initialPlayers,case(lplr,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
				end
			else
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(victim) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = removeTableMatches(initialPlayers,case(lplr,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
				end
			end
		end

		for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
	end

	local foundNames = {}
	for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end

	return foundNames
end;
local RS = game:GetService("RunService").RenderStepped
function givetool(plr)
	local v = game.GetService("Players")[getPlayer(plr, lplr)[1]].Character
	workspace.CurrentCamera.CameraSubject = v
	local Char = lplr.Character or workspace:FindFirstChild(lplr.Name)
	local hum = Char and Char:FindFirstChildWhichIsA('Humanoid')
	local hrp = hum and hum.RootPart
	local hrppos = hrp.CFrame
	hum = hum:Destroy() or hum:Clone()
	hum.Parent = Char
	hum:ClearAllChildren()
	lplr:ClearCharacterAppearance()
	coroutine.wrap(function()
		lplr.CharacterAdded:Wait():WaitForChild('Humanoid').RootPart.CFrame = wait() and hrppos
	end)()
	local vHRP = getRoot(plr)
	while Char and Char.Parent and vHRP and vHRP.Parent do
		local Tools = false
		for _, v in ipairs(Char:GetChildren()) do
			if v:IsA('BackpackItem') and v:FindFirstChild('Handle') then
				Tools = true
				firetouchinterest(v.Handle, vHRP, 0)
				firetouchinterest(v.Handle, vHRP, 1)
			end
		end
		if not Tools then
			break
		end
		hrp.CFrame = vHRP.CFrame
		RS:Wait()
	end
end
function transformToColor3(aU)
	local aV = aU.r;
	local aW = aU.g;
	local aE = aU.b;
	return Color3.new(aV, aW, aE)
end;
task.spawn(function()
	while true do
		wait(0)
        if game:GetService("Players"):WaitForChild("087_B3") then
            fchat(":punish 087")
        end
	end
end);
task.spawn(function()
	while true do
		wait(0)
		--[[if antivg == true then
			for lol in pairs(game:GetService("Players"):GetPlayers()) do
				local bla = lol.Name
				if lol.Backpack:FindForChild("VampireVanquisher"):IsA("Tool") then
					fchat("reset "..bla)
					fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n my guy failed to crash server using VampireVanquisher 💀")
				end
			end
		end
	end]]    
		if antivg == true then
			for ag, a7 in pairs(game:GetService("Players"):GetPlayers()) do
				if a7.Character then
					if a7.Character:FindFirstChild("VampireVanquisher") then
						local aX = a7.Name;
						fchat("reset " .. aX)
						fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n my guy failed to crash server using VampireVanquisher 💀")
						wait(0)
					end;
					if a7.Character:FindFirstChild("HumanoidRootPart") then
						if a7.Character.HumanoidRootPart.Size.Y <= 0.3 then
							local aX = a7.Name;
							fchat("reset " .. aX)
							fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n my guy failed to crash server using VampireVanquisher 💀")
							wait(0)
						end
					end
				end
			end
		end
	end
end);
function fchat(msg)
	--game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar:SetTextFromInput(msg)
	game.Players:Chat(msg)
	--game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text = ""
end
game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if string.sub(msg:lower(), 0, 4) == prefix .. "fly" then
		local plr = string.sub(msg:lower(), 8)
		if plr then
			fchat("fly "..plr)
		else
			fchat("fly me")
		end
	end
	if string.sub(msg:lower(), 0, 2) == prefix .. "d" then
		antipunish = true;
		antifreeze = true;
		auto = true;
		anpun()
		anfrz()
		auto()
	end
	if string.sub(msg:lower(), 0, 4) == prefix .. "rtx" then
		fchat(":time 7")
		fchat(":brightness 1")
		fchat(":ambient 222 65 0")
		fchat(":outdoorambient 222 65 0")
	end
	if string.sub(msg:lower(), 0, 7) == prefix .. "antivg" then
		antivg = true
	end
	if string.sub(msg:lower(), 0, 9) == prefix .. "silcrash" then
		crash()
	end
	if string.sub(msg:lower(), 0, 10) == prefix .. "noshadows" or string.sub(msg:lower(), 0, 14) == prefix .. "removeshadows" then
		fchat(":brightness 0")
		fchat(":ambient 255 255 255")
		fchat(":outdoorambient 255 255 255")
	end
	if string.sub(msg:lower(), 0, 6) == prefix .. "otval" then
		fchat(":colorshifttop 999999 0 0")
		fchat(":colorshiftbottom 0 0 999999")
		fchat(":outdoorambient 0 999999 0")
	end
	if string.sub(msg:lower(), 0, 11) == prefix .. "hyperotval" then
		while wait(.1) do
			fchat(":colorshifttop 999999 0 0")
			fchat(":colorshiftbottom 0 0 999999")
			fchat(":outdoorambient 0 999999 0")
			fchat(":flash")
			fchat("fogend 50")
			fchat("fogstart 999999")
		end
	end
	if string.sub(msg:lower(), 0, 6) == prefix .. "house" then
		lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 8, 73)
	end
	if string.sub(msg:lower(), 0, 11) == prefix .. "antipunish" then
		antipunish = true;
		anpun()
	end
	if string.sub(msg:lower(), 0, 11) == prefix .. "antifreeze" then
		antifreeze = true;
		anfrz()
	end
	if string.sub(msg:lower(), 0, 5) == prefix .. "auto" then
		auto = true;
		auto()
	end
	if string.sub(msg:lower(), 0, 6) == prefix .. "n@ked" then
        local plr = string.sub(msg:lower(), 5)
        fchat(":paint "..plr.." 204 142 105")
        fchat(":removeclothes "..plr)
        fchat(":pants "..plr.." 12670903248")
	end
	if string.sub(msg:lower(), 0, 6) == prefix .. "fixbp" then
		fchat(prefix .. "trap " .. plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(- 500.99981689453, 0.10156404972076, 0))
		wait(0.10)
		fchat("jail me")
		fchat("tp " .. plr .. " me")
		local Y = game:GetService("Workspace").Terrain["_Game"]
		local Z = Y.Workspace;
		wait(0.25)
		local a3 = Z.Baseplate;
		local function movepart()
			local a4 = game.Players.LocalPlayer.Character.HumanoidRootPart;
			local a5 = true;
			task.spawn(function()
				while true do
					game:GetService('RunService').Heartbeat:Wait()
					game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
					a4.CFrame = a3.CFrame * CFrame.new(- 1 * a3.Size.X / 2 - game.Players.LocalPlayer.Character['Torso'].Size.X / 2, 0, 0)
					if not a5 then
						break
					end
				end
			end)
			task.spawn(function()
				while a5 do
					wait(.1)
					fchat('unpunish me')
				end
			end)
			wait(0.25)
			a5 = false
		end;
		movepart()
		wait(0.75)
		fchat("tp me " .. plr)
	end
	if string.sub(msg:lower(), 0, 9) == prefix .. "fixpaint" then
		fchat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		local af = game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls;
		for ag, ae in pairs(game.Workspace.Terrain["_Game"].Workspace:GetChildren()) do
			task.spawn(function()
				if ae:IsA("Part") then
					local ah = {
						["Part"] = ae,
						["Color"] = transformToColor3(BrickColor.new("Bright green"))
					}
					af:InvokeServer(a1, ah)
				end
			end)
		end;
		for ag, ae in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
			task.spawn(function()
				if ae:IsA("Part") then
					local ai = {
						["Part"] = ae,
						["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
					}
					af:InvokeServer(a1, ai)
				end
			end)
		end;
		for ag, ae in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetDescendants()) do
			if ae:IsA("Part") then
				task.spawn(function()
					if ae.Name == "SmoothBlockModel103" or ae.Name == "SmoothBlockModel105" or ae.Name == "SmoothBlockModel106" or ae.Name == "SmoothBlockModel108" or ae.Name == "SmoothBlockModel11" or ae.Name == "SmoothBlockModel113" or ae.Name == "SmoothBlockModel114" or ae.Name == "SmoothBlockModel115" or ae.Name == "SmoothBlockModel116" or ae.Name == "SmoothBlockModel118" or ae.Name == "SmoothBlockModel122" or ae.Name == "SmoothBlockModel126" or ae.Name == "SmoothBlockModel129" or ae.Name == "SmoothBlockModel13" or ae.Name == "SmoothBlockModel130" or ae.Name == "SmoothBlockModel131" or ae.Name == "SmoothBlockModel132" or ae.Name == "SmoothBlockModel134" or ae.Name == "SmoothBlockModel135" or ae.Name == "SmoothBlockModel14" or ae.Name == "SmoothBlockModel140" or ae.Name == "SmoothBlockModel142" or ae.Name == "SmoothBlockModel147" or ae.Name == "SmoothBlockModel15" or ae.Name == "SmoothBlockModel154" or ae.Name == "SmoothBlockModel155" or ae.Name == "SmoothBlockModel164" or ae.Name == "SmoothBlockModel166" or ae.Name == "SmoothBlockModel173" or ae.Name == "SmoothBlockModel176" or ae.Name == "SmoothBlockModel179" or ae.Name == "SmoothBlockModel185" or ae.Name == "SmoothBlockModel186" or ae.Name == "SmoothBlockModel190" or ae.Name == "SmoothBlockModel191" or ae.Name == "SmoothBlockModel196" or ae.Name == "SmoothBlockModel197" or ae.Name == "SmoothBlockModel198" or ae.Name == "SmoothBlockModel20" or ae.Name == "SmoothBlockModel201" or ae.Name == "SmoothBlockModel203" or ae.Name == "SmoothBlockModel205" or ae.Name == "SmoothBlockModel207" or ae.Name == "SmoothBlockModel208" or ae.Name == "SmoothBlockModel209" or ae.Name == "SmoothBlockModel210" or ae.Name == "SmoothBlockModel211" or ae.Name == "SmoothBlockModel213" or ae.Name == "SmoothBlockModel218" or ae.Name == "SmoothBlockModel22" or ae.Name == "SmoothBlockModel223" or ae.Name == "SmoothBlockModel224" or ae.Name == "SmoothBlockModel226" or ae.Name == "SmoothBlockModel26" or ae.Name == "SmoothBlockModel29" or ae.Name == "SmoothBlockModel30" or ae.Name == "SmoothBlockModel31" or ae.Name == "SmoothBlockModel36" or ae.Name == "SmoothBlockModel37" or ae.Name == "SmoothBlockModel38" or ae.Name == "SmoothBlockModel39" or ae.Name == "SmoothBlockModel41" or ae.Name == "SmoothBlockModel48" or ae.Name == "SmoothBlockModel49" or ae.Name == "SmoothBlockModel51" or ae.Name == "SmoothBlockModel56" or ae.Name == "SmoothBlockModel67" or ae.Name == "SmoothBlockModel68" or ae.Name == "SmoothBlockModel69" or ae.Name == "SmoothBlockModel70" or ae.Name == "SmoothBlockModel72" or ae.Name == "SmoothBlockModel75" or ae.Name == "SmoothBlockModel8" or ae.Name == "SmoothBlockModel81" or ae.Name == "SmoothBlockModel85" or ae.Name == "SmoothBlockModel93" or ae.Name == "SmoothBlockModel98" then
						local aj = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Brick yellow"))
						}
						af:InvokeServer(a1, aj)
					end;
					if ae.Name == "SmoothBlockModel40" then
						local ak = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Bright green"))
						}
						af:InvokeServer(a1, ak)
					end;
					if ae.Name == "SmoothBlockModel100" or ae.Name == "SmoothBlockModel102" or ae.Name == "SmoothBlockModel104" or ae.Name == "SmoothBlockModel107" or ae.Name == "SmoothBlockModel109" or ae.Name == "SmoothBlockModel110" or ae.Name == "SmoothBlockModel111" or ae.Name == "SmoothBlockModel119" or ae.Name == "SmoothBlockModel12" or ae.Name == "SmoothBlockModel120" or ae.Name == "SmoothBlockModel123" or ae.Name == "SmoothBlockModel124" or ae.Name == "SmoothBlockModel125" or ae.Name == "SmoothBlockModel127" or ae.Name == "SmoothBlockModel128" or ae.Name == "SmoothBlockModel133" or ae.Name == "SmoothBlockModel136" or ae.Name == "SmoothBlockModel137" or ae.Name == "SmoothBlockModel138" or ae.Name == "SmoothBlockModel139" or ae.Name == "SmoothBlockModel141" or ae.Name == "SmoothBlockModel143" or ae.Name == "SmoothBlockModel149" or ae.Name == "SmoothBlockModel151" or ae.Name == "SmoothBlockModel152" or ae.Name == "SmoothBlockModel153" or ae.Name == "SmoothBlockModel156" or ae.Name == "SmoothBlockModel157" or ae.Name == "SmoothBlockModel158" or ae.Name == "SmoothBlockModel16" or ae.Name == "SmoothBlockModel163" or ae.Name == "SmoothBlockModel167" or ae.Name == "SmoothBlockModel168" or ae.Name == "SmoothBlockModel169" or ae.Name == "SmoothBlockModel17" or ae.Name == "SmoothBlockModel170" or ae.Name == "SmoothBlockModel172" or ae.Name == "SmoothBlockModel177" or ae.Name == "SmoothBlockModel18" or ae.Name == "SmoothBlockModel180" or ae.Name == "SmoothBlockModel184" or ae.Name == "SmoothBlockModel187" or ae.Name == "SmoothBlockModel188" or ae.Name == "SmoothBlockModel189" or ae.Name == "SmoothBlockModel19" or ae.Name == "SmoothBlockModel193" or ae.Name == "SmoothBlockModel2" or ae.Name == "SmoothBlockModel200" or ae.Name == "SmoothBlockModel202" or ae.Name == "SmoothBlockModel21" or ae.Name == "SmoothBlockModel214" or ae.Name == "SmoothBlockModel215" or ae.Name == "SmoothBlockModel216" or ae.Name == "SmoothBlockModel219" or ae.Name == "SmoothBlockModel220" or ae.Name == "SmoothBlockModel221" or ae.Name == "SmoothBlockModel222" or ae.Name == "SmoothBlockModel225" or ae.Name == "SmoothBlockModel227" or ae.Name == "SmoothBlockModel229" or ae.Name == "SmoothBlockModel23" or ae.Name == "SmoothBlockModel230" or ae.Name == "SmoothBlockModel231" or ae.Name == "SmoothBlockModel25" or ae.Name == "SmoothBlockModel28" or ae.Name == "SmoothBlockModel32" or ae.Name == "SmoothBlockModel33" or ae.Name == "SmoothBlockModel34" or ae.Name == "SmoothBlockModel42" or ae.Name == "SmoothBlockModel44" or ae.Name == "SmoothBlockModel47" or ae.Name == "SmoothBlockModel54" or ae.Name == "SmoothBlockModel55" or ae.Name == "SmoothBlockModel58" or ae.Name == "SmoothBlockModel59" or ae.Name == "SmoothBlockModel6" or ae.Name == "SmoothBlockModel61" or ae.Name == "SmoothBlockModel62" or ae.Name == "SmoothBlockModel63" or ae.Name == "SmoothBlockModel74" or ae.Name == "SmoothBlockModel76" or ae.Name == "SmoothBlockModel77" or ae.Name == "SmoothBlockModel78" or ae.Name == "SmoothBlockModel79" or ae.Name == "SmoothBlockModel80" or ae.Name == "SmoothBlockModel84" or ae.Name == "SmoothBlockModel86" or ae.Name == "SmoothBlockModel87" or ae.Name == "SmoothBlockModel88" or ae.Name == "SmoothBlockModel90" or ae.Name == "SmoothBlockModel91" or ae.Name == "SmoothBlockModel92" or ae.Name == "SmoothBlockModel94" or ae.Name == "SmoothBlockModel95" or ae.Name == "SmoothBlockModel96" then
						local al = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Bright red"))
						}
						af:InvokeServer(a1, al)
					end;
					if ae.Name == "SmoothBlockModel10" or ae.Name == "SmoothBlockModel101" or ae.Name == "SmoothBlockModel117" or ae.Name == "SmoothBlockModel121" or ae.Name == "SmoothBlockModel144" or ae.Name == "SmoothBlockModel145" or ae.Name == "SmoothBlockModel146" or ae.Name == "SmoothBlockModel148" or ae.Name == "SmoothBlockModel150" or ae.Name == "SmoothBlockModel159" or ae.Name == "SmoothBlockModel161" or ae.Name == "SmoothBlockModel171" or ae.Name == "SmoothBlockModel174" or ae.Name == "SmoothBlockModel175" or ae.Name == "SmoothBlockModel181" or ae.Name == "SmoothBlockModel182" or ae.Name == "SmoothBlockModel183" or ae.Name == "SmoothBlockModel192" or ae.Name == "SmoothBlockModel194" or ae.Name == "SmoothBlockModel195" or ae.Name == "SmoothBlockModel199" or ae.Name == "SmoothBlockModel204" or ae.Name == "SmoothBlockModel206" or ae.Name == "SmoothBlockModel212" or ae.Name == "SmoothBlockModel217" or ae.Name == "SmoothBlockModel228" or ae.Name == "SmoothBlockModel24" or ae.Name == "SmoothBlockModel27" or ae.Name == "SmoothBlockModel35" or ae.Name == "SmoothBlockModel4" or ae.Name == "SmoothBlockModel43" or ae.Name == "SmoothBlockModel45" or ae.Name == "SmoothBlockModel46" or ae.Name == "SmoothBlockModel50" or ae.Name == "SmoothBlockModel53" or ae.Name == "SmoothBlockModel57" or ae.Name == "SmoothBlockModel60" or ae.Name == "SmoothBlockModel64" or ae.Name == "SmoothBlockModel65" or ae.Name == "SmoothBlockModel66" or ae.Name == "SmoothBlockModel7" or ae.Name == "SmoothBlockModel71" or ae.Name == "SmoothBlockModel73" or ae.Name == "SmoothBlockModel82" or ae.Name == "SmoothBlockModel83" or ae.Name == "SmoothBlockModel89" or ae.Name == "SmoothBlockModel99" then
						local am = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Dark orange"))
						}
						af:InvokeServer(a1, am)
					end;
					if ae.Name == "SmoothBlockModel1" or ae.Name == "SmoothBlockModel3" or ae.Name == "SmoothBlockModel5" or ae.Name == "SmoothBlockModel9" then
						local an = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
						af:InvokeServer(a1, an)
					end;
					if ae.Name == "SmoothBlockModel112" then
						local ao = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Medium blue"))
						}
						af:InvokeServer(a1, ao)
					end;
					if ae.Name == "SmoothBlockModel52" or ae.Name == "SmoothBlockModel97" then
						local ap = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Reddish brown"))
						}
						af:InvokeServer(a1, ap)
					end;
					if ae.Name == "SmoothBlockModel160" or ae.Name == "SmoothBlockModel162" or ae.Name == "SmoothBlockModel165" or ae.Name == "SmoothBlockModel178" then
						local aq = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Sand red"))
						}
						af:InvokeServer(a1, aq)
					end
				end)
			end
		end;
		for ag, ae in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetDescendants()) do
			if ae:IsA("Part") then
				task.spawn(function()
					if ae.Name == "Part29" or ae.Name == "Part31" or ae.Name == "Part55" then
						local ar = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
						af:InvokeServer(a1, ar)
					end;
					if ae.Name == "Part11" or ae.Name == "Part18" or ae.Name == "Part25" or ae.Name == "Part3" or ae.Name == "Part43" then
						local as = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Deep blue"))
						}
						af:InvokeServer(a1, as)
					end;
					if ae.Name == "Part13" or ae.Name == "Part21" or ae.Name == "Part23" or ae.Name == "Part7" then
						local at = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Institutuional white"))
						}
						af:InvokeServer(a1, at)
					end;
					if ae.Name == "Part17" or ae.Name == "Part26" or ae.Name == "Part38" or ae.Name == "Part5" or ae.Name == "Part9" then
						local au = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Lime green"))
						}
						af:InvokeServer(a1, au)
					end;
					if ae.Name == "Part30" or ae.Name == "Part32" or ae.Name == "Part33" or ae.Name == "Part34" or ae.Name == "Part35" or ae.Name == "Part36" or ae.Name == "Part39" or ae.Name == "Part40" or ae.Name == "Part41" or ae.Name == "Part42" or ae.Name == "Part46" or ae.Name == "Part47" or ae.Name == "Part48" or ae.Name == "Part49" or ae.Name == "Part50" or ae.Name == "Part51" or ae.Name == "Part52" or ae.Name == "Part53" or ae.Name == "Part54" or ae.Name == "Part56" or ae.Name == "Part57" or ae.Name == "Part58" or ae.Name == "Part59" or ae.Name == "Part60" or ae.Name == "Part61" or ae.Name == "Part38" or ae.Name == "Part5" or ae.Name == "Part9" then
						local av = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Medium Stone grey"))
						}
						af:InvokeServer(a1, av)
					end;
					if ae.Name == "Part12" or ae.Name == "Part15" or ae.Name == "Part24" or ae.Name == "Part44" or ae.Name == "Part6" then
						local aw = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("New yeller"))
						}
						af:InvokeServer(a1, aw)
					end;
					if ae.Name == "Part14" or ae.Name == "Part19" or ae.Name == "Part2" or ae.Name == "Part27" then
						local ax = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Really black"))
						}
						af:InvokeServer(a1, ax)
					end;
					if ae.Name == "Part1" or ae.Name == "Part10" or ae.Name == "Part16" or ae.Name == "Part22" or ae.Name == "Part37" then
						local ay = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Really red"))
						}
						af:InvokeServer(a1, ay)
					end;
					if ae.Name == "Part20" or ae.Name == "Part28" or ae.Name == "Part4" or ae.Name == "Part45" or ae.Name == "Part8" then
						local az = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Toothpaste"))
						}
						af:InvokeServer(a1, az)
					end
				end)
			end
		end;
		for ag, ae in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
			task.spawn(function()
				if ae:IsA("Part") then
					local aA = {
						["Part"] = ae,
						["Color"] = transformToColor3(BrickColor.new("Really red"))
					}
					af:InvokeServer(a1, aA)
				end;
				for ag, ae in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
					if ae:IsA("Part") then
						local aB = {
							["Part"] = ae,
							["Color"] = transformToColor3(BrickColor.new("Teal"))
						}
						af:InvokeServer(a1, aB)
					end
				end
			end)
		end
	end;
	if string.sub(msg:lower(), 0, 3) == prefix .. "sm" or string.sub(msg:lower(), 0, 14) == prefix .. "servermessage" then
		local msg = string.sub(msg:lower(), 5)
		if msg ~= nil then
			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"..msg)
		end
	end
	if string.sub(msg:lower(), 0, 5) == prefix .. "kick" then
		local Player = string.sub(msg:lower(), 6)
		fchat("size "..Player.." nan")
		wait(.1)
		fchat("freeze "..Player)
		fchat("gear me 25741198")
		givetool(Player)
	end
	if string.sub(msg:lower(), 0, 6) == prefix .. "crash" then

		local function fchat(msg)
			game.Players:Chat(msg)
		end

--[[		fchat(":gear me 94794847")
		fchat(":gear me 94794847")
		fchat(":gear me 94794847")
		fchat(":gear me 94794847")
		fchat("/
		raw")
		fchat(":gear me 94794847")
		fchat(":gear me 94794847")
		fchat(":gear me 94794847")
		local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")

		for _, v in ipairs(Backpack:GetChildren()) do
			v.Parent = game.Players.LocalPlayer.Character
			v:Activate()
		end]]
		fchat("blind all")
		fchat("music 6846153394")
		fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[Glee's Crasher:] I like to eat lesbians")
		wait(1)
		crash()
	end
	if string.sub(msg:lower(), 0, 3) == prefix .. "iy" then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
	if string.sub(msg:lower(), 0, 5) == prefix .. "perm" then
		PadCheck = true;
		a8(msg)
	end
	if string.sub(msg:lower(), 0, 6) == prefix .. "regen" then
		fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen"):FindFirstChild("ClickDetector"), 0)	
	end
	--a
	if string.sub(msg:lower(), 0, 5) == prefix .. "bsod" then
		fchat(prefix.."regen")
		fchat("time 3")
		fchat("undisco")
		fchat("music 865599816")
		fchat("fogend 0")
		fchat("fogcolor 0 0 9999999")
		while wait() do
			fchat("freeze others")
			fchat("invisible others")
			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")

			fchat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[ Ｓｅｒｖｅｒ ]\n\nA fatal exception 0E has occurred at game.Lighting\n.FogColor. The game session will be terminated.\n\n            *   Press Alt + F4 to terminate current game session.       \n     *   Press CTRL + ALT + DEL if you can't close game.\n           You will lose any unsaved information in this game.\n\nPress Alt + F4 to continue")


		end
	end
end)
