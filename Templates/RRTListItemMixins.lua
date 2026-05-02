---@class ListItem
RRTListItemMixin = {}

function RRTListItemMixin:ResetFrameState()
    self.isFactionName = false
    self.Bg:Hide()
    self.FactionBg:Hide()
    self.IconDescContainer:ResetFrameState()
    self.RewardType:SetText("")
    self.FactionHeader:SetText("")
    self.CurrencyDisplay.Text:SetText("")
    self.CurrencyDisplay:SetScript("OnClick", nil)
    self.CurrencyDisplay:SetScript("OnEnter", nil)
    self.CurrencyDisplay:SetScript("OnLeave", nil)
end

---@class ListItemIconDescContainer
RRTIconDescContainerMixin = {}

function RRTIconDescContainerMixin:ResetFrameState()
    self.Icon:SetTexture(nil)
    self.Desc:SetText("")
    self.Icon:SetScript("OnEnter", nil)
    self.Icon:SetScript("OnLeave", nil)
end
