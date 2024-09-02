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

function Arms.Enable(self: _Arms)
    self:EquipGun(self.gun)
end

function Arms.EquipGun(self: _Arms, gun: types.Gun)
    local handle = gun:GetHandle()
    local grip = gun:GetGrip()

    for _, v: BasePart in ipairs(gun:GetDescendants()) do
        if v:IsA("BasePart") and v ~= handle then
            local motor = Instance.new("Motor6D")
            motor.Name = v.Name
            motor.Part0 = handle
            motor.Part1 = v
            motor.C0 = handle.CFrame:Inverse() * v.CFrame
            motor.Parent = handle
        end
    end

    self.gun = gun

    gun:GetModel().Parent = self.model

    self.model.RightArm.handle.Part1 = handle
    self.model.RightArm.handle.C1 = CFrame.new(Vector3.new(0, -0.5, 1.5))
        * CFrame.Angles(math.rad(90), 0, 0)

    -- local gripOffset = grip.Position - self.model.LeftArm.Position
    -- self.model.LeftArm.CFrame = CFrame.new(gripOffset, grip.Position)
end

function Arms.Update(self: _Arms)
    local grip = self.gun:GetGrip()
    local gripOffset = grip.Position - self.model.LeftArm.Position
    local newCframe = CFrame.new(gripOffset, grip.Position)
    self.model.HumanoidRootPart.LeftArm.C1 = newCframe * self.model.HumanoidRootPart.LeftArm.C1:Inverse()
end

return Arms
