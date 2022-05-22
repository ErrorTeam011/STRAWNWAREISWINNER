
if game:service'CoreGui':FindFirstChild("StrawnWareLoader") then game:service'CoreGui':FindFirstChild("StrawnWareLoader"):Destroy() end

local coreGui = game:GetService("CoreGui")
local tweenService = game:GetService("TweenService");

function createTween(Object,setup,settings)
	local style = (settings.Style or Enum.EasingStyle.Sine);
	local direction = (settings.Direction or Enum.EasingDirection.InOut);
	local length = (settings.TIME or 1);
	local repeatcount = (settings.repeatLimit or 0);
	local reverse = (settings.IsReversed or false);
	local dt = (settings.delay or 0);

	local tween = TweenInfo.new(
		length, style, direction, repeatcount, reverse, dt
	);

	local tweenService = game:GetService("TweenService");
	local Anim = tweenService:Create(Object,tween,setup);
	Anim:Play();
	return Anim;
end;

function RUN_FUNCTION(name, extension, configOpt)
	local settings = configOpt;
	local PATH_URL = settings.URL or nil;
	local GAME_NAME = "";

	local success = pcall(function()
		game:HttpGet(PATH_URL)
	end);

	local DecodedTable;
	if (success) then
		if extension == "lua" then 
			DecodedTable = loadstring(game:HttpGet(PATH_URL))()
		elseif extension == "json" then
			DecodedTable = game:GetService("HttpService"):JSONDecode(game:HttpGet(PATH_URL))
		end

		settings.Executable = ""
		for i,v in pairs(DecodedTable) do
			if (game.PlaceId == tonumber(i) and v.name and v.Working) then
				local connection = pcall(function() 
					settings.Executable = game:HttpGet(v.Script) 
				end);

				GAME_NAME = v.name
			end
		end
	end

	spawn(function()
		local StrawnWareLoader = Instance.new("ScreenGui")
local Loader = Instance.new("Frame")
local Menu = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Message = Instance.new("TextLabel")
local LoadBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Bar = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")



		StrawnWareLoader.Name = "StrawnWareLoader"
		StrawnWareLoader.Parent = coreGui
		StrawnWareLoader.ResetOnSpawn = false
		
		
		
		
Loader.Name = "Loader"
		Loader.Parent = StrawnWareLoader
Loader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Loader.Position = UDim2.new(0.35, 0,0.35, 0)
		Loader.Size = UDim2.new(0, 0,  0, 0)
		Loader.BorderSizePixel = 2
		Loader.BackgroundTransparency = 1


Menu.Name = "Menu"
Menu.Parent = Loader
Menu.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
		Menu.Position = UDim2.new(-0.108, 0,-0.056, 0)
Menu.Size = UDim2.new(1.03625119, 0, 1.11633229, 0)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Menu

Title.Name = "Title"
Title.Parent = Menu
Title.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 0, 0.0943374112, 0)
Title.Size = UDim2.new(1, -6, -0.262604743, 55)
Title.ZIndex = 4
		Title.Font = Enum.Font.SourceSansBold
		Title.Text = name or "STRAWNWARE | Loader"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 22.000
Title.TextTransparency = 1
Title.BorderSizePixel = 0

UICorner_2.Parent = Title

Message.Name = "Message"
Message.Parent = Menu
Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Message.BackgroundTransparency = 1.000
Message.BorderSizePixel = 0
Message.Position = UDim2.new(0, 0, 0.521327019, 0)
Message.Size = UDim2.new(1.01382494, -6, -0.0911049694, 55)
Message.SizeConstraint = Enum.SizeConstraint.RelativeXX
Message.ZIndex = 4
		Message.Font = Enum.Font.SourceSansItalic
		Message.Text = settings.StartMessage or "Welcome, " .. game:GetService("Players").LocalPlayer.Name
Message.TextColor3 = Color3.fromRGB(197, 197, 197)
Message.TextSize = 22.000
Message.TextTransparency = 1

LoadBar.Name = "LoadBar"
LoadBar.Parent = Menu
LoadBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
LoadBar.BackgroundTransparency = 1
LoadBar.BorderSizePixel = 0
LoadBar.Position = UDim2.new(0.0483870953, 0, 0.729857802, 0)
LoadBar.Size = UDim2.new(0.970046103, -28, 0.0568720363, 20)

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = LoadBar

Bar.Name = "Bar"
Bar.Parent = LoadBar
Bar.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(-0.00223033875, 0, -0.0382065773, 0)
Bar.Size = UDim2.new(0, 0, 1, 0)
Bar.ZIndex = 4

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Bar

		wait(2)

		Loader.Size = UDim2.new(0.31, 0,0.292, 0)


		createTween(Title,{TextTransparency = 0}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		})

		createTween(Message,{TextTransparency = 0}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		}).Completed:Wait(1)

		createTween(LoadBar,{BackgroundTransparency = 0}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		})

		createTween(Bar,{BackgroundTransparency = 0}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		})

		function setSize(int)
			local number = tonumber(int)
			local percent = 1 - ((100 - int) / (100 - 0));

			createTween(Bar, {Size = UDim2.new(percent, 0, 1, 0)}, {
				Style = Enum.EasingStyle.Linear,
				Direction = Enum.EasingDirection.In,
				TIME = .4
			})
		end

		wait(1)
		setSize(20)

		for i = 1, 3 do 
			Message.Text = "Checking ."
			wait(.4)
			Message.Text = "Checking . ."
			wait(.4)
			Message.Text = "Checking . . ."
			wait(.4)
		end
		setSize(60)
		Message.Text = "Game Found!"
		wait(1)
		setSize(80)
		Message.Text = GAME_NAME
		wait(.5)
		setSize(100)

		createTween(Bar,{BackgroundTransparency = 1}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		}).Completed:Wait()

		createTween(LoadBar,{BackgroundTransparency = 1}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		})

		Message.Text = "Loaded!"
		wait(.5)
		createTween(Message,{TextTransparency = 1}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		})

		createTween(Title,{TextTransparency = 1}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		})

		createTween(Loader,{Size = UDim2.new(0, 0, 0, 0)}, {
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.In,
			TIME = .4
		}).Completed:Wait(1)
		StrawnWareLoader:Destroy()

		loadstring(settings.Executable)()

	end)
end
return RUN_FUNCTION;
