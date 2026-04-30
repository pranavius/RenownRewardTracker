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
        AddOn.debug = not AddOn.debug
        local color = AddOn.debug and UNCOMMON_GREEN_COLOR or ERROR_COLOR
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RRT:"), "Debug mode " .. color:WrapTextInColorCode(AddOn.debug and "enabled" or "disabled"))
    elseif msg:lower() == "help" then
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RenownRewardTracker"), "Usage:")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("    /rrt debug:"), "Toggle debug mode")
    elseif not RenownRewardTracker:IsShown() then RenownRewardTracker:Show()
    elseif RenownRewardTracker:IsShown() then RenownRewardTracker:Hide()
    end
end

function AddOn:UpdateListContents()
    ---@type RewardData[]
    local listContents = {}
    local seenFactions = {}
    for _, reward in ipairs(self.MidnightData) do
        if self.ShouldRewardBeListed(reward) then
            if not seenFactions[reward.factionID] then
                seenFactions[reward.factionID] = true
                tinsert(listContents, { id = 0, factionID = reward.factionID, type = "Other" })
            end
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
    if reward.requiredCharacterLevel then return UnitLevel("player") >= reward.requiredCharacterLevel end

    local currentRenownLevel = C_MajorFactions.GetCurrentRenownLevel(reward.factionID)
    if currentRenownLevel < reward.renownLevel then return false end

    if reward.type == "Quest" then return not C_QuestLog.IsQuestFlaggedCompleted(reward.id) end
    
    if reward.skillLineID then
        local midnightProfInfo = C_TradeSkillUI.GetProfessionInfoBySkillLineID(reward.skillLineID)
        -- Max Skill Level 0 indicates that the profession is not learned
        if midnightProfInfo.maxSkillLevel == 0 then
            return false
        end
    end

    return true
end
