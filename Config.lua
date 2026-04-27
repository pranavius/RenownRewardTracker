---@class RenownRewardTracker
local AddOn = select(2, ...)

RRT_WINDOW_MIN_WIDTH = 700
RRT_WINDOW_MIN_HEIGHT = 400
RRT_WINDOW_MAX_WIDTH = 1400
RRT_WINDOW_MAX_HEIGHT = 800

AddOn.SupportedExpansions = {
    [LE_EXPANSION_MIDNIGHT] = "Midnight",
    [LE_EXPANSION_WAR_WITHIN] = "The War Within",
    [LE_EXPANSION_DRAGONFLIGHT] = "Dragonflight",
    [LE_EXPANSION_SHADOWLANDS] = "Shadowlands"
}

AddOn.SelectedExpansion = LE_EXPANSION_MIDNIGHT