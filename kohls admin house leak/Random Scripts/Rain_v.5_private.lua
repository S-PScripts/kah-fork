local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Rain v.5", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://9825749343",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Main"
})

OrionLib:MakeNotification({
	Name = "Rain v.5",
	Content = "gui loaded made by AyItsRachel",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Tab:AddButton({
	Name = "scv2",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Qltxi/SCV2/main/Obfuscated%20SCV2-NP'),true))()
  	end    
})

Tab:AddButton({
	Name = "iy",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

Tab:AddButton({
	Name = "ntos admin",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/TwomadJR/nto/main/admiin"))()
  	end    
})

Tab:AddButton({
	Name = "dark khols",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Games/Kohls%20Admin%20House/DarkKohls/GUI.lua"))()
  	end    
})

Tab:AddButton({
	Name = "night khols",
	Callback = function()
      		loadstring(game:HttpGet('https://gist.githubusercontent.com/ScaleneSoap9803/3828d1ec1bec480b60f41b29e346bb93/raw/6614198753a67ab35d7970b6a8acb6ea9d30ce34/Night%2520Kohls%2520Beta'))()
  	end    
})

Tab:AddButton({
	Name = "leaked script",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebin.com/raw/0m8dsrDH'),true))()
  	end    
})

Tab:AddButton({
	Name = "kholscool",
	Callback = function()
      		loadstring(game:HttpGet("https://muhara.neocities.org/kohlsgui/maingui.txt"))()
  	end    
})
