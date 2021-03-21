--[[
MainfiestPison

Created By: o0ctt
]]
local MainfiestPison = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local police = Instance.new("TextButton")
local inmate = Instance.new("TextButton")
local neutral = Instance.new("TextButton")
local crim = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local arrestcrims = Instance.new("TextButton")
local invis = Instance.new("TextButton")
local superpunch = Instance.new("TextButton")
local guns = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local speed = Instance.new("TextButton")
MainfiestPison.Name = "MainfiestPison"
MainfiestPison.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MainfiestPison.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Main.Name = "Main"
Main.Parent = MainfiestPison
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BackgroundTransparency = 0.100
Main.BorderColor3 = Color3.fromRGB(64, 64, 64)
Main.BorderSizePixel = 4
Main.Position = UDim2.new(0.378650486, 0, 0.381067902, 0)
Main.Size = UDim2.new(0, 386, 0, 196)
Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.238807485, 0, 0.0695404112, 0)
Title.Size = UDim2.new(0, 200, 0, 25)
Title.Font = Enum.Font.SourceSans
Title.Text = "MainfiestPison"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
police.Name = "police"
police.Parent = Main
police.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
police.BorderSizePixel = 0
police.Position = UDim2.new(0.0534365438, 0, 0.342747331, 0)
police.Size = UDim2.new(0, 78, 0, 21)
police.Font = Enum.Font.SourceSans
police.Text = "Team Police"
police.TextColor3 = Color3.fromRGB(255, 255, 255)
police.TextSize = 14.000
police.MouseButton1Down:connect(function()
	workspace.Remote.TeamEvent:FireServer("Bright blue")
end)
inmate.Name = "inmate"
inmate.Parent = Main
inmate.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
inmate.BorderSizePixel = 0
inmate.Position = UDim2.new(0.274883926, 0, 0.342747331, 0)
inmate.Size = UDim2.new(0, 78, 0, 21)
inmate.Font = Enum.Font.SourceSans
inmate.Text = "Team Inmate"
inmate.TextColor3 = Color3.fromRGB(255, 255, 255)
inmate.TextSize = 14.000
inmate.MouseButton1Down:connect(function()
	workspace.Remote.TeamEvent:FireServer("Bright orange")
end)
neutral.Name = "neutral"
neutral.Parent = Main
neutral.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
neutral.BorderSizePixel = 0
neutral.Position = UDim2.new(0.516258657, 0, 0.342747331, 0)
neutral.Size = UDim2.new(0, 78, 0, 21)
neutral.Font = Enum.Font.SourceSans
neutral.Text = "Team Neutral"
neutral.TextColor3 = Color3.fromRGB(255, 255, 255)
neutral.TextSize = 14.000
neutral.MouseButton1Down:connect(function()
	workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)
crim.Name = "crim"
crim.Parent = Main
crim.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
crim.BorderSizePixel = 0
crim.Position = UDim2.new(0.745788157, 0, 0.342747331, 0)
crim.Size = UDim2.new(0, 78, 0, 21)
crim.Font = Enum.Font.SourceSans
crim.Text = "Team Crim"
crim.TextColor3 = Color3.fromRGB(255, 255, 255)
crim.TextSize = 14.000
crim.MouseButton1Down:connect(function()
	wait(0.3)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-976.125183, 109.123924, 2059.99536)
	wait(0.3)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)
