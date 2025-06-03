local name, AddOn = ...
print("name:", name)
---@class RenownRewardTracker: AceAddon, AceEvent-3.0
AddOn = LibStub("AceAddon-3.0"):GetAddon(name)

local DebugPrint = AddOn.DebugPrint

local sOptions = {
    type ="group",
    handler = AddOn,
    args = {
        debug = {
            type = "execute",
            name = "debug",
            desc = "Toggle debug mode",
            func = function()
                AddOn.debug = not AddOn.debug
                local color = AddOn.debug and UNCOMMON_GREEN_COLOR or ERROR_COLOR
                print(WrapTextInColorCode("RRT:", HEIRLOOM_BLUE_COLOR:GenerateHexColor()), "Debug mode "..WrapTextInColorCode(AddOn.debug and "enabled" or "disabled", color:GenerateHexColor()))
                end
        }
    }
}

local sCmds = { "renownrewardtracker", "rrt" }

function AddOn:OnInitialize()
    local config = LibStub("AceConfig-3.0")
    config:RegisterOptionsTable(name, sOptions, sCmds)

    self:CreateRRTFrame()

    self:RegisterEvent("PLAYER_ENTERING_WORLD", "DummyEventCallback")
    self:RegisterEvent("ZONE_CHANGED", "DummyEventCallback")
    self:RegisterEvent("QUEST_ACCEPTED", "DummyEventCallback")
    self:RegisterEvent("QUEST_COMPLETE", "DummyEventCallback")
    self:RegisterEvent("MAJOR_FACTION_RENOWN_LEVEL_CHANGED", "DummyEventCallback")
    self:RegisterEvent("COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED", "DummyEventCallback")
    DebugPrint("Initialized")
end

function AddOn:DummyEventCallback(event)
    DebugPrint(event)
end

function AddOn:CreateRRTFrame()
    local frame = CreateFrame("Frame", "RenownRewardTracker", UIParent)
    frame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 50, -50)
    frame:SetSize(self.WINDOW_MAX_WIDTH / 2, self.WINDOW_MAX_HEIGHT / 2)
    frame:EnableMouse(true)
    frame:SetMovable(true)
    frame:SetResizable(true)
    frame:SetResizeBounds(self.WINDOW_MIN_WIDTH, self.WINDOW_MIN_HEIGHT, self.WINDOW_MAX_WIDTH, self.WINDOW_MAX_HEIGHT)

    -- Allow resizing the frame (hold Shift to move instead)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", function(self)
        if IsShiftKeyDown() then
            self:StartMoving()
        else
            self:StartSizing()
        end
    end)
    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
    end)

    -- Add Blizzard's resize handle in the bottom-right corner
    frame.ResizeHandle = CreateFrame("Button", nil, frame, "PanelResizeButtonTemplate")
    frame.ResizeHandle:SetPoint("BOTTOMRIGHT", 0, 0)
    frame.ResizeHandle:Init(frame, self.WINDOW_MIN_WIDTH, self.WINDOW_MIN_HEIGHT, self.WINDOW_MAX_WIDTH, self.WINDOW_MAX_HEIGHT, 0)

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

    self.Frame.ScrollFrameInset = CreateFrame("Frame", "RRTScrollFrameInset", self.Frame, "UIPanelScrollFrameTemplate")
    self.Frame.ScrollFrameInset:SetPoint("TOPLEFT", self.Frame, "TOPLEFT", 5, (self.Frame.Title:GetHeight() * -1) - 10)
    self.Frame.ScrollFrameInset:SetPoint("BOTTOMRIGHT", self.Frame, "BOTTOMRIGHT", -250, 5)
end

function AddOn:CreateRRTSidebar()
    if not self.Frame or not self.Frame.ScrollFrameInset then return end

    self.Frame.Sidebar = CreateFrame("Frame", "RRTSidebar", self.Frame, "InsetFrameTemplate")
    self.Frame.Sidebar:SetPoint("TOPLEFT", self.Frame.ScrollFrameInset.ScrollBar, "TOPRIGHT", 5, 0)
    self.Frame.Sidebar:SetPoint("BOTTOMLEFT", self.Frame.ScrollFrameInset.ScrollBar, "BOTTOMRIGHT", 5, 0)
    self.Frame.Sidebar:SetWidth(200)
    
    self:PopulateSidebar()
end

function AddOn:PopulateSidebar()
    if not self.Frame or not self.Frame.Sidebar then return end

    local buttonCount = 0
    for xpac in pairs(AddOn.Renowns) do
        local xpacButton = CreateFrame("Button", "Expansion"..xpac, self.Frame.Sidebar, "OptionsListButtonTemplate")
        xpacButton:SetPoint("TOPLEFT", self.Frame.Sidebar, "TOPLEFT", 10, (buttonCount == 0 and -5 or buttonCount * -20))
        xpacButton:SetPoint("TOPRIGHT", self.Frame.Sidebar, "TOPRIGHT", -10, (buttonCount == 0 and -5 or buttonCount * -20))
        xpacButton:SetText(xpac)
        -- xpacButton:SetHighlightTexture("interface/buttons/ui-panel-button-highlight", "ADD")
        xpacButton:SetScript("OnClick", function() DebugPrint(xpac) end)

    end
end