---@class RenownRewardTracker
local AddOn = select(2, ...)

---@class ScrollBox
RRTScrollBoxMixin = CreateFromMixins(ScrollBoxListMixin, {})

RRT_DB = RRT_DB or AddOn.DatabaseDefaults

local isHoveringPreviewableItem = false

local nonDressableEquipLocs = {
    INVTYPE_NECK = true,
    INVTYPE_FINGER = true,
    INVTYPE_TRINKET = true,
}

---@type Faction[]
local factionsWithWhiteNames = {
    AddOn.Faction.CartelsOfUndermine,
    AddOn.Faction.MaruukCentaur,
    AddOn.Faction.LoammNiffen,
}

function RRTScrollBoxMixin:InitializeScrollView()
    AddOn.ScrollBox = self
    AddOn.ScrollBar = RRTScrollBar

    TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip)
        if isHoveringPreviewableItem and tooltip == GameTooltip then
            tooltip:AddLine(" ")
            tooltip:AddLine("<Control-Click to preview item>", 0, 1, 0)
            tooltip:Show()
            GameTooltip_HideShoppingTooltips(tooltip)
        end
    end)

    self:RegisterEvent("MODIFIER_STATE_CHANGED")
    self:HookScript("OnEvent", function(_, event, key, down)
        if event == "MODIFIER_STATE_CHANGED" and (key == "LCTRL" or key == "RCTRL") and isHoveringPreviewableItem then
            if down == 1 then
                SetCursorByMode(Enum.Cursormode.InspectCursor)
            else
                ResetCursor()
            end
        end
    end)

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
        RRT_DB.factionVisibility[data.factionID] = true
        AddOn.DebugPrint("Added faction visibility database entry for faction ID", data.factionID)
    end

    local factionData = C_MajorFactions.GetMajorFactionData(data.factionID)

    if AddOn.QuartermasterPins[data.factionID] then
        local pinData = AddOn.QuartermasterPins[data.factionID]

        frame.QuartermasterPin:Show()
        frame.QuartermasterPin:SetScript("OnClick", function()
            -- Clear any previously supertracked pins and waypoints
            C_SuperTrack.ClearSuperTrackedMapPin()
            C_SuperTrack.SetSuperTrackedUserWaypoint(false)
            C_Map.ClearUserWaypoint()

            C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(pinData.mapID, pinData.x, pinData.y))
            C_SuperTrack.SetSuperTrackedUserWaypoint(true)
            print("Renown Reward Tracker:", DARKYELLOW_FONT_COLOR:WrapTextInColorCode("Map pin set for "..(factionData and factionData.name or "?").." Quartermaster"))
        end)
        frame.QuartermasterPin:SetScript("OnEnter", function(btn)
            GameTooltip:SetOwner(btn, "ANCHOR_LEFT", nil, -30)
            GameTooltip:SetText("Set Map Pin for Vendor")
            if pinData.tooltipText then
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine(pinData.tooltipText)
            end
            GameTooltip:Show()
        end)
        frame.QuartermasterPin:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
    else
        frame.QuartermasterPin:Hide()
        frame.QuartermasterPin:SetScript("OnClick", nil)
        frame.QuartermasterPin:SetScript("OnEnter", nil)
        frame.QuartermasterPin:SetScript("OnLeave", nil)
    end

    frame.ToggleButton.Text:SetText(RRT_DB.factionVisibility[data.factionID] and "[Collapse]" or "[Expand]")
    frame.ToggleButton:SetWidth(frame.ToggleButton.Text:GetUnboundedStringWidth() + 5)

    frame.ToggleButton:SetScript("OnClick", function()
        if data.factionID > 0 and RRT_DB.factionVisibility[data.factionID] ~= nil then
            RRT_DB.factionVisibility[data.factionID] = not RRT_DB.factionVisibility[data.factionID]
            AddOn.DebugPrint("Items", RRT_DB.factionVisibility[data.factionID] and "shown" or "hidden", "for faction ID", data.factionID)
            AddOn:UpdateListContents()
        end
    end)

    if not factionData then
        frame.FactionName:SetText(AddOn.GetTextureString(AddOn.iconFallbackTextureID, 25).." Unknown Faction")
        AddOn.DebugPrint(WARNING_FONT_COLOR:WrapTextInColorCode("Faction data not found for faction ID"), data.factionID)
        return
    end
    frame.Bg:SetGradient("VERTICAL", factionData.factionFontColor.color, BLACK_FONT_COLOR)
    local atlas = AddOn.FactionIconAtlasMap[data.factionID]
    if atlas then
        frame.FactionName:SetText(AddOn.GetAtlasString(atlas, 18).." "..factionData.name)
    else
        frame.FactionName:SetText(AddOn.GetTextureString(AddOn.iconFallbackTextureID, 25).." "..factionData.name)
    end
    if tContains(factionsWithWhiteNames, data.factionID) then
    frame.FactionName:SetTextColor(1, 1, 1)
    else
        local r, g, b = DARKYELLOW_FONT_COLOR:GetRGB()
        frame.FactionName:SetTextColor(r, g, b)
    end
