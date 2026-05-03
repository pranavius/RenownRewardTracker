---@class RenownRewardTracker
local AddOn = select(2, ...)

AddOn.windowMinWidth = 800
AddOn.windowMinHeight = 400
AddOn.windowMaxWidth = 800
AddOn.windowMaxHeight = 800
AddOn.selectedExpansion = LE_EXPANSION_MIDNIGHT
AddOn.iconFallbackTextureID = 134400
AddOn.initialized = false

---@type RenownRewardTrackerDatabase
AddOn.DatabaseDefaults = {
    toggles = {
        mount = true,
        recipe = true,
        profession = true,
        cosmetic = true,
        toy = true,
        pet = true,
        quest = true,
        decor = true,
        gear = true,
        ignoreAll = false,
    },
    factionVisibility = {},
    debug = false
}

AddOn.SupportedExpansions = {
    [LE_EXPANSION_MIDNIGHT] = "Midnight",
    [LE_EXPANSION_WAR_WITHIN] = "The War Within",
    [LE_EXPANSION_DRAGONFLIGHT] = "Dragonflight",
    [LE_EXPANSION_SHADOWLANDS] = "Shadowlands"
}

AddOn.FactionIconAtlasMap = {
    [2710] = "majorfactions_icons_light512",
    [2696] = "majorfactions_icons_origin512",
    [2704] = "majorfactions_icons_root512",
    [2699] = "majorfactions_icons_sky512",
    [2792] = "majorfactions_icons_ritualsites512",
}

---@enum ArmorSubclass
AddOn.ArmorSubclasses = {
    Misc = 0,
    Cloth = 1,
    Leather = 2,
    Mail = 3,
    Plate = 4
}
---@type table<string, ArmorSubclass>
AddOn.ClassFileArmorTypeMap = {
    WARRIOR = AddOn.ArmorSubclasses.Plate,
    PALADIN = AddOn.ArmorSubclasses.Plate,
    HUNTER = AddOn.ArmorSubclasses.Mail,
    ROGUE = AddOn.ArmorSubclasses.Leather,
    PRIEST = AddOn.ArmorSubclasses.Cloth,
    DEATHKNIGHT = AddOn.ArmorSubclasses.Plate,
    SHAMAN = AddOn.ArmorSubclasses.Mail,
    MAGE = AddOn.ArmorSubclasses.Cloth,
    WARLOCK = AddOn.ArmorSubclasses.Cloth,
    MONK = AddOn.ArmorSubclasses.Leather,
    DRUID = AddOn.ArmorSubclasses.Leather,
    DEMONHUNTER = AddOn.ArmorSubclasses.Leather,
    EVOKER = AddOn.ArmorSubclasses.Mail,
}

