---@class RenownRewardTracker
local AddOn = select(2, ...)

RRTScrollBoxMixin = CreateFromMixins(ScrollBoxListMixin, {})

function RRTScrollBoxMixin:InitializeScrollView()
    AddOn.ScrollBox = self
    AddOn.ScrollBar = RRTScrollBar

    if AddOn.ScrollBox and AddOn.ScrollBar then
        AddOn.DataProvider = CreateDataProvider()
        AddOn.ScrollView = CreateScrollBoxListLinearView()

        ScrollUtil.InitScrollBoxListWithScrollBar(AddOn.ScrollBox, AddOn.ScrollBar, AddOn.ScrollView)
        AddOn.ScrollView:SetElementFactory(function(factory, elementData)
            factory("RRTListItemTemplate", self.DataProviderInit)
        end)
        AddOn.ScrollView:SetElementExtent(AddOn.ScrollView:GetTemplateExtent("RRTListItemTemplate"))

        AddOn.ScrollView:SetDataProvider(AddOn.DataProvider)
    end
end

---@param frame ListItem
---@param reward RewardData
function RRTScrollBoxMixin.DataProviderInit(frame, reward)
    if not frame or not reward then return end

    frame:ResetFrameState()

    if reward.id == 0 then
        frame.isFactionName = true
        local factionData = C_MajorFactions.GetMajorFactionData(reward.factionID)
        frame.FactionBg:SetGradient("VERTICAL", factionData.factionFontColor.color, BLACK_FONT_COLOR)
        frame.FactionBg:Show()
        local factionName = factionData and factionData.name or "Unknown Faction"
        local atlas = AddOn.FactionIconAtlasMap[reward.factionID]
        if atlas then
            frame.FactionHeader:SetText(AddOn.GetAtlasString(atlas, 20).." "..factionName)
        else
            frame.FactionHeader:SetText(AddOn.GetTextureString(AddOn.iconFallbackTextureID, 25).." "..factionName)
        end
        return
    end

    local index = AddOn.DataProvider:FindIndex(reward)
    if index % 2 == 0 then frame.Bg:Show() end

    if reward.type ~= "Quest" and reward.id ~= 0 then
        frame.IconDescContainer.Icon:HookScript("OnEnter", function(icon)
            GameTooltip:SetOwner(icon, "ANCHOR_LEFT")
            GameTooltip:SetHyperlink("item:"..reward.id)
            GameTooltip:Show()
        end)
        frame.IconDescContainer.Icon:HookScript("OnLeave", function() GameTooltip:Hide() end)
    end

    if reward.type == "Quest" then
        frame.IconDescContainer.Icon:SetAtlas("QuestNormal")
        frame.IconDescContainer.Desc:SetText(C_QuestLog.GetTitleForQuestID(reward.id))
    else
        local itemCache = select(2, AddOn:GetExpansionDataAndCache())
        local cacheData = itemCache[reward.id]
        if cacheData then
            frame.IconDescContainer.Icon:SetTexture(cacheData.iconID)
            frame.IconDescContainer.Desc:SetText(cacheData.itemName or reward.type.." "..reward.id)
        end
    end

    if not frame.isFactionName then frame.RewardType:SetText(reward.type) end

    if reward.currency and #reward.currency > 0 then
        local costText = ""
        ---@type CurrencyTooltipData[]
        local tooltipInfo = {}
        for _, curr in ipairs(reward.currency) do
            local currencyInfo = C_CurrencyInfo.GetCurrencyInfo(curr.id)
            local currencyText = AddOn.GetTextureString(currencyInfo.iconFileID)
            if (currencyInfo.quantity < curr.amount) then
                currencyText = currencyText.." "..ERROR_COLOR:WrapTextInColorCode("x"..curr.amount)
            else
                currencyText = currencyText.." x"..curr.amount
            end
            tinsert(tooltipInfo, {
                icon = currencyInfo.iconFileID,
                name = currencyInfo.name,
                amount = curr.amount,
                obtained = currencyInfo.quantity
            })
            costText = costText..currencyText.."    "
        end

        frame.CurrencyDisplay.Text:SetText(costText)
        frame.CurrencyDisplay:HookScript("OnClick", function() ToggleCharacter("TokenFrame") end)
        frame.CurrencyDisplay:HookScript("OnEnter", function(fs)
            GameTooltip:SetOwner(fs, "ANCHOR_TOP")
            GameTooltip:SetText("Purchase Cost:", 1, 1, 1)
            GameTooltip:AddLine(" ")
            for _, ttInfo in ipairs(tooltipInfo) do
                local rightText = ttInfo.obtained.." / "..ttInfo.amount
                GameTooltip:AddDoubleLine(AddOn.GetTextureString(ttInfo.icon, 10).." "..ttInfo.name, rightText  ,
                    nil, nil, nil, 1, 1, 1)
            end
            GameTooltip:AddLine(" ")
            local gR, gG, gB = GREEN_FONT_COLOR:GetRGB()
            GameTooltip:AddLine("<Click to open currency menu>", 0, 1, 0, false)
            GameTooltip:Show()
        end)
        frame.CurrencyDisplay:HookScript("OnLeave", function() GameTooltip:Hide() end)
    end
end