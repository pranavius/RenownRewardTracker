---@type RenownRewardTracker
local AddOn = select(2, ...)

---@class ListItem
RRTListRewardMixin = {}

---Resets visibility and scripts for all elements within the frame that can change based on the provided data
function RRTListRewardMixin:ResetFrameState()
    self.isFactionName = false
    self.Bg:Hide()
    self.IconDescContainer.Icon:SetTexture(nil)
    self.IconDescContainer.Desc:SetText("")
    self.IconDescContainer.Icon:SetScript("OnEnter", nil)
    self.IconDescContainer.Icon:SetScript("OnLeave", nil)
    self.RewardType:SetText("")
    self.CurrencyDisplay.Text:SetText("")
    self.CurrencyDisplay:SetScript("OnClick", nil)
    self.CurrencyDisplay:SetScript("OnEnter", nil)
    self.CurrencyDisplay:SetScript("OnLeave", nil)
end
