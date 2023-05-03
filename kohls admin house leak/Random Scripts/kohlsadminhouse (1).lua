--[[
       _         _     _                 _ 
      | | _____ | |__ | |___  __ _ _   _(_)
      | |/ / _ \| '_ \| / __|/ _` | | | | |
      |   < (_) | | | | \__ \ (_| | |_| | |
      |_|\_\___/|_| |_|_|___/\__, |\__,_|_|
                             |___/
           == made by muhara#6937 ==
]]
--beta switch
getgenv().kohlsguibeta = false --loads the beta build instead of the stable build if on
--gui switches
getgenv().allanti = true --enables all antis in the gui if on
getgenv().fakepermadmin = true --gives you perm admin if you dont have the gamepass if on
getgenv().mutemusic = true --enables mutemusic if on [useful for yt showcases]
--loadstring
loadstring(game:HttpGet("https://muhara.neocities.org/kohlsgui/maingui.txt"))()