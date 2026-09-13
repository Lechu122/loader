--// LECHU SCRIPT v3 (Xeno)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local player = Players.LocalPlayer

pcall(function() CoreGui:FindFirstChild("LechuScript"):Destroy() end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LechuScript"
ScreenGui.Parent = CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 370)
Frame.Position = UDim2.new(0, 10, 0, 10)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "LECHU SCRIPT"
Title.TextColor3 = Color3.fromRGB(0, 170, 255)
Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.Parent = Frame
Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 8)

local TPBtn = Instance.new("TextButton")
TPBtn.Size = UDim2.new(0.85, 0, 0, 28)
TPBtn.Position = UDim2.new(0.075, 0, 0, 38)
TPBtn.Text = "TELEPORT (516,70,-367)"
TPBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
TPBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
TPBtn.Font = Enum.Font.GothamBold
TPBtn.TextSize = 11
TPBtn.Parent = Frame
Instance.new("UICorner", TPBtn).CornerRadius = UDim.new(0, 6)

local GodBtn = Instance.new("TextButton")
GodBtn.Size = UDim2.new(0.85, 0, 0, 28)
GodBtn.Position = UDim2.new(0.075, 0, 0, 72)
GodBtn.Text = "GOD MODE"
GodBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GodBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
GodBtn.Font = Enum.Font.GothamBold
GodBtn.TextSize = 11
GodBtn.Parent = Frame
Instance.new("UICorner", GodBtn).CornerRadius = UDim.new(0, 6)

-- Hitbox
local HitboxLabel = Instance.new("TextLabel")
HitboxLabel.Size = UDim2.new(0.85, 0, 0, 16)
HitboxLabel.Position = UDim2.new(0.075, 0, 0, 108)
HitboxLabel.Text = "HITBOX SIZE:"
HitboxLabel.TextColor3 = Color3.fromRGB(255, 255, 100)
HitboxLabel.BackgroundTransparency = 1
HitboxLabel.Font = Enum.Font.Gotham
HitboxLabel.TextSize = 10
HitboxLabel.TextXAlignment = Enum.TextXAlignment.Left
HitboxLabel.Parent = Frame

local HitboxBox = Instance.new("TextBox")
HitboxBox.Size = UDim2.new(0.5, 0, 0, 24)
HitboxBox.Position = UDim2.new(0.075, 0, 0, 125)
HitboxBox.PlaceholderText = "Rozmiar"
HitboxBox.Text = "20"
HitboxBox.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HitboxBox.Font = Enum.Font.Gotham
HitboxBox.TextSize = 11
HitboxBox.ClearTextOnFocus = false
HitboxBox.Parent = Frame
Instance.new("UICorner", HitboxBox).CornerRadius = UDim.new(0, 6)

local HitboxBtn = Instance.new("TextButton")
HitboxBtn.Size = UDim2.new(0.33, 0, 0, 24)
HitboxBtn.Position = UDim2.new(0.62, 0, 0, 125)
HitboxBtn.Text = "HITBOX: OFF"
HitboxBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 0)
HitboxBtn.Font = Enum.Font.GothamBold
HitboxBtn.TextSize = 10
HitboxBtn.Parent = Frame
Instance.new("UICorner", HitboxBtn).CornerRadius = UDim.new(0, 6)

-- Reach
local ReachLabel = Instance.new("TextLabel")
ReachLabel.Size = UDim2.new(0.85, 0, 0, 16)
ReachLabel.Position = UDim2.new(0.075, 0, 0, 157)
ReachLabel.Text = "REACH SIZE:"
ReachLabel.TextColor3 = Color3.fromRGB(255, 255, 100)
ReachLabel.BackgroundTransparency = 1
ReachLabel.Font = Enum.Font.Gotham
ReachLabel.TextSize = 10
ReachLabel.TextXAlignment = Enum.TextXAlignment.Left
ReachLabel.Parent = Frame

local ReachBox = Instance.new("TextBox")
ReachBox.Size = UDim2.new(0.5, 0, 0, 24)
ReachBox.Position = UDim2.new(0.075, 0, 0, 174)
ReachBox.PlaceholderText = "Rozmiar"
ReachBox.Text = "10"
ReachBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ReachBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ReachBox.Font = Enum.Font.Gotham
ReachBox.TextSize = 11
ReachBox.ClearTextOnFocus = false
ReachBox.Parent = Frame
Instance.new("UICorner", ReachBox).CornerRadius = UDim.new(0, 6)

