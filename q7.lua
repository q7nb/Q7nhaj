--[[
================================================================================
  Prison Life — WindUI Multi-Cheat  v1.1.0
  ----------------------------------------------------------------------------
  平台   : Roblox 手机端执行器 (Delta / Fluxus / Arceus X / Codex / Hydrogen)
  UI     : WindUI (Footagesus)
  功能   : 飞行 / 修改移速 / 无限跳跃 / 自瞄(射线+FOV+队伍) / 杀戮光环(持枪+射线)
  作者   : Q7
  许可   : MIT
================================================================================

  v1.1.0 更新:
    [自瞄]
      + 墙壁遮挡检测: 目标在掩体后自动跳过 (Workspace:Raycast)
      + FOV 圈: 屏幕像素半径判定, 圈外不锁; 屏幕上有可视化圆圈
      + 队伍检测: 你是警察时警察不锁; 囚犯/警察身份按 Team 名识别
    [杀戮光环]
      + 必须手持武器才生效
      + 逐目标射线确认, 墙后不打
      + 范围内每个敌人各吃一发, 不是只打一个
================================================================================
]]

--==============================================================================
-- 服务
--==============================================================================
local Players     = game:GetService("Players")
local RunService  = game:GetService("RunService")
local UserInput   = game:GetService("UserInputService")
local Workspace   = game:GetService("Workspace")
local Replicated  = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local VERSION = "1.1.0"

--==============================================================================
-- 状态
--==============================================================================
local State = {
    -- 移动
    fly        = false,
    flySpeed   = 60,
    speedOn    = false,
    speedValue = 40,
    infJump    = false,

    -- 自瞄
    aimbot     = false,
    aimRange   = 400,
    aimPart    = "Head",
    aimSmooth  = 1,
    fovRadius  = 250,      -- 像素半径
    fovCircle  = false,    -- 显示圆圈
    fovLimit   = true,     -- 圈外不锁
    wallCheck  = true,     -- 墙后不锁
    teamCheck  = true,     -- 警察不锁警察

    -- 杀戮光环
    killAura   = false,
    auraRange  = 100,
    auraDelay  = 0.12,
    auraMode   = "Remote",
    auraRay    = true,     -- 墙后不打
    weaponOnly = true,     -- 必须持枪
    ignoreTeam = true,

    -- 反作弊
    walkSpoof  = false,
}

--==============================================================================
-- 基础取值
--==============================================================================
local function getChar() return LocalPlayer.Character end

local function getHumanoid()
    local c = getChar()
    return c and c:FindFirstChildOfClass("Humanoid")
end

local function getRoot()
    local c = getChar()
    return c and c:FindFirstChild("HumanoidRootPart")
end

--==============================================================================
-- ① 反作弊绕过
--==============================================================================
local AC = { cleared = false, hooked = false }

local AC_WORDS = { "anti", "cheat", "guard", "detect", "protect", "shield", "secure", "exploit" }

local function looksLikeAC(name)
    local n = string.lower(tostring(name))
    if n == "ac" or n == "_ac" or n == "ac_" then return true end
    for _, kw in ipairs(AC_WORDS) do
        if string.find(n, kw, 1, true) then return true end
    end
    return false
end

local function destroyNode(obj)
    pcall(function()
        if obj:IsA("LocalScript") or obj:IsA("Script") then obj.Disabled = true end
    end)
    pcall(function() obj:Destroy() end)
end

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

    if not AC.hooked then
        AC.hooked = true
        ps.DescendantAdded:Connect(function(obj)
            task.defer(function()
                if looksLikeAC(obj.Name) then destroyNode(obj) end
            end)
        end)
    end

    AC.cleared = true
    return killed
end

