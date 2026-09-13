--// Teleport + God Mode (Xeno)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local player = Players.LocalPlayer

pcall(function() CoreGui:FindFirstChild("GodTP"):Destroy() end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GodTP"
ScreenGui.Parent = CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 180, 0, 160)
Frame.Position = UDim2.new(0, 10, 0, 10)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.4
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)

local Coords = Instance.new("TextLabel")
Coords.Size = UDim2.new(1, -10, 0, 18)
Coords.Position = UDim2.new(0, 5, 0, 5)
Coords.Text = "516, 70, -367"
Coords.TextColor3 = Color3.fromRGB(255, 255, 100)
Coords.BackgroundTransparency = 1
Coords.Font = Enum.Font.Code
Coords.TextSize = 13
Coords.Parent = Frame

local TPBtn = Instance.new("TextButton")
TPBtn.Size = UDim2.new(0.85, 0, 0, 30)
TPBtn.Position = UDim2.new(0.075, 0, 0, 28)
TPBtn.Text = "TELEPORT + STAY"
TPBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
TPBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
TPBtn.Font = Enum.Font.GothamBold
TPBtn.TextSize = 12
TPBtn.Parent = Frame

Instance.new("UICorner", TPBtn).CornerRadius = UDim.new(0, 6)

local GodBtn = Instance.new("TextButton")
GodBtn.Size = UDim2.new(0.85, 0, 0, 30)
GodBtn.Position = UDim2.new(0.075, 0, 0, 65)
GodBtn.Text = "GOD MODE"
GodBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GodBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
GodBtn.Font = Enum.Font.GothamBold
GodBtn.TextSize = 12
GodBtn.Parent = Frame

Instance.new("UICorner", GodBtn).CornerRadius = UDim.new(0, 6)

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -10, 0, 14)
Status.Position = UDim2.new(0, 5, 0, 102)
Status.Text = "WYŁĄCZONY"
Status.TextColor3 = Color3.fromRGB(255, 80, 80)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 10
Status.Parent = Frame

local LechuLabel = Instance.new("TextLabel")
LechuLabel.Size = UDim2.new(1, 0, 0, 16)
LechuLabel.Position = UDim2.new(0, 0, 1, -20)
LechuLabel.Text = "LECHU SCRIPT"
LechuLabel.TextColor3 = Color3.fromRGB(0, 170, 255)
LechuLabel.BackgroundTransparency = 1
LechuLabel.Font = Enum.Font.GothamBold
LechuLabel.TextSize = 11
LechuLabel.Parent = Frame

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 18, 0, 18)
CloseBtn.Position = UDim2.new(1, -22, 0, 2)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 80, 80)
CloseBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 10
CloseBtn.Parent = Frame

Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 4)

local tpEnabled = false
local godEnabled = false
local tpConn = nil
local godConn = nil

local function startTP()
    if tpConn then tpConn:Disconnect() end
    tpConn = RunService.Heartbeat:Connect(function()
        if not tpEnabled then return end
        local char = player.Character
        if char then
            local root = char:FindFirstChild("HumanoidRootPart")
            if root then
                root.CFrame = CFrame.new(516.2, 73.5, -367.1)
                root.Velocity = Vector3.new(0, 0, 0)
            end
        end
    end)
end

local function startGod()
    if godConn then godConn:Disconnect() end
    godConn = RunService.Stepped:Connect(function()
        if not godEnabled then return end
        local char = player.Character
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.Health = hum.MaxHealth
            end
        end
    end)
end

local function startTouchBypass()
    local char = player.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    local lastHealth = hum.Health
    hum.HealthChanged:Connect(function(newHealth)
        if godEnabled and newHealth < lastHealth then
            hum.Health = lastHealth
        end
        lastHealth = hum.Health
    end)
end

TPBtn.MouseButton1Click:Connect(function()
    tpEnabled = not tpEnabled
    if tpEnabled then
        TPBtn.Text = "STOP TELEPORT"
        TPBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
        startTP()
        Status.Text = "TP: ON"
        Status.TextColor3 = Color3.fromRGB(100, 255, 100)
    else
        if tpConn then tpConn:Disconnect() end
        TPBtn.Text = "TELEPORT + STAY"
        TPBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
        Status.Text = "WYŁĄCZONY"
        Status.TextColor3 = Color3.fromRGB(255, 80, 80)
    end
end)

GodBtn.MouseButton1Click:Connect(function()
    godEnabled = not godEnabled
    if godEnabled then
        GodBtn.Text = "GOD: ON"
        GodBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        startGod()
        startTouchBypass()
        Status.Text = "TP: " .. (tpEnabled and "ON" or "OFF") .. " | GOD: ON"
        Status.TextColor3 = Color3.fromRGB(100, 255, 100)
    else
        if godConn then godConn:Disconnect() end
        GodBtn.Text = "GOD MODE"
        GodBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
        Status.Text = "TP: " .. (tpEnabled and "ON" or "OFF") .. " | GOD: OFF"
        Status.TextColor3 = Color3.fromRGB(255, 150, 0)
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    tpEnabled = false
    godEnabled = false
    if tpConn then tpConn:Disconnect() end
    if godConn then godConn:Disconnect() end
    ScreenGui:Destroy()
end)

player.CharacterAdded:Connect(function(char)
    task.wait(2)
    if godEnabled then
        startGod()
        startTouchBypass()
    end
end)

print("[GodTP] LECHU SCRIPT loaded!")
