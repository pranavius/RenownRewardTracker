---@type RenownRewardTracker
local AddOn = select(2, ...)

AddOn.windowMinWidth = 800
AddOn.windowMinHeight = 400
AddOn.windowMaxWidth = 800
AddOn.windowMaxHeight = 800
-- AddOn.selectedExpansion = LE_EXPANSION_MIDNIGHT
AddOn.selectedExpansion = LE_EXPANSION_DRAGONFLIGHT
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
        other = true,
        ignoreAll = false,
    },
    factionVisibility = {},
    debug = false,
    minimap = { hide = false }
}

AddOn.DataBrokerIcon = LibStub("LibDBIcon-1.0")

AddOn.SupportedExpansions = {
    [LE_EXPANSION_MIDNIGHT] = "Midnight",
    [LE_EXPANSION_WAR_WITHIN] = "The War Within",
    [LE_EXPANSION_DRAGONFLIGHT] = "Dragonflight",
    -- [LE_EXPANSION_SHADOWLANDS] = "Shadowlands"
}

---@enum Faction
local Faction = {
    DragonscaleExpedition = 2507,
    MaruukCentaur = 2503,
    IskaaraTuskarr = 2511,
    ValdrakkenAccord = 2510,
    LoammNiffen = 2564,
    DreamWardens = 2574,
    KegLegsCrew = 2593,
    CouncilOfDornogal = 2590,
    AssemblyOfTheDeeps = 2594,
    HallowfallArathi = 2570,
    SeveredThreads = 2600,
    CartelsOfUndermine = 2653,
    Gallagio = 2685,
    FlamesRadiance = 2688,
    KareshTrust = 2658,
    ManaforgeVandals = 2736,
    SilvermoonCourt = 2710,
    AmaniTribe = 2696,
    Harati = 2704,
    Singularity = 2699,
    RitualSites = 2792
}
AddOn.Faction = Faction

