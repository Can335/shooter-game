local currentCamera = workspace.CurrentCamera

local types = require(script.Parent.types)
local Arms = require(script.Arms)

local Viewmodel = {}
Viewmodel.__index = Viewmodel

type _Viewmodel = types.Viewmodel & {
    arms: types.Arms,
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
    self.model:PivotTo(currentCamera.CFrame)
end

function Viewmodel.Update(self: _Viewmodel)
    self.model:PivotTo(currentCamera.CFrame)
    self.arms:Update()
end

return Viewmodel
