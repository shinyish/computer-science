local Players = game:GetService("Players")

local function leaderstats(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player
    
    local value = Instance.new("IntValue")
    value.Name = "Age"
    value.Value = player.AccountAge
    value.Parent = leaderstats
end

Players.PlayerAdded:Connect(leaderstats)
