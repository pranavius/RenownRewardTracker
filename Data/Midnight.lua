---@class RenownRewardTracker
local AddOn = select(2, ...)

---@type RewardData[]
AddOn.MidnightData = {
    {
        id = 265658, -- Silvermoon Court Cloak
        factionID = 2710,
        level = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 259028, -- Ensemble: Haven's Elegant Regalia
        spellID = 1264350,
        factionID = 2710,
        level = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    {
        id = 267638, -- Tarnished Silvermoon Sunspire
        factionID = 2710,
        level = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267639, -- Tarnished Silvermoon Sunguard
        factionID = 2710,
        level = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267640, -- Tarnished Silvermoon Sunveil
        factionID = 2710,
        level = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267641, -- Tarnished Silvermoon Suncrest
        factionID = 2710,
        level = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 263223, -- Gilded Sky-Blue Drapery
        spellID = 1269974,
        factionID = 2710,
        level = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263205, -- Crimson Silvermoon Runner
        spellID = 1269953,
        factionID = 2710,
        level = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263206, -- Plum Eversong Rug
        spellID = 1269956,
        factionID = 2710,
        level = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263444, -- Technique: Contract: The Silvermoon Court
        spellID = 1230051,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 259363, -- Design: Bejeweled Sin'dorei Lyre
        spellID = 1246891,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Jewelcrafting, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Jewelcrafting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256760, -- Formula: Enchant Ring - Silvermoon's Tenacity
        spellID = 1236089,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 259374, -- Formula: Spellbound Tome of Thalassian Magics
        spellID = 1246907,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 268042, -- Formula: Endless Codex of Blooming Light
        spellID = 1281342,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 265528, -- Plans: Gilded Silvermoon Anvil
        spellID = 1276108,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.ArtisanMoxie.Blacksmithing, amount = 150 } },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Blacksmithing][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 265532, -- Plans: Gilded Silvermoon Hanger
        spellID = 1276110,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.ArtisanMoxie.Blacksmithing, amount = 150 } },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Blacksmithing][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256636, -- Pattern: Row Walker's Deflectors
        spellID = 1237486,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Leatherworking, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Leatherworking][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 258124, -- Pattern: Arcanoweave Spellthread
        spellID = 1228975,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Tailoring, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Tailoring][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 257601, -- Skill Issue: Tailoring
        spellID = 1261784, -- Can this be used to determine if already learned?
        factionID = 2710,
        level = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Tailoring, amount = 75 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 }
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Tailoring][LE_EXPANSION_MIDNIGHT],
        isProfessionKnowledge = true
    },
    {
        id = 257600, -- Skill Issue: Enchanting
        spellID = 1251675,
        factionID = 2710,
        level = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 75 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 }
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT],
        isProfessionKnowledge = true
    },
    {
        id = 257599, -- Skill Issue: Jewelcrafting
        spellID = 1261829,
        factionID = 2710,
        level = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Jewelcrafting, amount = 75 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 }
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.Professions.Jewelcrafting][LE_EXPANSION_MIDNIGHT],
        isProfessionKnowledge = true
    },
    {
        id = 93200, -- Quest: A Handful of Voidlight Marl
        factionID = 2710,
        level = 6,
        type = "Quest",
    },
    {
        id = 245290, -- Long Silvermoon Table
        spellID = 1238388,
        factionID = 2710,
        level = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263228, -- Grand Lightwood Table
        spellID = 1270129,
        factionID = 2710,
        level = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } },
    },
    {
        id = 263229, -- Ornate Lightwood Table
        spellID = 1270130,
        factionID = 2710,
        level = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 256040, -- Silvermoon Gemmed Chair
        spellID = 1259841,
        factionID = 2710,
        level = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 257422, -- Gilded Sunfury Chair Chair
        spellID = 1261548,
        factionID = 2710,
        level = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 93930, -- Quest: Courting Success
        factionID = 2710,
        level = 9,
        type = "Quest",
    },
    {
        id = 265663, -- Silvermoon Court Tabard
        factionID = 2710,
        level = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 94816, -- Quest: Fine Fashion Funding
        factionID = 2710,
        level = 10,
        type = "Quest",
    },
    {
        id = 263232, -- Floating Spire Shelf
        spellID = 1270133,
        factionID = 2710,
        level = 11,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263234, -- Turning Silvermoon Archives
        spellID = 1270135,
        factionID = 2710,
        level = 11,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } },
    },
    {
        id = 259224, -- Dragonhawk Munchkin
        spellID = 1264611,
        factionID = 2710,
        level = 12,
        type = "Pet",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 2500 } },
    },
    {
        id = 93549, -- Quest: A Cluster of Voidlight Marl
        factionID = 2710,
        level = 12,
        type = "Quest",
    },
    {
        id = 93548, -- Quest: A Trove of Voidlight Marl
        factionID = 2710,
        level = 18,
        type = "Quest",
    },
}

