local DiscordLib =

    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local Camera = workspace.CurrentCamera

local win = DiscordLib:Window("Arsenal")

local serv = win:Server("Vexnz", "")

local btns = serv:Channel("Combat")

btns:Button(

    "Silent Aim",

    function()

    function getplrsname() for i,v in pairs(game:GetChildren()) do if v.ClassName == "Players" then return v.Name end end end local players = getplrsname() local plr = game[players].LocalPlayer coroutine.resume(coroutine.create(function() while wait(1) do coroutine.resume(coroutine.create(function() for _,v in pairs(game[players]:GetPlayers()) do if v.Name ~= plr.Name and v.Character then v.Character.RightUpperLeg.CanCollide = false v.Character.RightUpperLeg.Transparency = 10 v.Character.RightUpperLeg.Size = Vector3.new(21,21,21) v.Character.LeftUpperLeg.CanCollide = false v.Character.LeftUpperLeg.Transparency = 10 v.Character.LeftUpperLeg.Size = Vector3.new(21,21,21) v.Character.HeadHB.CanCollide = false v.Character.HeadHB.Transparency = 10 v.Character.HeadHB.Size = Vector3.new(21,21,21) v.Character.HumanoidRootPart.CanCollide = false v.Character.HumanoidRootPart.Transparency = 10 v.Character.HumanoidRootPart.Size = Vector3.new(21,21,21) end end end)) end end))

        DiscordLib:Notification("Notification", "Silent Aim On (You Can't Turn it Off)", "Okay!")

    end

)

local ESP = serv:Channel("ESP")

ESP:Toggle(

    "Enable ESP",

    false,

    function(bool)

     _G.EnableESP = true

    end

)

local BoxESP =

ESP:Toggle(

   "Box ESP",

   false,

   function(bool)

   if _G.EnableESP == true then

---Created By 0x83

local lplr = game.Players.LocalPlayer

local camera = game:GetService("Workspace").CurrentCamera

local CurrentCamera = workspace.CurrentCamera

local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)

local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do

    local BoxOutline = Drawing.new("Square")

    BoxOutline.Visible = false

    BoxOutline.Color = Color3.new(0,0,0)

    BoxOutline.Thickness = 3

    BoxOutline.Transparency = 1

    BoxOutline.Filled = false

    local Box = Drawing.new("Square")

    Box.Visible = false

    Box.Color = Color3.new(1,1,1)

    Box.Thickness = 1

    Box.Transparency = 1

    Box.Filled = false

    function boxesp()

        game:GetService("RunService").RenderStepped:Connect(function()

            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then

                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart

                local Head = v.Character.Head

                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)

                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)

                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then

                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)

                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)

                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)

                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)

                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then

                        BoxOutline.Visible = false

                        Box.Visible = false

                    else

                        BoxOutline.Visible = true

                        Box.Visible = true

                    end

                else

                    BoxOutline.Visible = false

                    Box.Visible = false

                end

            else

                BoxOutline.Visible = false

                Box.Visible = false

            end

        end)

    end

    coroutine.wrap(boxesp)()

end

game.Players.PlayerAdded:Connect(function(v)

    local BoxOutline = Drawing.new("Square")

    BoxOutline.Visible = false

    BoxOutline.Color = Color3.new(0,0,0)

    BoxOutline.Thickness = 3

    BoxOutline.Transparency = 1

    BoxOutline.Filled = false

    local Box = Drawing.new("Square")

    Box.Visible = false

    Box.Color = Color3.new(1,1,1)

    Box.Thickness = 1

    Box.Transparency = 1

    Box.Filled = false

    function boxesp()

        game:GetService("RunService").RenderStepped:Connect(function()

            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then

                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart

                local Head = v.Character.Head

                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)

                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)

                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then

                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)

                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)

                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)

                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)

                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then

                        BoxOutline.Visible = false

                        Box.Visible = false

                    else

                        BoxOutline.Visible = true

                        Box.Visible = true

                    end

                else

                    BoxOutline.Visible = false

                    Box.Visible = false

                end

            else

                BoxOutline.Visible = false

                Box.Visible = false

            end

        end)

    end

    coroutine.wrap(boxesp)()

end)

end

end

)

local GunMods = serv:Channel("Gun Mods")

GunMods:Button(

   "Auto",

   function()

local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do

   if v.Name == "Auto" then

       v.Value = true

   else

   end

   end

end

)

GunMods:Button(

   "No Recoil",

   function()

   local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do

   if v.Name == "RecoilControl" then

       v.Value = 0

   end

end

end

)

GunMods:Button(

   "No Spread",

   function()

   local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do

   if v.Name == "MaxSpread" then

       v.Value = 0

   end

end

end

)

GunMods:Button(

   "No Reload",

   function()

   local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do

   if v.Name == "ReloadTime" then

      v.Value = 0.1

   end

end

end

)

GunMods:Button(

  "Fast Fire", 

  function()

  local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do

   if v.Name == "FireRate" then

       v.Value = 0.05

   end

end

end

)

GunMods:Button(

  "Crit",

  function()

  local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do

   if v.Name == "Crit" then

       v.Value = 20

   end

end

end

)

GunMods:Button("Inf Ammo", function()

    game:GetService("RunService").Stepped:connect(

        function()

            pcall(function()

                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 69

                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 69

end)

end)

end)