end

local function onEnterPreviewableIcon()
    isHoveringPreviewableItem = true
    if IsControlKeyDown() then SetCursorByMode(Enum.Cursormode.InspectCursor) end
end

local function onExitPreviewableIcon()
    isHoveringPreviewableItem = false
    ResetCursor()
end

---@param frame ListItem
---@param reward RewardData
---@param cacheData table|nil
local function configurePreviewForReward(frame, reward, cacheData)
    if reward.type ~= "Cosmetic" and reward.type ~= "Gear" and reward.type ~= "Decor" and reward.type ~= "Mount" and reward.type ~= "Pet" then
        return false
    end

    if reward.type == "Gear" and (not cacheData or not cacheData.equipLoc or nonDressableEquipLocs[cacheData.equipLoc]) then
        return false
    end

    local icon = frame.IconDescContainer.Icon
    icon:SetMouseClickEnabled(true)
    icon:HookScript("OnEnter", onEnterPreviewableIcon)
    icon:HookScript("OnLeave", onExitPreviewableIcon)
    
    if reward.type == "Cosmetic" or reward.type == "Gear" then
        local linkText = AddOn.GetItemHyperlinkText(reward.id, reward.bonusIDs)
        
        icon:HookScript("OnMouseDown", function(_, mouseBtn)
            if mouseBtn == "LeftButton" and IsControlKeyDown() then
                DressUpItemLink(linkText)
            end
        end)
    elseif reward.type == "Decor" then
        icon:HookScript("OnMouseDown", function(_, mouseBtn)
            if mouseBtn == "LeftButton" and IsControlKeyDown() then
                local decorCatalogEntryInfo = C_HousingCatalog.GetCatalogEntryInfoByItem(reward.id)
                if decorCatalogEntryInfo then
                    HousingModelPreviewFrame:ShowCatalogEntryInfo(decorCatalogEntryInfo)
                else
                    print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("[RRT]"), "Unable to preview decor. Please report this issue through Discord or GitHub")
                end
            end
        end)
    elseif reward.type == "Mount" then
        icon:HookScript("OnMouseDown", function(_, mouseBtn)
            if mouseBtn == "LeftButton" and IsControlKeyDown() then
                DressUpMount(reward.associatedID)
            end
        end)
    elseif reward.type == "Pet" then
        icon:HookScript("OnMouseDown", function(_, mouseBtn)
            if mouseBtn == "LeftButton" and IsControlKeyDown() then
                local _, _, _, creatureID, _, _, _, _, _, _, _, displayID = C_PetJournal.GetPetInfoBySpeciesID(reward.associatedID)
                DressUpBattlePet(creatureID, displayID, reward.associatedID)
            end
        end)
    end

    return true
end

