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
    self:CreateRRTFrame()

    EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    EventFrame:RegisterEvent("ZONE_CHANGED")
    EventFrame:RegisterEvent("QUEST_ACCEPTED")
    EventFrame:RegisterEvent("QUEST_COMPLETE")
    EventFrame:RegisterEvent("MAJOR_FACTION_RENOWN_LEVEL_CHANGED")
    EventFrame:RegisterEvent("COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED")
    DebugPrint("Initialized")
end

SLASH_RRT1 = "/renownrewardtracker"
SLASH_RRT2 = "/rrt"
SlashCmdList["RRT"] = function(msg)
    if msg:lower() == "debug" then
        AddOn.debug = not AddOn.debug
        local color = AddOn.debug and UNCOMMON_GREEN_COLOR or ERROR_COLOR
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RRT:"), "Debug mode " .. color:WrapTextInColorCode(AddOn.debug and "enabled" or "disabled"))
    else
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RRT:"), "Usage:")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("/rrt debug"), "Toggle debug mode")
    end
end

function AddOn:CreateRRTFrame()
    local frame = CreateFrame("Frame", "RenownRewardTracker", UIParent)
    frame:SetPoint("TOP", UIParent, "TOP", 0, -50)
    frame:SetSize(self.WINDOW_MIN_WIDTH, self.WINDOW_MIN_HEIGHT)
    frame:EnableMouse(true)
    frame:SetMovable(true)
    frame:SetResizable(true)
    frame:SetResizeBounds(self.WINDOW_MIN_WIDTH, self.WINDOW_MIN_HEIGHT, self.WINDOW_MAX_WIDTH, self.WINDOW_MAX_HEIGHT)

    -- Allow resizing the frame (hold Shift to move instead)
    frame:RegisterForDrag("LeftButton")
    frame:HookScript("OnDragStart", function(f) f:StartMoving() end)
    frame:HookScript("OnDragStop", function(f) f:StopMovingOrSizing() end)

    -- Add Blizzard's resize handle in the bottom-right corner
    frame.ResizeHandle = CreateFrame("Button", nil, frame, "PanelResizeButtonTemplate")
    frame.ResizeHandle:SetPoint("BOTTOMRIGHT", 0, 0)
    frame.ResizeHandle:Init(frame, self.WINDOW_MIN_WIDTH, self.WINDOW_MIN_HEIGHT, self.WINDOW_MAX_WIDTH, self.WINDOW_MAX_HEIGHT, 0)
    frame.ResizeHandle:RegisterForDrag()
    frame.ResizeHandle:HookScript("OnDragStart", function() frame:StartSizing() end)
    frame.ResizeHandle:HookScript("OnDragStop", function() frame:StopMovingOrSizing() end)

    frame.Background = frame:CreateTexture("RRTBackground", "BACKGROUND")
    frame.Background:SetAllPoints(frame)
    frame.Background:SetColorTexture(0, 0, 0, 0.8)

    frame.Title = frame:CreateFontString("RRTTitle", "OVERLAY", "GameFontHighlightMedium")
    frame.Title:SetPoint("CENTER", frame, "TOP", 0, -10)
    frame.Title:SetText("Renown Reward Tracker")

    self.Frame = frame
    self:CreateRRTInset()
    self:CreateRRTSidebar()

    self.Frame:Show()
end

function AddOn:CreateRRTInset()
    if not self.Frame then return end

    self.Frame.ScrollFrameInset = CreateFrame("ScrollFrame", "RRTScrollFrameInset", self.Frame, "UIPanelScrollFrameTemplate")
    self.Frame.ScrollFrameInset:SetPoint("TOPLEFT", self.Frame, "TOPLEFT", 5, (self.Frame.Title:GetHeight() * -1) - 10)
    self.Frame.ScrollFrameInset:SetPoint("BOTTOMRIGHT", self.Frame, "BOTTOMRIGHT", -250, 5)
end

function AddOn:CreateRRTSidebar()
    if not self.Frame or not self.Frame.ScrollFrameInset then return end

    self.Frame.Sidebar = CreateFrame("Frame", "RRTSidebar", self.Frame)
    self.Frame.Sidebar:SetPoint("TOPLEFT", self.Frame.ScrollFrameInset.ScrollBar, "TOPRIGHT", 5, 0)
    self.Frame.Sidebar:SetPoint("BOTTOMLEFT", self.Frame.ScrollFrameInset.ScrollBar, "BOTTOMRIGHT", 5, 0)
    self.Frame.Sidebar:SetWidth(200)

    self:CreateExpansionDropdown()
end

function AddOn:PopulateSidebar()
    if not self.Frame or not self.Frame.Sidebar then return end

    local buttonCount = 0
    for id, name in pairs(AddOn.SupportedExpansions) do
        local xpacButton = CreateFrame("Button", "RRTExpansion"..id, self.Frame.Sidebar, "OptionsListButtonTemplate")
        xpacButton:SetPoint("TOPLEFT", self.Frame.Sidebar, "TOPLEFT", 10, -5 +(buttonCount == 0 and 0 or buttonCount * -20))
        xpacButton:SetPoint("TOPRIGHT", self.Frame.Sidebar, "TOPRIGHT", -10, -5 + (buttonCount == 0 and 0 or buttonCount * -20))
        xpacButton:SetText(name)
        xpacButton:HookScript("OnClick", function() DebugPrint(name) end)
        buttonCount = buttonCount + 1
    end
end

function AddOn:CreateExpansionDropdown()
    if not self.Frame or not self.Frame.Sidebar then return end

    local dropdown = CreateFrame("DropdownButton", "RRTExpansionDropdown", self.Frame.Sidebar, "WowStyle1DropdownTemplate")
    dropdown:SetPoint("TOPLEFT", self.Frame.Sidebar, "TOPLEFT", 10, -5)
    dropdown:SetPoint("TOPRIGHT", self.Frame.Sidebar, "TOPRIGHT", -10, -5)

    dropdown:SetupMenu(function(_, rootDescription)
        rootDescription:CreateTitle("Expansion")
        for expansionID, expansionName in pairs(AddOn.SupportedExpansions) do
            rootDescription:CreateRadio(
                expansionName,
                function() return AddOn.SelectedExpansion == expansionID end,
                function()
                    AddOn.SelectedExpansion = expansionID
                    DebugPrint("Selected:", expansionName)
                end,
                expansionID
            )
        end
    end)

    self.Frame.ExpansionDropdown = dropdown
end
