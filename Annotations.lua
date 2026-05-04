--region Templates
---@class ListItemIconDescContainer: Frame
---@field Icon Texture
---@field Desc FontString

---@class CurrencyDisplayButton: Button
---@field Text FontString

---@class ListItem: Frame
---@field Bg Texture
---@field IconDescContainer ListItemIconDescContainer
---@field RewardType FontString
---@field CurrencyDisplay CurrencyDisplayButton

---@class FactionHeaderToggleButton: Button
---@field Text FontString

---@class FactionHeader: Frame
---@field Bg Texture
---@field FactionName FontString
---@field ToggleButton FactionHeaderToggleButton

---@class ListFilter: Button
---@field visibleAtlas string
---@field hiddenAtlas string
---@field label string
---@field toggleName string
---@field Icon Texture
---@field Desc FontString
--endregion

--region Frames
---@class PanelResizeButton: Button
---@field Init fun(self: PanelResizeButton, target: Frame, minWidth: number, minHeight: number, maxWidth: number, maxHeight: number, rotationDegrees: number)

---@class ExpansionDropdownButton: DropdownButton
---@field SetupMenu fun(self: DropdownButton, generator: function)

---@class FiltersCheckButton: CheckButton
---@field Text FontString

---@class FiltersContainer: Frame
---@field Bg Texture
---@field ToggleMounts ListFilter
---@field ToggleDecor ListFilter
---@field ToggleToys ListFilter
---@field TogglePets ListFilter
---@field ToggleRecipes ListFilter
---@field ToggleProfessions ListFilter
---@field ToggleCosmetics ListFilter
---@field ToggleQuests ListFilter
---@field ToggleGear ListFilter
---@field Checkbox FiltersCheckButton

---@class ScrollBox: Frame, ScrollBoxListMixin

---@class MainWindow: Frame
---@field Bg Texture
---@field Title FontString
---@field CloseButton Button
---@field ResizeHandle PanelResizeButton
---@field ExpansionDropdown ExpansionDropdownButton
---@field FiltersContainer FiltersContainer
---@field ScrollBox ScrollBox
---@field ScrollBar MinimalScrollBar
--endregion

---@class DatabaseToggles
---@field mount boolean
---@field recipe boolean
---@field profession boolean
---@field cosmetic boolean
---@field toy boolean
---@field pet boolean
---@field quest boolean
---@field decor boolean
---@field gear boolean
---@field ignoreAll boolean

---@class RenownRewardTrackerDatabase
---@field toggles DatabaseToggles
---@field factionVisibility table<number, boolean>
---@field debug boolean

---@class CachedItemData
---@field itemName string
---@field iconID number
---@field armorClassID? number
---@field equipLoc? string
---@field rewardItemLevel? number

---@class RewardCost
---@field id number
---@field amount number

---@class RewardData
---@field id number
---@field associatedID? number
---@field factionID number
---@field renownLevel number
---@field requiredCharacterLevel? number
---@field type "Recipe"|"Profession"|"Mount"|"Cosmetic"|"Toy"|"Pet"|"Quest"|"Decor"|"Gear"|"Other"
---@field currency? RewardCost[]
---@field profSpellID? number

---@class FactionHeaderData
---@field factionID number
---@field isFactionHeader boolean

---@class CurrencyTooltipData
---@field icon number
---@field name string
---@field amount number
---@field obtained number

---@class RenownRewardTracker
---@field windowMinWidth number
---@field windowMinHeight number
---@field windowMaxWidth number
---@field windowMaxHeight number
---@field selectedExpansion number Expansion ID for the currently selected expansion (1 = TBC, 2 = WOTLK, etc.)
---@field iconFallbackTextureID number
---@field playerClassfile string
---@field initialized boolean
---@field debug boolean `true` when debugging mode is enabled, `false` otherwise
---@field SupportedExpansions table<number, string> Table of expansions the AddOn provides renown tracking info for. Keys of the table are expansion IDs with values being expansion name
---@field FactionIconAtlasMap table<number, string>
---@field MidnightCache CachedItemData[]