local ScriptTickSpeed = 0.05
local AlertLasts = 5
banned = {}

local prefix = ";" -- ONE PREFIX CHAR ONLY!

local fkick = false -- This wont work for JJsploit Beta(Sometimes) or synxen ILua(Sometimes)
local fkickmsg = ";kick "
local fkick_keybind = "k"

local antikick = true -- Auto enabled for protection xd
local antikick_keybind = "p"

local pads_keybind = "n"
local teleport_keybind = "b"
local respawn_keybind = "v"
local reset_keybind = "c"
local forcefield_keybind = "x"
local fly_keybind = "z"

Quotes = {"Remove the l from clock-", "viewing logs I see"}

-- Script starts here!

-- Vars xd

local teskking = false
local Wteskking = ""
local spamming = false
local Wspamming = ""
local Rcallbacks = false

local mousee = game.Players.LocalPlayer:GetMouse()
local Players = game:GetService("Players")
mousee.KeyDown:connect(function(key)
	if key:lower() == fkick_keybind then
		kicking()
	end
	if key:lower() == antikick_keybind then
		antikicking()
	end
	if key:lower() == respawn_keybind then
		game.Players:Chat("respawn me")
	end
	if key:lower() == reset_keybind then
		game.Players:Chat("reset me")
	end
	if key:lower() == forcefield_keybind then
		game.Players:Chat("ff me")
	end
	if key:lower() == fly_keybind then
		game.Players:Chat("fly me")
	end
	if key:lower() == teleport_keybind then
		game.Players:Chat("tp me me me")
	end
	if key:lower() == pads_keybind then
		game.Players:Chat(prefix.."pads")
	end
end)

function kicking()
	fkick = not fkick
	if fkick == true then
		print("Kicking: Enabled")
		logn("Kicking Enabled", "Ok")
	elseif fkick == false then
		print("Kicking: Disabled")
		logn("Kicking Disabled", "Ok")
	end
end

function antikicking()
	antikick = not antikick
	if antikick == true then
		print("AntiCrash: Enabled")
		logn("AntiCrash Enabled", "Ok")
	elseif antikick == false then
		print("AntiCrash: Disabled")
		logn("AntiCrash Disabled", "Ok")
	end
end

function logf(msg, delay)
	local message = Instance.new("Message",workspace)
	message.Text = msg
	wait(delay)
	message:Destroy()
end

function logn(msg, Settingg)
	if Settingg == not "" then
		game.StarterGui:SetCore("SendNotification", {
			Title = "ShortCut"; 
			Text = msg; 
			Duration = AlertLasts;
			Setting = Settingg;
		})
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "ShortCut"; 
			Text = msg; 
			Duration = AlertLasts;
		})
	end
end

game.Players.PlayerRemoving:Connect(function(player)
	if fkick == true then
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(fkickmsg..user, "All")
	end
end)

logn("Thanks for using ShortCuts :)", "Ok")

function checkGetPad()
	local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
	for i, pad in pairs(pads) do
		pad.PrimaryPart = pad:FindFirstChild("Head")
		local pos = pad.PrimaryPart.CFrame
		wait(0)
		pad.PrimaryPart.CanCollide = false
		pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		wait(0)
		pad:SetPrimaryPartCFrame(pos)
		pad.PrimaryPart.CanCollide = true
	end
end

