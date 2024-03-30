local Library = {}

function Library:initLibrary()
    local UI = {}
    
    function UI.Toggle(name, flag, callback)
        local toggled = false
        
        local toggleFrame = Drawing.new("Square")
        toggleFrame.Size = Vector2.new(20, 20)
        toggleFrame.Position = Vector2.new(10, 10) -- Adjust position as needed
        toggleFrame.Color = Color3.fromRGB(255, 255, 255) -- Set color as needed
        toggleFrame.Visible = true
        toggleFrame.Thickness = 2
        
        local toggleText = Drawing.new("Text")
        toggleText.Text = name
        toggleText.Size = 16
        toggleText.Position = Vector2.new(40, 10) -- Adjust position as needed
        toggleText.Color = Color3.fromRGB(255, 255, 255) -- Set color as needed
        toggleText.Visible = true
        
        function toggleFrame:click()
            toggled = not toggled
            if toggled then
                toggleFrame.Color = Color3.fromRGB(0, 255, 0) -- Set toggle color when enabled
            else
                toggleFrame.Color = Color3.fromRGB(255, 255, 255) -- Set toggle color when disabled
            end
            callback(toggled)
        end
        
        toggleFrame.MouseButton1Click = toggleFrame.click
        
        return toggleFrame
    end
    
    return UI
end

return Library
