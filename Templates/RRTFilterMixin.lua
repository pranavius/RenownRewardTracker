---@type RenownRewardTracker
local AddOn = select(2, ...)

RRT_DB = RRT_DB or AddOn.DatabaseDefaults

---@class ListFilter
RRTFilterMixin = {}

RRTFilterMixin.visibleAtlas = "GM-icon-visible-hover"
RRTFilterMixin.hiddenAtlas = "GM-icon-visibleDis-hover"

function RRTFilterMixin:OnLoad()
    self.Desc:SetText(self.label)
    if self.toggleName and strtrim(self.toggleName) ~= "" and RRT_DB.toggles[self.toggleName] ~= nil then
        if RRT_DB.toggles[self.toggleName] then self:ShowEnabledState() else self:ShowDisabledState() end
    else
        -- Initialize filter with "visible" or "enabled" texture
        self:ShowEnabledState()
    end
end

function RRTFilterMixin:OnClick()
    RRT_DB.toggles[self.toggleName] = not RRT_DB.toggles[self.toggleName]
    if RRT_DB.toggles[self.toggleName] then self:ShowEnabledState() else self:ShowDisabledState() end
    AddOn:UpdateListContents()
    RenownRewardTracker:SetToggleAllButtonText()
end

function RRTFilterMixin:ShowEnabledState()
    self.Icon:SetAtlas(self.visibleAtlas)
end

function RRTFilterMixin:ShowDisabledState()
    self.Icon:SetAtlas(self.hiddenAtlas)
end