---@type table<Faction, string>
AddOn.FactionIconAtlasMap = {
    [Faction.DragonscaleExpedition] = "MajorFactions_Icons_Expedition512",
    [Faction.MaruukCentaur] = "MajorFactions_Icons_Centaur512",
    [Faction.IskaaraTuskarr] = "MajorFactions_Icons_Tuskarr512",
    [Faction.ValdrakkenAccord] = "MajorFactions_Icons_Valdrakken512",
    [Faction.LoammNiffen] = "MajorFactions_Icons_Niffen512",
    [Faction.DreamWardens] = "MajorFactions_Icons_Dream512",
    [Faction.KegLegsCrew] = "majorfactions_icons_plunderstorm512",
    [Faction.CouncilOfDornogal] = "majorfactions_icons_storm512",
    [Faction.AssemblyOfTheDeeps] = "majorfactions_icons_candle512",
    [Faction.HallowfallArathi] = "majorfactions_icons_flame512",
    [Faction.SeveredThreads] = "majorfactions_icons_web512",
    [Faction.CartelsOfUndermine] = "majorfactions_icons_rocket512",
    [Faction.Gallagio] = "majorfactions_icons_stars512",
    [Faction.FlamesRadiance] = "majorfactions_icons_Nightfall512",
    [Faction.KareshTrust] = "majorfactions_icons_Karesh512",
    [Faction.ManaforgeVandals] = "majorfactions_icons_ManaforgeVandals512",
    [Faction.SilvermoonCourt] = "majorfactions_icons_light512",
    [Faction.AmaniTribe] = "majorfactions_icons_origin512",
    [Faction.Harati] = "majorfactions_icons_root512",
    [Faction.Singularity] = "majorfactions_icons_sky512",
    [Faction.RitualSites] = "majorfactions_icons_ritualsites512",
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
        [LE_EXPANSION_WAR_WITHIN] = 2871,
        [LE_EXPANSION_DRAGONFLIGHT] = 2823,
        -- [LE_EXPANSION_SHADOWLANDS] = 2750
    },
    [AddOn.Professions.Blacksmithing] = {
        [LE_EXPANSION_MIDNIGHT] = 471004,
        [LE_EXPANSION_WAR_WITHIN] = 2872,
        [LE_EXPANSION_DRAGONFLIGHT] = 2822,
        -- [LE_EXPANSION_SHADOWLANDS] = 2751
    },
    [AddOn.Professions.Cooking] = {
        [LE_EXPANSION_MIDNIGHT] = 471005,
        [LE_EXPANSION_WAR_WITHIN] = 2873,
        [LE_EXPANSION_DRAGONFLIGHT] = 2824,
        -- [LE_EXPANSION_SHADOWLANDS] = 2752
    },
    [AddOn.Professions.Enchanting] = {
        [LE_EXPANSION_MIDNIGHT] = 471006,
        [LE_EXPANSION_WAR_WITHIN] = 2874,
        [LE_EXPANSION_DRAGONFLIGHT] = 2825,
        -- [LE_EXPANSION_SHADOWLANDS] = 2753
    },
    [AddOn.Professions.Engineering] = {
        [LE_EXPANSION_MIDNIGHT] = 471007,
        [LE_EXPANSION_WAR_WITHIN] = 2875,
        [LE_EXPANSION_DRAGONFLIGHT] = 2827,
        -- [LE_EXPANSION_SHADOWLANDS] = 2755
    },
    [AddOn.Professions.Fishing] = {
        [LE_EXPANSION_MIDNIGHT] = 471021,
        [LE_EXPANSION_WAR_WITHIN] = 2876,
        [LE_EXPANSION_DRAGONFLIGHT] = 2826,
        -- [LE_EXPANSION_SHADOWLANDS] = 2754
    },
    [AddOn.Professions.Herbalism] = {
        [LE_EXPANSION_MIDNIGHT] = 471009, -- Herb Gathering (Midnight)
        [LE_EXPANSION_WAR_WITHIN] = 441327, -- Herb Gathering (Khaz Algar)
        [LE_EXPANSION_DRAGONFLIGHT] = 366252, -- Herb Gathering (Dragon Isles)
        -- [LE_EXPANSION_SHADOWLANDS] = 2760
    },
    [AddOn.Professions.Inscription] = {
        [LE_EXPANSION_MIDNIGHT] = 471010,
        [LE_EXPANSION_WAR_WITHIN] = 2878,
        [LE_EXPANSION_DRAGONFLIGHT] = 2828,
        -- [LE_EXPANSION_SHADOWLANDS] = 2756
    },
    [AddOn.Professions.Jewelcrafting] = {
        [LE_EXPANSION_MIDNIGHT] = 471011,
        [LE_EXPANSION_WAR_WITHIN] = 2879,
        [LE_EXPANSION_DRAGONFLIGHT] = 2829,
        -- [LE_EXPANSION_SHADOWLANDS] = 2757
    },
    [AddOn.Professions.Leatherworking] = {
        [LE_EXPANSION_MIDNIGHT] = 471012,
        [LE_EXPANSION_WAR_WITHIN] = 2880,
        [LE_EXPANSION_DRAGONFLIGHT] = 2830,
        -- [LE_EXPANSION_SHADOWLANDS] = 2758
    },
    [AddOn.Professions.Mining] = {
        [LE_EXPANSION_MIDNIGHT] = 471013,
        [LE_EXPANSION_WAR_WITHIN] = 2881,
        [LE_EXPANSION_DRAGONFLIGHT] = 2833,
        -- [LE_EXPANSION_SHADOWLANDS] = 2761
    },
    [AddOn.Professions.Skinning] = {
        [LE_EXPANSION_MIDNIGHT] = 471014,
        [LE_EXPANSION_WAR_WITHIN] = 2882,
        [LE_EXPANSION_DRAGONFLIGHT] = 2834,
        -- [LE_EXPANSION_SHADOWLANDS] = 2762
    },
    [AddOn.Professions.Tailoring] = {
        [LE_EXPANSION_MIDNIGHT] = 471015,
        [LE_EXPANSION_WAR_WITHIN] = 2883,
        [LE_EXPANSION_DRAGONFLIGHT] = 2831,
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
    Gold = "Coin-Gold",
    Silver = "Coin-Silver",
    Copper = "Coin-Copper",
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
    },
    ResonanceCrystal = 2815,
    Kej = 3056,
    DragonIslesSupplies = 2003,
}

AddOn.ItemCurrencies = {
    ArtisansAcuity = 210814,
    AdamantScales = 193214,
    ResilientLeather = 193210,
    TatteredWildercloth = 193050,
    SereviteOre = 190396,
    TuftOfPrimalWool = 201405,
    TallstriderSinew = 201404,
    IridescentPlume = 201401,
    ContouredFowlfeather = 193053,
    SpoolOfWilderthread = 192096,
    AwakenedFire = 190321,
    DenseHide = 193217,
    DraconiumOre = 188658,
    RunedWrithebark = 194863,
    LargeSturdyFemur = 201402,
    AwakenedAir = 190327,
    AquaticMaw = 201400,
    MastodonTusk = 201403,
    ScalebellyMackerel = 194730,
    TemporalDragonhead = 194969,
    CeruleanSpinefish = 194968,
    AileronSeamoth = 194967,
    ThousandbitePiranha = 194966,
    PebbledRockSalts = 197756,
    AwakenedFrost = 190329,
    PrimalBearSpine = 201399,
    ChromaticDust = 194123,
    QueensRuby = 192838,
    RainbowPearl = 198397,
    GlowingTitanOrb = 201406,
    EternityAmber = 192850,
}

-- Necessary because some items are evaluated with an incorrect item level even after applying correct bonus IDs
---@type table<string, number>
AddOn.GearItemLevelFixes = {
    ["228419:11335"] = 75,
    ["228418:11334"] = 77,
    ["228426:11336"] = 78,
    ["228425:11336"] = 78,
    ["228427:11336"] = 78,
    ["228428:11336"] = 78,
    ["228420:11337"] = 80,
    ["228420:10281:1485"] = 83,
    ["228420:10273:1498"] = 86
}
