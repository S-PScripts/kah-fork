local root = game.Players.LocalPlayer.Character.HumanoidRootPart
root.Anchored = true
repeat
	task.wait()
	root.CFrame = CFrame.new(-7.165, root.Position.Y + 2500 , 94.743)
until workspace.Terrain._Game.Admin:FindFirstChild("Regen")
root.Anchored = false
root.CFrame = workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0, 3, 0)
