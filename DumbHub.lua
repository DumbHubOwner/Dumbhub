--Everyday at 12
local Key = "PumpkinPie"




local ID = {

	-- DumbHubOwner 
	4041931572,
	-- My Main  
	2958606564,
	
	3438346182,
	




	------------------------------Buyers-------------------------





	------------------------------Boosters------------------------





	------------------------------Youtuber Role---------------------


}



local DumbHubKeyMenu = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Container = Instance.new("Frame")
local ContainerUICorner = Instance.new("UICorner")
local PlayerImage = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local PlayerID = Instance.new("TextLabel")
local ConsoleFrame = Instance.new("Frame")
local ConsoleUICorner = Instance.new("UICorner")
local ConsoleDivider = Instance.new("Frame")
local ConsoleTitle = Instance.new("TextLabel")
local CheckingKeyText = Instance.new("TextLabel")
local CheckingGameText = Instance.new("TextLabel")
local DoneText = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextBoxUICorner = Instance.new("UICorner")
local CancelButton = Instance.new("TextButton")
local CancelButtonUICorner = Instance.new("UICorner")
local ConfirmButton = Instance.new("TextButton")
local ConfirmButtonUICorner = Instance.new("UICorner")
local PremiumKey = Instance.new("TextButton")
local PremiumUICorner = Instance.new("UICorner")
local Access = Instance.new("TextLabel")
local GetKey = Instance.new("TextButton")
local GetKeyUICorner = Instance.new("UICorner")
local HideTextButton = Instance.new("TextButton")
local HideTextUICorner = Instance.new("UICorner")
local Access_2 = Instance.new("TextLabel")
local MainUICorner = Instance.new("UICorner")
local MainTitle = Instance.new("TextLabel")
local MainTopDivider = Instance.new("Frame")
local coreGui = game:GetService("CoreGui")

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name


local existing = coreGui:FindFirstChild("DumbHubKeyMenu")
if existing then
    existing:Destroy()
end
--Properties:

DumbHubKeyMenu.Name = "DumbHubKeyMenu"
DumbHubKeyMenu.Parent = coreGui
DumbHubKeyMenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = DumbHubKeyMenu
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(43, 46, 48)
Main.BackgroundTransparency = 0.300
Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 525, 0, 400)



Container.Name = "Container"
Container.Parent = Main
Container.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Container.BackgroundTransparency = 0.660
Container.BorderColor3 = Color3.fromRGB(11, 11, 11)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.0131891742, 0, 0.217273489, 0)
Container.Selectable = true
Container.Size = UDim2.new(0, 510, 0, 299)

ContainerUICorner.Name = "ContainerUICorner"
ContainerUICorner.Parent = Container

PlayerImage.Name = "PlayerImage"
PlayerImage.Parent = Container
PlayerImage.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
PlayerImage.BackgroundTransparency = 0.800
PlayerImage.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerImage.BorderSizePixel = 0
PlayerImage.Position = UDim2.new(0.00893696025, 0, 0.032203164, 0)
PlayerImage.Size = UDim2.new(0, 95, 0, 92)

UICorner.CornerRadius = UDim.new(2, 0)
UICorner.Parent = PlayerImage

PlayerID.Name = "PlayerID"
PlayerID.Parent = Container
PlayerID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerID.BackgroundTransparency = 1.000
PlayerID.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerID.Position = UDim2.new(0.0106839221, 0, 0.633283675, 0)
PlayerID.Size = UDim2.new(0, 185, 0, 27)
PlayerID.Font = Enum.Font.Gotham
PlayerID.Text = "Player ID: 41414124124"
PlayerID.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerID.TextSize = 20.000
PlayerID.TextXAlignment = Enum.TextXAlignment.Left


ConsoleFrame.Name = "ConsoleFrame"
ConsoleFrame.Parent = Container
ConsoleFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ConsoleFrame.BackgroundTransparency = 0.700
ConsoleFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
ConsoleFrame.BorderSizePixel = 0
ConsoleFrame.Position = UDim2.new(0.557938397, 0, 0.0532498062, 0)
ConsoleFrame.Size = UDim2.new(0, 209, 0, 124)

