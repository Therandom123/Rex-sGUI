local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LuaExecutor"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 350)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -175)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui
mainFrame.Visible = true

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 10)
frameCorner.Parent = mainFrame

local frameShadow = Instance.new("ImageLabel")
frameShadow.Size = UDim2.new(1, 50, 1, 50)
frameShadow.Position = UDim2.new(0, -25, 0, -25)
frameShadow.Image = "rbxassetid://1316045217"
frameShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
frameShadow.ImageTransparency = 0.5
frameShadow.ScaleType = Enum.ScaleType.Slice
frameShadow.SliceCenter = Rect.new(10, 10, 118, 118)
frameShadow.BackgroundTransparency = 1
frameShadow.Parent = mainFrame

local creditsButton = Instance.new("TextButton")
creditsButton.Size = UDim2.new(0, 100, 0, 40)
creditsButton.Position = UDim2.new(0, 10, 0, -50)
creditsButton.Text = "Credits"
creditsButton.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
creditsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
creditsButton.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 380, 0, 40)
titleLabel.Position = UDim2.new(0, 10, 0, 5)
titleLabel.Text = "Rex's Executor"
titleLabel.TextSize = 20
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = mainFrame

local buttonClickSound = Instance.new("Sound", screenGui)
buttonClickSound.SoundId = "rbxassetid://6042053626"
buttonClickSound.Volume = 0.5

local scriptBox = Instance.new("TextBox")
scriptBox.Size = UDim2.new(0, 380, 0, 200)
scriptBox.Position = UDim2.new(0, 10, 0, 50)
scriptBox.PlaceholderText = "Enter your Lua script here..."
scriptBox.TextWrapped = true
scriptBox.TextScaled = false
scriptBox.TextSize = 14
scriptBox.MultiLine = true
scriptBox.ClearTextOnFocus = false
scriptBox.TextColor3 = Color3.fromRGB(255, 255, 255)
scriptBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
scriptBox.Parent = mainFrame

local scriptBoxCorner = Instance.new("UICorner")
scriptBoxCorner.CornerRadius = UDim.new(0, 10)
scriptBoxCorner.Parent = scriptBox

local function addButtonEffects(button, originalColor, resizeOnHover)
    if resizeOnHover then
        button.MouseEnter:Connect(function()
            button:TweenSize(UDim2.new(0, 130, 0, 50), "Out", "Quad", 0.2, true)
        end)
        
        button.MouseLeave:Connect(function()
            button:TweenSize(UDim2.new(0, 120, 0, 40), "Out", "Quad", 0.2, true)
        end)
    end
    
    button.MouseButton1Click:Connect(function()
        buttonClickSound:Play()
        button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        wait(0.1)
        button.BackgroundColor3 = originalColor
    end)
end

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0, 120, 0, 40)
executeButton.Position = UDim2.new(0, 10, 0, 260)
executeButton.Text = "Execute"
executeButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
executeButton.Parent = mainFrame
addButtonEffects(executeButton, executeButton.BackgroundColor3, true)

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0, 120, 0, 40)
clearButton.Position = UDim2.new(0, 140, 0, 260)
clearButton.Text = "Clear"
clearButton.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
clearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
clearButton.Parent = mainFrame
addButtonEffects(clearButton, clearButton.BackgroundColor3, true)

local deleteButton = Instance.new("TextButton")
deleteButton.Size = UDim2.new(0, 120, 0, 40)
deleteButton.Position = UDim2.new(0, 270, 0, 260)
deleteButton.Text = "Delete"
deleteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
deleteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
deleteButton.Parent = mainFrame
addButtonEffects(deleteButton, deleteButton.BackgroundColor3, true)

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 380, 0, 40)
closeButton.Position = UDim2.new(0, 10, 0, 310)
closeButton.Text = "Close"
closeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = mainFrame
addButtonEffects(closeButton, closeButton.BackgroundColor3, false)

