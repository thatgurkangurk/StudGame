local player = game.Players.LocalPlayer

repeat task.wait() until player.Character

player.PlayerGui.ScreenGui.TextLabel.Text = "Jump Power: "..tostring(player.Character.Humanoid.JumpPower)

player.Character.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
    player.PlayerGui.ScreenGui.TextLabel.Text = "Jump Power: "..tostring(player.Character.Humanoid.JumpPower)
end)