ConsoleUICorner.Name = "ConsoleUICorner"
ConsoleUICorner.Parent = ConsoleFrame

ConsoleDivider.Name = "ConsoleDivider"
ConsoleDivider.Parent = ConsoleFrame
ConsoleDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConsoleDivider.BorderColor3 = Color3.fromRGB(255, 255, 255)
ConsoleDivider.BorderSizePixel = 0
ConsoleDivider.Position = UDim2.new(0, 0, 0.250664502, 0)
ConsoleDivider.Size = UDim2.new(0, 206, 0, 2)

ConsoleTitle.Name = "ConsoleTitle"
ConsoleTitle.Parent = ConsoleFrame
ConsoleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConsoleTitle.BackgroundTransparency = 1.000
ConsoleTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
ConsoleTitle.Position = UDim2.new(0.114694074, 0, -0.0348525494, 0)
ConsoleTitle.Size = UDim2.new(0, 181, 0, 37)
ConsoleTitle.Font = Enum.Font.Gotham
ConsoleTitle.Text = "Console"
ConsoleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleTitle.TextSize = 23.000
ConsoleTitle.TextWrapped = true

CheckingKeyText.Name = "CheckingKeyText"
CheckingKeyText.Parent = ConsoleFrame
CheckingKeyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckingKeyText.BackgroundTransparency = 1.000
CheckingKeyText.BorderColor3 = Color3.fromRGB(27, 42, 53)
CheckingKeyText.Position = UDim2.new(0.020935744, 0, 0.297359198, 0)
CheckingKeyText.Size = UDim2.new(0, 259, 0, 37)
CheckingKeyText.Font = Enum.Font.Gotham
CheckingKeyText.Text = "> Checking Key.. 1/3"
CheckingKeyText.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckingKeyText.TextSize = 17.000
CheckingKeyText.TextWrapped = true
CheckingKeyText.TextXAlignment = Enum.TextXAlignment.Left
CheckingKeyText.Visible = false

CheckingGameText.Name = "CheckingGameText"
CheckingGameText.Parent = ConsoleFrame
CheckingGameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckingGameText.BackgroundTransparency = 1.000
CheckingGameText.BorderColor3 = Color3.fromRGB(27, 42, 53)
CheckingGameText.Position = UDim2.new(0, 0, 0.522968888, 0)
CheckingGameText.Size = UDim2.new(0, 187, 0, 37)
CheckingGameText.Font = Enum.Font.Gotham
CheckingGameText.Text = " > Checking Game.. 1/3"
CheckingGameText.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckingGameText.TextSize = 17.000
CheckingGameText.TextWrapped = true
CheckingGameText.TextXAlignment = Enum.TextXAlignment.Left
CheckingGameText.Visible = false

DoneText.Name = "DoneText"
DoneText.Parent = ConsoleFrame
DoneText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DoneText.BackgroundTransparency = 1.000
DoneText.BorderColor3 = Color3.fromRGB(27, 42, 53)
DoneText.Position = UDim2.new(0.020935744, 0, 0.748578787, 0)
DoneText.Size = UDim2.new(0, 259, 0, 37)
DoneText.Font = Enum.Font.Gotham
DoneText.Text = "> Done!"
DoneText.TextColor3 = Color3.fromRGB(255, 255, 255)
DoneText.TextSize = 17.000
DoneText.TextWrapped = true
DoneText.TextXAlignment = Enum.TextXAlignment.Left
DoneText.Visible = false

TextBox.Parent = Container
TextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.558137536, 0, 0.536313474, 0)
TextBox.Size = UDim2.new(0, 209, 0, 37)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Access Key"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 21.000
TextBox.TextStrokeTransparency = 0.500

TextBoxUICorner.Name = "TextBoxUICorner"
TextBoxUICorner.Parent = TextBox




