export type Gun = {
    GetHandle: (self: Gun) -> BasePart,
    GetDescendants: (self: Gun) -> { Instance },
}

export type Viewmodel = {
    Enable: (self: Viewmodel) -> (),
    Update: (self: Viewmodel) -> (),
}

export type Arms = {
    Enable: (self: Arms) -> (),
    Update: (self: Arms) -> (),
    EquipGun: (self: Arms, gun: Gun) -> (),
}

return nil
