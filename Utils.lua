local name, AddOn = ...
---@class RenownRewardTracker: AceAddon
AddOn = LibStub("AceAddon-3.0"):GetAddon(name)
-- Debugging on Dwarph
AddOn.debug = UnitFullName("player") == "Dwarph" and select(2, UnitFullName("player")) == "Thrall"

---Prints the desired text if the AddOn is in debugging mode. This is just a wrapper around the standard `print` function.
---@vararg string|number
---@see print
function AddOn.DebugPrint(...)
    if AddOn.debug then
		print(WrapTextInColorCode("[RRT Debug]", HEIRLOOM_BLUE_COLOR:GenerateHexColor()), ...)
	end
end