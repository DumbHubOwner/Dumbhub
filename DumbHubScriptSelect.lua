-- Gui to Lua
-- Version: 3.2

-- Instances:

local DumbHubGameLoader = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local MainUIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Logo = Instance.new("ImageLabel")
local MainUICorner = Instance.new("UICorner")
local TItle = Instance.new("TextLabel")
local ScriptsFrameContainer = Instance.new("Frame")
local ScriptScrollingFrame = Instance.new("ScrollingFrame")
local ScriptScrollingFrameUIListLayout = Instance.new("UIListLayout")
local Script = Instance.new("Frame")
local ScriptName = Instance.new("TextLabel")
local ScriptsSelectedFrame = Instance.new("Frame")
local ScriptsSelectedFrameUICorner = Instance.new("UICorner")
local ScriptUICorner = Instance.new("UICorner")
local SearchScriptsTextBox = Instance.new("TextBox")
local SearchScriptsTextBoxUICorner = Instance.new("UICorner")
local Message = Instance.new("TextLabel")
local SelectedScript = Instance.new("Frame")
local SelectedScriptUIListLayout = Instance.new("UIListLayout")
local SelectedScriptGameFrame = Instance.new("Frame")
local SelectedScriptGameFrameUICorner = Instance.new("UICorner")
local SelectedScriptGameFrameTextLabel = Instance.new("TextLabel")
local ScriptsSelectedLastUpdateFrame = Instance.new("Frame")
local ScriptsSelectedLastUpdateFrameTextLabel = Instance.new("TextLabel")
local ScriptsSelectedLastUpdateFrameUICorner = Instance.new("UICorner")
local ScriptsSelectedStatusFrame = Instance.new("Frame")
local ScriptsSelectedStatusFrameTextLabel = Instance.new("TextLabel")
local ScriptsSelectedStatusFrameUICorner = Instance.new("UICorner")
local SelectedScriptCloseTextButton = Instance.new("TextButton")
local SelectedScriptCloseTextButtonUICorner = Instance.new("UICorner")
local SelectedScriptLoadTextButton = Instance.new("TextButton")
local SelectedScriptLoadTextButtonUICorner = Instance.new("UICorner")
local SelectedScriptSideContainer = Instance.new("Frame")
local GameImage = Instance.new("ImageLabel")
local Aleart = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
--Properties:

local coreGui = game:GetService("CoreGui")

-- Destroy old GUI if it exists
local existing = coreGui:FindFirstChild("DumbHubGameLoader")
if existing then
    existing:Destroy()
end

-- Create new GUI
local DumbHubGameLoader = Instance.new("ScreenGui")
DumbHubGameLoader.Name = "DumbHubGameLoader"
DumbHubGameLoader.Parent = coreGui
DumbHubGameLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


Main.Name = "Main"
Main.Parent = DumbHubGameLoader
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 600, 0, 499) -- You can scale this too if you want it to resize on different screens



Aleart.Name = "Aleart"
Aleart.Parent = DumbHubGameLoader
Aleart.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Aleart.BorderColor3 = Color3.fromRGB(0, 0, 0)
Aleart.BorderSizePixel = 0
Aleart.Position = UDim2.new(0.369610071, 0, 0.774509788, 0)
Aleart.Size = UDim2.new(0, 598, 0, 50)
Aleart.Font = Enum.Font.SourceSans
Aleart.Text = "Wrong Game Goofy!"
Aleart.TextColor3 = Color3.fromRGB(255, 255, 255)
Aleart.TextScaled = true
Aleart.TextSize = 14.000
Aleart.TextWrapped = true
Aleart.Visible = false 


UICorner.Parent = Aleart



Logo.Name = "Logo"
Logo.Parent = Main
Logo.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(27, 42, 53)
Logo.Position = UDim2.new(0.0228571575, 0, 0.0245195329, 0)
Logo.Size = UDim2.new(0.0616666675, 0, 0.0600000024, 0)
Logo.Image = "rbxassetid://12469060106"

MainUICorner.CornerRadius = UDim.new(0, 10)
MainUICorner.Name = "MainUICorner"
MainUICorner.Parent = Main