fly.Name = "fly"
fly.Parent = Main
fly.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
fly.BorderSizePixel = 0
fly.Position = UDim2.new(0.0512851253, 0, 0.516096234, 0)
fly.Size = UDim2.new(0, 78, 0, 21)
fly.Font = Enum.Font.SourceSans
fly.Text = "Fly"
fly.TextColor3 = Color3.fromRGB(255, 255, 255)
fly.TextSize = 14.000
fly.MouseButton1Down:connect(function()
	game.StarterGui:SetCore("SendNotification", {
		Title = "MainfiestPison";
		Text = "Unfly = E";
		Duration = "20";
	})
	repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
	local mouse = game.Players.LocalPlayer:GetMouse() 
	repeat wait() until mouse
	local plr = game.Players.LocalPlayer 
	local torso = plr.Character.Torso 
	local flying = true
	local deb = true 
	local ctrl = {f = 0, b = 0, l = 0, r = 0} 
	local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	local maxspeed = 100 
	local speed = 0 

	function Fly() 
		local bg = Instance.new("BodyGyro", torso) 
		bg.P = 9e4 
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
		bg.cframe = torso.CFrame 
		local bv = Instance.new("BodyVelocity", torso) 
		bv.velocity = Vector3.new(0,0.1,0) 
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
		repeat wait() 
			plr.Character.Humanoid.PlatformStand = true 
			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
				speed = speed+.5+(speed/maxspeed) 
				if speed > maxspeed then 
					speed = maxspeed 
				end 
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
				speed = speed-1 
				if speed < 0 then 
					speed = 0 
				end 
			end 
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			else 
				bv.velocity = Vector3.new(0,0.1,0) 
			end 
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
		until not flying 
		ctrl = {f = 0, b = 0, l = 0, r = 0} 
		lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		speed = 0 
		bg:Destroy() 
		bv:Destroy() 
		plr.Character.Humanoid.PlatformStand = false 
	end 
	mouse.KeyDown:connect(function(key) 
		if key:lower() == "e" then 
			if flying then flying = false 
			else 
				flying = true 
				Fly() 
			end 
		elseif key:lower() == "w" then 
			ctrl.f = 1 
		elseif key:lower() == "s" then 
			ctrl.b = -1 
		elseif key:lower() == "a" then 
			ctrl.l = -1 
		elseif key:lower() == "d" then 
			ctrl.r = 1 
		end 
	end) 
	mouse.KeyUp:connect(function(key) 
		if key:lower() == "w" then 
			ctrl.f = 0 
		elseif key:lower() == "s" then 
			ctrl.b = 0 
		elseif key:lower() == "a" then 
			ctrl.l = 0 
		elseif key:lower() == "d" then 
			ctrl.r = 0 
		end 
	end)
	Fly()
end)
arrestcrims.Name = "arrestcrims"
arrestcrims.Parent = Main
arrestcrims.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
arrestcrims.BorderSizePixel = 0
arrestcrims.Position = UDim2.new(0.273356855, 0, 0.516096175, 0)
arrestcrims.Size = UDim2.new(0, 78, 0, 21)
arrestcrims.Font = Enum.Font.SourceSans
arrestcrims.Text = "Arrest Crims"
arrestcrims.TextColor3 = Color3.fromRGB(255, 255, 255)
arrestcrims.TextSize = 14.000
arrestcrims.MouseButton1Down:connect(function()
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			local i = 10
			repeat
				wait()
				i = i-1
				game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
				Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			until i == 0
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end)
invis.Name = "invis"
invis.Parent = Main
invis.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
invis.BorderSizePixel = 0
invis.Position = UDim2.new(0.516258657, 0, 0.516096234, 0)
invis.Size = UDim2.new(0, 78, 0, 21)
invis.Font = Enum.Font.SourceSans
invis.Text = "Invisible"
invis.TextColor3 = Color3.fromRGB(255, 255, 255)
invis.TextSize = 14.000
invis.MouseButton1Down:connect(function()
	local player = game.Players.LocalPlayer
	position     = player.Character.HumanoidRootPart.Position
	wait(0.1)
	player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
	wait(0.1)
	humanoidrootpart = player.Character.HumanoidRootPart:clone()
	wait(0.1)
	player.Character.HumanoidRootPart:Destroy()
	humanoidrootpart.Parent = player.Character
	player.Character:MoveTo(position)
	wait()
	game.Players.LocalPlayer.Character.Torso.Transparency = 1
	game.Players.LocalPlayer.Character.Head.Transparency  = 1
	game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
	game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
	game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
	game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
	game.Players.LocalPlayer.Character.Humanoid:RemoveAccessories()
	game.Players.LocalPlayer.Character.Head.face:Remove()
end)
superpunch.Name = "superpunch"
superpunch.Parent = Main
superpunch.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
superpunch.BorderSizePixel = 0
superpunch.Position = UDim2.new(0.743197501, 0, 0.516096234, 0)
superpunch.Size = UDim2.new(0, 78, 0, 21)
superpunch.Font = Enum.Font.SourceSans
superpunch.Text = "SuperPunch"
superpunch.TextColor3 = Color3.fromRGB(255, 255, 255)
superpunch.TextSize = 14.000
superpunch.MouseButton1Down:connect(function()
	mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] mouse = game.Players.LocalPlayer:GetMouse() punching = false cooldown = false function punch() cooldown = true local part = Instance.new("Part", game.Players.LocalPlayer.Character) part.Transparency = 1 part.Size = Vector3.new(5, 2, 3) part.CanCollide = false local w1 = Instance.new("Weld", part) w1.Part0 = game.Players.LocalPlayer.Character.Torso w1.Part1 = part w1.C1 = CFrame.new(0,0,2) part.Touched:connect(function(hit) if game.Players:FindFirstChild(hit.Parent.Name) then local plr = game.Players:FindFirstChild(hit.Parent.Name) if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do meleeRemote:FireServer(plr) end end end end) wait(1) cooldown = false part:Destroy() end mouse.KeyDown:connect(function(key) if cooldown == false then if key:lower() == "f" then punch() end end end)
