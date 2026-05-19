---@type ListItem
RRTListRewardMixin = {}

---Resets visibility and scripts for all elements within the frame that can change based on the provided data
function RRTListRewardMixin:ResetFrameState()
    self.Bg:Hide()
    self.IconDescContainer.Icon:SetTexture(nil)
    self.IconDescContainer.Desc:SetText("")
    self.IconDescContainer.Icon:SetScript("OnEnter", nil)
    self.IconDescContainer.Icon:SetScript("OnLeave", nil)
    self.IconDescContainer.Icon:SetScript("OnMouseDown", nil)
    self.IconDescContainer.Icon:SetMouseClickEnabled(false)
    self.RewardType:SetText("")
    self.CurrencyDisplay.Text:SetText("")
    self.CurrencyDisplay:SetScript("OnClick", nil)
    self.CurrencyDisplay:SetScript("OnEnter", nil)
    self.CurrencyDisplay:SetScript("OnLeave", nil)
end

---@type FactionHeader
RRTListFactionHeaderMixin = {}

function RRTListFactionHeaderMixin:OnLoad()
    -- Change text color on hover
    self.ToggleButton:HookScript("OnEnter", function(btn)
        local r, g, b = DARKYELLOW_FONT_COLOR:GetRGB()
        btn.Text:SetTextColor(r, g, b)
    end)
    self.ToggleButton:HookScript("OnLeave", function(btn)
        btn.Text:SetTextColor(1, 1, 1)
    end)
end
