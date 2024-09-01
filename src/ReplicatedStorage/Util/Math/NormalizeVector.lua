local VectorNormalize = {}

VectorNormalize.__index = VectorNormalize
VectorNormalize.__mode = "k"

--This is useful to use for dot products for example to see if the direction of two vectors are similar
--using a dot product and then doing math.acos on it (i think)


function VectorNormalize.NormalizeVector(Vector: Vector3)
    
local Temp = function()
    
local a = Vector.X / Vector.Magnitude
local b = Vector.Y / Vector.Magnitude
local c = Vector.Z / Vector.Magnitude
task.wait()
return a, b, c
end

local a,b,c = Temp()


return setmetatable({a,b,c}, NormalizeVector)
end


return VectorNormalize