-- DOGSploit, Made by SZCVAK and Ripend.
-- Do with this whatever you want, but remember, DOGSploit gets updated daily, So yeah.

local msg = function(msg) game.Players:Chat("h                                                                                                                                       "..msg.."                                                                                                                                                                    ") end
local chat = function(...)game.Players:Chat(...)end
local say = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = "."
local idhider = string.rep("0", 500)
local LocalPlayer = game.Players.LocalPlayer
local PlrChar = workspace:WaitForChild(LocalPlayer.Name)
local RunService = game:GetService("RunService")
local RootPart = PlrChar:WaitForChild("HumanoidRootPart")
local Admin = game:GetService("Workspace").Terrain["_Game"].Admin
local Pads = Admin.Pads
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local VER = "v1.6"
local speed = 2.3

local OnSpawnNames = { }
local OnSpawnFuncs = { }

local LastMusic = nil
local scol = Color3.new(1, 1, 1)
local bcol = Color3.new(0, 1, 0)
local th = 0.001

local Ans1 = nil
local Ans2 = nil
local Votes1 = 0
local Votes2 = 0
local Voted = {}
local PollInUse = false
local ChatHistory = {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""}
local UserHistory = {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""}
local PadBanned = { }
local AntiCrash = false
local Answers = {}
local Votes = {}
local ShowBoxes = false

local Freezers = {}
local Players = {}

local MusicList = {
    "lol",
    "rick",
    "amongus",
    "fire",
    "oofrick"
}

local MusicIds = {
    "6754519148",
    "332422144",
    "6486359635",
    "2814987562",
    "591769409"
}

local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui
local tag = Instance.new("TextLabel")
tag.Text = ""
tag.TextColor3 = scol
tag.Position = UDim2.new(1, 0, 1, 0)
tag.Visible = false
tag.Parent = gui
local back = Instance.new("TextLabel")
back.Text = ""
back.TextColor3 = scol
back.Position = UDim2.new(1, 0, 1, 0)
back.Visible = false
back.Parent = gui

---- Settings ----
MaxPads = 2
OrionCrasherV5Noobs = {"NexxorLikesFemBoys", "OrionClan_1094", "e08hq"}
Whitelist = {"Ripend", "BIBE_Aviation", "SZCVAK", "DOGSploit"}
Blacklist = {"XRice_FarmerX", "OhMyAltShadeForReel", "InYaBhutt"}
OofIgnore = {"SZCVAK", "Ripend"}
CrashList = {"MyBizzareAdvanture", "mallow104", "71kSaiki", "wadawdawf3f", "SupersonicYTube", "vuckuncca", "GPUVirtualizaiton", "OrionClan_1094", "kammy0113", "RobloxsCockerSpaniel", "largeween", "Iargeween", "1argeween", "omfg_2borys", "eo8q", "the12attempt", "Siredx", "imfakepolicestate", "TestAccountKRNL", "AnOfficialSith", "IIIIIIIIIQxfelllIII", "bighotglizzy12", "OhMyAltShadeForReel", "71kSaiki", "masterjitzu24_alt", "KohlsUserAnotherz", "FearsXGan_G", "InYaBhutt"}
-- End settings --

---- Statuses --
BlacklistRunning = false
SpamRunning = false
RainbowRunning = false
NokRunning = false
PadChecking = false
AnticrashRunning = false
LocalAntiKillRunning = false
DiscoFog = false
FACRunning, BFACRunning = false, false
AFKRunning = false
TitleRunning = false
AllPadsRunning = false
AntiFreeze = false
AntiPunish = false
AntiJail = false
AntiBlind = false
AntiGui = false
AutoMusic = false
AntiDamage = false
OrionRunning = false
CSystemRunning = false
SafeSpam = false
RB = false
RO = false
RF = false
RD = false
RP = false
UserJoinedRunning = false
RPaintRunning = false
MorePadsRunning = false
DogAnticrash = false -- Anticrash detection, top notch against most crashers. Turn on by: .doganticrash
-- End statuses --

local Selection = Instance.new('SelectionBox')
Selection.Color3 = bcol
Selection.SurfaceColor3 = bcol
Selection.LineThickness = th
local Selected = nil

loadstring(game:HttpGet("https://pastebin.com/raw/iqb45GrA"))() -- colorAPI
local dragging = false

function tablecount(query, itemList)
    query = string.lower(query)
    local searchResult = {}
    for i, item in ipairs(itemList) do
        local name = string.lower(item.name)
        if string.find(name, query) then
        table.insert(searchResult, i)
        end
    end
    return #searchResult
end

local function nest(v)
	for _, v in pairs(v:GetDescendants()) do
        if #v:GetDescendants() ~= 0 then
        	nest(v)
        else
        	print(v.Parent.Name..": "..v.Name)
        end
    end
end

