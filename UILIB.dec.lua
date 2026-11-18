-- recovered by ib3_deobf (pseudo-Lua; registers are v0/w0/x0..)
local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10
v0 = {}
v0.count = 0
v0.binding = false
v0.rainbowI = 0
v0.buttons = {}
v0.toggles = {}
v0.sliders = {}
v0.togglecolor = Color3.fromRGB(0, 255, 111)
v1 = game:GetService("TweenService")
v3 = game:GetService("HttpService"):GenerateGUID(true)
v4 = pairs
for v7, v8 in v4(game:GetService("CoreGui"):GetDescendants()) do
  v9 = v8.Name
  if v9 == "HiI'mSexyDon'tTouchMePls" then
    v8.Parent:Destroy()
  end
end
v4 = Instance.new("ScreenGui")
v4.Name = tostring(v3)
v4.Parent = game:GetService("CoreGui")
Instance.new("IntValue", v4).Name = "HiI'mSexyDon'tTouchMePls"
game:GetService("UserInputService").InputEnded:Connect(function(w0)
  local w1, w2
  w1 = w0.KeyCode
  if w1 == Enum.KeyCode.RightControl then
    v4.Enabled = (not v4.Enabled)
  end
  return
end)
v0.CreateWindow = function(w0, w1)
  local w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15
  w2 = {}
  w3 = game:GetService("Players").LocalPlayer:GetMouse()
  w4 = game:GetService("UserInputService")
  w5 = game:GetService("RunService").Heartbeat
  w2.new = function(x0)
    local x1, x2, x3, x4, x5
    x1, x2 = pcall(function()
      local y0
      return x0.MouseEnter
      return
    end)
    if x1 then
      x0.Active = true
      x2:connect(function()
        local y0, y1, y2, y3, y4
        y0 = x0.InputBegan:connect(function(z0)
          local z1, z2, z3, z4
          z1 = z0.UserInputType
          if z1 == Enum.UserInputType.MouseButton1 then
            z1 = Vector2.new
            z2 = w3.X
            z2 = (z2 - x0.AbsolutePosition.X)
            z3 = w3.Y
            z1 = z1(z2, (z3 - x0.AbsolutePosition.Y))
            while true do
              if not w5:wait() then
                break
              end
              z3 = w4
              z2 = z3.IsMouseButtonPressed
              if not z2(z3, Enum.UserInputType.MouseButton1) then
                break
              end
              pcall(function()
                local a0, a1, a2, a3, a4, a5, a6, a7, a8
                a1 = x0
                a0 = a1.TweenPosition
                a2 = UDim2.new
                a4 = w3.X
                a4 = (a4 - z1.X)
                a5 = x0.Size.X.Offset
                a4 = (a4 + (a5 * x0.AnchorPoint.X))
                a6 = w3.Y
                a6 = (a6 - z1.Y)
                a7 = x0.Size.Y.Offset
                a0(a1, a2(0, a4, 0, (a6 + (a7 * x0.AnchorPoint.Y))), "Out", "Quart", 0, true)
                return
              end)
            end
          end
          return
        end)
        y1 = nil
        y1 = x0.MouseLeave:connect(function()
          local z0, z1
          y0:disconnect()
          y1:disconnect()
          return
        end)
        return
      end)
    end
    return
  end
  coroutine.wrap(function()
    local x0, x1, x2, x3, x4, x5, x6, x7, x8
    while true do
      x0 = 0
      x1 = 359
      x2 = 1
      for x3 = x0, x1, x2 do
        v0.rainbowI = (x3 / 359)
        v0.rainbowVal = Color3.fromHSV((x3 / 359), 1, 1)
        wait()
      end
    end
    return
  end)()
  v0.count = (v0.count + 1)
  w3 = Instance.new("ImageLabel")
  w4 = Instance.new("TextLabel")
  w5 = Instance.new("ImageButton")
  w6 = Instance.new("ImageLabel")
  w7 = Instance.new("Frame")
  w8 = Instance.new("ImageLabel")
  w9 = Instance.new("Frame")
  w10 = Instance.new("UIListLayout")
  if 34 < string.len(w1) then
    w4.TextScaled = true
  end
  w3.Name = "TopBar"
  w3.Parent = v4
  w3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  w3.BackgroundTransparency = 1
  w11 = UDim2.new
  w3.Position = w11(0, (15 + ((250 * v0.count) - 250)), 0, 15)
  w3.Size = UDim2.new(0, 200, 0, 50)
  w3.Image = "rbxassetid://4921672704"
  w3.ImageColor3 = Color3.fromRGB(20, 20, 20)
  w3.ScaleType = Enum.ScaleType.Slice
  w3.SliceCenter = Rect.new(128, 128, 128, 128)
  w3.SliceScale = 0.05
  w4.Name = "Title"
  w4.Parent = w3
  w4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  w4.BackgroundTransparency = 1
  w4.Size = UDim2.new(0.86, 0, 1, 0)
  w4.Font = Enum.Font.SourceSansBold
  w4.Text = w1
  w4.TextColor3 = Color3.fromRGB(250, 250, 250)
  w4.TextSize = 22
  w4.TextWrapped = true
  w5.Name = "Dropdown"
  w5.Parent = w3
  w5.AnchorPoint = Vector2.new(0, 0.5)
  w5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  w5.BackgroundTransparency = 1
  w5.Position = UDim2.new(1, -30, 0, 25)
  w5.Size = UDim2.new(0, 25, 0, 25)
  w6.Name = "Inside"
  w6.Parent = w5
  w6.AnchorPoint = Vector2.new(0.5, 0)
  w6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  w6.BackgroundTransparency = 1
  w6.Position = UDim2.new(0, 12, 0, 11)
  w6.Size = UDim2.new(0, 12, 0, 6)
  w6.Image = "rbxassetid://4921674763"
  w6.ImageColor3 = Color3.fromRGB(46, 46, 46)
  w6.ScaleType = Enum.ScaleType.Fit
  w7.Name = "HideRounding"
  w7.Parent = w3
  w7.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  w7.BorderSizePixel = 0
  w7.Position = UDim2.new(0, 0, 1, -5)
  w7.Size = UDim2.new(1, 0, 0, 5)
  w8.Name = "Cap"
  w8.Parent = w3
  w8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  w8.BackgroundTransparency = 1
  w8.BorderSizePixel = 0
  w8.Position = UDim2.new(0, 0, 1, -2)
  w8.Rotation = 0.01
  w8.Size = UDim2.new(1, 0, 0, 5)
  w8.ZIndex = 0
  w8.Image = "rbxassetid://4921676405"
  w8.ImageColor3 = Color3.fromRGB(20, 20, 20)
  w8.ScaleType = Enum.ScaleType.Slice
  w8.SliceCenter = Rect.new(128, 0, 128, 0)
  w9.Name = "Content"
  w9.Parent = w3
  w9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  w9.BackgroundTransparency = 1
  w9.ClipsDescendants = true
  w9.Position = UDim2.new(0, 0, 1, 0)
  w9.Size = UDim2.new(1, 0, 0, 0)
  w10.Parent = w9
  w10.SortOrder = Enum.SortOrder.LayoutOrder
  w11 = w5
  w12 = w6
  w11.MouseButton1Click:Connect(function()
    local x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17
    x0 = w9.Size
    x1 = UDim2.new(1, 0, 0, 0)
    if x0 == x1 then
      x1 = v1
      x0 = x1.Create
      x3 = TweenInfo.new
      x5 = Enum.EasingStyle.Quart
      x2 = w12
      x3 = x3(0.5, x5, Enum.EasingDirection.Out)
      x4 = {}
      x4.Rotation = 180
      x0 = x0(x1, x2, x3, x4)
      x1 = pairs
      for x4, x5 in x1(w9:GetChildren()) do
        if not x5:IsA("UIListLayout") then
          x5.ClipsDescendants = false
          x7 = x5
          x6 = x7.TweenSize
          x6(x7, UDim2.new(1, 0, 0, 35), "Out", "Quart", 0.5)
        end
      end
      x0:Play()
      x2 = w9
      x1 = x2.TweenSize
      x1(x2, UDim2.new(1, 0, 1, 0), "Out", "Quart", 0.5, true)
      w9.ClipsDescendants = false
    else
      x1 = v1
      x0 = x1.Create
      x3 = TweenInfo.new
      x5 = Enum.EasingStyle.Quart
      x2 = w12
      x3 = x3(0.5, x5, Enum.EasingDirection.In)
      x4 = {}
      x4.Rotation = 0
      x0 = x0(x1, x2, x3, x4)
      x1 = pairs
      for x4, x5 in x1(w9:GetChildren()) do
        x6 = x5:IsA("UIListLayout")
        if not x6 then
          x5.ClipsDescendants = true
          for x9, x10 in pairs(x5:GetChildren()) do
            x11 = x10:IsA("UIListLayout")
            if not x11 then
              x11 = x10.Name
              if x11 == "TopBar" then
                goto L129
              end
              x10.ClipsDescendants = true
              x12 = x10
              x11 = x12.TweenSize
              x11(x12, UDim2.new(1, 0, 0, 0), "In", "Quart", 0.5, true)
            else
              ::L129::
              x11 = x10:IsA("UIListLayout")
              if not x11 then
                if x10.Name == "TopBar" then
                  x10.Dropdown.Inside.Rotation = 0
                end
              end
            end
          end
          x7 = x5
          x6 = x7.TweenSize
          x6(x7, UDim2.new(1, 0, 0, 0), "In", "Quart", 0.5)
        end
      end
      x0:Play()
      x2 = w9
      x1 = x2.TweenSize
      x1(x2, UDim2.new(1, 0, 0, 0), "Out", "Quart", 0.5, true)
      wait(0.3)
      w9.ClipsDescendants = true
    end
    return
  end)
  w13 = {}
  w13.CreateFolder = function(x0, x1)
    local x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15
    x2 = Instance.new("ImageLabel")
    x3 = Instance.new("ImageLabel")
    x4 = Instance.new("TextLabel")
    x5 = Instance.new("ImageLabel")
    x6 = Instance.new("ImageButton")
    x7 = Instance.new("ImageLabel")
    x8 = Instance.new("UIListLayout")
    if 18 < string.len(x1) then
      x4.TextScaled = true
    end
    x2.Name = "Section"
    x2.Parent = w9
    x2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    x2.BackgroundTransparency = 1
    x2.Size = UDim2.new(1, 0, 0, 35)
    x2.Image = "rbxassetid://4921677978"
    x2.ImageColor3 = Color3.fromRGB(30, 30, 30)
    x2.ScaleType = Enum.ScaleType.Slice
    x2.SliceCenter = Rect.new(128, 128, 128, 128)
    x2.SliceScale = 0.05
    x3.Name = "TopBar"
    x3.Parent = x2
    x3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    x3.BackgroundTransparency = 1
    x3.ClipsDescendants = true
    x3.LayoutOrder = -1
    x3.Size = UDim2.new(1, 0, 0, 35)
    x3.Image = "rbxassetid://4921677978"
    x3.ImageColor3 = Color3.fromRGB(26, 26, 26)
    x3.ScaleType = Enum.ScaleType.Slice
    x3.SliceCenter = Rect.new(128, 128, 128, 128)
    x3.SliceScale = 0.05
    x4.Name = "Title"
    x4.Parent = x3
    x4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    x4.BackgroundTransparency = 1
    x4.Position = UDim2.new(0, 13, 0, 0)
    x4.Size = UDim2.new(0.86, -15, 1, 0)
    x4.Font = Enum.Font.SourceSansBold
    x4.Text = x1
    x4.TextColor3 = Color3.fromRGB(212, 212, 212)
    x4.TextSize = 20
    x4.TextXAlignment = Enum.TextXAlignment.Left
    x4.TextWrapped = true
    x5.Name = "Cap"
    x5.Parent = x3
    x5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    x5.BackgroundTransparency = 1
    x5.Position = UDim2.new(0, 0, 1, -2)
    x5.Rotation = 0.01
    x5.Size = UDim2.new(1, 0, 0, 5)
    x5.ZIndex = 0
    x5.Image = "rbxassetid://4921676405"
    x5.ImageColor3 = Color3.fromRGB(26, 26, 26)
    x5.ScaleType = Enum.ScaleType.Slice
    x5.SliceCenter = Rect.new(128, 0, 128, 0)
    x6.Name = "Dropdown"
    x6.Parent = x3
    x6.AnchorPoint = Vector2.new(0, 0.5)
    x6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    x6.BackgroundTransparency = 1
    x6.Position = UDim2.new(1, -30, 0, 16)
    x6.Size = UDim2.new(0, 25, 0, 25)
    x7.Name = "Inside"
    x7.Parent = x6
    x7.AnchorPoint = Vector2.new(0.5, 0)
    x7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    x7.BackgroundTransparency = 1
    x7.Position = UDim2.new(0, 12, 0, 11)
    x7.Size = UDim2.new(0, 12, 0, 6)
    x7.Image = "rbxassetid://4921674763"
    x7.ImageColor3 = Color3.fromRGB(46, 46, 46)
    x7.ScaleType = Enum.ScaleType.Fit
    x8.Parent = x2
    x8.SortOrder = Enum.SortOrder.LayoutOrder
    x9 = x6
    x10 = x7
    x11 = x2
    x12 = nil
    x9.MouseButton1Click:Connect(function()
      local y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13
      x11.ClipsDescendants = true
      y0 = x11.Size
      y1 = pairs
      for y4, y5 in y1(x9.Parent.Parent:GetChildren()) do
        if not y5:IsA("UIListLayout") then
          y6 = y5.Size
          y7 = UDim2.new(1, 0, 0, 0)
          if y6 == y7 then
            if y5.Name ~= "TopBar" then
              y6 = y5.Name
              if y6 == "Slider" then
                x12 = 50
              else
                x12 = 35
              end
              y7 = v1
              y6 = y7.Create
              y9 = TweenInfo.new
              y11 = Enum.EasingStyle.Quart
              y8 = x10
              y9 = y9(0.5, y11, Enum.EasingDirection.Out)
              y10 = {}
              y10.Rotation = 180
              y6(y7, y8, y9, y10):Play()
              y8 = y5
              y7 = y8.TweenSize
              y7(y8, UDim2.new(1, 0, 0, x12), "Out", "Quart", 0.5, true)
              y0 = (y0 + UDim2.new(0, 0, 0, x12))
              y7 = y5.Name
              if y7 ~= "Dropdown" then
                if y5.Name ~= "ColorPicker" then
                  goto L153
                end
              end
              y5.ClipsDescendants = false
              goto L153
            end
          end
        end
        y6 = y5:IsA("UIListLayout")
        if not y6 then
          y6 = y5.Size
          y7 = UDim2.new(1, 0, 0, 0)
          if y6 ~= y7 then
            y6 = y5.Name
            if y6 ~= "TopBar" then
              y7 = v1
              y6 = y7.Create
              y9 = TweenInfo.new
              y11 = Enum.EasingStyle.Quart
              y8 = x10
              y9 = y9(0.5, y11, Enum.EasingDirection.In)
              y10 = {}
              y10.Rotation = 0
              y6(y7, y8, y9, y10):Play()
              y8 = y5
              y7 = y8.TweenSize
              y7(y8, UDim2.new(1, 0, 0, 0), "In", "Quart", 0.1, true)
              y8 = x11
              y7 = y8.TweenSize
              y7(y8, UDim2.new(1, 0, 0, 35), "In", "Quart", 0.1, true)
              y5.ClipsDescendants = true
              y0 = nil
            end
          end
        end
      end
      if y0 ~= nil then
        x11:TweenSize(y0, "Out", "Quart", 1, true)
        wait(0.5)
        x11.ClipsDescendants = false
      end
      x11.ClipsDescendants = false
      return
    end)
    x13 = {}
    x13.btnRipple = function(y0, y1)
      local y2, y3
      spawn(function()
        local z0, z1, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, z12, z13
        z0 = game:GetService("Players").LocalPlayer:GetMouse()
        z1 = Instance.new("ImageLabel", y1)
        z2 = Instance.new("ImageLabel", z1)
        z1.Name = "rippleEffect"
        z1.BackgroundTransparency = 1
        z1.BorderSizePixel = 0
        z1.Image = "rbxassetid://4921679257"
        z1.ImageColor3 = Color3.fromRGB(38, 38, 38)
        z1.ImageTransparency = 0.7
        z1.ScaleType = Enum.ScaleType.Fit
        z2.Name = "rippleEffect"
        z2.AnchorPoint = Vector2.new(0.5, 0.5)
        z2.BackgroundTransparency = 1
        z2.BorderSizePixel = 0
        z2.Position = UDim2.new(0.5, 0, 0.5, 0)
        z2.Size = UDim2.new(1, 0, 1, 0)
        z2.Image = "rbxassetid://4921679257"
        z2.ImageColor3 = Color3.fromRGB(45, 45, 45)
        z2.ImageTransparency = 0.7
        z2.ScaleType = Enum.ScaleType.Fit
        z3 = UDim2.new
        z4 = z0.X
        z4 = (z4 - z1.AbsolutePosition.X)
        z4 = (z4 / y1.AbsoluteSize.X)
        z6 = z0.Y
        z6 = (z6 - z1.AbsolutePosition.Y)
        z1.Position = z3(z4, 0, (z6 / y1.AbsoluteSize.Y), 0)
        z5 = game:GetService("TweenService")
        z4 = z5.Create
        z6 = z1
        z7 = TweenInfo.new
        z9 = Enum.EasingStyle.Quart
        z7 = z7(0.5, z9, Enum.EasingDirection.Out)
        z8 = {}
        z8.Position = UDim2.new(-4.5, 0, -4.5, 0)
        z8.Size = UDim2.new(10, 0, 10, 0)
        z8.ImageTransparency = 1
        z4 = z4(z5, z6, z7, z8)
        z4:Play()
        z4.Completed:Connect(function()
          local a0, a1
          z1:Destroy()
          return
        end)
        return
      end)
      return
    end
    x13.Toggle = function(y0, y1, y2)
      local y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15
      if typeof(y2) == "function" then
        if y2 then
          goto L8
        end
      else
        y2 = function()
          return
        end
      end
      ::L8::
      y3 = Instance.new("ImageLabel")
      y4 = Instance.new("TextLabel")
      y5 = Instance.new("ImageLabel")
      y6 = Instance.new("ImageButton")
      y7 = Instance.new("ImageLabel")
      y8 = Instance.new("ImageLabel")
      y3.Name = "Toggle"
      y3.Parent = x2
      y3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y3.BackgroundTransparency = 1
      y3.ClipsDescendants = true
      y3.LayoutOrder = 1
      y3.Size = UDim2.new(1, 0, 0, 0)
      y3.Image = "rbxassetid://4921677978"
      y3.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y3.ScaleType = Enum.ScaleType.Slice
      y3.SliceCenter = Rect.new(128, 128, 128, 128)
      y3.SliceScale = 0.05
      y4.Name = "Title"
      y4.Parent = y3
      y4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y4.BackgroundTransparency = 1
      y4.Position = UDim2.new(0, 7, 0, 2)
      y4.Size = UDim2.new(0, 145, 0, 30)
      y4.Font = Enum.Font.SourceSansSemibold
      y4.Text = y1
      y4.TextColor3 = Color3.fromRGB(169, 169, 169)
      y4.TextSize = 20
      y4.TextWrapped = true
      y4.TextXAlignment = Enum.TextXAlignment.Left
      y5.Name = "Cap"
      y5.Parent = y3
      y5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y5.BackgroundTransparency = 1
      y5.Position = UDim2.new(0, 0, 1, -2)
      y5.Size = UDim2.new(1, 0, 0, 5)
      y5.Image = "rbxassetid://4921676405"
      y5.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y5.ScaleType = Enum.ScaleType.Slice
      y5.SliceCenter = Rect.new(128, 0, 128, 0)
      y5.SliceScale = 0.01
      y6.Name = "Tick"
      y6.Parent = y3
      y6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y6.BackgroundTransparency = 1
      y6.BorderColor3 = Color3.fromRGB(0, 0, 0)
      y6.BorderSizePixel = 100
      y6.Position = UDim2.new(1, -28, 0, 7)
      y6.Size = UDim2.new(0, 21, 0, 21)
      y6.Image = "rbxassetid://4921672704"
      y6.ImageColor3 = Color3.fromRGB(94, 93, 94)
      y6.ScaleType = Enum.ScaleType.Slice
      y6.SliceCenter = Rect.new(128, 128, 128, 128)
      y6.SliceScale = 0.03
      y7.Name = "Fill"
      y7.Parent = y6
      y7.Active = true
      y7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y7.BackgroundTransparency = 1
      y7.Position = UDim2.new(0, 2, 0, 2)
      y7.Size = UDim2.new(1, -4, 1, -4)
      y7.Image = "rbxassetid://4921672704"
      y7.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y7.ScaleType = Enum.ScaleType.Slice
      y7.SliceCenter = Rect.new(128, 128, 128, 128)
      y7.SliceScale = 0.01
      y8.Name = "Check"
      y8.Parent = y6
      y8.Active = true
      y8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y8.BackgroundTransparency = 1
      y8.Position = UDim2.new(0, 5, 0, 4)
      y8.Size = UDim2.new(1, -9, 1, -9)
      y8.Image = "rbxassetid://4921680783"
      y8.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y8.ImageTransparency = 1
      y8.ScaleType = Enum.ScaleType.Fit
      y9 = y6
      y10 = y7
      y11 = y8
      y12 = false
      y9.MouseButton1Click:Connect(function()
        local z0, z1, z2, z3, z4, z5, z6, z7, z8, z9
        y12 = (not y12)
        pcall(y2, y12)
        z0 = y12
        if z0 then
          z1 = v1
          z0 = z1.Create
          z2 = y9
          z3 = TweenInfo.new(0.1)
          z4 = {}
          z5 = _G.ToggleColor
          if not z5 then
            z5 = v0.togglecolor
          end
          z4.ImageColor3 = z5
          z0 = z0(z1, z2, z3, z4)
          z2 = v1
          z1 = z2.Create
          z3 = y11
          z4 = TweenInfo.new(0.1)
          z5 = {}
          z5.ImageTransparency = 0
          z1(z2, z3, z4, z5):Play()
          z3 = y10
          z2 = z3.TweenSizeAndPosition
          z4 = UDim2.new(0, 0, 0, 0)
          z2(z3, z4, UDim2.new(0.5, 0, 0.5, 0), "Out", "Quart", 0.1, true)
          z0:Play()
        else
          z1 = v1
          z0 = z1.Create
          z2 = y9
          z3 = TweenInfo.new(0.1)
          z4 = {}
          z4.ImageColor3 = Color3.fromRGB(94, 93, 94)
          z0 = z0(z1, z2, z3, z4)
          z2 = v1
          z1 = z2.Create
          z3 = y11
          z4 = TweenInfo.new(0.1)
          z5 = {}
          z5.ImageTransparency = 1
          z1(z2, z3, z4, z5):Play()
          z3 = y10
          z2 = z3.TweenSizeAndPosition
          z4 = UDim2.new(1, -4, 1, -4)
          z2(z3, z4, UDim2.new(0, 2, 0, 2), "Out", "Quart", 0.1, true)
          z0:Play()
        end
        return
      end)
      y13 = table.insert
      y13(v0.toggles, y3)
      return
    end
    x13.Button = function(y0, y1, y2)
      local y3, y4, y5, y6, y7, y8, y9, y10, y11, y12
      if typeof(y2) == "function" then
        if y2 then
          goto L8
        end
      else
        y2 = function()
          return
        end
      end
      ::L8::
      y3 = Instance.new("ImageLabel")
      y4 = Instance.new("ImageLabel")
      y5 = Instance.new("ImageButton")
      y6 = Instance.new("TextLabel")
      y7 = Instance.new("ImageLabel")
      if 15 < string.len(y1) then
        y6.TextScaled = true
      end
      y3.Name = "Button"
      y3.Parent = x2
      y3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y3.BackgroundTransparency = 1
      y3.ClipsDescendants = true
      y3.LayoutOrder = 1
      y3.Size = UDim2.new(1, 0, 0, 0)
      y3.Image = "rbxassetid://4921677978"
      y3.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y3.ScaleType = Enum.ScaleType.Slice
      y3.SliceCenter = Rect.new(128, 128, 128, 128)
      y3.SliceScale = 0.05
      y3.ClipsDescendants = true
      y4.Name = "Cap"
      y4.Parent = y3
      y4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y4.BackgroundTransparency = 1
      y4.Position = UDim2.new(0, 0, 1, -2)
      y4.Size = UDim2.new(1, 0, 0, 5)
      y4.Image = "rbxassetid://4921676405"
      y4.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y4.ScaleType = Enum.ScaleType.Slice
      y4.SliceCenter = Rect.new(128, 0, 128, 0)
      y4.SliceScale = 0.01
      y5.Name = "Button"
      y5.Parent = y3
      y5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y5.BackgroundTransparency = 1
      y5.Position = UDim2.new(0, 8, 0, 5)
      y5.Size = UDim2.new(1, -15, 0, 23)
      y5.Image = "rbxassetid://4921672704"
      y8 = _G.ButtonColor
      if not y8 then
        y8 = Color3.fromRGB(0, 255, 111)
      end
      y5.ImageColor3 = y8
      y5.ScaleType = Enum.ScaleType.Slice
      y5.SliceCenter = Rect.new(128, 128, 128, 128)
      y5.SliceScale = 0.03
      y5.ClipsDescendants = true
      y6.Name = "Title"
      y6.Parent = y5
      y6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y6.BackgroundTransparency = 1
      y6.Size = UDim2.new(0.82, 0, 1, 0)
      y6.Position = UDim2.new(0, 15, 0, 0)
      y6.Font = Enum.Font.SourceSansBold
      y6.Text = y1
      y6.TextColor3 = Color3.fromRGB(0, 0, 0)
      y6.TextSize = 20
      y6.TextWrapped = true
      y7.Name = "Check"
      y7.Parent = y5
      y7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y7.BackgroundTransparency = 1
      y7.Position = UDim2.new(0, 5, 0, 6)
      y7.Size = UDim2.new(0, 12, 0, 12)
      y7.Image = "rbxassetid://4921682252"
      y7.ImageColor3 = Color3.fromRGB(0, 0, 0)
      y7.ScaleType = Enum.ScaleType.Fit
      y8 = y5
      y8.MouseButton1Click:Connect(function()
        local z0, z1
        pcall(y2)
        return
      end)
      y8.MouseButton1Click:Connect(function()
        local z0, z1, z2
        x13:btnRipple(y8)
        return
      end)
      y9 = table.insert
      y9(v0.buttons, y3)
      return
    end
    x13.Slider = function(y0, y1, y2, y3, y4, y5)
      local y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16, y17, y18, y19, y20, y21, y22, y23
      if typeof(y4) == "boolean" then
        if y4 then
          goto L9
        end
      end
      y4 = false
      ::L9::
      if typeof(y5) == "function" then
        if y5 then
          goto L19
        end
      end
      y5 = function()
        return
      end
      ::L19::
      y6 = Instance.new("ImageLabel")
      y7 = Instance.new("TextLabel")
      y8 = Instance.new("ImageLabel")
      y9 = Instance.new("TextBox")
      y10 = Instance.new("ImageButton")
      y11 = Instance.new("ImageLabel")
      y12 = Instance.new("ImageButton")
      y13 = Instance.new("ImageLabel")
      y14 = Instance.new("ImageLabel")
      if 15 < string.len(y1) then
        y7.TextScaled = true
      end
      y6.Name = "Slider"
      y6.Parent = x2
      y6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y6.BackgroundTransparency = 1
      y6.ClipsDescendants = true
      y6.LayoutOrder = 1
      y6.Position = UDim2.new(0.0299999993, 0, 1.22857141, 0)
      y6.Size = UDim2.new(1, 0, 0, 0)
      y6.Image = "rbxassetid://4921677978"
      y6.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y6.ScaleType = Enum.ScaleType.Slice
      y6.SliceCenter = Rect.new(128, 128, 128, 128)
      y6.SliceScale = 0.05
      y7.Name = "Title"
      y7.Parent = y6
      y7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y7.BackgroundTransparency = 1
      y7.Position = UDim2.new(0, 0, 0.100000001, 0)
      y7.Size = UDim2.new(0, 125, 0, 20)
      y7.Font = Enum.Font.SourceSansSemibold
      y7.Text = y1
      y7.TextColor3 = Color3.fromRGB(212, 212, 212)
      y7.TextSize = 18
      y7.TextWrapped = true
      y8.Name = "Input"
      y8.Parent = y6
      y8.Active = true
      y8.AnchorPoint = Vector2.new(1, 0.5)
      y8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y8.BackgroundTransparency = 1
      y8.Position = UDim2.new(0.964999974, 0, 0.360000014, 0)
      y8.Size = UDim2.new(0, 35, 0, 20)
      y8.Image = "rbxassetid://4921672704"
      y8.ImageColor3 = Color3.fromRGB(46, 46, 46)
      y8.ScaleType = Enum.ScaleType.Slice
      y8.SliceCenter = Rect.new(128, 128, 128, 128)
      y8.SliceScale = 0.03
      y9.Name = "Value"
      y9.Parent = y8
      y9.AnchorPoint = Vector2.new(0.5, 0.5)
      y9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y9.BackgroundTransparency = 1
      y9.Position = UDim2.new(0.5, 0, 0.5, 0)
      y9.Size = UDim2.new(1, 1, 1, 1)
      y9.Font = Enum.Font.SourceSansSemibold
      y9.PlaceholderColor3 = Color3.fromRGB(112, 112, 112)
      y9.Text = ""
      y9.TextColor3 = Color3.fromRGB(169, 169, 169)
      y9.TextScaled = true
      y9.TextSize = 14
      y9.TextWrapped = true
      y10.Name = "Slider"
      y10.Parent = y6
      y10.AnchorPoint = Vector2.new(0.5, 0.5)
      y10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y10.BackgroundTransparency = 1
      y10.Position = UDim2.new(0.5, 0, 0.800000012, 0)
      y10.Size = UDim2.new(1, -14, 0, 4)
      y10.Image = "rbxassetid://4921672704"
      y10.ImageColor3 = Color3.fromRGB(46, 46, 46)
      y10.ScaleType = Enum.ScaleType.Slice
      y10.SliceCenter = Rect.new(128, 128, 128, 128)
      y11.Name = "Indicator"
      y11.Parent = y10
      y11.Active = true
      y11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y11.BackgroundTransparency = 1
      y11.Size = UDim2.new(1, 0, 1, 0)
      y11.Image = "rbxassetid://4921672704"
      y15 = _G.SliderColor
      if not y15 then
        y15 = Color3.fromRGB(0, 255, 111)
      end
      y11.ImageColor3 = y15
      y11.ScaleType = Enum.ScaleType.Slice
      y11.SliceCenter = Rect.new(128, 128, 128, 128)
      y12.Name = "Dragger"
      y12.Parent = y11
      y12.AnchorPoint = Vector2.new(0.5, 0.5)
      y12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y12.BackgroundTransparency = 1
      y12.Position = UDim2.new(1, 0, 0.5, 0)
      y12.Size = UDim2.new(0, 12, 0, 12)
      y12.ZIndex = 3
      y12.Image = "rbxassetid://4921672704"
      y12.ScaleType = Enum.ScaleType.Slice
      y12.SliceCenter = Rect.new(128, 128, 128, 128)
      y13.Name = "Selection"
      y13.Parent = y12
      y13.AnchorPoint = Vector2.new(0.5, 0.5)
      y13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y13.BackgroundTransparency = 1
      y13.Position = UDim2.new(0.5, 0, 0.5, 0)
      y13.Size = UDim2.new(2, 0, 2, 0)
      y13.ZIndex = 2
      y13.Image = "rbxassetid://4921672704"
      y13.ImageColor3 = Color3.fromRGB(0, 255, 111)
      y13.ImageTransparency = 1
      y13.ScaleType = Enum.ScaleType.Slice
      y13.SliceCenter = Rect.new(128, 128, 128, 128)
      y14.Name = "Cap"
      y14.Parent = y6
      y14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y14.BackgroundTransparency = 1
      y14.Position = UDim2.new(0, 0, 1, -2)
      y14.Rotation = 0.01
      y14.Size = UDim2.new(1, 0, 0, 5)
      y14.ZIndex = 0
      y14.Image = "rbxassetid://4921676405"
      y14.ImageColor3 = Color3.fromRGB(26, 26, 26)
      y14.ScaleType = Enum.ScaleType.Slice
      y14.SliceCenter = Rect.new(128, 0, 128, 0)
      y15 = y9
      y16 = y6
      y17 = y10
      y18 = y11
      y19 = Vector2.new
      y20 = y18.AbsoluteSize.X
      y19 = y19(y20, y18.AbsoluteSize.Y)
      y12.MouseEnter:Connect(function()
        local z0, z1, z2, z3, z4, z5, z6
        z1 = v1
        z0 = z1.Create
        z3 = TweenInfo.new
        z5 = Enum.EasingStyle.Quart
        z2 = y13
        z3 = z3(0.5, z5, Enum.EasingDirection.In)
        z4 = {}
        z4.ImageTransparency = 0.8
        z0(z1, z2, z3, z4):Play()
        return
      end)
      y12.MouseLeave:Connect(function()
        local z0, z1, z2, z3, z4, z5, z6
        z1 = v1
        z0 = z1.Create
        z3 = TweenInfo.new
        z5 = Enum.EasingStyle.Quart
        z2 = y13
        z3 = z3(0.5, z5, Enum.EasingDirection.Out)
        z4 = {}
        z4.ImageTransparency = 1
        z0(z1, z2, z3, z4):Play()
        return
      end)
      y20 = nil
      game:GetService("UserInputService").InputEnded:Connect(function(z0)
        local z1, z2
        z1 = z0.UserInputType
        z2 = Enum.UserInputType.MouseButton1
        if z1 == z2 then
          z1 = y20
          if z1 then
            y20:Disconnect()
            z1 = nil
            y20 = z1
          end
        end
        return
      end)
      y12.MouseButton1Down:Connect(function()
        local z0, z1, z2
        z0 = y20
        if z0 then
          y20:Disconnect()
        end
        y20 = game:GetService("RunService").Heartbeat:Connect(function()
          local a0, a1, a2, a3, a4, a5, a6, a7, a8, a9
          a0 = game:GetService("UserInputService"):GetMouseLocation()
          a1 = math.clamp
          a2 = a0.X
          a2 = (a2 - y6.AbsolutePosition.X)
          a1 = a1((a2 / y6.AbsoluteSize.X), 0, 1)
          a2 = (y2 + ((y3 - y2) * a1))
          if not y4 then
            a2 = math.floor(a2)
            goto L42
          end
          a2 = string.format("%.2f", a2)
          ::L42::
          a2 = tonumber(a2)
          a4 = y11
          a3 = a4.TweenSize
          a3(a4, UDim2.new(a1, 0, 1, 0), "InOut", "Linear", 0, true)
          y9.Text = tostring(a2)
          pcall(y5, a2)
          return
        end)
        return
      end)
      y15.FocusLost:Connect(function()
        local z0, z1, z2, z3, z4, z5, z6
        z0 = typeof
        z1 = tonumber
        z0 = z0(z1(y15.Text))
        if z0 == "number" then
          z0 = tonumber
          z0 = z0(y15.Text)
          z1 = y2
          if z1 <= z0 then
            z1 = y3
            if z0 <= z1 then
              z2 = UDim2.new
              z4 = (z0 / y3)
              y18.Size = z2(0, (z4 * y19.X), 1, 0)
              pcall(y5, z0)
              goto L50
            end
          end
          z3 = tostring(y2)
          y15.Text = "Min " .. z3 .. ", Max " .. tostring(y3)
        else
          y15.Text = "Not valid"
        end
        ::L50::
        return
      end)
      y21 = table.insert
      y21(v0.sliders, y6)
      return
    end
    x13.Bind = function(y0, y1, y2, y3)
      local y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15
      if typeof(y3) == "function" then
        if y3 then
          goto L8
        end
      else
        y3 = function()
          return
        end
      end
      ::L8::
      y4 = Instance.new("ImageLabel")
      y5 = Instance.new("TextLabel")
      y6 = Instance.new("ImageLabel")
      y7 = Instance.new("ImageButton")
      y8 = Instance.new("TextLabel")
      y9 = y2
      if 16 < string.len(y1) then
        y5.TextScaled = true
      end
      y10 = {}
      y10.RightControl = "RightCtrl"
      y10.LeftControl = "LeftCtrl"
      y10.LeftShift = "LShift"
      y10.RightShift = "RShift"
      y10.MouseButton1 = "Mouse1"
      y10.MouseButton2 = "Mouse2"
      y4.Name = "HotKey"
      y4.Parent = x2
      y4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y4.BackgroundTransparency = 1
      y4.ClipsDescendants = true
      y4.LayoutOrder = 1
      y4.Size = UDim2.new(1, 0, 0, 0)
      y4.Image = "rbxassetid://4921677978"
      y4.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y4.ScaleType = Enum.ScaleType.Slice
      y4.SliceCenter = Rect.new(128, 128, 128, 128)
      y4.SliceScale = 0.05
      y5.Name = "Title"
      y5.Parent = y4
      y5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y5.BackgroundTransparency = 1
      y5.Position = UDim2.new(0, 7, 0, 2)
      y5.Size = UDim2.new(0, 145, 0, 30)
      y5.Font = Enum.Font.SourceSansSemibold
      y5.Text = y1
      y5.TextColor3 = Color3.fromRGB(212, 212, 212)
      y5.TextSize = 20
      y5.TextWrapped = true
      y5.TextXAlignment = Enum.TextXAlignment.Left
      y6.Name = "Cap"
      y6.Parent = y4
      y6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y6.BackgroundTransparency = 1
      y6.Position = UDim2.new(0, 0, 1, -2)
      y6.Size = UDim2.new(1, 0, 0, 5)
      y6.Image = "rbxassetid://4921676405"
      y6.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y6.ScaleType = Enum.ScaleType.Slice
      y6.SliceCenter = Rect.new(128, 0, 128, 0)
      y6.SliceScale = 0.01
      y7.Name = "Input"
      y7.Parent = y4
      y7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y7.BackgroundTransparency = 1
      y7.Position = UDim2.new(1, -47, 0, 5)
      y7.Size = UDim2.new(0, 40, 0, 25)
      y7.Image = "rbxassetid://4921672704"
      y7.ImageColor3 = Color3.fromRGB(46, 46, 46)
      y7.ScaleType = Enum.ScaleType.Slice
      y7.SliceCenter = Rect.new(128, 128, 128, 128)
      y7.SliceScale = 0.03
      y8.Name = "Value"
      y8.Parent = y7
      y8.AnchorPoint = Vector2.new(0.5, 0.5)
      y8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y8.BackgroundTransparency = 1
      y8.Position = UDim2.new(0.5, 0, 0.479999989, 0)
      y8.Size = UDim2.new(1, -7, 1, -7)
      y8.Font = Enum.Font.SourceSansSemibold
      if not y10[y9.Name] then
        y11 = y9.Name
      end
      y8.Text = y11
      y8.TextColor3 = Color3.fromRGB(169, 169, 169)
      y8.TextScaled = true
      y8.TextWrapped = true
      y11 = y7
      y12 = y8
      y11.MouseButton1Click:connect(function()
        local z0, z1, z2, z3, z4, z5
        v0.binding = true
        y12.Text = "..."
        z0, z1 = game:GetService("UserInputService").InputBegan:wait()
        z2 = tostring
        z2 = z2(z0.KeyCode.Name)
        y9 = z0.KeyCode
        z3 = tostring
        z3 = z3(z0.UserInputType.Name)
        z4 = y12
        z5 = y10[z2]
        if not z5 then
          z5 = z2
        end
        z4.Text = z5
        wait(0.1)
        v0.binding = false
        return
      end)
      game:GetService("UserInputService").InputBegan:Connect(function(z0)
        local z1, z2
        z1 = v0.binding
        if z1 == false then
          z1 = z0.KeyCode
          z2 = y9
          if z1 == z2 then
            pcall(y3)
          end
        end
        return
      end)
      return
    end
    x13.Dropdown = function(y0, y1, y2, y3, y4)
      local y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29
      if typeof(y4) == "function" then
        if y4 then
          goto L10
        end
      end
      y4 = function()
        return
      end
      ::L10::
      y5 = 0
      y6 = 0
      y7 = nil
      y8 = Instance.new("ImageLabel")
      y9 = Instance.new("TextLabel")
      y10 = Instance.new("ImageLabel")
      y11 = Instance.new("ImageButton")
      y12 = Instance.new("ImageLabel")
      y13 = Instance.new("Frame")
      y14 = Instance.new("ImageLabel")
      y15 = Instance.new("ImageLabel")
      y16 = Instance.new("ScrollingFrame")
      y17 = Instance.new("UIListLayout")
      if 16 < string.len(y1) then
        y9.TextScaled = true
      end
      for y21, y22 in pairs(y2) do
        y5 = (y5 + 30)
        y7 = nil
      end
      if 150 <= y5 then
        y7 = 150
        y6 = 10
      end
      y8.Name = "Dropdown"
      y8.Parent = x2
      y8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y8.BackgroundTransparency = 1
      y8.ClipsDescendants = true
      y8.LayoutOrder = 1
      y8.Position = UDim2.new(0, 0, 1, 0)
      y8.Size = UDim2.new(1, 0, 0, 0)
      y8.Image = "rbxassetid://4921677978"
      y8.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y8.ScaleType = Enum.ScaleType.Slice
      y8.SliceCenter = Rect.new(128, 128, 128, 128)
      y8.SliceScale = 0.05
      y9.Name = "Title"
      y9.Parent = y8
      y9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y9.BackgroundTransparency = 1
      y9.Position = UDim2.new(0, 7, 0, 2)
      y9.Size = UDim2.new(0, 145, 0, 30)
      y9.Font = Enum.Font.SourceSansSemibold
      y9.Text = y1
      y9.TextColor3 = Color3.fromRGB(169, 169, 169)
      y9.TextSize = 20
      y9.TextWrapped = true
      y9.TextXAlignment = Enum.TextXAlignment.Left
      y10.Name = "Cap"
      y10.Parent = y8
      y10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y10.BackgroundTransparency = 1
      y10.Position = UDim2.new(0, 0, 1, -2)
      y10.Size = UDim2.new(1, 0, 0, 5)
      y10.Image = "rbxassetid://4921676405"
      y10.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y10.ScaleType = Enum.ScaleType.Slice
      y10.SliceCenter = Rect.new(128, 0, 128, 0)
      y10.SliceScale = 0.01
      y11.Name = "Dropdown"
      y11.Parent = y8
      y11.AnchorPoint = Vector2.new(0, 0.5)
      y11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y11.BackgroundTransparency = 1
      y11.Position = UDim2.new(1, -30, 0, 16)
      y11.Rotation = -90
      y11.Size = UDim2.new(0, 25, 0, 25)
      y12.Name = "Inside"
      y12.Parent = y11
      y12.AnchorPoint = Vector2.new(0.5, 0)
      y12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y12.BackgroundTransparency = 1
      y12.Position = UDim2.new(0, 12, 0, 11)
      y12.Rotation = 90
      y12.Size = UDim2.new(0, 12, 0, 6)
      y12.Image = "rbxassetid://4921674763"
      y12.ImageColor3 = Color3.fromRGB(96, 96, 96)
      y12.ScaleType = Enum.ScaleType.Fit
      y13.Name = "List"
      y13.Parent = y8
      y13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y13.BackgroundTransparency = 1
      y13.ClipsDescendants = true
      y13.Position = UDim2.new(1, 0, 0, 0)
      y13.Size = UDim2.new(0, 215, 0, 0)
      y13.ZIndex = 8
      y14.Name = "List"
      y14.Parent = y13
      y14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y14.BackgroundTransparency = 1
      y14.ClipsDescendants = true
      y14.Position = UDim2.new(0, 15, 0, 0)
      y14.Size = UDim2.new(0, 200, 1, 0)
      y14.ZIndex = 8
      y14.Image = "rbxassetid://4921672704"
      y14.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y14.ScaleType = Enum.ScaleType.Slice
      y14.SliceCenter = Rect.new(128, 128, 128, 128)
      y14.SliceScale = 0.06
      y15.Name = "Tail"
      y15.Parent = y14
      y15.Active = true
      y15.AnchorPoint = Vector2.new(1, 0)
      y15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y15.BackgroundTransparency = 1
      y15.Position = UDim2.new(0, 1, 0, 8)
      y15.Rotation = 0.01
      y15.Size = UDim2.new(0, 8, 0, 16)
      y15.Image = "rbxassetid://4921683621"
      y15.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y16.Name = "Elements"
      y16.Parent = y14
      y16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y16.BackgroundTransparency = 1
      y16.ClipsDescendants = false
      y16.Size = UDim2.new(1, -3, 1, -5)
      y16.ZIndex = 8
      y16.ScrollBarThickness = y6
      y16.CanvasSize = UDim2.new(0, 0, 0, y5)
      y17.Parent = y16
      y17.SortOrder = Enum.SortOrder.LayoutOrder
      y18 = 1
      y19 = (#y2)
      y20 = 1
      for y21 = y18, y19, y20 do
        y22 = y2[y21]
        y23 = Instance.new("ImageButton")
        y24 = Instance.new("TextLabel")
        y23.Name = "Element"
        y23.Parent = y16
        y23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        y23.BackgroundTransparency = 1
        y23.Size = UDim2.new(1, 0, 0, 30)
        y23.ZIndex = 7
        y23.Image = "rbxassetid://4921672704"
        y23.ImageColor3 = Color3.fromRGB(38, 38, 38)
        y23.ScaleType = Enum.ScaleType.Slice
        y23.SliceCenter = Rect.new(128, 128, 128, 128)
        y23.SliceScale = 0.05
        y24.Name = "Title"
        y24.Parent = y23
        y24.Active = true
        y24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        y24.BackgroundTransparency = 1
        y24.Position = UDim2.new(0, 5, 0, 0)
        y24.Size = UDim2.new(1, -10, 1, 0)
        y24.ZIndex = 100
        y24.Font = Enum.Font.SourceSans
        y24.Text = tostring(y22)
        y24.TextColor3 = Color3.fromRGB(169, 169, 169)
        y24.TextScaled = true
        y24.TextSize = 18
        y24.TextWrapped = true
        y24.TextXAlignment = Enum.TextXAlignment.Left
        y23.MouseButton1Click:Connect(function()
          local z0, z1, z2, z3, z4, z5, z6, z7
          z1 = v1
          z0 = z1.Create
          z3 = TweenInfo.new
          z5 = Enum.EasingStyle.Quart
          z2 = y12
          z3 = z3(0.5, z5, Enum.EasingDirection.In)
          z4 = {}
          z4.Rotation = 90
          z0 = z0(z1, z2, z3, z4)
          z2 = y13
          z1 = z2.TweenSize
          z1(z2, UDim2.new(1, 0, 0, 0), "In", "Quart", 0.5, true)
          z0:Play()
          z1 = y3
          if z1 then
            y9.Text = y24.Text
            z1 = string.len
            z1 = z1(y24.Text)
            if 16 < z1 then
              y9.TextScaled = true
            else
              y9.TextScaled = false
            end
          end
          z1 = pcall
          z1(y4, y24.Text)
          return
        end)
      end
      y18 = y8
      y19 = function(z0, z1)
        local z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, z12, z13, z14
        y2 = z1
        for z6, z7 in pairs(y16:GetChildren()) do
          if not z7:IsA("UIListLayout") then
            z7:Destroy()
          end
        end
        z3 = 1
        z4 = (#z1)
        z5 = 1
        for z6 = z3, z4, z5 do
          z7 = z1[z6]
          z8 = Instance.new("ImageButton")
          z9 = Instance.new("TextLabel")
          z8.Name = "Element"
          z8.Parent = y16
          z8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          z8.BackgroundTransparency = 1
          z8.Size = UDim2.new(1, 0, 0, 30)
          z8.ZIndex = 7
          z8.Image = "rbxassetid://4921672704"
          z8.ImageColor3 = Color3.fromRGB(38, 38, 38)
          z8.ScaleType = Enum.ScaleType.Slice
          z8.SliceCenter = Rect.new(128, 128, 128, 128)
          z8.SliceScale = 0.05
          z9.Name = "Title"
          z9.Parent = z8
          z9.Active = true
          z9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          z9.BackgroundTransparency = 1
          z9.Position = UDim2.new(0, 5, 0, 0)
          z9.Size = UDim2.new(1, -10, 1, 0)
          z9.ZIndex = 100
          z9.Font = Enum.Font.SourceSans
          z9.Text = tostring(z7)
          z9.TextColor3 = Color3.fromRGB(169, 169, 169)
          z9.TextScaled = true
          z9.TextSize = 18
          z9.TextWrapped = true
          z9.TextXAlignment = Enum.TextXAlignment.Left
          z8.MouseButton1Click:Connect(function()
            local a0, a1, a2, a3, a4, a5, a6, a7
            a1 = v1
            a0 = a1.Create
            a3 = TweenInfo.new
            a5 = Enum.EasingStyle.Quart
            a2 = y12
            a3 = a3(0.5, a5, Enum.EasingDirection.In)
            a4 = {}
            a4.Rotation = 90
            a0 = a0(a1, a2, a3, a4)
            a2 = y13
            a1 = a2.TweenSize
            a1(a2, UDim2.new(1, 0, 0, 0), "In", "Quart", 0.5, true)
            a0:Play()
            a1 = y3
            if a1 then
              y9.Text = z9.Text
              a1 = string.len
              a1 = a1(z9.Text)
              if 16 < a1 then
                y9.TextScaled = true
              else
                y9.TextScaled = false
              end
            end
            a1 = pcall
            a1(y4, z9.Text)
            return
          end)
        end
        return
      end
      y20 = y11
      y21 = y12
      y22 = y8
      y23 = y13
      y24 = y14
      y25 = y15
      y26 = y16
      y20.MouseButton1Click:Connect(function()
        local z0, z1, z2, z3, z4, z5, z6, z7
        z0 = y23.Size
        z1 = UDim2.new(0, 215, 0, 0)
        if z0 ~= z1 then
          z0 = y23.Size
          z1 = UDim2.new(0, 0, 0, 0)
          if z0 ~= z1 then
            goto L94
          end
        else
          y5 = 0
          for z3, z4 in pairs(y2) do
            y5 = (y5 + 30)
            z5 = nil
            y7 = z5
          end
          if 150 <= y5 then
            y7 = 150
            y6 = 10
            y16.ScrollBarThickness = y6
          end
          y16.CanvasSize = UDim2.new(0, 0, 0, y5)
          z1 = v1
          z0 = z1.Create
          z3 = TweenInfo.new
          z5 = Enum.EasingStyle.Quart
          z2 = y21
          z3 = z3(0.5, z5, Enum.EasingDirection.Out)
          z4 = {}
          z4.Rotation = 0
          z0(z1, z2, z3, z4):Play()
          z2 = y23
          z1 = z2.TweenSize
          z3 = UDim2.new
          z4 = 0
          z5 = 215
          z6 = 0
          z7 = y7
          if z7 ~= nil then
            z7 = y7
            if z7 then
              goto L87
            end
          else
            z7 = y5
          end
          ::L87::
          z1(z2, z3(z4, z5, z6, z7), "Out", "Quart", 0.5, true)
          goto L150
        end
        ::L94::
        z0 = y23.Size
        if z0 ~= UDim2.new(0, 215, 0, 0) then
          z0 = y23.Size
          if z0 ~= UDim2.new(0, 0, 0, 0) then
            z1 = v1
            z0 = z1.Create
            z3 = TweenInfo.new
            z5 = Enum.EasingStyle.Quart
            z2 = y21
            z3 = z3(0.5, z5, Enum.EasingDirection.In)
            z4 = {}
            z4.Rotation = 90
            z0(z1, z2, z3, z4):Play()
            z2 = y23
            z1 = z2.TweenSize
            z1(z2, UDim2.new(0, 215, 0, 0), "In", "Quart", 0.5, true)
          end
        end
        ::L150::
        return
      end)
      y27 = {}
      y27.Refresh = y19
      return y27
      return
    end
    x13.ColorPicker = function(y0, y1, y2, y3)
      local y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30, y31, y32, y33
      local y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45, y46, y47, y48, y49, y50
      if typeof(y3) == "function" then
        if y3 then
          goto L9
        end
      end
      y3 = function()
        return
      end
      ::L9::
      if not y2 then
        y2 = Color3.fromRGB(255, 0, 255)
      end
      y4 = false
      y5 = Instance.new("ImageLabel")
      y6 = Instance.new("TextLabel")
      y7 = Instance.new("ImageLabel")
      y8 = Instance.new("ImageButton")
      y9 = Instance.new("Frame")
      y10 = Instance.new("ImageLabel")
      y11 = Instance.new("ImageButton")
      y12 = Instance.new("ImageLabel")
      y13 = Instance.new("ImageLabel")
      y14 = Instance.new("ImageLabel")
      y15 = Instance.new("ImageLabel")
      y16 = Instance.new("ImageButton")
      y17 = Instance.new("ImageLabel")
      y18 = Instance.new("ImageLabel")
      y19 = Instance.new("ImageLabel")
      y20 = Instance.new("TextBox")
      y21 = Instance.new("ImageLabel")
      y22 = Instance.new("TextBox")
      y23 = Instance.new("ImageLabel")
      y24 = Instance.new("TextBox")
      y25 = Instance.new("ImageLabel")
      y26 = Instance.new("TextBox")
      y27 = Instance.new("Frame")
      y28 = Instance.new("ImageButton")
      y29 = Instance.new("ImageLabel")
      y30 = Instance.new("ImageLabel")
      y31 = Instance.new("TextLabel")
      if 16 < string.len(y1) then
        y6.TextScaled = true
      end
      y5.Name = "ColorPicker"
      y5.Parent = x2
      y5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y5.BackgroundTransparency = 1
      y5.LayoutOrder = 1
      y5.Size = UDim2.new(1, 0, 0, 0)
      y5.Image = "rbxassetid://4921677978"
      y5.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y5.ScaleType = Enum.ScaleType.Slice
      y5.SliceCenter = Rect.new(128, 128, 128, 128)
      y5.SliceScale = 0.05
      y5.ClipsDescendants = true
      y6.Name = "Title"
      y6.Parent = y5
      y6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y6.BackgroundTransparency = 1
      y6.Position = UDim2.new(0, 7, 0, 2)
      y6.Size = UDim2.new(0, 145, 0, 30)
      y6.Font = Enum.Font.SourceSansSemibold
      y6.Text = y1
      y6.TextColor3 = Color3.fromRGB(212, 212, 212)
      y6.TextSize = 20
      y6.TextWrapped = true
      y6.TextXAlignment = Enum.TextXAlignment.Left
      y7.Name = "Cap"
      y7.Parent = y5
      y7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y7.BackgroundTransparency = 1
      y7.Position = UDim2.new(0, 0, 1, -2)
      y7.Size = UDim2.new(1, 0, 0, 5)
      y7.Image = "rbxassetid://4921676405"
      y7.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y7.ScaleType = Enum.ScaleType.Slice
      y7.SliceCenter = Rect.new(128, 0, 128, 0)
      y7.SliceScale = 0.01
      y8.Name = "Color"
      y8.Parent = y5
      y8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y8.BackgroundTransparency = 1
      y8.Position = UDim2.new(1, -47, 0, 5)
      y8.Size = UDim2.new(0, 40, 0, 25)
      y8.AutoButtonColor = false
      y8.Image = "rbxassetid://4921672704"
      y8.ImageColor3 = y2
      y8.ScaleType = Enum.ScaleType.Slice
      y8.SliceCenter = Rect.new(128, 128, 128, 128)
      y8.SliceScale = 0.03
      y9.Name = "Picker"
      y9.Parent = y5
      y9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y9.BackgroundTransparency = 1
      y9.ClipsDescendants = true
      y9.Position = UDim2.new(1, 0, 0, -38)
      y9.Size = UDim2.new(0, 0, 0, 193)
      y9.ZIndex = 100
      y10.Name = "Picker"
      y10.Parent = y9
      y10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y10.BackgroundTransparency = 1
      y10.Position = UDim2.new(0, 20, 0, 0)
      y10.Size = UDim2.new(0, 170, 1, 0)
      y10.ZIndex = 94
      y10.Image = "rbxassetid://4921672704"
      y10.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y10.ScaleType = Enum.ScaleType.Slice
      y10.SliceCenter = Rect.new(128, 128, 128, 128)
      y10.SliceScale = 0.05
      y11.Name = "Color"
      y11.Parent = y10
      y11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y11.BackgroundTransparency = 1
      y11.Position = UDim2.new(0, 15, 0, 10)
      y11.Size = UDim2.new(0, 100, 0, 100)
      y11.AutoButtonColor = false
      y11.Image = "rbxassetid://4921700277"
      y11.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y11.ScaleType = Enum.ScaleType.Slice
      y11.SliceCenter = Rect.new(128, 128, 128, 128)
      y11.SliceScale = 0.05
      y12.Name = "Darkness"
      y12.Parent = y11
      y12.BackgroundColor3 = Color3.fromRGB(255, 0, 132)
      y12.BackgroundTransparency = 1
      y12.Size = UDim2.new(1, 0, 1, 0)
      y12.ZIndex = 98
      y12.Image = "rbxassetid://4921703899"
      y12.ImageColor3 = Color3.fromRGB(0, 0, 0)
      y13.Name = "Lightness"
      y13.Parent = y11
      y13.BackgroundColor3 = Color3.fromRGB(255, 0, 132)
      y13.BackgroundTransparency = 1
      y13.Size = UDim2.new(1, 0, 1, 0)
      y13.ZIndex = 96
      y13.Image = "rbxassetid://4921705601"
      y14.Name = "Selection"
      y14.Parent = y11
      y14.AnchorPoint = Vector2.new(0.5, 0.5)
      y14.BackgroundColor3 = Color3.fromRGB(255, 0, 132)
      y14.BackgroundTransparency = 1
      y14.Position = UDim2.new(1, 0, 0, 0)
      y14.Size = UDim2.new(0, 20, 0, 20)
      y14.Image = "rbxassetid://4921707067"
      y14.ZIndex = 100
      y15.Name = "Hue"
      y15.Parent = y11
      y15.BackgroundColor3 = y2
      y15.Size = UDim2.new(1, 0, 1, 0)
      y15.ZIndex = 95
      y16.Name = "Hue"
      y16.Parent = y10
      y16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y16.BackgroundTransparency = 1
      y16.Position = UDim2.new(0, 130, 0, 10)
      y16.Size = UDim2.new(0, 15, 0, 100)
      y16.ZIndex = 99
      y16.AutoButtonColor = false
      y16.Image = "rbxassetid://4921700277"
      y16.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y16.ScaleType = Enum.ScaleType.Slice
      y16.SliceCenter = Rect.new(128, 128, 128, 128)
      y16.SliceScale = 0.05
      y17.Name = "Selection"
      y17.Parent = y16
      y17.AnchorPoint = Vector2.new(0, 0.5)
      y17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y17.BackgroundTransparency = 1
      y17.Size = UDim2.new(0, 15, 0, 15)
      y17.Image = "rbxassetid://4921707067"
      y17.ScaleType = Enum.ScaleType.Fit
      y17.ZIndex = 100
      y18.Name = "Rainbow"
      y18.Parent = y16
      y18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y18.BackgroundTransparency = 1
      y18.ClipsDescendants = true
      y18.Size = UDim2.new(1, 0, 1, 0)
      y18.ZIndex = 98
      y18.Image = "rbxassetid://4921708733"
      y19.Name = "R"
      y19.Parent = y10
      y19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y19.BackgroundTransparency = 1
      y19.Position = UDim2.new(0, 10, 0, 118)
      y19.Size = UDim2.new(0, 45, 0, 20)
      y19.Image = "rbxassetid://4921672704"
      y19.ImageColor3 = Color3.fromRGB(46, 46, 46)
      y19.ScaleType = Enum.ScaleType.Slice
      y19.SliceCenter = Rect.new(128, 128, 128, 128)
      y19.SliceScale = 0.04
      y19.ZIndex = 90
      y20.Name = "Value"
      y20.Parent = y19
      y20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y20.BackgroundTransparency = 1
      y20.Size = UDim2.new(1, -4, 1, -4)
      y20.ClearTextOnFocus = false
      y20.Font = Enum.Font.SourceSansSemibold
      y20.PlaceholderColor3 = Color3.fromRGB(112, 112, 112)
      y20.Text = "255"
      y20.TextColor3 = Color3.fromRGB(169, 169, 169)
      y20.TextScaled = true
      y20.TextSize = 14
      y20.TextWrapped = true
      y20.ZIndex = 98
      y21.Name = "B"
      y21.Parent = y10
      y21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y21.BackgroundTransparency = 1
      y21.Position = UDim2.new(0, 115, 0, 118)
      y21.Size = UDim2.new(0, 45, 0, 20)
      y21.Image = "rbxassetid://4921672704"
      y21.ImageColor3 = Color3.fromRGB(46, 46, 46)
      y21.ScaleType = Enum.ScaleType.Slice
      y21.SliceCenter = Rect.new(128, 128, 128, 128)
      y21.SliceScale = 0.04
      y21.ZIndex = 98
      y22.Name = "Value"
      y22.Parent = y21
      y22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y22.BackgroundTransparency = 1
      y22.Size = UDim2.new(1, -4, 1, -4)
      y22.ClearTextOnFocus = false
      y22.Font = Enum.Font.SourceSansSemibold
      y22.PlaceholderColor3 = Color3.fromRGB(112, 112, 112)
      y22.Text = "255"
      y22.TextColor3 = Color3.fromRGB(169, 169, 169)
      y22.TextScaled = true
      y22.TextSize = 14
      y22.TextWrapped = true
      y22.ZIndex = 98
      y23.Name = "G"
      y23.Parent = y10
      y23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y23.BackgroundTransparency = 1
      y23.Position = UDim2.new(0, 63, 0, 118)
      y23.Size = UDim2.new(0, 45, 0, 20)
      y23.Image = "rbxassetid://4921672704"
      y23.ImageColor3 = Color3.fromRGB(46, 46, 46)
      y23.ScaleType = Enum.ScaleType.Slice
      y23.SliceCenter = Rect.new(128, 128, 128, 128)
      y23.SliceScale = 0.04
      y23.ZIndex = 98
      y24.Name = "Value"
      y24.Parent = y23
      y24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y24.BackgroundTransparency = 1
      y24.Size = UDim2.new(1, -4, 1, -4)
      y24.ClearTextOnFocus = false
      y24.Font = Enum.Font.SourceSansSemibold
      y24.PlaceholderColor3 = Color3.fromRGB(112, 112, 112)
      y24.Text = "255"
      y24.TextColor3 = Color3.fromRGB(169, 169, 169)
      y24.TextScaled = true
      y24.TextSize = 14
      y24.TextWrapped = true
      y24.ZIndex = 98
      y25.Name = "HEX"
      y25.Parent = y10
      y25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y25.BackgroundTransparency = 1
      y25.Position = UDim2.new(0, 10, 0, 142)
      y25.Size = UDim2.new(0, 150, 0, 20)
      y25.Image = "rbxassetid://4921672704"
      y25.ImageColor3 = Color3.fromRGB(46, 46, 46)
      y25.ScaleType = Enum.ScaleType.Slice
      y25.SliceCenter = Rect.new(128, 128, 128, 128)
      y25.SliceScale = 0.04
      y25.ZIndex = 98
      y26.Name = "Value"
      y26.Parent = y25
      y26.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y26.BackgroundTransparency = 1
      y26.Size = UDim2.new(1, -4, 1, -4)
      y26.ClearTextOnFocus = false
      y26.Font = Enum.Font.SourceSansSemibold
      y26.PlaceholderColor3 = Color3.fromRGB(112, 112, 112)
      y26.PlaceholderText = "HEX"
      y26.Text = "HEX"
      y26.TextColor3 = Color3.fromRGB(169, 169, 169)
      y26.TextScaled = true
      y26.TextSize = 14
      y26.TextWrapped = true
      y26.ZIndex = 98
      y27.Name = "Rainbow"
      y27.Parent = y10
      y27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y27.BackgroundTransparency = 1
      y27.Position = UDim2.new(0, 10, 0, 166)
      y27.Size = UDim2.new(0, 150, 0, 20)
      y27.ZIndex = 98
      y28.Name = "Tick"
      y28.Parent = y27
      y28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y28.BackgroundTransparency = 1
      y28.BorderColor3 = Color3.fromRGB(0, 0, 0)
      y28.BorderSizePixel = 100
      y28.Position = UDim2.new(1, -28, 0, 0)
      y28.Size = UDim2.new(0, 21, 0, 21)
      y28.Image = "rbxassetid://4921672704"
      y28.ImageColor3 = Color3.fromRGB(94, 93, 94)
      y28.ScaleType = Enum.ScaleType.Slice
      y28.SliceCenter = Rect.new(128, 128, 128, 128)
      y28.SliceScale = 0.03
      y28.ZIndex = 98
      y29.Name = "Fill"
      y29.Parent = y28
      y29.Active = true
      y29.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y29.BackgroundTransparency = 1
      y29.Position = UDim2.new(0, 2, 0, 2)
      y29.Size = UDim2.new(1, -4, 1, -4)
      y29.Image = "rbxassetid://4921672704"
      y29.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y29.ScaleType = Enum.ScaleType.Slice
      y29.SliceCenter = Rect.new(128, 128, 128, 128)
      y29.SliceScale = 0.01
      y29.ZIndex = 98
      y30.Name = "Check"
      y30.Parent = y28
      y30.Active = true
      y30.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y30.BackgroundTransparency = 1
      y30.Position = UDim2.new(0, 5, 0, 4)
      y30.Size = UDim2.new(1, -9, 1, -9)
      y30.Image = "rbxassetid://4921680783"
      y30.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y30.ImageTransparency = 1
      y30.ScaleType = Enum.ScaleType.Fit
      y30.ZIndex = 98
      y31.Name = "Title"
      y31.Parent = y27
      y31.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y31.BackgroundTransparency = 1
      y31.Position = UDim2.new(0, 5, 0, -5)
      y31.Size = UDim2.new(0, 145, 0, 30)
      y31.Font = Enum.Font.SourceSansSemibold
      y31.Text = "Rainbow"
      y31.TextColor3 = Color3.fromRGB(169, 169, 169)
      y31.TextSize = 20
      y31.TextWrapped = true
      y31.TextXAlignment = Enum.TextXAlignment.Left
      y31.ZIndex = 98
      y8.MouseButton1Click:Connect(function()
        local z0, z1, z2, z3, z4, z5, z6
        z0 = y9.Size
        if z0 == UDim2.new(0, 0, 0, 193) then
          z1 = y9
          z0 = z1.TweenSize
          z0(z1, UDim2.new(0, 190, 0, 193), "Out", "Quart", 0.5, true)
          goto L53
        end
        z0 = y9.Size
        if z0 ~= UDim2.new(0, 0, 0, 193) then
          z1 = y9
          z0 = z1.TweenSize
          z0(z1, UDim2.new(0, 0, 0, 193), "Out", "Quart", 0.5, true)
        end
        ::L53::
        return
      end)
      y32 = y11
      y33 = nil
      y34 = nil
      y35 = game:GetService("Players").LocalPlayer:GetMouse()
      y36 = {}
      y36.H = 1
      y36.S = 1
      y36.V = 1
      y37 = function(z0, z1)
        local z2, z3, z4, z5, z6
        z2 = Color3.fromHSV
        z3 = y36.H
        z4 = y36.S
        z2 = z2(z3, z4, y36.V)
        z0.ImageColor3 = z2
        z3 = Color3.fromHSV
        z1.BackgroundColor3 = z3(y36.H, 1, 1)
        pcall(y3, z2)
        return
      end
      y38 = function(z0)
        local z1, z2, z3, z4, z5, z6, z7, z8
        z1 = y35.X
        z1 = (z1 - z0.AbsolutePosition.X)
        z2 = y35.Y
        z2 = (z2 - z0.AbsolutePosition.Y)
        z3 = z0.AbsoluteSize.X
        z4 = z0.AbsoluteSize.Y
        z1 = math.clamp(z1, 0, z3)
        return (z1 / z3), (math.clamp(z2, 0, z4) / z4)
        return
      end
      y32.InputBegan:Connect(function(z0)
        local z1, z2, z3
        z1 = z0.UserInputType
        if z1 == Enum.UserInputType.MouseButton1 then
          if y33 then
            y33:Disconnect()
          end
          y33 = game:GetService("RunService").Heartbeat:Connect(function()
            local a0, a1, a2, a3, a4, a5, a6, a7
            a0, a1 = y38(y32)
            a2 = y32.Selection
            a2.Position = UDim2.new(a0, 0, a1, 0)
            y36.S = a0
            y36.V = (1 - a1)
            y37(y8, y15)
            return
          end)
        end
        return
      end)
      y16.InputBegan:Connect(function(z0)
        local z1, z2, z3
        z1 = z0.UserInputType
        if z1 == Enum.UserInputType.MouseButton1 then
          if y34 then
            y34:Disconnect()
          end
          y34 = game:GetService("RunService").Heartbeat:Connect(function()
            local a0, a1, a2, a3, a4, a5, a6, a7
            a0, a1 = y38(y39)
            y36.H = (1 - a1)
            y17.Position = UDim2.new(0, 0, a1, 0)
            y37(y8, y15)
            return
          end)
        end
        return
      end)
      game:GetService("UserInputService").InputEnded:Connect(function(z0)
        local z1, z2
        z1 = z0.UserInputType
        z2 = Enum.UserInputType.MouseButton1
        if z1 == z2 then
          if y33 then
            y33:Disconnect()
            z1 = nil
            y33 = z1
          end
          if y34 then
            y34:Disconnect()
            z1 = nil
            y34 = z1
          end
        end
        return
      end)
      y40 = function()
        local z0, z1, z2, z3, z4
        z0 = Color3.fromRGB
        z1 = tonumber
        z1 = z1(y19.Value.Text)
        z2 = tonumber
        z2 = z2(y23.Value.Text)
        z3 = tonumber
        z0 = z0(z1, z2, z3(y21.Value.Text))
        y8.ImageColor3 = z0
        y15.BackgroundColor3 = z0
        pcall(y3, z0)
        return
      end
      y42 = y23.Value
      y43 = y21.Value
      y19.Value.FocusLost:Connect(function()
        local z0, z1, z2, z3
        z1 = typeof
        if z1(tonumber(y41.Text)) == "number" then
          if 0 <= tonumber(z0) then
            z1 = tonumber(z0)
            if z1 <= 255 then
              y40()
            end
          end
        end
        return
      end)
      y42.FocusLost:Connect(function()
        local z0, z1, z2, z3
        z1 = typeof
        z1 = z1(tonumber(y42.Text))
        if z1 == "number" then
          z1 = tonumber(z0)
          if 0 <= z1 then
            if tonumber(z0) <= 255 then
              y40()
            end
          end
        end
        return
      end)
      y43.FocusLost:Connect(function()
        local z0, z1, z2, z3
        z1 = typeof
        if z1(tonumber(y43.Text)) == "number" then
          z1 = tonumber(z0)
          if 0 <= z1 then
            z1 = tonumber(z0)
            if z1 <= 255 then
              y40()
            end
          end
        end
        return
      end)
      y44 = function(z0)
        local z1, z2, z3, z4, z5, z6, z7, z8, z9
        if (#z0:sub(2):upper()) == 3 then
          z1 = z0:sub(1, 1)
          z2 = z0:sub(2, 2)
          z3 = z0:sub(3, 3)
          z4 = z0
          z5 = tonumber
          z5 = z5(z1 .. z1, 16)
          z6 = tonumber
          z6 = z6(z2 .. z2, 16)
          z7 = tonumber
          return z4, z5, z6, z7(z3 .. z3, 16)
          goto L110
        end
        if (#z0) == 6 then
          z1 = z0
          z2 = tonumber
          z2 = z2(z0:sub(1, 2), 16)
          z3 = tonumber
          z3 = z3(z0:sub(3, 4), 16)
          z4 = tonumber
          return z1, z2, z3, z4(z0:sub(5, 6), 16)
          goto L110
        end
        if (#z0) ~= 3 then
          if (#z0) < 6 then
            z1 = z0
            z2 = string.rep
            z0 = z1 .. z2("0", (6 - (#z0)))
            z1 = z0
            z2 = tonumber
            z2 = z2(z0:sub(1, 2), 16)
            z3 = tonumber
            z3 = z3(z0:sub(3, 4), 16)
            z4 = tonumber
            return z1, z2, z3, z4(z0:sub(5, 6), 16)
          end
        end
        ::L110::
        return
      end
      y26.FocusLost:Connect(function()
        local z0, z1, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, z12
        z0, z1, z2, z3 = y44(y26.Text)
        z4 = Color3.toHSV
        z4, z5, z6 = z4(Color3.fromRGB(z1, z2, z3))
        y26.Text = z0
        y8.ImageColor3 = Color3.fromRGB(z1, z2, z3)
        y15.BackgroundColor3 = Color3.fromRGB(z1, z2, z3)
        z7 = pcall
        z8 = y3
        z7(z8, Color3.fromRGB(z1, z2, z3))
        return
      end)
      y45 = y28
      y46 = y29
      y47 = y30
      y45.MouseButton1Click:Connect(function()
        local z0, z1, z2, z3, z4, z5, z6, z7, z8, z9
        y4 = (not y4)
        z0 = y4
        if z0 then
          z1 = v1
          z0 = z1.Create
          z2 = y45
          z3 = TweenInfo.new(0.1)
          z4 = {}
          z4.ImageColor3 = Color3.fromRGB(0, 255, 111)
          z0 = z0(z1, z2, z3, z4)
          z2 = v1
          z1 = z2.Create
          z3 = y47
          z4 = TweenInfo.new(0.1)
          z5 = {}
          z5.ImageTransparency = 0
          z1(z2, z3, z4, z5):Play()
          z3 = y46
          z2 = z3.TweenSizeAndPosition
          z4 = UDim2.new(0, 0, 0, 0)
          z2(z3, z4, UDim2.new(0.5, 0, 0.5, 0), "Out", "Quart", 0.1, true)
          z0:Play()
        else
          if not y4 then
            z1 = v1
            z0 = z1.Create
            z2 = y45
            z3 = TweenInfo.new(0.1)
            z4 = {}
            z4.ImageColor3 = Color3.fromRGB(94, 93, 94)
            z0 = z0(z1, z2, z3, z4)
            z2 = v1
            z1 = z2.Create
            z3 = y47
            z4 = TweenInfo.new(0.1)
            z5 = {}
            z5.ImageTransparency = 1
            z1(z2, z3, z4, z5):Play()
            z3 = y46
            z2 = z3.TweenSizeAndPosition
            z4 = UDim2.new(1, -4, 1, -4)
            z2(z3, z4, UDim2.new(0, 2, 0, 2), "Out", "Quart", 0.1, true)
            z0:Play()
          end
        end
        if y4 then
          while true do
            z1 = y17
            z0 = z1.TweenPosition
            z2 = UDim2.new
            z0(z1, z2(0, 0, v0.rainbowI, 0), "Out", "Quart", 0.1, true)
            y15.BackgroundColor3 = v0.rainbowVal
            z1 = Color3.fromHSV
            y8.ImageColor3 = z1((1 - v0.rainbowI), 1, 1)
            z0 = pcall
            z0(y3, v0.rainbowVal)
            game:GetService("RunService").Heartbeat:Wait()
            if not y4 then
              break
            end
          end
        end
        return
      end)
      return
    end
    x13.Box = function(y0, y1, y2, y3)
      local y4, y5, y6, y7, y8, y9, y10, y11, y12, y13
      if typeof(y3) == "function" then
        if y3 then
          goto L10
        end
      end
      y3 = function()
        return
      end
      ::L10::
      y4 = Instance.new("ImageLabel")
      y5 = Instance.new("TextLabel")
      y6 = Instance.new("ImageLabel")
      y7 = Instance.new("ImageButton")
      y8 = Instance.new("TextBox")
      if 11 < string.len(y1) then
        y5.TextScaled = true
      end
      y4.Name = "Box"
      y4.Parent = x2
      y4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y4.BackgroundTransparency = 1
      y4.ClipsDescendants = true
      y4.LayoutOrder = 1
      y4.Size = UDim2.new(1, 0, 0, 0)
      y4.Image = "rbxassetid://4921677978"
      y4.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y4.ScaleType = Enum.ScaleType.Slice
      y4.SliceCenter = Rect.new(128, 128, 128, 128)
      y4.SliceScale = 0.05
      y5.Name = "Title"
      y5.Parent = y4
      y5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y5.BackgroundTransparency = 1
      y5.Position = UDim2.new(0, 7, 0, 2)
      y5.Size = UDim2.new(0, 100, 0, 30)
      y5.Font = Enum.Font.SourceSansSemibold
      y5.Text = y1
      y5.TextColor3 = Color3.fromRGB(169, 169, 169)
      y5.TextSize = 20
      y5.TextWrapped = true
      y5.TextXAlignment = Enum.TextXAlignment.Left
      y6.Name = "Cap"
      y6.Parent = y4
      y6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y6.BackgroundTransparency = 1
      y6.Position = UDim2.new(0, 0, 1, -2)
      y6.Size = UDim2.new(1, 0, 0, 5)
      y6.Image = "rbxassetid://4921676405"
      y6.ImageColor3 = Color3.fromRGB(38, 38, 38)
      y6.ScaleType = Enum.ScaleType.Slice
      y6.SliceCenter = Rect.new(128, 0, 128, 0)
      y6.SliceScale = 0.01
      y7.Name = "Tick"
      y7.Parent = y4
      y7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y7.BackgroundTransparency = 1
      y7.BorderColor3 = Color3.fromRGB(0, 0, 0)
      y7.BorderSizePixel = 100
      y7.Position = UDim2.new(1, -70, 0, 7)
      y7.Size = UDim2.new(0, 60, 0, 21)
      y7.Image = "rbxassetid://4921672704"
      y7.ImageColor3 = Color3.fromRGB(50, 50, 50)
      y7.ScaleType = Enum.ScaleType.Slice
      y7.SliceCenter = Rect.new(128, 128, 128, 128)
      y7.SliceScale = 0.03
      y8.Name = "Value"
      y8.Parent = y7
      y8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y8.BackgroundTransparency = 1
      y8.Size = UDim2.new(1, 0, 1, 0)
      y8.Font = Enum.Font.SourceSansBold
      y8.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
      y8.Text = ""
      y8.TextColor3 = Color3.fromRGB(216, 216, 216)
      y8.TextScaled = true
      y8.TextSize = 14
      y8.TextWrapped = true
      y8.FocusLost:connect(function(z0)
        local z1, z2, z3, z4
        if y2 == "number" then
          z1 = tonumber
          y8.Text = tonumber(z1(y8.Text))
          goto L20
        end
        z2 = tostring
        y8.Text = z2(y8.Text)
        ::L20::
        z1 = pcall
        z1(y3, y8.Text)
        return
      end)
      if y2 == "number" then
        y8:GetPropertyChangedSignal("Text"):connect(function()
          local z0, z1, z2, z3, z4
          z1 = string.gsub
          y8.Text = z1(y8.Text, "[%a+]", "")
          return
        end)
      end
      return
    end
    x13.Label = function(y0, y1, y2, y3)
      local y4, y5, y6, y7, y8, y9, y10, y11
      y4 = Instance.new("ImageLabel")
      y5 = Instance.new("TextLabel")
      y6 = Instance.new("ImageLabel")
      if typeof(y2) == "Color3" then
        if y2 then
          goto L27
        end
      end
      y2 = Color3.fromRGB(38, 38, 38)
      ::L27::
      if typeof(y3) == "Color3" then
        if y3 then
          goto L41
        end
      else
        y3 = Color3.fromRGB(214, 214, 214)
      end
      ::L41::
      if 20 < string.len(y1) then
        y5.TextScaled = true
      end
      y4.Name = "Label"
      y4.Parent = x2
      y4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y4.BackgroundTransparency = 1
      y4.ClipsDescendants = true
      y4.LayoutOrder = 1
      y4.Size = UDim2.new(1, 0, 0, 0)
      y4.Image = "rbxassetid://4921677978"
      y4.ImageColor3 = y2
      y4.ScaleType = Enum.ScaleType.Slice
      y4.SliceCenter = Rect.new(128, 128, 128, 128)
      y4.SliceScale = 0.05
      y5.Name = "Title"
      y5.Parent = y4
      y5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y5.BackgroundTransparency = 1
      y5.Size = UDim2.new(1, 0, 1, 0)
      y5.Font = Enum.Font.SourceSansSemibold
      y5.Text = y1
      y5.TextColor3 = y3
      y5.TextSize = 24
      y5.TextWrapped = true
      y6.Name = "Cap"
      y6.Parent = y4
      y6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      y6.BackgroundTransparency = 1
      y6.Position = UDim2.new(0, 0, 1, -2)
      y6.Size = UDim2.new(1, 0, 0, 5)
      y6.Image = "rbxassetid://4921676405"
      y6.ImageColor3 = y2
      y6.ScaleType = Enum.ScaleType.Slice
      y6.SliceCenter = Rect.new(128, 0, 128, 0)
      y6.SliceScale = 0.01
      y7 = y5
      y8 = function(z0, z1)
        local z2, z3
        if 20 < string.len(z1) then
          y5.TextScaled = true
          goto L12
        end
        y5.TextScaled = false
        ::L12::
        y5.Text = z1
        return
      end
      y9 = {}
      y9.Refresh = y8
      return y9
      return
    end
    x13.DestroyGUI = function(y0)
      local y1, y2, y3, y4
      x13:Button("Destroy Gui", function()
        local z0, z1
        v4:Destroy()
        return
      end)
      return
    end
    x13.GuiSettings = function(y0)
      local y1, y2, y3, y4, y5, y6, y7
      y2 = x13
      y1 = y2.ColorPicker
      y3 = "Button Color"
      if not _G.ButtonColor then
        y4 = Color3.fromRGB(0, 255, 111)
      end
      y1(y2, y3, y4, function(z0)
        local z1, z2, z3, z4, z5, z6, z7
        z1 = pairs
        for z4, z5 in z1(v0.buttons) do
          pcall(function()
            local a0, a1
            z5.Button.ImageColor3 = z0
            return
          end)
        end
        return
      end)
      y2 = x13
      y1 = y2.ColorPicker
      y3 = "Toggle Color"
      if not _G.ToggleColor then
        y4 = Color3.fromRGB(0, 255, 111)
      end
      y1(y2, y3, y4, function(z0)
        local z1, z2, z3, z4, z5, z6, z7
        v0.togglecolor = z0
        z1 = pairs
        for z4, z5 in z1(v0.toggles) do
          pcall(function()
            local a0, a1
            z5.Tick.ImageColor3 = z0
            return
          end)
        end
        return
      end)
      y2 = x13
      y1 = y2.ColorPicker
      y3 = "Slider Color"
      y4 = _G.SliderColor
      if not y4 then
        y4 = Color3.fromRGB(0, 255, 111)
      end
      y1(y2, y3, y4, function(z0)
        local z1, z2, z3, z4, z5, z6, z7
        z1 = pairs
        for z4, z5 in z1(v0.sliders) do
          pcall(function()
            local a0, a1
            z5.Slider.Indicator.ImageColor3 = z0
            return
          end)
        end
        return
      end)
      return
    end
    return x13
    return
  end
  w2.new(w3)
  return w13
  return
end
return v0
return