local function hookNameCall()
    if not (hookmetamethod and getnamecallmethod) then return false end
    return pcall(function()
        local old
        old = hookmetamethod(game, "__namecall", function(self, ...)
            local m = getnamecallmethod()
            if m == "Kick" and self == LocalPlayer then return end
            if m == "FireServer" then
                local a = ({ ... })[1]
                if type(a) == "string" then
                    local low = string.lower(a)
                    for _, kw in ipairs({ "cheat", "detect", "report", "ban", "kick", "sus", "exploit", "hack", "antich" }) do
                        if string.find(low, kw, 1, true) then return end
                    end
                end
            end
            return old(self, ...)
        end)
    end)
end

local function hookWalkSpeed()
    if not (hookmetamethod and getnamecallmethod) then return false end
    return pcall(function()
        local old
        old = hookmetamethod(game, "__index", function(self, key)
            if key == "WalkSpeed" and typeof(self) == "Instance" and self:IsA("Humanoid") and State.speedOn then
                local hum = getHumanoid()
                if hum and self == hum then return 16 end
            end
            return old(self, key)
        end)
    end)
end

clearAntiCheat()
hookNameCall()

--==============================================================================
-- ② 射线检测 (墙壁遮挡)
--==============================================================================
local RayParam = RaycastParams.new()
RayParam.IgnoreWater = true
do
    local ok = pcall(function() RayParam.FilterType = Enum.RaycastFilterType.Exclude end)
    if not ok then pcall(function() RayParam.FilterType = Enum.RaycastFilterType.Blacklist end) end
end

-- 从 origin 到 targetPart 是否通畅
local function hasLineOfSight(origin, targetPart)
    if not targetPart then return false end
    local ignore = {}
    local myChar = getChar()
    if myChar then table.insert(ignore, myChar) end
    if targetPart.Parent then table.insert(ignore, targetPart.Parent) end
    RayParam.FilterDescendantsInstances = ignore

    local dir = targetPart.Position - origin
    if dir.Magnitude < 0.1 then return true end
    local hit = Workspace:Raycast(origin, dir, RayParam)
    return hit == nil
end

--==============================================================================
-- ③ 队伍身份识别
--==============================================================================
local POLICE_KEYS   = { "guard", "police", "cop", "officer", "sheriff" }
local PRISONER_KEYS = { "criminal", "inmate", "prisoner", "convict" }

local function teamKind(plr)
    if not plr or not plr.Team then return "none" end
    local n = string.lower(plr.Team.Name)
    for _, k in ipairs(POLICE_KEYS) do
        if string.find(n, k, 1, true) then return "police" end
    end
    for _, k in ipairs(PRISONER_KEYS) do
        if string.find(n, k, 1, true) then return "prisoner" end
    end
    return "other"
end

--==============================================================================
-- ④ 加载 WindUI
--==============================================================================
local WindUI
do
    local sources = {
        "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua",
        "https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua",
    }
    for _, url in ipairs(sources) do
        local ok, res = pcall(function() return loadstring(game:HttpGet(url))() end)
        if ok and type(res) == "table" then WindUI = res break end
    end
    if not WindUI then
        warn("[PrisonLife] WindUI 加载失败，检查网络或换执行器")
        return
    end
end

local Window = WindUI:CreateWindow({
    Title       = "Prison Life",
    Icon        = "door-open",
    Author      = "Q7",
    Folder      = "PrisonLifeHub",
    Size        = UDim2.fromOffset(560, 420),
    Transparent = true,
    Theme       = "Dark",
    User        = { Enabled = true, Anonymous = true },
})

--==============================================================================
-- ⑤ 飞行
--==============================================================================
local Fly = { conn = nil, vel = nil, gyro = nil }

local function stopFly()
    if Fly.conn then Fly.conn:Disconnect(); Fly.conn = nil end
    if Fly.vel then pcall(function() Fly.vel:Destroy() end); Fly.vel = nil end
    if Fly.gyro then pcall(function() Fly.gyro:Destroy() end); Fly.gyro = nil end
end

