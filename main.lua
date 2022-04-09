for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    local bp = Instance.new("BodyPosition")
    v.Parent = game.Players.LocalPlayer.Character
    bp.Parent = v.Handle
    bp.Position = game.Players.LocalPlayer.Character.Head.Position
    v.Handle.Parent = workspace
    
    
    wait(0.5)
    local counter = 1
    spawn(function()
        while wait() do
            counter = counter + 1
            bp.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,counter,0)
            if counter == 5 then
                counter = 1
            end
            wait(0.1)
        end
    end)
end
