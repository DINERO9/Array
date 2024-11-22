
local RunService = game:GetService("RunService")
gethiddenstuff = {}
gethiddenstuff.MakeCustomOutline = function(Main)
    local rainbowColor = Instance.new("UIStroke",Main)
    rainbowColor.Thickness = 1.5
    rainbowColor.ApplyStrokeMode = "Border"
    rainbowColor.Color = Color3.new(1,1,1)
    rainbowColor.Transparency = 0
    local colorgrad = Instance.new("UIGradient",rainbowColor)
    colorgrad.Color = ColorSequence.new(
        Color3.fromHex("030bfc"),
        Color3.fromHex("03fcec")
        )
    if Main 
    and Main:FindFirstChild("UIStroke")
    and Main:FindFirstChild("UIStroke"):FindFirstChild("UIGradient") then
        uiconnection = RunService.RenderStepped:Connect(function(deltaTime)
            if Main 
            and Main:FindFirstChild("UIStroke")
            and Main:FindFirstChild("UIStroke"):FindFirstChild("UIGradient") then
                uiG = Main.UIStroke.UIGradient
                uiG.Rotation = (uiG.Rotation + 1) % 360
            end
        end)
    end
end

gethiddenstuff.MakeCustomTopBar = function(Main)
    local customTopbar = Instance.new("UIStroke",Main.Topbar)
    customTopbar.Thickness = 1.5
    customTopbar.ApplyStrokeMode = "Border"
    customTopbar.Color = Color3.new(1,1,1)
    customTopbar.Transparency = 0
    local customgradcolor = Instance.new("UIGradient",customTopbar)
    customgradcolor.Color = ColorSequence.new(
        Color3.fromHex("030bfc"),
        Color3.fromHex("03fcec")
        )
    if Main.Topbar
    and Main.Topbar:FindFirstChild("UIStroke")
    and Main.Topbar:FindFirstChild("UIStroke"):FindFirstChild("UIGradient") then
        uitopbarconnection = RunService.RenderStepped:Connect(function(deltaTime)
            if Main.Topbar
            and Main.Topbar:FindFirstChild("UIStroke")
            and Main.Topbar:FindFirstChild("UIStroke"):FindFirstChild("UIGradient") then
                uitopG = Main.Topbar.UIStroke.UIGradient
                uitopG.Rotation = (uitopG.Rotation + 1) % 360
            end
        end)
    end
end
