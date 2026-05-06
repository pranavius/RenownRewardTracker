---@class RenownRewardTracker
local AddOn = select(2, ...)

RRT_DB = RRT_DB or AddOn.DatabaseDefaults

---@type MainWindow
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

    self.FiltersContainer.Checkbox.Text:SetText("Show Everything (Ignores Filters)")
    if RRT_DB.toggles.ignoreAll == nil then RRT_DB.toggles.ignoreAll = false end
    self.FiltersContainer.Checkbox:SetChecked(RRT_DB.toggles.ignoreAll)
    self.FiltersContainer.Checkbox:HookScript("OnClick", function(cb)
        local isChecked = cb:GetChecked()
        RRT_DB.toggles.ignoreAll = isChecked
        AddOn.DebugPrint("Ignore all toggles:", HEIRLOOM_BLUE_COLOR:WrapTextInColorCode(tostring(RRT_DB.toggles.ignoreAll)))
        AddOn:UpdateListContents()
    end)
    self.FiltersContainer.Checkbox:HookScript("OnEnter", function(cb)
        GameTooltip:SetOwner(cb, "ANCHOR_BOTTOMRIGHT")
        GameTooltip:AddLine("Includes rewards past your current renown level, collected items, completed quests, etc.", nil, nil, nil, true)
        GameTooltip:Show()
    end)
    self.FiltersContainer.Checkbox:HookScript("OnLeave", function() GameTooltip:Hide() end)
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