local ReachBtn = Instance.new("TextButton")
ReachBtn.Size = UDim2.new(0.33, 0, 0, 24)
ReachBtn.Position = UDim2.new(0.62, 0, 0, 174)
ReachBtn.Text = "REACH: OFF"
ReachBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ReachBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 0)
ReachBtn.Font = Enum.Font.GothamBold
ReachBtn.TextSize = 10
ReachBtn.Parent = Frame
Instance.new("UICorner", ReachBtn).CornerRadius = UDim.new(0, 6)

-- Speed
local SpeedBox = Instance.new("TextBox")
SpeedBox.Size = UDim2.new(0.55, 0, 0, 28)
SpeedBox.Position = UDim2.new(0.075, 0, 0, 206)
SpeedBox.PlaceholderText = "Speed"
SpeedBox.Text = "16"
SpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SpeedBox.Font = Enum.Font.Gotham
SpeedBox.TextSize = 11
SpeedBox.ClearTextOnFocus = false
SpeedBox.Parent = Frame
Instance.new("UICorner", SpeedBox).CornerRadius = UDim.new(0, 6)

local SpeedBtn = Instance.new("TextButton")
SpeedBtn.Size = UDim2.new(0.28, 0, 0, 28)
SpeedBtn.Position = UDim2.new(0.67, 0, 0, 206)
SpeedBtn.Text = "SET"
SpeedBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
SpeedBtn.Font = Enum.Font.GothamBold
SpeedBtn.TextSize = 11
SpeedBtn.Parent = Frame
Instance.new("UICorner", SpeedBtn).CornerRadius = UDim.new(0, 6)

local JumpBtn = Instance.new("TextButton")
JumpBtn.Size = UDim2.new(0.85, 0, 0, 28)
JumpBtn.Position = UDim2.new(0.075, 0, 0, 240)
JumpBtn.Text = "JUMP: 50"
JumpBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpBtn.BackgroundColor3 = Color3.fromRGB(100, 0, 100)
JumpBtn.Font = Enum.Font.GothamBold
JumpBtn.TextSize = 11
JumpBtn.Parent = Frame
Instance.new("UICorner", JumpBtn).CornerRadius = UDim.new(0, 6)

local NoclipBtn = Instance.new("TextButton")
NoclipBtn.Size = UDim2.new(0.85, 0, 0, 28)
NoclipBtn.Position = UDim2.new(0.075, 0, 0, 274)
NoclipBtn.Text = "NOCLIP"
NoclipBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
NoclipBtn.BackgroundColor3 = Color3.fromRGB(80, 0, 80)
NoclipBtn.Font = Enum.Font.GothamBold
NoclipBtn.TextSize = 11
NoclipBtn.Parent = Frame
Instance.new("UICorner", NoclipBtn).CornerRadius = UDim.new(0, 6)

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -10, 0, 14)
Status.Position = UDim2.new(0, 5, 0, 310)
Status.Text = "LECHU SCRIPT"
Status.TextColor3 = Color3.fromRGB(0, 170, 255)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.GothamBold
Status.TextSize = 11
Status.Parent = Frame

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
local hitboxEnabled = false
local reachEnabled = false
local noclipEnabled = false
local hitboxSize = 20
local reachSize = 10

local tpConn, godConn, hitboxConn, reachConn, noclipConn = nil, nil, nil, nil, nil

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
            if hum then hum.Health = hum.MaxHealth end
        end
    end)
end

local function startHitbox()
    if hitboxConn then hitboxConn:Disconnect() end
    hitboxConn = RunService.Heartbeat:Connect(function()
        if not hitboxEnabled then return end
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= player and plr.Character then
                local root = plr.Character:FindFirstChild("HumanoidRootPart")
                if root then
                    hitboxSize = tonumber(HitboxBox.Text) or 20
                    root.Size = Vector3.new(hitboxSize, hitboxSize, hitboxSize)
                    root.Transparency = 0.7
                    root.BrickColor = BrickColor.new("Really red")
                    root.CanCollide = false
                    root.Material = Enum.Material.ForceField
                end
            end
        end
    end)
