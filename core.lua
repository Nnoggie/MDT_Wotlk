local _, module = ...
local MDT = MDT
local db

module.moduleName = "Wrath of the Lich King"

function module:OnInitialize()
  db = MDT:GetDB()
  module.L = MDT.L
  module:AddLocales()
  -- search if value "Modules" exists in MDT.seasonList, add if not
  if not tContains(MDT.seasonList, module.moduleName) then
    tinsert(MDT.seasonList, module.moduleName)
  end
  tinsert(MDT.dungeonSelectionToIndex,
    { 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 80, 81 })
end

MDT:RegisterModule(module.moduleName, module)
