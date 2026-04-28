---@type RenownRewardTracker
local AddOn = select(2, ...)

AddOn.debug = false

---Prints the desired text if the AddOn is in debugging mode. This is just a wrapper around the standard `print` function.
---@param ... string|number|boolean
---@see print
function AddOn.DebugPrint(...)
    -- if AddOn.debug then
		print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("[RRT Debug]"), ...)
	-- end
end