---@enum Profession
AddOn.Professions = {
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

---Map of `SpellID` for each profession specific to a supported expansion (used to determine whether the correct profession to learn a recipe is known)
---@type table<Profession, table<number, number>>
AddOn.ExpacProfSpellIDs = {
    [AddOn.Professions.Alchemy] = {
        [LE_EXPANSION_MIDNIGHT] = 471003,
        -- [LE_EXPANSION_WAR_WITHIN] = 2871,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2823,
        -- [LE_EXPANSION_SHADOWLANDS] = 2750
    },
    [AddOn.Professions.Blacksmithing] = {
        [LE_EXPANSION_MIDNIGHT] = 471004,
        -- [LE_EXPANSION_WAR_WITHIN] = 2872,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2822,
        -- [LE_EXPANSION_SHADOWLANDS] = 2751
    },
    [AddOn.Professions.Cooking] = {
        [LE_EXPANSION_MIDNIGHT] = 471005,
        -- [LE_EXPANSION_WAR_WITHIN] = 2873,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2824,
        -- [LE_EXPANSION_SHADOWLANDS] = 2752
    },
    [AddOn.Professions.Enchanting] = {
        [LE_EXPANSION_MIDNIGHT] = 471006,
        -- [LE_EXPANSION_WAR_WITHIN] = 2874,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2825,
        -- [LE_EXPANSION_SHADOWLANDS] = 2753
    },
    [AddOn.Professions.Engineering] = {
        [LE_EXPANSION_MIDNIGHT] = 471007,
        -- [LE_EXPANSION_WAR_WITHIN] = 2875,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2827,
        -- [LE_EXPANSION_SHADOWLANDS] = 2755
    },
    [AddOn.Professions.Fishing] = {
        [LE_EXPANSION_MIDNIGHT] = 471021,
        -- [LE_EXPANSION_WAR_WITHIN] = 2876,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2826,
        -- [LE_EXPANSION_SHADOWLANDS] = 2754
    },
    [AddOn.Professions.Herbalism] = {
        [LE_EXPANSION_MIDNIGHT] = 471009, -- Herb Gathering (Midnight)
        -- [LE_EXPANSION_WAR_WITHIN] = 2877,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2832,
        -- [LE_EXPANSION_SHADOWLANDS] = 2760
    },
    [AddOn.Professions.Inscription] = {
        [LE_EXPANSION_MIDNIGHT] = 471010,
        -- [LE_EXPANSION_WAR_WITHIN] = 2878,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2828,
        -- [LE_EXPANSION_SHADOWLANDS] = 2756
    },
    [AddOn.Professions.Jewelcrafting] = {
        [LE_EXPANSION_MIDNIGHT] = 471011,
        -- [LE_EXPANSION_WAR_WITHIN] = 2879,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2829,
        -- [LE_EXPANSION_SHADOWLANDS] = 2757
    },
    [AddOn.Professions.Leatherworking] = {
        [LE_EXPANSION_MIDNIGHT] = 471012,
        -- [LE_EXPANSION_WAR_WITHIN] = 2880,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2830,
        -- [LE_EXPANSION_SHADOWLANDS] = 2758
    },
    [AddOn.Professions.Mining] = {
        [LE_EXPANSION_MIDNIGHT] = 471013,
        -- [LE_EXPANSION_WAR_WITHIN] = 2881,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2833,
        -- [LE_EXPANSION_SHADOWLANDS] = 2761
    },
    [AddOn.Professions.Skinning] = {
        [LE_EXPANSION_MIDNIGHT] = 471014,
        -- [LE_EXPANSION_WAR_WITHIN] = 2882,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2834,
        -- [LE_EXPANSION_SHADOWLANDS] = 2762
    },
    [AddOn.Professions.Tailoring] = {
        [LE_EXPANSION_MIDNIGHT] = 471015,
        -- [LE_EXPANSION_WAR_WITHIN] = 2883,
        -- [LE_EXPANSION_DRAGONFLIGHT] = 2831,
        -- [LE_EXPANSION_SHADOWLANDS] = 2759
    }

}

AddOn.InvTypeToSlots = {
    INVTYPE_HEAD          = { 1 },
    INVTYPE_NECK          = { 2 },
    INVTYPE_SHOULDER      = { 3 },
    INVTYPE_CHEST         = { 5 },
    INVTYPE_ROBE          = { 5 },
    INVTYPE_WAIST         = { 6 },
    INVTYPE_LEGS          = { 7 },
    INVTYPE_FEET          = { 8 },
    INVTYPE_WRIST         = { 9 },
    INVTYPE_HAND          = { 10 },
    INVTYPE_FINGER        = { 11, 12 },
    INVTYPE_TRINKET       = { 13, 14 },
    INVTYPE_CLOAK         = { 15 },
    INVTYPE_2HWEAPON      = { 16 },
    INVTYPE_WEAPON        = { 16 },
    INVTYPE_WEAPONMAINHAND = { 16 },
    INVTYPE_WEAPONOFFHAND  = { 17 },
    INVTYPE_SHIELD        = { 17 },
    INVTYPE_HOLDABLE      = { 17 },
}

AddOn.Currencies = {
    VoidlightMarl = 3316,
    ArtisanMoxie = {
        Alchemy = 3256,
        Blacksmithing = 3257,
        Enchanting = 3258,
        Engineering = 3259,
        Herbalism = 3260,
        Inscription = 3261,
        Jewelcrafting = 3262,
        Leatherworking = 3263,
        Mining = 3264,
        Skinning = 3265,
        Tailoring = 3266,
    }
}
