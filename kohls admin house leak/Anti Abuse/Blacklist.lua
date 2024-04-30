--[[
;blacklist [user abbreviation]       blacklists a user in your server if they dont exist, blacklists raw username (exactly what you typed)

;unblacklist [user abbreviation]     unblacklists user
;nopads                              stops grabbing pads
;unspam                              stops spamming size all 10

]]


local plrs = game:GetService'Players'
local lp = plrs.LocalPlayer
local http = game:GetService'HttpService'
function jsone(str) return http:JSONEncode(str) end
function jsond(str) return http:JSONDecode(str) end
local data

if not isfile('blacklist.json') then
    data = {}
    writefile('blacklist.json', jsone(data))
else
    data = jsond(readfile('blacklist.json'))
end
for i,v in pairs(data) do print(i, v) end


local spamming = false
local abusepads = false
local abusingpads = coroutine.create(function()
    while true do
        pcall(function() fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0) end)
        for i,v in pairs(game.Workspace.Terrain._Game.Admin.Pads:GetChildren()) do
            pcall(function()
                firetouchinterest(lp.Character:WaitForChild('HumanoidRootPart'), v.Head.TouchInterest.Parent, 1)
            end)
        end
        game:GetService('RunService').Heartbeat:Wait()
        if not abusepads then coroutine.yield() end
    end
end)


function notify(title, text, dur)
    game.StarterGui:SetCore("SendNotification", {
        Title = title; 
        Text = text; 
        Duration = dur or 5;
    })
end
function getplayer(plr)
    for i,v in pairs(plrs:GetPlayers()) do
        if v.Name:lower():sub(1, plr:len()) == plr:lower() then return v end
    end
end
lp.Chatted:Connect(function(msg)
    local args = msg:split(' ')
    if args[1]:lower() == ';unspam' then
        spamming = false
    elseif args[1]:lower() == ';nopads' then
        abusepads = false
    elseif args[1]:lower() == ';blacklist' then
        local user = getplayer(args[2])
        if user then
            data[#data+1] = user.Name
            notify('Ass', 'Blacklisted '..user.Name)
        else
            data[#data+1] = args[2]
            notify('Ass', 'Blacklisted '..args[2])
        end
        writefile('blacklist.json', jsone(data))
    elseif args[1]:lower() == ';unblacklist' then
        for i,v in pairs(data) do
            if v:lower():sub(1, args[2]:len()) == args[2]:lower() then notify('Ass', 'Unblacklisted '..v) table.remove(data, i) break end
        end
        writefile('blacklist.json', jsone(data))
    end
end)

function playerjoin(plr)
    if table.find(data, plr.Name) then
        print('found user')
        spamming = true
        coroutine.wrap(function()
            while spamming do
                wait()
                plrs:Chat('size all 10')
            end
        end)()
        coroutine.resume(abusingpads)
    end
end
plrs.PlayerAdded:Connect(playerjoin)
for i,v in pairs(plrs:GetPlayers()) do
    playerjoin(v)
end