local creditsLabel = Instance.new("TextLabel")
creditsLabel.Size = UDim2.new(0, 380, 0, 80)
creditsLabel.Position = UDim2.new(0, 10, 0, 160)
creditsLabel.Text = "Rex's Executor\nCreated by trapzee\nDiscord: trapzee\nThank you for using!"
creditsLabel.TextSize = 16
creditsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
creditsLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
creditsLabel.BackgroundTransparency = 0.3
creditsLabel.TextWrapped = true
creditsLabel.Visible = false
creditsLabel.Parent = mainFrame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)

buttonCorner:Clone().Parent = executeButton
buttonCorner:Clone().Parent = clearButton
buttonCorner:Clone().Parent = deleteButton
buttonCorner:Clone().Parent = closeButton
buttonCorner:Clone().Parent = creditsButton

-- Notification Function
local function showNotification(message)
    local notification = Instance.new("TextLabel")
    notification.Size = UDim2.new(0, 300, 0, 50)
    notification.Position = UDim2.new(0.5, -150, 0, -50)
    notification.Text = message
    notification.TextSize = 18
    notification.TextColor3 = Color3.fromRGB(255, 255, 255)
    notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    notification.BackgroundTransparency = 0.4
    notification.Parent = screenGui
    wait(3)
    notification:Destroy()
end

executeButton.MouseButton1Click:Connect(function()
    local scriptText = scriptBox.Text
    local func = loadstring(scriptText)
    if func then
        pcall(func)
        showNotification("Script executed successfully!")
    else
        showNotification("Invalid Lua script.")
        warn("Invalid Lua script.")
    end
end)

clearButton.MouseButton1Click:Connect(function()
    scriptBox.Text = ""
end)

deleteButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Modified close button logic to show mobile GUI with touch and click support
closeButton.MouseButton1Click:Connect(function()
    mainFrame:TweenPosition(UDim2.new(0.5, -200, 0.5, 500), "Out", "Quad", 0.5, true, function()
        mainFrame.Visible = false
        reopenButton.Visible = true
    end)
end)

creditsButton.MouseButton1Click:Connect(function()
    creditsLabel.Visible = not creditsLabel.Visible
end)

local reopenButton = Instance.new("TextButton")
reopenButton.Size = UDim2.new(0, 100, 0, 50)
reopenButton.Position = UDim2.new(0.5, -50, 0.9, -25)
reopenButton.Text = "Reopen"
reopenButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
reopenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
reopenButton.Visible = false
reopenButton.Parent = screenGui

-- Show GUI when reopen button is pressed (for both mobile and desktop)
reopenButton.MouseButton1Click:Connect(function()
    mainFrame.Position = UDim2.new(0.5, -200, 0.5, 500)
    mainFrame.Visible = true
    mainFrame:TweenPosition(UDim2.new(0.5, -200, 0.5, -175), "Out", "Quad", 0.5, true)
    reopenButton.Visible = false
end)

-- Loading Screen
local loadingScreen = Instance.new("Frame")
loadingScreen.Size = UDim2.new(1, 0, 1, 0)
loadingScreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
loadingScreen.Parent = screenGui

local loadingLabel = Instance.new("TextLabel")
loadingLabel.Size = UDim2.new(0, 400, 0, 100)
loadingLabel.Position = UDim2.new(0.5, -200, 0.5, -50)
loadingLabel.Text = "Thank you for using my script :)"
loadingLabel.TextSize = 24
loadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingLabel.BackgroundTransparency = 1
loadingLabel.Parent = loadingScreen

wait(3)  -- Display the loading screen for 3 seconds
loadingScreen:Destroy()

mainFrame.Position = UDim2.new(0.5, -200, 0.5, 500)
mainFrame.Visible = true
mainFrame:TweenPosition(UDim2.new(0.5, -200, 0.5, -175), "Out", "Quad", 0.5, true)

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Insert then
        if mainFrame.Visible then
            mainFrame:TweenPosition(UDim2.new(0.5, -200, 0.5, 500), "Out", "Quad", 0.5, true, function()
                mainFrame.Visible = false
                reopenButton.Visible = true
            end)
        else
            mainFrame.Position = UDim2.new(0.5, -200, 0.5, 500)
            mainFrame.Visible = true
            mainFrame:TweenPosition(UDim2.new(0.5, -200, 0.5, -175), "Out", "Quad", 0.5, true)
            reopenButton.Visible = false
        end
    end
end)
