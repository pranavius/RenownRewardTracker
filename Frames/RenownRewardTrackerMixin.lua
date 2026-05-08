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

    self.RefreshButton:HookScript("OnClick", function() AddOn:UpdateListContents(true) end)
    self.RefreshButton:HookScript("OnEnter", function(btn)
        GameTooltip:SetOwner(btn, "ANCHOR_TOP")
        GameTooltip:SetText("Refresh List")
        GameTooltip:Show()
    end)
    self.RefreshButton:HookScript("OnLeave", function() GameTooltip:Hide() end)

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

    self:SetToggleAllButtonText()
    self.FiltersContainer.ToggleAllFilters:HookScript("OnClick", function() self:HandleToggleAllClick() end)
    self.FiltersContainer.Checkbox:SetChecked(RRT_DB.toggles.ignoreAll or false)
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
    if AddOn.initialized then
        local rewardData = AddOn:GetExpansionDataAndCache()
        AddOn:CacheQuestNames(rewardData)
        AddOn:UpdateListContents()
    end
end

function RenownRewardTrackerMixin:OnDragStart()
    self:StartMoving()
end

function RenownRewardTrackerMixin:OnDragStop()
    self:StopMovingOrSizing()
end

function RenownRewardTrackerMixin:SetToggleAllButtonText()
    local areAllTogglesShown = true
    for k, v in pairs(RRT_DB.toggles) do
        if k ~= "ignoreAll" and not v then
            areAllTogglesShown = false
            break
        end
    end

    self.FiltersContainer.ToggleAllFilters.Text:SetText(areAllTogglesShown and "Apply All Filters" or "Remove All Filters")
end

function RenownRewardTrackerMixin:HandleToggleAllClick()
    local toggleState = self.FiltersContainer.ToggleAllFilters.Text:GetText() == "Remove All Filters"
    -- DB state updates
    for k, v in pairs(RRT_DB.toggles) do
        if k ~= "ignoreAll" then RRT_DB.toggles[k] = toggleState end
    end
    -- Visual updates (filters)
    for _, child in ipairs({ self.FiltersContainer:GetChildren() }) do
        if child.toggleName then child:OnLoad() end
    end
    -- Visual update (ToggleAllFilters button text)
    self:SetToggleAllButtonText()
    -- Visual update (list)
    AddOn:UpdateListContents()
end