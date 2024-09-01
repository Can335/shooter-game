local types = require(script.Parent.Parent.types)

local Arms = {}
Arms.__index = Arms

type _Arms = types.Arms & {
    model: Model,
    gun: types.Gun,
}

function Arms.new(model: Model, gun: types.Gun)
    local self = setmetatable({
        model = model,
        gun = gun,
    }, Arms)

    return self
end

function Arms.Update(self: _Arms)
end

return Arms
