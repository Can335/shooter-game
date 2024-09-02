local types = require(script.Parent.types)

local Gun = {}
Gun.__index = Gun

type _Gun = types.Gun & {
    model: Model,
}

function Gun.new(gunModel: Model): types.Gun
    local model = gunModel:Clone()

    local self = setmetatable({
        model = model,
    }, Gun)

    return self
end

function Gun.GetModel(self: _Gun): Model
    return self.model
end

function Gun.GetHandle(self: _Gun): BasePart
    return self.model.handle
end

function Gun.GetGrip(self: _Gun): BasePart
    return self.model.magazine
end

function Gun.GetDescendants(self: _Gun): { Instance }
    return self.model:GetDescendants()
end

return Gun
