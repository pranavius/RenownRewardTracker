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
        DebugPrint(event)
    end
end)

EventFrame:RegisterEvent("ADDON_LOADED")

RRT_DB = RRT_DB or {}

function AddOn:Initialize()
    EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    EventFrame:RegisterEvent("ZONE_CHANGED")
    EventFrame:RegisterEvent("QUEST_ACCEPTED")
    EventFrame:RegisterEvent("QUEST_COMPLETE")
    EventFrame:RegisterEvent("MAJOR_FACTION_RENOWN_LEVEL_CHANGED")
    EventFrame:RegisterEvent("COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED")
    DebugPrint("Initialized")
    self:CreateMidnightCache()

    RRTScrollBox:InitializeScrollView()
    self.DataProvider = CreateDataProvider(AddOn.MidnightData)
    self.ScrollView:SetDataProvider(self.DataProvider)
end

SLASH_RRT1 = "/renownrewardtracker"
SLASH_RRT2 = "/rrt"
SlashCmdList["RRT"] = function(msg)
    if msg:lower() == "debug" then
        AddOn.debug = not AddOn.debug
        local color = AddOn.debug and UNCOMMON_GREEN_COLOR or ERROR_COLOR
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RRT:"), "Debug mode " .. color:WrapTextInColorCode(AddOn.debug and "enabled" or "disabled"))
    else
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RenownRewardTracker"), "Usage:")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("    /rrt debug:"), "Toggle debug mode")
    end
end