TItle.Name = "TItle"
TItle.Parent = Main
TItle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TItle.BackgroundTransparency = 1.000
TItle.BorderColor3 = Color3.fromRGB(0, 0, 0)
TItle.BorderSizePixel = 0
TItle.Position = UDim2.new(0.313333333, 0, 0, 0)
TItle.Size = UDim2.new(0.373333335, 0, 0.144000009, 0)
TItle.Font = Enum.Font.Unknown
TItle.Text = "DumbHub"
TItle.TextColor3 = Color3.fromRGB(255, 255, 255)
TItle.TextScaled = true
TItle.TextSize = 14.000
TItle.TextWrapped = true




--Left Side

ScriptsFrameContainer.Name = "ScriptsFrameContainer"
ScriptsFrameContainer.Parent = Main
ScriptsFrameContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptsFrameContainer.BackgroundTransparency = 1.000
ScriptsFrameContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptsFrameContainer.BorderSizePixel = 0
ScriptsFrameContainer.Position = UDim2.new(0.0616666675, 0, 0.144000009, 0)
ScriptsFrameContainer.Size = UDim2.new(0.49000001, 0, 0.790000021, 0)

Message.Name = "Message"
Message.Parent = ScriptsFrameContainer
Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Message.BackgroundTransparency = 1.000
Message.BorderColor3 = Color3.fromRGB(0, 0, 0)
Message.BorderSizePixel = 0
Message.Size = UDim2.new(0, 200, 0, 20)
Message.Font = Enum.Font.SourceSans
Message.Text = "Select Or Search a Game"
Message.TextColor3 = Color3.fromRGB(250, 250, 250)
Message.TextSize = 16.000
Message.TextXAlignment = Enum.TextXAlignment.Left



SearchScriptsTextBox.Name = "SearchScriptsTextBox"
SearchScriptsTextBox.Parent = ScriptsFrameContainer
SearchScriptsTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SearchScriptsTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
SearchScriptsTextBox.BorderSizePixel = 0
SearchScriptsTextBox.Position = UDim2.new(-0.00100043684, 0, 0.0600000322, 0)
SearchScriptsTextBox.Size = UDim2.new(0.959042072, 0, 0.0923913121, 0)
SearchScriptsTextBox.Font = Enum.Font.SourceSans
SearchScriptsTextBox.PlaceholderText = "Search..."
SearchScriptsTextBox.Text = ""
SearchScriptsTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchScriptsTextBox.TextScaled = true
SearchScriptsTextBox.TextSize = 14.000
SearchScriptsTextBox.TextWrapped = true

SearchScriptsTextBoxUICorner.CornerRadius = UDim.new(0, 4)
SearchScriptsTextBoxUICorner.Name = "SearchScriptsTextBoxUICorner"
SearchScriptsTextBoxUICorner.Parent = SearchScriptsTextBox



ScriptScrollingFrame.Name = "ScriptScrollingFrame"
ScriptScrollingFrame.Parent = ScriptsFrameContainer
ScriptScrollingFrame.Active = true
ScriptScrollingFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
ScriptScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptScrollingFrame.BorderSizePixel = 0
ScriptScrollingFrame.Position = UDim2.new(-0.0011422293, 0, 0.170000374, 0)
ScriptScrollingFrame.Size = UDim2.new(1, 0, 0.828964591, 0)
ScriptScrollingFrame.ScrollBarThickness = 6


ScriptScrollingFrameUIListLayout.Name = "ScriptScrollingFrameUIListLayout"
ScriptScrollingFrameUIListLayout.Parent = ScriptScrollingFrame
ScriptScrollingFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
ScriptScrollingFrameUIListLayout.Padding = UDim.new(0, 6)




-- 💾 Store the currently selected ScriptsSelectedFrame
local currentlySelected
local ScriptButtons = {}

