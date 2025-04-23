local library = {}
library.flags = {}
local HttpService = game:GetService("HttpService")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Hb = game:GetService("RunService").Heartbeat;
local UIS = game:GetService("UserInputService")
local CG = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")


local coreGui = game:GetService("CoreGui")

-- Destroy old GUI if it exists
local existing = coreGui:FindFirstChild("DumbHubUI")
if existing then
	existing:Destroy()
end




function library:CreateWindow()
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

	local DumbHubUI = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local MainUICorner = Instance.new("UICorner")
	local GUiName = Instance.new("TextLabel")
	local Frame = Instance.new("Frame")
	local CloseTextButton = Instance.new("TextButton")
	local ActivactionsContainer = Instance.new("Frame")


	local MinTextButton = Instance.new("TextButton")
	local TabContainer = Instance.new("Frame")
	local TabContanierUIListLayout = Instance.new("UIListLayout")
	local TabContainerUIPadding = Instance.new("UIPadding")
	local Notification = Instance.new("TextLabel")



	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")

	local function dragify(Frame)
		local dragToggle = false
		local dragInput, dragStart, startPos
		local tweenInfo = TweenInfo.new(0.25)

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
			TweenService:Create(Frame, tweenInfo, {Position = position}):Play()
		end

		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch)
				and not UserInputService:GetFocusedTextBox() then

				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	-- Usage
	dragify(Main)


	--Properties:

	DumbHubUI.Name = "DumbHubUI"
	DumbHubUI.Parent = game:GetService("CoreGui")
	DumbHubUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


	Main.Name = "Main"
	Main.Parent = DumbHubUI
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(43, 46, 48)
	Main.BackgroundTransparency = 0.250
	Main.BorderColor3 = Color3.fromRGB(102, 102, 102)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 525, 0, 400)
	Main.Visible = true

	MainUICorner.Name = "MainUICorner"
	MainUICorner.Parent = Main



	GUiName.Name = "GUiName"
	GUiName.Parent = Main
	GUiName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GUiName.BackgroundTransparency = 1.000
	GUiName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GUiName.BorderSizePixel = 0
	GUiName.Position = UDim2.new(0.0323809534, 0, 0.0324999988, 0)
	GUiName.Size = UDim2.new(0, 99, 0, 19)
	GUiName.Font = Enum.Font.SourceSansBold
	GUiName.Text = "DumbHub "
	GUiName.TextColor3 = Color3.fromRGB(255, 255, 255)
	GUiName.TextSize = 20.000
	GUiName.TextXAlignment = Enum.TextXAlignment.Left

	Frame.Parent = GUiName
	Frame.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(-0.171717167, 0, 1.47592163, 0)
	Frame.Size = UDim2.new(0, 525, 0, 1)

	CloseTextButton.Name = "CloseTextButton"
	CloseTextButton.Parent = Main
	CloseTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseTextButton.BackgroundTransparency = 1.000
	CloseTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CloseTextButton.BorderSizePixel = 0
	CloseTextButton.Position = UDim2.new(0.946666658, 0, 0.0250000004, 0)
	CloseTextButton.Size = UDim2.new(0, 20, 0, 24)
	CloseTextButton.Font = Enum.Font.Roboto
	CloseTextButton.Text = "X"
	CloseTextButton.TextColor3 = Color3.fromRGB(211, 211, 211)
	CloseTextButton.TextScaled = true
	CloseTextButton.TextSize = 14.000
	CloseTextButton.TextWrapped = true


	CloseTextButton.MouseButton1Click:connect(function()
		DumbHubUI:Destroy()
	end)

	MinTextButton.Name = "MinTextButton"
	MinTextButton.Parent = Main
	MinTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MinTextButton.BackgroundTransparency = 1.000
	MinTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MinTextButton.BorderSizePixel = 0
	MinTextButton.Position = UDim2.new(0.868571401, 0, 0.0199999996, 0)
	MinTextButton.Size = UDim2.new(0, 26, 0, 24)
	MinTextButton.Font = Enum.Font.Roboto
	MinTextButton.Text = "-"
	MinTextButton.TextColor3 = Color3.fromRGB(211, 211, 211)
	MinTextButton.TextSize = 72.000
	MinTextButton.TextWrapped = true





	Notification.Name = "OpenNotification"
	Notification.Parent = Main.Parent -- parent to ScreenGui or same parent as Main
	Notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Notification.BackgroundTransparency = 0.3
	Notification.Position = UDim2.new(0.5, -1, 0.7, 0)
	Notification.Size = UDim2.new(0, 340, 0, 50)
	Notification.Text = "Click LeftControl to open/Close Menu!"
	Notification.TextColor3 = Color3.fromRGB(255, 255, 255)
	Notification.TextSize = 20
	Notification.Font = Enum.Font.Gotham
	Notification.AnchorPoint = Vector2.new(0.5, 0)
	Notification.Visible = true

	-- Hide after 3 seconds
	task.delay(6, function()
		Notification:Destroy()
	end)

	-- Toggle Main with LeftControl
	local UIS = game:GetService("UserInputService")

	UIS.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.LeftControl then
			Main.Visible = not Main.Visible
		end
	end)

	-- Minimize Button Behavior
	MinTextButton.MouseButton1Click:Connect(function()
		Main.Visible = false
	end)









	ActivactionsContainer.Name = "ActivactionsContainer"
	ActivactionsContainer.Parent = Main
	ActivactionsContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ActivactionsContainer.BackgroundTransparency = 1.000
	ActivactionsContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ActivactionsContainer.BorderSizePixel = 0
	ActivactionsContainer.Position = UDim2.new(0.360000014, 0, 0.209999993, 0)
	ActivactionsContainer.Size = UDim2.new(0, 328, 0, 308)



	TabContainer.Name = "TabContainer"
	TabContainer.Parent = Main
	TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabContainer.BackgroundTransparency = 1.000
	TabContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabContainer.BorderSizePixel = 0
	TabContainer.Position = UDim2.new(0, 0, 0.127499998, 0)
	TabContainer.Size = UDim2.new(0, 189, 0, 335)

	TabContanierUIListLayout.Name = "TabContanierUIListLayout"
	TabContanierUIListLayout.Parent = TabContainer
	TabContanierUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabContanierUIListLayout.Padding = UDim.new(0, 10)

	TabContainerUIPadding.Name = "TabContainerUIPadding"
	TabContainerUIPadding.Parent = TabContainer
	TabContainerUIPadding.PaddingLeft = UDim.new(0, 30)



	local Category = {}

	local firstTabCreated = false
	local SelectedTab = nil
	local SelectedTabIcon = nil

	-- Create SelectedTab once
	SelectedTab = Instance.new("TextLabel")
	SelectedTab.Name = "SelectedTab"
	SelectedTab.Parent = ActivactionsContainer
	SelectedTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SelectedTab.BackgroundTransparency = 1.000
	SelectedTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SelectedTab.BorderSizePixel = 0
	SelectedTab.Position = UDim2.new(0, 0, -0.136225715, 0)
	SelectedTab.Size = UDim2.new(0, 200, 0, 39)
	SelectedTab.Font = Enum.Font.SourceSans
	SelectedTab.TextColor3 = Color3.fromRGB(255, 255, 255)
	SelectedTab.TextSize = 31.000
	SelectedTab.TextXAlignment = Enum.TextXAlignment.Left
	SelectedTab.Visible = false

	-- Create SelectedTabIcon once
	SelectedTabIcon = Instance.new("Frame")
	SelectedTabIcon.Name = "SelectedTabIcon"
	SelectedTabIcon.Parent = Main
	SelectedTabIcon.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
	SelectedTabIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SelectedTabIcon.BorderSizePixel = 0
	SelectedTabIcon.Position = UDim2.new(0.0323809534, 0, 0.152606204, 0)
	SelectedTabIcon.Size = UDim2.new(0, 6, 0, 15)
	SelectedTabIcon.Visible = true



	function Category:new(TabName)
		assert(typeof(TabName) == "string", "Specify type string for CreateNew function")

		local Tab = Instance.new("TextButton")
		local InsideActContanierScrollingFrame = Instance.new("ScrollingFrame")
		local InsideActContanierScrollingFrameUIListLayout = Instance.new("UIListLayout")

		-- Set up scrolling frame
		InsideActContanierScrollingFrame.Name = "InsideActContanierScrollingFrame"
		InsideActContanierScrollingFrame.Parent = ActivactionsContainer
		InsideActContanierScrollingFrame.Active = true
		InsideActContanierScrollingFrame.BackgroundColor3 = Color3.fromRGB(56, 60, 62)
		InsideActContanierScrollingFrame.BackgroundTransparency = 1.000
		InsideActContanierScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		InsideActContanierScrollingFrame.BorderSizePixel = 0
		InsideActContanierScrollingFrame.Size = UDim2.new(0, 328, 0, 308)
		InsideActContanierScrollingFrame.ScrollBarThickness = 5
		InsideActContanierScrollingFrame.Visible = false

		InsideActContanierScrollingFrameUIListLayout.Name = "InsideActContanierScrollingFrameUIListLayout"
		InsideActContanierScrollingFrameUIListLayout.Parent = InsideActContanierScrollingFrame
		InsideActContanierScrollingFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		InsideActContanierScrollingFrameUIListLayout.Padding = UDim.new(0, 6)

		InsideActContanierScrollingFrame.ChildAdded:Connect(function(child)
			InsideActContanierScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, InsideActContanierScrollingFrameUIListLayout.AbsoluteContentSize.Y + 80)
		end)

		-- Create tab button
		Tab.Name = "Tab"
		Tab.Parent = TabContainer
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.BackgroundTransparency = 1.000
		Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab.BorderSizePixel = 0
		Tab.Size = UDim2.new(0, 159, 0, 33)
		Tab.Font = Enum.Font.SourceSans
		Tab.Text = TabName
		Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
		Tab.TextSize = 27.000
		Tab.TextXAlignment = Enum.TextXAlignment.Left

		-- Set default selected tab if none
		if not firstTabCreated then
			firstTabCreated = true
			InsideActContanierScrollingFrame.Visible = true
			SelectedTab.Text = TabName .. " Tab"
			SelectedTab.Visible = true
		end

		Tab.MouseButton1Click:Connect(function()
			for _, v in pairs(ActivactionsContainer:GetChildren()) do
				if v:IsA("ScrollingFrame") then
					v.Visible = false
				end
			end

			InsideActContanierScrollingFrame.Visible = true
			SelectedTab.Text = TabName .. " Tab"
			SelectedTab.Visible = true

			-- Update icon position next to the clicked tab
			SelectedTabIcon.Visible = true

			local tabAbsolutePos = Tab.AbsolutePosition
			local mainAbsolutePos = Main.AbsolutePosition
			local relativeY = tabAbsolutePos.Y - mainAbsolutePos.Y

			SelectedTabIcon.Position = UDim2.new(0, 12, 0, relativeY + (Tab.AbsoluteSize.Y / 2) - (SelectedTabIcon.Size.Y.Offset / 2))
		end)











		local Module = {}



		function Module:CreateButton(ButtonName, CallBack)
			assert(type(ButtonName) == "string", "specify type string for CreateButton() function")




			local Button = Instance.new("TextButton") -- Changed to TextButton
			local ButtonUICorner = Instance.new("UICorner")
			local ButtonTitle = Instance.new("TextLabel")

			Button.Name = "Button"
			Button.Parent = InsideActContanierScrollingFrame
			Button.BackgroundColor3 = Color3.fromRGB(66, 73, 75)
			Button.BackgroundTransparency = 0.150
			Button.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Button.Size = UDim2.new(0, 308, 0, 50)
			Button.Text = "" -- Optional: keep empty if you're using the separate label
			Button.ZIndex = 0



			ButtonUICorner.CornerRadius = UDim.new(0, 6)
			ButtonUICorner.Name = "ButtonUICorner"
			ButtonUICorner.Parent = Button

			ButtonTitle.Name = "ButtonTitle"
			ButtonTitle.Parent = Button
			ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTitle.BackgroundTransparency = 1.000
			ButtonTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ButtonTitle.BorderSizePixel = 0
			ButtonTitle.Position = UDim2.new(0.043, 0, 0.055, 0)
			ButtonTitle.Size = UDim2.new(0, 295, 0, 47)
			ButtonTitle.Font = Enum.Font.SourceSans
			ButtonTitle.Text = ButtonName
			ButtonTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTitle.TextSize = 27.000
			ButtonTitle.TextWrapped = true

			Button.MouseButton1Click:Connect(CallBack) -- ✅ Now this works because it's a TextButton


		end


		function Module:CreateToggle(ToggleName, Repeat, CallBack)
			assert(type(ToggleName) == "string", "Specify type string for CreateActiveToggle() function")

			local Toggle = Instance.new("Frame")
			local ToggleUICorner = Instance.new("UICorner")
			local ToggleButtonHolder = Instance.new("Frame")
			local ToggleButtonHolderUICorner = Instance.new("UICorner")
			local ToggleButtonHolderTextButton = Instance.new("TextButton")
			local ToggleButtonHolderTextButtonUICorner = Instance.new("UICorner")
			local ToggleTitle = Instance.new("TextLabel")

			-- UI setup (same as your original setup)...
			Toggle.Name = "Toggle"
			Toggle.Parent = InsideActContanierScrollingFrame
			Toggle.BackgroundColor3 = Color3.fromRGB(66, 73, 75)
			Toggle.BackgroundTransparency = 0.150
			Toggle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Toggle.Size = UDim2.new(0, 308, 0, 50)
			Toggle.ZIndex = 0


			ToggleUICorner.CornerRadius = UDim.new(0, 6)
			ToggleUICorner.Parent = Toggle

			ToggleButtonHolder.Name = "ToggleButtonHolder"
			ToggleButtonHolder.Parent = Toggle
			ToggleButtonHolder.BackgroundColor3 = Color3.fromRGB(43, 46, 48)
			ToggleButtonHolder.BackgroundTransparency = 0.450
			ToggleButtonHolder.Position = UDim2.new(0.802, 0, 0.29, 0)
			ToggleButtonHolder.Size = UDim2.new(0, 51, 0, 22)

			ToggleButtonHolderUICorner.CornerRadius = UDim.new(0, 40)
			ToggleButtonHolderUICorner.Parent = ToggleButtonHolder

			ToggleButtonHolderTextButton.Parent = ToggleButtonHolder
			ToggleButtonHolderTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleButtonHolderTextButton.Size = UDim2.new(0, 26, 0, 22)
			ToggleButtonHolderTextButton.Text = ""
			ToggleButtonHolderTextButtonUICorner.CornerRadius = UDim.new(1, 0)
			ToggleButtonHolderTextButtonUICorner.Parent = ToggleButtonHolderTextButton

			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Parent = Toggle
			ToggleTitle.BackgroundTransparency = 1
			ToggleTitle.Position = UDim2.new(0.04, 0, -0.01, 0)
			ToggleTitle.Size = UDim2.new(0, 200, 0, 50)
			ToggleTitle.Font = Enum.Font.SourceSans
			ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.TextSize = 18
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
			ToggleTitle.Text = ToggleName
			-- Initialize state
			local toggling = false  -- Initially set to false for "off"
			local togCon = nil

			-- Update button position and color based on the initial state
			local function updateToggleState()
				if toggling then
					ToggleButtonHolder.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
					local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local tween = TweenService:Create(ToggleButtonHolderTextButton, tweenInfo, { Position = UDim2.new(0.51, 0, 0, 0) })
					tween:Play()
				else
					ToggleButtonHolder.BackgroundColor3 = Color3.fromRGB(43, 46, 48)
					local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local tween = TweenService:Create(ToggleButtonHolderTextButton, tweenInfo, { Position = UDim2.new(0, 0, 0, 0) })
					tween:Play()
				end
			end

			-- Call the function to update the initial state
			updateToggleState()

			-- Toggle button click event
			ToggleButtonHolderTextButton.MouseButton1Click:Connect(function()
				toggling = not toggling  -- Toggle the state
				updateToggleState()  -- Update the visual state

				if toggling then
					-- If Repeat is true, start the repeated callback
					if Repeat then
						togCon = RunService.RenderStepped:Connect(function()
							CallBack(toggling)  -- Call the callback
						end)
					else
						CallBack(toggling)  -- Single callback call
					end
				else
					-- If toggling off, disconnect the repeated callback
					if togCon then
						togCon:Disconnect()
					end
					CallBack(toggling)  -- Final callback when toggling off
				end
			end)
		end






		local UIS = game:GetService("UserInputService")


		function Module:CreateSlider(SliderName, Options, CallBack)
			assert(type(SliderName) == "string", "Specify type string for CreateSlider() function")
			assert(type(Options) == "table", "Options must be a table")
			assert(type(Options.min) == "number", "Options.min must be a number")
			assert(type(Options.max) == "number", "Options.max must be a number")
			assert(type(Options.default) == "number", "Options.default must be a number")

			Options.default = math.clamp(Options.default, Options.min, Options.max)

			local Slider = Instance.new("Frame")
			local SliderUICorner = Instance.new("UICorner")
			local SliderTitle = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local SliderUIPadding = Instance.new("UIPadding")
			local SliderBack = Instance.new("TextButton")
			local SliderBackUICorner = Instance.new("UICorner")
			local FillSlider = Instance.new("Frame")
			local MainSlider = Instance.new("Frame")
			local MainSliderUICorner = Instance.new("UICorner")

			-- Setup parent here (change if needed)
			Slider.Name = "Slider"
			Slider.Parent = InsideActContanierScrollingFrame  -- Ensure this variable is defined
			Slider.BackgroundColor3 = Color3.fromRGB(66, 73, 75)
			Slider.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Slider.BorderSizePixel = 0
			Slider.Position = UDim2.new(0, 0, 0.506493509, 0)
			Slider.Size = UDim2.new(0, 308, 0, 50)
			Slider.ZIndex = 0
			Slider.Transparency = .15

			SliderUICorner.CornerRadius = UDim.new(0, 3)
			SliderUICorner.Parent = Slider

			SliderTitle.Name = "SliderTitle"
			SliderTitle.Parent = Slider
			SliderTitle.BackgroundTransparency = 1
			SliderTitle.Position = UDim2.new(0.0231788084, 0, 0.100000001, 0)
			SliderTitle.Size = UDim2.new(0, 136, 0, 38)
			SliderTitle.Font = Enum.Font.SourceSans
			SliderTitle.Text = SliderName .. ": " .. Options.default
			SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.TextSize = 20
			SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = SliderTitle
			SliderUIPadding.Name = "SliderUIPadding"
			SliderUIPadding.Parent = Slider
			SliderUIPadding.PaddingLeft = UDim.new(0, 6)

			SliderBack.Name = "SliderBack"
			SliderBack.Parent = Slider
			SliderBack.BackgroundColor3 = Color3.fromRGB(49, 54, 57)
			SliderBack.BorderSizePixel = 0
			SliderBack.Position = UDim2.new(0.507931769, 0, 0.5, -3)
			SliderBack.Size = UDim2.new(0, 134, 0, 8)
			SliderBack.Text = ""

			SliderBackUICorner.CornerRadius = UDim.new(0, 6)
			SliderBackUICorner.Parent = SliderBack

			FillSlider.Name = "FillSlider"
			FillSlider.Parent = SliderBack
			FillSlider.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
			FillSlider.BorderSizePixel = 0
			FillSlider.Position = UDim2.new(0, 0, 0, 0)
			FillSlider.Size = UDim2.new((Options.default - Options.min) / (Options.max - Options.min), 0, 1, 0)

			MainSlider.Name = "MainSlider"
			MainSlider.Parent = SliderBack
			MainSlider.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
			MainSlider.Size = UDim2.new(0, 14, 0, 14)
			MainSlider.AnchorPoint = Vector2.new(0.5, 0.5)
			MainSlider.Position = UDim2.new((Options.default - Options.min) / (Options.max - Options.min), 0, 0.5, 0)

			MainSliderUICorner.CornerRadius = UDim.new(0, 7)
			MainSliderUICorner.Parent = MainSlider

			local mousedown = false

			SliderBack.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					mousedown = true
				end
			end)

			UIS.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					mousedown = false
				end
			end)

			UIS.InputChanged:Connect(function(input)
				if mousedown and input.UserInputType == Enum.UserInputType.MouseMovement then
					local mousePos = input.Position
					local sliderPos = SliderBack.AbsolutePosition
					local sliderSize = SliderBack.AbsoluteSize

					local rawPercent = (mousePos.X - sliderPos.X) / sliderSize.X
					local safePercent = math.clamp(rawPercent, 0, 1)

					local newValue = Options.min + safePercent * (Options.max - Options.min)
					newValue = math.floor(newValue)

					SliderTitle.Text = SliderName .. ": " .. newValue
					MainSlider.Position = UDim2.new(safePercent, 0, 0.5, 0)
					FillSlider.Size = UDim2.new(safePercent, 0, 1, 0)

					library.flags[SliderName] = newValue
					CallBack(newValue)
				end
			end)
		end



		local UserInputService = game:GetService("UserInputService")

		function Module:CreateMultiDropdown(DropDownName, ItemList, CallBack)
			local Dropdown = Instance.new("Frame")
			local DropdownUICorner = Instance.new("UICorner")
			local DropdownTitle = Instance.new("TextLabel")
			local BeforeDropdownContainer = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropDownImageButton = Instance.new("ImageButton")
			local DropdownDisplayTextLabel = Instance.new("TextLabel")
			local DropDownContainer = Instance.new("ScrollingFrame")
			local DropDownContainerUICorner = Instance.new("UICorner")
			local DropDownContainerUIListLayout = Instance.new("UIListLayout")
			local DropDownContainerTextButton = Instance.new("TextButton")
			local DropDownContainerUIPadding = Instance.new("UIPadding")

			local MultiSelectedItems = {}
			local SelectedItemButtons = {}

			-- Set up the parent container
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = InsideActContanierScrollingFrame
			Dropdown.BackgroundColor3 = Color3.fromRGB(66, 73, 75)
			Dropdown.BackgroundTransparency = 0.150
			Dropdown.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Dropdown.Size = UDim2.new(0, 308, 0, 50)
			Dropdown.ZIndex = 1000


			DropdownUICorner.CornerRadius = UDim.new(0, 6)
			DropdownUICorner.Parent = Dropdown

			-- Title for the dropdown
			DropdownTitle.Name = "DropdownTitle"
			DropdownTitle.Parent = Dropdown
			DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.BackgroundTransparency = 1.000
			DropdownTitle.Position = UDim2.new(0.0430723913, 0, 0.0180590823, 0)
			DropdownTitle.Size = UDim2.new(0, 129, 0, 47)
			DropdownTitle.Font = Enum.Font.SourceSans
			DropdownTitle.Text = DropDownName
			DropdownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.TextSize = 18.000
			DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

			-- Before the dropdown (container)
			BeforeDropdownContainer.Name = "BeforeDropdownContainer"
			BeforeDropdownContainer.Parent = Dropdown
			BeforeDropdownContainer.BackgroundColor3 = Color3.fromRGB(49, 54, 57)
			BeforeDropdownContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BeforeDropdownContainer.Position = UDim2.new(0.523399472, 0, 0.227514654, 0)
			BeforeDropdownContainer.Size = UDim2.new(0, 138, 0, 31)
			UICorner.Parent = BeforeDropdownContainer

			-- Image Button (for dropdown arrow)
			DropDownImageButton.Name = "DropDownImageButton"
			DropDownImageButton.Parent = BeforeDropdownContainer
			DropDownImageButton.BackgroundTransparency = 1.000
			DropDownImageButton.Position = UDim2.new(0.850000024, 0, 0.257999986, 0)
			DropDownImageButton.Size = UDim2.new(0, 15, 0, 15)
			DropDownImageButton.Image = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"

			-- Display the selected item text
			DropdownDisplayTextLabel.Name = "DropdownDisplayTextLabel"
			DropdownDisplayTextLabel.Parent = BeforeDropdownContainer
			DropdownDisplayTextLabel.BackgroundTransparency = 1.000
			DropdownDisplayTextLabel.Position = UDim2.new(0.0797101483, 0, 0, 0)
			DropdownDisplayTextLabel.Size = UDim2.new(0, 90, 0, 31)
			DropdownDisplayTextLabel.Font = Enum.Font.SourceSans
			DropdownDisplayTextLabel.Text = "Select an option"
			DropdownDisplayTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownDisplayTextLabel.TextSize = 16.000
			DropdownDisplayTextLabel.TextXAlignment = Enum.TextXAlignment.Left

			-- Container for dropdown items
			DropDownContainer.Name = "DropDownContainer"
			DropDownContainer.Parent = BeforeDropdownContainer
			DropDownContainer.Active = true
			DropDownContainer.Visible = false
			DropDownContainer.BackgroundColor3 = Color3.fromRGB(49, 54, 57)
			DropDownContainer.Position = UDim2.new(0, 0, 1, -26)
			DropDownContainer.Size = UDim2.new(0, 138, 0, 202)
			DropDownContainer.ClipsDescendants = true
			DropDownContainer.ScrollBarThickness = 4
			DropDownContainer.ScrollingDirection = Enum.ScrollingDirection.Y
			DropDownContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
			DropDownContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropDownContainer.ZIndex = 100


			DropDownContainerUICorner.Parent = DropDownContainer
			DropDownContainerUIListLayout.Parent = DropDownContainer
			DropDownContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropDownContainerUIListLayout.Padding = UDim.new(0, 2)

			DropDownContainerUIPadding.Parent = DropDownContainer
			DropDownContainerUIPadding.PaddingLeft = UDim.new(0, 21)
			DropDownContainerUIPadding.PaddingTop = UDim.new(0, 6)

			-- Iterate through the ItemList to create dropdown options
			for _, item in ipairs(ItemList) do
				local DropDownContainerTextButton = Instance.new("TextButton")
				local SelectedFrame = Instance.new("Frame")  -- Indicator for selected items
				DropDownContainerTextButton.Name = "DropDownContainerTextButton"
				DropDownContainerTextButton.Parent = DropDownContainer
				DropDownContainerTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropDownContainerTextButton.BackgroundTransparency = 1.000
				DropDownContainerTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropDownContainerTextButton.BorderSizePixel = 0
				DropDownContainerTextButton.Size = UDim2.new(0, 117, 0, 31)
				DropDownContainerTextButton.Font = Enum.Font.SourceSans
				DropDownContainerTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropDownContainerTextButton.TextSize = 20.000
				DropDownContainerTextButton.TextXAlignment = Enum.TextXAlignment.Left
				DropDownContainerTextButton.Text = item
				DropDownContainerTextButton.TextScaled = true
				DropDownContainerTextButton.TextWrapped = true

				-- Set up the selected indicator frame on the left side
				SelectedFrame.Name = "SelectedFrame"
				SelectedFrame.Parent = DropDownContainerTextButton
				SelectedFrame.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
				SelectedFrame.Size = UDim2.new(0, 6, 0, 15)
				SelectedFrame.Position = UDim2.new(0, -13, 0, 8)  -- Position the indicator to the left of the text
				SelectedFrame.Visible = false  -- Hide by default

				DropDownContainerTextButton.MouseButton1Click:Connect(function()
					-- Toggle selection state
					if SelectedFrame.Visible then
						SelectedFrame.Visible = false
						table.remove(MultiSelectedItems, table.find(MultiSelectedItems, item))
					else
						SelectedFrame.Visible = true
						table.insert(MultiSelectedItems, item)
					end


					-- Trigger the callback
					CallBack(MultiSelectedItems)
				end)
			end

			-- Toggle visibility of dropdown items when clicking the dropdown button
			DropDownImageButton.MouseButton1Click:Connect(function()
				DropDownContainer.Visible = not DropDownContainer.Visible
			end)

			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if not gameProcessed then
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						-- Get the mouse position
						local mousePos = UserInputService:GetMouseLocation()

						-- Check if the click is outside the dropdown container or dropdown
						if not Dropdown:FindFirstChild("Dropdown") or not DropDownContainer:IsPointInRegion3(mousePos) then
							DropDownContainer.Visible = false
						end
					end
				end
			end)
		end








		function Module:CreateDropdown(DropDownName, ItemList, CallBack, defaultValue)

			local Dropdown = Instance.new("Frame")
			local DropdownUICorner = Instance.new("UICorner")
			local DropdownTitle = Instance.new("TextLabel")
			local BeforeDropdownContainer = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropDownImageButton = Instance.new("ImageButton")
			local DropdownDisplayTextLabel = Instance.new("TextLabel")
			local DropDownContainer = Instance.new("ScrollingFrame")
			local DropDownContainerUICorner = Instance.new("UICorner")
			local DropDownContainerUIListLayout = Instance.new("UIListLayout")
			local DropDownContainerTextButton = Instance.new("TextButton")
			local DropDownContainerUIPadding = Instance.new("UIPadding")

			-- Set up the parent container
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = InsideActContanierScrollingFrame
			Dropdown.BackgroundColor3 = Color3.fromRGB(66, 73, 75)
			Dropdown.BackgroundTransparency = 0.150
			Dropdown.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Dropdown.Size = UDim2.new(0, 308, 0, 50)
			Dropdown.ZIndex = 1000

			DropdownUICorner.CornerRadius = UDim.new(0, 6)
			DropdownUICorner.Parent = Dropdown

			-- Title for the dropdown
			DropdownTitle.Name = "DropdownTitle"
			DropdownTitle.Parent = Dropdown
			DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.BackgroundTransparency = 1.000
			DropdownTitle.Position = UDim2.new(0.0430723913, 0, 0.0180590823, 0)
			DropdownTitle.Size = UDim2.new(0, 129, 0, 47)
			DropdownTitle.Font = Enum.Font.SourceSans
			DropdownTitle.Text = DropDownName
			DropdownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.TextSize = 18.000
			DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

			-- Before the dropdown (container)
			BeforeDropdownContainer.Name = "BeforeDropdownContainer"
			BeforeDropdownContainer.Parent = Dropdown
			BeforeDropdownContainer.BackgroundColor3 = Color3.fromRGB(49, 54, 57)
			BeforeDropdownContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BeforeDropdownContainer.Position = UDim2.new(0.523399472, 0, 0.227514654, 0)
			BeforeDropdownContainer.Size = UDim2.new(0, 138, 0, 31)
			UICorner.Parent = BeforeDropdownContainer

			-- Image Button (for dropdown arrow)
			DropDownImageButton.Name = "DropDownImageButton"
			DropDownImageButton.Parent = BeforeDropdownContainer
			DropDownImageButton.BackgroundTransparency = 1.000
			DropDownImageButton.Position = UDim2.new(0.850000024, 0, 0.257999986, 0)
			DropDownImageButton.Size = UDim2.new(0, 15, 0, 15)
			DropDownImageButton.Image = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"

			-- Display the selected item text
			DropdownDisplayTextLabel.Name = "DropdownDisplayTextLabel"
			DropdownDisplayTextLabel.Parent = BeforeDropdownContainer
			DropdownDisplayTextLabel.BackgroundTransparency = 1.000
			DropdownDisplayTextLabel.Position = UDim2.new(0.0797101483, 0, 0, 0)
			DropdownDisplayTextLabel.Size = UDim2.new(0, 90, 0, 31)
			DropdownDisplayTextLabel.Font = Enum.Font.SourceSans
			DropdownDisplayTextLabel.Text = defaultValue or "Select an option"
			DropdownDisplayTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownDisplayTextLabel.TextSize = 16.000
			DropdownDisplayTextLabel.TextXAlignment = Enum.TextXAlignment.Left

			-- Container for dropdown items
			DropDownContainer.Name = "DropDownContainer"
			DropDownContainer.Parent = BeforeDropdownContainer
			DropDownContainer.Active = true
			DropDownContainer.Visible = false
			DropDownContainer.BackgroundColor3 = Color3.fromRGB(49, 54, 57)
			DropDownContainer.Position = UDim2.new(0, 0, 1, -26)
			DropDownContainer.Size = UDim2.new(0, 138, 0, 202)
			DropDownContainer.ClipsDescendants = true
			DropDownContainer.ScrollBarThickness = 4
			DropDownContainer.ScrollingDirection = Enum.ScrollingDirection.Y
			DropDownContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
			DropDownContainer.CanvasSize = UDim2.new(0, 0, 0, 0)

			DropDownContainerUICorner.Parent = DropDownContainer
			DropDownContainerUIListLayout.Parent = DropDownContainer
			DropDownContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropDownContainerUIListLayout.Padding = UDim.new(0, 2)

			DropDownContainerUIPadding.Parent = DropDownContainer
			DropDownContainerUIPadding.PaddingLeft = UDim.new(0, 21)
			DropDownContainerUIPadding.PaddingTop = UDim.new(0, 6)



			for _, item in ipairs(ItemList) do
				local DropDownContainerTextButton = Instance.new("TextButton") -- NEW button each time
				DropDownContainerTextButton.Name = "DropDownContainerTextButton"
				DropDownContainerTextButton.Parent = DropDownContainer
				DropDownContainerTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropDownContainerTextButton.BackgroundTransparency = 1.000
				DropDownContainerTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropDownContainerTextButton.BorderSizePixel = 0
				DropDownContainerTextButton.Size = UDim2.new(0, 117, 0, 31)
				DropDownContainerTextButton.Font = Enum.Font.SourceSans
				DropDownContainerTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropDownContainerTextButton.TextSize = 20.000
				DropDownContainerTextButton.TextXAlignment = Enum.TextXAlignment.Left
				DropDownContainerTextButton.Text = item
				DropDownContainerTextButton.TextScaled = true
				DropDownContainerTextButton.TextWrapped = true

				DropDownContainerTextButton.MouseButton1Click:Connect(function()
					DropdownDisplayTextLabel.Text = item
					DropDownContainer.Visible = false
					CallBack(item)

				end)
			end


			-- Toggle visibility of dropdown items
			DropDownImageButton.MouseButton1Click:Connect(function()
				DropDownContainer.Visible = not DropDownContainer.Visible
			end)
		end









		function Module:CreateLabel(LabelName, LabelText)
			assert(type(LabelName) == "string", "specify type string for CreateLabel() function")
			assert(type(LabelText) == "string", "specify type string for CreateLabel() function")

			local Label = Instance.new("Frame")
			local LabelUICorner = Instance.new("UICorner")
			local LabelTitle = Instance.new("TextLabel")

			Label.Name = LabelName
			Label.Parent = InsideActContanierScrollingFrame
			Label.BackgroundColor3 = Color3.fromRGB(66, 73, 75)
			Label.BackgroundTransparency = 0.150
			Label.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Label.Size = UDim2.new(0, 308, 0, 50)

			LabelUICorner.CornerRadius = UDim.new(0, 6)
			LabelUICorner.Name = "LabelUICorner"
			LabelUICorner.Parent = Label

			LabelTitle.Name = "LabelTitle"
			LabelTitle.Parent = Label
			LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelTitle.BackgroundTransparency = 1.000
			LabelTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			LabelTitle.BorderSizePixel = 0
			LabelTitle.Position = UDim2.new(0.0433587395, 0, 0.0553356931, 0)
			LabelTitle.Size = UDim2.new(0, 295, 0, 47)
			LabelTitle.Font = Enum.Font.SourceSans
			LabelTitle.Text = LabelText
			LabelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			LabelTitle.TextSize = 18.000
			LabelTitle.TextXAlignment = Enum.TextXAlignment.Left


		end


		function Module:EditLabel(LabelName, NewText)
			assert(type(LabelName) == "string", "specify type string for EditLabel() function")
			assert(type(NewText) == "string", "specify type string for EditLabel() function")

			InsideActContanierScrollingFrame:FindFirstChild(LabelName).LabelTitle.Text = NewText

		end



		function Module:CreateTextBox(EnterValueName, TextBoxPlaceholderText, CallBack)

			local EnterValue = Instance.new("Frame")
			local EnterValueUICorner = Instance.new("UICorner")
			local EnterValueTextBox = Instance.new("TextBox")
			local EnterValueTextBoxUICorner = Instance.new("UICorner")
			local EnterValueTitle = Instance.new("TextLabel")

			EnterValue.Name = "EnterValue"
			EnterValue.Parent = InsideActContanierScrollingFrame
			EnterValue.BackgroundColor3 = Color3.fromRGB(66, 73, 75)
			EnterValue.BackgroundTransparency = 0.150
			EnterValue.BorderColor3 = Color3.fromRGB(31, 31, 31)
			EnterValue.Position = UDim2.new(0, 0, 0.363636374, 0)
			EnterValue.Size = UDim2.new(0, 308, 0, 62)
			EnterValue.Zindex = 0

			EnterValueUICorner.CornerRadius = UDim.new(0, 6)
			EnterValueUICorner.Name = "EnterValueUICorner"
			EnterValueUICorner.Parent = EnterValue

			EnterValueTextBox.Name = "EnterValueTextBox"
			EnterValueTextBox.Parent = EnterValue
			EnterValueTextBox.BackgroundColor3 = Color3.fromRGB(49, 54, 57)
			EnterValueTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			EnterValueTextBox.BorderSizePixel = 0
			EnterValueTextBox.Position = UDim2.new(0.560080767, 0, 0.220217794, 0)
			EnterValueTextBox.Size = UDim2.new(0, 125, 0, 35)
			EnterValueTextBox.Font = Enum.Font.SourceSans
			EnterValueTextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
			EnterValueTextBox.PlaceholderText = "Enter.."
			EnterValueTextBox.Text = ""
			EnterValueTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			EnterValueTextBox.TextSize = 14.000

			EnterValueTextBoxUICorner.Name = "EnterValueTextBoxUICorner"
			EnterValueTextBoxUICorner.Parent = EnterValueTextBox

			EnterValueTitle.Name = "EnterValueTitle"
			EnterValueTitle.Parent = EnterValue
			EnterValueTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			EnterValueTitle.BackgroundTransparency = 1.000
			EnterValueTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			EnterValueTitle.BorderSizePixel = 0
			EnterValueTitle.Position = UDim2.new(0.0433587395, 0, 0.120967738, 0)
			EnterValueTitle.Size = UDim2.new(0, 159, 0, 45)
			EnterValueTitle.Font = Enum.Font.SourceSans
			EnterValueTitle.Text = EnterValueName
			EnterValueTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			EnterValueTitle.TextSize = 18.000
			EnterValueTitle.TextXAlignment = Enum.TextXAlignment.Left




			EnterValueTextBox:GetPropertyChangedSignal("Text"):Connect(function()
				CallBack(EnterValueTextBox.Text)
			end)

			-- Update CallBack when focus is lost and Enter is pressed
			EnterValueTextBox.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					CallBack(EnterValueTextBox.Text)
				end
			end)
		end

		function Module:CreateColorPicker(callback)
			local UIS = game:GetService("UserInputService")
			local RS = game:GetService("RunService")



			local ColorPicker = Instance.new("Frame")
			local ColorPickerTitle = Instance.new("TextLabel")
			local ColorPickerUICorner = Instance.new("UICorner")
			local OutsideColorDisplay = Instance.new("TextButton")
			local OutsideColorDisplayUICorner = Instance.new("UICorner")

			local ColorPickerFrame = Instance.new("Frame")
			local DarknessPicker = Instance.new("ImageButton")
			local UIGradient = Instance.new("UIGradient")
			local Slider = Instance.new("ImageLabel")
			local ColourWheel = Instance.new("ImageButton")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local Picker = Instance.new("ImageLabel")
			local ConfirmButton = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")
			local ColorDisplay = Instance.new("Frame")

			--Properties:

			ColorPickerFrame.Name = "ColorPickerFrame"
			ColorPickerFrame.Parent = DumbHubUI
			ColorPickerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			ColorPickerFrame.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
			ColorPickerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ColorPickerFrame.BorderSizePixel = 0
			ColorPickerFrame.Position = UDim2.new(0.8, 0, 0.5, 0)
			ColorPickerFrame.Size = UDim2.new(0, 300, 0, 300)
			ColorPickerFrame.Visible = false

			DarknessPicker.Name = "DarknessPicker"
			DarknessPicker.Parent = ColorPickerFrame
			DarknessPicker.Active = false
			DarknessPicker.AnchorPoint = Vector2.new(0.5, 0.5)
			DarknessPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DarknessPicker.BackgroundTransparency = 1.000
			DarknessPicker.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DarknessPicker.BorderSizePixel = 0
			DarknessPicker.Position = UDim2.new(0.821005225, 0, 0.308207393, 0)
			DarknessPicker.Selectable = false
			DarknessPicker.Size = UDim2.new(0.10448397, 0, 0.556131601, 0)
			DarknessPicker.ZIndex = 2
			DarknessPicker.Image = "rbxassetid://3570695787"
			DarknessPicker.ScaleType = Enum.ScaleType.Slice
			DarknessPicker.SliceCenter = Rect.new(100, 100, 100, 100)
			DarknessPicker.SliceScale = 0.120

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
			UIGradient.Rotation = 90
			UIGradient.Parent = DarknessPicker

			Slider.Name = "Slider"
			Slider.Parent = DarknessPicker
			Slider.AnchorPoint = Vector2.new(0.5, 0.5)
			Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Slider.BackgroundTransparency = 1.000
			Slider.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Slider.BorderSizePixel = 0
			Slider.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
			Slider.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
			Slider.ZIndex = 2
			Slider.Image = "rbxassetid://3570695787"
			Slider.ImageColor3 = Color3.fromRGB(255, 74, 74)
			Slider.ScaleType = Enum.ScaleType.Slice
			Slider.SliceCenter = Rect.new(100, 100, 100, 100)
			Slider.SliceScale = 0.120

			ColourWheel.Name = "ColourWheel"
			ColourWheel.Parent = ColorPickerFrame
			ColourWheel.Active = false
			ColourWheel.AnchorPoint = Vector2.new(0.5, 0.5)
			ColourWheel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ColourWheel.BackgroundTransparency = 1.000
			ColourWheel.BorderColor3 = Color3.fromRGB(27, 42, 53)
			ColourWheel.BorderSizePixel = 0
			ColourWheel.Position = UDim2.new(0.333931863, 0, 0.306454867, 0)
			ColourWheel.Selectable = false
			ColourWheel.Size = UDim2.new(0, 170, 0, 169)
			ColourWheel.Image = "http://www.roblox.com/asset/?id=6020299385"

			UIAspectRatioConstraint.Parent = ColourWheel
			UIAspectRatioConstraint.AspectRatio = 1.000

			Picker.Name = "Picker"
			Picker.Parent = ColourWheel
			Picker.AnchorPoint = Vector2.new(0.5, 0.5)
			Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Picker.BackgroundTransparency = 1.000
			Picker.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Picker.BorderSizePixel = 0
			Picker.Position = UDim2.new(0.5, 0, 0.5, 0)
			Picker.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
			Picker.Image = "http://www.roblox.com/asset/?id=3678860011"

			ConfirmButton.Name = "ConfirmButton"
			ConfirmButton.Parent = ColorPickerFrame
			ConfirmButton.BackgroundColor3 = Color3.fromRGB(28, 126, 175)
			ConfirmButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ConfirmButton.BorderSizePixel = 0
			ConfirmButton.Position = UDim2.new(0.216666669, 0, 0.846666694, 0)
			ConfirmButton.Size = UDim2.new(0, 169, 0, 37)
			ConfirmButton.Font = Enum.Font.SourceSans
			ConfirmButton.Text = "Confirm"
			ConfirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			ConfirmButton.TextSize = 21.000

			UICorner.CornerRadius = UDim.new(0, 14)
			UICorner.Parent = ConfirmButton

			ColorDisplay.Name = "ColorDisplay"
			ColorDisplay.Parent = ColorPickerFrame
			ColorDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ColorDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ColorDisplay.BorderSizePixel = 0
			ColorDisplay.Position = UDim2.new(0.189999998, 0, 0.670000017, 0)
			ColorDisplay.Size = UDim2.new(0, 185, 0, 30)


			ColorPicker.Name = "ColorPicker"
			ColorPicker.Parent = InsideActContanierScrollingFrame
			ColorPicker.BackgroundColor3 = Color3.fromRGB(66, 73, 75)
			ColorPicker.BackgroundTransparency = 0.150
			ColorPicker.BorderColor3 = Color3.fromRGB(31, 31, 31)
			ColorPicker.Size = UDim2.new(0, 308, 0, 50)
			ColorPicker.ZIndex = 0

			ColorPickerTitle.Name = "ColorPickerTitle"
			ColorPickerTitle.Parent = ColorPicker
			ColorPickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ColorPickerTitle.BackgroundTransparency = 1.000
			ColorPickerTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ColorPickerTitle.BorderSizePixel = 0
			ColorPickerTitle.Position = UDim2.new(0.0418713056, 0, -0.013740845, 0)
			ColorPickerTitle.Size = UDim2.new(0, 200, 0, 50)
			ColorPickerTitle.Font = Enum.Font.SourceSans
			ColorPickerTitle.Text = "Select Color"
			ColorPickerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ColorPickerTitle.TextSize = 18.000
			ColorPickerTitle.TextXAlignment = Enum.TextXAlignment.Left

			ColorPickerUICorner.CornerRadius = UDim.new(0, 6)
			ColorPickerUICorner.Name = "ColorPickerUICorner"
			ColorPickerUICorner.Parent = ColorPicker

			OutsideColorDisplay.Name = "OutsideColorDisplay"
			OutsideColorDisplay.Parent = ColorPicker
			OutsideColorDisplay.Active = false
			OutsideColorDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			OutsideColorDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
			OutsideColorDisplay.BorderSizePixel = 0
			OutsideColorDisplay.Position = UDim2.new(0.86687398, 0, 0.186596066, 0)
			OutsideColorDisplay.Selectable = false
			OutsideColorDisplay.Size = UDim2.new(0, 30, 0, 30)
			OutsideColorDisplay.Text = ""

			OutsideColorDisplayUICorner.Name = "OutsideColorDisplayUICorner"
			OutsideColorDisplayUICorner.Parent = OutsideColorDisplay

			-- Local Variables
			local hue, sat, val = 0, 1, 1
			local selectedColor = Color3.new(1, 1, 1)

			-- Utility Functions
			local function updateColorDisplay()
				selectedColor = Color3.fromHSV(hue, sat, val)
				ColorDisplay.BackgroundColor3 = selectedColor
				OutsideColorDisplay.BackgroundColor3 = selectedColor
				Slider.ImageColor3 = selectedColor
			end


			local function movePicker(input)
				-- Get the current mouse position (either from InputObject or fallback to the input position)
				local mousePos = typeof(input) == "InputObject" and input.Position or Vector2.new(input.X, input.Y)

				-- Calculate the position relative to the ColourWheel
				local rel = mousePos - ColourWheel.AbsolutePosition
				local center = ColourWheel.AbsoluteSize / 2
				local dist = (rel - center).Magnitude

				-- Ensure the picker stays inside the wheel by checking the distance
				if dist <= center.X then
					local dx, dy = rel.X - center.X, rel.Y - center.Y

					-- Calculate the angle based on the mouse position relative to the center of the wheel
					local angle = math.atan2(dy, dx)  -- Angle in radians from -π to π

					-- Normalize the angle to a range of 0 to 1 for the hue
					hue = (angle + math.pi) / (2 * math.pi)  -- Shift angle to [0, 1] range

					-- Ensure the hue is correctly wrapped around
					hue = hue % 1  -- Ensures that the hue value is always within [0, 1]

					-- Calculate the saturation based on the distance from the center (how far from the center the mouse is)
					sat = math.clamp(dist / center.X, 0, 1)

					-- Optionally set value (brightness), if you want a fixed brightness, set it to 1
					val = 1  -- Fix brightness to 1 to get a bright color

					-- Update the picker position relative to the wheel (ensure it's centered around the mouse)
					Picker.Position = UDim2.new(0.5 + (dx / ColourWheel.AbsoluteSize.X), 0, 0.5 + (dy / ColourWheel.AbsoluteSize.Y), 0)

					-- Update the color display based on the new hue, saturation, and value
					updateColorDisplay()
				end
			end



			local function moveSlider(input)
				local mousePos = typeof(input) == "InputObject" and input.Position or Vector2.new(input.X, input.Y)
				local relY = mousePos.Y - DarknessPicker.AbsolutePosition.Y
				local clampedY = math.clamp(relY, 0, DarknessPicker.AbsoluteSize.Y)
				val = 1 - (clampedY / DarknessPicker.AbsoluteSize.Y)
				Slider.Position = UDim2.new(0.5, 0, clampedY / DarknessPicker.AbsoluteSize.Y, 0)
				updateColorDisplay()
			end

			-- Events
			OutsideColorDisplay.MouseButton1Click:Connect(function()
				ColorPickerFrame.Visible = not ColorPickerFrame.Visible
			end)

			local draggingWheel = false
			local draggingSlider = false

			-- Properly track movement
			UIS.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					if draggingWheel then
						movePicker(input)
					elseif draggingSlider then
						moveSlider(input)
					end
				end
			end)

			-- START dragging on press (color wheel)
			ColourWheel.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					draggingWheel = true
					movePicker(input)
				end
			end)

			-- END dragging (color wheel)
			ColourWheel.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					draggingWheel = false
				end
			end)


			-- START dragging (darkness slider)
			DarknessPicker.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					draggingSlider = true
					moveSlider(input)
				end
			end)

			-- END dragging (darkness slider)
			DarknessPicker.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					draggingSlider = false
				end
			end)

			RS.RenderStepped:Connect(function()
				if draggingWheel then
					movePicker(UIS:GetMouseLocation())
				end
				if draggingSlider then
					moveSlider(UIS:GetMouseLocation())
				end
			end)



			ConfirmButton.MouseButton1Click:Connect(function()
				if callback then
					callback(selectedColor)
				end
				ColorPickerFrame.Visible = false
			end)

			-- Initial display update
			updateColorDisplay()
		end



		return Module
	end
	return Category
