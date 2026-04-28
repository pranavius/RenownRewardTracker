---@class RenownRewardTracker
local AddOn = select(2, ...)

---@class RenownRewardCost
---@field id number
---@field amount number
---@field isWarbound boolean

---@class RenownRewardData
---@field id number
---@field spellID number?
---@field questID number?
---@field factionID number
---@field level number
---@field type "Recipe"|"Profession"|"Mount"|"Cosmetic"|"Toy"|"Pet"|"Quest"|"Decor"|"Gear"
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
        spellID = 1237545,
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
        spellID = 1237486,
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
        id = 258124, -- Pattern: Arcanoweave Spellthread
        spellID = 1228975,
        factionID = 2710,
        level = 5,
        type = "Recipe",
        currency = {
            { id = 3266, amount = 150, isWarbound = false },
            { id = 3316, amount = 1500, isWarbound = true },
        },
        skillLineID = AddOn.ExpacSkillLines[AddOn.SkillLine.Tailoring]
    },
    {
        id = 257601, -- Skill Issue: Tailoring
        spellID = 1261784, -- Can this be used to determine if already learned?
        factionID = 2710,
        level = 6,
        type = "Profession",
        currency = { { id = 3266, amount = 75, isWarbound = false } },
        skillLineID = AddOn.ExpacSkillLines[AddOn.SkillLine.Tailoring]
    }
}

-- Relevant API functions:
-- C_TradeSkillUI.GetRecipeInfo(recipeSpellID)
-- GetProfessions()
-- GetProfessionInfo(index)