end

local function startReach()
    if reachConn then reachConn:Disconnect() end
    reachConn = RunService.Heartbeat:Connect(function()
        if not reachEnabled then return end
        local char = player.Character
        if char then
            for _, tool in pairs(char:GetDescendants()) do
                if tool:IsA("Tool") then
                    local handle = tool:FindFirstChild("Handle")
                    if handle then
                        reachSize = tonumber(ReachBox.Text) or 10
                        handle.Size = Vector3.new(reachSize, reachSize, reachSize)
                    end
                end
            end
        end
    end)
end

local function startNoclip()
    if noclipConn then noclipConn:Disconnect() end
    noclipConn = RunService.Stepped:Connect(function()
        if not noclipEnabled then return end
        local char = player.Character
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

TPBtn.MouseButton1Click:Connect(function()
    tpEnabled = not tpEnabled
    if tpEnabled then
        TPBtn.Text = "STOP TP"
        TPBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
        startTP()
    else
        if tpConn then tpConn:Disconnect() end
        TPBtn.Text = "TELEPORT (516,70,-367)"
        TPBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
    end
end)

GodBtn.MouseButton1Click:Connect(function()
    godEnabled = not godEnabled
    if godEnabled then
        GodBtn.Text = "GOD: ON"
        GodBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        startGod()
    else
        if godConn then godConn:Disconnect() end
        GodBtn.Text = "GOD MODE"
        GodBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
    end
end)

HitboxBtn.MouseButton1Click:Connect(function()
    hitboxEnabled = not hitboxEnabled
    if hitboxEnabled then
        HitboxBtn.Text = "HITBOX: ON"
        HitboxBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        startHitbox()
    else
        if hitboxConn then hitboxConn:Disconnect() end
        HitboxBtn.Text = "HITBOX: OFF"
        HitboxBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 0)
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= player and plr.Character then
                local root = plr.Character:FindFirstChild("HumanoidRootPart")
                if root then
                    root.Size = Vector3.new(2, 2, 1)
                    root.Transparency = 1
                end
            end
        end
    end
end)

ReachBtn.MouseButton1Click:Connect(function()
    reachEnabled = not reachEnabled
    if reachEnabled then
        ReachBtn.Text = "REACH: ON"
        ReachBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        startReach()
    else
        if reachConn then reachConn:Disconnect() end
        ReachBtn.Text = "REACH: OFF"
        ReachBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 0)
    end
end)

SpeedBtn.MouseButton1Click:Connect(function()
    local speed = tonumber(SpeedBox.Text)
    if speed then
        local hum = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.WalkSpeed = speed
            Status.Text = "Speed: " .. speed
        end
    end
end)

JumpBtn.MouseButton1Click:Connect(function()
    local hum = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.JumpPower = 50
        Status.Text = "Jump: 50"
    end
end)

NoclipBtn.MouseButton1Click:Connect(function()
    noclipEnabled = not noclipEnabled
    if noclipEnabled then
        NoclipBtn.Text = "NOCLIP: ON"
        NoclipBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        startNoclip()
    else
        if noclipConn then noclipConn:Disconnect() end
        NoclipBtn.Text = "NOCLIP"
        NoclipBtn.BackgroundColor3 = Color3.fromRGB(80, 0, 80)
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    tpEnabled = false
    godEnabled = false
    hitboxEnabled = false
    reachEnabled = false
    noclipEnabled = false
    pcall(function() if tpConn then tpConn:Disconnect() end end)
    pcall(function() if godConn then godConn:Disconnect() end end)
    pcall(function() if hitboxConn then hitboxConn:Disconnect() end end)
    pcall(function() if reachConn then reachConn:Disconnect() end end)
    pcall(function() if noclipConn then noclipConn:Disconnect() end end)
    ScreenGui:Destroy()
end)

player.CharacterAdded:Connect(function(char)
    task.wait(2)
    if godEnabled then startGod() end
    if noclipEnabled then startNoclip() end
end)

print("[LECHU SCRIPT] Loaded!")
