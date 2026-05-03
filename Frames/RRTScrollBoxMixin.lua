---@class RenownRewardTracker
local AddOn = select(2, ...)

RRTScrollBoxMixin = CreateFromMixins(ScrollBoxListMixin, {})

RRT_DB = RRT_DB or AddOn.DatabaseDefaults

function RRTScrollBoxMixin:InitializeScrollView()
    AddOn.ScrollBox = self
    AddOn.ScrollBar = RRTScrollBar

    if AddOn.ScrollBox and AddOn.ScrollBar then
        AddOn.DataProvider = CreateDataProvider()
        AddOn.ScrollView = CreateScrollBoxListLinearView()

        ScrollUtil.InitScrollBoxListWithScrollBar(AddOn.ScrollBox, AddOn.ScrollBar, AddOn.ScrollView)
        AddOn.ScrollView:SetElementFactory(function(factory, elementData)
            if elementData.isFactionHeader ~= nil then
                factory("RRTListFactionHeaderTemplate", self.FactionHeaderDataProviderInit)
            else
                factory("RRTListRewardTemplate", self.ItemDataProviderInit)
            end
        end)
        AddOn.ScrollView:SetElementExtent(AddOn.ScrollView:GetTemplateExtent("RRTListRewardTemplate"))

        AddOn.ScrollView:SetDataProvider(AddOn.DataProvider)
    end
end

---@param frame FactionHeader
---@param data FactionHeaderData
function RRTScrollBoxMixin.FactionHeaderDataProviderInit(frame, data)
    if not frame or not data then return end
    frame.ToggleButton:SetScript("OnClick", nil)
    
    if RRT_DB.factionVisibility[data.factionID] == nil then
        AddOn.DebugPrint("Adding faction visibility database entry for faction ID", data.factionID)
        RRT_DB.factionVisibility[data.factionID] = true
    end

    frame.ToggleButton.Text:SetText("["..(RRT_DB.factionVisibility[data.factionID] and "Hide" or "Show").."]")

    frame.ToggleButton:SetScript("OnClick", function()
        if data.factionID > 0 and RRT_DB.factionVisibility[data.factionID] ~= nil then
            RRT_DB.factionVisibility[data.factionID] = not RRT_DB.factionVisibility[data.factionID]
            AddOn.DebugPrint("Items", RRT_DB.factionVisibility[data.factionID] and "shown" or "hidden", "for faction ID", data.factionID)
            AddOn:UpdateListContents()
        end
    end)

    local factionData = C_MajorFactions.GetMajorFactionData(data.factionID)
    frame.Bg:SetGradient("VERTICAL", factionData.factionFontColor.color, BLACK_FONT_COLOR)
    local factionName = factionData and factionData.name or "Unknown Faction"
    local atlas = AddOn.FactionIconAtlasMap[data.factionID]
    if atlas then
        frame.FactionName:SetText(AddOn.GetAtlasString(atlas, 20).." "..factionName)
    else
        frame.FactionName:SetText(AddOn.GetTextureString(AddOn.iconFallbackTextureID, 25).." "..factionName)
    end
end

---@param frame ListItem
---@param reward RewardData
function RRTScrollBoxMixin.ItemDataProviderInit(frame, reward)
    if not frame or not reward then return end

    frame:ResetFrameState()

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
                local rightText = ttInfo.obtained.."/"..ttInfo.amount
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