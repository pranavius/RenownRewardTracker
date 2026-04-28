---@class RenownRewardTracker
---@field SupportedExpansions table<number, string> Table of expansions the AddOn provides renown tracking info for. Keys of the table are expansion IDs with values being expansion name
---@field SelectedExpansion number Expansion ID for the currently selected expansion (1 = TBC, 2 = WOTLK, etc.)
---@field debug boolean `true` when debugging mode is enabled, `false` otherwise
---@field DebugPrint fun(...: string|number|boolean)

---@class PanelResizeButton: Button
---@field Init fun(self: PanelResizeButton, target: Frame, minWidth: number, minHeight: number, maxWidth: number, maxHeight: number, rotationDegrees: number)

---@class ExpansionDropdownButton: DropdownButton
---@field SetupMenu fun(self: DropdownButton, generator: function)

---@class RRTMainMixin: Frame
---@field Bg Texture
---@field Title FontString
---@field ResizeHandle PanelResizeButton
---@field ExpansionDropdown ExpansionDropdownButton

----- Undefined globals -----

LE_EXPANSION_MIDNIGHT = 11

RRTScrollBar = {}