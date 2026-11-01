--[[
================================================================================
  Prison Life — WindUI Multi-Cheat
  ----------------------------------------------------------------------------
  平台   : Roblox 手机端执行器 (Delta / Fluxus / Arceus X / Codex / Hydrogen)
  UI     : WindUI (Footagesus)
  功能   : 飞行 / 修改移速 / 无限跳跃 / 自瞄 / 杀戮光环
  附带   : 客户端反作弊清除 + Remote 上报拦截 + 移速读取伪装
  作者   : Operit
  许可   : MIT
================================================================================

  使用方式:
    1. 手机执行器里粘贴本文件全部内容, 执行。
    2. 或者上传到 GitHub 后, 用 loader.lua 一行 raw 链接加载。
================================================================================
]]

--==============================================================================
-- 服务与常量
--==============================================================================
local Players      = game:GetService("Players")
local RunService   = game:GetService("RunService")
local UserInput    = game:GetService("UserInputService")
local Workspace    = game:GetService("Workspace")
local Replicated   = game:GetService("ReplicatedStorage")
local LocalPlayer  = Players.LocalPlayer

local VERSION = "1.0.0"

--==============================================================================
-- 全局状态
--==============================================================================
local State = {
    -- 移动
    fly          = false,
    flySpeed     = 60,

    speedOn      = false,
    speedValue   = 40,

    infJump      = false,

    -- 自瞄
    aimbot       = false,
    aimRange     = 400,
    aimPart      = "Head",
    aimSmooth    = 1,

    -- 杀戮光环
    killAura     = false,
    auraRange    = 100,
    auraDelay    = 0.12,
    auraMode     = "Remote",   -- Remote | Activate | Both
    ignoreTeam   = true,

    -- 反作弊
    walkSpoof    = false,
}

--==============================================================================
-- 基础取值
--==============================================================================
local function getChar()
    return LocalPlayer.Character
end

local function getHumanoid()
    local char = getChar()
    return char and char:FindFirstChildOfClass("Humanoid")
end

local function getRoot()
    local char = getChar()
    return char and char:FindFirstChild("HumanoidRootPart")
end

--==============================================================================
-- ① 反作弊绕过
--==============================================================================
local AntiCheat = {
    cleared      = false,
    rebuildHooked= false,
}

local AC_KEYWORDS = {
    "anti", "cheat", "guard", "detect", "protect", "shield", "secure", "exploit",
}

local function looksLikeAC(name)
    local n = string.lower(tostring(name))
    if n == "ac" or n == "_ac" or n == "ac_" then return true end
    for _, kw in ipairs(AC_KEYWORDS) do
        if string.find(n, kw, 1, true) then return true end
    end
    return false
end

local function destroyNode(obj)
    pcall(function()
        if obj:IsA("LocalScript") or obj:IsA("Script") then
            obj.Disabled = true
        end
    end)
    pcall(function()
        obj:Destroy()
    end)
end

-- 清除 PlayerScripts 下所有疑似反作弊脚本
local function clearAntiCheat()
    local ps = LocalPlayer:FindFirstChild("PlayerScripts")
    if not ps then return 0 end

    local killed = 0
    for _, obj in ipairs(ps:GetDescendants()) do
        if looksLikeAC(obj.Name) then
            destroyNode(obj)
            killed = killed + 1
        end
    end

    -- 防止游戏重新注入
    if not AntiCheat.rebuildHooked then
        AntiCheat.rebuildHooked = true
        ps.DescendantAdded:Connect(function(obj)
            task.defer(function()
                if looksLikeAC(obj.Name) then
                    destroyNode(obj)
                end
            end)
        end)
    end

    AntiCheat.cleared = true
    return killed
end

-- 拦截 namecall: 本地 Kick + 反作弊上报
local function hookNameCall()
    if not (hookmetamethod and getnamecallmethod) then return false end

    local ok = pcall(function()
        local oldNameCall
        oldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()

            -- 拦截对自己的 Kick
            if method == "Kick" and self == LocalPlayer then
                return
            end

            -- 拦截可疑 FireServer 上报
            if method == "FireServer" then
                local args = { ... }
                local first = args[1]
                if type(first) == "string" then
                    local low = string.lower(first)
                    local blocked = {
                        "cheat", "detect", "report", "ban", "kick",
                        "sus", "exploit", "hack", "antich",
                    }
                    for _, kw in ipairs(blocked) do
                        if string.find(low, kw, 1, true) then
                            return
                        end
                    end
                end
            end

            return oldNameCall(self, ...)
        end)
    end)

    return ok