-- Create script info panel
local function CreateScriptInfo()

    SelectedScriptSideContainer.Name = "SelectedScriptSideContainer"
    SelectedScriptSideContainer.Parent = Main
    SelectedScriptSideContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SelectedScriptSideContainer.BackgroundTransparency = 1.000
    SelectedScriptSideContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SelectedScriptSideContainer.BorderSizePixel = 0
    SelectedScriptSideContainer.Position = UDim2.new(0.564462185, 0, 0.182364732, 0)
    SelectedScriptSideContainer.Size = UDim2.new(0, 251, 0, 394)

    SelectedScript.Name = "SelectedScript"
    SelectedScript.Parent = SelectedScriptSideContainer
    SelectedScript.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    SelectedScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SelectedScript.BorderSizePixel = 0
    SelectedScript.Position = UDim2.new(0.0112153925, 0, 0.311167449, 0)
    SelectedScript.Size = UDim2.new(0, 244, 0, 271)
    SelectedScript.Visible = false

    SelectedScriptUIListLayout.Name = "SelectedScriptUIListLayout"
    SelectedScriptUIListLayout.Parent = SelectedScript
    SelectedScriptUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SelectedScriptUIListLayout.Padding = UDim.new(0, 8)

    -- Game Name
    SelectedScriptGameFrame.Name = "SelectedScriptGameFrame"
    SelectedScriptGameFrame.Parent = SelectedScript
    SelectedScriptGameFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    SelectedScriptGameFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SelectedScriptGameFrame.BorderSizePixel = 0
    SelectedScriptGameFrame.Size = UDim2.new(0, 243, 0, 48)

    SelectedScriptGameFrameUICorner.CornerRadius = UDim.new(0, 6)
    SelectedScriptGameFrameUICorner.Parent = SelectedScriptGameFrame

    SelectedScriptGameFrameTextLabel.Name = "SelectedScriptGameFrameTextLabel"
    SelectedScriptGameFrameTextLabel.Parent = SelectedScriptGameFrame
    SelectedScriptGameFrameTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SelectedScriptGameFrameTextLabel.BackgroundTransparency = 1.000
    SelectedScriptGameFrameTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SelectedScriptGameFrameTextLabel.BorderSizePixel = 0
    SelectedScriptGameFrameTextLabel.Position = UDim2.new(0.0411522649, 0, 0, 0)
    SelectedScriptGameFrameTextLabel.Size = UDim2.new(0, 232, 0, 48)
    SelectedScriptGameFrameTextLabel.Font = Enum.Font.SourceSans
    SelectedScriptGameFrameTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    SelectedScriptGameFrameTextLabel.TextSize = 20.000
    SelectedScriptGameFrameTextLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- Last Update
    ScriptsSelectedLastUpdateFrame.Name = "ScriptsSelectedLastUpdateFrame"
    ScriptsSelectedLastUpdateFrame.Parent = SelectedScript
    ScriptsSelectedLastUpdateFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ScriptsSelectedLastUpdateFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScriptsSelectedLastUpdateFrame.BorderSizePixel = 0
    ScriptsSelectedLastUpdateFrame.Position = UDim2.new(0, 0, 0.225409836, 0)
    ScriptsSelectedLastUpdateFrame.Size = UDim2.new(0, 243, 0, 48)
    
    ScriptsSelectedLastUpdateFrameTextLabel.Name = "ScriptsSelectedLastUpdateFrameTextLabel"
    ScriptsSelectedLastUpdateFrameTextLabel.Parent = ScriptsSelectedLastUpdateFrame
    ScriptsSelectedLastUpdateFrameTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScriptsSelectedLastUpdateFrameTextLabel.BackgroundTransparency = 1.000
    ScriptsSelectedLastUpdateFrameTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScriptsSelectedLastUpdateFrameTextLabel.BorderSizePixel = 0
    ScriptsSelectedLastUpdateFrameTextLabel.Position = UDim2.new(0.0411522649, 0, 0.1875, 0)
    ScriptsSelectedLastUpdateFrameTextLabel.Size = UDim2.new(0, 227, 0, 30)
    ScriptsSelectedLastUpdateFrameTextLabel.Font = Enum.Font.SourceSans
    ScriptsSelectedLastUpdateFrameTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    ScriptsSelectedLastUpdateFrameTextLabel.TextSize = 22.000
    ScriptsSelectedLastUpdateFrameTextLabel.TextWrapped = true
    ScriptsSelectedLastUpdateFrameTextLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    ScriptsSelectedLastUpdateFrameUICorner.CornerRadius = UDim.new(0, 6)
    ScriptsSelectedLastUpdateFrameUICorner.Name = "ScriptsSelectedLastUpdateFrameUICorner"
    ScriptsSelectedLastUpdateFrameUICorner.Parent = ScriptsSelectedLastUpdateFrame


    -- Status
    ScriptsSelectedStatusFrame.Name = "ScriptsSelectedStatusFrame"
    ScriptsSelectedStatusFrame.Parent = SelectedScript
    ScriptsSelectedStatusFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ScriptsSelectedStatusFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScriptsSelectedStatusFrame.BorderSizePixel = 0
    ScriptsSelectedStatusFrame.Size = UDim2.new(0, 243, 0, 48)
    
    ScriptsSelectedStatusFrameTextLabel.Name = "ScriptsSelectedStatusFrameTextLabel"
    ScriptsSelectedStatusFrameTextLabel.Parent = ScriptsSelectedStatusFrame
    ScriptsSelectedStatusFrameTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScriptsSelectedStatusFrameTextLabel.BackgroundTransparency = 1.000
    ScriptsSelectedStatusFrameTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScriptsSelectedStatusFrameTextLabel.BorderSizePixel = 0
    ScriptsSelectedStatusFrameTextLabel.Position = UDim2.new(0.0411522649, 0, 0.1875, 0)
    ScriptsSelectedStatusFrameTextLabel.Size = UDim2.new(0, 227, 0, 30)
    ScriptsSelectedStatusFrameTextLabel.Font = Enum.Font.SourceSans
    ScriptsSelectedStatusFrameTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    ScriptsSelectedStatusFrameTextLabel.TextSize = 22.000
    ScriptsSelectedStatusFrameTextLabel.TextWrapped = true
    ScriptsSelectedStatusFrameTextLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- Load Button
    SelectedScriptLoadTextButton.Name = "SelectedScriptLoadTextButton"
    SelectedScriptLoadTextButton.Parent = SelectedScript
    SelectedScriptLoadTextButton.BackgroundColor3 = Color3.fromRGB(46, 139, 0)
    SelectedScriptLoadTextButton.Position = UDim2.new(0.00409836043, 0, 0.680327892, 0)
    SelectedScriptLoadTextButton.Size = UDim2.new(0, 242, 0, 44)
    SelectedScriptLoadTextButton.Text = "Load Script"
    SelectedScriptLoadTextButton.Font = Enum.Font.SourceSansBold
    SelectedScriptLoadTextButton.TextSize = 22
    SelectedScriptLoadTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    SelectedScriptLoadTextButtonUICorner.CornerRadius = UDim.new(0, 6)
    SelectedScriptLoadTextButtonUICorner.Name = "SelectedScriptLoadTextButtonUICorner"
    SelectedScriptLoadTextButtonUICorner.Parent = SelectedScriptLoadTextButton

    GameImage.Name = "GameImage"
    GameImage.Parent = SelectedScriptSideContainer
    GameImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GameImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GameImage.BorderSizePixel = 0
    GameImage.Position = UDim2.new(0.0112153925, 0, 0.0101522841, 0)
    GameImage.Size = UDim2.new(0, 242, 0, 108)
    GameImage.Visible = false


        -- Close Button
    SelectedScriptCloseTextButton.Name = "SelectedScriptCloseTextButton"
    SelectedScriptCloseTextButton.Parent = SelectedScript
    SelectedScriptCloseTextButton.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
    SelectedScriptCloseTextButton.Size = UDim2.new(0, 243, 0, 48)
    SelectedScriptCloseTextButton.Text = "Close Menu"
    SelectedScriptCloseTextButton.Font = Enum.Font.SourceSansBold
    SelectedScriptCloseTextButton.TextSize = 22
    SelectedScriptCloseTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    SelectedScriptCloseTextButtonUICorner.CornerRadius = UDim.new(0, 6)
    SelectedScriptCloseTextButtonUICorner.Name = "SelectedScriptCloseTextButtonUICorner"
    SelectedScriptCloseTextButtonUICorner.Parent = SelectedScriptCloseTextButton

    SelectedScriptCloseTextButton.MouseButton1Click:Connect(function()
        if Main then
            Main:Destroy()
            Aleart:Destroy()
        end
    end)


