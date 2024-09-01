local types = require(script.Parent.types)

local Gun = {}
Gun.__index = Gun

function Gun.new(): types.Gun
    local self = setmetatable({}, Gun)

    return self
end

return Gun
