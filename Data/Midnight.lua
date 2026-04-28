---@class RenownRewardTracker
local AddOn = select(2, ...)

---@class RenownRewardCost
---@field id number
---@field amount number
---@field isWarbound boolean

---@enum SkillLineID
AddOn.SkillLine = {
    Alchemy = 171,
    Blacksmithing = 164,
    Cooking = 185,
    Enchanting = 333,
    Engineering = 202,
    Fishing = 356,
    Herbalism = 182,
    Inscription = 773,
    Jewelcrafting = 755,
    Leatherworking = 165,
    Mining = 186,
    Skinning = 393,
    Tailoring = 197
}

---@type table<number, table<number, number>>
AddOn.ExpacSkillLines = {
    [AddOn.SkillLine.Alchemy] = {
        [LE_EXPANSION_MIDNIGHT] = 2906,
        [LE_EXPANSION_WAR_WITHIN] = 2871,
        [LE_EXPANSION_DRAGONFLIGHT] = 2823,
        [LE_EXPANSION_SHADOWLANDS] = 2750
    },
    [AddOn.SkillLine.Blacksmithing] = {
        [LE_EXPANSION_MIDNIGHT] = 2907,
        [LE_EXPANSION_WAR_WITHIN] = 2872,
        [LE_EXPANSION_DRAGONFLIGHT] = 2822,
        [LE_EXPANSION_SHADOWLANDS] = 2751
    },
    [AddOn.SkillLine.Cooking] = {
        [LE_EXPANSION_MIDNIGHT] = 2908,
        [LE_EXPANSION_WAR_WITHIN] = 2873,
        [LE_EXPANSION_DRAGONFLIGHT] = 2824,
        [LE_EXPANSION_SHADOWLANDS] = 2752
    },
    [AddOn.SkillLine.Enchanting] = {
        [LE_EXPANSION_MIDNIGHT] = 2909,
        [LE_EXPANSION_WAR_WITHIN] = 2874,
        [LE_EXPANSION_DRAGONFLIGHT] = 2825,
        [LE_EXPANSION_SHADOWLANDS] = 2753
    },
    [AddOn.SkillLine.Engineering] = {
        [LE_EXPANSION_MIDNIGHT] = 2910,
        [LE_EXPANSION_WAR_WITHIN] = 2875,
        [LE_EXPANSION_DRAGONFLIGHT] = 2827,
        [LE_EXPANSION_SHADOWLANDS] = 2755
    },
    [AddOn.SkillLine.Fishing] = {
        [LE_EXPANSION_MIDNIGHT] = 2911,
        [LE_EXPANSION_WAR_WITHIN] = 2876,
        [LE_EXPANSION_DRAGONFLIGHT] = 2826,
        [LE_EXPANSION_SHADOWLANDS] = 2754
    },
    [AddOn.SkillLine.Herbalism] = {
        [LE_EXPANSION_MIDNIGHT] = 2912,
        [LE_EXPANSION_WAR_WITHIN] = 2877,
        [LE_EXPANSION_DRAGONFLIGHT] = 2832,
        [LE_EXPANSION_SHADOWLANDS] = 2760
    },
    [AddOn.SkillLine.Inscription] = {
        [LE_EXPANSION_MIDNIGHT] = 2913,
        [LE_EXPANSION_WAR_WITHIN] = 2878,
        [LE_EXPANSION_DRAGONFLIGHT] = 2828,
        [LE_EXPANSION_SHADOWLANDS] = 2756
    },
    [AddOn.SkillLine.Jewelcrafting] = {
        [LE_EXPANSION_MIDNIGHT] = 2914,
        [LE_EXPANSION_WAR_WITHIN] = 2879,
        [LE_EXPANSION_DRAGONFLIGHT] = 2829,
        [LE_EXPANSION_SHADOWLANDS] = 2757
    },
    [AddOn.SkillLine.Leatherworking] = {
        [LE_EXPANSION_MIDNIGHT] = 2915,
        [LE_EXPANSION_WAR_WITHIN] = 2880,
        [LE_EXPANSION_DRAGONFLIGHT] = 2830,
        [LE_EXPANSION_SHADOWLANDS] = 2758
    },
    [AddOn.SkillLine.Mining] = {
        [LE_EXPANSION_MIDNIGHT] = 2916,
        [LE_EXPANSION_WAR_WITHIN] = 2881,
        [LE_EXPANSION_DRAGONFLIGHT] = 2833,
        [LE_EXPANSION_SHADOWLANDS] = 2761
    },
    [AddOn.SkillLine.Skinning] = {
        [LE_EXPANSION_MIDNIGHT] = 2917,
        [LE_EXPANSION_WAR_WITHIN] = 2882,
        [LE_EXPANSION_DRAGONFLIGHT] = 2834,
        [LE_EXPANSION_SHADOWLANDS] = 2762
    },
    [AddOn.SkillLine.Tailoring] = {
        [LE_EXPANSION_MIDNIGHT] = 2918,
        [LE_EXPANSION_WAR_WITHIN] = 2883,
        [LE_EXPANSION_DRAGONFLIGHT] = 2831,
        [LE_EXPANSION_SHADOWLANDS] = 2759
    },
    
}

---@class RenownRewardData
---@field id number
---@field spellID number?
---@field questID number?
---@field factionID number
---@field level number
---@field type "Recipe"|"Mount"|"Cosmetic"|"Toy"|"Pet"|"Quest"|"Decor"|"Gear"
---@field currency RenownRewardCost[]
---@field skillLineID number?
AddOn.MidnightData = {
    {
        id = 263444, -- Technique: Contract: The Silvermoon Court
        spellID = 1230051,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = 3261, amount = 150, isWarbound = false },
            { id = 3316, amount = 1500, isWarbound = true },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.SkillLine.Inscription]
    },
    {
        id = 256760, -- Formula: Enchant Ring - Silvermoon's Tenacity
        spellID = 1236089,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = { { id = 3528, amount = 150, isWarbound = false } },
        skillLineID = AddOn.ExpacSkillLines[AddOn.SkillLine.Enchanting]
    },
    {
        id = 256651, -- Pattern: Blood Knight's Armor Kit
        spellID = -1,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = 3263, amount = 150, isWarbound = false },
            { id = 3316, amount = 1500, isWarbound = true },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.SkillLine.Leatherworking]
    },
    {
        id = 256636, -- Pattern: Row Walker's Deflectors
        spellID = -1,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = 3263, amount = 150, isWarbound = false },
            { id = 3316, amount = 1500, isWarbound = true },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.SkillLine.Leatherworking]
    }
}

-- Relevant API functions:
-- C_TradeSkillUI.GetRecipeInfo(recipeSpellID)
-- GetProfessions()
-- GetProfessionInfo(index)