end

CreateScriptInfo()

local currentGameId = game.PlaceId   -- Current game's ID
local selectedGameId = nil 
local ScriptButtons = {}

local function CreateScriptButton(scriptNameText, LastUpdate, status, gameId, ImageID)
    local Script = Instance.new("Frame")
    Script.Name = "Script"
    Script.Parent = ScriptScrollingFrame
    Script.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Script.Size = UDim2.new(0, 282, 0, 34)

    local ScriptUICorner = Instance.new("UICorner")
    ScriptUICorner.CornerRadius = UDim.new(0, 4)
    ScriptUICorner.Parent = Script

    local ScriptName = Instance.new("TextLabel")
    ScriptName.Name = "ScriptName"
    ScriptName.Parent = Script
    ScriptName.BackgroundTransparency = 1
    ScriptName.Position = UDim2.new(0.14, 0, 0.088, 0)
    ScriptName.Size = UDim2.new(0.77, 0, 0.79, 0)
    ScriptName.Font = Enum.Font.SourceSans
    ScriptName.Text = scriptNameText
    ScriptName.TextColor3 = Color3.fromRGB(255, 255, 255)
    ScriptName.TextScaled = true
    ScriptName.TextWrapped = true
    ScriptName.TextXAlignment = Enum.TextXAlignment.Left

    local ScriptsSelectedFrame = Instance.new("Frame")
    ScriptsSelectedFrame.Name = "ScriptsSelectedFrame"
    ScriptsSelectedFrame.Parent = Script
    ScriptsSelectedFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScriptsSelectedFrame.Position = UDim2.new(0.026, 0, 0.147, 0)
    ScriptsSelectedFrame.Size = UDim2.new(0.085, 0, 0.676, 0)

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(8, 8)
    corner.Parent = ScriptsSelectedFrame

    local ClickButton = Instance.new("TextButton")
    ClickButton.Parent = Script
    ClickButton.BackgroundTransparency = 1
    ClickButton.Size = UDim2.new(1, 0, 1, 0)
    ClickButton.Text = ""

    table.insert(ScriptButtons, Script)

    ClickButton.MouseButton1Click:Connect(function()
        if currentlySelected and currentlySelected ~= ScriptsSelectedFrame then
            currentlySelected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        end
    
        ScriptsSelectedFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        currentlySelected = ScriptsSelectedFrame
    
        SelectedScript.Visible = true
        SelectedScriptGameFrameTextLabel.Text = "Game: " .. scriptNameText
        ScriptsSelectedLastUpdateFrameTextLabel.Text = "Last Update: " .. LastUpdate
        ScriptsSelectedStatusFrameTextLabel.Text = "Status: " .. status
    
        selectedGameId = gameId
        GameImage.Image = "rbxassetid://"..ImageID
        GameImage.Visible = true
    end) 
