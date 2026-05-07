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
        id = 85718, -- Quest: A Shining Stone
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
        id = 82347, -- Quest: Assistant Councilmember
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 10,
        type = "Quest",
    },
    -- UNSURE ABOUT THESE 2 RENOWN 11 QUESTS
    {
        id = 96122, -- Quest: A Small Bundle of Goods
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 11,
        type = "Quest",
    },
    {
        id = 96123, -- Quest: A Small Bundle of Goods
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 11,
        type = "Quest",
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
        id = 82348, -- Quest: A Large Bundle of Goods
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 12,
        type = "Quest",
    },
    {
        id = 222965, -- Loamy
        associatedID = 4530,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 13,
        type = "Pet",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 6500, isItem = false } },
    },
    {
        id = 228706, -- Rockslidomancer's Stone
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 14,
        type = "Toy",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 5000, isItem = false } },
    },
    {
        id = 245295, -- Literature of Dornogal
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1000, isItem = false } },
    },
    {
        id = 245297, -- Literature of Gundargaz
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1000, isItem = false } },
    },
    {
        id = 245296, -- Literature of Taelloch
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1000, isItem = false } },
    },
    {
        id = 218344, -- Honorary Councilmember's Spaulders
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 15,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3250, isItem = false } },
    },
    {
        id = 223300, -- Mineral-Sparkled Sandals
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 16,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10273, 1669 },
    },
    {
        id = 223303, -- Gem-Wadded Footwraps
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 16,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10273, 1669 },
    },
    {
        id = 223302, -- Ore-namental Sabatons
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 16,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10273, 1669 },
    },
    {
        id = 223301, -- Chiseled Boulder crushers
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 16,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10273, 1669 },
    },
    {
        id = 223571, -- Shale Ramolith
        associatedID = 2213,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 18,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 8125, isItem = false } },
    },
    {
        id = 85545, -- Quest: Resonance Crystals
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 18,
        type = "Quest",
    },
    {
        id = 96124, -- Quest: A Small Bundle of Goods
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 19,
        type = "Quest",
    },
    {
        id = 82359, -- Quest: A Shining Bundle of Goods
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 20,
        type = "Quest",
    },
    {
        id = 248013, -- Recipe: Dornic Mine and Cheese Platter
        associatedID = 1245993,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 22,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3000, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Cooking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 221753, -- Smoldering Cinderbee
        associatedID = 2148,
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 23,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 11375, isItem = false } },
    },
    {
        id = 82365, -- Quest: A Crafter's Delight
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 24,
        type = "Quest",
    },
    {
        id = 85546, -- Quest: Resonance Crystals
        factionID = AddOn.Faction.CouncilOfDornogal,
        renownLevel = 24,
        type = "Quest",
    },
    --endregion
    --region The Assembly of the Deeps
    {
        id = 228418, -- Noncandescent Smithing Choker
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 250, isItem = false } },
        bonusIDs = { 11334 },
    },
    {
        id = 223063, -- Technique: Contract: Assembly of the Deeps
        associatedID = 444217,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 3,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 225995, -- Pattern: Hideseeker's Tote
        associatedID = 447888,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 3,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 224418, -- Recipe: Everything Stew
        associatedID = 445115,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 4,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1000, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Cooking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 82367, -- Quest: Earth-Encrusted Gem
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 4,
        type = "Quest",
    },
    {
        id = 218342, -- Shawl of the Assembly
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 5,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1625, isItem = false } },
    },
    {
        id = 85538, -- Quest: Shinies
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 6,
        type = "Quest",
    },
    {
        id = 223294, -- Noncandescent Smithing Hood
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 8,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 212107, -- Inflammable Forging Goggles
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 8,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223293, -- Unmelting Ironworker Helmet
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 8,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223295, -- Slag-Accruing Mask
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 8,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 82371, -- Quest: A Flickering Candle
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 8,
        type = "Quest",
    },
    {
        id = 85539, -- Quest: Take Candle!
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 9,
        type = "Quest",
    },
    {
        id = 82372, -- Quest: Deeps Unifier
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 10,
        type = "Quest",
    },
    -- UNSURE ABOUT THIS RENOWN 11 QUESTS
    {
        id = 96121, -- Quest: A Small Bundle of Goods
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 11,
        type = "Quest",
    },
    {
        id = 253162, -- Earthen Chain Wall Shelf
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 12,
        type = "Decor",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1000, isItem = false } },
    },
    {
        id = 224653, -- Machine-Learned Engineering Notes
        associatedID = 83063,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 224654, -- Machine-Learned Inscription Notes
        associatedID = 83064,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 224651, -- Machine-Learned Mining Notes
        associatedID = 83062,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Mining][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 82374, -- Quest: A Shining Candle
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 12,
        type = "Quest",
    },
    {
        id = 85540, -- Quest: Take Big Candle!
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 13,
        type = "Quest",
    },
    {
        id = 218341, -- Shoulderguards of the Assembly
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 14,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3250, isItem = false } },
    },
    {
        id = 82376, -- Quest: A Large Bundle of Goods
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 14,
        type = "Quest",
    },
    {
        id = 85541, -- Quest: Here's a Shiny!
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 15,
        type = "Quest",
    },
    {
        id = 223623, -- Guacamole
        associatedID = 4576,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 17,
        type = "Pet",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 6500, isItem = false } },
    },
    {
        id = 228698, -- Candleflexer's Dumbbell
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 18,
        type = "Toy",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 5000, isItem = false } },
    },
    {
        id = 85543, -- Quest: More Shinies!
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 18,
        type = "Quest",
    },
    {
        id = 223505, -- Crimson Mudnose
        associatedID = 2209,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 19,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 8125, isItem = false } },
    },
    {
        id = 223305, -- Noncandescent Smithing Cord
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 19,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223306, -- Inflammable Forging Cinch
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 19,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223307, -- Unmelting Ironworker Clasp
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 19,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223304, -- Slag-Accruing Waistguard
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 19,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 82381, -- Quest: A Scintillating Candle
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 20,
        type = "Quest",
    },
    {
        id = 85542, -- Quest: Take Really Big Candle!
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 21,
        type = "Quest",
    },
    {
        id = 82379, -- Quest: An Overflowing Bundle of Shinies
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 22,
        type = "Quest",
    },
    {
        id = 222989, -- Cyan Glowmite
        associatedID = 2162,
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 23,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 11375, isItem = false } },
    },
    {
        id = 82384, -- Quest: A Big, Big Shiny!
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 24,
        type = "Quest",
    },
    {
        id = 85544, -- Quest: Many Little Shinies!
        factionID = AddOn.Faction.AssemblyOfTheDeeps,
        renownLevel = 24,
        type = "Quest",
    },
    --endregion
    --region Hallowfall Arathi
    {
        id = 218351, -- Expeditionary Cape
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1625, isItem = false } },
    },
    {
        id = 228426, -- Gloves of Irradating Imprisonment
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 250, isItem = false } },
        bonusIDs = { 11336 },
    },
    {
        id = 228425, -- Grips of Fading Luminescence
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 250, isItem = false } },
        bonusIDs = { 11336 },
    },
    {
        id = 228427, -- Wraps of Depleting Brilliance
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 250, isItem = false } },
        bonusIDs = { 11336 },
    },
    {
        id = 228428, -- Gauntlets of Dimming Fluorescence
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 250, isItem = false } },
        bonusIDs = { 11336 },
    },
    {
        id = 223064, -- Technique: Contract: Hallowfall Arathi
        associatedID = 444218,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 4,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 223114, -- Formula: Enchant Boots - Scout's March
        associatedID = 445368,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 4,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 223038, -- Plans: Charged Claymore
        associatedID = 450238,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 4,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 82335, -- Quest: Crystals
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 4,
        type = "Quest",
    },
    {
        id = 82391, -- Quest: Precious Stones
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 5,
        type = "Quest",
    },
    {
        id = 82393, -- Quest: Resonating Crystals
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 6,
        type = "Quest",
    },
    {
        id = 223299, -- Tunic of Irradating Imprisonment
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223297, -- Vest of Fading Luminescence
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223298, -- Chainmail of Depleting Brilliance
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 223296, -- Battleplate of Dimming Fluorescence
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
        bonusIDs = { 10281, 1656 },
    },
    {
        id = 85536, -- Quest: Resonance Crystals
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 8,
        type = "Quest",
    },
    {
        id = 82395, -- Quest: Flame-touched Tabard
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 10,
        type = "Quest",
    },
    -- Pouch of Resonant Crystals Reward (R12)
    {
        id = 218350, -- Expeditionary Spaulders
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 13,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3250, isItem = false } },
    },
    {
        id = 224656, -- Void-lit Herbalism Notes
        associatedID = 83066,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 14,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Herbalism][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 224655, -- Void-lit Jewelcrafting Notes
        associatedID = 83065,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 14,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 224658, -- Void-lit Leatherworking Notes
        associatedID = 83068,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 14,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 224657, -- Void-lit Skinning Notes
        associatedID = 83067,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 14,
        type = "Profession",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 50, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Skinning][LE_EXPANSION_WAR_WITHIN],
    },
    {
        id = 221848, -- Tiberius
        associatedID = 4463,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 15,
        type = "Pet",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 6500, isItem = false } },
    },
    {
        id = 82396, -- Quest: A Gift from Merledar
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 16,
        type = "Quest",
    },
    {
        id = 228707, -- Trial of Burning Light
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 17,
        type = "Toy",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 5000, isItem = false } },
    },
    {
        id = 223309, -- Bindings of Irradating Imprisonment
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 18,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10273, 1669 },
    },
    {
        id = 223310, -- Wristwraps of Fading Luminescence
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 18,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10273, 1669 },
    },
    {
        id = 223308, -- Bracers of Depleting Brilliance
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 18,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10273, 1669 },
    },
    {
        id = 223311, -- Armguards of Dimming Fluorescence
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 18,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 10273, 1669 },
    },
    {
        id = 85537, -- Quest: Crystals
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 19,
        type = "Quest",
    },
    {
        id = 82404, -- Quest: Something to Set Your Apart
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 20,
        type = "Quest",
    },
    {
        id = 223317, -- Vermillion Imperial Lynx
        associatedID = 2193,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 21,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 8125, isItem = false } },
    },
    {
        id = 223314, -- Shackled Shadow
        associatedID = 2191,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 23,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 11375, isItem = false } },
    },
    {
        id = 224553, -- Beledar's Attunement
        associatedID = 82998,
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 23,
        type = "Other",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1000, isItem = false } },
    },
    {
        id = 83334, -- Quest: The Wealth of an Empire
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 23,
        type = "Quest",
    },
    {
        id = 82407, -- Quest: For What Glimmers in the Deep
        factionID = AddOn.Faction.HallowfallArathi,
        renownLevel = 24,
        type = "Quest",
    },
    --endregion
    --region Flame's Radiance
    {
        id = 89493, -- Quest: Welcome to the Field
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 1,
        type = "Quest"
    },
    {
        id = 238850, -- Arathi Entertainer's Flame
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 2,
        type = "Toy",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 5000, isItem = false } },
    },
    {
        id = 89349, -- Quest: Flame's Radiance Stipend
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 2,
        type = "Quest"
    },
    {
        id = 238986, -- Mister Mans
        associatedID = 4794,
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 3,
        type = "Pet",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 6500, isItem = false } },
    },
    {
        id = 89390, -- Quest: Flame's Radiance Stipend
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 3,
        type = "Quest"
    },
    {
        id = 238852, -- Flame's Radiance Banner
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 4,
        type = "Toy",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 5000, isItem = false } },
    },
    {
        id = 89391, -- Quest: Flame's Radiance Stipend
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 4,
        type = "Quest"
    },
    {
        id = 89494, -- Quest: A Frocking Good Job
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 5,
        type = "Quest"
    },
    {
        id = 89392, -- Quest: Flame's Radiance Stipend
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 5,
        type = "Quest"
    },
    {
        id = 239693, -- Radiant Lynx Whistle
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 6,
        type = "Toy",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 5000, isItem = false } },
    },
    {
        id = 241188, -- Swiftpaw
        associatedID = 4804,
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 6,
        type = "Pet",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 6500, isItem = false } },
    },
    {
        id = 89393, -- Quest: Flame's Radiance Stipend
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 6,
        type = "Quest"
    },
    {
        id = 238824, -- Radiant Traveler's Backpack
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 7,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3250, isItem = false } },
    },
    {
        id = 89394, -- Quest: Flame's Radiance Stipend
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 7,
        type = "Quest"
    },
    {
        id = 238837, -- Delver's Dirigible Schematic: Pale Paint
        associatedID = 86198,
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 8,
        type = "Other",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3250, isItem = false } },
    },
    {
        id = 238839, -- Delver's Dirigible Schematic: Arathi Decal
        associatedID = 86199,
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 8,
        type = "Other",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2600, isItem = false } },
    },
    {
        id = 245293, -- Collection of Arathi Scripture
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 8,
        type = "Decor",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1200, isItem = false } },
    },
    -- SEEMS LIKE THIS QUEST ISNT IN THE GAME ANYMORE?
    -- {
    --     id = 89395, -- Quest: Flame's Radiance Stipend
    --     factionID = AddOn.Faction.FlamesRadiance,
    --     renownLevel = 8,
    --     type = "Quest"
    -- },
    {
        id = 238829, -- Radiant Imperial Lynx
        associatedID = 2519,
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 9,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 8125, isItem = false } },
    },
    {
        id = 89396, -- Quest: Flame's Radiance Stipend
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 9,
        type = "Quest"
    },
    {
        id = 89496, -- Quest: Defender of the Sacred Flame
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 10,
        type = "Quest"
    },
    {
        id = 237433, -- Necklace of the Devout
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 10,
        type = "Gear",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3900, isItem = false } },
        bonusIDs = { 12274 },
    },
    {
        id = 89397, -- Quest: Flame's Radiance Stipend
        factionID = AddOn.Faction.FlamesRadiance,
        renownLevel = 10,
        type = "Quest"
    },
    --endregion
    --region The Severed Threads
    {
        id = 228420, -- Unsevered Thread
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.Kej, amount = 85, isItem = false } },
        bonusIDs = { 11337 },
    },
    {
        id = 82417, -- Quest: A Rare Key
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 3,
        type = "Quest",
    },
    {
        id = 223080, -- Recipe: Algari Alchemist Stone
        associatedID = 427185,
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 4,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 225355, -- Technique: Contract: The Severed Threads
        associatedID = 444219,
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 4,
        type = "Recipe",
        currency = { { id = AddOn.ItemCurrencies.ArtisansAcuity, amount = 150, isItem = true } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 218348, -- Thread-Bearer's Cloak
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 5,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.Kej, amount = 565, isItem = false } },
    },
    {
        id = 96116, -- Quest: A Cache of Crystals
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 6,
        type = "Quest",
    },
    {
        id = 217894, -- Nerubian Pheremore Secreter
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.Kej, amount = 450, isItem = false } },
    },
    {
        id = 85535, -- Quest: Kej
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 8,
        type = "Quest",
    },
    {
        id = 82442, -- Quest: Keep Up Appearances
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 9,
        type = "Quest",
    },
    {
        id = 82432, -- Quest: A Gift Handwoven
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 10,
        type = "Quest",
    },
    {
        id = 217894, -- Nerubian Pheremore Secreter
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 11,
        type = "Gear",
        currency = { { id = AddOn.Currencies.Kej, amount = 900, isItem = false } },
        bonusIDs = { 10281, 1485 }
    },
    {
        id = 96117, -- Quest: A Cache of Crystals
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 12,
        type = "Quest",
    },
    {
        id = 96118, -- Quest: A Cache of Crystals
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 13,
        type = "Quest",
    },
    {
        id = 85532, -- Quest: The Wealth of a Kingdom
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 14,
        type = "Quest",
    },
    {
        id = 222972, -- Jump Jump
        associatedID = 4491,
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 15,
        type = "Pet",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2250, isItem = false } },
    },
    {
        id = 218347, -- Thread-Bearer's Pauldrons
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.Kej, amount = 1125, isItem = false } },
    },
    {
        id = 228705, -- Arachnoserum
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 17,
        type = "Toy",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 1750, isItem = false } },
    },
    {
        id = 85534, -- Quest: The General's Cache
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 18,
        type = "Quest",
    },
    {
        id = 217894, -- Nerubian Pheremore Secreter
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 19,
        type = "Gear",
        currency = { { id = AddOn.Currencies.Kej, amount = 1350, isItem = false } },
        bonusIDs = { 10273, 1498 }
    },
    {
        id = 85531, -- Quest: Earth-Encrusted Gem
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 24,
        type = "Quest",
    },
    {
        id = 223274, -- Ferocious Jawcrawler
        associatedID = 2184,
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 22,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 2815, isItem = false } },
    },
    {
        id = 85533, -- Quest: Kej
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 22,
        type = "Quest",
    },
    {
        id = 223264, -- Aquamarine Swarmite
        associatedID = 2177,
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 23,
        type = "Mount",
        currency = { { id = AddOn.Currencies.ResonanceCrystal, amount = 3940, isItem = false } },
    },
    {
        id = 82446, -- Quest: For What Glimmers in Shadow
        factionID = AddOn.Faction.SeveredThreads,
        renownLevel = 24,
        type = "Quest",
    },
    --endregion
}

function AddOn:CreateWarWithinCache()
    self.WarWithinCache = {}
    self:CreateItemCache(self.WarWithinData, self.WarWithinCache)
end