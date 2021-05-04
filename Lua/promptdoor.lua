local proximityprompt = script.Parent.ProximityPrompt

proximityprompt.Triggered:Connect(function(player)
	local door = script.Parent
	
	door.Transparency = 0.5
	door.CanCollide = false
	wait(2)
	door.Transparency = 0
	door.CanCollide = true
end)