Access.Name = "Access"
Access.Parent = Container
Access.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Access.BackgroundTransparency = 1.000
Access.BorderColor3 = Color3.fromRGB(27, 42, 53)
Access.Position = UDim2.new(0.0102400575, 0, 0.737756968, 0)
Access.Size = UDim2.new(0, 185, 0, 29)
Access.Font = Enum.Font.Gotham
Access.Text = "Access: Normal"
Access.TextColor3 = Color3.fromRGB(255, 255, 255)
Access.TextSize = 20.000
Access.TextXAlignment = Enum.TextXAlignment.Left



HideTextButton.Name = "HideTextButton"
HideTextButton.Parent = Container
HideTextButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
HideTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HideTextButton.BorderSizePixel = 0
HideTextButton.Position = UDim2.new(0.0378128439, 0, 0.421666801, 0)
HideTextButton.Size = UDim2.new(0, 63, 0, 21)
HideTextButton.Font = Enum.Font.SourceSans
HideTextButton.Text = "Video Mode"
HideTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HideTextButton.TextSize = 14.000

HideTextButton.MouseButton1Click:Connect(function()
	PlayerID.Text = "Player ID: Nil"

end)

HideTextUICorner.Name = "HideTextUICorner"
HideTextUICorner.Parent = HideTextButton

Access_2.Name = "Access"
Access_2.Parent = Container
Access_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Access_2.BackgroundTransparency = 1.000
Access_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Access_2.Position = UDim2.new(0.00952405669, 0, 0.844176114, 0)
Access_2.Size = UDim2.new(0, 185, 0, 29)
Access_2.Font = Enum.Font.Gotham
Access_2.Text = "Game: "..GameName
Access_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Access_2.TextSize = 20.000
Access_2.TextXAlignment = Enum.TextXAlignment.Left



MainUICorner.Name = "MainUICorner"
MainUICorner.Parent = Main

MainTitle.Name = "MainTitle"
MainTitle.Parent = Main
MainTitle.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
MainTitle.BackgroundTransparency = 1.000
MainTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainTitle.Position = UDim2.new(0.2730425, 0, 0.0261690393, 0)
MainTitle.Size = UDim2.new(0, 256, 0, 42)
MainTitle.Font = Enum.Font.Unknown
MainTitle.Text = "DumbHub"
MainTitle.TextColor3 = Color3.fromRGB(0, 170, 255)
MainTitle.TextSize = 50.000

MainTopDivider.Name = "MainTopDivider"
MainTopDivider.Parent = Main
MainTopDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTopDivider.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainTopDivider.BorderSizePixel = 0
MainTopDivider.Position = UDim2.new(1.16257439e-07, 0, 0.162146375, 0)
MainTopDivider.Size = UDim2.new(0, 525, 0, 3)


-------------Confirm/Cancel/Premium/GetKey Buttons------------------------

CancelButton.Name = "CancelButton"
CancelButton.Parent = Container
CancelButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
CancelButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
CancelButton.Position = UDim2.new(0.778854549, 0, 0.732462108, 0)
CancelButton.Size = UDim2.new(0, 105, 0, 27)
CancelButton.Font = Enum.Font.SourceSans
CancelButton.Text = "Cancel"
CancelButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CancelButton.TextSize = 19.000


CancelButtonUICorner.Name = "CancelButtonUICorner"
CancelButtonUICorner.Parent = CancelButton


CancelButton.MouseButton1Click:Connect(function()
	DumbHubKeyMenu:Destroy()
end)


GetKey.Name = "GetKey"
GetKey.Parent = Container
GetKey.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
GetKey.BorderColor3 = Color3.fromRGB(27, 42, 53)
GetKey.Position = UDim2.new(0.778854549, 0, 0.873363495, 0)
GetKey.Size = UDim2.new(0, 105, 0, 27)
GetKey.Font = Enum.Font.SourceSans
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextSize = 19.000

GetKeyUICorner.Name = "GetKeyUICorner"
GetKeyUICorner.Parent = GetKey

GetKey.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/JmAku377Ge")
	game.StarterGui:SetCore("SendNotification", {
		Title = "DumbHub ";
		Text = "Discord Copied To ClipBoard"; 
		Icon = "rbxassetid://12930824081";
		Duration = 5;
	})
end)


