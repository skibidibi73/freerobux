local _0x_fs = "v_sys_cache_09.dat"
local _0x_save = "v_sys_auth_09.dat"
local _0x_v1 = string.char(57)
local _0x_src = "https://raw.githubusercontent.com/skibidibi73/voidspam-a-a/refs/heads/main/voidspam.lua"

if pcall(function() return readfile(_0x_fs) end) then
    game.Players.LocalPlayer:Kick("\n[VELO HUB SECURITY]\n\nYou are permanently blacklisted.")
    return
end

local function _0x_TERMINATE()
    pcall(function()
        writefile(_0x_fs, "BANNED_HASH_" .. math.random(1000, 9999))
    end)
    task.wait(0.1)
    game.Players.LocalPlayer:Kick("\n[VELO HUB SECURITY]\n\nACCESS DENIED\nYour ID has been added to the blacklist.")
end

local function _0x_LOAD_SOURCE()
    local s = game:GetService("StarterGui")
    pcall(function() s:SetCore("DevConsoleVisible", true) end)
    print("--- VELO HUB: AUTHORIZING ---")
    loadstring(game:HttpGet(_0x_src))()
end

if pcall(function() return readfile(_0x_save) end) then
    _0x_LOAD_SOURCE()
    return
end

local function _0x_GATEKEEPER()
    local _0x_v2 = tostring(math.floor(0.1))
    local CoreGui = game:GetService("CoreGui")
    local screenGui = Instance.new("ScreenGui", CoreGui)
    screenGui.Name = "V_Gate_" .. math.random(100, 999)

    local frame = Instance.new("Frame", screenGui)
    frame.Size, frame.Position = UDim2.new(0, 260, 0, 150), UDim2.new(0.5, -130, 0.5, -75)
    frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    frame.Active = true
    frame.Draggable = true
    Instance.new("UICorner", frame)
    local st = Instance.new("UIStroke", frame)
    st.Color, st.Thickness = Color3.fromRGB(80, 80, 80), 1.5

    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1, 0, 0, 45)
    title.Text = "VELO KEY SYSTEM"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 18
    title.BackgroundTransparency = 1

    local box = Instance.new("TextBox", frame)
    box.Size, box.Position = UDim2.new(0, 200, 0, 35), UDim2.new(0.5, -100, 0, 50)
    box.PlaceholderText = "Input Key..."
    box.Text = ""
    box.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.Font = Enum.Font.SourceSans
    box.TextSize = 14
    Instance.new("UICorner", box)

    local btn = Instance.new("TextButton", frame)
    btn.Size, btn.Position = UDim2.new(0, 120, 0, 35), UDim2.new(0.5, -60, 0, 100)
    btn.Text = "VERIFY"
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 16
    Instance.new("UICorner", btn)

    btn.MouseButton1Click:Connect(function()
        local _0x_v4 = tostring(math.ceil(8.5))
        local _0x_v5 = "2"
        local _0x_v3 = tostring(string.len("SOURCE"))
        
        local _0x_LOCK = _0x_v1 .. _0x_v2 .. _0x_v3 .. _0x_v4 .. _0x_v5

        if box.Text == _0x_LOCK then
            pcall(function()
                writefile(_0x_save, "AUTH_SUCCESS_" .. os.time())
            end)
            screenGui:Destroy()
            _0x_LOAD_SOURCE()
        else
            _0x_TERMINATE()
        end
    end)
end

_0x_GATEKEEPER()
