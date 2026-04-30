---@class ListFilter
RRTFilterMixin = {}

RRTFilterMixin.visibleAtlas = "GM-icon-visible-hover"
RRTFilterMixin.visibleAtlasPressed = "GM-icon-visible-pressed"
RRTFilterMixin.hiddenAtlas = "GM-icon-visibleDis-hover"
RRTFilterMixin.hiddenAtlasPressed = "GM-icon-visibleDis-pressed"

function RRTFilterMixin:OnLoad()
    -- Initialize filter with "visible" or "enabled" texture
    self:SetButtonEnabled()
    self.Desc:SetText(self.label)
end

function RRTFilterMixin:SetButtonEnabled()
    self.Toggle:SetNormalAtlas(self.visibleAtlas)
    -- self.Toggle:SetHighlightAtlas(self.visibleAtlas)
    self.Toggle:SetPushedAtlas(self.visibleAtlasPressed)
end

function RRTFilterMixin:SetButtonDisabled()
    self.Toggle:SetNormalAtlas(self.hiddenAtlas)
    -- self.Toggle:SetHighlightAtlas(self.hiddenAtlas)
    self.Toggle:SetPushedAtlas(self.hiddenAtlasPressed)
end