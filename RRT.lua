---@class RenownRewardTracker
local AddOn = select(2, ...)

local DebugPrint = AddOn.DebugPrint

local EventFrame = CreateFrame("Frame")

EventFrame:HookScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        if ... == "RenownRewardTracker" then
            AddOn:Initialize()
            self:UnregisterEvent("ADDON_LOADED")
        end
    else
        AddOn:UpdateListContents()
        DebugPrint(event)
    end
end)

EventFrame:RegisterEvent("ADDON_LOADED")

RRT_DB = RRT_DB or AddOn.DatabaseDefaults

function AddOn:Initialize()
    self.playerClassfile = select(2, UnitClass("player"))
    self:CreateMidnightCache()
    EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    EventFrame:RegisterEvent("BAG_UPDATE")
    EventFrame:RegisterEvent("QUEST_COMPLETE")
    EventFrame:RegisterEvent("MAJOR_FACTION_RENOWN_LEVEL_CHANGED")
    EventFrame:RegisterEvent("COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED")
    DebugPrint("Initialized")
    self.initialized = true

    RRTScrollBox:InitializeScrollView()
end

SLASH_RRT1 = "/renownrewardtracker"
SLASH_RRT2 = "/rrt"
SlashCmdList["RRT"] = function(msg)
    if msg:lower() == "debug" then
        RRT_DB.debug = not RRT_DB.debug
        local color = RRT_DB.debug and UNCOMMON_GREEN_COLOR or ERROR_COLOR
        local debugModeState = RRT_DB.debug and "enabled" or "disabled"
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RRT:"), "Debug mode " .. color:WrapTextInColorCode(debugModeState))
    elseif msg:lower() == "help" then
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RenownRewardTracker"), "Usage:")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("    /rrt debug:"), "Toggle debug mode")
    elseif not RenownRewardTracker:IsShown() then RenownRewardTracker:Show()
    elseif RenownRewardTracker:IsShown() then RenownRewardTracker:Hide()
    end
end

function AddOn:UpdateListContents()
    if not self.initialized then return end
    self.DebugPrint("Updating list contents")

    ---@type (RewardData|FactionHeaderData)[]
    local listContents = {}
    ---@type table<number, boolean>
    local listedFactions = {}
    local dataSource = self:GetExpansionDataAndCache()
    for _, reward in ipairs(dataSource) do
        ---@cast reward RewardData
        if not listedFactions[reward.factionID] then
            listedFactions[reward.factionID] = true
            tinsert(listContents, { factionID = reward.factionID, isFactionHeader = true })
        end
        if self.ShouldRewardBeListed(reward) and RRT_DB.factionVisibility[reward.factionID] then
            tinsert(listContents, reward)
        end
    end

    self.DataProvider = CreateDataProvider(listContents)
    self.ScrollView:SetDataProvider(self.DataProvider)
end

---Determine if a reward should appear for the current character
---@param reward RewardData
---@return boolean `true` if reward should be shown, `false` otherwise
function AddOn.ShouldRewardBeListed(reward)
    -- Show everything when toggles.ignoreAll is enabled
    if RRT_DB.toggles.ignoreAll then return true end

    if not RRT_DB.toggles[reward.type:lower()] then return false end
    
    if reward.requiredCharacterLevel then return UnitLevel("player") >= reward.requiredCharacterLevel end

    local currentRenownLevel = C_MajorFactions.GetCurrentRenownLevel(reward.factionID)
    if currentRenownLevel < reward.renownLevel then return false end
    
    if reward.profSpellID and not C_SpellBook.IsSpellKnown(reward.profSpellID) then return false end

    if reward.type == "Gear" then
        local itemCache = select(2, AddOn:GetExpansionDataAndCache())
        local cacheData = itemCache[reward.id]
        if cacheData and cacheData.armorClassID ~= AddOn.ArmorSubclasses.Misc and cacheData.armorClassID ~= AddOn.ClassFileArmorTypeMap[AddOn.playerClassfile] then
            return false
        end
    end

    return not AddOn.IsItemOwned(reward)
end
