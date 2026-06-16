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
---@field ResetFrameState fun()

---@class FactionHeaderToggleButton: Button
---@field Text FontString

---@class FactionHeader: Frame
---@field Bg Texture
---@field FactionName FontString
---@field QuartermasterPin Button
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
---@field other boolean

---@class RenownRewardTrackerDatabase
---@field toggles DatabaseToggles
---@field showAll boolean
---@field factionVisibility table<number, boolean>
---@field debug boolean
---@field minimap LibDBIcon.button.DB | nil

---@class CachedItemData
---@field itemName string
---@field iconID number
---@field armorClassID? number
---@field equipLoc? string
---@field rewardItemLevel? number

---@class RewardCost
---@field id number
---@field amount number
---@field isItem boolean

---@class RewardData
---@field id number
---@field associatedID? number
---@field factionID number
---@field renownLevel number
---@field requiredCharacterLevel? number
---@field type "Recipe"|"Profession"|"Mount"|"Cosmetic"|"Toy"|"Pet"|"Quest"|"Decor"|"Gear"|"Other"
---@field otherCompletionType? "Quest"|"Item"
---@field currency? RewardCost[]
---@field bonusIDs? number[]
---@field profSpellID? number

---@class VendorPinData
---@field mapID number
---@field x number
---@field y number
---@field tooltipText? string

---@class FactionHeaderData
---@field factionID number
---@field isFactionHeader boolean

---@class CurrencyTooltipData
---@field icon number
---@field name string
---@field amount number
---@field obtained number

---@alias Currencies table<string, string|number|table<string, number>>

---@class RenownRewardTracker
---@field windowMinWidth number
---@field windowMinHeight number
---@field windowMaxWidth number
---@field windowMaxHeight number
---@field selectedExpansion number
---@field iconFallbackTextureID number
---@field playerClassfile string
---@field initialized boolean
---@field debug boolean
---@field SupportedExpansions table<number, string>
---@field Faction Faction
---@field FactionIconAtlasMap table<Faction, string>
---@field MidnightData RewardData[]
---@field MidnightCache CachedItemData[]
---@field WarWithinData RewardData[]
---@field WarWithinCache CachedItemData[]
---@field DragonflightData RewardData[]
---@field DragonflightCache CachedItemData[]
---@field ShadowlandsData RewardData[]
---@field ShadowlandsCache CachedItemData[]
---@field QuestNameCache table<number, string?>
---@field DataProvider DataProviderMixin
---@field ScrollView any
---@field Currencies Currencies