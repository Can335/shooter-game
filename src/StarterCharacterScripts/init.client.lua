local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local Gun = require(ReplicatedStorage.Gun)
local Viewmodel = require(ReplicatedStorage.Viewmodel)

local gun = Gun.new(ReplicatedStorage.assets.models.AK74)

local viewmodel = Viewmodel.new(ReplicatedStorage.assets.models.viewmodel, gun)

RunService.RenderStepped:Connect(function(deltaTime)
    viewmodel:Update()
end)
