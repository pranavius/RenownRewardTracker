---@class RenownRewardTracker
local AddOn = select(2, ...)

---@type RewardData[]
AddOn.MidnightData = {
    --#region Silvermoon Court
    {
        id = 265658, -- Silvermoon Court Cloak
        factionID = 2710,
        renownLevel = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 259028, -- Ensemble: Haven's Elegant Regalia
        associatedID = 1264350,
        factionID = 2710,
        renownLevel = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    {
        id = 267638, -- Tarnished Silvermoon Sunspire
        factionID = 2710,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267639, -- Tarnished Silvermoon Sunguard
        factionID = 2710,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267640, -- Tarnished Silvermoon Sunveil
        factionID = 2710,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267641, -- Tarnished Silvermoon Suncrest
        factionID = 2710,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 263223, -- Gilded Sky-Blue Drapery
        associatedID = 1269974,
        factionID = 2710,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263205, -- Crimson Silvermoon Runner
        associatedID = 1269953,
        factionID = 2710,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263206, -- Plum Eversong Rug
        associatedID = 1269956,
        factionID = 2710,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263444, -- Technique: Contract: The Silvermoon Court
        associatedID = 1230051,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 259363, -- Design: Bejeweled Sin'dorei Lyre
        associatedID = 1246891,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Jewelcrafting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256760, -- Formula: Enchant Ring - Silvermoon's Tenacity
        associatedID = 1236089,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 259374, -- Formula: Spellbound Tome of Thalassian Magics
        associatedID = 1246907,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 268042, -- Formula: Endless Codex of Blooming Light
        associatedID = 1281342,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 265528, -- Plans: Gilded Silvermoon Anvil
        associatedID = 1276108,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.ArtisanMoxie.Blacksmithing, amount = 150 } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 265532, -- Plans: Gilded Silvermoon Hanger
        associatedID = 1276110,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.ArtisanMoxie.Blacksmithing, amount = 150 } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256636, -- Pattern: Row Walker's Deflectors
        associatedID = 1237486,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Leatherworking, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 258124, -- Pattern: Arcanoweave Spellthread
        associatedID = 1228975,
        factionID = 2710,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Tailoring, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 257601, -- Skill Issue: Tailoring
        associatedID = 93201,
        factionID = 2710,
        renownLevel = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Tailoring, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 257600, -- Skill Issue: Enchanting
        associatedID = 92374,
        factionID = 2710,
        renownLevel = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 257599, -- Skill Issue: Jewelcrafting
        associatedID = 93222,
        factionID = 2710,
        renownLevel = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Jewelcrafting, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 93200, -- Quest: A Handful of Voidlight Marl
        factionID = 2710,
        renownLevel = 6,
        type = "Quest",
    },
    {
        id = 245290, -- Long Silvermoon Table
        associatedID = 1238388,
        factionID = 2710,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263228, -- Grand Lightwood Table
        associatedID = 1270129,
        factionID = 2710,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } },
    },
    {
        id = 263229, -- Ornate Lightwood Table
        associatedID = 1270130,
        factionID = 2710,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 256040, -- Silvermoon Gemmed Chair
        associatedID = 1259841,
        factionID = 2710,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 257422, -- Gilded Sunfury Chair Chair
        associatedID = 1261548,
        factionID = 2710,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 93930, -- Quest: Courting Success
        factionID = 2710,
        renownLevel = 9,
        requiredCharacterLevel = 90,
        type = "Quest",
    },
    {
        id = 265663, -- Silvermoon Court Tabard
        factionID = 2710,
        renownLevel = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 94816, -- Quest: Fine Fashion Funding
        factionID = 2710,
        renownLevel = 10,
        type = "Quest",
    },
    {
        id = 263232, -- Floating Spire Shelf
        associatedID = 1270133,
        factionID = 2710,
        renownLevel = 11,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263234, -- Turning Silvermoon Archives
        associatedID = 1270135,
        factionID = 2710,
        renownLevel = 11,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } },
    },
    {
        id = 259224, -- Dragonhawk Munchkin
        associatedID = 4928,
        factionID = 2710,
        renownLevel = 12,
        type = "Pet",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 2500 } },
    },
    {
        id = 93549, -- Quest: A Cluster of Voidlight Marl
        factionID = 2710,
        renownLevel = 12,
        type = "Quest",
    },
    {
        id = 259240, -- Sin'dorei Wine
        factionID = 2710,
        renownLevel = 13,
        type = "Toy",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 4000 } },
    },
    {
        id = 259082, -- Ensemble: Haven Dignitary Trappings
        associatedID = 1264423,
        factionID = 2710,
        renownLevel = 14,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    {
        id = 245985, -- Floating Azure Lantern
        factionID = 2710,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 264264, -- Gilded Vigil Post
        factionID = 2710,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 257421, -- Bejewleed Silvermoon Chandelier
        factionID = 2710,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } }
    },
    {
        id = 264265, -- Sanctified Flame Lantern
        factionID = 2710,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 265659, -- Silvermoon Court Epaulets
        factionID = 2710,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 257154, -- Crimson Silvermoon Hawkstrider
        associatedID = 2761,
        factionID = 2710,
        renownLevel = 17,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 6000 } },
    },
    {
        id = 249559, -- Reverent Sin'dorei Statue
        factionID = 2710,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } }
    },
    {
        id = 345941, -- Silvermoon Sanctum Focus
        factionID = 2710,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } }
    },
    {
        id = 93548, -- Quest: A Trove of Voidlight Marl
        factionID = 2710,
        renownLevel = 18,
        type = "Quest",
    },
    {
        id = 257142, -- Fiery Dragonhawk
        associatedID = 2753,
        factionID = 2710,
        renownLevel = 19,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 8000 } },
    },
    {
        id = 259091, -- Ensemble: Haven Socialite's Attire
        factionID = 2710,
        renownLevel = 20,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    --#endregion
    --#region Amani Tribe
    {
        id = 250799, -- Loa-Blessed Cloak
        factionID = 2696,
        renownLevel = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 267642, -- Worn Amani Heartstring Pendant
        factionID = 2696,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } }
    },
    {
        id = 267643, -- Worn Amani Totemstring
        factionID = 2696,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } }
    },
    {
        id = 263318, -- Simple Amani Basket
        factionID = 2696,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } }
    },
    {
        id = 263320, -- Rope-Bound Amani Basket
        factionID = 2696,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } }
    },
    {
        id = 251629, -- Technique: Contract: The Amani Tribe
        associatedID = 1230052,
        factionID = 2696,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 258305, -- Recipe: Amani Extract
        associatedID = 1230864,
        factionID = 2696,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Alchemy, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 256647, -- Pattern: Forest Hunter's Armor Kit
        associatedID = 1237544,
        factionID = 2696,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Leatherworking, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 256717, -- Design: Loa Worshipper's Band
        associatedID = 1230479,
        factionID = 2696,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Jewelcrafting, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 256741, -- Formula: Enchant Weapon - Strength of Halazzi
        associatedID = 1236065,
        factionID = 2696,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 256744, -- Formula: Enchant Tool - Amani Perception
        associatedID = 1236063,
        factionID = 2696,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 268043, -- Formula: Endless Codex of Nature's Grace
        associatedID = 1281348,
        factionID = 2696,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 250924, -- Whisper of the Loa: Mining
        associatedID = 92372,
        factionID = 2696,
        renownLevel = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Mining, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Mining][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 250923, -- Whisper of the Loa: Skinning
        associatedID = 92373,
        factionID = 2696,
        renownLevel = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Skinning, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Skinning][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 250922, -- Whisper of the Loa: Leatherworking
        associatedID = 92371,
        factionID = 2696,
        renownLevel = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Leatherworking, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 92386, -- Quest: A Handful of Voidlight Marl
        factionID = 2696,
        renownLevel = 6,
        type = "Quest",
    },
    {
        id = 264350, -- Carved Idol of Akil'zon, Loa of Victory
        factionID = 2696,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 256933, -- Carved Idol of Jan'alai, Loa of Fire
        factionID = 2696,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 256927, -- Carved Idol of Nalorakk, Loa of War
        factionID = 2696,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 258290, -- Carved Idol of Halazzi, Loa of the Hunt
        factionID = 2696,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 93931, -- Quest: An Abundance of Wealth
        factionID = 2696,
        renownLevel = 9,
        requiredCharacterLevel = 90, -- Also requires Abundance unlocked (TODO: Figure out a way to check for this)
        type = "Quest",
    },
    {
        id = 250800, -- Loa-Blessed Tabard
        factionID = 2696,
        renownLevel = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 94813, -- Quest: Fine Fashion Funding
        factionID = 2696,
        renownLevel = 10,
        type = "Quest",
    },
    {
        id = 258549, -- Burning Amani Pinecone
        factionID = 2696,
        renownLevel = 11,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 264333, -- Amani Incense Burner
        factionID = 2696,
        renownLevel = 11,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } }
    },
    {
        id = 250863, -- Naloki
        associatedID = 4888,
        factionID = 2696,
        renownLevel = 12,
        type = "Pet",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 2500 } },
    },
    {
        id = 92387, -- Quest: A Cluster of Voidlight Marl
        factionID = 2696,
        renownLevel = 12,
        type = "Quest",
    },
    {
        id = 250974, -- Akil'zon's Updraft
        factionID = 2696,
        renownLevel = 13,
        type = "Toy",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 4000 } },
    },
    {
        id = 256934, -- Boiling Amani Cauldron
        factionID = 2696,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 256926, -- Empty Amani Cauldron
        factionID = 2696,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 256924, -- Hash'ey Heartbroth Cauldron
        factionID = 2696,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 250801, -- Loa-Blessed Shoulderguards
        factionID = 2696,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 257219, -- Amani Blessed Bear
        associatedID = 2776,
        factionID = 2696,
        renownLevel = 17,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 6000 } },
    },
    {
        id = 260516, -- Visage of Jan'alai, Loa of Fire
        factionID = 2696,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } }
    },
    {
        id = 260515, -- Visage of Halazzi, Loa of the Hunt
        factionID = 2696,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } }
    },
    {
        id = 260514, -- Visage of Nalorakk, Loa of War
        factionID = 2696,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } }
    },
    {
        id = 260202, -- Visage of Akil'zon, Loa of Victory
        factionID = 2696,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } }
    },
    {
        id = 92388, -- Quest: A Trove of Voidlight Marl
        factionID = 2696,
        renownLevel = 18,
        type = "Quest",
    },
    {
        id = 250889, -- Amani Windcaller
        associatedID = 2694,
        factionID = 2696,
        renownLevel = 19,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 8000 } },
    },
    {
        id = 250855, -- Crown of the Loa-Speaker
        factionID = 2696,
        renownLevel = 20,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    --#endregion
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

---@param frame ListItem
---@param reward RewardData
function AddOn.MidnightDataProviderInit(frame, reward)
    if not frame or not reward then return end

    frame.isFactionName = false
    frame.Bg:Hide()
    frame.FactionBg:Hide()
    frame.IconDescContainer.Icon:SetScript("OnEnter", nil)
    frame.IconDescContainer.Icon:SetScript("OnLeave", nil)
    frame.CurrencyDisplay.Text:SetText("")
    frame.CurrencyDisplay:SetScript("OnClick", nil)
    frame.CurrencyDisplay:SetScript("OnEnter", nil)
    frame.CurrencyDisplay:SetScript("OnLeave", nil)

    if reward.id == 0 then
        frame.isFactionName = true
        frame.FactionBg:Show()
        frame.RewardType:SetText("")
        local factionData = C_MajorFactions.GetMajorFactionData(reward.factionID)
        frame.FactionBg:SetGradient("VERTICAL", factionData.factionFontColor.color, BLACK_FONT_COLOR)
        frame.IconDescContainer.Desc:SetText(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("Faction: "..(factionData and factionData.name or "Unknown")))
        local atlas = AddOn.FactionIconAtlasMap[reward.factionID]
        if atlas then
            frame.IconDescContainer.Icon:SetAtlas(atlas)
        else
            frame.IconDescContainer.Icon:SetTexture(AddOn.iconFallbackTextureID)
        end
        return
    end

    local index = AddOn.DataProvider:FindIndex(reward)
    if index % 2 == 0 then frame.Bg:Show() end
    frame.factionID = reward.factionID

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
        local cacheData = AddOn.MidnightCache[reward.id]
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
            GameTooltip:AddLine("<Click to open currency menu>", gR, gG, gB, false)
            GameTooltip:Show()
        end)
        frame.CurrencyDisplay:HookScript("OnLeave", function() GameTooltip:Hide() end)
    end
end