end

-- 移速读取伪装: 客户端读到 16, 实际写入目标值
local function hookWalkSpeed()
    if not (hookmetamethod and getnamecallmethod) then return false end

    local ok = pcall(function()
        local oldIndex
        oldIndex = hookmetamethod(game, "__index", function(self, key)
            if key == "WalkSpeed"
                and typeof(self) == "Instance"
                and self:IsA("Humanoid")
                and State.speedOn
            then
                local hum = getHumanoid()
                if hum and self == hum then
                    return 16
                end
            end
            return oldIndex(self, key)
        end)
    end)

    return ok
end

clearAntiCheat()
hookNameCall()

--==============================================================================
-- ② 加载 WindUI
--==============================================================================
local WindUI
do
    local sources = {
        "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua",
        "https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua",
    }

    for _, url in ipairs(sources) do
        local ok, result = pcall(function()
            return loadstring(game:HttpGet(url))()
        end)
        if ok and type(result) == "table" then
            WindUI = result
            break
        end
    end

    if not WindUI then
        warn("[PrisonLife] WindUI 加载失败，请检查网络或更换执行器")
        return
    end
end

local Window = WindUI:CreateWindow({
    Title       = "Prison Life",
    Icon        = "door-open",
    Author      = "Operit",
    Folder      = "PrisonLifeHub",
    Size        = UDim2.fromOffset(560, 420),
    Transparent = true,
    Theme       = "Dark",
    User        = { Enabled = true, Anonymous = true },
})

--==============================================================================
-- ③ 飞行
--==============================================================================
local Fly = { conn = nil, velocity = nil, gyro = nil }

local function stopFly()
    if Fly.conn then
        Fly.conn:Disconnect()
        Fly.conn = nil
    end
    if Fly.velocity then
        pcall(function() Fly.velocity:Destroy() end)
        Fly.velocity = nil
    end
    if Fly.gyro then
        pcall(function() Fly.gyro:Destroy() end)
        Fly.gyro = nil
    end
end

local function startFly()
    stopFly()

    local root, hum = getRoot(), getHumanoid()
    if not root or not hum then return end

    local bv = Instance.new("BodyVelocity")
    bv.Name     = "W_FlyVelocity"
    bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
    bv.Velocity = Vector3.zero
    bv.Parent   = root

    local bg = Instance.new("BodyGyro")
    bg.Name     = "W_FlyGyro"
    bg.MaxTorque= Vector3.new(1e6, 1e6, 1e6)
    bg.D        = 50
    bg.P        = 3000
    bg.CFrame   = root.CFrame
    bg.Parent   = root

    Fly.velocity, Fly.gyro = bv, bg

    local camera = Workspace.CurrentCamera

    Fly.conn = RunService.RenderStepped:Connect(function()
        local h = getHumanoid()
        if not h or not Fly.velocity or not Fly.velocity.Parent then return end

        local cf     = camera.CFrame
        local look   = cf.LookVector
        local right  = cf.RightVector
        local dir    = Vector3.zero

        -- 手机虚拟摇杆
        if h.MoveDirection.Magnitude > 0.05 then
            dir = h.MoveDirection.Unit
        end

        -- 键盘
        if UserInput:IsKeyDown(Enum.KeyCode.W) then dir = dir + look end
        if UserInput:IsKeyDown(Enum.KeyCode.S) then dir = dir - look end
        if UserInput:IsKeyDown(Enum.KeyCode.A) then dir = dir - right end
        if UserInput:IsKeyDown(Enum.KeyCode.D) then dir = dir + right end

        -- 升降
        if UserInput:IsKeyDown(Enum.KeyCode.Space) then
            dir = dir + Vector3.new(0, 1, 0)
        end
        if UserInput:IsKeyDown(Enum.KeyCode.LeftControl) then
            dir = dir - Vector3.new(0, 1, 0)
        end

        if dir.Magnitude > 0 then
            Fly.velocity.Velocity = dir.Unit * State.flySpeed
        else
            Fly.velocity.Velocity = Vector3.zero
        end

        Fly.gyro.CFrame = cf
    end)
end