end)

guns.Name = "guns"
guns.Parent = Main
guns.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
guns.BorderSizePixel = 0
guns.Position = UDim2.new(0.0512851253, 0, 0.686967731, 0)
guns.Size = UDim2.new(0, 78, 0, 21)
guns.Font = Enum.Font.SourceSans
guns.Text = "Guns"
guns.TextColor3 = Color3.fromRGB(255, 255, 255)
guns.TextSize = 14.000
guns.MouseButton1Down:connect(function()
	for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do

		lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
		print(lol)
	end
end)
btools.Name = "btools"
btools.Parent = Main
btools.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
btools.BorderSizePixel = 0
btools.Position = UDim2.new(0.514576495, 0, 0.686967671, 0)
btools.Size = UDim2.new(0, 78, 0, 21)
btools.Font = Enum.Font.SourceSans
btools.Text = "BTools"
btools.TextColor3 = Color3.fromRGB(255, 255, 255)
btools.TextSize = 14.000
btools.MouseButton1Down:connect(function()
	a = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	a.BinType = 2
	b = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	b.BinType = 3
	c = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	c.BinType = 4
end)
speed.Name = "speed"
speed.Parent = Main
speed.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
speed.BorderSizePixel = 0
speed.Position = UDim2.new(0.271053195, 0, 0.686967671, 0)
speed.Size = UDim2.new(0, 78, 0, 21)
speed.Font = Enum.Font.SourceSans
speed.Text = "Speed"
speed.TextColor3 = Color3.fromRGB(255, 255, 255)
speed.TextSize = 14.000
speed.MouseButton1Down:connect(function()
	Speed = "100"

	player = game.Players.LocalPlayer.Character
	power = "WalkSpeed"
	player.Humanoid[power] = Speed
	wait()
	player.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(9e99, 9e99, 9e99, 9e99, 9e99)
	wait()
	repeat
		game.Workspace.Gravity = 1000
		wait()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 287.5
		wait()
	until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end)
local function TNRG_fake_script()
	local script = Instance.new('LocalScript', MainfiestPison)

	game.StarterGui:SetCore("SendNotification", {
		Title = "MainfiestPison";
		Text = "Thx To Using The MainfiestPison!";
		Duration = "10";
	})
end
coroutine.wrap(TNRG_fake_script)()
local function ZMDBUO_fake_script() -- MainfiestPison.startscript#1 
	local script = Instance.new('Script', MainfiestPison)

	frame = script.Parent.Main
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(ZMDBUO_fake_script)()
