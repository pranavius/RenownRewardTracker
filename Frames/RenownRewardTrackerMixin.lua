---@class RenownRewardTracker
local AddOn = select(2, ...)

---@class MainWindow
RenownRewardTrackerMixin = {}

function RenownRewardTrackerMixin:OnLoad()
    tinsert(UISpecialFrames, self:GetName())
    self.ResizeHandle:Init(self, AddOn.windowMinWidth, AddOn.windowMinHeight, AddOn.windowMaxWidth, AddOn.windowMaxHeight, 0)
    self.ResizeHandle:HookScript("OnDragStart", function() self:StartSizing() end)
    self.ResizeHandle:HookScript("OnDragStop", function() self:StopMovingOrSizing() end)
    self.CloseButton:SetNormalAtlas("common-icon-redx")
    self.CloseButton:SetHighlightAtlas("common-icon-redx")
    self.CloseButton:SetPushedAtlas("common-icon-redx")
    self.Title:SetText("Renown Reward Tracker")

    local function isSelectedExpansion(id) return id == AddOn.selectedExpansion end
    local function setSelectedExpansion(id)
        AddOn.selectedExpansion = id
        AddOn:UpdateListContents()
    end

    self.ExpansionDropdown:SetupMenu(function(_, rootDescription)
        rootDescription:CreateTitle("Expansion")
        for id, name in pairs(AddOn.SupportedExpansions) do
            rootDescription:CreateRadio(name, isSelectedExpansion, setSelectedExpansion, id)
        end
    end)
end

function RenownRewardTrackerMixin:OnShow()
    if AddOn.initialized then AddOn:UpdateListContents() end
end

function RenownRewardTrackerMixin:OnDragStart()
    self:StartMoving()
end

function RenownRewardTrackerMixin:OnDragStop()
    self:StopMovingOrSizing()
end