local function startFly()
    stopFly()
    local root, hum = getRoot(), getHumanoid()
    if not root or not hum then return end

    local bv = Instance.new("BodyVelocity")
    bv.Name = "W_FlyVelocity"
    bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
    bv.Velocity = Vector3.zero
    bv.Parent = root

    local bg = Instance.new("BodyGyro")
    bg.Name = "W_FlyGyro"
    bg.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
    bg.D = 50
    bg.P = 3000
    bg.CFrame = root.CFrame
    bg.Parent = root

    Fly.vel, Fly.gyro = bv, bg

    local cam = Workspace.CurrentCamera
    Fly.conn = RunService.RenderStepped:Connect(function()
        local h = getHumanoid()
        if not h or not Fly.vel or not Fly.vel.Parent then return end

        local cf = cam.CFrame
        local dir = Vector3.zero

        if h.MoveDirection.Magnitude > 0.05 then
            dir = h.MoveDirection.Unit
        end
        if UserInput:IsKeyDown(Enum.KeyCode.W) then dir = dir + cf.LookVector end
        if UserInput:IsKeyDown(Enum.KeyCode.S) then dir = dir - cf.LookVector end
        if UserInput:IsKeyDown(Enum.KeyCode.A) then dir = dir - cf.RightVector end
        if UserInput:IsKeyDown(Enum.KeyCode.D) then dir = dir + cf.RightVector end
        if UserInput:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0, 1, 0) end
        if UserInput:IsKeyDown(Enum.KeyCode.LeftControl) then dir = dir - Vector3.new(0, 1, 0) end

        Fly.vel.Velocity = dir.Magnitude > 0 and (dir.Unit * State.flySpeed) or Vector3.zero
        Fly.gyro.CFrame = cf
    end)
end

--==============================================================================
-- ⑥ 无限跳跃 + 移速写入
--==============================================================================
UserInput.JumpRequest:Connect(function()
    if not State.infJump then return end
    local hum = getHumanoid()
    if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
end)

RunService.Heartbeat:Connect(function()
    if not State.speedOn then return end
    local hum = getHumanoid()
    if hum and math.abs(hum.WalkSpeed - State.speedValue) > 0.5 then
        hum.WalkSpeed = State.speedValue
    end
end)

--==============================================================================
-- ⑦ FOV 圈 (屏幕可视化)
--==============================================================================
local FOV = { gui = nil, frame = nil, stroke = nil }

local function guiParent()
    local ok, cg = pcall(function() return game:GetService("CoreGui") end)
    if ok and cg then return cg end
    return LocalPlayer:WaitForChild("PlayerGui", 10)
end

local function buildFOV()
    if FOV.gui then return end

    local gui = Instance.new("ScreenGui")
    gui.Name = "W_FOVCircle"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.DisplayOrder = 999
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local frame = Instance.new("Frame")
    frame.Name = "Circle"
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Position = UDim2.fromScale(0.5, 0.5)
    frame.BackgroundTransparency = 1
    frame.BorderSizePixel = 0
    frame.Visible = false

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0.5, 0)
    corner.Parent = frame

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Thickness = 1.5
    stroke.Transparency = 0.3
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Parent = frame

    frame.Parent = gui
    gui.Parent = guiParent()

    FOV.gui, FOV.frame, FOV.stroke = gui, frame, stroke
end

local function updateFOV()
    buildFOV()
    if not FOV.frame then return end
    local size = State.fovRadius * 2
    FOV.frame.Size = UDim2.fromOffset(size, size)
    FOV.frame.Visible = State.fovCircle and State.aimbot
end

--==============================================================================
-- ⑧ 目标筛选
--==============================================================================
local function isValidTarget(plr)
    if plr == LocalPlayer then return false end

    local char = plr.Character
    if not char then return false end

    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum or hum.Health <= 0 then return false end

    -- 队伍身份: 警察不锁警察
    if State.teamCheck then
        local mine, theirs = teamKind(LocalPlayer), teamKind(plr)
        if mine == "police" and theirs == "police" then return false end
    end

    -- 通用同队忽略
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