end

--[[
-- Create the UI window
local ui = library:CreateWindow("Baseplate")

-- Create tabs
local Main = ui:new("Main")
local Egg = ui:new("Eggs")
local Give = ui:new("Give")
local Misc = ui:new("Misc")

local VU = game:GetService("VirtualUser")
local Player = game:GetService("Players").LocalPlayer
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local T = WS.Terrain
local LI = game:GetService("Lighting")
local Codes = {"UPDATE1"}

--Variables

local Saved;
local SelectedTeleport;
local SelectedRebirths;
local SelectedEggs;
local SelectedWorlds;
local SelectedEggs;

local Time;
local Timee;
local AutoWin = false
local autoTreasure = false

local AutoDelete = false
local SelectedPets = {}
-- Anti Afk

Player.Idled:Connect(function()
	VU:Button2Down(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
	wait(1)
	VU:Button2Up(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
end)






--functions

local GameWorlds = {
	"World1",
	"World2",
	"World3",
	"World4",
	"World5",
	"World6",
	"World7",
}


function getWorlds()
	local Worlds = {}

	for i,v in pairs(GameWorlds) do
		table.insert(Worlds, v)
	end
	return Worlds
end

function getEggs()
	local Eggs = {}

	for i,v in pairs(game:GetService("ReplicatedStorage").Pets:GetChildren()) do
		table.insert(Eggs, v.Name)
	end
	return Eggs
end

function getPets()
	local Pets = {}

	for i,v in pairs(game:GetService("ReplicatedStorage").Pets:GetDescendants()) do
		if v:IsA("MeshPart") then
			table.insert(Pets, v.Name)
		end
	end
	return Pets
end




--Main



Main:CreateColorPicker(function(color)
	print("Color selected:", color)
end)


Main:CreateDropdown("Selected Word", getWorlds(), function(Worlds)
	SelectedWorlds = Worlds
end)


Main:CreateSlider("Wait Time ", {min = 1, max = 120, default = 1}, function(state)
	Time = state
end)


Main:CreateToggle("Auto Win", false, function(toggle)
	AutoWin = toggle
	if toggle then
		spawn(function()
			while AutoWin do
				if SelectedWorlds then
					for i, v in pairs(WS[SelectedWorlds]:GetDescendants()) do
						if v.Name == "WinPart" then
							firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
							firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
						end
					end
					task.wait(0.5)
				end
			end
		end)
	end
end)



Main:CreateToggle("Auto Dig", true, function()
	game:GetService("ReplicatedStorage").Remotes.DigEvent:FireServer()
end)




Main:CreateToggle("Auto Collect Treasure", false, function(toggle)
	autoTreasure = toggle
	if toggle then
		task.spawn(function()
			while autoTreasure do
				for _, v in pairs(WS.Treasure:GetDescendants()) do
					if v:IsA("ProximityPrompt") and v.Enabled then
						fireproximityprompt(v, 5)
					elseif v:IsA("BasePart") and v:FindFirstChild("TouchInterest") then
						local hrp = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
						if hrp then
							firetouchinterest(v, hrp, 0)
							firetouchinterest(v, hrp, 1)
						end
					end
				end
				task.wait(1) -- Run every second
			end
		end)
	end
end)


local AutoClaimQuest = false

Main:CreateToggle("Auto Claim Quest", false, function(toggle)
	AutoClaimQuest = toggle
	if toggle then
		task.spawn(function()
			while AutoClaimQuest do
				for _, v in pairs(Player.PlayerGui.MainGui.QuestsFrame.Frame:GetChildren()) do
					if v:IsA("Frame") and v:FindFirstChild("ClaimFrame") then
						local claimText = v.ClaimFrame:FindFirstChild("Claim")
						if claimText and claimText:FindFirstChild("TextLabel") and claimText.TextLabel.Text == "Claim!" then
							game:GetService("ReplicatedStorage").Remotes.ClaimQuestEvent:FireServer(v.Name)
						end
					end
				end
				task.wait(2) -- adjust the interval if needed
			end
		end)
	end
end)





--Egg





Egg:CreateDropdown("Selected Egg", getEggs(), function(Eggs)
	SelectedEggs = Eggs
end)

Egg:CreateToggle("Auto Egg", getEggs(), function()
	if SelectedEggs then
		game:GetService("ReplicatedStorage").PetRemotes.HatchServer:InvokeServer(unpack({[1] = workspace.World1.Prompts.Eggs[SelectedEggs]}))
	end
end)

Egg:CreateMultiDropdown("Select Pets", getPets(), function(Pets)
	SelectedPets = Pets
end)

Egg:CreateToggle("Delete Selected Pets", false, function(toggle)
	AutoDelete = toggle
	if toggle then
		task.spawn(function()
			while AutoDelete do
				for _, pet in pairs(game:GetService("Players").LocalPlayer.Pets:GetChildren()) do 
					for _, selectedName in pairs(SelectedPets) do
						if pet.Name == selectedName then
							game:GetService("ReplicatedStorage").PetRemotes.DeletePet:FireServer(pet.Name)
						end
					end
				end
				task.wait(2)
			end
		end)
	end
end)




-- Teleport








--Give


Give:CreateLabel("Warning", "Warning!, there could be a risk isk!!")

local Rewards = {
	["100 Gems"] = 1,
	["2.5k Cash"] = 2,
	["Give 1 Spins"] = 3,
	["Give Random Mythical Pet"] = 4,
	["250 Gems"] = 5,
	["1k Cash"] = 6,
	["Give 3 Spins"] = 7,
	["Give Max Cash"] = 8,
	["Give 10 Spins"] = 10
}


local RewardNames = {}
for name, _ in pairs(Rewards) do
	table.insert(RewardNames, name)
end


local SelectedReward = nil

Give:CreateDropdown("Select Give", RewardNames, function(selected)
	SelectedReward = Rewards[selected]
end)




Give:CreateToggle("Auto Give", false, function(toggle)
	AutoGive = toggle
	if toggle then
		task.spawn(function()
			while AutoGive do
				if SelectedReward then
					game:GetService("ReplicatedStorage").Remotes.SpinPrizeEvent:FireServer(SelectedReward)
				end
				task.wait(0.5)
			end
		end)
	end
end)



Give:CreateToggle("Auto Give Random Pet", true, function(toggle)
	local args = {[1] = "Pet",[2] = 12}
	game:GetService("ReplicatedStorage").Remotes.AddRewardEvent:FireServer(unpack(args))
end)

--[[
Give:CreateToggle("Auto Give 5M", true, function(toggle)

local args = {
    [1] = "Cash",
    [2] = 5000000
}

game:GetService("ReplicatedStorage").Remotes.AddRewardEvent:FireServer(unpack(args))

end)

--]]

-- Misc









return library -- Return the library at the end of the script
