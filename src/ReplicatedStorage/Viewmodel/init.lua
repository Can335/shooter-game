local ReplicatedStorage = game:GetService("ReplicatedStorage")

local currentCamera = workspace.CurrentCamera

local spr = require(ReplicatedStorage.modules.spr)
local types = require(script.Parent.types)
local Arms = require(script.Arms)

local Viewmodel = {}
Viewmodel.__index = Viewmodel

type _Viewmodel = types.Viewmodel & {
    model: Model,
    arms: types.Arms,

    _MoveTo: (self: _Viewmodel, cframe: CFrame) -> (),
}

--TODO: Accept the 5 weapon slots.
function Viewmodel.new(viewmodel: Model, gun: types.Gun): types.Viewmodel
    local model = viewmodel:Clone()
    model.Parent = currentCamera

    local self = setmetatable({
        model = model,
        arms = Arms.new(model, gun),
    }, Viewmodel)

    self:Enable()

    return self
end

function Viewmodel.Enable(self: _Viewmodel)
    self:_MoveTo(currentCamera.CFrame)
    self.arms:Enable()
end

function Viewmodel.Update(self: _Viewmodel)
    self:_MoveTo(currentCamera.CFrame)
    self.arms:Update()
end

function Viewmodel._MoveTo(self: _Viewmodel, cframe: CFrame)
    self.model:PivotTo(cframe)
end

return Viewmodel