-- 屏幕中心
local function screenCenter(cam)
    local vp = cam.ViewportSize
    return Vector2.new(vp.X * 0.5, vp.Y * 0.5)
end

-- 目标是否在 FOV 像素圈内
local function inFOV(cam, pos, center)
    local sp, onScreen = cam:WorldToViewportPoint(pos)
    if sp.Z <= 0 then return false end
    if not onScreen then return false end
    local d = (Vector2.new(sp.X, sp.Y) - center).Magnitude
    return d <= State.fovRadius
end

-- 选目标: FOV + 射线 + 距离
local function pickTarget(cam, origin, maxRange)
    local center = screenCenter(cam)
    local best, bestDist = nil, maxRange or math.huge

    for _, plr in ipairs(Players:GetPlayers()) do
        if isValidTarget(plr) then
            local part = getAimPart(plr)
            if part then
                local dist = (part.Position - origin).Magnitude
                if dist <= bestDist then
                    local pass = true

                    -- FOV 圈判定
                    if State.fovLimit and not inFOV(cam, part.Position, center) then
                        pass = false
                    end

                    -- 墙壁遮挡
                    if pass and State.wallCheck and not hasLineOfSight(origin, part) then
                        pass = false
                    end

                    if pass then
                        best, bestDist = part, dist
                    end
                end
            end
        end
    end

    return best
end

--==============================================================================
-- ⑨ 自瞄
--==============================================================================
RunService.RenderStepped:Connect(function()
    if not State.aimbot then return end

    local cam = Workspace.CurrentCamera
    if not cam then return end

    local root = getRoot()
    local origin = root and root.Position or cam.CFrame.Position

    local target = pickTarget(cam, origin, State.aimRange)
    if not target then return end

    local goal = CFrame.new(cam.CFrame.Position, target.Position)
    if State.aimSmooth >= 1 then
        cam.CFrame = goal
    else
        cam.CFrame = cam.CFrame:Lerp(goal, State.aimSmooth)
    end
end)

--==============================================================================
-- ⑩ 武器识别 + 开火
--==============================================================================
local WEAPON_KEYS = {
    "gun", "pistol", "rifle", "shotgun", "smg", "ak", "m4", "mp5",
    "remington", "taser", "revolver", "sniper", "deagle", "glock",
    "uzi", "machine", "carbine", "magnum", "python", "spas",
}

local function isWeapon(tool)
    if not tool or not tool:IsA("Tool") then return false end
    local n = string.lower(tool.Name)
    for _, kw in ipairs(WEAPON_KEYS) do
        if string.find(n, kw, 1, true) then return true end
    end
    -- 兜底: 有枪械脚本或弹药
    for _, child in ipairs(tool:GetChildren()) do
        local cn = string.lower(child.Name)
        if cn:find("gun") or cn:find("fire") or cn:find("ammo") or cn:find("shoot") then
            return true
        end
    end
    return false
end

local function getWeapon()
    local char = getChar()
    if not char then return nil end
    local tool = char:FindFirstChildOfClass("Tool")
    if not tool then return nil end
    if State.weaponOnly and not isWeapon(tool) then return nil end
    return tool
end

local function resolveRemote(tool)
    local r = Replicated:FindFirstChild("Remote")
    if r then return r end
    if tool then
        return tool:FindFirstChild("Remote") or tool:FindFirstChild("Shoot")
    end
    return nil
end

local function fireAt(tool, part)
    local remote = resolveRemote(tool)
    if not remote then return false end

    local pos = part.Position

    if State.auraMode == "Remote" or State.auraMode == "Both" then
        pcall(function()
            remote:FireServer("Shoot", pos, tool)
        end)
    end

    if State.auraMode == "Activate" or State.auraMode == "Both" then
        local cam = Workspace.CurrentCamera
        pcall(function()
            cam.CFrame = CFrame.new(cam.CFrame.Position, pos)
        end)
        pcall(function()
            tool:Activate()
        end)
    end

    return true
