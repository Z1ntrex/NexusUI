while not game.Loaded do task.wait() end

local Players = game:GetService("Players")
local TS = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

local lp = Players.LocalPlayer
local Mouse = lp:GetMouse()
local ViewPort = workspace.CurrentCamera.ViewportSize
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local NexusApi = {}

function NexusApi:Validate(defaults, options)
	for i, v in pairs(defaults) do
		if options[i] == nil then
			options[i] = v
		end
	end
	return options
end

function NexusApi:Tween(object, properties, Callback)
	local Tween = TS:Create(object, tweenInfo, properties)
	Tween.Completed:Connect(Callback or function() end)
	Tween:Play()
end

function NexusApi:CreateWindow(options)
	options = NexusApi:Validate({
		Name = "NexusUI",
		BoundingUI = false,
		Keybind = Enum.KeyCode.Insert
	}, options or {})

	local GUI = {
		CurrentTab = nil
	}

	do
		-- StarterGui.ScreenGui
		GUI["1"] = Instance.new("ScreenGui", RunService:IsStudio() and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") or CoreGui);
		GUI["1"]["Name"] = options.Name;
		GUI["1"]["IgnoreGuiInset"] = true;
		GUI["1"]["DisplayOrder"] = 999999999;
		GUI["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
		GUI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
		GUI["1"]["ResetOnSpawn"] = false;

		--CanvasDihOfWantuzini
		GUI["67"] = Instance.new("CanvasGroup", GUI["1"])
		GUI["67"]["BorderSizePixel"] = 0;
		GUI["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["67"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["67"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		GUI["67"]["BackgroundTransparency"] = 1;
		GUI["67"]["GroupTransparency"] = 0;

		-- StarterGui.ScreenGui.MainFrame
		GUI["2"] = Instance.new("Frame", GUI["67"]);
		GUI["2"]["Active"] = true;
		GUI["2"]["BorderSizePixel"] = 0;
		GUI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["2"]["Size"] = UDim2.new(0, 590, 0, 420);
		GUI["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		GUI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["2"]["Name"] = [[MainFrame]];



		-- StarterGui.ScreenGui.MainFrame.UICorner
		GUI["3"] = Instance.new("UICorner", GUI["2"]);
		GUI["3"]["TopRightRadius"] = UDim.new(0, 0);
		GUI["3"]["TopLeftRadius"] = UDim.new(0, 25);
		GUI["3"]["BottomLeftRadius"] = UDim.new(0, 0);
		GUI["3"]["BottomRightRadius"] = UDim.new(0, 25);


		-- StarterGui.ScreenGui.MainFrame.UIGradient
		GUI["4"] = Instance.new("UIGradient", GUI["2"]);
		GUI["4"]["Rotation"] = -45;
		GUI["4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(26, 31, 41)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(41, 46, 61))};


		-- StarterGui.ScreenGui.MainFrame.UIStroke
		GUI["5"] = Instance.new("UIStroke", GUI["2"]);
		GUI["5"]["Transparency"] = 0.75;
		GUI["5"]["Thickness"] = 0.0125;
		GUI["5"]["StrokeSizingMode"] = Enum.StrokeSizingMode.ScaledSize;
		GUI["5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


		-- StarterGui.ScreenGui.MainFrame.UIDragDetector
		--GUI["6"] = Instance.new("UIDragDetector", GUI["2"]);


		--Обрезанно

		-- StarterGui.ScreenGui.MainFrame.Title
		GUI["11"] = Instance.new("Frame", GUI["2"]);
		GUI["11"]["Active"] = true;
		GUI["11"]["BorderSizePixel"] = 0;
		GUI["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["11"]["Selectable"] = true;
		GUI["11"]["AnchorPoint"] = Vector2.new(0.5, 0);
		GUI["11"]["Size"] = UDim2.new(1, 0, 0, 50);
		GUI["11"]["Position"] = UDim2.new(0.5, 0, 0, 0);
		GUI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["11"]["Name"] = [[Title]];


		-- StarterGui.ScreenGui.MainFrame.Title.UICorner
		GUI["12"] = Instance.new("UICorner", GUI["11"]);
		GUI["12"]["TopRightRadius"] = UDim.new(0, 0);
		GUI["12"]["TopLeftRadius"] = UDim.new(0, 25);
		GUI["12"]["BottomLeftRadius"] = UDim.new(0, 0);
		GUI["12"]["BottomRightRadius"] = UDim.new(0, 0);


		-- StarterGui.ScreenGui.MainFrame.Title.UIGradient
		GUI["13"] = Instance.new("UIGradient", GUI["11"]);
		GUI["13"]["Rotation"] = -90.01;
		GUI["13"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(31, 36, 61)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(71, 88, 126))};


		-- StarterGui.ScreenGui.MainFrame.Title.TextLabel
		GUI["14"] = Instance.new("TextLabel", GUI["11"]);
		GUI["14"]["TextWrapped"] = true;
		GUI["14"]["BorderSizePixel"] = 0;
		GUI["14"]["TextSize"] = 14;
		GUI["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		GUI["14"]["TextScaled"] = true;
		GUI["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		GUI["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["14"]["BackgroundTransparency"] = 1;
		GUI["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["14"]["Size"] = UDim2.new(0.5, 0, 1, 0);
		GUI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["14"]["Text"] = options.Name;
		GUI["14"]["Position"] = UDim2.new(0.25114, 0, 0.5, 0);


		-- StarterGui.ScreenGui.MainFrame.Title.TextLabel.UITextSizeConstraint
		GUI["15"] = Instance.new("UITextSizeConstraint", GUI["14"]);



		-- StarterGui.ScreenGui.MainFrame.Title.TextLabel.UICorner
		GUI["16"] = Instance.new("UICorner", GUI["14"]);
		GUI["16"]["CornerRadius"] = UDim.new(0, 25);


		-- StarterGui.ScreenGui.MainFrame.Title.TextLabel.UIPadding
		GUI["17"] = Instance.new("UIPadding", GUI["14"]);
		GUI["17"]["PaddingTop"] = UDim.new(0, 5);
		GUI["17"]["PaddingLeft"] = UDim.new(0, 15);
		GUI["17"]["PaddingRight"] = UDim.new(0, 15);
		GUI["17"]["PaddingBottom"] = UDim.new(0, 5);


		-- StarterGui.ScreenGui.MainFrame.Title.TextLabel.UIGradient
		GUI["18"] = Instance.new("UIGradient", GUI["14"]);
		GUI["18"]["Rotation"] = -90;
		GUI["18"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(63, 63, 63)),ColorSequenceKeypoint.new(0.405, Color3.fromRGB(112, 112, 112)),ColorSequenceKeypoint.new(0.514, Color3.fromRGB(172, 172, 172)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


		-- StarterGui.ScreenGui.MainFrame.Title.TextLabel
		GUI["19"] = Instance.new("TextLabel", GUI["11"]);
		GUI["19"]["TextWrapped"] = true;
		GUI["19"]["BorderSizePixel"] = 0;
		GUI["19"]["TextSize"] = 14;
		GUI["19"]["TextScaled"] = true;
		GUI["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
		GUI["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["19"]["BackgroundTransparency"] = 1;
		GUI["19"]["Size"] = UDim2.new(0, 35, 0, 35);
		GUI["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["19"]["Text"] = [[_]];
		GUI["19"]["Position"] = UDim2.new(0.95, 0, 0.5, 0);

		GUI["HUI"] = Instance.new("UIPadding", GUI["19"])
		GUI["HUI"]["PaddingBottom"] = UDim.new(0, 15)

		do
			local boolingVShkoleNahui = true --Nahui
			local working = false

			GUI["19"].InputBegan:Connect(function(a, b)
				if b then return end
				if a.UserInputType == Enum.UserInputType.MouseButton1 or a.UserInputType == Enum.UserInputType.Touch then
					if not working then
						working = true
						boolingVShkoleNahui = not boolingVShkoleNahui
						NexusApi:Tween(GUI["67"], {GroupTransparency = 1})
						task.wait(0.2)
						GUI["2"]["Visible"] = false
						working = false
					end
				end
			end)

			UIS.InputBegan:Connect(function(a,b)
				if b then return end
				if a.KeyCode == options.Keybind then
					if not working then
						working = true
						boolingVShkoleNahui = not boolingVShkoleNahui
						if not boolingVShkoleNahui then
							NexusApi:Tween(GUI["67"], {GroupTransparency = 1})
							task.wait(0.2)
							GUI["2"]["Visible"] = false
							working = false
						elseif boolingVShkoleNahui then
							GUI["2"]["Visible"] = true
							NexusApi:Tween(GUI["67"], {GroupTransparency = 0})
							task.wait(0.2)
							working = false
						end
					end
				end
			end)
		end


		-- StarterGui.ScreenGui.MainFrame.Title.TextLabel.LocalScript
		GUI["1a"] = Instance.new("LocalScript", GUI["19"]);



		-- StarterGui.ScreenGui.MainFrame.LocalScript
		GUI["1b"] = Instance.new("LocalScript", GUI["2"]);



		-- StarterGui.ScreenGui.MainFrame.Line
		GUI["1c"] = Instance.new("Frame", GUI["2"]);
		GUI["1c"]["BorderSizePixel"] = 0;
		GUI["1c"]["BackgroundColor3"] = Color3.fromRGB(94, 118, 183);
		GUI["1c"]["AnchorPoint"] = Vector2.new(0.5, 0);
		GUI["1c"]["Size"] = UDim2.new(1, 0, 0, 1);
		GUI["1c"]["Position"] = UDim2.new(0.5, 0, 0.11905, 0);
		GUI["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["1c"]["Name"] = [[Line]];


		-- StarterGui.ScreenGui.MainFrame.Line
		GUI["1d"] = Instance.new("Frame", GUI["2"]);
		GUI["1d"]["BorderSizePixel"] = 0;
		GUI["1d"]["BackgroundColor3"] = Color3.fromRGB(94, 118, 183);
		GUI["1d"]["AnchorPoint"] = Vector2.new(0, 1);
		GUI["1d"]["Size"] = UDim2.new(0, 1, 1, -50);
		GUI["1d"]["Position"] = UDim2.new(0, 170, 1, 0);
		GUI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["1d"]["Name"] = [[Line]];

	end
	
	do
		--if options.BoundingUI then
		--	GUI["6"]["BoundingUI"] = GUI["1"]
		--elseif not options.BoundingUI then
		--	GUI["6"]["BoundingUI"] = nil
		--end
	end
	
	--Nav
	do
		-- StarterGui.ScreenGui.MainFrame.TabHolder
		GUI["7"] = Instance.new("ScrollingFrame", GUI["2"]);
		GUI["7"]["ZIndex"] = 0;
		GUI["7"]["BorderSizePixel"] = 0;
		GUI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["7"]["AnchorPoint"] = Vector2.new(0, 0.5);
		GUI["7"]["Size"] = UDim2.new(0, 170, 1, -50);
		GUI["7"]["Position"] = UDim2.new(0, 0, 0.55952, 0);
		GUI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["7"]["Name"] = [[TabHolder]];
		GUI["7"]["ClipsDescendants"] = true
		GUI["7"]["CanvasPosition"] = Vector2.new(0, 0);
		GUI["7"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
		GUI["7"]["ScrollBarThickness"] = 0;
		GUI["7"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;


		-- StarterGui.ScreenGui.MainFrame.TabHolder.UIGradient
		GUI["8"] = Instance.new("UIGradient", GUI["7"]);
		GUI["8"]["Rotation"] = -135;
		GUI["8"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.05),NumberSequenceKeypoint.new(1.000, 0.05)};
		GUI["8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(36, 41, 51)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(46, 51, 71))};


		-- StarterGui.ScreenGui.MainFrame.TabHolder.UIListLayout
		GUI["9"] = Instance.new("UIListLayout", GUI["7"]);
		GUI["9"]["Padding"] = UDim.new(0, 5);
		GUI["9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


		-- StarterGui.ScreenGui.MainFrame.TabHolder.UIPadding
		GUI["a"] = Instance.new("UIPadding", GUI["7"]);
		GUI["a"]["PaddingTop"] = UDim.new(0, 10);
		GUI["a"]["PaddingBottom"] = UDim.new(0, 10);


		-- StarterGui.ScreenGui.MainFrame.SectionHolder
		GUI["1e"] = Instance.new("Frame", GUI["2"]);
		GUI["1e"]["BorderSizePixel"] = 0;
		GUI["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["1e"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["1e"]["Size"] = UDim2.new(1, -170, 1, -50);
		GUI["1e"]["Position"] = UDim2.new(1, 0, 0.12, 0);
		GUI["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["1e"]["Name"] = [[SectionHolder]];
		GUI["1e"]["BackgroundTransparency"] = 1;



		-- StarterGui.ScreenGui.MainFrame.SectionHolder.UIPadding
		GUI["1f"] = Instance.new("UIPadding", GUI["1e"]);
		GUI["1f"]["PaddingTop"] = UDim.new(0, 10);
		GUI["1f"]["PaddingRight"] = UDim.new(0, 10);
		GUI["1f"]["PaddingLeft"] = UDim.new(0, 10);
		GUI["1f"]["PaddingBottom"] = UDim.new(0, 10);

		--Обрезанно

		-- StarterGui.ScreenGui.MainFrame.SectionHolder.Fade
		GUI["56"] = Instance.new("Frame", GUI["1e"]);
		GUI["56"]["BorderSizePixel"] = 0;
		GUI["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["56"]["Size"] = UDim2.new(1, 0, 0, 25);
		GUI["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["56"]["Name"] = [[Fade]];
	


		-- StarterGui.ScreenGui.MainFrame.SectionHolder.Fade.UIGradient
		GUI["57"] = Instance.new("UIGradient", GUI["56"]);
		GUI["57"]["Rotation"] = 90;
		GUI["57"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};
		GUI["57"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(36, 41, 55)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(36, 41, 55))};
	end

	function GUI:CreateTab(options)
		options = NexusApi:Validate({
			name = "Home",
			InactiveColor = Color3.fromRGB(50, 65, 100),
			ActiveColor = Color3.fromRGB(95, 115, 180)
		}, options or {})

		local Tab = {
			Hover = false,
			Active = false,
		}


		do
			-- StarterGui.ScreenGui.MainFrame.TabHolder.Inactive
			Tab["e"] = Instance.new("Frame", GUI["7"]);
			Tab["e"]["BorderSizePixel"] = 0;
			Tab["e"]["BackgroundColor3"] = Color3.fromRGB(120, 150, 255);
			Tab["e"]["Size"] = UDim2.new(0, 170, 0, 40);
			Tab["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["e"]["Name"] = options.name..[[Tab]];
			Tab["e"]["BackgroundTransparency"] = 0;



			-- StarterGui.ScreenGui.MainFrame.TabHolder.Inactive.TextLabel
			Tab["f"] = Instance.new("TextLabel", Tab["e"]);
			Tab["f"]["BorderSizePixel"] = 0;
			Tab["f"]["TextSize"] = 24;
			Tab["f"]["TextXAlignment"] = Enum.TextXAlignment.Right;
			Tab["f"]["BackgroundColor3"] = Color3.fromRGB(50, 65, 100);
			Tab["f"]["TextDirection"] = Enum.TextDirection.LeftToRight;
			Tab["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Tab["f"]["TextColor3"] = Color3.fromRGB(150, 150, 150);
			Tab["f"]["Size"] = UDim2.new(1, 0, 1, 0);
			Tab["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["f"]["Text"] = options.name;
			Tab["f"]["TextScaled"] = true;
			Tab["f"]["TextWrapped"] = true;



			-- StarterGui.ScreenGui.MainFrame.TabHolder.Inactive.TextLabel.UIPadding
			Tab["10"] = Instance.new("UIPadding", Tab["f"]);
			Tab["10"]["PaddingRight"] = UDim.new(0, 15);
			Tab["10"]["PaddingLeft"] = UDim.new(0, 15);
			Tab["10"]["PaddingTop"] = UDim.new(0, 5);
			Tab["10"]["PaddingBottom"] = UDim.new(0, 5);

			-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab
			Tab["20"] = Instance.new("ScrollingFrame", GUI["1e"]);
			Tab["20"]["BorderSizePixel"] = 0;
			Tab["20"]["Name"] = options.name;
			Tab["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["20"]["Selectable"] = false;
			Tab["20"]["Size"] = UDim2.new(1, 0, 1, 0);
			Tab["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["20"]["ScrollBarThickness"] = 0;
			Tab["20"]["BackgroundTransparency"] = 1;
			Tab["20"]["Visible"] = false

			-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.UIPadding
			Tab["27"] = Instance.new("UIPadding", Tab["20"]);
			Tab["27"]["PaddingTop"] = UDim.new(0, 15);
			Tab["27"]["PaddingRight"] = UDim.new(0, 5);
			Tab["27"]["PaddingLeft"] = UDim.new(0, 5);
			Tab["27"]["PaddingBottom"] = UDim.new(0, 10);

			-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.UIListLayout
			Tab["21"] = Instance.new("UIListLayout", Tab["20"]);
			Tab["21"]["Padding"] = UDim.new(0, 10);
			Tab["21"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		end

		function Tab:Activate()
			if not Tab.Active then
				if GUI.CurrentTab ~= nil then
					GUI.CurrentTab:Deactivate()
				end
				Tab.Active = true
				Tab["20"]["Visible"] = true
				NexusApi:Tween(Tab["f"], {TextColor3 = Color3.fromRGB(255, 255, 255)})
				NexusApi:Tween(Tab["f"], {BackgroundColor3 = options.ActiveColor})
				GUI.CurrentTab = Tab
			end
		end

		function Tab:Deactivate()
			if Tab.Active then
				Tab.Active = false
				Tab.Hover = false
				Tab["20"]["Visible"] = false
				NexusApi:Tween(Tab["f"], {TextColor3 = Color3.fromRGB(150, 150, 150)})
				NexusApi:Tween(Tab["f"], {BackgroundColor3 = options.InactiveColor})
			end
		end

		do
			Tab["f"].MouseEnter:Connect(function()
				Tab.Hover = true
				if not Tab.Active then
					NexusApi:Tween(Tab["f"], {TextColor3 = Color3.fromRGB(255, 255, 255)})
					NexusApi:Tween(Tab["f"], {BackgroundColor3 = Color3.fromRGB(95, 115, 180)})
				end
			end)

			Tab["f"].MouseLeave:Connect(function()
				Tab.Hover = false
				if not Tab.Active then
					NexusApi:Tween(Tab["f"], {TextColor3 = Color3.fromRGB(150, 150, 150)})
					NexusApi:Tween(Tab["f"], {BackgroundColor3 = Color3.fromRGB(50, 65, 100)})
				end
			end)

			Tab["f"].InputBegan:Connect(function(Dildo2Metra, AnusW1nteza)
				if AnusW1nteza then return end
				if Dildo2Metra.UserInputType == Enum.UserInputType.MouseButton1 then
					if Tab.Hover then
						Tab:Activate()
					end
				end
			end)

			if GUI.CurrentTab == nil then
				Tab:Activate()
			end
		end

		function Tab:CreateButton(options)
			options = NexusApi:Validate({
				name = "Button",
				Callback = function() end
			}, options or {})

			local Button = {
				Hover = false,
				MouseDown = false
			}

			--UI
			do
				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ButtonTemplate
				Button["22"] = Instance.new("Frame", Tab["20"]);
				Button["22"]["BorderSizePixel"] = 0;
				Button["22"]["BackgroundColor3"] = Color3.fromRGB(50, 65, 100);
				Button["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Button["22"]["Size"] = UDim2.new(1, 0, 0, 50);
				Button["22"]["Position"] = UDim2.new(0.21554, 0, 0.13181, 0);
				Button["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Button["22"]["Name"] = [[ButtonTemplate]];



				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ButtonTemplate.UICorner
				Button["23"] = Instance.new("UICorner", Button["22"]);



				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ButtonTemplate.UIStroke
				Button["24"] = Instance.new("UIStroke", Button["22"]);
				Button["24"]["Thickness"] = 2.5;
				Button["24"]["Color"] = Color3.fromRGB(90, 100, 150);
				Button["24"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ButtonTemplate.TextLabel
				Button["25"] = Instance.new("TextLabel", Button["22"]);
				Button["25"]["BorderSizePixel"] = 0;
				Button["25"]["TextSize"] = 24;
				Button["25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Button["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Button["25"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
				Button["25"]["BackgroundTransparency"] = 1;
				Button["25"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				Button["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Button["25"]["Text"] = options.name;


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ButtonTemplate.TextLabel.UIPadding
				Button["26"] = Instance.new("UIPadding", Button["25"]);
				Button["26"]["PaddingTop"] = UDim.new(0, 1);
				Button["26"]["PaddingRight"] = UDim.new(0, 20);
				Button["26"]["PaddingLeft"] = UDim.new(0, 20);
				Button["26"]["PaddingBottom"] = UDim.new(0, 1);
			end
			
			--Методы
			do
				function Button:Set(Text)
					Button["25"].Text = Text
				end
			end
			
			--LogitecIliPABGi
			do
				Button["22"].MouseEnter:Connect(function()
					Button.Hover = true

					if not Button.MouseDown then
						NexusApi:Tween(Button["24"], {Color = Color3.fromRGB(200, 200, 200)})
					end
				end)

				Button["22"].MouseLeave:Connect(function()
					Button.Hover = false

					if not Button.MouseDown then
						NexusApi:Tween(Button["24"], {Color = Color3.fromRGB(90, 100, 150)})
					end
				end)

				Button["22"].InputBegan:Connect(function(I, GPE)
					if GPE then return end
					if I.UserInputType == Enum.UserInputType.MouseButton1 and Button.Hover then
						Button.MouseDown = true
						NexusApi:Tween(Button["22"], {BackgroundColor3 = Color3.fromRGB(75, 90, 125)})
						NexusApi:Tween(Button["24"], {Color = Color3.fromRGB(200, 200, 200)})
						options.Callback()
					end
				end)

				Button["22"].InputEnded:Connect(function(I, GPE)
					if GPE then return end
					if I.UserInputType == Enum.UserInputType.MouseButton1 then
						Button.MouseDown = false

						if Button.Hover then
							NexusApi:Tween(Button["22"], {BackgroundColor3 = Color3.fromRGB(50, 65, 100)})
						else
							NexusApi:Tween(Button["22"], {BackgroundColor3 = Color3.fromRGB(50, 65, 100)})
							NexusApi:Tween(Button["24"], {Color = Color3.fromRGB(90, 100, 150)})
						end
					end
				end)

			end

			return Button
		end
		
		function Tab:CreateSlider(options)
			options = NexusApi:Validate({
				name = "Slider",
				range = {
					0,
					100},
				value = 50,
				Callback = function(v) end
			}, options or {})
			
			local Slider = {
				MouseDown = false,
				Hover = false,
				Connection = nil
			}
			
			--TuzW1nteza
			do
				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate
				Slider["28"] = Instance.new("Frame", Tab["20"]);
				Slider["28"]["BorderSizePixel"] = 0;
				Slider["28"]["BackgroundColor3"] = Color3.fromRGB(51, 66, 101);
				Slider["28"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Slider["28"]["Size"] = UDim2.new(1, 0, 0, 60);
				Slider["28"]["Position"] = UDim2.new(0.21554, 0, 0.13181, 0);
				Slider["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["28"]["Name"] = options.name..[[Slider]];



				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.UICorner
				Slider["29"] = Instance.new("UICorner", Slider["28"]);



				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.UIStroke
				Slider["2a"] = Instance.new("UIStroke", Slider["28"]);
				Slider["2a"]["Thickness"] = 2.5;
				Slider["2a"]["Color"] = Color3.fromRGB(91, 101, 151);
				Slider["2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.TextLabel
				Slider["2b"] = Instance.new("TextLabel", Slider["28"]);
				Slider["2b"]["BorderSizePixel"] = 0;
				Slider["2b"]["TextSize"] = 24;
				Slider["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Slider["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["2b"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
				Slider["2b"]["BackgroundTransparency"] = 1;
				Slider["2b"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				Slider["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["2b"]["Text"] = options.name;

				

				-- StarterGui.ScreenGui.MainFrame.Slider.HomeTab.SliderTemplate.TextLabel.UIPadding
				Slider["2c"] = Instance.new("UIPadding", Slider["2b"]);
				Slider["2c"]["PaddingTop"] = UDim.new(0, 1);
				Slider["2c"]["PaddingRight"] = UDim.new(0, 20);
				Slider["2c"]["PaddingLeft"] = UDim.new(0, 20);
				Slider["2c"]["PaddingBottom"] = UDim.new(0, 15);


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.Value
				Slider["2d"] = Instance.new("TextLabel", Slider["28"]);
				Slider["2d"]["BorderSizePixel"] = 0;
				Slider["2d"]["TextSize"] = 24;
				Slider["2d"]["TextXAlignment"] = Enum.TextXAlignment.Right;
				Slider["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["2d"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
				Slider["2d"]["BackgroundTransparency"] = 1;
				Slider["2d"]["AnchorPoint"] = Vector2.new(1, 0);
				Slider["2d"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				Slider["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["2d"]["Text"] = options.value;
				Slider["2d"]["Name"] = [[Value]];
				Slider["2d"]["Position"] = UDim2.new(1, 0, 0, 0);



				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.Value.UIPadding
				Slider["2e"] = Instance.new("UIPadding", Slider["2d"]);
				Slider["2e"]["PaddingTop"] = UDim.new(0, 1);
				Slider["2e"]["PaddingRight"] = UDim.new(0, 20);
				Slider["2e"]["PaddingLeft"] = UDim.new(0, 20);
				Slider["2e"]["PaddingBottom"] = UDim.new(0, 15);


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.SliderBack
				Slider["2f"] = Instance.new("Frame", Slider["28"]);
				Slider["2f"]["BorderSizePixel"] = 0;
				Slider["2f"]["BackgroundColor3"] = Color3.fromRGB(17, 21, 28);
				Slider["2f"]["AnchorPoint"] = Vector2.new(0.5, 1);
				Slider["2f"]["Size"] = UDim2.new(1, -75, 0, 5);
				Slider["2f"]["Position"] = UDim2.new(0.5, 0, 1, -5);
				Slider["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["2f"]["Name"] = [[SliderBack]];



				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.SliderBack.UICorner
				Slider["30"] = Instance.new("UICorner", Slider["2f"]);
				Slider["30"]["CornerRadius"] = UDim.new(0, 100);


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.SliderBack.UIStroke
				Slider["31"] = Instance.new("UIStroke", Slider["2f"]);
				Slider["31"]["Transparency"] = 0;
				Slider["31"]["Thickness"] = 2.5;
				Slider["31"]["Color"] = Color3.fromRGB(90, 100, 150);
				Slider["31"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.SliderBack.SliderFill
				Slider["32"] = Instance.new("Frame", Slider["2f"]);
				Slider["32"]["BorderSizePixel"] = 0;
				Slider["32"]["BackgroundColor3"] = Color3.fromRGB(113, 147, 226);
				Slider["32"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				Slider["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["32"]["Name"] = [[SliderFill]];



				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.SliderTemplate.SliderBack.SliderFill.UICorner
				Slider["33"] = Instance.new("UICorner", Slider["32"]);
				Slider["33"]["CornerRadius"] = UDim.new(0, 100);
			end
			
			--mefedron
			do
				function Slider:SetValue(v)
					local min = options.range[1]
					local max = options.range[2]
					
					if v == nil then
						local percentage = math.clamp((Mouse.X - Slider["2f"].AbsolutePosition.X) / (Slider["2f"].AbsoluteSize.X), 0, 1)
						local Value = math.floor(((max - min) * percentage) + min)
						Slider["2d"].Text = tostring(Value)
						Slider["32"].Size = UDim2.fromScale(percentage, 1)
					else
						Slider["2d"].Text = tostring(v)
						Slider["32"].Size = UDim2.fromScale(((v - min) / (max - min)), 1)
					end
					options.Callback(Slider:GetValue())
				end
				
				function Slider:GetValue()
					return tonumber(Slider["2d"].Text)
				end
			end
			
			Slider:SetValue(options.value)
			
			--Logic
			do
				
				
				Slider["28"].MouseEnter:Connect(function()
					Slider.Hover = true

					if not Slider.MouseDown then
						NexusApi:Tween(Slider["2a"], {Color = Color3.fromRGB(200, 200, 200)})
					end
				end)

				Slider["28"].MouseLeave:Connect(function()
					Slider.Hover = false

					if not Slider.MouseDown then
						NexusApi:Tween(Slider["2a"], {Color = Color3.fromRGB(90, 100, 150)})
					end
				end)

				Slider["28"].InputBegan:Connect(function(I, GPE)
					if GPE then return end
					if I.UserInputType == Enum.UserInputType.MouseButton1 and Slider.Hover then
						Slider.MouseDown = true
						NexusApi:Tween(Slider["28"], {BackgroundColor3 = Color3.fromRGB(75, 90, 125)})
						NexusApi:Tween(Slider["2a"], {Color = Color3.fromRGB(200, 200, 200)})
						NexusApi:Tween(Slider["31"], {Color = Color3.fromRGB(115, 125, 175)})
						
						if not Slider.Connection then
							Slider.Connection = RunService.RenderStepped:Connect(function()
								Slider:SetValue()
							end)
						end
					end
				end)

				Slider["28"].InputEnded:Connect(function(I, GPE)
					if GPE then return end
					if I.UserInputType == Enum.UserInputType.MouseButton1 then
						Slider.MouseDown = false

						if Slider.Hover then
							NexusApi:Tween(Slider["31"], {Color = Color3.fromRGB(90, 100, 150)})
							NexusApi:Tween(Slider["28"], {BackgroundColor3 = Color3.fromRGB(50, 65, 100)})
						else
							NexusApi:Tween(Slider["31"], {Color = Color3.fromRGB(90, 100, 150)})
							NexusApi:Tween(Slider["2a"], {Color = Color3.fromRGB(90, 100, 150)})
							NexusApi:Tween(Slider["28"], {BackgroundColor3 = Color3.fromRGB(50, 65, 100)})
						end
						if Slider.Connection then Slider.Connection:Disconnect() end	
						Slider.Connection = nil
					end
				end)
			end
			
			return Slider
		end
		
		function Tab:CreateSection(options)
			options = NexusApi:Validate({
				name = "Section",
				color = Color3.fromRGB(200, 200, 200),
				transparancy = 0
			}, options or {})
			
			local Section = {}
			
			--UI
			do
				Section["1"] = Instance.new("Frame", Tab["20"]);
				Section["1"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Section["1"]["Name"] = [[Section]];
				Section["1"]["Size"] = UDim2.new(1, 0, 0, 50)
				Section["1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Section["1"]["BackgroundTransparency"] = 1;

				
				Section["2"] = Instance.new("UICorner", Section["1"]);
				Section["2"]["CornerRadius"] = UDim.new(0, 8);
				
				Section["3"] = Instance.new("TextLabel", Section["1"]);
				Section["3"]["Text"] = [[--------------------------- ]] .. options.name .. [[ ---------------------------]];
				Section["3"]["TextSize"] = 24;
				Section["3"]["TextColor3"] = options.color;
				Section["3"]["TextTransparency"] = options.transparancy;
				Section["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Section["3"]["Size"] = UDim2.new(1, 0, 1, 0);
				Section["3"]["BackgroundTransparency"] = 1;

				
				Section["4"] = Instance.new("UIPadding", Section["3"]);
				Section["4"]["PaddingLeft"] = UDim.new(0, 1);
				Section["4"]["PaddingRight"] = UDim.new(0, 1);
				Section["4"]["PaddingBottom"] = UDim.new(0, 1);
				Section["4"]["PaddingTop"] = UDim.new(0, 1);
				
			end
			
			return Section
		end
		
		function Tab:CreateToggle(options)
			options = NexusApi:Validate({
				name = "Toggle",
				Callback = function() end
			}, options or {})
			
			local Toggle = {
				MouseDown = false,
				Hover = false,
				State = false
			}
			
			do
				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ToggleInactive
				Toggle["48"] = Instance.new("Frame", Tab["20"]);
				Toggle["48"]["BorderSizePixel"] = 0;
				Toggle["48"]["BackgroundColor3"] = Color3.fromRGB(51, 66, 101);
				Toggle["48"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["48"]["Size"] = UDim2.new(1, 0, 0, 50);
				Toggle["48"]["Position"] = UDim2.new(0.21554, 0, 0.13181, 0);
				Toggle["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["48"]["Name"] = options.name .. [[Toggle]];


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ToggleInactive.UICorner
				Toggle["49"] = Instance.new("UICorner", Toggle["48"]);



				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ToggleInactive.UIStroke
				Toggle["4a"] = Instance.new("UIStroke", Toggle["48"]);
				Toggle["4a"]["Thickness"] = 2.5;
				Toggle["4a"]["Color"] = Color3.fromRGB(91, 101, 151);
				Toggle["4a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ToggleInactive.TextLabel
				Toggle["4b"] = Instance.new("TextLabel", Toggle["48"]);
				Toggle["4b"]["BorderSizePixel"] = 0;
				Toggle["4b"]["TextSize"] = 24;
				Toggle["4b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Toggle["4b"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
				Toggle["4b"]["BackgroundTransparency"] = 1;
				Toggle["4b"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				Toggle["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["4b"]["Text"] = options.name;


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ToggleInactive.TextLabel.UIPadding
				Toggle["4c"] = Instance.new("UIPadding", Toggle["4b"]);
				Toggle["4c"]["PaddingTop"] = UDim.new(0, 1);
				Toggle["4c"]["PaddingRight"] = UDim.new(0, 20);
				Toggle["4c"]["PaddingLeft"] = UDim.new(0, 20);
				Toggle["4c"]["PaddingBottom"] = UDim.new(0, 1);


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ToggleInactive.Frame
				Toggle["4d"] = Instance.new("Frame", Toggle["48"]);
				Toggle["4d"]["BorderSizePixel"] = 0;
				Toggle["4d"]["BackgroundColor3"] = Color3.fromRGB(75, 100, 150);
				Toggle["4d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["4d"]["Size"] = UDim2.new(0, 35, 0, 35);
				Toggle["4d"]["Position"] = UDim2.new(0.9, 0, 0.5, 0);
				Toggle["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


				-- StarterGui.ScreenGui.MainFrame.SectionHolder.HomeTab.ToggleInactive.Frame.UICorner
				Toggle["4e"] = Instance.new("UICorner", Toggle["4d"]);
				Toggle["4e"]["CornerRadius"] = UDim.new(0.25, 0);
			end
			
			--Метод
			do
				function Toggle:Toggle(b)
					if b == nil then
						Toggle.State = not Toggle.State
					else
						Toggle.State = b
					end
					
					if Toggle.State then
						NexusApi:Tween(Toggle["4d"], {BackgroundColor3 = Color3.fromRGB(75, 255, 75)})
					else
						NexusApi:Tween(Toggle["4d"], {BackgroundColor3 = Color3.fromRGB(75, 100, 150)})
					end
					
					options.Callback(Toggle.State)
				end
			end
			
			do
				Toggle["48"].MouseEnter:Connect(function()
					Toggle.Hover = true

					if not Toggle.MouseDown then
						NexusApi:Tween(Toggle["4a"], {Color = Color3.fromRGB(200, 200, 200)})
					end
				end)

				Toggle["48"].MouseLeave:Connect(function()
					Toggle.Hover = false

					if not Toggle.MouseDown then
						NexusApi:Tween(Toggle["4a"], {Color = Color3.fromRGB(90, 100, 150)})
					end
				end)

				Toggle["48"].InputBegan:Connect(function(I, GPE)
					if GPE then return end
					if I.UserInputType == Enum.UserInputType.MouseButton1 and Toggle.Hover then
						Toggle.MouseDown = true
						NexusApi:Tween(Toggle["48"], {BackgroundColor3 = Color3.fromRGB(75, 90, 125)})
						NexusApi:Tween(Toggle["4a"], {Color = Color3.fromRGB(200, 200, 200)})
						Toggle:Toggle()
					end
				end)

				Toggle["48"].InputEnded:Connect(function(I, GPE)
					if GPE then return end
					if I.UserInputType == Enum.UserInputType.MouseButton1 then
						Toggle.MouseDown = false

						if Toggle.Hover then
							NexusApi:Tween(Toggle["48"], {BackgroundColor3 = Color3.fromRGB(50, 65, 100)})
						else
							NexusApi:Tween(Toggle["48"], {BackgroundColor3 = Color3.fromRGB(50, 65, 100)})
							NexusApi:Tween(Toggle["4a"], {Color = Color3.fromRGB(90, 100, 150)})
						end
					end
				end)
			end
			
			return Toggle
		end
		
		return Tab
	end

	return GUI
end
return NexusApi
