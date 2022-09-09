local Module = {}

local fakemodules = {}

function Module:new(Type,TABLE)
	if self.Enabled == true then
		return task.spawn(function()
			--local HS = require(script:FindFirstChildOfClass("ModuleScript"):Clone())
			local Service = require(fakemodules['Service'])
			local NewHint = Service.new()
			if Type == 1 then
				NewHint:setTheme('Default')
			elseif Type == 2 then
				NewHint:setTheme('Warn')
			elseif Type == 3 then
				NewHint:setTheme('Error')
			end
			NewHint:setText(TABLE['Text'])
			NewHint:setBottomRight()
			NewHint:setTweenLength(TABLE['Len']['In'], TABLE['Len']['Out'])
			NewHint:setBroadcastTime(TABLE['BTime']['IsInfinite'], TABLE['BTime']['Time'])
			NewHint:setTweenStyle(TABLE['Style']['In'], TABLE['Style']['Out'])
			NewHint:setTweenDirection(TABLE['Direction']['In'], TABLE['Direction']['Out'])
			NewHint:broadcast(TABLE['Broadcast'])
			return NewHint
		end)
	else
		return
	end
end

function Module:once()
	task.spawn(function()
		local Plugins = Instance.new("Folder")
		local Assets = Instance.new("Folder")
		local Hints = Instance.new("ScreenGui")
		local HintsFrame = Instance.new("Frame")
		local CenterFrame = Instance.new("Frame")
		local Layout = Instance.new("UIListLayout")
		local Padding = Instance.new("UIPadding")
		local RightFrame = Instance.new("Frame")
		local Layout_2 = Instance.new("UIListLayout")
		local Padding_2 = Instance.new("UIPadding")
		local LeftTopFrame = Instance.new("Frame")
		local Layout_3 = Instance.new("UIListLayout")
		local Padding_3 = Instance.new("UIPadding")
		local CenterTopFrame = Instance.new("Frame")
		local Layout_4 = Instance.new("UIListLayout")
		local Padding_4 = Instance.new("UIPadding")
		local LeftFrame = Instance.new("Frame")
		local Layout_5 = Instance.new("UIListLayout")
		local Padding_5 = Instance.new("UIPadding")
		local RightTopFrame = Instance.new("Frame")
		local Layout_6 = Instance.new("UIListLayout")
		local Padding_6 = Instance.new("UIPadding")
		local Hint = Instance.new("TextLabel")
		local HintCorner = Instance.new("UICorner")
		local TextPadding = Instance.new("UIPadding")
		local Themes = Instance.new("Folder")
		local DefaultTheme = Instance.new("Folder")

		--Properties:

		Plugins.Name = "Plugins"

		Assets.Name = "Assets"

		Hints.Name = "Hints"
		Hints.Parent = Assets
		Hints.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Hints.DisplayOrder = 999999999
		Hints.ResetOnSpawn = false

		HintsFrame.Name = "HintsFrame"
		HintsFrame.Parent = Hints
		HintsFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		HintsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		HintsFrame.BackgroundTransparency = 1.000
		HintsFrame.ClipsDescendants = true
		HintsFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		HintsFrame.Size = UDim2.new(1, 0, 1, 0)

		CenterFrame.Name = "CenterFrame"
		CenterFrame.Parent = HintsFrame
		CenterFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		CenterFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CenterFrame.BackgroundTransparency = 1.000
		CenterFrame.ClipsDescendants = true
		CenterFrame.Position = UDim2.new(0.5, 0, 0.510677278, 0)
		CenterFrame.Size = UDim2.new(1, 0, 0.978645384, 0)

		Layout.Name = "Layout"
		Layout.Parent = CenterFrame
		Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		Layout.SortOrder = Enum.SortOrder.LayoutOrder
		Layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		Layout.Padding = UDim.new(0, 5)

		Padding.Name = "Padding"
		Padding.Parent = CenterFrame
		Padding.PaddingBottom = UDim.new(0, 10)

		RightFrame.Name = "RightFrame"
		RightFrame.Parent = HintsFrame
		RightFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		RightFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		RightFrame.BackgroundTransparency = 1.000
		RightFrame.ClipsDescendants = true
		RightFrame.Position = UDim2.new(0.5, 0, 0.510677278, 0)
		RightFrame.Size = UDim2.new(1, 0, 0.978645384, 0)

		Layout_2.Name = "Layout"
		Layout_2.Parent = RightFrame
		Layout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
		Layout_2.SortOrder = Enum.SortOrder.LayoutOrder
		Layout_2.VerticalAlignment = Enum.VerticalAlignment.Bottom
		Layout_2.Padding = UDim.new(0, 5)

		Padding_2.Name = "Padding"
		Padding_2.Parent = RightFrame
		Padding_2.PaddingBottom = UDim.new(0, 10)
		Padding_2.PaddingRight = UDim.new(0, 15)

		LeftTopFrame.Name = "LeftTopFrame"
		LeftTopFrame.Parent = HintsFrame
		LeftTopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		LeftTopFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LeftTopFrame.BackgroundTransparency = 1.000
		LeftTopFrame.ClipsDescendants = true
		LeftTopFrame.Position = UDim2.new(0.5, 0, 0.510677278, 0)
		LeftTopFrame.Size = UDim2.new(1, 0, 0.978645384, 0)

		Layout_3.Name = "Layout"
		Layout_3.Parent = LeftTopFrame
		Layout_3.SortOrder = Enum.SortOrder.LayoutOrder
		Layout_3.Padding = UDim.new(0, 5)

		Padding_3.Name = "Padding"
		Padding_3.Parent = LeftTopFrame
		Padding_3.PaddingLeft = UDim.new(0, 15)
		Padding_3.PaddingTop = UDim.new(0, 10)

		CenterTopFrame.Name = "CenterTopFrame"
		CenterTopFrame.Parent = HintsFrame
		CenterTopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		CenterTopFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CenterTopFrame.BackgroundTransparency = 1.000
		CenterTopFrame.ClipsDescendants = true
		CenterTopFrame.Position = UDim2.new(0.5, 0, 0.510677278, 0)
		CenterTopFrame.Size = UDim2.new(1, 0, 0.978645384, 0)

		Layout_4.Name = "Layout"
		Layout_4.Parent = CenterTopFrame
		Layout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
		Layout_4.SortOrder = Enum.SortOrder.LayoutOrder
		Layout_4.Padding = UDim.new(0, 5)

		Padding_4.Name = "Padding"
		Padding_4.Parent = CenterTopFrame
		Padding_4.PaddingTop = UDim.new(0, 10)

		LeftFrame.Name = "LeftFrame"
		LeftFrame.Parent = HintsFrame
		LeftFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		LeftFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LeftFrame.BackgroundTransparency = 1.000
		LeftFrame.ClipsDescendants = true
		LeftFrame.Position = UDim2.new(0.5, 0, 0.510677278, 0)
		LeftFrame.Size = UDim2.new(1, 0, 0.978645384, 0)

		Layout_5.Name = "Layout"
		Layout_5.Parent = LeftFrame
		Layout_5.SortOrder = Enum.SortOrder.LayoutOrder
		Layout_5.VerticalAlignment = Enum.VerticalAlignment.Bottom
		Layout_5.Padding = UDim.new(0, 5)

		Padding_5.Name = "Padding"
		Padding_5.Parent = LeftFrame
		Padding_5.PaddingBottom = UDim.new(0, 10)
		Padding_5.PaddingLeft = UDim.new(0, 15)

		RightTopFrame.Name = "RightTopFrame"
		RightTopFrame.Parent = HintsFrame
		RightTopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		RightTopFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		RightTopFrame.BackgroundTransparency = 1.000
		RightTopFrame.ClipsDescendants = true
		RightTopFrame.Position = UDim2.new(0.5, 0, 0.510677278, 0)
		RightTopFrame.Size = UDim2.new(1, 0, 0.978645384, 0)

		Layout_6.Name = "Layout"
		Layout_6.Parent = RightTopFrame
		Layout_6.HorizontalAlignment = Enum.HorizontalAlignment.Right
		Layout_6.SortOrder = Enum.SortOrder.LayoutOrder
		Layout_6.Padding = UDim.new(0, 5)

		Padding_6.Name = "Padding"
		Padding_6.Parent = RightTopFrame
		Padding_6.PaddingRight = UDim.new(0, 15)
		Padding_6.PaddingTop = UDim.new(0, 10)

		Hint.Name = "Hint"
		Hint.Parent = Assets
		Hint.AnchorPoint = Vector2.new(0.5, 0.5)
		Hint.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
		Hint.BackgroundTransparency = 1.000
		Hint.BorderSizePixel = 0
		Hint.Position = UDim2.new(0.5, 0, 1, -85)
		Hint.Size = UDim2.new(0, 0, 0, 30)
		Hint.Visible = false
		Hint.Text = ""
		Hint.TextColor3 = Color3.fromRGB(255, 255, 255)
		Hint.TextSize = 13.000
		Hint.TextTransparency = 1.000

		HintCorner.CornerRadius = UDim.new(0.224999994, 0)
		HintCorner.Name = "HintCorner"
		HintCorner.Parent = Hint

		TextPadding.Name = "TextPadding"
		TextPadding.Parent = Hint
		TextPadding.PaddingLeft = UDim.new(0, 11)
		TextPadding.PaddingRight = UDim.new(0, 11)

		Themes.Name = "Themes"

		DefaultTheme.Name = "DefaultTheme"

		do
			local script = Instance.new('ModuleScript', script)
			script.Name = "Service"
			local function module_script()
				local HS = { }
				local DisallowedWhiteSpace = {"\n", "\r", "\t", "\v", "\f"}
				local CurrentlyBroadcasted = { }

				local GuiService = game:GetService("GuiService")
				local Players = game:GetService("Players")
				local TweenService = game:GetService("TweenService")
				local RunService = game:GetService("RunService")
				local MarketplaceService = game:GetService("MarketplaceService")

				local DefaultThemeFolder = script:WaitForChild("DefaultTheme")
				local ThemesFolder = script:WaitForChild("Themes")
				local Assets = script:WaitForChild("Assets")
				local Plugins = script:WaitForChild("Plugins")
				local Signal = require(Plugins:FindFirstChild("Signal"))
				local DefaultTheme = require(DefaultThemeFolder:WaitForChild("DefaultTheme"))
				local HintsGui = Assets:FindFirstChild("Hints"):Clone()
				local Player = Players.LocalPlayer
				local PlayerGui = game:GetService('CoreGui')
				local HintsFrame = HintsGui.HintsFrame

				local debounceTime = 0
				local debounceEnabled = false
				local lastHint = 0

				local function argumentError(argument, functionName)
					argument = argument or "nil"
					functionName = functionName or "nil"
					error(string.format("The %s argument must be passed in the %s function.", argument, functionName))
				end

				local function invalidError(object, type)
					object = object or "nil"
					type = type or "nil"
					error(string.format("%s is not a valid %s.", object, type))
				end

				local function customError(msg, ...)
					error(string.format(msg, ...))
				end

				local function customError2(msg)
					error(msg)
				end

				local function onMenuOpenedConfig(isHintVisible)
					HintsGui.Enabled = isHintVisible
				end


				local function removeFromTable(self)
					local index = table.find(CurrentlyBroadcasted, self)

					if index then
						table.remove(CurrentlyBroadcasted, index)
					end
				end

				local function setHintProperties(self)
					if not self then
						argumentError("self", "setHintProperties")
					end

					self._.BackgroundColor3 = self.HintTheme.hintColor
					self._.HintCorner.CornerRadius = self.HintTheme.hintCornerRadius
					self._.BorderStroke.Color = self.HintTheme.hintStrokeColor
					self._.BorderStroke.LineJoinMode = self.HintTheme.hintStrokeLineJoinMode
					self._.BorderStroke.Thickness = self.HintTheme.hintStrokeSize
					self._.TextColor3 = self.HintTheme.labelColor
					self._.TextStroke.Color = self.HintTheme.labelStrokeColor
					self._.TextStroke.LineJoinMode = self.HintTheme.labelStrokeLineJoinMode
					self._.TextStroke.Thickness = self.HintTheme.labelStrokeSize
					self._.Font = self.HintTheme.labelFont

					self.HintTransparency = self.HintTheme.hintTransparency
					self.LabelTransparency = self.HintTheme.labelTransparency
				end

				local function cancelBroadcast(self)
					local animationType = self.AnimationType
					local label = self._
					local tweenLength2 = self.TweenLength2
					local easingStyle2 = self.EasingStyle2
					local easingDirection2 = self.EasingDirection2
					local destroyOnFinish = self.DestroyOnFinish

					local borderStroke = label:FindFirstChild("BorderStroke")
					local textStroke = label:FindFirstChild("TextStroke")

					local hintFinishInfo = TweenInfo.new(tweenLength2, easingStyle2, easingDirection2)
					local hintFinishConstraintInfo = TweenInfo.new(tweenLength2, easingStyle2, easingDirection2)

					removeFromTable(self)

					if animationType == "Fade" then
						TweenService:Create(label, hintFinishInfo, {Transparency = 1}):Play()
						TweenService:Create(borderStroke, hintFinishConstraintInfo, {Transparency = 1}):Play()
						TweenService:Create(textStroke, hintFinishConstraintInfo, {Transparency = 1}):Play()
						if destroyOnFinish then
							task.wait(tweenLength2)
							label:Destroy()
						end
					elseif animationType == "None" then
						label.Transparency = 1
						borderStroke.Transparency = 1
						textStroke.Transparency = 1
						if destroyOnFinish then
							label:Destroy()
						end
					end
				end

				local function animateHint(self)
					local animationType = self.AnimationType
					local destroyOnFinish = self.DestroyOnFinish
					local label = self._
					local tweenLength2 = self.TweenLength2
					local easingStyle2 = self.EasingStyle2
					local easingDirection2 = self.EasingDirection2
					local tweenLength1 = self.TweenLength1
					local easingStyle1 = self.EasingStyle1
					local easingDirection1 = self.EasingDirection1
					local hintCancelled = self.HintCancelled
					local infiniteTime = self.InfiniteTime
					local visibleTime = self.VisibleTime
					local labelTransparency = self.LabelTransparency
					local hintTransparency = self.HintTransparency

					local broadcastRecieved = self.BroadcastRecieved

					local borderStroke = label:FindFirstChild("BorderStroke")
					local textStroke = label:FindFirstChild("TextStroke")

					local hintFinishInfo = TweenInfo.new(tweenLength2, easingStyle2, easingDirection2)
					local hintFinishConstraintInfo = TweenInfo.new(tweenLength2, easingStyle2, easingDirection2)

					local hintAddingInfo = TweenInfo.new(tweenLength1, easingStyle1, easingDirection1)
					local hintAddingConstraintInfo = TweenInfo.new(tweenLength1, easingStyle1, easingDirection1)

					if not self then
						argumentError("self", "animateHint")
					end

					if visibleTime <= 1 then
						customError2("Max visible time cannot be 1 or under")
					end

					label.Visible = true

					if animationType == "Fade" and infiniteTime == true then
						HS.HintAdding:Fire(self)
						broadcastRecieved:Fire()
						TweenService:Create(label, hintAddingInfo, {TextTransparency = labelTransparency}):Play()
						TweenService:Create(label, hintAddingInfo, {BackgroundTransparency = hintTransparency}):Play()
						TweenService:Create(borderStroke, hintAddingConstraintInfo, {Transparency = hintTransparency}):Play()
						TweenService:Create(textStroke, hintAddingConstraintInfo, {Transparency = labelTransparency}):Play()
					elseif animationType == "Fade" and infiniteTime ~= true then
						HS.HintAdding:Fire(self)
						broadcastRecieved:Fire()
						TweenService:Create(label, hintAddingInfo, {TextTransparency = labelTransparency}):Play()
						TweenService:Create(label, hintAddingInfo, {BackgroundTransparency = hintTransparency}):Play()
						TweenService:Create(borderStroke, hintAddingConstraintInfo, {Transparency = hintTransparency}):Play()
						TweenService:Create(textStroke, hintAddingConstraintInfo, {Transparency = labelTransparency}):Play()
						task.wait(visibleTime + tweenLength1)

						if not hintCancelled then
							HS.HintRemoving:Fire(label)
							TweenService:Create(label, hintFinishInfo, {Transparency = 1}):Play()
							TweenService:Create(borderStroke, hintFinishConstraintInfo, {Transparency = 1}):Play()
							TweenService:Create(textStroke, hintFinishConstraintInfo, {Transparency = 1}):Play()
							if destroyOnFinish then
								task.wait(tweenLength2)
								label:Destroy()
							end
						end
					end

					if animationType == "None" and infiniteTime == true then
						HS.HintAdding:Fire(self)
						broadcastRecieved:Fire()
						label.TextTransparency = labelTransparency
						label.BackgroundTransparency = hintTransparency
						borderStroke.Transparency = hintTransparency
						textStroke.Transparency = labelTransparency
					elseif animationType == "None" and infiniteTime ~= true then
						HS.HintAdding:Fire(self)
						broadcastRecieved:Fire()
						label.TextTransparency = labelTransparency
						label.BackgroundTransparency = labelTransparency
						borderStroke.Transparency = hintTransparency
						textStroke.Transparency = labelTransparency
						task.wait(visibleTime)

						if not hintCancelled then
							HS.HintRemoving:Fire(self)
							label.Transparency = 1
							borderStroke.Transparency = 1
							textStroke.Transparency = 1
							if destroyOnFinish then
								label:Destroy()
							end
						elseif hintCancelled then
							return
						end
					end
				end

				local a_,b_ = pcall(function()
					HintsGui.Parent = PlayerGui
				end)
				if not a_ then
					HintsGui.Parent = Player:WaitForChild("PlayerGui")
				end
				HintsGui.Archivable = false

				HS.HintAdding = Signal.new()
				HS.HintRemoving = Signal.new()
				HS.Version = "2.6.4"

				GuiService.MenuOpened:Connect(function()
					onMenuOpenedConfig(false)
				end)

				GuiService.MenuClosed:Connect(function()
					onMenuOpenedConfig(true)
				end)

				---------- Constructors ----------

				function HS.new()
					local self = setmetatable({ }, {__index = HS})

					self._ = Assets:WaitForChild("Hint"):Clone()
					self.DestroyOnFinish = true
					self.HintAlignment = 2
					self.HintTheme = DefaultTheme
					self.VisibleTime = 12
					self.HintTransparency = self.HintTheme.hintTransparency
					self.LabelTransparency = self.HintTheme.labelTransparency
					self.EasingDirection1 = Enum.EasingDirection.In
					self.EasingDirection2 = Enum.EasingDirection.Out
					self.EasingStyle1 = Enum.EasingStyle.Quad
					self.EasingStyle2 = Enum.EasingStyle.Quad
					self.TweenLength1 = 1
					self.TweenLength2 = 1
					self.Cancelled = false
					self.BroadcastCancelled = Signal.new()
					self.BroadcastRecieved = Signal.new()
					self.Broadcasted = Signal.new()
					self.InfiniteTime = false
					self.AnimationType = "Fade"
					self.IsBroadcasted = false

					return self
				end

				function HS:setLayoutOrder(order)
					order = order or 0
					local label = self._

					label.LayoutOrder = order
				end

				function HS.setDisplayOrder(order)
					order = order or 999999999
					HintsGui.DisplayOrder = order
				end

				function HS.setResetOnSpawn(enabled)
					enabled = enabled or false
					HintsGui.ResetOnSpawn = enabled
				end

				function HS:setBroadcastFinished(destroy)
					destroy = destroy or false
					self.DestroyOnFinish = destroy
				end

				function HS:setText(text)
					text = text or ""
					for k,v in ipairs(DisallowedWhiteSpace) do
						if string.find(text, v) then
							customError2("Whitespaces are not allowed.")
						end
					end
					local label = self._

					label.Text = text
				end

				function HS:setBroadcastTime(isInfinite, time)
					time = time or 12
					isInfinite = isInfinite or false
					local label = self._

					self.InfiniteTime = isInfinite
					self.VisibleTime = time
				end

				function HS:setBottomLeft()
					local label = self._
					local alignment = self.HintAlignment

					label.Parent = HintsFrame.LeftFrame
					alignment = 1
				end

				function HS:setBottomRight()
					local label = self._
					local alignment = self.HintAlignment

					label.Parent = HintsFrame.RightFrame
					alignment = 3
				end

				function HS:setBottomCenter()
					local label = self._
					local alignment = self.HintAlignment

					label.Parent = HintsFrame.CenterFrame
					alignment = 2
				end

				function HS:setTopLeft()
					local label = self._
					local alignment = self.HintAlignment

					label.Parent = HintsFrame.LeftTopFrame
					alignment = 4
				end

				function HS:setTopRight()
					local label = self._
					local alignment = self.HintAlignment

					label.Parent = HintsFrame.RightTopFrame
					alignment = 6
				end

				function HS:setTopCenter()
					local label = self._
					local alignment = self.HintAlignment

					label.Parent = HintsFrame.CenterTopFrame
					alignment = 5
				end

				function HS:setRichText(enabled)
					enabled = enabled or false
					local label = self._

					label.RichText = enabled
				end

				function HS:setTweenLength(length1, length2)
					length1 = length1 or 1
					length2 = length2 or 1

					self.TweenLength1 = length1
					self.TweenLength2 = length2
				end

				function HS:setTweenDirection(direction1, direction2)
					direction1 = direction1 or Enum.EasingDirection.In
					direction2 = direction2 or Enum.EasingDirection.Out

					self.EasingDirection1 = direction1
					self.EasingDirection2 = direction2
				end

				function HS:setTweenStyle(style1, style2)
					style1 = style1 or Enum.EasingStyle.Quad
					style2 = style2 or Enum.EasingStyle.Quad

					self.EasingStyle1 = style1
					self.EasingStyle2 = style2
				end

				function HS:setTheme(theme)
					if ThemesFolder:FindFirstChild(theme) and ThemesFolder:FindFirstChild(theme):IsA("ModuleScript") then
						self.HintTheme = require(ThemesFolder:FindFirstChild(theme))
					else
						invalidError(theme, "theme")
					end
				end

				function HS:setTweenType(type)
					self.AnimationType = type
				end

				function HS.setDebounceTime(time)
					debounceEnabled = true
					debounceTime = time or 0
				end

				function HS:getText()
					return self._.Text
				end

				function HS:getBroadcastTime()
					return self.VisibleTime
				end

				function HS:getTweenLength(type)
					if type == "1" then
						return self.TweenLength1
					else
						return self.TweenLength2
					end
				end

				function HS:getTweenDirection(type)
					if type == "1" then
						return self.EasingDirection1
					else
						return self.EasingDirection2
					end
				end

				function HS:getTweenStyle(type)
					if type == "1" then
						return self.EasingStyle1
					else
						return self.EasingStyle2
					end
				end

				function HS:getTweenType(type)
					return self.AnimationType
				end

				function HS:getRichTextEnabled()
					return self._.RichText
				end

				function HS:getHintAlignment()
					return self.HintAlignment
				end

				function HS:getTheme()
					return self.HintTheme
				end

				function HS:getHintSize()
					return self._.AbsoluteSize
				end

				function HS:getIsBroadcasted()
					return self.IsBroadcasted
				end

				function HS.getBroadcastedHints()
					return CurrentlyBroadcasted
				end

				function HS:broadcast(yieldThreadUntilHintFinished)
					yieldThreadUntilHintFinished = yieldThreadUntilHintFinished or false

					if debounceEnabled then
						if time() - lastHint < debounceTime then return end
					end

					lastHint = time()
					table.insert(CurrentlyBroadcasted, self)

					local label = self._

					self.IsBroadcasted = true

					setHintProperties(self)
					if yieldThreadUntilHintFinished then
						self.Broadcasted:Fire()
						animateHint(self)
					else
						self.Broadcasted:Fire()
						task.defer(function()
							animateHint(self)
						end)
					end
				end

				function HS:cancelBroadcast()
					local label = self._
					local broadcastCancelled = self.BroadcastCancelled

					if self.IsBroadcasted then
						broadcastCancelled:Fire()
						cancelBroadcast(self)
					else

					end
				end

				return HS
			end
			fakemodules[script.Name] = module_script
		end
		do -- Plugins.Signal
			local script = Instance.new('ModuleScript', Plugins)
			script.Name = "Signal"
			local function module_script()
				local freeRunnerThread = nil

				local function acquireRunnerThreadAndCallEventHandler(fn, ...)
					local acquiredRunnerThread = freeRunnerThread
					freeRunnerThread = nil
					fn(...)
					freeRunnerThread = acquiredRunnerThread
				end

				local function runEventHandlerInFreeThread()
					while true do
						acquireRunnerThreadAndCallEventHandler(coroutine.yield())
					end
				end

				local Connection = {}
				Connection.__index = Connection

				function Connection.new(signal, fn)
					return setmetatable({
						_connected = true,
						_signal = signal,
						_fn = fn,
						_next = false,
					}, Connection)
				end

				function Connection:Disconnect()
					self._connected = false

					if self._signal._handlerListHead == self then
						self._signal._handlerListHead = self._next
					else
						local prev = self._signal._handlerListHead
						while prev and prev._next ~= self do
							prev = prev._next
						end
						if prev then
							prev._next = self._next
						end
					end
				end

				setmetatable(Connection, {
					__index = function(tb, key)
						error(("Attempt to get Connection::%s (not a valid member)"):format(tostring(key)), 2)
					end,
					__newindex = function(tb, key, value)
						error(("Attempt to set Connection::%s (not a valid member)"):format(tostring(key)), 2)
					end
				})

				local Signal = {}
				Signal.__index = Signal

				function Signal.new()
					return setmetatable({
						_handlerListHead = false,
					}, Signal)
				end

				function Signal:Connect(func)
					local connection = Connection.new(self, func)
					if self._handlerListHead then
						connection._next = self._handlerListHead
						self._handlerListHead = connection
					else
						self._handlerListHead = connection
					end
					return connection
				end

				function Signal:DisconnectAll()
					self._handlerListHead = false
				end

				function Signal:Fire(...)
					local item = self._handlerListHead
					while item do
						if item._connected then
							if not freeRunnerThread then
								freeRunnerThread = coroutine.create(runEventHandlerInFreeThread)
								coroutine.resume(freeRunnerThread)
							end
							task.spawn(freeRunnerThread, item._fn, ...)
						end
						item = item._next
					end
				end

				function Signal:Wait()
					local waitingCoroutine = coroutine.running()
					local cn;
					cn = self:Connect(function(...)
						cn:Disconnect()
						task.spawn(waitingCoroutine, ...)
					end)
					return coroutine.yield()
				end

				function Signal:Once(func)
					local cn;
					cn = self:Connect(function(...)
						if cn._connected then
							cn:Disconnect()
						end
						func(...)
					end)
					return cn
				end

				setmetatable(Signal, {
					__index = function(tb, key)
						error(("Attempt to get Signal::%s (not a valid member)"):format(tostring(key)), 2)
					end,
					__newindex = function(tb, key, value)
						error(("Attempt to set Signal::%s (not a valid member)"):format(tostring(key)), 2)
					end
				})

				return Signal
			end
			fakemodules[script.Name] = module_script
		end
		do -- Themes.Default
			local script = Instance.new('ModuleScript', Themes)
			script.Name = "Default"
			local function module_script()
				return {
					hintColor = Color3.fromRGB(25, 27, 29);
					hintTransparency = 0.2;
					hintCornerRadius = UDim.new(0.225, 0);
					hintStrokeSize = 0;
					hintStrokeLineJoinMode = Enum.LineJoinMode.Round;
					hintStrokeColor = Color3.fromRGB(255, 255, 255);
					labelColor = Color3.fromRGB(255, 255, 255);
					labelStrokeSize = 0;
					labelStrokeLineJoinMode = Enum.LineJoinMode.Round;
					labelStrokeColor = Color3.fromRGB(255, 255, 255);
					labelTransparency = 0;
					labelFont = Enum.Font.Gotham;
				}
			end
			fakemodules[script.Name] = module_script
		end
		do -- Themes.Error
			local script = Instance.new('ModuleScript', Themes)
			script.Name = "Error"
			local function module_script()
				return {
					hintColor = Color3.fromRGB(25, 27, 29);
					hintTransparency = 0.2;
					hintCornerRadius = UDim.new(0.225, 0);
					hintStrokeSize = 0;
					hintStrokeLineJoinMode = Enum.LineJoinMode.Round;
					hintStrokeColor = Color3.fromRGB(255, 255, 255);
					labelColor = Color3.fromRGB(255, 71, 71);
					labelStrokeSize = 0;
					labelStrokeLineJoinMode = Enum.LineJoinMode.Round;
					labelStrokeColor = Color3.fromRGB(255, 71, 71);
					labelTransparency = 0;
					labelFont = Enum.Font.Gotham;
				}
			end
			fakemodules[script.Name] = module_script
		end
		do -- Themes.Warn
			local script = Instance.new('ModuleScript', Themes)
			script.Name = "Warn"
			local function module_script()
				return {
					hintColor = Color3.fromRGB(25, 27, 29);
					hintTransparency = 0.2;
					hintCornerRadius = UDim.new(0.225, 0);
					hintStrokeSize = 0;
					hintStrokeLineJoinMode = Enum.LineJoinMode.Round;
					hintStrokeColor = Color3.fromRGB(255, 255, 255);
					labelColor = Color3.fromRGB(255, 240, 67);
					labelStrokeSize = 0;
					labelStrokeLineJoinMode = Enum.LineJoinMode.Round;
					labelStrokeColor = Color3.fromRGB(255, 240, 67);
					labelTransparency = 0;
					labelFont = Enum.Font.Gotham;
				}
			end
			fakemodules[script.Name] = module_script
		end

		do -- DefaultTheme.DefaultTheme
			local script = Instance.new('ModuleScript', DefaultTheme)
			script.Name = "DefaultTheme"
			local function module_script()
				return {
					hintColor = Color3.fromRGB(25, 27, 29);
					hintTransparency = 0.2;
					hintCornerRadius = UDim.new(0.225, 0);
					hintStrokeSize = 0;
					hintStrokeLineJoinMode = Enum.LineJoinMode.Round;
					hintStrokeColor = Color3.fromRGB(255, 255, 255);
					labelColor = Color3.fromRGB(255, 255, 255);
					labelStrokeSize = 0;
					labelStrokeLineJoinMode = Enum.LineJoinMode.Round;
					labelStrokeColor = Color3.fromRGB(255, 255, 255);
					labelTransparency = 0;
					labelFont = Enum.Font.Gotham;
				}
			end
			fakemodules[script.Name] = module_script
		end

		Assets.Parent = script:FindFirstChildOfClass('ModuleScript')
		Plugins.Parent = script:FindFirstChildOfClass('ModuleScript')
		Themes.Parent = script:FindFirstChildOfClass('ModuleScript')
		DefaultTheme.Parent = script:FindFirstChildOfClass('ModuleScript')
	end)
	self.Enabled = true
end

return Module
