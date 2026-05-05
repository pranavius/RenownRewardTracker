---@class RenownRewardTracker
local AddOn = select(2, ...)

---@type RewardData[]
AddOn.WarWithinData = {
    --region Council of Dornogal
    {
        id = 218345, -- Honorary Councilmember's Cloak
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1625, isItem = false } },
    },
    {
        id = 228419, -- Mineral-Sparkled Cape
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 250, isItem = false } },
        bonusIDs = { 11335 },
    },
    {
        id = 82342, -- Quest: A Small Bundle of Goods
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 3,
        type = "Quest",
    },
    {
        id = 82345, -- Quest: A Shining Stone
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 4,
        type = "Quest",
    },
    {
        id = 223103, -- Pattern: Stormbound Armor Kit
        associatedID = 444102,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 5,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 223127, -- Formula: Enchant Chest - Council's Intellect
        associatedID = 445322,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 5,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 223062, -- Technique: Contract: Council of Dornogal
        associatedID = 444220,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 5,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 84404, -- Quest: A Small Bundle of Goods
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 5,
        type = "Quest",
    },
    {
        id = 223289, -- Mineral-Sparkled Mantle
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223292, -- Gem-Wadded Shoulderpads
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223291, -- Ore-namental Spaulders
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223290, -- Chiseled Boulder Pauldrons
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 84403, -- Quest: A Small Bundle of Goods
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 8,
        type = "Quest",
    },
    {
        id = 245561, -- Ornate Ochre Window
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 9,
        type = "Decor",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 650, isItem = false } },
    },
    {
        id = 224645, -- Jewel-Etched Alchemy Notes
        associatedID = 83058,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 224647, -- Jewel-Etched Blacksmithing Notes
        associatedID = 83059,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 224652, -- Jewel-Etched Enchanting Notes
        associatedID = 83060,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 224648, -- Jewel-Etched Tailoring Notes
        associatedID = 83061,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 222965, -- Loamy
        associatedID = 4530,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 13,
        type = "Pet",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 6500, isItem = false } },
    },
    --endregion
}

function AddOn:CreateWarWithinCache()
    self.WarWithinCache = {}
    self:CreateItemCache(self.WarWithinData, self.WarWithinCache)
end