---@param frame ListItem
---@param reward RewardData
function RRTScrollBoxMixin.ItemDataProviderInit(frame, reward)
    if not frame or not reward then return end

    frame:ResetFrameState()

    local index = AddOn.DataProvider:FindIndex(reward)
    if index % 2 == 0 then frame.Bg:Show() end

    local cacheData
    if reward.type ~= "Quest" then
        cacheData = select(2, AddOn:GetExpansionDataAndCache())[reward.id]
    end

    configurePreviewForReward(frame, reward, cacheData)

    if reward.type ~= "Quest" then
        frame.IconDescContainer.Icon:HookScript("OnEnter", function(icon)
            GameTooltip:SetOwner(icon, "ANCHOR_LEFT")
            GameTooltip:SetHyperlink(AddOn.GetItemHyperlinkText(reward.id, reward.bonusIDs))
            GameTooltip:Show()
            GameTooltip_HideShoppingTooltips(GameTooltip)
        end)
        frame.IconDescContainer.Icon:HookScript("OnLeave", function() GameTooltip:Hide() end)
    end

    if reward.type == "Quest" then
        frame.IconDescContainer.Icon:SetAtlas("QuestNormal")
        local questTitle = AddOn.QuestNameCache[reward.id] or "Quest"
        frame.IconDescContainer.Desc:SetText(questTitle..(RRT_DB.debug and " "..reward.id or ""))
    else
        if cacheData then
            frame.IconDescContainer.Icon:SetTexture(cacheData.iconID)
            frame.IconDescContainer.Desc:SetText(cacheData.itemName or reward.type.." "..reward.id)
        end
    end

    frame.RewardType:SetText(reward.type)

    if reward.currency and #reward.currency > 0 then
        local costText = ""
        ---@type CurrencyTooltipData[]
        local tooltipInfo = {}
        local isCurrencyOnlyItems = true
        local isCurrencyOnlyMoney = true
        local rewardCostInCopper = AddOn.GetRewardCostInCopper(reward.currency)
        for _, curr in ipairs(reward.currency) do
            local currencyText = ""
            if type(curr.id) == "string" then
                isCurrencyOnlyItems = false
                if GetMoney() < rewardCostInCopper then
                    currencyText = ERROR_COLOR:WrapTextInColorCode(FormatLargeNumber(curr.amount)).." "..AddOn.GetAtlasString(curr.id)
                else
                    currencyText = FormatLargeNumber(curr.amount).." "..AddOn.GetAtlasString(curr.id)
                end
            elseif not curr.isItem then
                isCurrencyOnlyItems = false
                isCurrencyOnlyMoney = false
                local currencyInfo = C_CurrencyInfo.GetCurrencyInfo(curr.id)
                if currencyInfo then
                    currencyText = AddOn.GetTextureString(currencyInfo.iconFileID)
                    if currencyInfo.quantity < curr.amount then
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
                end
            else
                isCurrencyOnlyMoney = false
                local name, iconID
                local cacheData = AddOn.ItemCurrencyCache[curr.id]

                if cacheData then
                    name = cacheData.itemName
                    iconID = cacheData.iconID
                else
                    name = C_Item.GetItemNameByID(curr.id) or "Currency Name"
                    iconID = select(5, C_Item.GetItemInfoInstant(curr.id))
                end
                local quantity = C_Item.GetItemCount(curr.id, true, false, true, true)

                currencyText = AddOn.GetTextureString(iconID)
                if quantity < curr.amount then
                    currencyText = currencyText.." "..ERROR_COLOR:WrapTextInColorCode("x"..curr.amount)
                else
                    currencyText = currencyText.." x"..curr.amount
                end
                tinsert(tooltipInfo, {
                    icon = iconID,
                    name = name,
                    amount = curr.amount,
                    obtained = quantity
                })
            end
            costText = costText..currencyText.."   "
        end

        frame.CurrencyDisplay.Text:SetText(costText)
        if not isCurrencyOnlyMoney then
            frame.CurrencyDisplay:HookScript("OnEnter", function(fs)
                GameTooltip:SetOwner(fs, "ANCHOR_RIGHT", -40, -25)
                GameTooltip:SetText("Purchase Cost:", 1, 1, 1)
                GameTooltip:AddLine(" ")
                for _, ttInfo in ipairs(tooltipInfo) do
                    local rightText = ttInfo.obtained.."/"..ttInfo.amount
                    GameTooltip:AddDoubleLine(AddOn.GetTextureString(ttInfo.icon, 10).." "..ttInfo.name, rightText  ,
                    nil, nil, nil, 1, 1, 1)
                end
                if not isCurrencyOnlyItems then
                    GameTooltip:AddLine(" ")
                    GameTooltip:AddLine("<Click to toggle currency menu>", 0, 1, 0, false)
                end
                GameTooltip:Show()
            end)
            frame.CurrencyDisplay:HookScript("OnLeave", function() GameTooltip:Hide() end)
            if not isCurrencyOnlyItems then
                frame.CurrencyDisplay:HookScript("OnClick", function() ToggleCharacter("TokenFrame") end)
            end
        end
    end
end
