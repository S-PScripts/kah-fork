--[[

                                                                                                                                                      
     *****    **                                                                                 * ***                                                
  ******  *  **** *                                                                            *  ****  *                  *                          
 **   *  *   *****                       **                                                   *  *  ****                  **                          
*    *  *    * *                         **                                                  *  **   **                   **                          
    *  *     *                            **    ***                             ****        *  ***                      ********              ****    
   ** **     *         ***       ****      **    ***     ***    ***  ****      * **** *    **   **             ****    ********     ***      * **** * 
   ** **     *        * ***     * ***  *   **     ***   * ***    **** **** *  **  ****     **   **   ***      * ***  *    **       * ***    **  ****  
   ** ********       *   ***   *   ****    **      **  *   ***    **   ****  ****          **   **  ****  *  *   ****     **      *   ***  ****       
   ** **     *      **    *** **    **     **      ** **    ***   **    **     ***         **   ** *  ****  **    **      **     **    ***   ***      
   ** **     **     ********  **    **     **      ** ********    **    **       ***       **   ***    **   **    **      **     ********      ***    
   *  **     **     *******   **    **     **      ** *******     **    **         ***      **  **     *    **    **      **     *******         ***  
      *       **    **        **    **     **      *  **          **    **    ****  **       ** *      *    **    **      **     **         ****  **  
  ****        **    ****    * **    **      *******   ****    *   **    **   * **** *         ***     *     **    **      **     ****    * * **** *   
 *  *****      **    *******   ***** **      *****     *******    ***   ***     ****           *******       ***** **      **     *******     ****    
*     **              *****     ***   **                *****      ***   ***                     ***          ***   **             *****              
*                                                                                                                                                     
 **                                                                                                                                                   
                                                                                                                                                      
                                                                                                                                                      
                                                                                                                                                      
for Kohls Admin House NBC

]]--

--// written by sIeazish
--// autopaint by shade4real

local plrs = game.Players
local lp = plrs.LocalPlayer

local MessageSender = require(game.Chat.ChatScript.ChatMain.MessageSender)
MessageSender:RegisterSayMessageFunction(game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest)

coroutine.wrap(function()
    local char = lp.Character or lp.CharacterAdded:Wait()
    for l,k in pairs(game:GetService'Workspace'.Terrain['_Game'].Workspace:GetDescendants()) do
        coroutine.wrap(function()
            --[[


            COLOR HERE
            |
            |
            v


            ]]
            local color = Color3.fromRGB(255, 255, 255) --RGB COLOR
            if k then
                local suc,er = pcall(function() lp.Character:WaitForChild("PaintBucket"):WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", {Part = k,Color = color}) end)
                if not suc then print(er) end
            end
        end)()
    end
    plrs:Chat('gear me 00000000000000000000000000000000000000000000000000000000000000018474459')
    local bucket = lp.Backpack:WaitForChild('PaintBucket')
    lp.Character.Humanoid:EquipTool(bucket)
end)()
plrs:Chat('fix')
wait()
plrs:Chat('removehats all')
plrs:Chat('paint all white')
plrs:Chat('hat all 3770623985')
plrs:Chat('hat all 6503401221')
plrs:Chat('face all 209995366')
plrs:Chat('name all Angelic Being')
wait()
plrs:Chat('fogcolor 255 255 255')
plrs:Chat('fogend 50')
plrs:Chat('colorshifttop 600 400 0')
plrs:Chat('colorshiftbottom 600 400 0')
plrs:Chat('colorshifttop 600 400 0')
plrs:Chat('music 1477839754')
plrs:Chat('brightness 0.25')
wait()
plrs:Chat('h Welcome to heaven! - N Organization')
wait(3)
plrs:Chat('ungear me')
