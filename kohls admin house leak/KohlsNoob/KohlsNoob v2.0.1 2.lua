-- KohlsNoob BETA v2.0.1
-- say "cmds" for the list of current commands
-- i'd really love your feedback and suggestions! also dont expect too much yet the script's still in its early development
-- Credits to gamingkhoaito#1014 and haroldjd2017ipad#4295 for this amazing script :D
-- anyways enjoy
-- this script was KillerSploit and changed to KohlsNoob
--[[ 
  _  __   ____    _    _   _         _____     _   _    ____     ____    ____  
 | |/ /  / __ \  | |  | | | |       / ____|   | \ | |  / __ \   / __ \  |  _ \ 
 | ' /  | |  | | | |__| | | |      | (___     |  \| | | |  | | | |  | | | |_) |
 |  <   | |  | | |  __  | | |       \___ \    | . ` | | |  | | | |  | | |  _ < 
 | . \  | |__| | | |  | | | |____   ____) |   | |\  | | |__| | | |__| | | |_) |
 |_|\_\  \____/  |_|  |_| |______| |_____/    |_| \_|  \____/   \____/  |____/ 
]]

-- A GUI THAT IS MADE WITHOUT USING GUI TO LUA PLUG-IN

local Main = Instance.new("ScreenGui",game.CoreGui)
Main.Name = "KohlsNoob v2"

function Corner(parent)
	local a = Instance.new("UICorner",parent)
	a.CornerRadius = UDim.new(0,5)
end

function Frame(parent,scrolling,color,size,position,transparency,addCorner,zindex,visible,e)
	local a
	if scrolling then
		a = Instance.new("ScrollingFrame",parent)
		a.ScrollBarThickness = 7
		if e then
			a.CanvasSize = e
		end
	else
		a = Instance.new("Frame",parent)
	end
	a.BackgroundColor3 = color or Color3.fromRGB(0,0,0)
	a.Size = size
	a.Position = position
	a.BackgroundTransparency = transparency
	a.ZIndex = zindex
	a.Visible = visible
	a.BorderSizePixel = 0
	if addCorner then
		Corner(a)
	end
	return a
end

function Text(parent,button,text,color,textColor,size,position,transparency,addCorner,font,textSize,textScaled,zindex,visible,textbox)
	local a
	if button then
		a = Instance.new("TextButton",parent)
	elseif textbox then
		a = Instance.new("TextBox",parent)
	else
		a = Instance.new("TextLabel",parent)
	end
	a.Text = text
	a.BackgroundColor3 = color
	a.TextColor3 = textColor
	a.Size = size
	a.Position = position
	a.BackgroundTransparency = transparency
	a.Font = font or Enum.Font.SourceSans
	a.TextSize = textSize
	a.ZIndex = zindex
	a.Visible = visible
	a.BorderSizePixel = 0
	if textScaled then
		a.TextScaled = true
	end
	if addCorner then
		Corner(a)
	end
	return a
end
-- E moment

local Base = Frame(Main,false,Color3.new(0.129412, 0.129412, 0.129412),UDim2.new(0, 332, 0, 184),UDim2.new(0.408951014, 0, 0.395229459, 0),0,true,1,1,true)

local Line = Frame(Base,false,Color3.new(0, 0, 0),UDim2.new(0, 324, 0, 1),UDim2.new(0.0131587004, 0, -0.00499999989, 0),0,false,2,true)	
local Heading = Frame(Base,false,Color3.new(0.196078, 0.196078, 0.196078),UDim2.new(0, 332, 0, 25),UDim2.new(-0.000996661722, 0, -0.137999997, 0),0,true,5,true)	
local border = Frame(Base,false,Color3.new(0.105882, 0.105882, 0.105882),UDim2.new(0, 2, 0, 183),UDim2.new(0.292355001, 0, 0.00656244671, 0),0,false,1,true)	
local Credits = Text(Base,true,"Credits",Color3.new(0.258824, 0.258824, 0.258824),Color3.new(1, 1, 1),UDim2.new(0, 96, 0, 27),UDim2.new(4.18237905e-05, 0, 0.618532777, 0),1,true,Enum.Font.Cartoon,15,false,2,true)	
local Credits_ = Frame(Base,true,Color3.new(1, 1, 1),UDim2.new(0, 233, 0, 183),UDim2.new(0.29864198, 0, 0.00656244671, 0),1,false,1,false) Credits_.CanvasSize = UDim2.new(0,0,0,0)
--local Customs = Text(Base,true,"Customs",Color3.new(0.258824, 0.258824, 0.258824),Color3.new(1, 1, 1),UDim2.new(0, 96, 0, 27),UDim2.new(4.18237905e-05, 0, 0.618532777, 0),1,true,Enum.Font.Cartoon,15,false,2,true)	
local Settings = Text(Base,true,"Settings",Color3.new(0.258824, 0.258824, 0.258824),Color3.new(1, 1, 1),UDim2.new(0, 96, 0, 27),UDim2.new(4.18237905e-05, 0, 0.465540349, 0),1,true,Enum.Font.Cartoon,15,false,2,true)	
local ChatLogsB = Text(Base,true,"Chat Logs",Color3.new(0.258824, 0.258824, 0.258824),Color3.new(1, 1, 1),UDim2.new(0, 98, 0, 27),UDim2.new(0, 0, 0.312547773, 0),1,true,Enum.Font.Cartoon,15,false,2,true)	
local Toggles = Text(Base,true,"Toggles",Color3.new(0.258824, 0.258824, 0.258824),Color3.new(1, 1, 1),UDim2.new(0, 96, 0, 27),UDim2.new(4.18237905e-05, 0, 0.159555018, 0),1,true,Enum.Font.Cartoon,15,false,2,true)	
local Command = Text(Base,true,"Command",Color3.new(0.258824, 0.258824, 0.258824),Color3.new(1, 1, 1),UDim2.new(0, 97, 0, 27),UDim2.new(9.46780256e-06, 0, 0.00656244019, 0),1,true,Enum.Font.Cartoon,15,false,2,true)	
local Command_ = Frame(Base,true,Color3.new(1, 1, 1),UDim2.new(0, 233, 0, 183),UDim2.new(0.29864198, 0, 0.00656244671, 0),1,false,1,true,UDim2.new(0,0,0,0))	
local Toggles_ = Frame(Base,true,Color3.new(1, 1, 1),UDim2.new(0, 216, 0, 175),UDim2.new(0.347239286, 0, 0.048913043, 0),1,false,1,false) local l1 = Instance.new("UIListLayout",Toggles_) l1.Padding = UDim.new(0,10) Toggles_.CanvasSize = UDim2.new(0,0,0,0) Toggles_.AutomaticCanvasSize = Enum.AutomaticSize.Y
local ChatLogs_ = Frame(Base,true,Color3.new(1, 1, 1),UDim2.new(0, 207, 0, 166),UDim2.new(0.347239286, 0, 0.044229921, 0),1,false,1,false) ChatLogs_.CanvasSize = UDim2.new(0,0,0,0) ChatLogs_.AutomaticCanvasSize = Enum.AutomaticSize.Y
local ChatLogs__ = Frame(Base,false,Color3.new(0.105882, 0.105882, 0.105882),UDim2.new(0, 215, 0, 166),UDim2.new(0.324999988, 0, 0.0439999998, 0),0,true,1,false)
local Select = Frame(Base,false,Color3.new(0.258824, 0.258824, 0.258824),UDim2.new(0, 97, 0, 27),UDim2.new(0, 0, 0.00700000022, 0),0,true,1,true)	
local TextLabel = Text(Heading,false,"KohlsNoob.exe",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 95, 0, 22),UDim2.new(0.0620914474, 0, 0, 0),1,false,Enum.Font.Code,14,true,10,true)	
local Name = Text(Heading,true,"x",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 23, 0, 18),UDim2.new(0.918300629, 0, 0, 1),1,false,Enum.Font.SourceSans,30,false,10,true)	
local minize = Text(Heading,true,"−",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 20, 0, 18),UDim2.new(0.852941155, 0, 0, 1),1,false,Enum.Font.SourceSans,27,false,10,true)	
local Output = Frame(Command_,false,Color3.new(0.0941176, 0.0941176, 0.0941176),UDim2.new(0, 207, 0, 90),UDim2.new(0.0515021458, 0, 0.459016383, 0),0,true,1,true)	
local TextLabel = Text(Command_,false,"do cmds for the list of commands",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 200, 0, 11),UDim2.new(0.0686695278, 0, 0.0273224041, 0),1,false,Enum.Font.Arial,14,true,1,true)	
local TextLabel = Text(Command_,false,"Command Line",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 113, 0, 13),UDim2.new(0.252727658, 0, 0.152144238, 0),1,false,Enum.Font.SourceSans,14,true,1,true)	
local TextLabel = Text(Command_,false,"Output",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 113, 0, 13),UDim2.new(0.252727658, 0, 0.38583988, 0),1,false,Enum.Font.SourceSans,14,true,1,true)	
local TextLabel = Text(Credits_,false,"KohlsNoob",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 161, 0, 31),UDim2.new(0.124463521, 0, -0.0163934417, 0),1,false,Enum.Font.SourceSansBold,8,true,1,true,false)	
local TextLabel = Text(Credits_,false,"UI design by haroldjd2017ipad#4295",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 220, 0, 19),UDim2.new(0.0085836947, 0, 0.202185795, 0),1,false,Enum.Font.Cartoon,14,false,1,true,false)	
local TextLabel = Text(Credits_,false,"scripted by haroldjd2017ipad#4295",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 220, 0, 17),UDim2.new(0.00858369097, 0, 0.333333343, 0),1,false,Enum.Font.Cartoon,14,false,1,true,false)	
local TextLabel = Text(Credits_,false,"ideas by gamingkhoaito#1014",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 182, 0, 17),UDim2.new(0.0901287571, 0, 0.459016383, 0),1,false,Enum.Font.Cartoon,14,false,1,true,false)	
local TextLabel = Text(Credits_,false,"anti-lag by Shade4Real#0001",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 182, 0, 17),UDim2.new(0.0901287571, 0, 0.589999974, 0),1,false,Enum.Font.Cartoon,14,false,1,true,false)
local InputBox = Frame(Command_,false,Color3.new(0.0941176, 0.0941176, 0.0941176),UDim2.new(0, 207, 0, 24),UDim2.new(0.0520784445, 0, 0.224043712, 0),0,true,1,true)	
local InputTextBox = Text(InputBox,false,"KN:/>",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(-0.0186749883, 200, 1, 0),UDim2.new(0.0186749883, 0, 0, 0),1,false,Enum.Font.Code,12,false,1,true,true)
local ScrollingFrame = Frame(Output,true,Color3.new(0.0941176, 0.0941176, 0.0941176),UDim2.new(0, 203, 0, 90),UDim2.new(0.0193236712, 0, 0, 0),1,false,1,true)
local Settings_ = Frame(Base,true,Color3.new(1, 1, 1),UDim2.new(0, 233, 0, 182),UDim2.new(0.298192769, 0, 0.00699996948, 0),1,false,1,false) Settings_.CanvasSize = UDim2.new(0,0,0,0)
local DeleteStartupCmdTxtBox = Text(Settings_,false,"",Color3.new(0.152941, 0.152941, 0.152941),Color3.new(1, 1, 1),UDim2.new(0, 212, 0, 20),UDim2.new(0.0430000015, 0, 0.698000014, 0),0,true,Enum.Font.Cartoon,14,false,1,false,true)
local DeleteStartupCmd = Text(Settings_,true,"Delete",Color3.new(0.0823529, 0.0823529, 0.0823529),Color3.new(1, 1, 1),UDim2.new(0, 212, 0, 20),UDim2.new(0.0429184549, 0, 0.697802186, 0),0,true,Enum.Font.Cartoon,14,false,1,true,false)
local TextLabel = Text(Settings_,false,"Start-up Commands",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 200, 0, 16),UDim2.new(0.0686695278, 0, -3.7252903e-09, 0),1,false,Enum.Font.Cartoon,14,false,1,true,false)	
local CmdsContainer = Frame(Settings_,false,Color3.new(0.0823529, 0.0823529, 0.0823529),UDim2.new(0, 212,0, 93),UDim2.new(0.0429184549, 0, 0.148351654, 0),0,true,1,true)	
local StartupCmds = Frame(CmdsContainer,true,Color3.new(1, 1, 1),UDim2.new(1, 0, 1, 0),UDim2.new(0, 0, 0, 0),1,false,1,true) StartupCmds.CanvasSize = UDim2.new(0,0,0,0) StartupCmds.AutomaticCanvasSize = Enum.AutomaticSize.Y
local AddStartupCmds = Text(Settings_,true,"Add New",Color3.new(0.0823529, 0.0823529, 0.0823529),Color3.new(1, 1, 1),UDim2.new(0, 212, 0, 20),UDim2.new(0.043, 0,0.846, 0),0,true,Enum.Font.Cartoon,14,false,1,true,false)	
local AddStartupCmdsTxtBox = Text(Settings_,false,"",Color3.new(0.152941, 0.152941, 0.152941),Color3.new(1, 1, 1),UDim2.new(0, 212, 0, 20),UDim2.new(0.043, 0,0.846, 0),0,true,Enum.Font.Cartoon,14,false,1,false,true)	
local AntiKillG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiKillGText = Text(AntiKillG,false,"Anti Kill",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiKillG_ = Frame(AntiKillG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiKillGToggle = Text(AntiKillG_,true,"ON",Color3.new(0.333333, 1, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	



local ChatLogsG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local ChatLogsText = Text(ChatLogsG,false,"Chat Logs",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local ChatLogsG2 = Frame(ChatLogsG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local ChatLogsToggle = Text(ChatLogsG2,true,"ON",Color3.new(0.333333, 1, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiPunishG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiPunishGText = Text(AntiPunishG,false,"Anti Punish",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiPunishG_ = Frame(AntiPunishG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiPunishGToggle = Text(AntiPunishG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiLagG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiLagGText = Text(AntiLagG,false,"Anti Lag",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiLagG_ = Frame(AntiLagG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiLagGToggle = Text(AntiLagG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local padenforceG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local padenforceGText = Text(padenforceG,false,"Padenforce",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local padenforceG_ = Frame(padenforceG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local padenforceGToggle = Text(padenforceG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiGrayScaleG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiGrayScaleGText = Text(AntiGrayScaleG,false,"Anti Gray Scale",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiGrayScaleG_ = Frame(AntiGrayScaleG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiGrayScaleGToggle = Text(AntiGrayScaleG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiSeizureG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiSeizureGText = Text(AntiSeizureG,false,"Anti Seizure",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiSeizureG_ = Frame(AntiSeizureG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiSeizureGToggle = Text(AntiSeizureG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiFlingG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiFlingGText = Text(AntiFlingG,false,"Anti Fling",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiFlingG_ = Frame(AntiFlingG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiFlingGToggle = Text(AntiFlingG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiMusicG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiMusicGText = Text(AntiMusicG,false,"Anti Music",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiMusicG_ = Frame(AntiMusicG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiMusicGToggle = Text(AntiMusicG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local GallpG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local GallpGText = Text(GallpG,false,"Auto get all pads",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local GallpG_ = Frame(GallpG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local GallpGToggle = Text(GallpG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiJailG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiJailGText = Text(AntiJailG,false,"Anti Jail",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiJailG_ = Frame(AntiJailG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiJailGToggle = Text(AntiJailG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiBlindG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiBlindGText = Text(AntiBlindG,false,"Anti Blind",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiBlindG_ = Frame(AntiBlindG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiBlindGToggle = Text(AntiBlindG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	


local AntiFreezeG = Frame(Toggles_,false,Color3.new(0.164706, 0.164706, 0.164706),UDim2.new(0, 197, 0, 20),UDim2.new(0, 0, 0.0437158495, 0),0,true,1,true)	

local AntiFreezeGText = Text(AntiFreezeG,false,"Anti Freeze",Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 114, 0, 19),UDim2.new(0.0406091362, 0, 0, 0),1,false,Enum.Font.Cartoon,15,false,1,true,false)	
local AntiFreezeG_ = Frame(AntiFreezeG,false,Color3.new(0.133333, 0.133333, 0.133333),UDim2.new(0, 50, 0, 14),UDim2.new(0.705583751, 0, 0.150000006, 0),0,true,1,true)	
local AntiFreezeGToggle = Text(AntiFreezeG_,true,"OFF",Color3.new(1, 0, 0),Color3.new(0, 0, 0),UDim2.new(0, 28, 0, 14),UDim2.new(0.439999998, 0, 0, 0),0,true,Enum.Font.Code,14,false,1,true,false)	

local l2 = Instance.new("UIListLayout",ScrollingFrame)
local l3 = Instance.new("UIListLayout",ChatLogs_)
local l4 = Instance.new("UIListLayout",StartupCmds)

ScrollingFrame.CanvasSize = UDim2.new(0,0,0,0)
InputTextBox.TextXAlignment = Enum.TextXAlignment.Left
InputTextBox.TextYAlignment = Enum.TextYAlignment.Top
InputTextBox.ClearTextOnFocus = false	
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y	
Toggles_.Name = "Toggles_"
Toggles.Name = "Toggles"
ChatLogsB.Name = "ChatLogs"
ChatLogs_.Name = "ChatLogs_"
Command.Name = "Command"
Command_.Name = "Command_"
Credits.Name = "Credits"
--Customs.Name = "Customs"
Settings.Name = "Settings"
ChatLogs__.Name = "ChatLogs__"
Settings_.Name = "Settings_"
Credits_.Name = "Credits_"
local active

for i,v in pairs(Base:GetChildren()) do
	if v:IsA("TextButton") then
		v.MouseButton1Click:Connect(function()
			for _,v2 in pairs(Base:GetChildren()) do
				pcall(function()
					if Base:FindFirstChild(v2.Name:gsub("_","")) and v2.Name ~= v.Name.."_" then
						active = Base[v2.Name.."_"]
						Base[v2.Name.."_"].Visible = false
						pcall(function()
							Base[v2.Name.."__"].Visible = false
						end)
					end
				end)
				Select:TweenPosition(v.Position,Enum.EasingDirection.Out,Enum.EasingStyle.Linear,.1)
				Base[v.Name.."_"].Visible = true
				pcall(function()
					Base[v.Name.."__"].Visible = true
				end)
			end
		end)
	end
end


local UIS = game:GetService("UserInputService")
spawn(function()
	local Frame = Base
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragInput = nil
	local dragStart = nil
	local dragPos = nil
	local startPos
	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	end

	Heading.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end)
Base:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 1)
Base.Draggable = true

local box = InputTextBox
local typing = false
local history = box.Text
local UIS = game:GetService("UserInputService")
local output = ScrollingFrame

box.TextWrapped = true
box.Focused:Connect(function() typing = true end)
box.FocusLost:Connect(function() wait() typing = false end)

local say = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = ">"
local LocalPlayer = game.Players.LocalPlayer
local idhider = string.rep(0, 100)
local commands = { }
local keybinds = { }
local keybinds_ = { }
local PlrChar = workspace:WaitForChild(LocalPlayer.Name)
local version_ = "3Tvca7oWrwC2Qpn4tU"
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local TW = game:GetService("TweenService")

local spamming = false
local DiscoFog = false
local antiMusic = false
local antiOof = true
local AntiBlind = false
local safeSpamming = false
local AntiCrash = false
local AntiFling = false
local Playing = false
local antivg = true
local antipunish = false
local noadminp_ = false
local AntiFreeze = false
local AntiAttach = false
local gallp = false
local rpads = false
local rfloor = false
local rbricks = false
local rbox = false
local tp = false
local pollActive = false
local antiAbuse = false
local antilag = false
local antilog = false
local antijail = false
local antiseizure = false
local noclip = false
local ChatLogs = true
local padenforce = false
local antigc = false
local rainbow = false

local spamSpeed = 0
local MusicLocked = "0"
local ssloopCount = 40
local rspeed = .5

local killer = nil 
local colorPart = Instance.new("Part", workspace)
local Folder243 = workspace.Terrain._Game.Folder

function notif(msg,col)
	if #output:GetChildren() > 2 then
		local la = output:GetChildren()[#output:GetChildren()]
		if la.TextColor3 == Color3.new(1, 1, 0) then
			la.TextColor3 = Color3.new(0.25098, 0.756863, 0)
		end
	end
	local new
	if msg == "player not found" or msg == "invalid command" then
		if msg == "invalid command" then
			new = Text(Output,false,"error: invalid command",Color3.new(1, 1, 1),Color3.new(1, 0, 0),UDim2.new(0, 200, 0, 15),UDim2.new(0, 0, 0, 0),1,false,Enum.Font.SourceSans,14,false,1,true,false)
		else
			new = Text(Output,false,"error: missing player",Color3.new(1, 1, 1),Color3.new(1, 0, 0),UDim2.new(0, 200, 0, 15),UDim2.new(0, 0, 0, 0),1,false,Enum.Font.SourceSans,14,false,1,true,false)
		end
	else
		new = Text(Output,false,msg,Color3.new(1, 1, 1),(col or Color3.new(1, 1, 0)),UDim2.new(0, 200, 0, 15),UDim2.new(0, 0, 0, 0),1,false,Enum.Font.SourceSans,14,false,1,true,false)
	end
	new.Parent = output
	new.TextXAlignment = Enum.TextXAlignment.Left
	new.TextWrapped = true
	new.AutomaticSize = Enum.AutomaticSize.Y
	output.CanvasPosition = Vector2.new(0,9999)
end

notif("Starting up...")


function toggle(button,status)
	if status == true then
		TW:Create(button,TweenInfo.new(.1),{BackgroundColor3 = Color3.fromRGB(85, 255, 0)}):Play()
		button.Text = "ON"
		button:TweenPosition(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.1)
	elseif status == false then
		TW:Create(button,TweenInfo.new(.1),{BackgroundColor3 = Color3.fromRGB(255, 0, 0)}):Play()
		button.Text = "OFF"
		button:TweenPosition(UDim2.new(0.439999998, 0, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.1)
	end
end

function toggleAntiKill()
	antiOof = not antiOof
	toggle(AntiKillGToggle,antiOof)
end
function toggleChatLogs()
	ChatLogs = not ChatLogs
	toggle(ChatLogsToggle,ChatLogs)
end
function toggleAntiBlind()
	AntiBlind = not AntiBlind
	toggle(AntiBlindGToggle,AntiBlind)
end
function toggleAntiFreeze()
	AntiFreeze = not AntiFreeze
	toggle(AntiFreezeGToggle,AntiFreeze)
end
function toggleAntiPunish()
	antipunish = not antipunish
	toggle(AntiPunishGToggle,antipunish)
end
function toggleAntiLag()
	antilag = not antilag
	toggle(AntiLagGToggle,antilag)
end
function togglePadenforce()
	padenforce = not padenforce
	toggle(padenforceGToggle,padenforce)
end
function toggleAntiGrayScale()
	antigc = not antigc
	toggle(AntiGrayScaleGToggle,antigc)
end
function toggleAntiSeizure()
	antiseizure = not antiseizure
	toggle(AntiSeizureGToggle,antiseizure)
end
function toggleAntiFling()
	AntiFling = not AntiFling
	toggle(AntiFlingGToggle,AntiFling)
end
function toggleAntiMusic()
	antiMusic = not antiMusic
	local Id = tostring(Folder243.Sound.SoundId)
	MusicLocked = Id:split("=")[2]
	toggle(AntiMusicGToggle,antiMusic)
end
function toggleGallp()
	gallp = not gallp
	toggle(GallpGToggle,gallp)
end
function toggleAntiJail()
	antijail = not antijail
	toggle(AntiJailGToggle,antijail)
end

ChatLogsToggle.MouseButton1Click:Connect(toggleChatLogs)
AntiKillGToggle.MouseButton1Click:Connect(toggleAntiKill)
AntiBlindGToggle.MouseButton1Click:Connect(toggleAntiBlind)
AntiPunishGToggle.MouseButton1Click:Connect(toggleAntiPunish)
AntiLagGToggle.MouseButton1Click:Connect(toggleAntiLag)
padenforceGToggle.MouseButton1Click:Connect(togglePadenforce)
AntiGrayScaleGToggle.MouseButton1Click:Connect(toggleAntiGrayScale)
AntiSeizureGToggle.MouseButton1Click:Connect(toggleAntiSeizure)
AntiFlingGToggle.MouseButton1Click:Connect(toggleAntiFling)
AntiMusicGToggle.MouseButton1Click:Connect(toggleAntiMusic)
GallpGToggle.MouseButton1Click:Connect(toggleGallp)
AntiJailGToggle.MouseButton1Click:Connect(toggleAntiJail)

delay(2,function()
	AntiFreezeGToggle.MouseButton1Click:Connect(toggleAntiFreeze)
end)


workspace.ChildAdded:Connect(function(e)
	RunService.Heartbeat:Wait()
	if e == workspace.CurrentCamera then
		e.ChildAdded:Connect(function(a)
			if antigc then
				RunService.Heartbeat:Wait()
				a:Destroy()
			end
		end)
	end
end)

local e321qr = false
Toggles.MouseButton1Click:Connect(function()
	wait()
	if not e321qr then
		e321qr = true
		local cl21d = AntiFreezeG:Clone()
		cl21d.Parent = Toggles_
		RunService.Heartbeat:Wait()
		cl21d:Destroy()
	end
end)

AddStartupCmds.MouseButton1Click:Connect(function()
	AddStartupCmds.Visible = false
	AddStartupCmdsTxtBox.Visible = true
	AddStartupCmdsTxtBox:CaptureFocus()
end)

local Pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads
local Players = game:GetService("Players")
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end


local http = game:GetService('HttpService')
function jsone(str)
	return http:JSONEncode(str)
end
function jsond(str)
	return http:JSONDecode(str)
end
local defaultLua = {

}

local data = { }
spawn(function()
	local s1237 = pcall(function()
		if not isfile('KohlsNoob_StartupCmds.json') then
			writefile('KohlsNoob_StartupCmds', jsone(defaultLua))
			data = defaultLua
		else
			data = jsond(readfile('KohlsNoob_StartupCmds.json'))
		end
		if not data then
			warn('Fatal error')
			return
		end
		function updateFile()
			local suc,er = pcall(function()
				writefile('KohlsNoob_StartupCmds.json', jsone(data))
			end)
			if not suc then warn(er) end
		end
	end)
	if not s1237 then
		notif("your executor does not support the start-up commands",Color3.new(1, 0, 0))
	end
end)

for i,v in pairs(data) do
	local new = Text(StartupCmds,false,"  "..v,Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 206, 0, 16),UDim2.new(0, 0, 0, 0),1,false,Enum.Font.Cartoon,14,false,1,true,false)
	new.AutomaticSize = Enum.AutomaticSize.Y
	new.TextXAlignment = Enum.TextXAlignment.Left
	new.TextWrapped = true
end

local typing2 = false
local typing3 = false


AddStartupCmdsTxtBox.Focused:Connect(function() typing2 = true end)
AddStartupCmdsTxtBox.FocusLost:Connect(function() wait() typing2 = false end)

DeleteStartupCmdTxtBox.Focused:Connect(function() typing3 = true end)
DeleteStartupCmdTxtBox.FocusLost:Connect(function() wait() typing3 = false end)

DeleteStartupCmd.MouseButton1Click:Connect(function()
	DeleteStartupCmd.Visible = false
	DeleteStartupCmdTxtBox.Visible = true
	DeleteStartupCmdTxtBox:CaptureFocus()
end)

UIS.InputBegan:Connect(function(e)
	if e.KeyCode == Enum.KeyCode.Return then
		if typing2 then
			if AddStartupCmdsTxtBox.Text ~= "" then
				local new = Text(StartupCmds,false,"  "..AddStartupCmdsTxtBox.Text,Color3.new(1, 1, 1),Color3.new(1, 1, 1),UDim2.new(0, 206, 0, 16),UDim2.new(0, 0, 0, 0),1,false,Enum.Font.Cartoon,14,false,1,true,false)
				new.AutomaticSize = Enum.AutomaticSize.Y
				new.TextXAlignment = Enum.TextXAlignment.Left
				new.TextWrapped = true
				table.insert(data,#data+1,AddStartupCmdsTxtBox.Text)
				updateFile()
			end
			AddStartupCmdsTxtBox.Visible = false
			AddStartupCmds.Visible = true
		elseif typing3 then
			if DeleteStartupCmdTxtBox.Text ~= "" then
				local cmd = DeleteStartupCmdTxtBox.Text
				local String = RemoveSpaces(cmd)
				for _, v in pairs(data) do
					if v:lower():match('^'.. cmd:lower()) then
						cmd = v
					end
				end
				local a
				for i,v in pairs(data) do
					if v == cmd then
						a = i
					end
				end
				if a then
					table.remove(data,a)
					updateFile()
				end
				for i,v in pairs(StartupCmds:GetChildren()) do
					pcall(function()
						if v.Text == "  "..cmd then
							v:Destroy()
						end
					end)
				end
			end
			DeleteStartupCmdTxtBox.Visible = false
			DeleteStartupCmd.Visible = true
		end
	end
end)

local arwf9qs = {}
local que = { }
local cooldown = false
local reject = false
local eeeeeee = false
spawn(function()
	while wait() do
		if #que ~= 0 and not cooldown and ChatLogs then
			cooldown = true

			if que[2] then
				if que[1][2]-que[2][2] <= .1 and eeeeeee then
					reject = true
				elseif que[1][2]-que[2][2] <= .1 then
					eeeeeee = true
				else
					eeeeeee = false
				end
			end
			for i = 1,5 do
				local txt = que[i]
				if txt then
					txt = txt[1]
					if reject then
						table.remove(que,1)
					else
						txt.Parent = ChatLogs_
						ChatLogs_.CanvasPosition = Vector2.new(0,999999)
						table.remove(que,1)
					end
				end
			end
			if #que >= 30 then
				que = { }
			end
			delay(.1,function()
				cooldown = false
				eeeeeee = false
				reject = false
			end)
		end
	end
end)
function ConnectP2(plr)
	if not arwf9qs[plr.Name] then
		arwf9qs[plr.Name] = Color3.fromRGB(math.random(50,255),math.random(50,255),math.random(50,255))
	end
	plr.Chatted:Connect(function(msg)
		if ChatLogs then
			local txt = Text(nil,false,"["..plr.Name.."]: "..msg,Color3.fromRGB(0,0,0),arwf9qs[plr.Name],UDim2.new(0, 200,0, 17),UDim2.new(0,0,0,0),1,false,Enum.Font.Cartoon,14,false,10,true,false)
			txt.TextWrapped = true
			txt.AutomaticSize = Enum.AutomaticSize.Y
			txt.TextXAlignment = Enum.TextXAlignment.Left
			table.insert(que,#que+1,{txt,tick()})
		end
	end)
end
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	ConnectP2(v)
end
game:GetService("Players").PlayerAdded:Connect(ConnectP2)

local banGearTargets = { }
local floorkilltargets = { }
local gameEliminated = { }
local gamePlayers = { }
local banGearTargets2 = { }
local pollVoted = { }
local pollAnswers = {
	answers = {},
	votes = {}
}
local whitelisted = { }
local blacklisted = {
	perm = {1204159402,1869563700,2202734555,1609999859,822340824},
	nonperm = {2786458053,2840154843,2840319606,1541950191,2382153210,2835013669,2579306089,2789215822,2279597178,964474189,2899767220,2276224205,2385681508,2992513916,892781737},
	floorkill = {888829172,1091801984}
}
local lUdiF2TGD = false
local songList = {
	"lol",
	"ASTRONOMIA (coffin dance oof version)",
	"Who? (Ft. Shiloh Dynasty)",
	"Santa Tell Me - Ariana Grande",
	"Running in the 90s (Epic death sound cover)",
	"CRAB RAVE OOF",
	"Undertale Rick roll",
	"#BrooklynBloodPop!",
	"Among Us Drip",
	"Baby I'm Yours",
	"kitchen in the dungeon",
	"Havana - Camila Cabello (Remix)",
	"Ehrling - Dance With Me",
	"Clarx & Harddope - Castle",
	"TheFatRat - Monody (Remix for Rolling Sky)",
	"Adventure (Cheat Code)",
	"never gonna give you up - rick astley (oof version)",
	"Bacon Song",
	"THE FBI OPEN UP",
	"Astronomia",
	"flamingo",
	"golden wind",
	"This Is The Best Burrito Ive Ever Eaten - Parry Gr",
	"Gary Come Home but its the ROBLOX death sound",
	"Nightcore - My Life's A Party",
	"Jack Stauber - Buttercup",
	"Syn Cole - Feel Good [NCS Release]",
	"Beat Your Competition - Vibe tracks",
	"Jim Yosef - Firefly",
	"Ship Wrek & Zookeepers - Ark",
	"Diviners - Savannah (feat. Philly K)",
	"Disfigure - Blank",
	"You've Been Trolled",
	"Five Nights at Freddy's 1 – Living Tombstone FAST",
	"Blur - Stellar",
	"Nicki Minaj - Starships",
	"Wellerman - Sea Shanty (220KID x Billen Ted Remix)"
}

songID = {
	"6754519148",
	"4948489007",
	"4461953104",
	"2546949814",
	"3307959033",
	"2590490779",
	"332422144",
	"6371179964",
	"6486359635",
	"2649314010",
	"5648499584",
	"2146629043",
	"1941051627",
	"5173015970",
	"6601148619",
	"247569283",
	"591769409",
	"1222237131",
	"6362125458",
	"4267446184",
	"4668472585",
	"3590110076",
	"292716776",
	"716663768",
	"248144653",
	"2325704183",
	"379791401",
	"364319796",
	"265349844",
	"391592859",
	"2627670821",
	"561656301",
	"229681899",
	"333975804",
	"6323993715",
	"6942910278",
	"6816876531"
}

local kits = {
	gears = {
		default = {
			"225921000",
			"170897263",
			"1208300505",
			"139578207",
			"45177979",
			"212296936",
			"125013769"
		},
		ranged = {
			"125013830",
			"60357972",
			"90718686",
			"127506257",
			"212296936",
			"90718350",
			"90718505",
			"79446473"
		},
		melee = {
			"83704165",
			"268586231",
			"1103011681",
			"87361662",
			"93136746",
			"68539623",
			"68848741",
			"156467990"
		},
		periastron = {
			"159229806",
			"93136802",
			"108158379",
			"73829193",
			"120307951",
			"69499437",
			"99119240",
			"80661504"
		},
		cars = {
			"164207580",
			"1929597345",
			"335132838",
			"253519495",
			"1402446243"
		},
		explosive = {
			"19644347",
			"11563251",
			"90718505",
			"243788010",
			"11999247",
			"50454086"
		},
		camping = {
			"123234545",
			"123234673",
			"433922317",
			"57229337",
			"57229337",
			"116040770",
			"123234510"
		}
	},
	names = {
		"default",
		"ranged",
		"melee",
		"periastron",
		"cars",
		"explosive",
		"camping"
	}
}

colorPart.Anchored = true
colorPart.Transparency = 1
colorPart.CanCollide = false

local dbqyda421 = { }
local DhwYyq9d = false
local c63241 = .1
local chat
function ran84714()
	local s = {
		{"a","b","c","d","f","g","h","l","x","m"},
		{1,2,3,4,5,6,7,8,9,0}
	}
	local a = ""
	local function r(...) return math.random(...) end
	for i = 1,10 do
		local b = r(1,2)
		if b == 1 then
			local c = s[r(1,2)][r(1,10)]
			if type(c) == "string" then
				c = c:upper()
			end
			a = a..c
		else
			a = a..s[r(1,2)][r(1,10)]
		end
	end
	return(tostring(a))
end
if game.PlaceId == 7525794236 then
	local dwaDNUUW2 = false
	local ee = true
	LocalPlayer.Chatted:Connect(function()
		if ee then
			print("EE")
			dwaDNUUW2 = true
		end
	end)
	local dh81 = true
	chat = function(s) table.insert(dbqyda421,#dbqyda421+1,s) end
	local nfqsdia = { }
	spawn(function()
		while wait() do
			if #dbqyda421 ~= 0 and not DhwYyq9d then
				DhwYyq9d = true
				if dwaDNUUW2 then
					ee = false
					dwaDNUUW2 = false
					wait(.5)
				end
				dh81 = not dh81
				if dh81 and not string.match(dbqyda421[1],">") then
					game.Players:Chat(":"..dbqyda421[1])
				else
					game.Players:Chat(dbqyda421[1])
				end
				table.insert(nfqsdia,#nfqsdia+1,dbqyda421[1])
				table.remove(dbqyda421,1)
				if #nfqsdia >= 2 then
					nfqsdia = {}
					delay(c63241,function()
						DhwYyq9d = false
						if c63241 >= .3 then
							c63241 = .1
						else
							c63241 = c63241 + .05
						end
					end)
				else 
					DhwYyq9d = false
				end
			elseif #dbqyda421 == 0 then
				ee = true
				c63241 = .1
			end
		end
	end)
	spawn(function()
		while wait(.11) do
			if #dbqyda421 == 0 then
				nfqsdia = { }
			end
		end
	end)
else
	chat = function(...)game.Players:Chat(...)end
end
local s14251 = [[

]]

local msg = function(msg) chat("h "..string.rep(s14251,50)..msg..string.rep(s14251,50)) end

function remind(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Reminder"; 
		Text = msg; 
		Duration = 5;
	})
end

function infnotif(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "noobus infinitus"; 
		Text = msg; 
		Duration = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999;
	})
end

if loadstring(game:HttpGet("https://pastebin.com/raw/BnVvL2wB", true))() ~= version_ then 
	Main:Destroy()
	return loadstring(game:HttpGet("https://pastebin.com/raw/B0WsGJyx", true))() 
end

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
			PlrChar.HumanoidRootPart.CFrame = CFrame.new(pos.X, pos.Y, pos.Z-(size.X/2)-size2.X/2) * CFrame.Angles(0, math.rad(90), 0)
			game.Players:Chat("unpunish me "..tostring(math.random(0,100)))
			wait()
		end
	end) 
	wait(.3)
	sss = false
	if plr then
		chat("tp me "..plr)
		chat("tp me "..plr)
	else
		for i = 1, 10 do 
			chat("skydive me "..tostring(math.random(0,100)))
		end
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

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

local function startup_cmds()
	chat(prefix.."antivg on")
	chat(prefix.."antikill on")
end

local function getAdmins()
	if game.GameId == 2287536067 then return end
	local S = pcall(function()
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
			firetouchinterest(PlrChar["Left Leg"], v:FindFirstChild("Head"), 0)
			firetouchinterest(PlrChar["Left Leg"], v:FindFirstChild("Head"), 1)
			wait()
		end
	end)
	if not S then
		notif("An error occured!")
	end
end
local c5314 = true
local function Regen()
	local S = pcall(function()
		fireclickdetector(workspace.Terrain._Game.Admin.Regen.ClickDetector, 1)
		fireclickdetector(workspace.Terrain._Game.Admin.Regen.ClickDetector, 0)
	end)
	if not S and c5314 then
		c5314 = false
		notif("Regen pad not found!")
		delay(3,function()
			c5314 = true
		end)
	end
end

spawn(function()
	local colors = {Color3.fromRGB(255, 0, 0),Color3.fromRGB(255, 165, 0),Color3.fromRGB(255, 255, 0),Color3.fromRGB(85, 170, 0),Color3.fromRGB(0,0,255),Color3.fromRGB(75,0,130),Color3.fromRGB(148,0,211)}
	local Tween = game:GetService("TweenService")
	while true do
		for i,v in pairs(colors) do
			local color = Tween:Create(colorPart, TweenInfo.new(rspeed,Enum.EasingStyle.Linear), {Color = v})
			color:Play()
			wait(rspeed)
		end
	end
end)

RunService.RenderStepped:Connect(function()
	if noclip then
		PlrChar.Humanoid:ChangeState(11)
	end
	if rainbow then
		local col = ""
		for i,v in pairs(tostring(colorPart.Color):split(",")) do
			col = col..string.sub(v:split(".")[2],1,3).." "
		end
		chat("colorshifttop "..col)
	end
	if not Pads:FindFirstChild(LocalPlayer.Name.."'s admin") and game.PlaceId ~= 7525794236 then
		if not Pads:FindFirstChild("Touch to get admin") then
			Regen()
		end
		for i,v in pairs(Pads:GetChildren()) do
			if v:FindFirstChild("Head") then
				firetouchinterest(PlrChar["Left Leg"], Pads["Touch to get admin"]:FindFirstChild("Head"), 1)
				firetouchinterest(PlrChar["Left Leg"], Pads["Touch to get admin"]:FindFirstChild("Head"), 0)
			end
		end
	end
	if padenforce then
		for i,v in pairs(game.Players:GetPlayers()) do
			local count = 0
			for _,v2 in pairs(workspace.Terrain._Game.Admin.Pads:GetChildren()) do
				if v2.Name == v.Name.."'s admin" then
					count = count + 1
				end
			end
			if count >= 2 then
				Regen()
				chat("respawn "..v.Name)
				msg("< KohlsNoob >  hey "..v.Name.." you can't grab 2 or more pads")
			end
		end
	end
end)

local items = {"Smoke","ForceField","Explosion","Fire","Sparkles"}
workspace.DescendantAdded:Connect(function(I)
	if AntiFling and I.Name == "BFRC" and I:IsDescendantOf(PlrChar) then
		PlrChar.Humanoid.Sit = false
		PlrChar.Torso.AssemblyLinearVelocity = Vector3.new(0,0,0)
		game:GetService'RunService'.Heartbeat:Wait()
		I:Destroy()
		PlrChar.Torso.AssemblyLinearVelocity = Vector3.new(0,0,0)
	end
	if antilag then
		local c = false
		for i,v in pairs(items) do
			if I:IsA(v) then
				c = true
			end
		end
		if c then
			game:GetService'RunService'.Heartbeat:Wait()
			I:Destroy()
		end
	end
	if antijail and string.match(I.Name,LocalPlayer.Name) then
		chat("unjail me")
		game:GetService'RunService'.Heartbeat:Wait()
		I:Destroy()
	end
	if I.Name:lower() == "ice" and AntiFreeze then
		chat("thaw me")
		for i,v in pairs(PlrChar:GetChildren()) do
			pcall(function()
				v.Anchored = false
			end)
		end
		game:GetService'RunService'.Heartbeat:Wait()
		pcall(function()
			I:Destroy()
		end)
	end
	if antiseizure and I.Name == "Seizure" and I:IsDescendantOf(PlrChar) then
		PlrChar.Torso.AssemblyLinearVelocity = Vector3.new(0,0,0)
		game:GetService'RunService'.Heartbeat:Wait()
		I:Destroy()
		PlrChar.Torso.AssemblyLinearVelocity = Vector3.new(0,0,0)
		PlrChar.Humanoid:ChangeState("GettingUp")
	end
end)

local function ConnectP(plr)
	spawn(function()
		local IsBlacklisted = false
		local perm = false
		local uwyfgs = true
		local floorkill_ = false
		for i,v in pairs(blacklisted.perm) do
			if plr.UserId == v then
				perm = true
				IsBlacklisted = true
			end
		end
		for i,v in pairs(blacklisted.nonperm) do
			if plr.UserId == v then
				IsBlacklisted = true
			end
		end
		for i,v in pairs(blacklisted.floorkill) do
			if v == plr.UserId then
				floorkill_ = true
				game.Players:Chat(">floorkill "..plr.Name)
				chat("respawn "..plr.Name)
			end
		end
		if IsBlacklisted and not perm then
			chat("punish "..plr.Name)
		elseif IsBlacklisted and perm then
			wait(1)
			spawn(function()
				while uwyfgs do
					msg("< KohlsNoob >  anti crash enabled so shu.t up and dont complain")
					wait(1)
				end
			end)
			blacklistAntiCrash = true
			local anti = RunService.RenderStepped:Connect(function()
				chat("setgrav all 9e9")
			end)
			spawn(function()
				while blacklistAntiCrash do
					chat("setgrav all 9e9")
					wait()
				end
			end)
			game.Players.PlayerRemoving:Connect(function(POOP)
				if uwyfgs and POOP == plr then
					uwyfgs = false
					anti:Disconnect()
					blacklistAntiCrash = false
					chat("respawn all")
				end
			end)
		end
		plr.Chatted:Connect(function(msg)
			local IsWhitelisted = false
			for i,v in pairs(whitelisted) do
				if v == plr then
					IsWhitelisted = true
				end
			end
			if pollActive then
				local voted = false
				for i,v in pairs(pollVoted) do
					if v == plr then
						voted = true
					end
				end
				local yes = false
				local ehh
				for i,v in pairs(pollAnswers.answers) do
					if v:lower() == msg:lower() then
						yes = true
						ehh = i
					end
				end
				if yes then
					if voted then return chat("pm "..plr.Name.." you already voted.") end
					table.insert(pollVoted, #pollVoted+1, plr)
					pollAnswers.votes[ehh] = pollAnswers.votes[ehh] + 1
				end
			end
			if IsWhitelisted then
				if string.sub(msg:lower(), 0, 1) == prefix then 
					if msg:split(prefix)[1] == "" then
						local msgs = msg:split(prefix)
						msgs = msgs[2]:split(" ")
						msgs[1] = msgs[1]:lower()
						local cmd = msgs[1]
						if cmd == "spam" or cmd == "sspam" or cmd == "play" or cmd == "paintm" or cmd == "sm" or cmd == "msg" then
							table.remove(msgs, 1)
							for i,v in pairs(msgs) do
								if i ~= #msgs then 
									table.remove(msgs, i)
									table.insert(msgs, i, v.." ")
								end
							end
							commands[cmd](table.concat(msgs))
						else
							if msgs[2] then
								commands[msgs[1]](msgs[2])
							else
								commands[msgs[1]]()
							end
						end
					end
				end
			end
		end)
		spawn(function()
			repeat wait()
			until plr.Character ~= nil
			local ban_gear2 = false
			for i,v in pairs(banGearTargets2) do
				if v == plr.Name then
					ban_gear2 = true
				end
			end
			if ban_gear2 then
				local OldPos = PlrChar.HumanoidRootPart.CFrame
				chat("gear me 82357101")
				local tool = LocalPlayer.Backpack:WaitForChild("PortableJustice")
				PlrChar.Humanoid:EquipTool(tool)
				chat("tp me "..plr.Name)
				repeat tool:WaitForChild("MouseClick"):FireServer(plr.Character) wait()
				until plr.Character:FindFirstChild("Part")
				chat("reset "..plr.Name)
				PlrChar.HumanoidRootPart.CFrame = OldPos
				PlrChar.Humanoid.Jump = true
				PlrChar.Humanoid:UnequipTools(tool)
				tool.Parent = nil
			end
		end)
		local db1 = false
		local db2 = false
		local db3 = false
		RunService.RenderStepped:Connect(function()
			pcall(function()
				if antiAbuse and plr.PlayerGui:FindFirstChild("EFFECTGUIBLIND") and not db3 then
					db3 = true
					chat("unblind "..plr.Name)
					msg("KohlsNoob Anti-Abuse: "..plr.Name.." has been unblinded")
					delay(.3, function()
						db3 = false
					end)
				end
				local c_ = false
				for i,v in pairs(banGearTargets) do
					if plr == v then
						c_ = true
					end
				end
				local tool = plr.Backpack:FindFirstChildOfClass("Tool") or plr.Character:FindFirstChildOfClass("Tool")
				if plr.Backpack:FindFirstChild("VampireVanquisher") or plr.Character:FindFirstChild("VampireVanquisher") then
					if not db2 and antivg then
						db2 = true
						chat("ungear "..plr.Name)
						chat("pm "..plr.Name.." [Automatic] you can't have vampire gear lol")
						delay(.3, function()
							db2 = false
						end)
					end
				end
				if tool and c_ then
					if not db1 then
						db1 = true
						chat("ungear "..plr.Name)
						chat("pm "..plr.Name.." [Automatic] you are banned for using gears in this server lol")
						delay(.3, function()
							db1 = false
						end)
					end
				end
				local _c2 = false
				for i,v in pairs(plr.Backpack:GetChildren()) do
					if v.Name ~= "Bombo'sSurvivalKnife" and v.Name ~= "Torch" then
						_c2 = true
					end
				end
				if plr.Character:FindFirstChildOfClass("Tool").Name ~= "Torch" and plr.Character:FindFirstChildOfClass("Tool").Name ~= "Bombo'sSurvivalKnife" then
					_c2 = true
				end
				if _c2 and Playing then
					chat("ungear "..plr.Name)
					chat("gear "..plr.Name.." 31839337")
					if plr == killer then
						chat("gear "..plr.Name.." 121946387")
					end
					chat("pm "..plr.Name.." other gears are not allowed during a game")
				end
			end) 
		end)
		plr.Chatted:Connect(function(m)
			if m:lower() == "/c system" and plr ~= LocalPlayer then
				msg(plr.Name.." is using /c system lol (imagine using /c system)")
			end
			if string.sub(m, 0, 1) == ":" then
				m = string.sub(m, 2, #m)
			end
			m = m:lower()
			local mm_ = m:split(" ")
			if mm_[1] == "size" and AntiCrash then
				if mm_[3] == "0.3" or mm_[3] == ".3" then
					local t
					if mm_[2] == "me" then
						t = plr.Name
					elseif mm_[2] == "all" then
						t = "all"
					end
					local anti3115 = RunService.RenderStepped:Connect(function()
						chat("setgrav all 9e9")
					end)
					delay(15, function()
						anti3115:Disconnect()
						wait()
						chat("respawn all")
					end)
					msg("< KohlsNoob >  "..plr.Name.." failed to crash the server")
				end
			end
			local t_251 = RemoveSpaces(m:lower()):split(" ")[1]
			if m:lower() == "fix" and Playing then
				wait()
				chat("time 0")
				chat("fogend 25")
				chat("fogcolor 0 0 0")
			elseif t_251:split(" ")[1] == "logs" and antilog then
				for i=1,50 do
					chat("fire no logs for u")
				end
			end
		end)
		plr.CharacterAdded:Connect(function(char)
			spawn(function()
				char:WaitForChild("Humanoid").Died:Connect(function()
					if antiAbuse then
						chat("reset "..plr.Name)
						msg("KohlsNoob Anti-Abuse: "..plr.Name.." has been resetted")
					end
				end)
			end)
			if IsBlacklisted and not perm and not floorkill_ then
				chat("punish "..plr.Name)
			end
			local check2 = false
			for i,v in pairs(floorkilltargets) do
				if v == plr then
					check2 = true
				end
			end
			if check2 then
				chat("kill "..plr.Name)
			end
			char.ChildAdded:Connect(function(I)
				if antiAbuse and I.Name == "ice" then
					chat("thaw "..plr.Name)
					msg("KohlsNoob Anti-Abuse: "..plr.Name.." has been unfroze")
				end
				local C = false
				for i,v in pairs(gameEliminated) do
					if v == plr then
						C = true
					end
				end
				if I.Name == "ForceField" and not C and Playing then
					chat("unff "..plr.Name)
				end
			end)
			spawn(function()
				char:WaitForChild("Torso").ChildAdded:Connect(function(I)
					if I.Name == "Weld" and AntiAttach then
						chat("reset "..plr.Name)
						chat("pm "..plr.Name.." [Automatic] you can't attach to parts lol")
					end
				end)
			end)
		end)
		repeat wait()
		until plr.Character ~= nil
		local ChAr = plr.Character
		spawn(function()
			ChAr:WaitForChild("Torso").ChildAdded:Connect(function(I)
				if I.Name == "Weld" and AntiAttach then
					chat("reset "..plr.Name)
					chat("pm "..plr.Name.." [Automatic] you can't attach to parts lol")
				end
			end)
		end)
		ChAr.ChildAdded:Connect(function(I)
			if antiAbuse and I.Name == "ice" then
				chat("thaw "..plr.Name)
				msg("KohlsNoob Anti-Abuse: "..plr.Name.." has been unfroze")
			end
			local C = false
			for i,v in pairs(gameEliminated) do
				if v == plr then
					C = true
				end
			end
			if I.Name == "ForceField" and not C and Playing then
				chat("unff "..plr.Name)
			end
		end)
	end)
end

local ctrl = false
UIS.InputBegan:Connect(function(input,dD89D8w2)
	if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
		ctrl = true
	end 
	if input.UserInputType == Enum.UserInputType.MouseButton1 and ctrl and tp then
		local pos = LocalPlayer:GetMouse().Hit.p
		local ori = PlrChar.HumanoidRootPart.Orientation
		PlrChar.HumanoidRootPart.CFrame = CFrame.new(pos.X, pos.Y+2.999, pos.Z) * CFrame.Angles(math.rad(ori.X),math.rad(ori.Y),math.rad(ori.Z))
	end
	if input.KeyCode and not dD89D8w2 then
		local cmd = keybinds[input.KeyCode]
		if cmd then
			chat(cmd)
			game.Players:Chat(">"..cmd)
		end
	end
end)
UIS.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
		ctrl = false
	end 
end)

game.Players.PlayerRemoving:Connect(function(plr)
	for i,v in pairs(gamePlayers) do
		if v == plr and Playing then
			table.remove(gamePlayers, i)
			msg(plr.Name.." has been eliminated")
			say(plr.Name.." has been eliminated")
		end
	end
end)

RunService.RenderStepped:Connect(function()
	if AntiCrash then
		chat("setgrav all 9e9")
	end
end)
RunService.Heartbeat:Connect(function()
	if AntiCrash then
		chat("setgrav all 9e9")
	end
end)
spawn(function()
	while wait() do
		if AntiCrash then
			chat("setgrav all 9e9")
		end
	end
end)

workspace.Terrain._Game.Folder.ChildAdded:Connect(function(I)
	if I.Name:split(" ")[2] == "jail" and antiAbuse then
		chat("unjail "..I.Name:split("'")[1])
		msg("KohlsNoob Anti-Abuse: "..I.Name.." has been removed")
	end
end)

LocalPlayer.CharacterAdded:Connect(function(char)
	PlrChar = char
	PlrChar:WaitForChild("Humanoid").Died:Connect(function()
		if antiOof then
			chat("reset me")
			chat("ff me")
		end
	end)
	PlrChar.ChildAdded:Connect(function(I_)
		if I_.Name == "ice" and AntiFreeze then
			chat("thaw me")
		end
	end)
end)

game.Lighting.ChildAdded:Connect(function(I)
	if game.Players:GetPlayerFromCharacter(I) and antiAbuse then
		chat("unpunish "..I.Name)
		msg("KohlsNoob Anti-Abuse: "..I.Name.." has been unpunished")
	end
	if I == PlrChar and antipunish then
		chat("unpunish me")
	end
	if noadminp_ then
		wait()
		PlrChar.Parent = workspace
	end
end)

spawn(function()
	LocalPlayer:WaitForChild("PlayerGui").ChildAdded:Connect(function(I)
		if I.Name == "EFFECTGUIBLIND" and AntiBlind then
			wait()
			I:Destroy()
		end
	end)
	PlrChar:WaitForChild("Humanoid").Died:Connect(function()
		if antiOof then
			chat("reset me")
			chat("ff me")
		end
	end)
	PlrChar:WaitForChild("Torso").ChildAdded:Connect(function(I)
		if I.Name == "BFRC" and AntiFling then
			PlrChar.Humanoid.Sit = false
			local loop = true
			delay(.3, function()
				loop = false
			end)
			while loop do
				PlrChar.Torso.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				wait()
			end
			wait()
			I:Destroy()
		end
	end)
end)

for i,v in pairs(game.Players:GetPlayers()) do
	ConnectP(v)
end

game.Players.PlayerAdded:Connect(function(plr)
	ConnectP(plr)
	local IsBlacklisted = false
	for i,v in pairs(blacklisted) do
		for _,v2 in pairs(v) do
			if v2 == plr.UserId then
				IsBlacklisted = true
			end
		end
	end
	wait()
	if IsBlacklisted then
		msg("blacklisted user joined: "..plr.Name)
	else
		msg(plr.Name.." has joined the game!")
	end
end)

Folder243.ChildRemoved:Connect(function(v)
	if v:IsA("Sound") then
		local id = v.SoundId:split("=")[2]
		if id == MusicLocked and antiMusic then
			chat("music "..idhider..MusicLocked)
			msg("< KohlsNoob >  current music is locked")
		end
		if Playing and id == "143382469" then
			chat("music 143382469")
		end 
	end
end)

RunService.RenderStepped:Connect(function()
	if gallp then
		getAdmins()
	end
end)
game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if not lUdiF2TGD then return end
	if string.sub(msg:lower(), 0, 1) == prefix then 
		if msg:split(prefix)[1] == "" then
			local msgs = msg:split(prefix)
			msgs = msgs[2]:split(" ")
			msgs[1] = msgs[1]:lower()
			local cmd = msgs[1]
			if cmd == "code" then
				return loadstring(string.sub(msg, 7,#msg))()
			end
			if cmd == "poll" then
				commands.poll(msg:sub(7,#msg):split(",")[1], msg:sub(7,#msg):split(",")[2])
				return
			end
			if cmd == "spam" or cmd == "sspam" or cmd == "play" or cmd == "paintm" or cmd == "sm" or cmd == "msg" then
				table.remove(msgs, 1)
				for i,v in pairs(msgs) do
					if i ~= #msgs then 
						table.remove(msgs, i)
						table.insert(msgs, i, v.." ")
					end
				end
				return commands[cmd](table.concat(msgs))
			elseif cmd == "keybind" then
				table.remove(msgs,1)
				commands.keybind(msgs)
			else
				if not commands[msgs[1]] then
					return notif("invalid command")
				end
				local s = pcall(function()
					if msgs[3] then
						commands[msgs[1]](msgs[2], msgs[3])
					elseif msgs[2] then
						if msgs[2]:lower() == "me" then
							msgs[2] = LocalPlayer.Name
						elseif msgs[2]:lower() == "random" then
							local plrs = game.Players:GetPlayers()
							msgs[2] = plrs[math.random(1,#plrs)].Name
						elseif msgs[2]:lower() == "all" then
							for i,v in pairs(Players:GetPlayers()) do
								commands[msgs[1]](v.Name)
							end
							return
						elseif msgs[2]:lower() == "others" then
							for i,v in pairs(Players:GetPlayers()) do
								if v ~= LocalPlayer then
									commands[msgs[1]](v.Name)
								end
							end
							return
						end
						commands[msgs[1]](msgs[2])
					else
						commands[msgs[1]]()
					end
				end)
				if not s then
					notif("unexpected error occured")
				end
			end
		end
	end
end)

UIS.InputBegan:Connect(function(i)
	i = i.KeyCode
	if typing then
		if i == Enum.KeyCode.Return then
			local input = box.Text:gsub(">","")
			input = prefix..input:split("/")[2]
			box.Text = "KN:/>"
			local msg = input
			box:ReleaseFocus()
			game.Players:Chat(input)
		elseif box.Text:sub(1,5) ~= "KN:/>" then
			box.Text = history
			box.CursorPosition = #box.Text+1
		end
		history = box.Text
	end
end)

wait()

commands.dsaok = function()
	pcall(function()
		for i,v in pairs(workspace.Terrain._Game.Workspace.Obby:GetChildren()) do
			v.TouchInterest:Destroy()
		end
	end)
	notif("you are now immune to obby kill parts")
end

commands.resetp = function()
	local s = pcall(function()
		Regen()
	end)
end

commands.admins = function()
	getAdmins()
end

commands.unspam = function()
	spamming = false
	safeSpamming = false
	notif("spamming has been stopped")
end

wait()

commands.ssloop = function(num)
	local A = tonumber(num)
	if A ~= nil then
		ssloopCount = A
		notif("safe spam repeat count has been set to "..ssloopCount)
	elseif A == nil then
		notif("invalid argument")
	end
end

wait()

commands.sspam = function(cmd)
	if not safeSpamming then
		safeSpamming = true
		notif("safe spamming")
		for i = 0, ssloopCount do
			if not safeSpamming then 
				break
			end
			chat(cmd)
			wait(spamSpeed)
		end
		safeSpamming = false
		notif("safe spam finished")
	else
		notif("safe spam is already running, please wait")
	end
end

wait()

commands.spam = function(cmd)
	if not spamming then
		notif("spamming")
		spamming = true
		spawn(function()
			while spamming do
				--Regen()
				--getAdmins()
				wait()
			end
		end)
		delay(300, function()
			if spamming then
				remind("you are currently spamming "..cmd)
			end
		end)
		while spamming do
			spawn(function()
				for i = 1,100 do
					chat(cmd.." "..tostring(math.random(0, 100)))
				end
			end)
			wait(spamSpeed)
		end
	else
		notif("you are already spamming")
	end
end

wait()

commands.spamspeed = function(speed)
	spamSpeed = tonumber(speed)
	notif("spam speed has been set to "..spamSpeed)
end

wait()

commands.prefix = function(str)
	if #str == 1 then
		prefix = str
		notif("prefix has been changed to "..str)
	else
		notif("prefix should be 1 character only")
	end
end
wait()
commands.serhop = function()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
			amount = v.playing
		end
	end
	if #x > 0 then
		notif("Joining a server with "..amount.." Players")
		wait(0.25)
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	else
		notif("waiting for available server...")
	end
end

wait()

commands.lag = function()
	local amount = 50
	getAdmins()
	notif("lagging the server...")
	for i = 1,amount do
		chat("gear me "..idhider.."253519495")
	end
	repeat wait()
	until #LocalPlayer.Backpack:GetChildren() == amount
	for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
		v.Parent = PlrChar
		v:Activate()
		PlrChar.Humanoid:UnequipTools(v)
		delay(5, function()
			v.Parent = LocalPlayer.Backpack
			wait()
			v.Parent = nil
		end)
	end
end

wait()

commands.discofog = function()
	getAdmins()
	if not DiscoFog then
		DiscoFog = true
		chat("fogend 0 0 0")
		chat("time 0")
		chat("ambient 255 255 255")
		chat("colorshiftbottom 255 255 255")
		chat("ambient 255 255 255")
		chat("outdoorambient 255 255 255")
		chat("colorshifttop 255 255 255")
		spawn(function()
			while DiscoFog do
				chat("fogend 0")
				wait()
				chat("fogcolor "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)))
			end
		end)
		notif("disco fog enabled")
	else
		notif("disco fog is already running")
	end
end
wait()
commands.undiscofog = function()
	if DiscoFog then
		DiscoFog = false
		wait(.2)
		chat("fix")
		notif("disco fog disabled")
	end
end

wait()

commands.bangears = function(target) 
	if target:lower() == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			chat("ungear "..v.Name)
			table.insert(banGearTargets, #banGearTargets+1, v)
		end
		msg("< KohlsNoob >  all people has been banned for using gears in this server")
	else
		local Target = FindPlayer(target)
		if Target then
			table.insert(banGearTargets, #banGearTargets+1, Target)
			chat("ungear "..Target.Name)
			msg("< KohlsNoob >  "..Target.Name.." has been banned for using gears in this server")
		else
			notif("player not found")
		end
	end
end

wait()

commands.unbangears = function(P)
	if P:lower() == "all" then
		banGearTargets = { }
		msg("< KohlsNoob >  everybody has been unbanned for using gears in this server")
	else
		local Target = FindPlayer(P)
		if Target then
			local A
			for i,v in pairs(banGearTargets) do
				if v == Target then
					A = i
				end
			end
			if A then
				table.remove(banGearTargets, A)
				msg("< KohlsNoob >  "..Target.Name.." has been unbaned for using gears in this server")
			else
				notif("this player is not banned from using gears")
			end
		else
			notif("player not found")
		end
	end
end

wait()

commands.floorkill = function(P)
	if P:lower() == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			table.insert(floorkilltargets, #floorkilltargets, v)
		end
		notif("floorkilling everyone else")
	else
		local Target = FindPlayer(P)
		if Target then
			table.insert(floorkilltargets, #floorkilltargets+1, Target)
			notif("floorkilling "..Target.Name)
		else
			notif("player not found")
		end
	end
end

wait()

commands.unfloorkill = function(P)
	if P:lower() == "all" then 
		floorkilltargets = { }
		notif("floorkilling has been stopped for everyone")
	else
		local Target = FindPlayer(P)
		if Target then
			local A = nil
			for i,v in pairs(floorkilltargets) do
				if v == Target then
					A = i
				end
			end
			if A then
				table.remove(floorkilltargets, A)
				notif("floorkilling has been stopped for "..Target.Name)
			else
				notif("you are not floorkilling this guy")
			end
		else
			notif("player not found")
		end
	end
end

wait()

commands.void = function(P)
	local Target = FindPlayer(P)
	if Target then
		local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
		local OldPos = Root.CFrame
		Root.CFrame = CFrame.new(0, -200, 0)
		wait(.45)
		chat("tp "..Target.Name.." me")
		chat("unfly "..Target.Name)
		wait()
		Root.CFrame = OldPos
		notif(Target.Name.." has been sent to the void")
	else
		notif("player not found")
	end
end

wait()

commands.rej = function()
	notif("rejoining...")
	wait(.7)
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.id == game.JobId then
			x[#x + 1] = v.id
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
		end
	end
end

wait()

commands.antimusic = function(toggle)
	if toggle == "on" and AntiMusicGToggle.Text == "OFF" then
		toggleAntiMusic()
		notif("The current music has been locked")
	elseif toggle == "off"and AntiMusicGToggle.Text == "ON"  then
		toggleAntiMusic()
		notif("The current music has been unlocked")
	end
end

wait()

commands.antiblind = function(toggle)
	if toggle == "on" then
		AntiBlind = true
		notif("Anti blind activated")
	elseif toggle == "off" then
		AntiBlind = false
		notif("Anti blind deactivated")
	end
end

wait()

commands.antikill = function(toggle)
	if toggle == "on" and AntiKillGToggle.Text == "OFF" then
		toggleAntiKill()
		notif("anti kill enabled")
	elseif toggle == "off" and AntiKillGToggle.Text == "ON" then
		toggleAntiKill()
		notif("anti kill disabled")
	end
end

wait()

commands.ascend = function(P)
	local Target = FindPlayer(P)
	if Target then
		chat("unfly "..Target.Name)
		chat("setgrav "..Target.Name.." -270")
		chat("stun "..Target.Name)
		chat("glow "..Target.Name.." 0 0 255")
		notif(Target.Name.." has been ascended")
	else
		notif("player not found")
	end
end

wait()

local timestop = false
commands.zw = function()
	notif("doing za warudo")
	loadstring(game:HttpGet("https://pastebin.com/raw/3MsUFtCK"))()
end

commands.kc = function()
	notif("action running")
	chat("music 5779908464")
	wait(1.1)
	chat("music 3280066384")
	chat("fix")
	wait(.1)
	chat("time 0")
	wait(.1)
	chat("time 12")
	wait(.1)
	chat("time 0")
	wait(.5)
	chat("colorshifttop 100000 0 0")
	chat("colorshiftbottop 100000 0 0")
	chat("fogcolor 255 0 0")
	chat("fogend 0")
	wait(.4)
	chat("colorshifttop 0 0 0")
	chat("colorshiftbottop 0 0 0")
	chat("fogcolor 231 84 128")
	wait(.6)
	chat("fogcolor 0 0 0")
	chat("fogend 50")
	wait(.1)
	chat("noclip me")
	chat(prefix.."spam speed others 0")
	wait(1.9)
	chat("music 3373991228")
	wait(.1)
	chat("colorshifttop 100000 0 0")
	chat("colorshiftbottop 100000 0 0")
	wait(.7)
	chat("fix")
	wait(.1)
	chat("music")
	chat("clip me")
	wait(.1)
	chat(prefix.."unspam")
	wait(.3)
	chat("speed all 16")
end

wait()

commands.movebp = function()
	notif("moving baseplate...")
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	movePart(workspace.Terrain._Game.Workspace.Baseplate)
	chat("fly me")
	notif("baseplate has been moved")
	PlrChar.HumanoidRootPart.CFrame = Oldpos
end

wait()

commands.anticrash = function(toggle)
	if toggle == "on" then
		AntiCrash = true
		notif("Anti crash has been enabled")
	elseif toggle == "off"  then
		AntiCrash = false
		notif("Anti crash has been disabled")
	end
end

wait()

commands.tohouse = function()
	local s = pcall(function()
		PlrChar.HumanoidRootPart.CFrame = CFrame.new(-29.809, 8.229, 72.000)
	end)
	if s then 
		notif("teleported you to the house")
	else
		notif("an error occured")
	end
end

wait()

commands.tospawn = function()
	local s = pcall(function()
		PlrChar.HumanoidRootPart.CFrame = CFrame.new(-41, 3.700, -25.589)
	end)
	if s then 
		notif("teleported you to the spawn")
	else
		notif("an error occured")
	end
end

wait()

commands.antifling = function(toggle)
	if toggle == "on" then
		AntiFling = true
		notif("Anti fling activated")
	elseif toggle == "off" then
		AntiFling = false
		notif("Anti fling disabled")
	end
end

wait()

commands.toregen = function()
	local Pos
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "Regen" then
			Pos = v.Position
		end
	end
	if Pos ~= nil then
		PlrChar.HumanoidRootPart.CFrame = CFrame.new(Pos.X, Pos.Y+3, Pos.Z)
		notif("teleported you to the regen pad")
	else
		notif("regen pad not found")
	end
end

wait()

commands.songlist = function()
	print("---------------------SONG LIST--------------------------")
	for i,v in pairs(songList) do
		print(i..". "..v)
	end
	print("--------------------------------------------------------")
	notif("press F9 to view the list of songs")
end                             

wait()

commands.play = function(song)
	if song == "random" then
		local num = math.random(1,#songList)
		chat("music "..idhider.." "..songID[num])
		msg("< KohlsNoob >  Now Playing: "..songList[num])
	else
		local found = false
		local Song
		for i,v in pairs(songList) do
			if (v:lower().." "):match('^'.. song:lower()) then
				found = true
				Song = v
				chat("music "..idhider..songID[i])
			end
		end
		if found then
			msg("< KohlsNoob >  Now Playing: "..Song)
		else
			notif("song not found")
		end
	end
end

wait()

commands.table = function()
	notif("throwing tables...")
	for i = 0, 50 do
		chat("gear me 243788010")
		local gear = LocalPlayer.Backpack:WaitForChild("RageTable")
		PlrChar.Humanoid:EquipTool(gear)
		gear:Activate()
		PlrChar.Humanoid:UnequipTools(gear)
		delay(5, function()
			gear.Parent = nil
		end)
		wait()
	end
	notif("tables has been thrown")
end

wait()

commands.bomb = function()
	notif("planting bombs...")
	for i = 1,50 do
		chat("gear me "..idhider.."11999247")
	end
	repeat wait()
	until #LocalPlayer.Backpack:GetChildren() == 50
	for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
		v.Parent = PlrChar
		v:Activate()
		PlrChar.Humanoid:UnequipTools(v)
		delay(5, function()
			v.Parent = LocalPlayer.Backpack
			wait()
			v.Parent = nil
		end)
	end
	notif("bombs has been planted")
end

wait()

commands.paintm = function(color)
	local function getcolor(colorstring)
		local a = colorstring:split(" ")
		return(Color3.fromRGB(unpack(a)))
	end
	chat("gear me 18474459")
	if color == "random " then
		color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
	elseif color == "original" then
		local parts = {"Divider1", "Divider2", "Divider3", "Divider4", "Divider7", "Divider8", "Divider9", "Divider10", "Divider5", "Divider6", "Back", "SmoothBlockModel178", "SmoothBlockModel165", "SmoothBlockModel147", "SmoothBlockModel143", "SmoothBlockModel135", "SmoothBlockModel130", "SmoothBlockModel129", "SmoothBlockModel126", "SmoothBlockModel117", "SmoothBlockModel116", "SmoothBlockModel114", "SmoothBlockModel112", "SmoothBlockModel110", "SmoothBlockModel109", "SmoothBlockModel106", "SmoothBlockModel104", "SmoothBlockModel137", "SmoothBlockModel108", "SmoothBlockModel102", "SmoothBlockModel119", "SmoothBlockModel99", "SmoothBlockModel113", "SmoothBlockModel98", "SmoothBlockModel97", "SmoothBlockModel95", "SmoothBlockModel89", "SmoothBlockModel87", "SmoothBlockModel86", "SmoothBlockModel105", "SmoothBlockModel123", "SmoothBlockModel83", "SmoothBlockModel82", "SmoothBlockModel160", "SmoothBlockModel81", "SmoothBlockModel78", "SmoothBlockModel77", "SmoothBlockModel76", "SmoothBlockModel75", "SmoothBlockModel73", "SmoothBlockModel84", "SmoothBlockModel72", "SmoothBlockModel71", "SmoothBlockModel70", "SmoothBlockModel69", "SmoothBlockModel68", "SmoothBlockModel66", "SmoothBlockModel65", "SmoothBlockModel62", "SmoothBlockModel120", "SmoothBlockModel60", "SmoothBlockModel50", "SmoothBlockModel131", "SmoothBlockModel44", "SmoothBlockModel43", "SmoothBlockModel42", "SmoothBlockModel59", "SmoothBlockModel39", "SmoothBlockModel48", "SmoothBlockModel127", "SmoothBlockModel38", "SmoothBlockModel37", "SmoothBlockModel36", "SmoothBlockModel56", "SmoothBlockModel35", "SmoothBlockModel53", "SmoothBlockModel33", "SmoothBlockModel100", "SmoothBlockModel30", "SmoothBlockModel34", "SmoothBlockModel88", "SmoothBlockModel28", "SmoothBlockModel79", "SmoothBlockModel32", "SmoothBlockModel111", "SmoothBlockModel124", "SmoothBlockModel22", "SmoothBlockModel118", "SmoothBlockModel29", "SmoothBlockModel19", "SmoothBlockModel67", "SmoothBlockModel18", "SmoothBlockModel45", "SmoothBlockModel41", "SmoothBlockModel140", "SmoothBlockModel52", "SmoothBlockModel17", "SmoothBlockModel49", "SmoothBlockModel20", "SmoothBlockModel176", "SmoothBlockModel64", "SmoothBlockModel16", "SmoothBlockModel25", "SmoothBlockModel26", "SmoothBlockModel11", "SmoothBlockModel13", "SmoothBlockModel10", "SmoothBlockModel14", "SmoothBlockModel125", "SmoothBlockModel9", "SmoothBlockModel58", "SmoothBlockModel122", "SmoothBlockModel12", "SmoothBlockModel8", "SmoothBlockModel27", "SmoothBlockModel46", "SmoothBlockModel23", "SmoothBlockModel7", "SmoothBlockModel54", "SmoothBlockModel21", "SmoothBlockModel115", "SmoothBlockModel63", "SmoothBlockModel162", "SmoothBlockModel5", "SmoothBlockModel4", "SmoothBlockModel31", "SmoothBlockModel40", "SmoothBlockModel61", "SmoothBlockModel74", "SmoothBlockModel24", "SmoothBlockModel3", "SmoothBlockModel80", "SmoothBlockModel2", "SmoothBlockModel51", "SmoothBlockModel15", "SmoothBlockModel128", "SmoothBlockModel57", "SmoothBlockModel47", "SmoothBlockModel1", "SmoothBlockModel103", "SmoothBlockModel55", "SmoothBlockModel6", "SmoothBlockModel232", "SmoothBlockModel231", "SmoothBlockModel230", "SmoothBlockModel229", "SmoothBlockModel228", "SmoothBlockModel227", "SmoothBlockModel226", "SmoothBlockModel223", "SmoothBlockModel222", "SmoothBlockModel220", "SmoothBlockModel217", "SmoothBlockModel216", "SmoothBlockModel215", "SmoothBlockModel214", "SmoothBlockModel213", "SmoothBlockModel212", "SmoothBlockModel210", "SmoothBlockModel209", "SmoothBlockModel207", "SmoothBlockModel204", "SmoothBlockModel201", "SmoothBlockModel200", "SmoothBlockModel197", "SmoothBlockModel224", "SmoothBlockModel196", "SmoothBlockModel189", "SmoothBlockModel225", "SmoothBlockModel188", "SmoothBlockModel185", "SmoothBlockModel180", "SmoothBlockModel174", "SmoothBlockModel173", "SmoothBlockModel172", "SmoothBlockModel187", "SmoothBlockModel171", "SmoothBlockModel170", "SmoothBlockModel211", "SmoothBlockModel169", "SmoothBlockModel167", "SmoothBlockModel208", "SmoothBlockModel166", "SmoothBlockModel219", "SmoothBlockModel164", "SmoothBlockModel163", "SmoothBlockModel175", "SmoothBlockModel159", "SmoothBlockModel206", "SmoothBlockModel205", "SmoothBlockModel156", "SmoothBlockModel153", "SmoothBlockModel152", "SmoothBlockModel149", "SmoothBlockModel198", "SmoothBlockModel148", "SmoothBlockModel150", "SmoothBlockModel194", "SmoothBlockModel168", "SmoothBlockModel146", "SmoothBlockModel145", "SmoothBlockModel142", "SmoothBlockModel157", "SmoothBlockModel203", "SmoothBlockModel141", "SmoothBlockModel139", "SmoothBlockModel133", "SmoothBlockModel184", "SmoothBlockModel138", "SmoothBlockModel132", "SmoothBlockModel121", "SmoothBlockModel195", "SmoothBlockModel179", "SmoothBlockModel191", "SmoothBlockModel144", "SmoothBlockModel190", "SmoothBlockModel155", "SmoothBlockModel101", "SmoothBlockModel136", "SmoothBlockModel93", "SmoothBlockModel92", "SmoothBlockModel91", "SmoothBlockModel221", "SmoothBlockModel182", "SmoothBlockModel218", "SmoothBlockModel96", "SmoothBlockModel151", "SmoothBlockModel94", "SmoothBlockModel134", "SmoothBlockModel177", "SmoothBlockModel193", "SmoothBlockModel158", "SmoothBlockModel161", "SmoothBlockModel186", "SmoothBlockModel90", "SmoothBlockModel107", "SmoothBlockModel154", "SmoothBlockModel192", "SmoothBlockModel181", "SmoothBlockModel199", "SmoothBlockModel183", "SmoothBlockModel85", "SmoothBlockModel202", "Jump2", "Jump9", "Jump1", "Jump", "Jump7", "Jump5", "Jump4", "Jump3", "Jump8", "Jump6", "Part61", "Part54", "Part57", "Part53", "Part52", "Part55", "Part51", "Part49", "Part46", "Part44", "Part41", "Part40", "Part37", "Part36", "Part35", "Part39", "Part34", "Part32", "Part38", "Part30", "Part29", "Part26", "Part24", "Part23", "Part43", "Part21", "Part20", "Part33", "Part18", "Part48", "Part13", "Part27", "Part10", "Part59", "Part9", "Part56", "Part8", "Part7", "Part6", "Part12", "Part25", "Part15", "Part4", "Part60", "Part3", "Part5", "Part2", "Part28", "Part11", "Part16", "Part19", "Part22", "Part17", "Part58", "Part1", "Part42", "Part45", "Part14", "Ceiling Wall", "Left Wall", "Back Wall", "Right Wall", "Spawn1", "Spawn2", "Baseplate", "Spawn3", "Chimney"}
		local colors = {Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.584314, 0.47451, 0.466667), Color3.new(0.584314, 0.47451, 0.466667), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.431373, 0.6, 0.792157), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.411765, 0.25098, 0.156863), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.584314, 0.47451, 0.466667), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.411765, 0.25098, 0.156863), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.584314, 0.47451, 0.466667), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.294118, 0.592157, 0.294118), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(1, 1, 0), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(1, 0, 0), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(1, 1, 0), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(1, 0, 0), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0, 1, 0), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0, 1, 0), Color3.new(1, 1, 0), Color3.new(0.972549, 0.972549, 0.972549), Color3.new(0.129412, 0.329412, 0.72549), Color3.new(0.972549, 0.972549, 0.972549), Color3.new(0, 1, 1), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.129412, 0.329412, 0.72549), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.972549, 0.972549, 0.972549), Color3.new(0.0666667, 0.0666667, 0.0666667), Color3.new(1, 0, 0), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0, 1, 0), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0, 1, 1), Color3.new(0.972549, 0.972549, 0.972549), Color3.new(1, 1, 0), Color3.new(1, 1, 0), Color3.new(0.129412, 0.329412, 0.72549), Color3.new(1, 1, 0), Color3.new(0, 1, 1), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.129412, 0.329412, 0.72549), Color3.new(0, 1, 0), Color3.new(0.0666667, 0.0666667, 0.0666667), Color3.new(0, 1, 1), Color3.new(0.129412, 0.329412, 0.72549), Color3.new(1, 0, 0), Color3.new(0.0666667, 0.0666667, 0.0666667), Color3.new(1, 0, 0), Color3.new(0, 1, 0), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(1, 0, 0), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0, 1, 1), Color3.new(0.0666667, 0.0666667, 0.0666667), Color3.new(0.0705882, 0.933333, 0.831373), Color3.new(0.0705882, 0.933333, 0.831373), Color3.new(0.0705882, 0.933333, 0.831373), Color3.new(0.0705882, 0.933333, 0.831373), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.294118, 0.592157, 0.294118), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(0.0666667, 0.0666667, 0.0666667)}
		PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
		for _,v in pairs(workspace.Terrain._Game.Workspace:GetDescendants()) do
			for i,v2 in pairs(parts) do
				if v.Name == v2 then
					spawn(function()

						PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = v, Color = colors[i]})
					end)
				end
			end
		end
		wait()
		PlrChar.Humanoid:UnequipTools(PlrChar.PaintBucket)
		LocalPlayer.Backpack.PaintBucket.Parent = nil
		return
	else
		color = getcolor(color)
	end
	PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
	for _,I in pairs(game.Workspace:GetDescendants()) do
		spawn(function()
			local IsPart = pcall(function()
				if I.Color then
				end
			end)
			if IsPart then
				PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = I, Color = color})
			end
		end)
	end
	wait()
	PlrChar.Humanoid:UnequipTools(PlrChar.PaintBucket)
	LocalPlayer.Backpack.PaintBucket.Parent = nil

end

wait()

commands.setspawnpoint = function(target)
	local target = FindPlayer(target)
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	if target then
		local spawns = { }
		for i,v in pairs(workspace.Terrain._Game.Workspace:GetChildren()) do
			if string.sub(v.Name, 0, 5) == "Spawn" then
				table.insert(spawns, #spawns+1, v)
			end
		end
		for i,v in pairs(spawns) do
			movePart(v, target.Name)
			wait(.3)
		end
		notif("spawn point location has been changed")
		PlrChar.HumanoidRootPart.CFrame = Oldpos
	else
		notif("player not found")
	end
end

wait()

commands.moveregen = function()
	notif("moving regen pad...")
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	movePart(workspace.Terrain._Game.Admin.Regen)
	notif("regen pad has been moved")
	PlrChar.HumanoidRootPart.CFrame = Oldpos
end

wait()

commands.movepads = function()
	notif("moving pads...")
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")) do
		movePart(v.Head)
		wait(.2)
	end
	notif("admin pads has been moved")
	PlrChar.HumanoidRootPart.CFrame = Oldpos
end

wait()

commands.antivg = function(toggle)
	if toggle == "on" then
		antivg = true
		notif("anti vampire gear activated")
	elseif toggle == "off" then
		antivg = false
		notif("anti vampire gear deactivated")
	end
end

wait()

commands.blender = function(target)
	local target = FindPlayer(target)
	if target then
		chat("jail "..target.Name)
		chat("stun "..target.Name)
		chat("spin "..target.Name)
		chat("fire "..target.Name)
		chat("name "..target.Name.." help me")
		notif("success")
	else
		notif("player not found")
	end
end

wait()

commands.game = function()
	Playing = true
	local plrCount = 0
	local timer = 120
	local start = 5
	chat("m we will be playing horor game")
	repeat
		msg("< KohlsNoob >  game begins in "..tostring(start))
		wait(1)
		start = start - 1
	until start == 0
	chat("h the game has began!")
	spawn(function()
		wait(1)
		while true do
			if timer ~= 0 then
				msg("< KohlsNoob >  the game will end in "..tostring(timer).." seconds")
			end
			timer = timer - 1
			if timer <= 0 then
				if Playing and plrCount ~= 1 then
					Playing = false
					chat("fix")
					local results = ""
					for i,v in pairs(gamePlayers) do
						pcall(function()
							if not v.Backpack:FindFirstChild("Bombo'sSurvivalKnife") and not v.Character:FindFirstChild("Bombo'sSurvivalKnife") then
								if i ~= #gamePlayers then
									results = results..v.Name..", "
								else
									results = results..v.Name
								end
							end
						end)
					end
					msg("< KohlsNoob >  the game has ended")
					chat("m the game has ended! winners are: "..results)
					say("the game has ended! winners are: "..results)
					chat("ungear all")
					gamePlayers = { }
					gameEliminated = { }
					killer = nil
				end
				break
			end
			wait(1)
		end
	end)
	chat("time 0")
	chat("unff all")
	chat("name all      ")
	chat("fogend 25")
	chat("fogcolor 0 0 0")
	chat("gear all 31839337")
	chat("gear random 121946387")
	chat("music 143382469")
	say("we will be playing horor game")
	say("the killer needs to kill all people within 2 minutes to win and the innocents should survive within 2 minutes to win")
	say("theres a killer with knife which is random")
	say("who ever survives the longest wins")
	say("if you have knife it means you are the killer and you need to kill everybody to win")
	for i,v in pairs(game.Players:GetPlayers()) do
		table.insert(gamePlayers, #gamePlayers+1, v)
		plrCount = plrCount + 1
		local s = true
		local s2 = true
		v.Character.Humanoid.Died:Connect(function()
			if s and Playing then
				s = false
				plrCount = plrCount - 1
				if plrCount ~= 1 then
					if v.Backpack:FindFirstChild("Bombo'sSurvivalKnife") or v.Character:FindFirstChild("Bombo'sSurvivalKnife") then
						chat("m the killer has died! game over")
						say("the killer has died! game over")
						local results = ""
						for i,v in pairs(gamePlayers) do
							pcall(function()
								if not v.Backpack:FindFirstChild("Bombo'sSurvivalKnife") and not v.Character:FindFirstChild("Bombo'sSurvivalKnife") then
									if i ~= #gamePlayers then
										results = results..v..", "
									else
										results = results..v
									end
								end
							end)
						end
						if results ~= "" then
							chat("m survivors: "..results)
							say("survivors: "..results)
						end
						chat("ungear all")
						gamePlayers = { }
						gameEliminated = { }
						timer = 0
						Playing = false
						chat("fix")
						killer = nil
					else
						local E
						for ii,vv in pairs(gamePlayers) do
							if v == vv then
								E = ii
							end
						end
						chat("m "..v.Name.." has been eliminated")
						pcall(function()
							table.remove(gamePlayers, E)
						end)
						say(v.Name.." has been eliminated")
						table.insert(gameEliminated, #gameEliminated+1, v)
					end
				elseif plrCount == 1 then
					chat("m the killer "..killer.Name.." has won the game! Game Over")
					say("the killer "..killer.Name.." has won the game! Game Over")
					killer = nil
					chat("ungear all")
					Playing = false
					chat("fix")
					gameEliminated = { }
					gamePlayers = { }
					timer = 0
				end
			end
		end)
		v.CharacterAdded:Connect(function(char)
			if s2 and Playing then
				s2 = false
				char:WaitForChild("HumanoidRootPart")
				wait()
				chat("name "..v.Name.." eliminated")
				chat("ff "..v.Name)
			end
		end)
	end
	repeat wait()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Backpack:FindFirstChild("Bombo'sSurvivalKnife") or v.Character:FindFirstChild("Bombo'sSurvivalKnife") then
				killer = v
			end
		end
	until killer ~= nil
	chat("speed "..killer.Name.." 20")
	for i,v in pairs(game.Players:GetPlayers()) do
		if v == killer then
			chat("pm "..v.Name.." You are the killer! You have to find and kill everbody to win before the game ends.")
		else
			chat("pm "..v.Name.." You are a survivor! You have to survive from the killer until the game ends to win")
		end
	end
end

wait()

commands.noob = function(target)
	local target = FindPlayer(target)
	if target then
		chat("char "..target.Name.." 18")
		notif("turned "..target.Name.." to noob")
	else
		notif("player not found")
	end
end

wait()

commands.bacon = function(target)
	local target = FindPlayer(target)
	if target then
		chat("char "..target.Name.." 2568447690")
		notif("turned "..target.Name.." to bacon")
	else
		notif("player not found")
	end
end

wait()

commands.antipunish = function(toggle)
	if toggle == "on" and AntiPunishGToggle.Text == "OFF" then
		toggleAntiPunish()
		notif("anti punish enabled")
	elseif toggle == "off" and AntiPunishGToggle.Text == "ON" then
		toggleAntiPunish()
		notif("anti punish disabled")
	end
end

wait()

commands.thief = function(target)
	if target:lower() == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			chat("unhat "..v.Name)
			chat("name "..v.Name.." Thief")
			chat("speed "..v.Name.." 30")
			chat("trail "..v.Name.." black")
			chat("paint "..v.Name.." black")
			chat("hat "..v.Name.." 20642008")
			chat("hat "..v.Name.." 4855031321")
			chat("hat "..v.Name.." 4904891637")
			chat("shirt "..v.Name.." 4656776376")
			chat("pants "..v.Name.." 129459077")
			chat("hat "..v.Name.." 4531231804")
		end
		notif("morphed everyone into thief")
	else
		local target = FindPlayer(target)
		if target then
			chat("unhat "..target.Name)
			chat("name "..target.Name.." Thief")
			chat("speed "..target.Name.." 30")
			chat("trail "..target.Name.." black")
			chat("paint "..target.Name.." black")
			chat("hat "..target.Name.." 20642008")
			chat("hat "..target.Name.." 4855031321")
			chat("hat "..target.Name.." 4904891637")
			chat("shirt "..target.Name.." 4656776376")
			chat("pants "..target.Name.." 129459077")
			chat("hat "..target.Name.." 4531231804")
			notif("morphed "..target.Name.." into thief")
		else
			notif("player not found")
		end
	end
end

wait()

commands.hacker = function(target)
	if target:lower() == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			chat("unhat "..v.Name)
			chat("hat "..v.Name.." 13702134")
			chat("shirt "..v.Name.." 4800661980")
			chat("pants "..v.Name.." 3149138619")
			chat("hat "..v.Name.." 4995698441")
			chat("name "..v.Name.." Hacker")
			chat("speed "..v.Name.." 30")
			chat("trail "..v.Name.." green")
			chat("paint "..v.Name.." black")
		end
		notif("morphed everyone into hacker")
	else
		local target = FindPlayer(target)
		if target then
			chat("unhat "..target.Name)
			chat("hat "..target.Name.." 13702134")
			chat("shirt "..target.Name.." 4800661980")
			chat("pants "..target.Name.." 3149138619")
			chat("hat "..target.Name.." 4995698441")
			chat("name "..target.Name.." Hacker")
			chat("speed "..target.Name.." 30")
			chat("trail "..target.Name.." green")
			chat("paint "..target.Name.." black")
			notif("morphed "..target.Name.." into hacker")
		else
			notif("player not found")
		end
	end
end

wait()

commands.drop = function(gear, amount)
	for i = 1,tonumber(amount) do
		chat("gear me "..tostring(gear))
		LocalPlayer.Backpack.ChildAdded:Wait()
		local gear = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
		PlrChar.Humanoid:EquipTool(gear)
		if gear.Parent ~= PlrChar then
			repeat PlrChar.Humanoid:EquipTool(gear) wait()
			until gear.Parent == PlrChar
		end
		gear.Parent = workspace
	end	
end

wait()

commands.crash = function()
	local Char = workspace:WaitForChild(game.Players.LocalPlayer.Name)
	local Backpack = game.Players.LocalPlayer:WaitForChild("Backpack")
	function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end

	chat("fogend 0 0 0")
	chat("time 0")
	chat("ambient 255 255 255")
	chat("colorshiftbottom 255 255 255")
	chat("ambient 255 255 255")
	chat("outdoorambient 255 255 255")
	chat("colorshifttop 255 255 255")
	local run = true
	spawn(function()
		while run do
			chat("fogcolor "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)))
			wait()
		end
	end)

	local songs = {
		"3307959033",
		"474545527",
		"2590490779",
		"332422144",
		"909787925",
		"6371179964",
		"6486359635",
		"2325704183",
		"3590110076",
		"6700586581",
		"727097532",
		"292716776"
	}

	wait()
	chat("name all crashed by KohlsNoob")
	chat("music "..songs[math.random(1, #songs)])
	wait(1.5)
	say("KohlsNoob is on top!")
	run = false
	chat("fogend 0")
	chat("fogcolor 0 0 0")
	chat("gear me 94794847")
	msg("Crashed by KohlsNoob")
	wait(.5)
	say("Want the script? Join us now!")

	pcall(function() Char.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher) end)

	wait(.3)
	say("Invite Code: V MS XK jS 5d u")
	pcall(function() Char.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher) end)

	spawn(function()
		while wait() do
			if not LocalPlayer.Backpack:FindFirstChild("VampireVanquisher") and not PlrChar:FindFirstChild("VampireVanquisher") then
				chat("gear me 94794847")
				Char.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher"))
			end
		end
	end)

	delay(2, function() notif("server has been fucked") end)

	while wait() do
		for i = 1,3 do chat("size all 0.3") end
		chat("freeze all")
		for i = 1,3 do chat("size all 10") end
		chat("clone all")
	end

end

wait()

commands.bangears2 = function(target)
	local target = FindPlayer(target)
	if target then
		table.insert(banGearTargets2, #banGearTargets2+1, target.Name)
		local OldPos = PlrChar.HumanoidRootPart.CFrame
		chat("gear me 82357101")
		local tool = LocalPlayer.Backpack:WaitForChild("PortableJustice")
		PlrChar.Humanoid:EquipTool(tool)
		chat("tp me "..target.Name)
		repeat tool:WaitForChild("MouseClick"):FireServer(target.Character) wait()
		until target.Character:FindFirstChild("Part")
		chat("reset "..target.Name)
		PlrChar.HumanoidRootPart.CFrame = OldPos
		PlrChar.Humanoid.Jump = true
		PlrChar.Humanoid:UnequipTools(tool)
		tool.Parent = nil
		msg("< KohlsNoob >  "..target.Name.." has been banned from using gears in this server")
	else
		notif("player not found")
	end
end

wait()

commands.noadminp = function(toggle)
	if toggle == "on" then
		noadminp_ = true
		notif("enabled")
	elseif toggle == "off" then
		noadminp_ = false
		notif("disabled")
	end
end

wait()

commands.antifreeze = function(toggle)
	if toggle == "on" then
		AntiFreeze = true
		notif("anti freeze enabled")
	elseif toggle == "off" then
		AntiFreeze = false
		notif("antifreeze disabled")
	end
end

wait()

commands.invite = function()
	say("Invite Code: V MS XK jS 5d u")
	msg("< KohlsNoob >  Invite Code: V MS XK jS 5d u")
end

wait()

commands.glitchbp = function()
	notif("glitching the baseplate...")
	PlrChar.HumanoidRootPart.CFrame = CFrame.new(-89.960, 3.700, -32.345)
	chat("gear me 19704064")
	chat("gear me 32356064")
	local LocalPlayer = game.Players.LocalPlayer
	local Backpack = LocalPlayer.Backpack
	local Humanoid = workspace:WaitForChild(LocalPlayer.Name):WaitForChild("Humanoid")
	local ice = Backpack:WaitForChild("IceStaff")
	local rocket = Backpack:WaitForChild("BigRocketLauncher")

	ice:WaitForChild("LocalScript"):Destroy()
	rocket:WaitForChild("Client"):Destroy()

	Tool = ice
	Handle = Tool:WaitForChild("Handle")

	Players = game:GetService("Players")
	RunService = game:GetService("RunService")
	UserInputService = game:GetService("UserInputService")

	Animations = {}
	LocalObjects = {}

	ServerControl = Tool:WaitForChild("ServerControl")
	ClientControl = Tool:WaitForChild("ClientControl")

	InputCheck = Instance.new("ScreenGui")
	InputCheck.Name = "InputCheck"
	InputButton = Instance.new("ImageButton")
	InputButton.Name = "InputButton"
	InputButton.Image = ""
	InputButton.BackgroundTransparency = 1
	InputButton.ImageTransparency = 1
	InputButton.Size = UDim2.new(1, 0, 1, 0)
	InputButton.Parent = InputCheck

	Rate = (1 / 60)

	ToolEquipped = false

	function SetAnimation(mode, value)
		if mode == "PlayAnimation" and value and ToolEquipped and Humanoid then
			for i, v in pairs(Animations) do
				if v.Animation == value.Animation then
					v.AnimationTrack:Stop()
					table.remove(Animations, i)
				end
			end
			local AnimationTrack = Humanoid:LoadAnimation(value.Animation)
			table.insert(Animations, {Animation = value.Animation, AnimationTrack = AnimationTrack})
			AnimationTrack:Play(value.FadeTime, value.Weight, value.Speed)
		elseif mode == "StopAnimation" and value then
			for i, v in pairs(Animations) do
				if v.Animation == value.Animation then
					v.AnimationTrack:Stop(value.FadeTime)
					table.remove(Animations, i)
				end
			end
		end
	end

	function CheckIfAlive()
		return (((Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Player and Player.Parent) and true) or false)
	end

	function Equipped(Mouse)
		Character = Tool.Parent
		Player = Players:GetPlayerFromCharacter(Character)
		Humanoid = Character:FindFirstChild("Humanoid")
		ToolEquipped = true
		if not CheckIfAlive() then
			return
		end
		Spawn(function()
			PlayerMouse = Mouse
			Mouse.Button1Down:connect(function()
				InvokeServer("Button1Click", {Down = true})
			end)
			Mouse.Button1Up:connect(function()
				InvokeServer("Button1Click", {Down = false})
			end)
			local PlayerGui = Player:FindFirstChild("PlayerGui")
			if PlayerGui then
				if UserInputService.TouchEnabled then
					InputCheckClone = InputCheck:Clone()
					InputCheckClone.InputButton.InputBegan:connect(function()
						InvokeServer("Button1Click", {Down = true})
					end)
					InputCheckClone.InputButton.InputEnded:connect(function()
						InvokeServer("Button1Click", {Down = false})
					end)
					InputCheckClone.Parent = PlayerGui
				end
			end
		end)
	end

	function Unequipped()
		LocalObjects = {}
		if InputCheckClone and InputCheckClone.Parent then
			InputCheckClone:Destroy()
		end
		for i, v in pairs(Animations) do
			if v and v.AnimationTrack then
				v.AnimationTrack:Stop()
			end
		end
		for i, v in pairs({ObjectLocalTransparencyModifier}) do
			if v then
				v:disconnect()
			end
		end
		Animations = {}
		ToolEquipped = false
	end

	function InvokeServer(mode, value)
		pcall(function()
			local ServerReturn = ServerControl:InvokeServer(mode, value)
			return ServerReturn
		end)
	end
	print("A")
	repeat wait()
	until game.Players.LocalPlayer.Character
	print("B")

	local sizeY = workspace.Terrain._Game.Workspace.Baseplate.Size.Y/2
	local posY = workspace.Terrain._Game.Workspace.Baseplate.Position.Y

	function OnClientInvoke(mode, value)
		if mode == "PlayAnimation" and value and ToolEquipped and Humanoid then
			SetAnimation("PlayAnimation", value)

		elseif mode == "StopAnimation" and value then
			SetAnimation("StopAnimation", value)
		elseif mode == "PlaySound" and value then
			value:Play()
		elseif mode == "StopSound" and value then
			value:Stop()
		elseif mode == "MousePosition" then
			print("C")
			local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			return ((PlayerMouse and {Position = Vector3.new(pos.X*1.2,posY+sizeY,pos.Z*1.2), Target = workspace.Terrain._Game.Workspace.Baseplate}) or nil)
		elseif mode == "SetLocalTransparencyModifier" and value and ToolEquipped then
			pcall(function()
				local ObjectFound = false
				for i, v in pairs(LocalObjects) do
					if v == value then
						ObjectFound = true
					end
				end
				if not ObjectFound then
					table.insert(LocalObjects, value)
					if ObjectLocalTransparencyModifier then
						ObjectLocalTransparencyModifier:disconnect()
					end
					ObjectLocalTransparencyModifier = RunService.RenderStepped:connect(function()
						for i, v in pairs(LocalObjects) do
							if v.Object and v.Object.Parent then
								local CurrentTransparency = v.Object.LocalTransparencyModifier
								if ((not v.AutoUpdate and (CurrentTransparency == 1 or  CurrentTransparency == 0)) or v.AutoUpdate) then
									v.Object.LocalTransparencyModifier = v.Transparency
								end
							else
								table.remove(LocalObjects, i)
							end
						end
					end)
				end
			end)
		end
	end
	ClientControl.OnClientInvoke = OnClientInvoke
	Tool.Equipped:connect(Equipped)
	Tool.Unequipped:connect(Unequipped)

	local Tool564523412 = rocket

	local MouseLoc = Tool564523412:WaitForChild("MouseLoc",10)

	function MouseLoc.OnClientInvoke()
		return workspace:WaitForChild("IceWall"):WaitForChild("IceBlock").Position
	end
	PlrChar.Humanoid.Jump = true
	Humanoid:EquipTool(ice)
	ice:Activate()
	workspace:WaitForChild("IceWall"):WaitForChild("IceBlock")
	Humanoid:UnequipTools(ice)
	ice.Parent = nil
	Humanoid:EquipTool(rocket)
	rocket:Activate()
	workspace:WaitForChild("Part")
	repeat wait()
	until workspace.Terrain._Game.Workspace.Baseplate.AssemblyLinearVelocity ~= Vector3.new(0,0,0)
	PlrChar.Humanoid:UnequipTools(rocket)
	rocket.Parent = nil
	chat("clr")
	chat("fly me")
	msg("< KohlsNoob >  baseplate has been glitched LOL")
end

wait()

commands.shutdown = function()
	delay(2, function()
		notif("the server has been shutdown")
	end)
	while wait() do
		for i = 1,3 do chat("size all 0.3") end
		chat("freeze all")
		for i = 1,3 do chat("size all 10") end
		chat("clone all")
	end
end

wait()

commands.sm = function(hey)
	msg("Server Message: "..hey)
end

wait()

commands.msg = function(str)
	msg(str)
end

wait()

commands.movebricks = function()
	notif("moving obby bricks...")
	local Oldpos = PlrChar.HumanoidRootPart.CFrame
	for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
		movePart(v)
		wait(.2)
	end
	notif("obby bricks has been moved")
	PlrChar.HumanoidRootPart.CFrame = Oldpos
end

wait()

commands.antiattach = function(toggle)
	if toggle == "on" then
		AntiAttach = true
		notif("anti attach enabled")
	elseif toggle == "off" then
		AntiAttach = false
		notif("anti attach disabled")
	end
end

wait()

commands.gallp = function(toggle)
	if toggle == "on" then
		gallp = true
		notif("enabled")
		Regen()
	elseif toggle == "off" then
		gallp = false
		notif("disabled")
	end
end

wait()

commands.rpads = function()
	if rpads then return end
	rpads = true
	local run = true
	notif("rainbow pads running")
	if not PlrChar:FindFirstChild("PaintBucket") then
		chat("gear me 18474459")
		PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
	end
	local paint = RunService.RenderStepped:Connect(function()
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
			spawn(function()
				local s = pcall(function()
					PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = v.Head, Color = colorPart.Color})
				end)
				if not s then
					run = false
					rpads = false
				end
			end)
		end
	end)
	repeat wait()
	until run == false
	paint:Disconnect()
end

wait()

commands.rfloor = function()
	if rfloor then return end
	rfloor = true
	local run = true
	notif("rainbow floor running")
	if not PlrChar:FindFirstChild("PaintBucket") then
		chat("gear me 18474459")
		PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
	end
	local paint = RunService.RenderStepped:Connect(function()
		local s = pcall(function()
			PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = workspace.Terrain._Game.Workspace.Baseplate, Color = colorPart.Color})
		end)
		if not s then
			run = false
			rfloor = false
		end
	end)
	repeat wait()
	until run == false
	paint:Disconnect()
end

wait()

commands.rbricks = function()
	if rbricks then return end
	rbricks = true
	local run = true
	notif("rainbow kill part running")
	if not PlrChar:FindFirstChild("PaintBucket") then
		chat("gear me 18474459")
		PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
	end
	local paint = RunService.RenderStepped:Connect(function()
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
			spawn(function()
				local s = pcall(function()
					PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = v, Color = colorPart.Color})
				end)
				if not s then
					run = false
					rbricks = false
				end
			end)
		end
	end)
	repeat wait()
	until run == false
	paint:Disconnect()
end

wait()

commands.rbox = function()
	if rbox then return end
	rbox = true
	local run = true
	notif("rainbow obby box running")
	if not PlrChar:FindFirstChild("PaintBucket") then
		chat("gear me 18474459")
		PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
	end
	local paint = RunService.RenderStepped:Connect(function()
		for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
			spawn(function()
				local s = pcall(function()
					PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = v, Color = colorPart.Color})
				end)
				if not s then
					run = false
					rbox = false
				end
			end)
		end
	end)
	repeat wait()
	until run == false
	paint:Disconnect()
end

wait()

commands.bodyswap = function(target)
	local target = FindPlayer(target)
	if target then
		chat("char me "..tostring(target.UserId))
		chat("char "..target.Name.." "..tostring(LocalPlayer.UserId))
		chat("name "..target.Name.." "..LocalPlayer.DisplayName)
		chat("name me "..target.DisplayName)
		notif("body swapped")
	else
		notif("player not found")
	end
end

wait()




commands.whitelist = function(target)
	local target = FindPlayer(target)
	if target then
		table.insert(whitelisted, #whitelisted, target)
		notif(target.Name.." has been whitelisted")
	else
		notif("player not found")
	end
end

wait()

commands.blacklist = function(target)
	local target = FindPlayer(target)
	if target then
		table.insert(blacklisted, #blacklisted+1, target.UserId)
		notif(target.Name.." has been blacklisted")
	else
		notif("player not found")
	end
end

wait()

commands.cctp = function(toggle)
	if toggle == "on" then
		tp = true
		notif("enabled")
	elseif toggle == "off" then
		tp = false
		notif("disabled")
	end
end

wait()

commands.yeet = function(target)
	local target = FindPlayer(target)
	if target then
		target = target.Name
		chat("sit "..target)
		chat("nograv "..target)
		chat("ff "..target)
		for i = 0,5 do
			chat("explode "..target)
		end
		notif(target.." has been yeeted")
	else
		notif("player not found")
	end
end

wait()

commands.kit = function(target, kitName)
	if target == "me" then
		target = LocalPlayer.Name
	end
	local function FindKit(String)
		String = RemoveSpaces(String)
		for _, str in pairs(kits.names) do
			if str:lower():match('^'.. String:lower()) then
				return str
			end
		end
		return nil
	end
	local target = FindPlayer(target)
	local kit = FindKit(kitName)
	if target then
		if kit then
			for i,v in pairs(kits.gears[kit]) do
				chat("gear "..target.Name.." "..idhider..v)
			end
			notif("gave "..target.Name.." "..kit.." kit")
		else
			notif("kit not found")
		end
	else
		notif("player not found")
	end
end

wait()

commands.kitlist = function()
	print("------------------------KIT LIST----------------------------")
	for i,v in pairs(kits.names) do
		print(i..". "..v)
	end
	print("------------------------------------------------------------")
	notif("press F9 for the list of kits")
end

wait()

commands.creeper = function(target)
	local target = FindPlayer(target)
	if target then
		target = target.Name
		notif(target.." has been turned into a creeper")
		chat("unff "..target)
		chat("removehats "..target)
		chat("creeper "..target)
		local col = "red"
		wait(1)
		local e
		for i = 1,20 do
			chat("paint "..target.." "..col)
			if col == "red" then 
				col = "green"
			else
				col = "red"
			end
			if i < 11 then
				wait(((10-i)*.1)+(i*.005))
				if i == 10 then
					e = ((10-i)*.1)+(i*.005)
				end
			else
				wait(e)
			end
		end
		wait()
		chat("explode "..target)
	else
		notif("player not found")
	end
end

wait()

commands.theme = function(penis)
	local penis = RemoveSpaces(penis):lower()
	if penis == "snow" then
		chat("fix")
		wait()
		chat("fogcolor 255 255 255")
		chat("fogend 500")
		chat("time 17.4")
		chat("colorshifttop 255 255 255")
		chat("colorshiftbottom 255 255 255")
		chat("gear me 18474459")
		local tool = LocalPlayer.Backpack:WaitForChild("PaintBucket")
		PlrChar.Humanoid:EquipTool(tool)
		for _,I in pairs(workspace.Terrain._Game.Workspace:GetDescendants()) do
			local IsPart = pcall(function()
				if I.Color then
				end
			end)
			if IsPart then
				if I.Color == Color3.fromRGB(196, 40, 28) or I:IsDescendantOf(workspace.Terrain._Game.Workspace.Obby) then
					spawn(function()
						PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = I, Color = Color3.fromRGB(255,255,255)})
					end)
				end
			end
		end	
		wait()
		PlrChar.Humanoid:UnequipTools(PlrChar.PaintBucket)
		LocalPlayer.Backpack.PaintBucket.Parent = nil
		say("server theme set to snow :D")
	elseif penis == "sunset" then
		chat("fix")
		wait()
		chat("time 17.4")
		chat("colorshifttop 600 400 0")
		chat("colorshiftbottom 600 400 0")
		say("server theme set to sunset :D")
	elseif penis == "ice" then
		chat("fix")
		wait()
		chat("fogcolor -100 -400 -600")
		chat("fogend 500")
		chat("time 17.4")
		chat("colorshifttop 0 255 255")
		chat("colorshiftbottom 0 255 255")
		say("server theme set to ice :D")
	elseif penis == "blood" then
		chat("fix")
		wait()
		chat("fogcolor 255 0 0")
		chat("fogend 150")
		chat("ambient 255 0 0")
		chat("colorshifttop 255 0 0")
		chat("colorshiftbottom 255 0 0")
		say("server theme set to blood :D")
	elseif penis == "aesthetic" then
		chat("fix")
		wait()
		chat("time 15")
		chat("fogend 500")
		chat("fogcolor -400, -191, -139")
		chat("outdoorambient 191, 143, 95")
		chat("colorshifttop 255, 191, 139")
		say("server theme set to aesthetic :D")
	elseif penis == "heaven" then
		chat("fix")
		wait()
		chat("time 14")
		chat("fogend 200")
		chat("fogcolor -300, -300, -300")
		chat("outdoorambient -400, -400, -400")
		chat("ambient -400 -400 -400")
	elseif penis == "hell" then
		chat("fix")
		wait()
		chat("time 0")
		chat("outdoorambient -600 0 0")
		chat("ambient -600 0 0")
		chat("fogcolor -600 0 0")
		chat("fogend 500")
		chat("colorshiftbottom -600 0 0")
		chat("colorshifttop -600 0 0")
		chat("brightness 2")
		chat("invis all")
		chat("bonfire all")
		chat("Clone all")
		chat("vis all")
		say("server theme set to hell >;)")
	elseif penis == "dark" then
		chat("fix")
		wait()
		chat("fogend 70")
		chat("fogcolor 0 0 0")
		chat("brightness 0")
		say("server theme set to dark >:D")
	elseif penis == "halloween" then
		chat("gear me 18474459")
		local parts = {"Divider9","Divider6","Divider5","Divider7","Divider3","Back","Divider10","Divider4","Divider2","Divider1","Divider8","Jump0","Jump1","Jump9","Jump2","Jump6","Jump3","Jump4","Jump7","Jump8","Jump5","Left Wall","Ceiling Wall","Back Wall","Right Wall","SmoothBlockModel100","SmoothBlockModel116","SmoothBlockModel82","SmoothBlockModel71","SmoothBlockModel41","SmoothBlockModel15","SmoothBlockModel62","SmoothBlockModel30","SmoothBlockModel14","SmoothBlockModel27","SmoothBlockModel20","SmoothBlockModel13","SmoothBlockModel58","SmoothBlockModel6","SmoothBlockModel51","SmoothBlockModel8","SmoothBlockModel19","SmoothBlockModel18","SmoothBlockModel5","SmoothBlockModel25","SmoothBlockModel9","SmoothBlockModel11","SmoothBlockModel95","SmoothBlockModel33","SmoothBlockModel162","SmoothBlockModel32","SmoothBlockModel29","SmoothBlockModel22","SmoothBlockModel61","SmoothBlockModel63","SmoothBlockModel23","SmoothBlockModel131","SmoothBlockModel24","SmoothBlockModel31","SmoothBlockModel67","SmoothBlockModel178","SmoothBlockModel12","SmoothBlockModel34","SmoothBlockModel4","SmoothBlockModel39","SmoothBlockModel35","SmoothBlockModel40","SmoothBlockModel130","SmoothBlockModel36","SmoothBlockModel48","SmoothBlockModel38","SmoothBlockModel43","SmoothBlockModel44","SmoothBlockModel28","SmoothBlockModel45","SmoothBlockModel47","SmoothBlockModel49","SmoothBlockModel59","SmoothBlockModel60","SmoothBlockModel3","SmoothBlockModel66","SmoothBlockModel70","SmoothBlockModel87","SmoothBlockModel102","SmoothBlockModel74","SmoothBlockModel119","SmoothBlockModel1","SmoothBlockModel77","SmoothBlockModel79","SmoothBlockModel80","SmoothBlockModel76","SmoothBlockModel98","SmoothBlockModel37","SmoothBlockModel83","SmoothBlockModel118","SmoothBlockModel52","SmoothBlockModel10","SmoothBlockModel84","SmoothBlockModel176","SmoothBlockModel64","SmoothBlockModel89","SmoothBlockModel68","SmoothBlockModel86","SmoothBlockModel105","SmoothBlockModel113","SmoothBlockModel42","SmoothBlockModel21","SmoothBlockModel140","SmoothBlockModel143","SmoothBlockModel137","SmoothBlockModel128","SmoothBlockModel120","SmoothBlockModel127","SmoothBlockModel129","SmoothBlockModel75","SmoothBlockModel124","SmoothBlockModel117","SmoothBlockModel115","SmoothBlockModel99","SmoothBlockModel114","SmoothBlockModel110","SmoothBlockModel122","SmoothBlockModel160","SmoothBlockModel2","SmoothBlockModel73","SmoothBlockModel81","SmoothBlockModel7","SmoothBlockModel106","SmoothBlockModel69","SmoothBlockModel50","SmoothBlockModel78","SmoothBlockModel103","SmoothBlockModel108","SmoothBlockModel16","SmoothBlockModel147","SmoothBlockModel165","SmoothBlockModel126","SmoothBlockModel123","SmoothBlockModel26","SmoothBlockModel57","SmoothBlockModel55","SmoothBlockModel17","SmoothBlockModel104","SmoothBlockModel54","SmoothBlockModel65","SmoothBlockModel109","SmoothBlockModel56","SmoothBlockModel46","SmoothBlockModel72","SmoothBlockModel112","SmoothBlockModel53","SmoothBlockModel97","SmoothBlockModel135","SmoothBlockModel111","SmoothBlockModel88","SmoothBlockModel125","SmoothBlockModel107","SmoothBlockModel159","SmoothBlockModel94","SmoothBlockModel121","SmoothBlockModel207","SmoothBlockModel179","SmoothBlockModel85","SmoothBlockModel170","SmoothBlockModel151","SmoothBlockModel92","SmoothBlockModel215","SmoothBlockModel193","SmoothBlockModel93","SmoothBlockModel134","SmoothBlockModel186","SmoothBlockModel139","SmoothBlockModel101","SmoothBlockModel225","SmoothBlockModel189","SmoothBlockModel161","SmoothBlockModel90","SmoothBlockModel222","SmoothBlockModel146","SmoothBlockModel132","SmoothBlockModel150","SmoothBlockModel226","SmoothBlockModel138","SmoothBlockModel141","SmoothBlockModel142","SmoothBlockModel154","SmoothBlockModel201","SmoothBlockModel158","SmoothBlockModel156","SmoothBlockModel164","SmoothBlockModel167","SmoothBlockModel163","SmoothBlockModel173","SmoothBlockModel157","SmoothBlockModel174","SmoothBlockModel175","SmoothBlockModel184","SmoothBlockModel177","SmoothBlockModel188","SmoothBlockModel181","SmoothBlockModel190","SmoothBlockModel205","SmoothBlockModel227","SmoothBlockModel213","SmoothBlockModel204","SmoothBlockModel202","SmoothBlockModel148","SmoothBlockModel216","SmoothBlockModel217","SmoothBlockModel218","SmoothBlockModel197","SmoothBlockModel206","SmoothBlockModel219","SmoothBlockModel183","SmoothBlockModel223","SmoothBlockModel224","SmoothBlockModel228","SmoothBlockModel229","SmoothBlockModel231","SmoothBlockModel203","SmoothBlockModel187","SmoothBlockModel209","SmoothBlockModel155","SmoothBlockModel144","SmoothBlockModel221","SmoothBlockModel214","SmoothBlockModel198","SmoothBlockModel133","SmoothBlockModel230","SmoothBlockModel96","SmoothBlockModel192","SmoothBlockModel172","SmoothBlockModel220","SmoothBlockModel194","SmoothBlockModel185","SmoothBlockModel200","SmoothBlockModel91","SmoothBlockModel166","SmoothBlockModel169","SmoothBlockModel152","SmoothBlockModel149","SmoothBlockModel196","SmoothBlockModel210","SmoothBlockModel195","SmoothBlockModel208","SmoothBlockModel211","SmoothBlockModel136","SmoothBlockModel191","SmoothBlockModel199","SmoothBlockModel153","SmoothBlockModel171","SmoothBlockModel180","SmoothBlockModel212","SmoothBlockModel145","SmoothBlockModel232","SmoothBlockModel168","SmoothBlockModel182","Spawn1","Baseplate","Spawn2","Spawn3","Chimney","Part57","Part56","Part54","Part51","Part49","Part61","Part45","Part41","Part36","Part32","Part27","Part33","Part26","Part25","Part23","Part59","Part20","Part21","Part18","Part17","Part42","Part24","Part16","Part52","Part37","Part14","Part58","Part13","Part19","Part10","Part28","Part39","Part8","Part7","Part40","Part38","Part6","Part15","Part44","Part22","Part4","Part43","Part3","Part2","Part30","Part60","Part34","Part12","Part53","Part35","Part1","Part29","Part46","Part11","Part55","Part48","Part9","Part5"}
		local colors = {Color3.new(0.811765, 0.458824, 0.00392157 ),Color3.new(0.529412, 0.4, 0 ),Color3.new(0.435294, 0.380392, 0 ),Color3.new(0.623529, 0.419608, 0.00392157 ),Color3.new(0.247059, 0.345098, 0 ),Color3.new(0.529412, 0.4, 0 ),Color3.new(0.905882, 0.47451, 0.00392157 ),Color3.new(0.341176, 0.364706, 0 ),Color3.new(0.152941, 0.32549, 0 ),Color3.new(0.0588235, 0.305882, 0 ),Color3.new(0.717647, 0.439216, 0.00392157 ),Color3.new(1, 0, 0 ),Color3.new(0.937255, 0.27451, 0.00784314 ),Color3.new(0.937255, 0, 0.0117647 ),Color3.new(0.937255, 0.0901961, 0.0117647 ),Color3.new(0.937255, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.458824, 0.00392157 ),Color3.new(0.937255, 0.54902, 0.00392157 ),Color3.new(0.937255, 0.733333, 0 ),Color3.new(0.937255, 0.827451, 0 ),Color3.new(0.937255, 0.364706, 0.00784314 ),Color3.new(0.498039, 0.556863, 0.392157 ),Color3.new(0.498039, 0.556863, 0.392157 ),Color3.new(0.498039, 0.556863, 0.392157 ),Color3.new(0.498039, 0.556863, 0.392157 ),Color3.new(0.937255, 0.027451, 0.0117647 ),Color3.new(0.988235, 0.619608, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.545098, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.458824, 0.00392157 ),Color3.new(0.988235, 0.517647, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.694118, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.611765, 0.00392157 ),Color3.new(0.937255, 0.827451, 0 ),Color3.new(0.988235, 0.419608, 0.00784314 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.733333, 0 ),Color3.new(0.937255, 0.733333, 0 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.611765, 0.00392157 ),Color3.new(0.854902, 0.521569, 0.254902 ),Color3.new(0.988235, 0.694118, 0.00392157 ),Color3.new(0.937255, 0.364706, 0.00784314 ),Color3.new(0.937255, 0.796078, 0 ),Color3.new(0.0431373, 0.188235, 0 ),Color3.new(0.937255, 0.611765, 0.00392157 ),Color3.new(0.988235, 0.596078, 0.00392157 ),Color3.new(0.988235, 0.619608, 0.00392157 ),Color3.new(0.937255, 0.490196, 0.00392157 ),Color3.new(0.937255, 0.458824, 0.00392157 ),Color3.new(0.937255, 0.643137, 0.00392157 ),Color3.new(0.0588235, 0.305882, 0 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.568627, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.0431373, 0.188235, 0 ),Color3.new(0.937255, 0.764706, 0 ),Color3.new(0.937255, 0.643137, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.160784, 0.0431373, 0.443137 ),Color3.new(0.0588235, 0.305882, 0 ),Color3.new(0.988235, 0.294118, 0.00784314 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.988235, 0.721569, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.733333, 0 ),Color3.new(0.937255, 0.705882, 0 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.764706, 0 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.67451, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.180392, 0.0117647 ),Color3.new(0.937255, 0, 0.0117647 ),Color3.new(0.937255, 0.54902, 0.00392157 ),Color3.new(0.937255, 0.396078, 0.00784314 ),Color3.new(0.854902, 0.521569, 0.254902 ),Color3.new(0.937255, 0.54902, 0.00392157 ),Color3.new(0.937255, 0.521569, 0.00392157 ),Color3.new(0.937255, 0.827451, 0 ),Color3.new(0.937255, 0.490196, 0.00392157 ),Color3.new(0.988235, 0.443137, 0.00784314 ),Color3.new(0.988235, 0.494118, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.0588235, 0.305882, 0 ),Color3.new(0.670588, 0.658824, 0.619608 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.490196, 0.00392157 ),Color3.new(0.0588235, 0.305882, 0 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.341176, 0.00784314 ),Color3.new(0.937255, 0.121569, 0.0117647 ),Color3.new(0.988235, 0.619608, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.580392, 0.00392157 ),Color3.new(0.937255, 0.67451, 0.00392157 ),Color3.new(0.0588235, 0.305882, 0 ),Color3.new(0.937255, 0.396078, 0.00784314 ),Color3.new(0.937255, 0.243137, 0.00784314 ),Color3.new(0.937255, 0.27451, 0.00784314 ),Color3.new(0.937255, 0.427451, 0.00784314 ),Color3.new(0.937255, 0.305882, 0.00784314 ),Color3.new(0.0588235, 0.305882, 0 ),Color3.new(0.988235, 0.392157, 0.00784314 ),Color3.new(0.937255, 0.427451, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.937255, 0.337255, 0.00784314 ),Color3.new(0.988235, 0.568627, 0.00392157 ),Color3.new(0.0431373, 0.188235, 0 ),Color3.new(0.937255, 0.796078, 0 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.694118, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.596078, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.580392, 0.00392157 ),Color3.new(0.988235, 0.470588, 0.00784314 ),Color3.new(0.988235, 0.596078, 0.00392157 ),Color3.new(0.937255, 0.67451, 0.00392157 ),Color3.new(0.988235, 0.568627, 0.00392157 ),Color3.new(0.0431373, 0.188235, 0 ),Color3.new(0.988235, 0.694118, 0.00392157 ),Color3.new(0.937255, 0.0901961, 0.0117647 ),Color3.new(0.988235, 0.317647, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.796078, 0 ),Color3.new(0.937255, 0.705882, 0 ),Color3.new(0.937255, 0.0588235, 0.0117647 ),Color3.new(0.937255, 0.54902, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.396078, 0.00784314 ),Color3.new(0.988235, 0.368627, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.498039, 0.556863, 0.392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.670588, 0.658824, 0.619608 ),Color3.new(0.0588235, 0.305882, 0 ),Color3.new(0.937255, 0.521569, 0.00392157 ),Color3.new(0.937255, 0.152941, 0.0117647 ),Color3.new(0.937255, 0.211765, 0.00784314 ),Color3.new(0.937255, 0.827451, 0 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.427451, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.392157, 0.00784314 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.521569, 0.00392157 ),Color3.new(0.937255, 0.827451, 0 ),Color3.new(0.937255, 0.764706, 0 ),Color3.new(0.937255, 0.67451, 0.00392157 ),Color3.new(0.937255, 0.611765, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.580392, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.733333, 0 ),Color3.new(0.937255, 0.643137, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.796078, 0 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.317647, 0.00784314 ),Color3.new(0.937255, 0.796078, 0 ),Color3.new(0.937255, 0.521569, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.988235, 0.619608, 0.00392157 ),Color3.new(0.988235, 0.545098, 0.00392157 ),Color3.new(0.937255, 0.427451, 0.00784314 ),Color3.new(0.937255, 0.490196, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.67451, 0.00392157 ),Color3.new(0.937255, 0.705882, 0 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.54902, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.796078, 0 ),Color3.new(0.937255, 0.490196, 0.00392157 ),Color3.new(0.937255, 0.396078, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.294118, 0.00784314 ),Color3.new(0.988235, 0.596078, 0.00392157 ),Color3.new(0.937255, 0.611765, 0.00392157 ),Color3.new(0.988235, 0.341176, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.427451, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.54902, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.988235, 0.517647, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.827451, 0 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.764706, 0 ),Color3.new(0.937255, 0.611765, 0.00392157 ),Color3.new(0.988235, 0.494118, 0.00392157 ),Color3.new(0.937255, 0.458824, 0.00392157 ),Color3.new(0.988235, 0.470588, 0.00784314 ),Color3.new(0.988235, 0.694118, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.521569, 0.00392157 ),Color3.new(0.937255, 0.490196, 0.00392157 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.67451, 0.00392157 ),Color3.new(0.937255, 0.705882, 0 ),Color3.new(0.937255, 0.458824, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.580392, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.733333, 0 ),Color3.new(0.937255, 0.705882, 0 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.937255, 0.764706, 0 ),Color3.new(0.937255, 0.580392, 0.00392157 ),Color3.new(0.937255, 0.396078, 0.00784314 ),Color3.new(0.988235, 0.643137, 0.00392157 ),Color3.new(0.988235, 0.419608, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.988235, 0.443137, 0.00784314 ),Color3.new(0.988235, 0.368627, 0.00784314 ),Color3.new(0.937255, 0.733333, 0 ),Color3.new(0.988235, 0.568627, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.396078, 0.00784314 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.937255, 0.458824, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.94902, 0.952941, 0.952941 ),Color3.new(0.937255, 0.54902, 0.00392157 ),Color3.new(0.0666667, 0.0666667, 0.0666667 ),Color3.new(0.639216, 0.635294, 0.647059 ),Color3.new(0.666667, 0.333333, 0 ),Color3.new(0.639216, 0.635294, 0.647059 ),Color3.new(0.639216, 0.635294, 0.647059 ),Color3.new(0.239216, 0.0823529, 0.521569 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.639216, 0.635294, 0.647059 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.505882, 0.137255, 0.00392157 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.384314, 0.145098, 0.819608 ),Color3.new(0.305882, 0.113725, 0.654902 ),Color3.new(0.384314, 0.145098, 0.819608 ),Color3.new(0.156863, 0.0588235, 0.333333 ),Color3.new(0.631373, 0.168627, 0.00392157 ),Color3.new(0.258824, 0.0666667, 0 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.505882, 0.137255, 0.00392157 ),Color3.new(0.258824, 0.0666667, 0 ),Color3.new(0.631373, 0.168627, 0.00392157 ),Color3.new(0.403922, 0.109804, 0.00392157 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.321569, 0.0862745, 0 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.639216, 0.635294, 0.647059 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.792157, 0.211765, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.258824, 0.0666667, 0 ),Color3.new(0.792157, 0.211765, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.505882, 0.137255, 0.00392157 ),Color3.new(0.384314, 0.145098, 0.819608 ),Color3.new(0.505882, 0.137255, 0.00392157 ),Color3.new(0.0980392, 0.0352941, 0.211765 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.403922, 0.109804, 0.00392157 ),Color3.new(0.321569, 0.0862745, 0 ),Color3.new(0.321569, 0.0862745, 0 ),Color3.new(0.321569, 0.0862745, 0 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.505882, 0.137255, 0.00392157 ),Color3.new(0.631373, 0.168627, 0.00392157 ),Color3.new(0.631373, 0.168627, 0.00392157 ),Color3.new(0.792157, 0.211765, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.639216, 0.635294, 0.647059 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.321569, 0.0862745, 0 ),Color3.new(0.639216, 0.635294, 0.647059 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.384314, 0.145098, 0.819608 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.631373, 0.168627, 0.00392157 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.988235, 0.266667, 0.00784314 ),Color3.new(0.403922, 0.109804, 0.00392157 ),Color3.new(0.403922, 0.109804, 0.00392157 )}
		PlrChar.Humanoid:EquipTool(LocalPlayer.Backpack:WaitForChild("PaintBucket"))
		for _,v in pairs(workspace.Terrain._Game.Workspace:GetDescendants()) do
			for i,v2 in pairs(parts) do
				if v.Name == v2 then
					spawn(function()
						PlrChar.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = v, Color = colors[i]})
					end)
				end
			end
		end
		wait()
		PlrChar.Humanoid:UnequipTools(PlrChar.PaintBucket)
		LocalPlayer.Backpack.PaintBucket.Parent = nil
		say("server theme set to halloween :D")
	end
end

wait()

commands.equip = function(id, amount)
	if id == "all" then
		for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
			v.Parent = PlrChar
			if v.Parent ~= PlrChar then
				spawn(function()
					repeat v.Parent = PlrChar wait()
					until v.Parent == PlrChar
				end)
			end
		end
		return
	end
	for i = 1,tonumber(amount) do
		chat("gear me "..id)
		LocalPlayer.Backpack.ChildAdded:Wait()
		local gear = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
		gear.Parent = PlrChar
		if gear.Parent ~= PlrChar then
			spawn(function()
				repeat gear.Parent = PlrChar wait()
				until gear.Parent == PlrChar
			end)
		end
	end
end

wait()

commands.sunset = function()
	notif("doing sunset...")
	for i = 0, 300, 001 do
		chat("time 14."..tostring(i))
		wait()
	end
end

wait()

commands.sunrise = function()
	notif("doing sunrise...")
	for i = 300, 0, -001 do
		chat("time 14."..tostring(i))
		wait()
	end
end

wait()

commands.themelist = function()
	print("---------------------THEME LIST--------------------------")
	print("1. snow")
	print("2. sunset")
	print("3. ice")
	print("4. blood")
	print("5. aesthetic")
	print("6. heaven")
	print("7. hell")
	print("8. dark")
	print("------------------------------------------------------------")
	notif("press F9 for the list of the themes")
end

wait()

commands.clear = function()
	for i,v in pairs(game.CoreGui.ChatLogs_53641ywqhd.Base.ScrollingFrame:GetChildren()) do
		if not v:IsA("UIListLayout") then
			v:Destroy()
		end
	end
end

wait()

commands.clrlogs = function()
	for i = 1, 200 do
		chat("logs clearing "..tostring(math.random(1,100)))
	end
	wait()
	chat("logs has been cleared")
end

wait()

commands.poll = function(s, a)
	if pollActive then return notif("previous poll is active") end
	pollActive = true
	notif("poll has been started")
	local statement = s
	local answers = pollAnswers.answers
	local ans = a:split(" ")
	local a = ""
	for i,v in pairs(ans) do
		if v ~= "" and v ~= " " then
			table.insert(pollAnswers.answers, i, v)
			table.insert(pollAnswers.votes, i, 0)
			if i ~= #ans then
				a = a..v.." or "
			else
				a = a..v
			end
		end
	end
	for i = 30, 0, -1 do
		msg("Poll: "..statement.." | say "..a.." to vote | poll ends in "..tostring(i))
		wait(1)
	end
	local b = ""
	for i,v in pairs(pollAnswers.votes) do
		if i ~= #pollAnswers.votes then
			b = b..answers[i]..": "..tostring(pollAnswers.votes[i]).." | "
		else
			b = b..answers[i]..": "..tostring(pollAnswers.votes[i])
		end
	end
	msg("Poll Results: "..b)
	pollActive = false
	pollAnswers.answers = {}
	pollVoted = {}
	pollAnswers.votes = {}
end

wait()

commands.rspeed = function(speed)
	rspeed = tonumber(speed)
	notif("rainbow speed has been set to "..rspeed)
end

wait()

commands.findregen = function()
	notif("searching for regen pad...")
	local root = PlrChar.HumanoidRootPart
	root.Anchored = true
	repeat 
		wait()
		root.CFrame = CFrame.new(-7.165, root.Position.Y+2000 , 94.743)
	until workspace.Terrain._Game.Admin:FindFirstChild("Regen")
	root.Anchored = false
	root.CFrame = workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0,3,0)
	notif("regen pad has been found")
end

wait()

commands.clone = function(amount)
	amount = tonumber(amount)
	if amount > 99 then return chat("you are being rate limited") end
	local a = 0
	for i,v in pairs(workspace:GetChildren()) do
		if v.Name == PlrChar.Name then
			a = a + 1
		end
	end
	notif("spawning "..tostring(amount).." clones...")
	for i = 1,amount do
		chat("gear me "..idhider.."72644644")
	end
	repeat wait()
	until #LocalPlayer.Backpack:GetChildren() == amount
	for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
		v.Parent = PlrChar
		v:Activate()
		PlrChar.Humanoid:UnequipTools(v)
		delay(5, function()
			v.Parent = LocalPlayer.Backpack
			wait()
			v.Parent = nil
		end)
	end
	repeat wait()
		local b = 0
		for i,v in pairs(workspace:GetChildren()) do
			if v.Name == PlrChar.Name then
				b = b + 1
			end
		end
	until b == a+amount
	notif("clones has been spawned")
end

wait()

commands.antiabuse = function(toggle)
	if toggle == "on" then
		antiAbuse = true
		notif("anti abuse has been enabled")
	elseif toggle == "off" then
		antiAbuse = false
		notif("anti abuse has been disabled")
	end
end

wait()

commands.stopbl = function()
	blacklistAntiCrash = false
	chat("blacklist anti crash disabled")
end

wait()

commands.topads = function()
	local pads = Pads:GetChildren()
	local pos = pads[math.random(1,#pads)].Head.Position
	PlrChar.HumanoidRootPart.CFrame = CFrame.new(pos.X, pos.Y+5, pos.Z)
	notif("teleported you to a random pad")
end

wait()

commands.mute = function()
	for i = 1,100 do
		game.Players:Chat("h aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	end
	notif("action success")
end

wait()

commands.fps = function(toggle)
	if toggle == "on" then
		antilag = true
		notif("anti lag enabled")
	elseif toggle == "off" then
		antilag = false
		notif("antilag disabled")
	end
end

wait()

commands.antilog = function(toggle) 
	if toggle == "on" then
		antilog = true
		notif("anti logs activated")
	elseif toggle == "off" then
		notif("anti logs disabled")
	end
end

wait()

commands.fuck = function(target)
	target = FindPlayer(target)
	if target then
		target = target.Name
		local aa31423 = true
		chat("respawn "..target)
		chat("jail "..target)
		chat("punish "..target)
		game.Players:Chat(prefix.."spam explode"..string.rep(" "..string.sub(target,1,3),240))
		notif("attemping to crash "..target)
		game.Players.PlayerRemoving:Connect(function(p52436)
			if aa31423 and p52436.Name == target then
				aa31423 = false
				game.Players:Chat(prefix.."unspam")
			end
		end)
	else
		notif("player not found")
	end
end

wait()

commands.antijail = function(toggle)
	if toggle == "on" then
		antijail = true
		notif("anti jail enabled")
	elseif toggle == "off" then
		antijail = false
		notif("anti jail disabled")
	end
end

wait()

commands.bsod = function(lol)
	local msg = [[
:(                                                                                

The server ran into a problem and needs reboot. We're
just collecting some error info, and we'll reboot for      
you.                                                                           

20% complete                                                             


...............  for more information, join KohlsNoob           
...............  Invite Code: V MS XK jS 5d u                     
...............                                                                   
...............  stop code: SERVER_CRASHED                 
]]
	local line = [[

]]
	chat("blind all")
	chat("h "..string.rep(line,30)..msg)
	wait(1)
	game.Players:Chat(prefix.."shutdown")
end

wait()

commands.fspin = function(target)
	target = FindPlayer(target)
	if target then
		target = target.Name
		chat("unfly "..target)
		chat("nograv "..target)
		chat("stun "..target)
		chat("spin "..target)
		notif("float spinned "..target)
	else
		notif("player not found")
	end
end

wait()

commands.antiseizure = function(toggle)
	if toggle == "on" then
		antiseizure = true
		notif("anti seizure activated")
	elseif toggle == "off" then
		antiseizure = false
		notif("anti seizure deactivated")
	end
end

wait()

commands.copys = function()
	for i,v in pairs(workspace.Terrain._Game:GetDescendants()) do
		if v:IsA("Sound") and v.Parent.Name ~= "ExtraBricks" then
			setclipboard(tostring(v.SoundId:split("=")[2]))
		end
	end
	notif("copied song id")
end

wait()

commands.keybind = function(arg)
	if RemoveSpaces(arg[1]) == "clear" then
		keybinds = {}
		keybinds_ = {}
		notif("cleared your keybinds")
	end
	local key 
	local cmd = arg[1]
	for i,v in pairs(arg) do
		if #v == 1 then
			key = v
		end
	end
	if #arg >= 3 then
		cmd = ""
		for i,v in pairs(arg) do
			if v ~= key then
				cmd = cmd..v.." "
			end
		end
	end
	keybinds[Enum.KeyCode[key:upper()]] = cmd
	keybinds_[cmd] = Enum.KeyCode[key:upper()]
	notif("keybind has been set")
end

wait()

commands.vkeybinds = function()
	print("---------------------YOUR KEYBINDS--------------------------")
	for i,v in pairs(keybinds_) do
		print(tostring(v):split(".")[3].." - "..keybinds[v])
	end
	print("------------------------------------------------------------")
	notif("press F9 for the list of your keybinds")
end

wait()

commands.noclip = function(toggle)
	if toggle == "on" then
		noclip = true
		notif("noclip has been enabled")
	elseif toggle == "off" then
		noclip = false
		notif("noclip has been disabled")
	end
end

wait()

commands.cop = function(target)
	target = FindPlayer(target)
	if target then
		local t = target.Name
		chat("unhat "..t)
		chat("shirt "..t.." 3759924160")
		chat("hat "..t.." 7310970599")
		chat("face "..t.." 86487700")
		chat("pants "..t.." 6214369602")
		chat("gear "..t.." 95354288")
		chat("gear "..t.." 82357101")
		chat("gear "..t.." 82357123")
		notif("turned "..t.." into a cop")
	else
		notif("player not found")
	end
end

wait()

commands.padenforce = function(toggle)
	if toggle == "on" and padenforceGToggle.Text == "OFF" then
		togglePadenforce()
		notif("padenforce enabled")
	elseif toggle == "off" and padenforceGToggle.Text == "ON" then
		togglePadenforce()
		notif("padenforce disabled")
	end
end

wait()

commands.dark = function()
	chat("brightness 0")
	chat("outdoorambient 0 0 0")
	chat("time 0")
end

wait()

local Game_ = workspace.Terrain._Game
commands.troubleshoot = function()
	local c364193 = Color3.fromRGB(255, 85, 0)
	local pads = Game_.Admin.Pads
	local padsCount = 0
	for i,v in pairs(pads:GetChildren()) do
		if v:FindFirstChild("Head") then
			padsCount = padsCount + 1
		end
	end
	if padsCount == 9 then
		notif("troubleshoot: all admin pads found",c364193)
	elseif padsCount == 0 then
		notif("troubleshoot: all admin pads missing",c364193)
	else
		notif("troubleshoot: "..tostring(9-padsCount).." admin pads missing",c364193)
	end
	notif("troubleshoot: "..(tostring(Game_.Workspace:FindFirstChild("Baseplate")):gsub("nil","baseplate missing"):gsub("Baseplate","baseplate found")),c364193)
	notif("troubleshoot: "..(tostring(Game_.Admin:FindFirstChild("Regen")):gsub("nil","regen pad missing"):gsub("Regen","regen pad found")),c364193)
	local dqwnd3 = #Game_.Admin.Pads:GetChildren()
	if dqwnd3 == 0 then
		notif("troubleshoot: all obby jumps missing",c364193)
	elseif dqwnd3 == 9 then
		notif("troubleshoot: all obby jumps found",c364193)
	else
		notif("troubleshoot: "..tostring(10-dqwnd3).." obby jumps missing",c364193)
	end
end

wait()

commands.antigc = function(toggle)
	if toggle == "on" and AntiGrayScaleGToggle.Text == "OFF" then
		toggleAntiGrayScale()
		notif("anti gray scale enabled")
	elseif toggle == "off" and AntiGrayScaleGToggle.Text == "ON" then
		toggleAntiGrayScale()
		notif("anti gray scale disabled")
	end
end

wait()

commands.delete = function(target)
	target = FindPlayer(target)
	if target then
		for i = 1,50 do
			chat("skydive "..target.Name)
		end
		wait(.1)
		chat("speed "..target.Name.." inf")
	else
		notif("player not found")
	end
end

wait()

commands.taxi = function(target)
	target = FindPlayer(target)
	if target then
		target = target.Name
		chat("dog "..target)
		chat("paint "..target.." gold")
		chat("speed "..target.." 100")
		chat("trail "..target.." gold")
		chat("god "..target)
		chat("name "..target.." TAXI")
		chat("unhat "..target)
	else
		notif("player not found")
	end
end

wait()

commands.findpad = function()
	notif("searching for an admin pad")
	local root = PlrChar.HumanoidRootPart
	root.Anchored = true
	repeat 
		wait()
		root.CFrame = CFrame.new(-32.764, root.Position.Y+2000 , 94.343)
	until workspace.Terrain._Game.Admin.Pads:FindFirstChildOfClass("Model"):FindFirstChild("Head")
	root.Anchored = false
	root.CFrame = workspace.Terrain._Game.Admin.Pads:FindFirstChildOfClass("Model").Head.CFrame + Vector3.new(0,3,0)
	notif("an admin pad has been found")
end

wait()

commands.rainbow = function(toggle)
	if toggle == "on" then
		rainbow = true
		notif("rainbow enabled")
	elseif toggle == "off" then
		rainbow = false
		notif("rainbow disabled")
	end
end

wait()

commands.cmds = function()
	notif("press F9 for a list of current of commands")
	wait(.1)
	print("wow looks like you outsmarted my outsmarting, congrats ig xd")
	print("oh well, these are the current commands i can do")
	print("---------------------MAIN COMMANDS--------------------------")
	print("*main commands have a fixed prefix of '>'*")
	print(prefix.."prefix -- changes the command prefix")
	print(prefix.."songlist -- list of playable songs in this script")
	print(prefix.."bangears2 [target] -- ban the target from gears but remake version")
	print(prefix.."crash -- Lmao")
	--print(">charlist -- list of current chars within the script")
	print(prefix.."noadminp [on/off] -- unpunish urself if not admin or perm")
	print(prefix.."invite -- displays discord invite")
	print(prefix.."rej -- BRUH MAKES YOU REJOIN OFC")
	print(prefix.."serhop -- ok this is an abbreviation of server hop, not the name of my physics teacher")
	print(prefix.."dsaok -- disables the obby kill blocks, weird name for a command innit")
	print(prefix.."movebp -- pretty explanatory")
	print(prefix.."resetp -- reset the admin pads")
	print(prefix.."un/spam [command] -- bruh")
	print(prefix.."spamspeed [num] -- sets the intervals for spamming")
	print(prefix.."sspam -- safer spam, it only runs at a certain limit tho (it's safer because it avoids warns/bans, hopefully)")
	print(prefix.."ssloop [num] -- sets the amount of times the safe spam command will repeat")
	print(prefix.."lag [target] -- lags a player? jokes on you this lags the whole server")
	print(prefix.."void [target] -- my Stand, Cream, shall send the target to the emptiness of the dark realm.")
	print(prefix.."ascend [target] -- makes a player literally transcend")
	print(prefix.."kc -- erase time thing")
	print(prefix.."zw -- stop time thing")
	print(prefix.."floorkill/unfk [target] -- kills a player everytime they respawn")
	print(prefix.."play [musicname] -- play my favorite songs! also what are you doing at my spotify playlist")
	print(prefix.."antifreeze [on/off] -- self explanatory")
	print(prefix.."bangears/unbg [target] -- explanatory as well")
	print(prefix.."un/discofog [interval] -- rainbow fog ooooo very naysu")
	print(prefix.."antimusic [on/off] -- locks the recently played music (credits to shade for this :D)")
	--print(prefix.."songinfo -- displays the details of the current playing song")
	print(prefix.."antikill [on/off]-- self explanatory")
	print(prefix.."antiblind [on/off]-- self explanatory")
	print(prefix.."anticrash [on/off]-- self explanatory (not accurate)")
	print(prefix.."antifling [on/off]-- self explanatory")
	print(prefix.."tohouse -- teleports you to the house")
	print(prefix.."tospawn -- teleports you to the spawn")
	print(prefix.."toregen -- teleports you to the regen pad")
	print(prefix.."table -- throws alot of explosive table")
	print(prefix.."bomb -- plants alot of bombs")
	print(prefix.."paintm [color3] -- paints the whole map")
	print(prefix.."admins -- gets all the admin pads")
	print(prefix.."setspawnpoint [target] -- sets the spawn point near the target")
	print(prefix.."moveregen -- moves then regen pad")
	print(prefix.."movepads -- moves all the admin pads")
	print(prefix.."antivg -- prevents people from having vampire gear")
	print(prefix.."blender [target] -- do something funny on the target")
	print(prefix.."game -- starts a horor game")
	print(prefix.."bacon [target] -- turns the target into bacon")
	print(prefix.."noob [target] -- turns the target into noob")
	print(prefix.."antipunish [on/off] -- self explanatory")
	print(prefix.."thief [target] -- morphs someone into thief")
	print(prefix.."hacker [target] -- morphs someone into hacker")
	print(prefix.."drop [gear ID] [gear ammount] -- drops alot of gear")
	print(prefix.."glitchbp -- glitches the baseplate")
	print(prefix.."sm [message] -- server message")
	print(prefix.."msg [message] -- you will see")
	print(prefix.."shutdown -- instantly shutdown the fucking server")
	print(prefix.."movebricks -- move obby bricks")
	print(prefix.."antiattach [on/off] -- prevents people from attaching to parts")
	print(prefix.."gallp [on/off] -- auto grab all admin pad when reset")
	print(prefix.."rpads -- rainbow pads")
	print(prefix.."rfloor -- rainbow floor")
	print(prefix.."rbricks -- rainbow obby kill part")
	print(prefix.."rbox -- rainbow obby box")
	print(prefix.."bodyswap [target] -- self explanatory")
	print(prefix.."whitelist [target] -- lets the target use the commands")
	print(prefix.."blacklist [target] -- runs the anti crash when the target joined your server")
	print(prefix.."yeet [target] -- yeet the heck out of them")
	print(prefix.."cctp [on/off] -- (control click tp) allows you to teleport anywhere you click while holding Ctrl key")
	print(prefix.."kit [target] [kit name] -- oh yeah")
	print(prefix.."kitlist -- list of the kits within the script")
	print(prefix.."creeper [target] -- turns the target into creeper then explode them")
	print(prefix.."theme [theme name] -- sets the server theme")
	print(prefix.."equip [gear ID] [gear ammount] -- equips multiple gear")
	print(prefix.."sunset -- sun/moon sunset animation")
	print(prefix.."sunrise -- sun/moon sunrise animation")
	print(prefix.."themelist -- list of the current themes within the script")
	print(prefix.."clear -- clears the logs of KohlsNoob chat logs")
	print(prefix.."clrlogs -- clears the logs")
	print(prefix.."poll [statement] [,] [answers] -- starts a poll")
	print(prefix.."rspeed [number speed] -- set the rainbow speed. default is 0.5")
	print(prefix.."findregen -- finds the regen pad if its not found")
	print(prefix.."code [short script] -- executes the code")
	print(prefix.."clone [amount] -- spawns any amount of clone u want that is below 100")
	print(prefix.."antiabuse [on/off] -- anti freezze, anti punish, anti kill, anti blind and anti jail for everyone")
	print(prefix.."stopbl -- stops the blacklist anti crash")
	print(prefix.."mute -- temporarily disable the chat")
	print(prefix.."topads -- teleports you to any admin pad")
	print(prefix.."fps [on/off] -- prevents lag from exploisions or fire for you")
	print(prefix.."antilog [on/off] prevents people from seing logs")
	print(prefix.."fuck [target] -- attempts to crash the target (it may take a while)")
	print(prefix.."antijail [on/off] -- anti jail")
	print(prefix.."bsod -- black screen of death")
	print(prefix.."fspin [target] -- float spin the target")
	print(prefix.."antiseizure [on/off] -- prevents you from being seizured")
	print(prefix.."copys -- puts the song id of the current playing song in your clipboard")
	print(prefix..'keybind [command] [key] -- sets your keybind. do ">keybind clear" to clear your keybinds')
	print(prefix.."vkeybinds -- view all your keybinds")
	print(prefix.."noclip [on/off] -- toggle noclip and it allows you to walk through walls")
	print(prefix.."cop [target] -- morphs the target into a cop and gives them cop gears")
	print(prefix..[[padenforce [on/off] -- everyone can only grab 1 pad, if they grab more, admin pad will reset and respawn them]])
	print(prefix.."troubleshoot -- yes u will see things")
	print(prefix.."antigc [on/off] -- prevents you from being color blinded by the time stop gear")
	print(prefix.."delete [target] -- lol")
	print(prefix.."taxi [target] -- turn the target into taxi xd")
	print(prefix.."findpad -- search for a pad if missing")
	print("i'd really love your feedback on this one, and your suggestions are a lot of help :D")
	print("------------------------------------------------------------")
end                          

lUdiF2TGD = true
for i,v in pairs(data) do
	game.Players:Chat(v)
end
notif("KohlsNoob loaded")
startup_cmds()
wait(10)
notif("Credits to gamingkhoaito#1014 and haroldjd2017ipad#4295 for this amazing script :D")
--[[
  _  __   ____    _    _   _         _____     _   _    ____     ____    ____  
 | |/ /  / __ \  | |  | | | |       / ____|   | \ | |  / __ \   / __ \  |  _ \ 
 | ' /  | |  | | | |__| | | |      | (___     |  \| | | |  | | | |  | | | |_) |
 |  <   | |  | | |  __  | | |       \___ \    | . ` | | |  | | | |  | | |  _ < 
 | . \  | |__| | | |  | | | |____   ____) |   | |\  | | |__| | | |__| | | |_) |
 |_|\_\  \____/  |_|  |_| |______| |_____/    |_| \_|  \____/   \____/  |____/ 
]]						
