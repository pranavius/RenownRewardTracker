---@type RenownRewardTracker
local AddOn = select(2, ...)

---@class ListFilter
RRTFilterMixin = {}

RRTFilterMixin.visibleAtlas = "GM-icon-visible-hover"
RRTFilterMixin.visibleAtlasPressed = "GM-icon-visible-pressed"
RRTFilterMixin.hiddenAtlas = "GM-icon-visibleDis-hover"
RRTFilterMixin.hiddenAtlasPressed = "GM-icon-visibleDis-pressed"

function RRTFilterMixin:OnLoad()
    self.Desc:SetText(self.label)
    if self.toggleName and strtrim(self.toggleName) ~= "" and RRT_DB and RRT_DB.toggles[self.toggleName] ~= nil then
        if RRT_DB.toggles[self.toggleName] then self:SetButtonEnabled() else self:SetButtonDisabled() end
    else
        -- Initialize filter with "visible" or "enabled" texture
        self:SetButtonEnabled()
    end
    
    self.Toggle:HookScript("OnClick", function()
        RRT_DB.toggles[self.toggleName] = not RRT_DB.toggles[self.toggleName]
        if RRT_DB.toggles[self.toggleName] then self:SetButtonEnabled() else self:SetButtonDisabled() end
        AddOn.ApplyFilters()
    end)
end

function RRTFilterMixin:SetButtonEnabled()
    self.Toggle:SetNormalAtlas(self.visibleAtlas)
    self.Toggle:SetHighlightAtlas(self.visibleAtlas)
    self.Toggle:SetPushedAtlas(self.visibleAtlasPressed)
end

function RRTFilterMixin:SetButtonDisabled()
    self.Toggle:SetNormalAtlas(self.hiddenAtlas)
    self.Toggle:SetHighlightAtlas(self.hiddenAtlas)
    self.Toggle:SetPushedAtlas(self.hiddenAtlasPressed)
end