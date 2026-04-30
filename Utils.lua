---@class RenownRewardTracker
local AddOn = select(2, ...)

---Prints the desired text if the AddOn is in debugging mode. This is just a wrapper around the standard `print` function.
---@param ... string|number|boolean
---@see print
function AddOn.DebugPrint(...)
    if AddOn.debug then
		print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("[RRT Debug]"), ...)
	end
end

---Returns a string that renders `texture`. Can be combined with other text
---@param texture number the ID for the texture to render
---@param dim? number The value to be used for the height & width of the texture. Default value is `20`
---@return string text
function AddOn.GetTextureString(texture, dim)
    local size = 20
    if dim and type(dim) == "number" then
        size = dim
    end
    return "|T"..texture..":"..size..":"..size.."|t"
end