--==============================================================================
-- ④ 无限跳跃
--==============================================================================
UserInput.JumpRequest:Connect(function()
    if not State.infJump then return end
    local hum = getHumanoid()
    if hum then
        hum:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

--==============================================================================
-- ⑤ 移速持续写入
--==============================================================================
RunService.Heartbeat:Connect(function()
    if not State.speedOn then return end
    local hum = getHumanoid()
    if hum and math.abs(hum.WalkSpeed - State.speedValue) > 0.5 then
        hum.WalkSpeed = State.speedValue
    end
end)

--==============================================================================
-- ⑥ 目标筛选
--==============================================================================
local function isValidTarget(plr)
    if plr == LocalPlayer then return false end

    local char = plr.Character
    if not char then return false end

    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum or hum.Health <= 0 then return false end

    if State.ignoreTeam and plr.Team and LocalPlayer.Team and plr.Team == LocalPlayer.Team then
        return false
    end

    return true
end

local function getAimPart(plr)
    local char = plr.Character
    if not char then return nil end
    return char:FindFirstChild(State.aimPart)
        or char:FindFirstChild("Head")
        or char:FindFirstChild("HumanoidRootPart")
end

local function closestTarget(maxDist, origin)
    local best, bestDist = nil, maxDist or math.huge

    for _, plr in ipairs(Players:GetPlayers()) do
        if isValidTarget(plr) then
            local part = getAimPart(plr)
            if part then
                local dist = (part.Position - origin).Magnitude
                if dist < bestDist then
                    best, bestDist = part, dist
                end
            end
        end
    end

    return best, bestDist
end

--==============================================================================
-- ⑦ 自瞄
--==============================================================================
RunService.RenderStepped:Connect(function()
    if not State.aimbot then return end

    local camera = Workspace.CurrentCamera
    local target = closestTarget(State.aimRange, camera.CFrame.Position)
    if not target then return end

    local goal = CFrame.new(camera.CFrame.Position, target.Position)

    if State.aimSmooth >= 1 then
        camera.CFrame = goal
    else
        camera.CFrame = camera.CFrame:Lerp(goal, State.aimSmooth)
    end
end)

--==============================================================================
-- ⑧ 开火封装 (Prison Life 枪械逻辑)
--==============================================================================
local function getTool()
    local char = getChar()
    return char and char:FindFirstChildOfClass("Tool")
end

local function shootAt(position)
    local tool   = getTool()
    local remote = Replicated:FindFirstChild("Remote")

    if State.auraMode == "Remote" or State.auraMode == "Both" then
        if remote then
            pcall(function()
                remote:FireServer("Shoot", position, tool)
            end)
        end
    end

    if State.auraMode == "Activate" or State.auraMode == "Both" then
        local camera = Workspace.CurrentCamera
        pcall(function()
            camera.CFrame = CFrame.new(camera.CFrame.Position, position)
        end)
        if tool then
            pcall(function()
                tool:Activate()
            end)
        end
    end
end

--==============================================================================
-- ⑨ 杀戮光环
--==============================================================================
task.spawn(function()
    while true do
        task.wait(State.auraDelay)

        if State.killAura then
            local root, hum = getRoot(), getHumanoid()

            if root and hum and hum.Health > 0 then
                for _, plr in ipairs(Players:GetPlayers()) do
                    if isValidTarget(plr) then
                        local part = getAimPart(plr)
                        if part and (part.Position - root.Position).Magnitude <= State.auraRange then
                            shootAt(part.Position)
                        end
                    end
                end
            end
        end
    end
end)

--==============================================================================
-- ⑩ 重生恢复
--==============================================================================
LocalPlayer.CharacterAdded:Connect(function(char)
    task.wait(1)

    if State.speedOn then
        local hum = char:WaitForChild("Humanoid", 5)
        if hum then
            hum.WalkSpeed = State.speedValue
        end
    end

    if State.fly then
        task.wait(0.5)
        startFly()
    end
end)

--==============================================================================
-- ⑪ UI 构建
--==============================================================================
local TabMain = Window:Tab({ Title = "主菜单", Icon = "house" })
local TabCombat = Window:Tab({ Title = "战斗", Icon = "crosshair" })
local TabSettings = Window:Tab({ Title = "设置", Icon = "settings" })

--──────────────────────────────────────────────────────────────
-- 主菜单
--──────────────────────────────────────────────────────────────
TabMain:Section({ Title = "移动" })

TabMain:Toggle({
    Title = "飞行",
    Desc  = "摇杆 / WASD 控制方向，Space 上升，LeftCtrl 下降",
    Value = false,
    Callback = function(value)
        State.fly = value
        if value then
            startFly()
        else
            stopFly()
        end
    end,
})

TabMain:Slider({
    Title = "飞行速度",
    Value = { Min = 10, Max = 300, Default = 60 },
    Callback = function(value)
        State.flySpeed = value
    end,
})

TabMain:Toggle({
    Title = "修改移速",
    Desc  = "Heartbeat 持续写入，防反作弊重置",
    Value = false,
    Callback = function(value)
        State.speedOn = value
    end,
})

TabMain:Slider({
    Title = "移速数值",
    Value = { Min = 16, Max = 200, Default = 40 },
    Callback = function(value)
        State.speedValue = value
    end,
})

TabMain:Toggle({
    Title = "无限跳跃",
    Value = false,
    Callback = function(value)
        State.infJump = value
    end,
})

--──────────────────────────────────────────────────────────────
-- 战斗
--──────────────────────────────────────────────────────────────
TabCombat:Section({ Title = "自瞄" })

TabCombat:Toggle({
    Title = "自瞄",
    Desc  = "相机锁定范围内最近敌人",
    Value = false,
    Callback = function(value)
        State.aimbot = value
    end,
})

TabCombat:Slider({
    Title = "自瞄范围",
    Value = { Min = 50, Max = 1000, Default = 400 },
    Callback = function(value)
        State.aimRange = value
    end,
})

TabCombat:Slider({
    Title = "平滑度 (1 = 瞬锁)",
    Value = { Min = 0.1, Max = 1, Default = 1 },
    Callback = function(value)
        State.aimSmooth = value
    end,
})

TabCombat:Dropdown({
    Title  = "瞄准部位",
    Values = { "Head", "HumanoidRootPart", "UpperTorso", "Torso" },
    Value  = "Head",
    Callback = function(value)
        State.aimPart = value
    end,
})

TabCombat:Section({ Title = "杀戮光环" })

TabCombat:Toggle({
    Title = "杀戮光环",
    Desc  = "自动射击范围内所有敌人",
    Value = false,
    Callback = function(value)
        State.killAura = value
    end,
})

TabCombat:Slider({
    Title = "光环范围",
    Value = { Min = 10, Max = 300, Default = 100 },
    Callback = function(value)
        State.auraRange = value
    end,
})

TabCombat:Slider({
    Title = "射击间隔 (秒)",
    Value = { Min = 0.03, Max = 1, Default = 0.12 },
    Callback = function(value)
        State.auraDelay = value
    end,
})

TabCombat:Dropdown({
    Title  = "开火方式",
    Values = { "Remote", "Activate", "Both" },
    Value  = "Remote",
    Callback = function(value)
        State.auraMode = value
    end,
})

TabCombat:Toggle({
    Title = "忽略队友",
    Value = true,
    Callback = function(value)
        State.ignoreTeam = value
    end,
})

--──────────────────────────────────────────────────────────────
-- 设置
--──────────────────────────────────────────────────────────────
TabSettings:Section({ Title = "反作弊" })

TabSettings:Button({
    Title = "清除客户端反作弊",
    Desc  = "删除 PlayerScripts 下所有检测脚本",
    Callback = function()
        local count = clearAntiCheat()
        WindUI:Notify({
            Title    = "反作弊",
            Content  = "已清除 " .. count .. " 个检测脚本",
            Duration = 4,
        })
    end,
})

TabSettings:Toggle({
    Title = "移速读取伪装",
    Desc  = "Hook WalkSpeed 读取返回 16 (部分执行器不支持)",
    Value = false,
    Callback = function(value)
        State.walkSpoof = value
        if value then
            local ok = hookWalkSpeed()
            WindUI:Notify({
                Title    = "伪装",
                Content  = ok and "已启用" or "当前执行器不支持 hook",
                Duration = 4,
            })
        end
    end,
})

TabSettings:Section({ Title = "信息" })

TabSettings:Paragraph({
    Title = "Prison Life Multi-Cheat v" .. VERSION,
    Desc  = "WindUI · 手机端执行器专用\n光环范围过大可能被服务端距离校验拒绝",
})

TabSettings:Button({
    Title = "销毁界面",
    Desc  = "停止所有功能并卸载 UI",
    Callback = function()
        stopFly()
        State.speedOn  = false
        State.infJump  = false
        State.aimbot   = false
        State.killAura = false
        pcall(function()
            Window:Destroy()
        end)
    end,
})
