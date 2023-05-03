local mouse = game.Players.LocalPlayer:GetMouse()

local light = "f"
local gae = "g"

    mouse.KeyDown:connect(function(key)
    if key:lower() == light then
        game.Players:Chat("particle me p")
        game.Players:Chat("invisible me")
        game.Players:Chat("speed me 50")
        game.Players:Chat("music 5507336814")
        wait(0.3)
        game.Players:Chat("music 0")
    end
end)

    mouse.KeyDown:connect(function(key)
    if key:lower() == gae then
        game.Players:Chat("unparticle me")
        game.Players:Chat("vis me")
        game.Players:Chat("speed me 16")
    end
end)