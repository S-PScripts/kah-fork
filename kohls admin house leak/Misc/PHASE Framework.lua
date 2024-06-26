--[[
	PHASE Framework
	Made by @SZCVAK
	
	This framework was made to make the creation of new
	KAH (Kohl's Admin House) scripts easier and faster.
	This framework currently supports both AH, and KAH.
	
	!ATTENTION!
	* This framework is PRIVATE-USE ONLY. Outside use
	  without proper permissions from any of the devs
	  is PROHIBITED and associated work will be taken
	  DOWN.
]]--

phase = {}
phase._System = {}
phase._Connections = {}

-- Detect the game using placeId
function phase._System:DetectCompatibility()
	local gameId = game.PlaceId
	if gameId == 112420803 or gameId == 53473220 then
		return true
    end
	return -1
end

--=== FRAMEWORK FUNCTIONS & VARIABLES ===--
function phase:Load()
	print("[PHASE] Loading engine...")
	print("[PHASE] Preparing...")
	phase._System.Compatible = phase._System:DetectCompatibility()
	if phase._System.Compatible then
		print("[PHASE] Loading into players...")
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            phase:LoadPlayer(v)
        end
        print("[PHASE] Loaded!")
	end
end

phase.Connections = {}
phase.Commands = {}
phase.Whitelist = {game.Players.LocalPlayer.Name}
phase.Prefix = ">"
phase.GameFolder = game.Workspace.Terrain._Game
phase.Admin = phase.GameFolder.Admin
phase.Regen = phase.Admin:FindFirstChild("Regen")
phase.LogSettings = {
    tag = "[PHASE] ",
    style0 = Color3.new(1, 1, 1),
    style1 = Color3.new(0, 255, 255),
    style2 = Color3.new(64/255, 1, 64/255),
    style3 = Color3.new(255/255, 255/255, 64/255),
    style4 = Color3.new(255/255, 64/255, 64/255),
    style5 = Color3.new(255/255, 216/255, 64/255),
    style6 = Color3.new(127/255, 73/255, 252/255)
}

-- Regen
function phase:RegenAdmin()
    if phase.Regen then
        fireclickdetector(phase.Regen.ClickDetector, 0)
    end
end

-- Chat
function phase:Chat(...) game.Players:Chat(...) end

-- Chat Unpatcher
function phase:UnpatchChat()
    if _G["__nmc"] == nil or _G["__nmc"] == false then
        local Players = game:GetService("Players")
        local LocalPlayer =
            game.Players.LocalPlayer or
            game.Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
        local function WaitForInstance(Ancestor, ...)
            local DescendantNames = {...}
            local Descendant = Ancestor
            for _, DescendantName in ipairs(DescendantNames) do
                Descendant = Descendant:WaitForChild(DescendantName)
            end
            return Descendant
        end
        local ChatBar = WaitForInstance(
            LocalPlayer,
            "PlayerGui",
            "Chat",
            "Frame",
            "ChatBarParentFrame",
            "Frame",
            "BoxFrame",
            "Frame",
            "ChatBar"
        )
        local function Chat(Message)
            local Text = ChatBar.Text
            ChatBar:SetTextFromInput(Message)
            Players:Chat(Message)
            ChatBar:SetTextFromInput(Text)
        end
        local __namecall
        __namecall = hookmetamethod(game, "__namecall", function(self, ...)
            if self == Players and getnamecallmethod() == "Chat" and checkcaller() and debug.info(3, "f") ~= Chat then
                return Chat(...)
            end
            return __namecall(self, ...)
        end)
        _G["__nmc"] = true
    end
end

-- Log a message
function phase:Log(msg, style)
	local style = style or 0
    local color = phase.LogSettings["style"..tostring(style)]

	if style == -1 then
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = tostring(msg),
			Color = Color3.new(1, 1, 1)
		})
	else
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = phase.LogSettings.tag..tostring(msg),
			Color = color
		})
	end
end

function phase:LoadPlayer(plr)
    phase.Connections[plr.Name.."_Chattted"] = plr.Chatted:Connect(function(msg)
        if table.find(phase.Whitelist, plr.Name) ~= nil then
            if string.sub(msg, 1, string.len(phase.Prefix)) == phase.Prefix then
                local args = string.split(msg, " ")
                local cmd  = string.sub(args[1], string.len(phase.Prefix)+1)
                local r = string.sub(msg, string.len(phase.Prefix)+string.len(cmd)+2)
                if phase.Commands[cmd:lower()] then
                    phase.Commands[cmd:lower()].func(r)
				else
					for key, command in pairs(phase.Commands) do
						if command.aliases and #command.aliases > 0 then
                            for _, alias in pairs(command.aliases) do
                                if alias:lower() == cmd:lower() then
                                    phase.Commands[key].func(r)
                                end
                            end
                        end
					end
				end
            end
        end
    end)
end

function phase:Disconnect()
    for _, v in pairs(phase.Connections) do
        v:Disconnect()
    end
end

print("[PHASE] Loaded")
