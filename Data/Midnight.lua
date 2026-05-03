---@class RenownRewardTracker
local AddOn = select(2, ...)

---@type RewardData[]
AddOn.MidnightData = {
    --region Silvermoon Court
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
        id = 245941, -- Silvermoon Sanctum Focus
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
    --endregion
    --region Amani Tribe
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
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Jewelcrafting, amount = 150 },
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
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
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
    --endregion
    --region Hara'ti
    {
        id = 267479, -- Aspiring Hara'ti Defender's Sash
        factionID = 2704,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267480, -- Aspiring Hara'ti Defender's Cord
        factionID = 2704,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267481, -- Aspiring Hara'ti Defender's Belt
        factionID = 2704,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267482, -- Aspiring Hara'ti Defender's Greatbelt
        factionID = 2704,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 256613, -- Cloak of the Hara'ti Elder
        factionID = 2704,
        renownLevel = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 267257, -- Cloak of the Hara'ti Sage
        factionID = 2704,
        renownLevel = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 267258, -- Cloak of the Hara'ti Seer
        factionID = 2704,
        renownLevel = 2,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 246402, -- Hollowed Harandar Gourds
        factionID = 2704,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 246408, -- Haranir Herb Rack
        factionID = 2704,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 92890, -- Quest: A Handful of Voidlight Marl
        factionID = 2704,
        renownLevel = 4,
        type = "Quest",
    },
    {
        id = 258141, -- Recipe: Haranir Phial of Perception
        associatedID = 1230873,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Alchemy, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 247500, -- Recipe: Rootbound Var
        associatedID = 1233133,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Alchemy, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256751, -- Formula: Enchant Weapon - Worldsoul Tenacity
        associatedID = 1236081,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256745, -- Formula: Enchant Chest - Mark of the Rootwarden
        associatedID = 1236068,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256749, -- Formula: Enchant Tool - Haranir Multicrafting
        associatedID = 1236078,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256743, -- Formula: Gleeful Glamor - Haranir
        associatedID = 1236464,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 263443, -- Technique: Contract: The Hara'ti
        associatedID = 1230053,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 258509, -- Technique: Harandar Signpost
        associatedID = 1248630,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 258510, -- Technique: Magnificant Towering Bookcase
        associatedID = 1248631,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256700, -- Design: Signet of Azerothian Blessings
        associatedID = 1230487,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Jewelcrafting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256639, -- Pattern: World Tree Rootwraps
        associatedID = 1237498,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Leatherworking, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 259457, -- Pattern: Simple Haranir Table
        associatedID = 1246940,
        factionID = 2704,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Leatherworking, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 258410, -- Traditions of the Haranir: Herbalism
        associatedID = 93411,
        factionID = 2704,
        renownLevel = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Herbalism, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Herbalism][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 258411, -- Traditions of the Haranir: Inscription
        associatedID = 93412,
        factionID = 2704,
        renownLevel = 6,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 251980, -- Fungarian Sack
        factionID = 2704,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 249768, -- Fungarian Barrel
        factionID = 2704,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 246959, -- Sealed Fungal Jar
        factionID = 2704,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 93932, -- Quest: Legendary Prosperity
        factionID = 2704,
        renownLevel = 8,
        requiredCharacterLevel = 90,
        type = "Quest",
    },
    {
        id = 256615, -- Tabard of the Hara'ti Elder
        factionID = 2704,
        renownLevel = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 267261, -- Tabard of the Hara'ti Sage
        factionID = 2704,
        renownLevel = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 267262, -- Tabard of the Hara'ti Seer
        factionID = 2704,
        renownLevel = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 94794, -- Quest: Fine Fashion Funding
        factionID = 2704,
        renownLevel = 10,
        type = "Quest",
    },
    {
        id = 263039, -- Harandar Flowering Lamp
        factionID = 2704,
        renownLevel = 12,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 263195, -- Harandar Glowvine Lamppost
        factionID = 2704,
        renownLevel = 12,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 750 } },
    },
    {
        id = 263194, -- Harandar Glowvine Sconce
        factionID = 2704,
        renownLevel = 12,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 92891, -- Quest: A Cluster of Voidlight Marl
        factionID = 2704,
        renownLevel = 13,
        type = "Quest",
    },
    {
        id = 256552, -- Verdant Rutaani Seed
        factionID = 2704,
        renownLevel = 13,
        type = "Toy",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 4000 } },
    },
    {
        id = 259337, -- Munchy
        associatedID = 4929,
        factionID = 2704,
        renownLevel = 14,
        type = "Pet",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 2500 } },
    },
    {
        id = 264267, -- Rutaani Birdfeeder
        factionID = 2704,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } }
    },
    {
        id = 264268, -- Rutaani Birdbath
        factionID = 2704,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 264269, -- Rutaani Bird Perch
        factionID = 2704,
        renownLevel = 15,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 246734, -- Fierce Grimlynx
        associatedID = 2614,
        factionID = 2704,
        renownLevel = 16,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 6000 } },
    },
    {
        id = 256614, -- Shoulderguards of the Hara'ti Elder
        factionID = 2704,
        renownLevel = 17,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 267259, -- Shoulderguards of the Hara'ti Sage
        factionID = 2704,
        renownLevel = 17,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 267260, -- Shoulderguards of the Hara'ti Seer
        factionID = 2704,
        renownLevel = 17,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 259073, -- Arsenal: Arms of the Hara'ti
        factionID = 2704,
        renownLevel = 17,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    {
        id = 263019, -- Haranir Pennant
        factionID = 2704,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } }
    },
    {
        id = 92892, -- Quest: A Trove of Voidlight Marl
        factionID = 2704,
        renownLevel = 18,
        type = "Quest",
    },
    {
        id = 252014, -- Cerulean Sporeglider
        associatedID = 2710,
        factionID = 2704,
        renownLevel = 19,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 8000 } },
    },
    {
        id = 258014, -- Ensemble: Hara'ti Guardian's Armor
        factionID = 2704,
        renownLevel = 20,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    {
        id = 258013, -- Ensemble: Hara'ti Scout's Outfit
        factionID = 2704,
        renownLevel = 20,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    {
        id = 258012, -- Ensemble: Hara'ti Rootwarden's Wear
        factionID = 2704,
        renownLevel = 20,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 5000 } },
    },
    --endregion
    --region The Singularity
    {
        id = 93970, -- Quest: Researching the Storm
        factionID = 2699,
        renownLevel = 2,
        type = "Quest",
    },
    {
        id = 267607, -- Hazy Penumbral Handwraps
        factionID = 2699,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267606, -- Gloves of Infinite Gravity
        factionID = 2699,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267605, -- Neverending Vortex Grasps
        factionID = 2699,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 267604, -- Clutches of the Colossal Behemoths
        factionID = 2699,
        renownLevel = 2,
        type = "Gear",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 25 } },
    },
    {
        id = 262607, -- Void Elf Throne
        factionID = 2699,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 248964, -- Cosmic Void Table
        factionID = 2699,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 264509, -- Void Elf Barrel
        factionID = 2699,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 263723, -- Shawl of the Gilded Collapsed Star
        factionID = 2699,
        renownLevel = 4,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 266979, -- Shawl of the Darkened Collapsed Star
        factionID = 2699,
        renownLevel = 4,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 266984, -- Shawl of the Nebulous Collapsed Star
        factionID = 2699,
        renownLevel = 4,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 94469, -- Quest: A Handful of Voidlight Marl
        factionID = 2699,
        renownLevel = 4,
        type = "Quest",
    },
    {
        id = 262473, -- Cosmic Chalice
        factionID = 2699,
        renownLevel = 5,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 263499, -- Sturdy Void Elf Trunk
        factionID = 2699,
        renownLevel = 5,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 256758, -- Formula: Enchant Tool - Ren'dorei Ingenuity
        associatedID = 1236093,
        factionID = 2699,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 256757, -- Formula: Enchant Weapon - Acuity of the Ren'dorei
        associatedID = 1236095,
        factionID = 2699,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 268044, -- Formula: Endless Codex of the Voidtouched
        associatedID = 1281349,
        factionID = 2699,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Enchanting, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 258128, -- Pattern: Lush Telogrus Carpet
        associatedID = 1229001,
        factionID = 2699,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Tailoring, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 259459, -- Formula: Potion of Recklessness
        associatedID = 1230859,
        factionID = 2699,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Alchemy, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 258500, -- Technique: Floating Void-Touched Tome
        associatedID = 1248621,
        factionID = 2699,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 263445, -- Technique: Contract: The Singularity
        associatedID = 1230054,
        factionID = 2699,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Inscription, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 265534, -- Plans: Ren'dorei Anvil
        associatedID = 1276111,
        factionID = 2699,
        renownLevel = 5,
        type = "Recipe",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 1500 },
            { id = AddOn.Currencies.ArtisanMoxie.Blacksmithing, amount = 150 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_MIDNIGHT]
    },
    {
        id = 93933, -- Quest: Guarded Treasures
        factionID = 2699,
        renownLevel = 7,
        requiredCharacterLevel = 90,
        type = "Quest",
    },
    {
        id = 262462, -- Dark Void Inkwell
        factionID = 2699,
        renownLevel = 8,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 262466, -- Void Elf Table
        factionID = 2699,
        renownLevel = 8,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 264344, -- Cosmic Void Orb
        factionID = 2699,
        renownLevel = 8,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 262645, -- Beyond the Event Horizon: Alchemy
        associatedID = 93794,
        factionID = 2699,
        renownLevel = 9,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Alchemy, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 262644, -- Beyond the Event Horizon: Blacksmithing
        associatedID = 93795,
        factionID = 2699,
        renownLevel = 9,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Blacksmithing, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 262646, -- Beyond the Event Horizon: Engineering
        associatedID = 93796,
        factionID = 2699,
        renownLevel = 9,
        type = "Profession",
        currency = {
            { id = AddOn.Currencies.VoidlightMarl, amount = 750 },
            { id = AddOn.Currencies.ArtisanMoxie.Engineering, amount = 75 },
        },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_MIDNIGHT],
    },
    {
        id = 94671, -- Quest: Finery Funds
        factionID = 2699,
        renownLevel = 10,
        type = "Quest",
    },
    {
        id = 263572, -- Tabard of the Gilded Collapsed Star
        factionID = 2699,
        renownLevel = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 266981, -- Tabard of the Darkened Collapsed Star
        factionID = 2699,
        renownLevel = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 266982, -- Tabard of the Nebulous Collapsed Star
        factionID = 2699,
        renownLevel = 10,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 264351, -- Ornate Cosmic Banner
        factionID = 2699,
        renownLevel = 12,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 262609, -- Void Elf Floating Lantern
        factionID = 2699,
        renownLevel = 12,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 262463, -- Cosmic Void Ashwell
        factionID = 2699,
        renownLevel = 12,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 263492, -- Blitzcreek
        associatedID = 4952,
        factionID = 2699,
        renownLevel = 14,
        type = "Pet",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 2500 } },
    },
    {
        id = 94470, -- Quest: A Cluster of Voidlight Marl
        factionID = 2699,
        renownLevel = 14,
        type = "Quest",
    },
    {
        id = 263573, -- Pauldrons of the Gilded Collapsed Star
        factionID = 2699,
        renownLevel = 15,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 266980, -- Pauldrons of the Darkened Collapsed Star
        factionID = 2699,
        renownLevel = 15,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 266983, -- Pauldrons of the Nebulous Collapsed Star
        factionID = 2699,
        renownLevel = 15,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 3000 } },
    },
    {
        id = 263244, -- Enigmatic Fountain
        factionID = 2699,
        renownLevel = 16,
        type = "Toy",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 4000 } },
    },
    {
        id = 257445, -- Ravenous Shredclaw
        associatedID = 2789,
        factionID = 2699,
        renownLevel = 17,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 6000 } },
    },
    {
        id = 264341, -- Cosmic Void Crate
        factionID = 2699,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 264339, -- Cosmic Void Summoning Crystal
        factionID = 2699,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 264337, -- Cosmic Void Training Dummy
        factionID = 2699,
        renownLevel = 18,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } },
    },
    {
        id = 94471, -- Quest: A Trove of Voidlight Marl
        factionID = 2699,
        renownLevel = 18,
        type = "Quest",
    },
    {
        id = 260696, -- Voidbound Stormray
        associatedID = 2828,
        factionID = 2699,
        renownLevel = 19,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 8000 } },
    },
    --endregion
    --region Ritual Sites
    {
        id = 273159, -- Void Elf Scribe's Desk
        factionID = 2792,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 250 } },
    },
    {
        id = 273135, -- Void Elf Floating Desk
        factionID = 2792,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 273142, -- Runic Parchment
        factionID = 2792,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 273157, -- Void Flame Candle
        factionID = 2792,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 273147, -- Void Inkwell
        factionID = 2792,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 150 } },
    },
    {
        id = 270331, -- Void-Infused Mindbreaker Fry
        associatedID = 5037,
        factionID = 2792,
        renownLevel = 6,
        type = "Pet",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 1800 } },
    },
    {
        id = 270330, -- Void-Touched Dragonhawk Egg
        associatedID = 5036,
        factionID = 2792,
        renownLevel = 6,
        type = "Pet",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 1800 } },
    },
    {
        id = 271158, -- Dark Obelisk
        factionID = 2792,
        renownLevel = 7,
        type = "Decor",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 500 } },
    },
    {
        id = 268578, -- Void-Touched Hawkstrider
        associatedID = 2935,
        factionID = 2792,
        renownLevel = 8,
        type = "Mount",
        currency = { { id = AddOn.Currencies.VoidlightMarl, amount = 4500 } },
    },
    --endregion
}

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
            elseif item.type == "Gear" then
                -- Need item class and subclass to determine whether or not to show it for a character
                local itemName, _, _, _, _, _, _, _, _, iconID, _, itemClassID, itemSubclassID = C_Item.GetItemInfo(item.id)
                self.MidnightCache[item.id] = {
                    itemName = itemName or item.type.." "..item.id,
                    iconID = iconID or AddOn.iconFallbackTextureID,
                    armorClassID = itemClassID == 4 and itemSubclassID or nil
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