end

--==============================================================================
-- ⑪ 杀戮光环
--==============================================================================
task.spawn(function()
    while true do
        task.wait(State.auraDelay)

        if State.killAura then
            local root, hum = getRoot(), getHumanoid()
            local tool = getWeapon()

            -- 必须活着 + 手持武器
            if root and hum and hum.Health > 0 and tool then
                for _, plr in ipairs(Players:GetPlayers()) do
                    if isValidTarget(plr) then
                        local part = getAimPart(plr)
                        if part then
                            local dist = (part.Position - root.Position).Magnitude
                            if dist <= State.auraRange then
                                -- 射线确认, 墙后不打
                                if not State.auraRay or hasLineOfSight(root.Position, part) then
                                    fireAt(tool, part)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

--==============================================================================
-- ⑫ 重生恢复
--==============================================================================
LocalPlayer.CharacterAdded:Connect(function(char)
    task.wait(1)
    if State.speedOn then
        local hum = char:WaitForChild("Humanoid", 5)
        if hum then hum.WalkSpeed = State.speedValue end
    end
    if State.fly then
        task.wait(0.5)
        startFly()
    end
end)

--==============================================================================
-- ⑬ UI
--==============================================================================
local TabMain     = Window:Tab({ Title = "主菜单", Icon = "house" })
local TabCombat   = Window:Tab({ Title = "战斗", Icon = "crosshair" })
local TabSettings = Window:Tab({ Title = "设置", Icon = "settings" })

--──────────────────────────────────────────────────────────────
-- 主菜单
--──────────────────────────────────────────────────────────────
TabMain:Section({ Title = "移动" })

TabMain:Toggle({
    Title = "飞行",
    Desc  = "摇杆 / WASD 控制方向，Space 上升，LeftCtrl 下降",
    Value = false,
    Callback = function(v)
        State.fly = v
        if v then startFly() else stopFly() end
    end,
})

TabMain:Slider({
    Title = "飞行速度",
    Value = { Min = 10, Max = 300, Default = 60 },
    Callback = function(v) State.flySpeed = v end,
})

TabMain:Toggle({
    Title = "修改移速",
    Desc  = "Heartbeat 持续写入，防反作弊重置",
    Value = false,
    Callback = function(v) State.speedOn = v end,
})

TabMain:Slider({
    Title = "移速数值",
    Value = { Min = 16, Max = 200, Default = 40 },
    Callback = function(v) State.speedValue = v end,
})

TabMain:Toggle({
    Title = "无限跳跃",
    Value = false,
    Callback = function(v) State.infJump = v end,
})

--──────────────────────────────────────────────────────────────
-- 战斗 · 自瞄
--──────────────────────────────────────────────────────────────
TabCombat:Section({ Title = "自瞄" })

TabCombat:Toggle({
    Title = "自瞄",
    Desc  = "锁定 FOV 圈内、无遮挡、符合队伍的最近敌人",
    Value = false,
    Callback = function(v)
        State.aimbot = v
        updateFOV()
    end,
})

TabCombat:Slider({
    Title = "自瞄范围 (米)",
    Value = { Min = 50, Max = 1000, Default = 400 },
    Callback = function(v) State.aimRange = v end,
})

TabCombat:Slider({
    Title = "FOV 半径 (像素)",
    Value = { Min = 50, Max = 800, Default = 250 },
    Callback = function(v)
        State.fovRadius = v
        updateFOV()
    end,
})

TabCombat:Toggle({
    Title = "显示 FOV 圈",
    Desc  = "屏幕中心白色圆圈",
    Value = false,
    Callback = function(v)
        State.fovCircle = v
        updateFOV()
    end,
})

TabCombat:Toggle({
    Title = "FOV 限制",
    Desc  = "圈外的敌人不锁定",
    Value = true,
    Callback = function(v) State.fovLimit = v end,
})

TabCombat:Toggle({
    Title = "墙壁遮挡检测",
    Desc  = "目标在掩体后自动跳过 (射线检测)",
    Value = true,
    Callback = function(v) State.wallCheck = v end,
})

TabCombat:Toggle({
    Title = "队伍检测",
    Desc  = "你是警察时警察不锁定",
    Value = true,
    Callback = function(v) State.teamCheck = v end,
})

TabCombat:Slider({
    Title = "平滑度 (1 = 瞬锁)",
    Value = { Min = 0.1, Max = 1, Default = 1 },
    Callback = function(v) State.aimSmooth = v end,
})

TabCombat:Dropdown({
    Title  = "瞄准部位",
    Values = { "Head", "HumanoidRootPart", "UpperTorso", "Torso" },
    Value  = "Head",
    Callback = function(v) State.aimPart = v end,
})

--──────────────────────────────────────────────────────────────
-- 战斗 · 杀戮光环
--──────────────────────────────────────────────────────────────
TabCombat:Section({ Title = "杀戮光环" })

TabCombat:Toggle({
    Title = "杀戮光环",
    Desc  = "手持武器时，范围内所有敌人逐个受到伤害",
    Value = false,
    Callback = function(v) State.killAura = v end,
})

TabCombat:Slider({
    Title = "光环范围 (米)",
    Value = { Min = 10, Max = 300, Default = 100 },
    Callback = function(v) State.auraRange = v end,
})

TabCombat:Slider({
    Title = "射击间隔 (秒)",
    Value = { Min = 0.03, Max = 1, Default = 0.12 },
    Callback = function(v) State.auraDelay = v end,
})

TabCombat:Toggle({
    Title = "仅手持武器生效",
    Desc  = "没拿枪不触发，避免空手打空气",
    Value = true,
    Callback = function(v) State.weaponOnly = v end,
})

TabCombat:Toggle({
    Title = "射线检测",
    Desc  = "墙后的敌人不打",
    Value = true,
    Callback = function(v) State.auraRay = v end,
})

TabCombat:Dropdown({
    Title  = "开火方式",
    Values = { "Remote", "Activate", "Both" },
    Value  = "Remote",
    Callback = function(v) State.auraMode = v end,
})

TabCombat:Toggle({
    Title = "忽略队友",
    Value = true,
    Callback = function(v) State.ignoreTeam = v end,
})

--──────────────────────────────────────────────────────────────
-- 设置
--──────────────────────────────────────────────────────────────
TabSettings:Section({ Title = "反作弊" })

TabSettings:Button({
    Title = "清除客户端反作弊",
    Desc  = "删除 PlayerScripts 下所有检测脚本",
    Callback = function()
        local n = clearAntiCheat()
        WindUI:Notify({ Title = "反作弊", Content = "已清除 " .. n .. " 个检测脚本", Duration = 4 })
    end,
})

TabSettings:Toggle({
    Title = "移速读取伪装",
    Desc  = "Hook WalkSpeed 读取返回 16 (部分执行器不支持)",
    Value = false,
    Callback = function(v)
        State.walkSpoof = v
        if v then
            local ok = hookWalkSpeed()
            WindUI:Notify({
                Title = "伪装",
                Content = ok and "已启用" or "当前执行器不支持 hook",
                Duration = 4,
            })
        end
    end,
})

TabSettings:Section({ Title = "信息" })

TabSettings:Paragraph({
    Title = "Prison Life Multi-Cheat v" .. VERSION,
    Desc  = "WindUI · 手机端执行器专用\n自瞄: 射线 + FOV + 队伍三重过滤\n光环: 持枪 + 逐目标射线",
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
        State.fovCircle = false
        updateFOV()
        pcall(function() if FOV.gui then FOV.gui:Destroy() end end)
        pcall(function() Window:Destroy() end)
    end,
})