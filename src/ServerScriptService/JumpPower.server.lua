game.Players.PlayerAdded:Connect(function(player)
    -- player joined the game
    player.CharacterAdded:Connect(function(char)
        -- character has spawned
        char.Humanoid.UseJumpPower = true
        char.Humanoid.JumpPower = 0
    end)
end)

-- create a loop that runs every half second
-- loop thru all players in game
-- increment jump power

while task.wait(0.5) do
    -- run every half second

    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            -- only run if character exists
            player.Character.Humanoid.JumpPower += 1
        end
    end

end