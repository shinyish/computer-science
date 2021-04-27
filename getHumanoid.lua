local part = script.Parent

local function onPart(part)
  local op = part.Parent
  local humanoid = op:FindFirstChild("Humanoid")
end

part.Touched:Connect(onPart)
