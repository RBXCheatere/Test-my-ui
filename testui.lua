local Library = {}

function Library:initLibrary()
    local UI = {}
    
    function UI.Toggle(name, flag, callback)
        local toggled = false
        
        local toggleFrame = Instance.new("Frame")
        toggleFrame.Size = UDim2.new(0, 20, 0, 20)
        toggleFrame.Position = UDim2.new(0, 10, 0, 10) -- Adjust position as needed
        toggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Set color as needed
        toggleFrame.BorderSizePixel = 2
        
        local toggleText = Instance.new("TextLabel")
        toggleText.Text = name
        toggleText.Size = UDim2.new(0, 100, 0, 20)
        toggleText.Position = UDim2.new(0, 40, 0, 10) -- Adjust position as needed
        toggleText.TextColor3 = Color3.fromRGB(255, 255, 255) -- Set color as needed
        toggleText.BackgroundTransparency = 1
        
        local toggleButton = Instance.new("TextButton")
        toggleButton.Text = ""
        toggleButton.Size = UDim2.new(1, 0, 1, 0)
        toggleButton.Position = UDim2.new(0, 0, 0, 0)
        toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Set color as needed
        toggleButton.BorderSizePixel = 0
        
        toggleButton.MouseButton1Click:Connect(function()
            toggled = not toggled
            if toggled then
                toggleFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Set toggle color when enabled
            else
                toggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Set toggle color when disabled
            end
            callback(toggled)
        end)
        
        toggleButton.Parent = toggleFrame
        toggleText.Parent = toggleFrame
        toggleFrame.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") -- You may need to adjust this depending on where you want to place the UI
        
        return toggleFrame
    end
    
    return UI
end

return Library