ConfirmButton.Name = "ConfirmButton"
ConfirmButton.Parent = Container
ConfirmButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
ConfirmButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
ConfirmButton.Position = UDim2.new(0.548350632, 0, 0.734909832, 0)
ConfirmButton.Size = UDim2.new(0, 105, 0, 27)
ConfirmButton.Font = Enum.Font.SourceSans
ConfirmButton.Text = "Confirm"
ConfirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfirmButton.TextSize = 19.000

ConfirmButtonUICorner.Name = "ConfirmButtonUICorner"
ConfirmButtonUICorner.Parent = ConfirmButton


ConfirmButton.MouseButton1Click:Connect(function()
	if TextBox.Text == Key then
		CheckingKeyText.Visible = true
		CheckingKeyText.Text = "> Checking Key.. 1/3"
		wait(1)
		CheckingKeyText.Text = "> Checking Key.. 2/3"
		wait(1)
		CheckingKeyText.Text = "> Checking Key.. 3/3"
		wait(1)
		CheckingKeyText.Text = "> Valid Key"
		wait(1)

		-- Destroy the key UI and load the main script
		DumbHubKeyMenu:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DumbHubOwner/Dumbhub/refs/heads/main/DumbHubScriptSelect.lua"))()

	else
		CheckingKeyText.Visible = true
		CheckingKeyText.Text = "> Invalid Key"
		wait(3)
		CheckingKeyText.Text = ""
	end
end)





PremiumKey.Name = "PremiumKey"
PremiumKey.Parent = Container
PremiumKey.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
PremiumKey.BorderColor3 = Color3.fromRGB(27, 42, 53)
PremiumKey.Position = UDim2.new(0.54970485, 0, 0.872985005, 0)
PremiumKey.Size = UDim2.new(0, 105, 0, 27)
PremiumKey.Font = Enum.Font.SourceSans
PremiumKey.Text = "Premium Access"
PremiumKey.TextColor3 = Color3.fromRGB(255, 255, 255)
PremiumKey.TextSize = 18.000

PremiumUICorner.Name = "PremiumUICorner"
PremiumUICorner.Parent = PremiumKey



PremiumKey.MouseButton1Click:Connect(function()
	local hasAccess = false

	for _, v in pairs(ID) do
		if game.Players.LocalPlayer.UserId == v then
			hasAccess = true
			break
		end
	end

	if hasAccess then
		CheckingKeyText.Visible = true
		CheckingKeyText.Text = "> Checking Access.. 1/3"
		wait(1)
		CheckingKeyText.Text = "> Checking Access.. 2/3"
		wait(1)
		CheckingKeyText.Text = "> Checking Access.. 3/3"
		wait(1)
		CheckingKeyText.Text = "> Access Granted"
		wait(1)

		-- Destroy the key UI and load the main script
		DumbHubKeyMenu:Destroy()
        loadstring(game:HttpGet("hhttps://raw.githubusercontent.com/DumbHubOwner/Dumbhub/refs/heads/main/DumbHubScriptSelect.lua"))()
	else
		CheckingKeyText.Visible = true
		CheckingKeyText.Text = "> You Don't Have Access"
	end
end)



----------------------BLACKLIST  USER ID's--------------------------------

ConfirmButton.MouseButton1Click:Connect(
	function()
		if game.Players.LocalPlayer.UserId == 1890490167 then
			TextBox.Text = "You've Been Blacklisted"
		end
	end
)

-------------------Libraries Scripts----------------------------

local function Premium()
	for i,v in pairs(ID) do
		if game.Players.LocalPlayer.UserId == v  then
			Access.Text = "Access: Premium"
		end
	end
end

Premium()






local function PlayerImageAndId() -- Container.PlayerImageScript 

	local Player = game. Players.LocalPlayer

	local UserId = Player.UserId

	local ThumType = Enum.ThumbnailType.AvatarBust
	local ThumSize = Enum.ThumbnailSize.Size420x420
	local Content = game.Players:GetUserThumbnailAsync(UserId, ThumType, ThumSize)


	Container.PlayerImage.Image = Content
	Container.PlayerID.Text = "ID: "..UserId
end
coroutine.wrap(PlayerImageAndId)()




