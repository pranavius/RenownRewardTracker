---@class RenownRewardTracker
---@field windowMinWidth number
---@field windowMinHeight number
---@field windowMaxWidth number
---@field windowMaxHeight number
---@field selectedExpansion number Expansion ID for the currently selected expansion (1 = TBC, 2 = WOTLK, etc.)
---@field iconFallbackTextureID number
---@field initialized boolean
---@field debug boolean `true` when debugging mode is enabled, `false` otherwise
---@field SupportedExpansions table<number, string> Table of expansions the AddOn provides renown tracking info for. Keys of the table are expansion IDs with values being expansion name
---@field FactionIconAtlasMap table<number, string>

---@class PanelResizeButton: Button
---@field Init fun(self: PanelResizeButton, target: Frame, minWidth: number, minHeight: number, maxWidth: number, maxHeight: number, rotationDegrees: number)

---@class ExpansionDropdownButton: DropdownButton
---@field SetupMenu fun(self: DropdownButton, generator: function)

---@class MainWindow: Frame
---@field Bg Texture
---@field Title FontString
---@field ResizeHandle PanelResizeButton
---@field ExpansionDropdown ExpansionDropdownButton
---@field CloseButton Button
RenownRewardTracker = {}

---@class ListItemIconDescContainer: Frame
---@field Icon Texture
---@field Desc FontString

---@class ListItem: Frame
---@field isFactionName? boolean
---@field factionID number
---@field Bg Texture
---@field FactionBg Texture
---@field IconDescContainer ListItemIconDescContainer
---@field RewardType FontString

---@class RewardCost
---@field id number
---@field amount number

---@class RewardData
---@field id number
---@field spellID? number
---@field factionID number
---@field renownLevel number
---@field requiredCharacterLevel? number
---@field type "Recipe"|"Profession"|"Mount"|"Cosmetic"|"Toy"|"Pet"|"Quest"|"Decor"|"Gear"|"Other"
---@field currency? RewardCost[]
---@field skillLineID? number
---@field isProfessionKnowledge? boolean

----- Undefined globals (VS Code extension) -----

LE_EXPANSION_MIDNIGHT = 11
RRTScrollBox = {}
RRTScrollBar = {}