---@type RenownRewardTracker
local AddOn = select(2, ...)

---@class ListFilter
RRTFilterMixin = {}

RRTFilterMixin.visibleAtlas = "GM-icon-visible-hover"
RRTFilterMixin.hiddenAtlas = "GM-icon-visibleDis-hover"

function RRTFilterMixin:OnLoad()
    self.Desc:SetText(self.label)
    if self.toggleName and strtrim(self.toggleName) ~= "" and RRT_DB and RRT_DB.toggles[self.toggleName] ~= nil then
        if RRT_DB.toggles[self.toggleName] then self:SetButtonEnabled() else self:SetButtonDisabled() end
    else
        -- Initialize filter with "visible" or "enabled" texture
        self:SetButtonEnabled()
    end
end

function RRTFilterMixin:OnClick()
    RRT_DB.toggles[self.toggleName] = not RRT_DB.toggles[self.toggleName]
    if RRT_DB.toggles[self.toggleName] then self:SetButtonEnabled() else self:SetButtonDisabled() end
    AddOn:UpdateListContents()
end

function RRTFilterMixin:SetButtonEnabled()
    self.Icon:SetAtlas(self.visibleAtlas)
end

function RRTFilterMixin:SetButtonDisabled()
    self.Icon:SetAtlas(self.hiddenAtlas)
end