-- Relevant API functions:
-- C_TradeSkillUI.GetRecipeInfo(recipeSpellID)
-- GetProfessions()
-- GetProfessionInfo(index)

function AddOn:CreateMidnightCache()
    self.MidnightCache = {}
    ---@type RewardData[]
    local itemRewards = {}
    for _, reward in ipairs(self.MidnightData) do
        if reward.type ~= "Quest" then tinsert(itemRewards, reward) end
    end
    local toLoad = #itemRewards

    for _, item in ipairs(itemRewards) do
        Item:CreateFromItemID(item.id):ContinueOnItemLoad(function()
            toLoad = toLoad - 1

            -- Recipe info is not fetchable using GetItemNameByID and GetItemIconByID for some reason
            if item.type == "Recipe" then
                local itemName, _, _, _, _, _, _, _, _, iconID = C_Item.GetItemInfo(item.id)
                self.MidnightCache[item.id] = {
                    itemName = itemName or item.type.." "..item.id,
                    iconID = iconID or AddOn.iconFallbackTextureID,
                }
            else
                self.MidnightCache[item.id] = {
                    itemName = C_Item.GetItemNameByID(item.id) or "",
                    iconID = C_Item.GetItemIconByID(item.id) or AddOn.iconFallbackTextureID,
                }
            end

            if toLoad == 0 then self.DebugPrint("Midnight item data loaded") end
        end)
    end
end

---Placeholder
---@param frame ListItem
---@param reward RewardData
function AddOn.MidnightDataProviderInit(frame, reward)
    if not frame or not reward then return end

    local index = AddOn.DataProvider:FindIndex(reward)
    if index % 2 == 0 then frame.Bg:Show() else frame.Bg:Hide() end
    frame.factionID = reward.factionID
    
    -- Clear current scripts on Icon to avoid conflicts when rows are recycled internally
    frame.IconDescContainer.Icon:SetScript("OnEnter", nil)
    frame.IconDescContainer.Icon:SetScript("OnLeave", nil)
    frame.IconDescContainer.Icon:HookScript("OnEnter", function(icon)
        GameTooltip:SetOwner(icon, "ANCHOR_LEFT")
        if reward.type ~= "Quest" then
            GameTooltip:SetHyperlink("item:"..reward.id)
        else
            GameTooltip:SetText("Quest")
        end
        GameTooltip:Show()
    end)
    frame.IconDescContainer.Icon:HookScript("OnLeave", function() GameTooltip:Hide() end)

    if reward.type == "Quest" then
        frame.IconDescContainer.Icon:SetTexture("Interface/GossipFrame/AvailableQuestIcon")
        frame.IconDescContainer.Desc:SetText(C_QuestLog.GetTitleForQuestID(reward.id))
    else
        local cacheData = AddOn.MidnightCache[reward.id]
        if cacheData then
            frame.IconDescContainer.Icon:SetTexture(cacheData.iconID)
            frame.IconDescContainer.Desc:SetText(cacheData.itemName or reward.type.." "..reward.id)
        end
    end
end
