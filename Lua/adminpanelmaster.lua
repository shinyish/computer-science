game.ReplicatedStorage.Events.Open.OnServerEvent:Connect(function(player)
	local GUI = game.ReplicatedStorage:WaitForChild("BlogsAdminPanel"):Clone()
	GUI.Parent = player.PlayerGui
end)

game.ReplicatedStorage.Events.Kick.OnServerEvent:Connect(function(player, target)
	game.Players:FindFirstChild(tostring(target)):Kick("You were kicked by " .. player.Name)
end)

game.ReplicatedStorage.Events.Announce.OnServerEvent:Connect(function(player, msg)
	local announcementUi = game.ReplicatedStorage.Announcement
	local clone = announcementUi:Clone()
	clone.Frame.author.Text = player.Name .. " says..."
	clone.Frame.msg.Text = tostring(msg)
	
	for i,v in pairs(game.Players:GetChildren()) do
		clone.Parent = v.PlayerGui
		wait(5)
		clone:Destroy()
	end
end)

game.ReplicatedStorage.Events.ServerMsg.OnServerEvent:Connect(function(player, msg)
	local serverMessageUi = game.ReplicatedStorage.ServerMessage
	local clone = serverMessageUi:Clone()
	
	clone.Frame.content.Text = player.Name .. ":" .. tostring(msg)
	
	for i,v in pairs(game.Players:GetChildren()) do
		clone.Parent = v.PlayerGui
	end
end)