local function GUIChat()
    -- GUI to LUA
    -- Version: 3.2

    -- Instances:

    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local ChatLogs = Instance.new("TextLabel")
    local Text1 = Instance.new("TextLabel")
    local Text4 = Instance.new("TextLabel")
    local Text22 = Instance.new("TextLabel")
    local Text6 = Instance.new("TextLabel")
    local Text5 = Instance.new("TextLabel")
    local Text2 = Instance.new("TextLabel")
    wait(0.1)
    local Text3 = Instance.new("TextLabel")
    local Text7 = Instance.new("TextLabel")
    local Text8 = Instance.new("TextLabel")
    local Text13 = Instance.new("TextLabel")
    local Text9 = Instance.new("TextLabel")
    local Text10 = Instance.new("TextLabel")
    local Text16 = Instance.new("TextLabel")
    local Text11 = Instance.new("TextLabel")
    local Text14 = Instance.new("TextLabel")
    local Text12 = Instance.new("TextLabel")
    wait(0.1)
    local Text18 = Instance.new("TextLabel")
    local Text17 = Instance.new("TextLabel")
    local Text23 = Instance.new("TextLabel")
    local Text20 = Instance.new("TextLabel")
    local Text19 = Instance.new("TextLabel")
    local Text15 = Instance.new("TextLabel")
    local Text21 = Instance.new("TextLabel")

    wait(0)

    --Properties:

    ScreenGui.Parent = game.CoreGui

    wait(0.1)
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BackgroundTransparency = 0.250
    Frame.Position = UDim2.new(0.298000008, 0, 0.213, 0)
    Frame.Size = UDim2.new(0, 350, 0, 450)
    Frame.InputBegan:Connect(function(typed)
        if typed.UserInputState == Enum.UserInputState.Begin then
            dragging = true
            while dragging == true do
                Frame.Position = UDim2.new(0, LocalPlayer:GetMouse().x, 0, LocalPlayer:GetMouse().y)
                wait(0)
            end
        end
    end)
    Frame.InputEnded:Connect(function(typed)
        if typed.UserInputState == Enum.UserInputState.End then
            dragging = false
        end
    end)

    UICorner.Parent = Frame

    wait(0.1)
    ChatLogs.Name = "ChatLogs"
    ChatLogs.Parent = Frame
    ChatLogs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ChatLogs.BackgroundTransparency = 1.000
    ChatLogs.Position = UDim2.new(0, 0, 0.0177777782, 0)
    ChatLogs.Size = UDim2.new(0, 350, 0, 23)
    ChatLogs.Font = Enum.Font.SourceSansBold
    ChatLogs.Text = "ChatLogs by DOGs ("..UserHistory[#UserHistory-5]..": "..ChatHistory[#ChatHistory-5]..")"
    ChatLogs.TextColor3 = Color3.fromRGB(255, 255, 255)
    ChatLogs.TextSize = 28.000
    ChatLogs.TextWrapped = true

    wait(0.1)
    Text1.Name = "Text1"
    Text1.Parent = Frame
    Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text1.BackgroundTransparency = 1.000
    Text1.Position = UDim2.new(0, 0, 0.086666666, 0)
    Text1.Size = UDim2.new(0, 350, 0, 18)
    Text1.Font = Enum.Font.SourceSansLight
    Text1.Text = UserHistory[#UserHistory-1]..": "..ChatHistory[#ChatHistory-1]
    Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text1.TextSize = 20.000

    wait(0.1)
    Text4.Name = "Text4"
    Text4.Parent = Frame
    Text4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text4.BackgroundTransparency = 1.000
    Text4.Position = UDim2.new(0, 0, 0.207000002, 0)
    Text4.Size = UDim2.new(0, 350, 0, 18)
    Text4.Font = Enum.Font.SourceSansLight
    Text4.Text = UserHistory[#UserHistory-4]..": "..ChatHistory[#ChatHistory-4]
    Text4.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text4.TextSize = 20.000

    wait(0.1)
    Text22.Name = "Text22"
    Text22.Parent = Frame
    Text22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text22.BackgroundTransparency = 1.000
    Text22.Position = UDim2.new(0, 0, 0.918111086, 0)
    Text22.Size = UDim2.new(0, 350, 0, 18)
    Text22.Font = Enum.Font.SourceSansLight
    Text22.Text = UserHistory[#UserHistory-22]..": "..ChatHistory[#ChatHistory-22]
    Text22.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text22.TextSize = 20.000

    wait(0.1)
    Text6.Name = "Text6"
    Text6.Parent = Frame
    Text6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text6.BackgroundTransparency = 1.000
    Text6.Position = UDim2.new(0, 0, 0.287, 0)
    Text6.Size = UDim2.new(0, 350, 0, 18)
    Text6.Font = Enum.Font.SourceSansLight
    Text6.Text = UserHistory[#UserHistory-6]..": "..ChatHistory[#ChatHistory-6]
    Text6.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text6.TextSize = 20.000

    wait(0.1)
    Text5.Name = "Text5"
    Text5.Parent = Frame
    Text5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text5.BackgroundTransparency = 1.000
    Text5.Position = UDim2.new(0, 0, 0.246999994, 0)
    Text5.Size = UDim2.new(0, 350, 0, 18)
    Text5.Font = Enum.Font.SourceSansLight
    Text5.Text = UserHistory[#UserHistory-5]..": "..ChatHistory[#ChatHistory-5]
    Text5.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text5.TextSize = 20.000

    wait(0.1)
    Text2.Name = "Text2"
    Text2.Parent = Frame
    Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text2.BackgroundTransparency = 1.000
    Text2.Position = UDim2.new(0, 0, 0.127000004, 0)
    Text2.Size = UDim2.new(0, 350, 0, 18)
    Text2.Font = Enum.Font.SourceSansLight
    Text2.Text = UserHistory[#UserHistory-2]..": "..ChatHistory[#ChatHistory-2]
    Text2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text2.TextSize = 20.000

    wait(0.1)
    Text3.Name = "Text3"
    Text3.Parent = Frame
    Text3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text3.BackgroundTransparency = 1.000
    Text3.Position = UDim2.new(0, 0, 0.166999996, 0)
    Text3.Size = UDim2.new(0, 350, 0, 18)
    Text3.Font = Enum.Font.SourceSansLight
    Text3.Text = UserHistory[#UserHistory-3]..": "..ChatHistory[#ChatHistory-3]
    Text3.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text3.TextSize = 20.000

    wait(0.1)
    Text7.Name = "Text7"
    Text7.Parent = Frame
    Text7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text7.BackgroundTransparency = 1.000
    Text7.Position = UDim2.new(0, 0, 0.326999992, 0)
    Text7.Size = UDim2.new(0, 350, 0, 18)
    Text7.Font = Enum.Font.SourceSansLight
    Text7.Text = UserHistory[#UserHistory-7]..": "..ChatHistory[#ChatHistory-7]
    Text7.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text7.TextSize = 20.000

    wait(0.1)
    Text8.Name = "Text8"
    Text8.Parent = Frame
    Text8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text8.BackgroundTransparency = 1.000
    Text8.Position = UDim2.new(0, 0, 0.366666675, 0)
    Text8.Size = UDim2.new(0, 350, 0, 18)
    Text8.Font = Enum.Font.SourceSansLight
    Text8.Text = UserHistory[#UserHistory-8]..": "..ChatHistory[#ChatHistory-8]
    Text8.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text8.TextSize = 20.000

    wait(0.1)
    Text13.Name = "Text13"
    Text13.Parent = Frame
    Text13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text13.BackgroundTransparency = 1.000
    Text13.Position = UDim2.new(0, 0, 0.564777792, 0)
    Text13.Size = UDim2.new(0, 350, 0, 18)
    Text13.Font = Enum.Font.SourceSansLight
    Text13.Text = UserHistory[#UserHistory-13]..": "..ChatHistory[#ChatHistory-13]
    Text13.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text13.TextSize = 20.000

    wait(0.1)
    Text9.Name = "Text9"
    Text9.Parent = Frame
    Text9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text9.BackgroundTransparency = 1.000
    Text9.Position = UDim2.new(0, 0, 0.404777795, 0)
    Text9.Size = UDim2.new(0, 350, 0, 18)
    Text9.Font = Enum.Font.SourceSansLight
    Text9.Text = UserHistory[#UserHistory-9]..": "..ChatHistory[#ChatHistory-9]
    Text9.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text9.TextSize = 20.000

    wait(0.1)
    Text10.Name = "Text10"
    Text10.Parent = Frame
    Text10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text10.BackgroundTransparency = 1.000
    Text10.Position = UDim2.new(0, 0, 0.442555577, 0)
    Text10.Size = UDim2.new(0, 350, 0, 18)
    Text10.Font = Enum.Font.SourceSansLight
    Text10.Text = UserHistory[#UserHistory-10]..": "..ChatHistory[#ChatHistory-10]
    Text10.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text10.TextSize = 20.000

    wait(0.1)
    Text16.Name = "Text16"
    Text16.Parent = Frame
    Text16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text16.BackgroundTransparency = 1.000
    Text16.Position = UDim2.new(0, 0, 0.684777796, 0)
    Text16.Size = UDim2.new(0, 350, 0, 18)
    Text16.Font = Enum.Font.SourceSansLight
    Text16.Text = UserHistory[#UserHistory-16]..": "..ChatHistory[#ChatHistory-16]
    Text16.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text16.TextSize = 20.000

    wait(0.1)
    Text11.Name = "Text11"
    Text11.Parent = Frame
    Text11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text11.BackgroundTransparency = 1.000
    Text11.Position = UDim2.new(0, 0, 0.484777749, 0)
    Text11.Size = UDim2.new(0, 350, 0, 18)
    Text11.Font = Enum.Font.SourceSansLight
    Text11.Text = UserHistory[#UserHistory-11]..": "..ChatHistory[#ChatHistory-11]
    Text11.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text11.TextSize = 20.000

    wait(0.1)
    Text14.Name = "Text14"
    Text14.Parent = Frame
    Text14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text14.BackgroundTransparency = 1.000
    Text14.Position = UDim2.new(0, 0, 0.604777813, 0)
    Text14.Size = UDim2.new(0, 350, 0, 18)
    Text14.Font = Enum.Font.SourceSansLight
    Text14.Text = UserHistory[#UserHistory-14]..": "..ChatHistory[#ChatHistory-14]
    Text14.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text14.TextSize = 20.000

    wait(0.1)
    Text12.Name = "Text12"
    Text12.Parent = Frame
    Text12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text12.BackgroundTransparency = 1.000
    Text12.Position = UDim2.new(0, 0, 0.52477777, 0)
    Text12.Size = UDim2.new(0, 350, 0, 18)
    Text12.Font = Enum.Font.SourceSansLight
    Text12.Text = UserHistory[#UserHistory-12]..": "..ChatHistory[#ChatHistory-12]
    Text12.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text12.TextSize = 20.000

    wait(0.1)
    Text18.Name = "Text18"
    Text18.Parent = Frame
    Text18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text18.BackgroundTransparency = 1.000
    Text18.Position = UDim2.new(0, 0, 0.76477778, 0)
    Text18.Size = UDim2.new(0, 350, 0, 18)
    Text18.Font = Enum.Font.SourceSansLight
    Text18.Text = UserHistory[#UserHistory-18]..": "..ChatHistory[#ChatHistory-18]
    Text18.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text18.TextSize = 20.000

    wait(0.1)
    Text17.Name = "Text17"
    Text17.Parent = Frame
    Text17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text17.BackgroundTransparency = 1.000
    Text17.Position = UDim2.new(0, 0, 0.724777758, 0)
    Text17.Size = UDim2.new(0, 350, 0, 18)
    Text17.Font = Enum.Font.SourceSansLight
    Text17.Text = UserHistory[#UserHistory-17]..": "..ChatHistory[#ChatHistory-17]
    Text17.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text17.TextSize = 20.000

    wait(0.1)
    Text23.Name = "Text23"
    Text23.Parent = Frame
    Text23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text23.BackgroundTransparency = 1.000
    Text23.Position = UDim2.new(0, 0, 0.958111107, 0)
    Text23.Size = UDim2.new(0, 350, 0, 18)
    Text23.Font = Enum.Font.SourceSansLight
    Text23.Text = UserHistory[#UserHistory-23]..": "..ChatHistory[#ChatHistory-23]
    Text23.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text23.TextSize = 20.000

    wait(0.1)
    Text20.Name = "Text20"
    Text20.Parent = Frame
    Text20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text20.BackgroundTransparency = 1.000
    Text20.Position = UDim2.new(0, 0, 0.840333343, 0)
    Text20.Size = UDim2.new(0, 350, 0, 18)
    Text20.Font = Enum.Font.SourceSansLight
    Text20.Text = UserHistory[#UserHistory-20]..": "..ChatHistory[#ChatHistory-20]
    Text20.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text20.TextSize = 20.000

    wait(0.1)
    Text19.Name = "Text19"
    Text19.Parent = Frame
    Text19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text19.BackgroundTransparency = 1.000
    Text19.Position = UDim2.new(0, 0, 0.802555561, 0)
    Text19.Size = UDim2.new(0, 350, 0, 18)
    Text19.Font = Enum.Font.SourceSansLight
    Text19.Text = UserHistory[#UserHistory-19]..": "..ChatHistory[#ChatHistory-19]
    Text19.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text19.TextSize = 20.000

    wait(0.1)
    Text15.Name = "Text15"
    Text15.Parent = Frame
    Text15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text15.BackgroundTransparency = 1.000
    Text15.Position = UDim2.new(0, 0, 0.644777834, 0)
    Text15.Size = UDim2.new(0, 350, 0, 18)
    Text15.Font = Enum.Font.SourceSansLight
    Text15.Text = UserHistory[#UserHistory-15]..": "..ChatHistory[#ChatHistory-15]
    Text15.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text15.TextSize = 20.000

    wait(0.1)

    Text21.Name = "Text21"
    Text21.Parent = Frame
    Text21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text21.BackgroundTransparency = 1.000
    Text21.Position = UDim2.new(0, 0, 0.879999995, 0)
    Text21.Size = UDim2.new(0, 350, 0, 18)
    Text21.Font = Enum.Font.SourceSansLight
    Text21.Text = UserHistory[#UserHistory-21]..": "..ChatHistory[#ChatHistory-21]
    Text21.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text21.TextSize = 20.000
    wait(0)

    while true do
        Text1.Text = UserHistory[#UserHistory-0]..": "..ChatHistory[#ChatHistory-0]
        Text2.Text = UserHistory[#UserHistory-1]..": "..ChatHistory[#ChatHistory-1]
        Text3.Text = UserHistory[#UserHistory-2]..": "..ChatHistory[#ChatHistory-2]
        Text4.Text = UserHistory[#UserHistory-3]..": "..ChatHistory[#ChatHistory-3]
        Text5.Text = UserHistory[#UserHistory-4]..": "..ChatHistory[#ChatHistory-4]
        Text6.Text = UserHistory[#UserHistory-5]..": "..ChatHistory[#ChatHistory-5]
        Text7.Text = UserHistory[#UserHistory-6]..": "..ChatHistory[#ChatHistory-6]
        Text8.Text = UserHistory[#UserHistory-7]..": "..ChatHistory[#ChatHistory-7]
        Text9.Text = UserHistory[#UserHistory-8]..": "..ChatHistory[#ChatHistory-8]
        Text10.Text = UserHistory[#UserHistory-9]..": "..ChatHistory[#ChatHistory-9]
        Text11.Text = UserHistory[#UserHistory-10]..": "..ChatHistory[#ChatHistory-10]
        Text12.Text = UserHistory[#UserHistory-11]..": "..ChatHistory[#ChatHistory-11]
        Text13.Text = UserHistory[#UserHistory-12]..": "..ChatHistory[#ChatHistory-12]
        Text14.Text = UserHistory[#UserHistory-13]..": "..ChatHistory[#ChatHistory-13]
        Text15.Text = UserHistory[#UserHistory-14]..": "..ChatHistory[#ChatHistory-14]
        Text16.Text = UserHistory[#UserHistory-15]..": "..ChatHistory[#ChatHistory-15]
        Text17.Text = UserHistory[#UserHistory-16]..": "..ChatHistory[#ChatHistory-16]
        Text18.Text = UserHistory[#UserHistory-17]..": "..ChatHistory[#ChatHistory-17]
        Text19.Text = UserHistory[#UserHistory-18]..": "..ChatHistory[#ChatHistory-18]
        Text20.Text = UserHistory[#UserHistory-19]..": "..ChatHistory[#ChatHistory-19]
        Text21.Text = UserHistory[#UserHistory-20]..": "..ChatHistory[#ChatHistory-20]
        Text22.Text = UserHistory[#UserHistory-21]..": "..ChatHistory[#ChatHistory-21]
        Text23.Text = UserHistory[#UserHistory-22]..": "..ChatHistory[#ChatHistory-22]
        wait(0)
    end
end

local function logn(msgs)
	game.StarterGui:SetCore("SendNotification", {
		Title = "DOGSploit";
		Text = msgs;
		Duration = 7;
	})
end

logn("Loading commands...")

-- Credits to Killersploit for movePart function (wishd that harold was more normal lol)
local function movePart(target, plr)
	local size = target.Size
	local pos = target.Position
	local size2 = PlrChar["Torso"].Size
	local size3 = PlrChar["Right Arm"].Size
	local sss = true
	local eee = true
	local oldPos = PlrChar.HumanoidRootPart.CFrame
	spawn(function()
		while sss do
			PlrChar.Humanoid:ChangeState(11)
            chat("punish me")
			PlrChar.HumanoidRootPart.CFrame = CFrame.new(pos.X, pos.Y, pos.Z-(size.X/2)-size2.X/2) * CFrame.Angles(0, math.rad(90), 0)
			chat("unpunish me")
			wait()
		end
	end) 
	wait(.3)
	sss = false
	if plr then
		chat("tp me "..plr)
		chat("tp me "..plr)
	else
		--for i = 1, 10 do 
			--chat("skydive me")
		--end
	end
	LocalPlayer.CharacterAdded:Connect(function(char)
		if eee then
			eee = false
		end
	end)
	chat("reset me")
	repeat wait()
	until eee == false
end

local function Crash(m)
    logn("Crashing server")
    chat("blind all")
    say(m:sub(7))
    msg(m:sub(7))
    while true do wait(0)
        for i = 1,3 do chat("size all 0.3") end
        chat("freeze all")
        for i = 1,3 do chat("size all 10") end
        chat("clone all")
    end
end

local function BCrash(m)
    logn("BCrashing server")
    chat("blind all")
    say(m:sub(7))
    msg(m:sub(7))
    while true do wait(0)
        for i = 1, 20 do chat("freeze all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all") end
    	for i = 1, 10 do chat("dog all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all") end
    	for i = 1, 5 do chat("freeze all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all,all") end
    	for i = 1, 2 do chat("clone all") end
    end
end

local function Rejoin()
    say("Rejoining...")
	wait(.7)
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.id == game.JobId then
			x[#x + 1] = v.id
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
		end
	end
end

local function TpPad()
    while PadChecking == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
				local padCFrame = pad.CFrame
				wait(0.125)
				pad.CanCollide = false
				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait(0.125)
				pad.CFrame = padCFrame
				pad.CanCollide = true
			else
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			end
		end
	end
end

local function Regen()
    fireclickdetector(Admin.Regen.ClickDetector, 0)
end

local function GetPads()
    Regen()
    for _ , v in pairs(Admin.Pads:GetChildren()) do
        firetouchinterest(LocalPlayer.Character["Left Leg"], v.Head, 0)
        firetouchinterest(LocalPlayer.Character["Left Leg"], v.Head, 1)
        wait(0)
    end
end

local function FindPlayer(Player)
    for _, v in pairs(game.Players:GetPlayers()) do
        if Player:lower() == v.Name:lower():sub(1, string.len(Player)) then
            return v.Name
        end
    end
    return nil
end

local function BlacklistActions(Name)
    msg("Blacklisted player detected. Performing actions on "..Name)
    logn(Name.." joined and is blacklisted")
    if BlacklistRunning == true then logn("Blacklist is already running!"); return end
    BlacklistRunning = true
    chat("padban "..Name)
    Regen()
    while table.find(game.Players:GetPlayers(), game.Players[Name]) ~= nil do
        if BlacklistRunning == true then
            chat("respawn "..Name)
            wait(0)
            chat("unsize "..Name)
            wait(0)
            chat("thaw "..Name)
            wait(0)
            Regen()
            wait(0)
        else
            wait(1)
            break
        end
    end
end

local function ForcedAntiCrash(Name)
    msg("Known Crasher detected. Performing actions on "..Name)
    logn(Name.." joined and is a known crasher")
    FACRunning = true
    chat(prefix.."padban "..Name)
    Regen()
    while table.find(game.Players:GetPlayers(), game.Players[Name]) ~= nil do
        if FACRunning == true then
            chat("size all 10")
            wait(0)
            Regen()
            wait(0)
        else
            wait(1)
            break
        end
    end
end

local function PlayerConnection(plr)
    if UserJoinedRunning == true then msg(plr.Name.." has joined the game!") end
    if table.find(CrashList, plr.Name) ~= nil then
        ForcedAntiCrash(plr.Name)
    end
    if table.find(OrionCrasherV5Noobs, plr.Name) ~= nil then
        OrionRunning = true
        while OrionRunning == true do
            chat("respawn all "..tostring(math.random(1, 99)))
            wait(0)
        end
    else
        -- Or else...
    end
    if table.find(CrashList, plr.Name) ~= nil then
        msg("Known crasher found: "..plr.Name..", performing actions")
        wait(1)
        ForcedAntiCrash(plr.Name)
        wait(0)
        msg("Known crasher found: "..plr.Name..", performing actions")
    end
    plr.CharacterAdded:Connect(function(chr)
        if table.find(OnSpawnNames, plr.Name) ~= nil then
            Regen()
            msg(plr.Name.."'s character added. Performing actions")
            wait(2)
            chat(OnSpawnFuncs[table.find(OnSpawnNames, plr.Name)])
        end
    end)
    plr.Chatted:Connect(function(m)
        table.insert(ChatHistory, m)
        table.insert(UserHistory, plr.Name)
        local mm = m:split(" ")
        local cmd = mm[1]
        local t = mm[2]
        if m:lower() == "/c system" then
            if CSystemRunning == true then msg("Imagine using /c system, "..plr.Name..", LOL") end
        end
        local user = cmd
        user = user:lower()
        if user == "freeze" or user == ":freeze" then
            if plr ~= LocalPlayer or table.find(Whitelist, plr.Name) == nil then
                if t == LocalPlayer.Name or t == "others" or t == "all" or t == LocalPlayer.Name:lower():sub(string.len(t)):lower() then
                    if AntiFreeze == true then
                        chat("thaw me")
                    end
                end
            end
        end
        if user == "music" or user == ":music" then
            if LastMusic ~= nil then
                if AutoMusic == true then
                    chat("music "..idhider..LastMusic)
                    msg("DOGSploit: Music is locked")
                end
            end
        end
        if user == "jail" or user == ":jail" then
            if plr ~= LocalPlayer or table.find(Whitelist, plr.Name) == nil then
                if t == LocalPlayer.Name or t == "others" or t == "all" or t == LocalPlayer.Name:lower():sub(string.len(t)):lower() then
                    if AntiJail == true then
                        chat("unjail me")
                    end
                end
            end
        end
        if user == "punish" or user == ":punish" then
            if plr ~= LocalPlayer or table.find(Whitelist, plr.Name) == nil then
                if t == LocalPlayer.Name or t == "others" or t == "all" or t == LocalPlayer.Name:lower():sub(string.len(t)):lower() then
                    if AntiPunish == true then
                        chat("unpunish me")
                    end
                end
            end
        end
        if user == "blind" or user == ":blind" then
            if plr ~= LocalPlayer or table.find(Whitelist, plr.Name) == nil then
                if t == LocalPlayer.Name or t == "others" or t == "all" or t == LocalPlayer.Name:lower():sub(string.len(t)):lower() then
                    if AntiBlind == true then
                        chat("unblind me")
                    end
                end
            end
        end
        if user == "reset" or user == "refresh" or user == "reload" or user == "respawn" or user == "kill" or user == "size" or user == ":reset" or user == ":refresh" or user == ":reload" or user == ":respawn" or user == ":kill" or user == ":size" then
            if plr ~= LocalPlayer or table.find(Whitelist, plr.Name) == nil then
                if t == LocalPlayer.Name or t == "others" or t == "all" or t == LocalPlayer.Name:sub(string.len(t)) then
                    if AFKRunning == true then
                        chat("respawn me")
                        chat(".crash Because of "..plr.Name)
                    end
                end
            end
        end
        if table.find(Answers, cmd) then
            if table.find(Voted, plr.Name) == nil then
                local vote = Answers[table.find(Answers, cmd)]
                table.insert(Votes, vote)
                chat("pm "..plr.Name.." Thanks for voting for "..vote.."!")
                table.insert(Voted, plr.Name)
            else
                chat("pm "..plr.Name.." You already voted!")
            end
        end
        if plr == LocalPlayer or table.find(Whitelist, plr.Name) then
            if cmd == prefix.."rb" then
                if RB == true then RB = false; return end
                chat("gear me "..idhider.."18474459")
                wait(1)
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChildOfClass("Tool")) -- Hope that the person has no other gears lol
                wait(.5)
                RB = true
                while RB == true do
                    if i == 255 then i = 0 end
                    for i = 0, 1, 0.001 * speed do
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump1, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump2, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump3, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump4, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump5, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump6, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump7, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump8, Color3.fromHSV(i, 1, 1))
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump9, Color3.fromHSV(i, 1, 1))
                        wait()
                    end
                end
            end
            if cmd == prefix.."gb" then
                if GB == true then GB = false; return end
                chat("gear me "..idhider.."18474459")
                wait(1)
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChildOfClass("Tool")) -- Hope that the person has no other gears lol
                wait(.5)
                GB = true
                while GB == true do
                    if i == 255 then i = 0 end
                    for i = 0, 1, 0.001 * speed do
                        local col = Color3.fromHSV(i, 0, 1)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump1, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump2, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump3, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump4, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump5, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump6, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump7, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump8, col)
                        colorAPI.color(Game_Folder.Workspace.Obby.Jump9, col)
                        wait()
                    end
                end
            end
            if cmd == prefix.."rf" then
                if RF == true then RF = false; return end
                chat("gear me "..idhider.."18474459")
                wait(1)
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChildOfClass("Tool")) -- Hope that the person has no other gears lol
                wait(.5)
                RF = true
                while RF == true do
                    if i == 255 then i = 0 end
                    for i = 0, 1, 0.001 * speed do
                        colorAPI.color(Game_Folder.Workspace.Baseplate, Color3.fromHSV(i, 1, 1))
                        wait()
                    end
                end
            end
            if cmd == prefix.."rd" then
                if RD == true then RD = false; return end
                chat("gear me "..idhider.."18474459")
                wait(1)
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChildOfClass("Tool")) -- Hope that the person has no other gears lol
                wait(.5)
                RD = true
                while RD == true do
                    if i == 255 then i = 0 end
                    for i = 0, 1, 0.001 * speed do
                        for _, inst in pairs(Game_Folder.Workspace["Admin Dividers"]:GetChildren()) do
                            colorAPI.color(inst, Color3.fromHSV(i, 1, 1))
                        end
                        wait()
                    end
                end
            end
            if cmd == prefix.."ro" then
                if RO == true then RO = false; return end
                chat("gear me "..idhider.."18474459")
                wait(1)
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChildOfClass("Tool")) -- Hope that the person has no other gears lol
                wait(.5)
                RO = true
                while RO == true do
                    if i == 255 then i = 0 end
                    for i = 0, 1, 0.001 * speed do
                        for _, inst in pairs(Game_Folder.Workspace["Obby Box"]:GetChildren()) do
                            colorAPI.color(inst, Color3.fromHSV(i, 1, 1))
                        end
                        wait()
                    end
                end
            end
            if cmd == prefix.."rp" then
                if RP == true then RP = false; return end
                chat("gear me "..idhider.."18474459")
                wait(1)
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChildOfClass("Tool")) -- Hope that the person has no other gears lol
                wait(.5)
                RP = true
                while RP == true do
                    if i == 255 then i = 0 end
                    for i = 0, 1, 0.001 * speed do
                        for _, v in pairs(Admin.Pads:GetChildren()) do
                            colorAPI.color(v.Head, Color3.fromHSV(i, 1, 1))
                        end
                        wait()
                    end
                end
            end
            if cmd == prefix.."ra" then
                if RA == true then RA = false; return end
                chat("gear me "..idhider.."18474459")
                wait(1)
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChildOfClass("Tool")) -- Hope that the person has no other gears lol
                wait(.5)
                RA = true
                while RA == true do
                    if i == 255 then i = 0 end
                    for i = 0, 1, 0.001 * speed do
                        for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v.ClassName == "Part" then
                                colorAPI.color(v, Color3.fromHSV(i, 1, 1))
                            end
                        end
                        wait()
                    end
                end
            end
            if cmd == prefix.."rbspeed" then
                speed = tonumber(t)
            end
            -- HOP HOP HOP HOP HOP HOP HOP HOP HOP HOP HOP HOP HOP HOP HOP --
            if cmd == prefix.."up" then
                LocalPlayer.Character:Destroy()
            end
            if cmd == prefix.."title" then
                TitleRunning = true
                while TitleRunning == true do
                    msg(m:sub(7))
                    wait(1)
                end
            end
            if cmd == prefix.."prejoin" or cmd == prefix.."prej" then
                local TS = game:GetService("TeleportService")
                TS:TeleportToPrivateServer(game.PlaceId, game.PrivateServerId, plr.Name)
            end
            if cmd == prefix.."ac" then
                if FACRunning == true then logn("AC Already running!"); return; end
                FACRunning = true
                while FACRunning == true do
                    wait(0)
                    chat("removeclones")
                    wait(0)
                    chat("respawn all")
                    wait(0)
                    chat("thaw all")
                    wait(0)
                    chat("unsize all")
                    wait(0)
                    Regen()
                    wait(0.5)
                end
            end
            if cmd == prefix.."blender" then
                chat("jail "..t)
                chat("stun "..t)
                chat("name "..t.." sniff er")
                chat("fire "..t)
                chat("spin "..t)
            end
            if cmd == prefix.."uac" then
                if BFACRunning == true then logn("UAC Already running!"); return; end
                BFACRunning = true
                while BFACRunning == true do
                    wait(0)
                    chat("removeclones")
                    wait(0)
                    chat("respawn all")
                    wait(0)
                    Regen()
                    wait(0)
                end
            end
            if cmd == prefix.."unafk" or cmd == prefix.."stopafk" then
                if AFKRunning == false then logn("AFK Not running"); return; end
                AFKRunning = false
                chat("reset me")
            end
            if cmd == prefix.."paint" then
                chat("gear me "..idhider.."18474459")
                wait(1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool"))
                wait(0.5)
                if t == "randomi" then
                    for _, inst in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if inst.ClassName == "Part" then
                            colorAPI.color(inst, Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255)))
                        end
                    end
                elseif t == "random" then
                    local r = math.random(0, 255)
                    local g = math.random(0, 255)
                    local b = math.random(0, 255)
                    for _, inst in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if inst.ClassName == "Part" then
                            colorAPI.color(inst, Color3.new(r, g, b))
                        end
                    end
                elseif t:sub(1, 10) == "brickcolor" then
                    local brc = BrickColor.new(t:sub(11)).Color
                    for _, inst in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if inst.ClassName == "Part" then
                            colorAPI.color(inst, Color3.new(brc.r, brc.g, brc.b))
                        end
                    end
                else
                    local r = tonumber(t)
                    local g = tonumber(mm[3])
                    local b = tonumber(mm[4])
                    for _, inst in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if inst.ClassName == "Part" then
                            colorAPI.color(inst, Color3.new(r, g, b))
                        end
                    end
                end
            end
            if cmd == prefix.."hop" then
                 if #mm == 1 then
                    local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
                    local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
                    for _, s in pairs(ServersToTP.data) do
                        if s.playing ~= s.maxPlayers then
                            TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
                            say("Joining server with "..s.playing.." players...")
                            logn("Joining server")
                        end
                    end
                else
                    if mm[2] == "l" or mm[2] == "lowest" then
                        local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
                        local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
                        TPService:TeleportToPlaceInstance(game.PlaceId, ServersToTP.data[#ServersToTP.data].id)
                        msg("Joining server with "..ServersToTP.data[#ServersToTP.data].playing.." players...")
                    end
                end
            end
            if cmd == prefix.."antik" then
                if FindPlayer(t) ~= nil then
                    table.insert(OofIgnore, FindPlayer(t))
                    logn("Inserted "..FindPlayer(t).." to IGNORE")
                end
            end
            if cmd == prefix.."crash" then
                Crash(m)
            end
            if cmd == prefix.."unpaint" then
                chat("gear "..LocalPlayer.Name.." "..idhider.."18474459")
                wait(0.5)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
                wait(0.01)
                colorAPI.colorHouse({
                    wallsC = colorAPI.transformToColor3(BrickColor.new("Brick yellow")),
                    baseC = colorAPI.transformToColor3(BrickColor.new("Bright green")),
                    roofC = colorAPI.transformToColor3(BrickColor.new("Bright red")),
                    WANDDC = colorAPI.transformToColor3(BrickColor.new("Dark orange")),
                    stairsC = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
                    floorC = colorAPI.transformToColor3(BrickColor.new("Medium blue")),
                    rooftsC = colorAPI.transformToColor3(BrickColor.new("Reddish brown")),
                    chiC = colorAPI.transformToColor3(BrickColor.new("Sand red"))
                })
                wait(0)
                colorAPI.colorBuildingBricks({
                    DarkStoneGrey = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
                    DeepBlue = colorAPI.transformToColor3(BrickColor.new("Deep blue")),
                    NY = colorAPI.transformToColor3(BrickColor.new("New Yeller")),
                    IW = colorAPI.transformToColor3(BrickColor.new("Institutional white")),
                    LimeGreen = colorAPI.transformToColor3(BrickColor.new("Lime green")),
                    MSG = colorAPI.transformToColor3(BrickColor.new("Really black")),
                    RB = colorAPI.transformToColor3(BrickColor.new("Really red")),
                    TP = colorAPI.transformToColor3(BrickColor.new("Toothpaste"))
                })
                
                colorAPI.color(Game_Folder.Workspace["Baseplate"], colorAPI.transformToColor3(BrickColor.new("Shamrock")))
                colorAPI.colorObbyBox(colorAPI.transformToColor3(BrickColor.new("Teal")))
                colorAPI.colorObbyBricks(colorAPI.transformToColor3(BrickColor.new("Really red")))
                colorAPI.colorAdminDivs(colorAPI.transformToColor3(BrickColor.new("Dark stone grey")))
                colorAPI.colorPads(colorAPI.transformToColor3(BrickColor.new("Bright green")))
            end
            if cmd == prefix.."automusic" then
                if LastMusic == nil then logn("Play a music using .play first!") end
                if AutoMusic == false then AutoMusic = true; msg("Music locked: "..LastMusic) else AutoMusic = false; msg("Music unlocked") end
            end
            if cmd == prefix.."antigui" then
                if AntiGui == true then AntiGui = false else AntiGui = true end
            end
            if cmd == prefix.."antiblind" then
                if AntiBlind == true then AntiBlind = false else AntiBlind = true end
            end
            if cmd == prefix.."antifreeze" then
                if AntiFreeze == true then Antifreeze = false else AntiFreeze = true end
            end
            if cmd == prefix.."morepads" then
                if MorePadsRunning == true then MorePadsRunning = false else MorePadsRunning = true end
            end
            if cmd == prefix.."antijail" then
                if AntiJail == true then AntiJail = false else AntiJail = true end
            end
            if cmd == prefix.."showboxes" then
                if ShowBoxes == true then ShowBoxes = false; Selection.Parent = nil; Selected = nil; tag.Visible = false; else ShowBoxes = true end
            end
            if cmd == prefix.."antipunish" then
                if AntiPunish == true then AntiPunish = false else AntiPunish = true end
            end
            if cmd == prefix.."allpads" then
                if AllPadsRunning == true then AllPadsRunning = false else AllPadsRunning = true end
            end
            if cmd == prefix.."antidamage" then
                if AntiDamage == true then AntiDamage = false else AntiDamage = true end
            end
            if cmd == prefix.."userjoin" then
                if UserJoinedRunning == true then UserJoinedRunning = false else UserJoinedRunning = true end
            end
            if cmd == prefix.."csystem" then
                if CSystemRunning == true then CSystemRunning = false else CSystemRunning = true end
            end
            if cmd == prefix.."doganticrash" then
                if DogAnticrash == true then DogAnticrash = false; msg("Dog Crash prevention is now off"); print(DogAnticrash) else DogAnticrash = true; msg("Dog Crash prevention is now on"); print(DogAnticrash) end
            end
            if cmd == prefix.."textcol" then
                if ShowBoxes == true then
                    scol = Color3.new(tonumber(t), tonumber(mm[3]), tonumber(mm[4]))
                end
            end
            if cmd == prefix.."thickness" then
                if ShowBoxes == true then
                    th = tonumber(t)
                end
            end
            if cmd == prefix.."boxcol" then
                if ShowBoxes == true then
                    bcol = Color3.new(tonumber(t), tonumber(mm[3]), tonumber(mm[4]))
                end
            end
            if cmd == prefix.."play" then
                local _a = false
                for _, v in pairs(MusicList) do
                    if v:sub(1, string.len(t)):lower() == t:lower() then
                        chat("music "..MusicIds[table.find(MusicList, v)])
                        msg("Playing: "..v)
                        LastMusic = MusicIds[table.find(MusicList, v)]
                        _a = true
                    end
                end
                if _a == false then
                    LastMusic = t
                    chat("music "..t)
                    msg("Playing: "..t)
                end
            end
            if cmd == prefix.."bacon" then
                chat("char "..t.." "..idhider.."82323732")
            end
            if cmd == prefix.."maxpads" then
                MaxPads = tonumber(t)
                logn("Changed VAR MAXPADS = T")
            end
            if cmd == prefix.."gdrop" then
                for i = 1, 75 do
                    chat("gear "..plr.Name.." "..idhider..t)
                    local item = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                    wait(0)
                    PlrChar.Humanoid:EquipTool(item)
                    wait(0)
                    item.Parent = workspace
                    wait()
                end
            end
            if cmd == prefix.."unspawn" then
                if #mm == 1 then
                    OnSpawnNames = {}
                    OnSpawnFuncs = {}
                else
                    table.remove(OnSpawnNames, table.find(OnSpawnNames, t))
                    table.remove(OnSpawnFuncs, table.find(OnSpawnNames, t))
                end
            end
            if cmd == prefix.."padban" then
                local player = FindPlayer(t)
                if player ~= nil then
                    table.insert(PadBanned, player)
                    chat("respawn "..player)
                    msg(player..", you have been pad-banned")
                    logn("Player has been padbanned")
                    Regen()
                else
                    Log("Player not found")
                end
            end
            if cmd == prefix.."lag" then
                logn("Lag running")
                for i = 1, 20 do
                    chat("gear "..LocalPlayer.Name.." "..idhider.."253519495")
                end
                LocalPlayer.Backpack.ChildAdded:Wait()
                wait(0)
                for _, item in pairs(LocalPlayer.Backpack:GetDescendants()) do
                    PlrChar.Humanoid:EquipTool(item)
                    item:Activate()
                    wait(0.5)
                    item.Parent = nil
                    wait()
                end
            end
            if cmd == prefix.."unpadban" then
                local player = FindPlayer(t)
                if player ~= nil then
                    table.remove(PadBanned, table.find(PadBanned, player))
                    msg(player..", you have been un-pad-banned")
                    logn("Player has been unpadbanned")
                else
                    logn("Player not found")
                end
            end
            if cmd == prefix.."anticrash" then
                if AntiCrash == true then AntiCrash = false; msg("The crash prevention is now off, dogs") else AntiCrash = true; msg("The crash prevention is now on, dogs") end
                while AntiCrash == true do
                    wait(0.00005)
                    for i, player in pairs(game:GetService("Players"):GetPlayers()) do
                        if player.Character then
                            if player.Character:FindFirstChild("VampireVanquisher") then
                                local plrname = player.Name
                                chat("ungear "..plrname)
                                chat("reload "..plrname)
                                chat("LOL "..plrname.." Tried to crash the server")
                            end
                            wait(0.28)
                        end
                        if player.Character:FindFirstChild("HumanoidRootPart") then
                            if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
                                local plrname = player.Name
                                chat("reset "..plrname)
                                chat("unclone "..plrname)
                                chat("h LOL"..plrname.." Tried to crash the server")
                            end
                            wait(0.28)
                        end
                    end
                end
            end
            if cmd == prefix.."discofog" then
                DiscoFog = true
                while DiscoFog == true do
                    chat("fogend")
                    wait(0)
                    chat("fogcolor "..math.random(0, 255)..","..math.random(0, 255)..","..math.random(0, 255).." LOL LOL LOL LOL")
                    wait(0.000001)
                end
            end
            if cmd == prefix.."theme" then
                if t == "ice" then
                    chat("fix")
                    chat("fogend 500")
                    chat("fogcolor 0 255 255")
                    chat("time 17.4")
                    say("Server Theme: Ice")
                end
                if t == "sunset" then
                    chat("fix")
                    chat("colorshifttop 600 400 0")
                    chat("colorshiftbottom 600 400 0")
                    chat("time 17.4")
                    say("Server Theme: Sunset")
                end
                if t == "fire" then
                    chat("fix")
                    chat("fogend 650")
                    chat("fogcolor 255 0 0")
                    chat("time 17:30")
                    chat("colorshifttop 300 0 0")
                    chat("colorshiftbottom 350 0 0")
                    chat(".play fire")
                    say("Server Theme: Fire")
                end
                if t == "space" then
                    chat("fix")
                    chat("fogend 250")
                    chat("fogcolor 0 0 0")
                    chat("time 0")
                    chat("outdoorambient 45 45 45")
                    chat("brightness 0")
                    chat("nograv all")
                    say("Server Theme: Space")
                end
                if t == "impasta" then
                    chat("fix")
                    chat("fogend 500")
                    chat("fogcolor 200 0 0")
                    chat("time 0")
                    chat("colorshifttop 1000 0 0")
                    chat("colorshiftbottom 1000 0 0")
                    chat("outdoorambient 0 0 0")
                    chat("time 0")
                    chat(".play amon")
                    say("Server Theme: Impasta")
                end
                if t == "noob" then
                    chat("fix")
                    chat("fogend 500")
                    chat("fogcolor 255 255 0")
                    chat("time 17.4")
                    chat("colorshifttop 0 0 255")
                    chat("colorshiftbottom 0 0 255")
                    chat("outdoorambient 100 100 100")
                    chat(".play oofrick")
                    chat("noob all")
                    say("Server Theme: Noob")
                end
                if t == "fart" then
                    chat("fix")
                    chat("fogend 500")
                    chat("fogcolor 255 0 255")
                    chat("time .")
                    chat("colorshifttop 255 0 255")
                    chat("colorshiftbottom 350 0 530")
                    chat("outdoorambient 100 100 100")
                    chat("paint all pink")
                    say("Server Theme: Fart")
                end
                if t == "gfart" then
                    chat("fix")
                    chat("fogend 500")
                    chat("fogcolor 0 255 0")
                    chat("time .")
                    chat("colorshifttop 0 255 0")
                    chat("colorshiftbottom 0 350 0")
                    chat("outdoorambient 100 100 100")
                    chat("paint all green")
                    say("Server Theme: Green Fart")
                end
                if t == "szcvak" then
                    chat("fix")
                    chat("fogend 500")
                    chat("fogcolor 255 255 255")
                    chat("time 14")
                    chat("colorshifttop 350 0 0")
                    chat("colorshiftbottom 255 0 0")
                    say("Server Theme: SZCVAK (Script owner)")
                end
            end
            if cmd == prefix.."moveregen" then
                logn("Moving regen pad")
                local reg = Admin.Regen
                movePart(reg)
            end
            if cmd == prefix.."movepads" then
                logn("Moving pads")
                local Oldpos = PlrChar.HumanoidRootPart.CFrame
                for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")) do
                    movePart(v.Head)
                    wait(.2)
                end
                logn("Admin pads done moving")
                PlrChar.HumanoidRootPart.CFrame = Oldpos
            end
            -- STOP STOP STOP STOP STOP STOP STOP STOP STOP STOP STOP STOP STOP STOP STOP STOP --
            if cmd == prefix.."stop" then
                if string.len(m) == 5 then
                    SpamRunning = false
                    RainbowRunning = false
                    NokRunning = false
                    BlacklistRunning = false
                    PadChecking = false
                    LocalAntiKillRunning = false
                    OrionRunning = false
                    logn("Stopped all tasks")
                end
                if t == "or" and OrionRunning == true then OrionRunning = false; logn("Stopping task ORION") end
                if t == "rpaint" and RPaintRunning == true then RPaintRunning = false; logn("Stopping task RPAINT") end
                if t == "spam" and SpamRunning == true then SpamRunning = false logn("Stopping task SPAM") end
                if t == "rainbow" and RainbowRunning == true then RainbowRunning = false logn("Stopping task RAINBOW") end
                if t == "nok" and NokRunning == true then NokRunning = false logn("Stopping task NOK") end
                if t == "bl" and BlacklistRunning == true then BlacklistRunning = false logn("Stopping task BLACKLIST") end
                if t == "padc" and PadChecking == true then PadChecking = false logn("Stopping task PADCHECKING") end
                if t == "antik" and LocalAntiKillRunning == true then LocalAntiKillRunning = false logn("Stopping task ANTIK") end
                if t == "discofog" and DiscoFog == true then DiscoFog = false logn("Stopping task DISCOFOG") end
                if t == "ac" and FACRunning == true then FACRunning = false logn("Stopping task AC") end
                if t == "uac" and TitleRunning == true then BFACRunning = false logn("Stopping task UAC") end
                if t == "title" and BFACRunning == true then TitleRunning = false logn("Stopping task TITLE") end
            end
            -- ONSPAWN ONSPAWN ONSPAWN ONSPAWN ONSPAWN ONSPAWN ONSPAWN ONSPAWN ONSPAWN ONSPAWN ONSPAWN --
            if cmd == prefix.."onspawn" then
                if FindPlayer(t) ~= nil then table.insert(OnSpawnNames, FindPlayer(t)) else logn("Player not found"); return end
                table.insert(OnSpawnFuncs, m:sub(string.len(".onspawn "..t.." ")+1))
                msg("Function set")
                logn("Set on spawn function: "..m:sub(string.len(".onspawn "..t.." ")+1))
            end
            -- REGEN REGEN REGEN REGEN REGEN REGEN REGEN REGEN REGEN REGEN REGEN REGEN REGEN REGEN --
            if cmd == prefix.."regen" or cmd == prefix.."reg" then
                Regen()
                logn("Resetted admin pads")
            end
            -----------------------------------------------------------------------------------------
            if cmd == prefix.."sregen" or cmd == prefix.."sreg" then
                Regen()
            end
            -- REJOIN REJOIN REJOIN REJOIN REJOIN REJOIN REJOIN REJOIN REJOIN REJOIN REJOIN REJOIN --
            if cmd == prefix.."rejoin" or cmd == prefix.."rej" then
                Rejoin()
                logn("Rejoining")
            end
            -- WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL WL --
            if cmd == prefix.."whitelist" or cmd == prefix.."wl" then
                if FindPlayer(t) ~= nil then
                    table.insert(Whitelist, FindPlayer(t))
                    logn("Whitelisted "..FindPlayer(t))
                else
                    logn("Player not found")
                end
            end
            if cmd == prefix.."afk" then
                msg("AFK is ON. Do not mess with "..LocalPlayer.Name.."'s character or CRASH")
                chat("name "..LocalPlayer.Name.." AFK (Do not mess with my char or CRASH")
                AFKRunning = true
            end
            if cmd == prefix.."cleargui" or cmd == prefix.."clrg" then
                for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
                    if v.Name == "ScreenGui" then
                        v:destroy()
                    end
                end
            end
            --------------------------------------------------------------------------------------
            if cmd == prefix.."unwhitelist" or cmd == prefix.."unwl" then
                if FindPlayer(t) ~= nil then
                    table.remove(Whitelist, table.find(Whitelist, FindPlayer(t)))
                    logn("Unwhitelisted "..FindPlayer(t))
                else
                    logn("Player not found")
                end
            end
            -- BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL BL --
            if cmd == prefix.."blacklist" or cmd == prefix.."bl" then
                if FindPlayer(t) ~= nil then
                    table.insert(Blacklist, FindPlayer(t))
                    logn("Blacklisted "..FindPlayer(t))
                    BlacklistActions(FindPlayer(t))
                else
                    logn("Player not found")
                end
            end
            -- PERM PERM PERM PERM PERM PERM PERM PERM PERM PERM PERM PERM PERM PERM PERM PERM --
            if cmd == prefix.."perm" then
                PadChecking = true
                TpPad()
                logn("Activated perm")
            end
            if cmd == prefix.."chatlogs" then
                GUIChat()
            end
            if cmd == prefix.."bcrash" then
                BCrash(m)
            end
            -- RAINBOW RAINBOW RAINBOW RAINBOW RAINBOW RAINBOW RAINBOW RAINBOW RAINBOW RAINBOW --
            if cmd == prefix.."rainbow" then
                RainbowRunning = true
                while RainbowRunning == true do
                    chat("colorshifttop "..math.random(0, 10000)..","..math.random(0, 10000)..","..math.random(0, 10000).." LOL LOL LOL LOL")
                    chat("colorshiftbottom "..math.random(0, 10000)..","..math.random(0, 10000)..","..math.random(0, 10000).." LOL LOL LOL LOL")
                    chat("ambient "..math.random(0, 10000)..","..math.random(0, 10000)..","..math.random(0, 10000).." LOL LOL LOL LOL")
                    chat("outdoorambient "..math.random(0, 10000)..","..math.random(0, 10000)..","..math.random(0, 10000).." LOL LOL LOL LOL")
                    wait(0)
                end
                logn("Ran rainbow")
            end
            -- TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB TOB --
            if cmd == prefix.."tobutton" then
                logn("Teleported to button")
                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                cf.CFrame = Admin.Regen.CFrame
            end
            -- TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH TOH --
            if cmd == prefix.."tohouse" then
                logn("Teleported to house")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
            end
            -- SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM --
            if cmd == prefix.."spam" then
                if SpamRunning == true then logn("Spam already running!") end
                SpamRunning = true
                local tospam = m:sub(7)
                logn("Spamming: "..tospam)
                for i = 1, 999999999999999 do
                    if SpamRunning == true then
                        if SafeSpam == true then chat(tospam.." "..tostring(math.random(0, 999))) else chat(tospam) end
                        wait(0)
                    else
                        wait(0)
                        break
                    end
                end
            end
            -- NOK NOK NOK NOK NOK NOK NOK NOK NOK NOK NOK NOK NOK NOK NOK NOK NOK --
            if cmd == prefix.."nok" then
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
                logn("Removed touch interest from obby bricks")
            end
            if cmd == prefix.."pf" or cmd == prefix.."prefix" then
                prefix = t
            end
            -- SM SM SM SM SM SM SM SM SM SM SM SM SM SM SM SM SM SM SM SM SM --
            if cmd == prefix.."sm" or cmd == prefix.."servermessage" then
                if cmd == prefix.."sm" then
                    local g = m:sub(4)
                    msg("Server Message:"..g)
                end
                if cmd == prefix.."servermessage" then
                    local g = m:sub(15)
                    msg("Server Message:"..g)
                end
                logn("Shown a server message")
            end
            -- HH HH HH HH HH HH HH HH HH H HH HH HH HH HH HH HH HH HH HH HH --
            if cmd == prefix.."hh" or cmd == prefix.."hiddenhint" then
                if cmd == prefix.."hh" then
                    local g = m:sub(4)
                    msg(g)
                end
                if cmd == prefix.."hiddenhint" then
                    local g = m:sub(12)
                    msg(g)
                end
                logn("Shown a hidden hint")
            end
            if cmd == prefix.."safespam" then
                if SafeSpam == false then SafeSpam = true else SafeSpam = false end
            end
            -- BOK BOK BOK BOK BOK BOK BOK BOK BOK BOK BOK BOK BOK BOK BOK BOK BOK--
            if cmd == prefix.."bok" then
                wait(.5)
                for i = 1, 100 do chat("dog "..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t..","..t) end
                wait(3)
                chat("kill "..t)
            end
            if cmd == prefix.."poll" then
                if PollInUse == false then
                    local question = m:sub(string.len(".poll "), string.len(m))
                    local viableAnswers = m:split(",")[#m:split(",")]
                    Answers = viableAnswers:split(" ")
                    local waittime = m:split(" ")[#m:split(" ")]
                    question = m:split(",")[1]
                    question = question:sub(6)
                    PollInUse = true
                    local FI = " | Say "
                    table.remove(Answers, #Answers)
                    for _, ans in pairs(Answers) do
                        if ans ~= Answers[#Answers] then FI = FI..ans.." or " else FI = FI..ans end
                    end
                    for i = 0, tonumber(waittime) do
                        msg("POLL: "..question..FI..". Results shown in "..tostring(tonumber(waittime)-i))
                        wait(1)
                    end
                    FinalString = "Poll results: "
                    for i, ans in pairs(Answers) do
                        FinalString = ans..": "..tostring(tablecount(ans, Votes)).." "
                    end
                    msg(FinalString)
                    Votes = {}
                    Answers = {}
                    Voted = {}
                    PollInUse = false
                else
                    logn("Error: Poll in use")
                end
            end
            -- LOCAK LOCAK LOCAK LOCAK LOCAK LOCAK LOCAK LOCAK LOCAK LOCAK LOCAK LOCAK --
            if cmd == prefix.."lak" then
                if LocalAntiKill == false then LocalAntiKill = true; logn("LocalAntiKill is now on") else LocalAntiKill = false; logn("LocalAntiKill is now off") end
            end
            -- GEAR GEAR GEAR GEAR GEAR GEAR GEAR GEAR GEAR GEAR GEAR GEAR --
            if cmd == prefix.."gear" then
                if t == "me" then t = plr.Name end
                if t == "all" then
                    local gearc = mm[3]
                    if gearc == "random" then
                        local market = game:GetService("MarketplaceService")
                        local gear = nil
                        while wait() do
                            local id = math.random(10000,999999)
                            local product_info = market:GetProductInfo(id) 
                            if product_info then
                                if product_info.AssetTypeId == 19 then
                                    gear = product_info.Id
                                    break
                                end
                            end
                        end
                        for _, player in pairs(game.Players:GetPlayers()) do
                            chat("gear "..player.Name.." "..idhider..gear)
                        end
                    end
                    if gearc == "ranged" then
                        for _, player in pairs(game.Players:GetPlayers()) do
                            chat("gear "..player.Name.." "..idhider.."130113146")
                            chat("gear "..player.Name.." "..idhider.."79446473")
                            chat("gear "..player.Name.." "..idhider.."125013830")
                            chat("gear "..player.Name.." "..idhider.."26017478")
                            chat("gear "..player.Name.." "..idhider.."78005009")
                            chat("gear "..player.Name.." "..idhider.."82357123")
                        end
                    end
                    if gearc == nil then
                        for _, player in pairs(game.Players:GetPlayers()) do
                            chat("gear "..player.Name.." "..idhider.."130113146")
                            chat("gear "..player.Name.." "..idhider.."115377964")
                            chat("gear "..player.Name.." "..idhider.."18474459")
                            chat("gear "..player.Name.." "..idhider.."79446473")
                            chat("gear "..player.Name.." "..idhider.."82357101")
                            logn("Geared "..player.Name.." basic tools")
                        end
                    end
                elseif t == "others" then
                    local gearc = mm[3]
                    if gearc == "random" then
                        local market = game:GetService("MarketplaceService")
                        local gear = nil
                        while wait() do
                            local id = math.random(10000,999999)
                            local product_info = market:GetProductInfo(id) 
                            if product_info then
                                if product_info.AssetTypeId == 19 then
                                    gear = product_info.Id
                                    break
                                end
                            end
                        end
                        for _, player in pairs(game.Players:GetPlayers()) do
                            if player.Name ~= plr.Name then
                                chat("gear "..player.Name.." "..idhider..gear)
                            end
                        end
                    end
                    if gearc == "ranged" then
                        for _, player in pairs(game.Players:GetPlayers()) do
                            if player.Name ~= plr.Name then
                                chat("gear "..player.Name.." "..idhider.."130113146")
                                chat("gear "..player.Name.." "..idhider.."79446473")
                                chat("gear "..player.Name.." "..idhider.."125013830")
                                chat("gear "..player.Name.." "..idhider.."26017478")
                                chat("gear "..player.Name.." "..idhider.."78005009")
                                chat("gear "..player.Name.." "..idhider.."82357123")
                            end
                        end
                    end
                    if gearc == nil then
                        for _, player in pairs(game.Players:GetPlayers()) do
                            if player.Name ~= plr.Name then
                                chat("gear "..player.Name.." "..idhider.."130113146")
                                chat("gear "..player.Name.." "..idhider.."115377964")
                                chat("gear "..player.Name.." "..idhider.."18474459")
                                chat("gear "..player.Name.." "..idhider.."79446473")
                                chat("gear "..player.Name.." "..idhider.."82357101")
                                logn("Geared "..player.Name.." basic tools")
                            end
                        end
                    end
                else
                    local tar = FindPlayer(t)
                    if tar ~= nil then
                        local gearc = mm[3]
                        if gearc == "random" then
                            local market = game:GetService("MarketplaceService")
                            local gear = nil
                            while wait() do
                                local id = math.random(10000,999999)
                                local product_info = market:GetProductInfo(id) 
                                if product_info then
                                    if product_info.AssetTypeId == 19 then
                                        gear = id
                                        break
                                    end
                                end
                            end
                            chat("gear "..tar.." "..idhider..gear)
                        end
                        if gearc == "ranged" then
                            chat("gear "..tar.." "..idhider.."130113146")
                            chat("gear "..tar.." "..idhider.."79446473")
                            chat("gear "..tar.." "..idhider.."125013830")
                            chat("gear "..tar.." "..idhider.."26017478")
                            chat("gear "..tar.." "..idhider.."78005009")
                            chat("gear "..tar.." "..idhider.."82357123")
                        end
                        if gearc == nil then
                            chat("gear "..tar.." "..idhider.."130113146")
                            chat("gear "..tar.." "..idhider.."115377964")
                            chat("gear "..tar.." "..idhider.."18474459")
                            chat("gear "..tar.." "..idhider.."79446473")
                            chat("gear "..tar.." "..idhider.."82357101")
                            logn("Geared "..tar.." basic tools")
                        end
                    else
                        logn("Couldn't gear: Player not found ("..tar..")")
                    end
                end
            end
        end
    end)
end

wait(0)

for _, player in pairs(game.Players:GetPlayers()) do
    PlayerConnection(player)
end
game.Players.PlayerAdded:Connect(PlayerConnection)

Spawn(function()
    while #OofIgnore ~= 0 do
        for _, player in pairs(game.Players:GetPlayers()) do
            if table.find(OofIgnore, player.Name) then
                if player.Character.Humanoid.Health == 0 then
                    for i = 1, 3 do
                        chat("reset "..player.Name)
                        chat("refresh "..player.Name)
                    end
                end
            end
        end
        wait(0.0000001)
    end
    while true do
        if LocalPlayer.Character.Humanoid.Health == 0 and AFKRunning == true then
            chat("respawn me")
            chat(".crash because of "..plr.Name)
        end
        if LocalPlayer.Character.Humanoid.Health == 0 and LocalAntiKillRunning == true then
            for i = 1, 3 do
                chat("reset me")
                chat("refresh "..LocalPlayer.Name)
            end
        end
        wait(0.0000001)
    end
end)

Spawn(function()
    while AntiDamage == true do
        if game.Players.LocalPlayer.Character.Humanoid.Health < 100 then
            chat("health me 100")
        end
    wait(0)
    end
end)

function Start()
    -- Add things to execute on start (Settings are executed auto)
    chat(".perm")
    chat(".lak")
    chat(".nok")
    -- Add other functions below
end

game.Players.ChildRemoved:Connect(function(plr)
    if table.find(CrashList, plr.Name) ~= nil then
        chat(".stop ac")
        chat(".sto or")
    end
end)

Spawn(function()
    while true do
        if AFKRunning == true then
            chat(".tohouse")
            wait(60)
            chat(".tobutton")
            wait(60)
        end
        wait(0)
    end
end)

Spawn(function()
	while true do
		for i, player in pairs(PadBanned) do
			for i, pad in pairs(Pads:GetDescendants()) do
				if pad.Name == player.."'s admin" then
					chat("respawn "..player)
					msg(player..", You are banned from pads")
                    Regen()
				end
			end
		end
		for i, v in pairs(game.Players:GetChildren()) do
			local times = 0
			for i, pad in pairs(Pads:GetDescendants()) do
				if pad.Name == v.Name.."'s admin" then
					times = times + 1
				end
			end
            if v.Name ~= LocalPlayer.Name then
                if times >= MaxPads and v ~= LocalPlayer or times >= MaxPads and v.Name ~= LocalPlayer.Name or times >= 2 and table.find(Whitelist, v.Name) == nil then
                   if MorePadsRunning == true then
                        msg("Pads are resetted because "..v.Name.." tried to take them all")
                        chat("respawn "..v.Name)
                        Regen()
                    end
                end
            end
		end
		wait(0.25)
	end
end)

Spawn(function()
    local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
    if AntiGui == true then
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
    end
end)
end)

RunService.RenderStepped:Connect(function()
    if DogAnticrash == true then
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr.Character:FindFirstChild("VampireVanquisher") then
                msg(plr.Name.." Tried to crash the server LOL")
                chat("ungear "..plr.Name)
                chat("unsize "..plr.Name)
                wait()
                for i = 1, 50 do chat("pm "..plr.Name.." 😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏") end
            end
            if plr.Character:FindFirstChild("HumanoidRootPart") then
                if plr.Character.HumanoidRootPart.Size.Y ~= 1 and DisabledSize == true then
                    msg("Sizing is disabled in this server")
                    chat("unsize "..plr.Name)
                end
                if plr.Character.HumanoidRootPart.Size.Y <= 0.3 then
                    msg(plr.Name.." Tried to crash the server LOL")
                    chat("unsize "..plr.Name)
                    chat("removeclones "..plr.Name)
                    wait()
                    for i = 1, 50 do chat("pm "..plr.Name.." 😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏😁😀😄😅😐😑😶🙄😏") end
                end
            end
        end
        wait(0)
    end
end)

RunService.RenderStepped:Connect(function()
	if AllPadsRunning == true then
        local checkadmin = false
		for _, i in pairs(Admin.Pads:GetChildren()) do
			if i.Name ~= LocalPlayer.Name.."'s Admin" then
				checkadmin = true
			end
		end
		if checkadmin == true then
			GetPads()
		end
	end
end)

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local connection

local function CheckMouse()
    Selection.Color3 = bcol
    Selection.SurfaceColor3 = bcol
    Selection.LineThickness = th
    tag.TextColor3 = scol
    back.TextColor3 = scol
    if ShowBoxes == true then
        tag.Position = UDim2.new(0, mouse.X + 40, 0, mouse.Y + 30)
        tag.Visible = false
        back.Position = UDim2.new(0, mouse.X + 40, 0, mouse.Y + 50)
        back.Visible = false
        local target = mouse.Target
        if target and target.Parent then
            if target.Parent:FindFirstChild("HumanoidRootPart") then
                if Selection.Adornee ~= target.Parent then
                    Selected = target.Parent
                    Selection.Parent = target.Parent
                    Selection.Adornee = target.Parent
                end
                connection = target.Parent:FindFirstChild("HumanoidRootPart").Changed:Connect(function(property)
                    if property == "Position" or property == "Orientation" then
                        CheckMouse()
                        connection:Disconnect()
                    end
                end)
                tag.Text = target.Parent.Name
                tag.Visible = true
                local f = ""
                for _, v in pairs(game.Players[target.Parent.Name].Backpack:GetChildren()) do
                    f = f..v.Name.." "
                end
                back.Text = f
                back.Visible = true
            else
                if Selection.Adornee ~= nil then
                    Selected = nil
                    Selection.Parent = nil
                    Selection.Adornee = nil
                    tag.Text = ""
                    back.Text = ""
                end
            end
        end
    end
end
RunService.RenderStepped:Connect(CheckMouse)

function Start()
    -- Things you want to execute at start
    chat(".nok"); logn("NOK ON")
    chat(".perm"); logn("PERM ON")
    chat(".doganticrash"); logn("DOGANTICRASH ON")
    chat(".antifreeze"); logn("ANTIFREEZE ON")
    chat(".antijail"); logn("ANTIJAIL ON")
    chat(".antipunish"); logn("ANTIPUNISH ON")
    chat(".antiblind"); logn("ANTIBLIND ON")
    chat(".morepads"); logn("MOREPADS ON")
end

Start()

logn("Commands loaded")