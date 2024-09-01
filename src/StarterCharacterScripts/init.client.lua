local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local Viewmodel = require(ReplicatedStorage.Viewmodel)

local viewmodel = Viewmodel.new(ReplicatedStorage.models.viewmodel)
viewmodel:Enable()

RunService.RenderStepped:Connect(function(deltaTime)
    viewmodel:Update()
end)