end




-- Search functionality
SearchScriptsTextBox:GetPropertyChangedSignal("Text"):Connect(function()
    local query = SearchScriptsTextBox.Text:lower()
    for _, button in ipairs(ScriptButtons) do
        local label = button:FindFirstChild("ScriptName")
        if label then
            local name = label.Text:lower()
            button.Visible = name:find(query) ~= nil
        end
    end
end)



SelectedScriptLoadTextButton.MouseButton1Click:Connect(function()
    local currentPlaceId = game.PlaceId
    local selectedPlaceId = tonumber(selectedGameId)

    if currentPlaceId == selectedPlaceId then
        if selectedPlaceId == 81440632616906 then
                 -- Dif To Earths Core
                loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHubLoadStrings/main/DigToEarthsCore.lua"))()
                Main:Destroy()
                 
                -------------------------------------------------------------------------------------------------------------------------------------------------------------
                -- Anime Rarity
        elseif selectedPlaceId == 16778527574  then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHubLoadStrings/main/AnimeRarity.lua"))()
                Main:Destroy()
                -------------------------------------------------------------------------------------------------------------------------------------------------------------
        end
    end
end)


CreateScriptButton("Dig To The Earths Core", "04/20/25", "Working", "81440632616906", "128903433262554")  -- Example game ID
CreateScriptButton("Anime Rarity", "07/12/24", "Working!", "9876543210", "83348619299136")  -- Another example game ID


