local Players = game:GetService("Players")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DetectedUI"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 400, 0, 180)
frame.Position = UDim2.new(0.5, -200, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = frame

local messageLabel = Instance.new("TextLabel")
messageLabel.Name = "MessageLabel"
messageLabel.Size = UDim2.new(1, -20, 0, 90)
messageLabel.Position = UDim2.new(0, 10, 0, 15)
messageLabel.BackgroundTransparency = 1
messageLabel.Text = "This script is currently detected.\nPlease do not use it. It will be available again soon."
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.TextWrapped = true
messageLabel.TextScaled = false
messageLabel.Font = Enum.Font.GothamBold
messageLabel.TextSize = 20
messageLabel.Parent = frame

local timerLabel = Instance.new("TextLabel")
timerLabel.Name = "TimerLabel"
timerLabel.Size = UDim2.new(1, -20, 0, 40)
timerLabel.Position = UDim2.new(0, 10, 1, -55)
timerLabel.BackgroundTransparency = 1
timerLabel.Text = "Closing in 10..."
timerLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
timerLabel.Font = Enum.Font.Gotham
timerLabel.TextSize = 16
timerLabel.Parent = frame

local timeLeft = 10
task.spawn(function()
	while timeLeft > 0 do
		timerLabel.Text = "Closing in " .. timeLeft .. "..."
		task.wait(1)
		timeLeft -= 1
	end

	screenGui:Destroy()
end)
