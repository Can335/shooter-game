local InventorySlots = {}

local ContextActionService = game:GetService("ContextActionService")

--TYPES

type AcceptedTypes = "PRimary" | "Grenade" | "Melee" | "Secondary" 
type Inventory = {AcceptedTypes}
type inventoryorder = { }

--TYPES

InventorySlots.Settings = {

MaxSlots = 5,




}

return InventorySlots