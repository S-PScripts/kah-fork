local prefix = '/'
local wl = {}
local player

local on = false

function getplayername(plr)
  for i, v in pairs(game.Players:GetPlayers()) do
      if string.sub(v.Name:lower(), 1, #plr) == plr then
          player = v.Name
        end
    end
end

function d()
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name and not table.find(wl, v.Name) then
if game.Players:FindFirstChild(v.Name) then
if on == true then
game.Players:Chat('punish '..v.Name)
end
end
end
end
end 

d() 

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.sub(msg, 1, #prefix+2) == prefix..'wl' then
        getplayername(string.sub(msg, #prefix+4, #msg))
        table.insert(wl, player)
        game.Players:Chat('unpunish '..player)
    end
    
    if string.sub(msg, 1, #prefix+4) == prefix..'unwl' then
        getplayername(string.sub(msg, #prefix+6, #msg))
        table.remove(wl, player)
    end
    
    if string.sub(msg, 1, #prefix+2) == prefix..'on' then
        on = true
        d()
    end
    
    if string.sub(msg, 1, #prefix+3) == prefix..'off' then
        on = false
        game.Players:Chat('unpunish all')
    end
end)


game.Workspace.ChildAdded:Connect(d)
