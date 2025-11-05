local Version = "5.0.0"
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2zu/OPEN-SOURCE-UI-ROBLOX/refs/heads/main/X2ZU%20UI%20ROBLOX%20OPEN%20SOURCE/DummyUi-leak-by-x2zu/fetching-main/Tools/Framework.luau"))()

local Window = Library:Window({
    Title = game.Name .. " - Another HUB - " .. Version,
    Desc = "Made By Noob Hub, Another HUB, x2zu.",
    Icon = 95264072683942,
    Theme = "Dark",
    Config = {
        Keybind = Enum.KeyCode.LeftAlt,
        Size = UDim2.new(0, 500, 0, 400)
    },
    CloseUIButton = {
        Enabled = true,
        Text = "Toggle"
    }
})

Window:Notify({
    Title = "Another Hub",
    Desc = "All components loaded successfully! Credits leak: @x2zu",
    Time = 4
})

local Info = Window:Tab({Title = "Information", Icon = "info"}) do
	Info:Section({Title = "Nothing have in This Tab For Update!"})
end

local Tab = Window:Tab({Title = "Main", Icon = "star"}) do
    Tab:Section({Title = "Local Player Components"})

    local CustomSpeed = 26
    local DefaultSpeed = 16
    local SpeedEnabled = false
    local SpeedLoop

    local CustomJump = 50
    local DefaultJump = 50
    local JumpEnabled = false
    local JumpLoop

    Tab:Slider({
        Title = "Set Speed",
        Min = 0,
        Max = 500,
        Rounding = 0,
        Value = CustomSpeed,
        Callback = function(val)
            CustomSpeed = val
        end
    })

    Tab:Toggle({
        Title = "Toggle WalkSpeed",
        Desc = "Toggle to enable or disable the Custom Speed",
        Value = false,
        Callback = function(enabled)
            SpeedEnabled = enabled
            if enabled then
                SpeedLoop = task.spawn(function()
                    repeat
                        task.wait(0.0000000000000000000000000000000000000000000001)
                        if not Player.Character or not Player.Character:FindFirstChild("Humanoid") then
                            Character = Player.Character or Player.CharacterAdded:Wait()
                            Humanoid = Character:WaitForChild("Humanoid")
                        end
                        Humanoid.WalkSpeed = CustomSpeed
                    until not SpeedEnabled
                end)
            else
                Humanoid.WalkSpeed = DefaultSpeed
            end
        end
    })

    Tab:Slider({
        Title = "Set Jump Power",
        Min = 0,
        Max = 1000,
        Rounding = 0,
        Value = CustomJump,
        Callback = function(val)
            CustomJump = val
        end
    })

    Tab:Toggle({
        Title = "Toggle Jump Power",
        Desc = "Toggle to enable or disable the Custom Jump Power",
        Value = false,
        Callback = function(enabled)
            JumpEnabled = enabled
            if enabled then
                JumpLoop = task.spawn(function()
                    repeat
                        task.wait(0.0000000000000000000000000000000001)
                        if not Player.Character or not Player.Character:FindFirstChild("Humanoid") then
                            Character = Player.Character or Player.CharacterAdded:Wait()
                            Humanoid = Character:WaitForChild("Humanoid")
                        end
                        Humanoid.JumpPower = CustomJump
                    until not JumpEnabled
                end)
            else
                Humanoid.JumpPower = DefaultJump
            end
        end
    })
end

local Tab = Window:Tab({Title = "Auto Main", Icon = "star"}) do
    Tab:Section({Title = "All UI Components"})

    local CustomSpeed = 26
    local DefaultSpeed = 16
    local SpeedEnabled = false
    local SpeedLoop

    local CustomJump = 50
    local DefaultJump = 50
    local JumpEnabled = false
    local JumpLoop

    Tab:Slider({
        Title = "Set Speed",
        Min = 0,
        Max = 500,
        Rounding = 0,
        Value = CustomSpeed,
        Callback = function(val)
            CustomSpeed = val
        end
    })

    Tab:Toggle({
        Title = "Toggle WalkSpeed",
        Desc = "Toggle to enable or disable the Custom Speed",
        Value = false,
        Callback = function(enabled)
            SpeedEnabled = enabled
            if enabled then
                SpeedLoop = task.spawn(function()
                    repeat
                        task.wait(0.0000000000000000000000000000000000000000000001)
                        if not Player.Character or not Player.Character:FindFirstChild("Humanoid") then
                            Character = Player.Character or Player.CharacterAdded:Wait()
                            Humanoid = Character:WaitForChild("Humanoid")
                        end
                        Humanoid.WalkSpeed = CustomSpeed
                    until not SpeedEnabled
                end)
            else
                Humanoid.WalkSpeed = DefaultSpeed
            end
        end
    })

    Tab:Slider({
        Title = "Set Jump Power",
        Min = 0,
        Max = 1000,
        Rounding = 0,
        Value = CustomJump,
        Callback = function(val)
            CustomJump = val
        end
    })

    Tab:Toggle({
        Title = "Toggle Jump Power",
        Desc = "Toggle to enable or disable the Custom Jump Power",
        Value = false,
        Callback = function(enabled)
            JumpEnabled = enabled
            if enabled then
                JumpLoop = task.spawn(function()
                    repeat
                        task.wait(0.0000000000000000000000000000000001)
                        if not Player.Character or not Player.Character:FindFirstChild("Humanoid") then
                            Character = Player.Character or Player.CharacterAdded:Wait()
                            Humanoid = Character:WaitForChild("Humanoid")
                        end
                        Humanoid.JumpPower = CustomJump
                    until not JumpEnabled
                end)
            else
                Humanoid.JumpPower = DefaultJump
            end
        end
    })
end

-- fixed