Players.LocalPlayer.Chatted:Connect(function(msg)
	if msg:lower() == string.sub(prefix.."pm ", 0, 4) then
		
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."credits" then
		logn("RB: SnowClan_8342/r")
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."tesk " then
		logn("Kicking player (This may take a little bit...)")
		Wteskking = string.sub(msg:lower(), 7)
		teskking = true
	end
	
	if string.sub(msg:lower(), 0, 5) == prefix.."stop" then
		logn("Stopped teskker...")
		Wteskking = "none"
		teskking = false
		spamming = false
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."clearlogs" then
		logn("Cleared!")
		for i = 1,100 do
			game:GetService'Players':Chat("ff viewing logs I see")
		end
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."super " then
		logn("Spamming!")
		for i = 1,100 do
			game:GetService'Players':Chat(string.sub(msg:lower(), 8))
		end
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."spam " then
		logn("Spamming!")
		Wspamming = string.sub(msg:lower(), 7)
		spamming = true
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."pads" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."callback" then
		logn("Calling for other scripters...")
		game.Players:Chat("Event_942935")
		Rcallbacks = true
		wait(1)
		Rcallbacks = false
		logn("Stopped calling")
	end
	
	if string.sub(msg:lower(), 0, 12) == "Event_942935" then
		if Rcallbacks == false then
			logn("Scripter called you, replying...")
			game.Players:Chat("Event_942935.Reply")
		end
	end
	
	if string.sub(msg:lower(), 0, 18) == "Event_942935.Reply" then
		if Rcallbacks == true then
			logn("A scripter replied!")
		end
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."reg" then
		logn("Pads regenerated! (AdminJoy)")
		regen()
	end
	
	if string.sub(msg:lower(), 0, 8) == ";prefix " then
		logn("Changed prefix to '"..string.sub(msg:lower(), 9, 9).."'")
		prefix = string.sub(msg:lower(), 9, 9)
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."crash" then
		logn("Just hold the tool your given xd Doesnt expire.")
		game.Players:Chat("gear me 00000000000000000094794847")
		while true do
			wait(0.05)
			if game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher") then
			wait(0.05)
				for i = 1,100 do
					game:GetService'Players':Chat("size me 0.3")
				end
				break
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."bind fkick" then
		logn("fkick is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		fkick_keybind = string.sub(msg:lower(), 13, 13)
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."bind antikick" then
		logn("antikick is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		antikick_keybind = string.sub(msg:lower(), 16, 16)
	end
	
	if string.sub(msg:lower(), 0, 13) == prefix.."bind respawn" then
		logn("respawn is now bound to '"..string.sub(msg:lower(), 15, 15).."'")
		respawn_keybind = string.sub(msg:lower(), 15, 15)
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."bind reset" then
		logn("reset is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		reset_keybind = string.sub(msg:lower(), 13, 13)
	end
	
	if string.sub(msg:lower(), 0, 16) == prefix.."bind forcefield" then
		logn("forcefield is now bound to '"..string.sub(msg:lower(), 18, 18).."'")
		forcefield_keybind = string.sub(msg:lower(), 18, 18)
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."bind fly" then
		logn("fly is now bound to '"..string.sub(msg:lower(), 11, 11).."'")
		fly_keybind = string.sub(msg:lower(), 11, 11)
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."bind teleport" then
		logn("teleport is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		teleport_keybind = string.sub(msg:lower(), 16, 16)
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."bind pads" then
		logn("pads is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		pads_keybind = string.sub(msg:lower(), 13, 13)
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."bok" then
		logn("Now making person bok...")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 6)..","
		game:GetService'Players':Chat(prefix.."super dog "..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6))
		wait(3)
		game:GetService'Players':Chat("kill "..Luser)
	end
	
	if string.sub(msg:lower(), 0, 5) == prefix.."trap" then
		logn("Trapped person!")
		game:GetService'Players':Chat("freeze "..string.sub(msg:lower(), 7))
		game:GetService'Players':Chat("name "..string.sub(msg:lower(), 7).." ")
		game:GetService'Players':Chat("thaw "..string.sub(msg:lower(), 7))
	end
end)

--game.Players.PlayerAdded:connect(function(player)
--	player.Chatted:connect(function(msg)
--		if msg == "Open" then 
--			-- put sum code here
--		end
--	end
--end)

local function regen() -- Stollen from adminjoy credits to him xd
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end

while true do
	wait(ScriptTickSpeed)
	
	if antikick == true then
		for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
			if v.Name == "MessageGUI" or v.Name == "HintGUI" then
				v:Destroy()
			end
		end
	end
	
	if teskking == true then
		game.Players:Chat("pm "..Wteskking.." 欟僌힆舸険餾㮍螵糨劸啹㛩賓鷓靅宯輛遗閜䳗廙娴把睶䌋偣㥠䑕嵶鬾衼䠑䱧沟偣㥠䑕嵶嬕賜猅蝗鴻栧燛菮殨凾㚩慤鬿㖢貖矠䥌厀챟襓撨腪贍쮍䪸顜棺㟛讑宔誃竁䧿詥鸚襓撨腪贍蘾독醀㘛礢德릕䁪侗籟㘛礢德 欟僌힆舸険餾㮍螵糨劸啹㛩賓鷓靅宯輛遗閜䳗廙娴把睶䌋偣㥠䑕嵶鬾衼䠑䱧沟偣㥠䑕嵶嬕賜猅蝗鴻栧燛菮殨凾㚩慤鬿㖢貖矠䥌厀챟襓撨腪贍쮍䪸顜棺㟛讑宔誃竁䧿詥鸚襓撨腪贍蘾독醀㘛礢德릕䁪侗籟㘛礢德 欟僌힆舸険餾㮍螵糨劸啹㛩賓鷓靅宯輛遗閜䳗廙娴把睶䌋偣㥠䑕嵶鬾衼䠑䱧沟偣㥠䑕嵶嬕賜猅蝗鴻栧燛菮殨凾㚩慤鬿㖢貖矠䥌厀챟襓撨腪贍쮍䪸顜棺㟛讑宔誃竁䧿詥鸚襓撨腪贍蘾독醀㘛礢德릕䁪侗籟㘛礢德")
	end
	
	if spamming == true then
		game.Players:Chat(Wspamming)
	end
end

game.Players.PlayerAdded:Connect(function(user)
	if user.UserId == 2280995624 then
		local per = user.Name
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Owner of ShortCut has joined!", "All")
		logf("ShortCut's Owner has joined")
	end
end)
