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

---Formats `atlas` to be displayed in-game using square dimensions. This differs from `GetTextureString` in that atlases use filenames rather than ID numbers to render
---@param atlas string the filename or atlas alias for the texture to render
---@param dim? number The value to be used for the height & width of the texture. Default value is `15`
---@return string text
function AddOn.GetAtlasString(atlas, dim)
    local size = 15
    if dim and type(dim) == "number" then
        size = dim
    end
    return "|A:"..atlas..":"..size..":"..size.."|a"
end

---@param speciesID number ID for the pet species
---@return number owned
---@return number limit
function AddOn.GetPetOwnedAndLimitCount(speciesID)
    local owned, limit
    if speciesID then
        owned, limit = C_PetJournal.GetNumCollectedInfo(speciesID)
    else
        owned, limit = 0, 0
    end

    return owned or 0, limit or 0
end

---@param reward RewardData
---@return boolean isOwned
function AddOn.IsItemOwned(reward)
    local isOwned = false
    if reward.type == "Recipe" then
        local recipeInfo = C_TradeSkillUI.GetRecipeInfo(reward.associatedID)
        isOwned = recipeInfo and recipeInfo.learned or false
    elseif reward.type == "Profession" then
        isOwned = C_QuestLog.IsQuestFlaggedCompleted(reward.associatedID)
    elseif reward.type == "Mount" then
        isOwned = select(11, C_MountJournal.GetMountInfoByID(reward.associatedID))
    elseif reward.type == "Cosmetic" then
        local tooltip = C_TooltipInfo.GetItemByID(reward.id)
        if tooltip and tooltip.lines then
            for _, data in ipairs(tooltip.lines) do
                if data.type == 26 or data.leftText:lower() == ERR_COSMETIC_KNOWN:lower() then
                    isOwned = true
                    break
                end
            end
        end
    elseif reward.type == "Toy" then
        isOwned = PlayerHasToy(reward.id)
    elseif reward.type == "Pet" then
        local owned = AddOn.GetPetOwnedAndLimitCount(reward.associatedID)
        isOwned = owned > 0
    elseif reward.type == "Quest" then
        isOwned = C_QuestLog.IsQuestFlaggedCompleted(reward.id)
    elseif reward.type == "Decor" then
        local decor = C_HousingCatalog.GetCatalogEntryInfoByItem(reward.id, true)
        isOwned = decor and decor.quantity and decor.numPlaced and (decor.quantity + decor.numPlaced > 0) or false
    end
    -- Is an isOwned for "Gear" necessary?
    return isOwned
end

function AddOn:GetExpansionDataAndCache()
    if self.selectedExpansion == LE_EXPANSION_MIDNIGHT then
        return self.MidnightData, self.MidnightCache
    elseif self.selectedExpansion == LE_EXPANSION_WAR_WITHIN then
        return self.WarWithinData and self.WarWithinData or {}, self.WarWithinCache and self.WarWithinCache or {}
    elseif self.selectedExpansion == LE_EXPANSION_DRAGONFLIGHT then
        return self.DragonflightData and self.DragonflightData or {}, self.DragonflightCache and self.DragonflightCache or {}
    elseif self.selectedExpansion == LE_EXPANSION_SHADOWLANDS then
        return self.ShadowlandstData and self.ShadowlandstData or {}, self.ShadowlandstCache and self.ShadowlandstCache or {}
    end
end
