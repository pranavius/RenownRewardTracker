local name, AddOn = ...
---@class RenownRewardTracker: AceAddon, AceEvent-3.0
AddOn = LibStub("AceAddon-3.0"):NewAddon(name, "AceEvent-3.0")

AddOn.WINDOW_MIN_WIDTH = 200
AddOn.WINDOW_MIN_HEIGHT = 150
AddOn.WINDOW_MAX_WIDTH = 800
AddOn.WINDOW_MAX_HEIGHT = 600

AddOn.Renowns = {
    ["The War Within"] = {
        ["Council of Dornogal"] = 0,
        ["The Assembly of the Deeps"] = 0,
        ["Hallowfall Arathi"] = 0,
        ["The Severed Threads"] = 0,
        ["The Cartels of Undermine"] = 0,
        ["Flame's Radiance"] = 0
    }
}