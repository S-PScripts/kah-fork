-- epic crash script by kohls

local Char = workspace:WaitForChild(game.Players.LocalPlayer.Name)
function chatted(i) game.Players:Chat(i) end
function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
function logn(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Crash Script"; 
		Text = msg; 
		Duration = 5;
	})
end
local function FindServer()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
			amount = v.playing
		end
	end
	if #x > 0 then
		logn("Joining a server with "..amount.." Players")
		wait(0.25)
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	else
		logn(":(")
	end
end

if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then	
	Success, err1 = pcall(function()
		local gameFlr = game:GetService("Workspace").Terrain["_Game"]
		if gameFlr.Admin:FindFirstChild("Regen") then
			function TsprF(c) fireclickdetector(gameFlr.Admin.Regen.ClickDetector, c) end
			TsprF(1)
			TsprF(0)
		end
	end)
end

if err1 then
	logn("an error ocured: "..err1)
	FindServer()
end

local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
local Success2, err2 = pcall(function()
	for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")) do
		firetouchinterest(Char["Left Leg"], v.Head, 0)
		firetouchinterest(Char["Left Leg"], v.Head, 1)
		wait()
	end
end)

if not Success2 then
	logn("an error ocured: "..err2)
	FindServer()
end
chatted("fogend 0 0 0")
chatted("time 0")
chatted("ambient 255 255 255")
chatted("colorshiftbottom 255 255 255")
chatted("ambient 255 255 255")
chatted("outdoorambient 255 255 255")
chatted("colorshifttop 255 255 255")

spawn(function()
	while true do
		chatted("fogcolor "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)).." "..tostring(math.random(0, 255)))
		wait()
	end
end)

local songs = {
	"3307959033",
	"474545527",
	"2590490779",
	"332422144",
	"909787925"
}

wait()
chatted("m HEHE BOI")
chatted("name all rip")
chatted("music "..songs[math.random(1, #songs)])

wait(1.5)

chatted("blind all")
chatted("h oh dear")
chatted("blind all")
chatted("gear me 94794847")

wait(.5)

pcall(function() Char.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.VampireVanquisher) end)
say("kohls admin house crash speedrun")
say("GET CRASHED")

wait(.3)

for i = 1,100 do
	for i = 1,3 do chatted("size all 0.3") end
	chatted("freeze all")
	for i = 1,3 do chatted("size all 10") end
	chatted("clone all")
end

wait(4)
logn("Server has been fucked")
wait(1)
FindServer()
