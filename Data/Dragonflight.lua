-- TODO: So. Many. Quests. Added important ones, but need to come back to this later (or not...)
---@type RenownRewardTracker
local AddOn = select(2, ...)

---@type RewardData[]
AddOn.DragonflightData = {
    --region Dragonscale Expedition
    {
        id = 198718, -- Excavator's Chisel
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.AdamantScales, amount = 3, isItem = true },
        },
    },
    {
        id = 198387, -- Excavator's Mallet
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 3, isItem = true },
        },
    },
    {
        id = 198717, -- Excavator's Punch
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 3, isItem = true },
        },
    },
    {
        id = 199746, -- Excavator's Trowel
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.AdamantScales, amount = 3, isItem = true },
        },
    },
    {
        id = 199873, -- Renowned Expeditioner's Cape
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 4,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 75, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 10, isItem = true },
        },
    },
    {
        id = 199874, -- Renowned Expeditioner's Cloak
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 4,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 75, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 10, isItem = true },
        },
    },
    {
        id = 199875, -- Renowned Expeditioner's Drape
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 4,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 75, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 10, isItem = true },
        },
    },
    {
        id = 199876, -- Renowned Expeditioner's Armored Shawl
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 4,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 75, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 10, isItem = true },
        },
    },
    {
        id = 198719, -- Plans: Sturdy Expedition Shovel
        associatedID = 388279,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 5,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 15, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 194102, -- Expedition Excavator
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 5, isItem = true },
        },
    },
    {
        id = 194326, -- Trusty Sweeper
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 194325, -- Researcher's Magnifier
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 70828, -- Quest: Wayfinder's Compass
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Quest"
    },
    {
        id = 197369, -- Renewed Proto-Drake: Brown Hair
        associatedID = 69564,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197363, -- Renewed Proto-Drake: Maned Crest
        associatedID = 69570,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197386, -- Renewed Proto-Drake: Spiked Jaw
        associatedID = 69587,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197360, -- Renewed Proto-Drake: Spined Brow
        associatedID = 69561,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 199811, -- Formula: Enchant Cloak - Graceful Avoidance
        associatedID = 389403,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199812, -- Formula: Enchant Boots - Rider's Reassurance
        associatedID = 389480,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198781, -- Schematic: Gravitational Displacer
        associatedID = 382343,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198784, -- Schematic: Primal Deconstruction Charge
        associatedID = 382322,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194605, -- Design: Radiant Malygite
        associatedID = 374446,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194606, -- Design: Energized Malygite
        associatedID = 374447,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194613, -- Design: Sensei's Neltharite
        associatedID = 374456,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194614, -- Design: Keen Neltharite
        associatedID = 374457,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 9,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 245286, -- Rectangular Sin'dorei Rug
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 10,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false } }
    },
    {
        id = 245287, -- Long Sin'dorei Rug
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 10,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false } }
    },
    {
        id = 245288, -- Circular Sin'dorei Rug
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 10,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false } }
    },
    {
        id = 245283, -- Blood Elven Candelabra
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 10,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } }
    },
    {
        id = 245285, -- Reliquary Crate Storage
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 10,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } }
    },
    {
        id = 198725, -- Gray Marmoni
        associatedID = 3381,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 11,
        type = "Pet",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 20, isItem = true },
        },
    },
    {
        id = 198726, -- Black Skitterbug
        associatedID = 3380,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 11,
        type = "Pet",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 20, isItem = true },
        },
    },
    {
        id = 198737, -- Relic Handler's Gauntlets
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 12,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 198736, -- Relic Handler's Grips
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 12,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 198735, -- Relic Handler's Gloves
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 12,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 198734, -- Relic Handler's Gloves
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 12,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 198101, -- Recipe: Salad on the Side
        associatedID = 381373,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Cooking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194632, -- Design: Idol of the Life-Binder
        associatedID = 374486,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194635, -- Design: Idol of the Earth-Warder
        associatedID = 374493,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    -- Dragon Isles Supplies Reward (R13)
    {
        id = 198775, -- Ensemble: Renowned Expeditioner's Cloth Armor
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 14,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 40, isItem = true },
        },
    },
    {
        id = 198776, -- Ensemble: Renowned Expeditioner's Leather Armor
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 14,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
        },
    },
    {
        id = 198777, -- Ensemble: Renowned Expeditioner's Mail Armor
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 14,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.AdamantScales, amount = 20, isItem = true },
        },
    },
    {
        id = 198778, -- Ensemble: Renowned Expeditioner's Plate Armor
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 14,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 20, isItem = true },
        },
    },
    {
        id = 197358, -- Renewed Proto-Drake: Curved Spiked Brow
        associatedID = 69559,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197395, -- Renewed Proto-Drake: Harrier Pattern
        associatedID = 69596,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197402, -- Renewed Proto-Drake: Spiked Club Tail
        associatedID = 69603,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197374, -- Renewed Proto-Drake: Swept Horns
        associatedID = 69575,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 198782, -- Schematic: Bottomless Mireslush Ore Satchel
        associatedID = 382339,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198783, -- Schematic: Spring-Loaded Khaz'gorite Fabric Cutters
        associatedID = 382340,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194661, -- Design: Magnificent Margin Magnifier
        associatedID = 374540,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194289, -- Pattern: Master Wildercloth Chef's Hat
        associatedID = 376548,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194291, -- Pattern: Master Wildercloth Fishing Cap
        associatedID = 376552,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194294, -- Pattern: Explorer's Banner of Herbology
        associatedID = 376531,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194295, -- Pattern: Explorer's Banner of Geology
        associatedID = 376532,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198720, -- Soft Purple Pillow
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 17,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.SpoolOfWilderthread, amount = 2, isItem = true },
        },
    },
    {
        id = 198721, -- Skinny Reliquary Pillow
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 17,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.SpoolOfWilderthread, amount = 2, isItem = true },
        },
    },
    {
        id = 198722, -- Small Triangular Pillow
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 17,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.SpoolOfWilderthread, amount = 2, isItem = true },
        },
    },
    {
        id = 194268, -- Pattern: Dragonscale Expedition's Expedition Tent
        associatedID = 376570,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 17,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194281, -- Pattern: Cold Cushion
        associatedID = 376568,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 17,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198741, -- Dragonscale Expedition Legguards
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 18,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 198740, -- Dragonscale Expedition Greaves
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 18,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 198739, -- Dragonscale Expedition Breeches
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 18,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 198738, -- Dragonscale Expedition Leggings
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 18,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 70832, -- Quest: One of Us Now
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 19,
        type = "Quest"
    },
    {
        id = 198729, -- Reliquary Banner
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 19,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
        },
    },
    {
        id = 198728, -- Explorer's League Banner
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 19,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
        },
    },
    {
        id = 198788, -- Technique: Contract: Dragonscale Expedition
        associatedID = 383593,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194285, -- Pattern: Azureweave Expedition Pack
        associatedID = 376529,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198796, -- Quack-E Quack Modulator
        associatedID = 78858,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 21,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 1000, isItem = false } },
    },
    {
        id = 198785, -- Schematic: Quack-E
        associatedID = 382332,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 21,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198909, -- Technique: Illusion Parchment: Magma Missile
        associatedID = 383565,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 21,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194283, -- Pattern: Duck-Stuffed Duck Lovie
        associatedID = 376565,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 21,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 197614, -- Windborne Velocidrake: Red Scales
        associatedID = 69818,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 22,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedFire, amount = 1, isItem = true },
        },
    },
    {
        id = 197144, -- Highland Drake: Red Scales
        associatedID = 69345,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 22,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedFire, amount = 1, isItem = true },
        },
    },
    {
        id = 197010, -- Cliffside Wylderdrake: Red Scales
        associatedID = 69210,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 22,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedFire, amount = 1, isItem = true },
        },
    },
    {
        id = 203353, -- Winding Slitherdrake: Red Scales
        associatedID = 73844,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 22,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedFire, amount = 1, isItem = true },
        },
    },
    {
        id = 238975, -- Reliquary Telescope
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 24,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } }
    },
    {
        id = 192761, -- Tamed Skitterfly
        associatedID = 1615,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 25,
        type = "Mount",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.ContouredFowlfeather, amount = 20, isItem = true },
        },
    },
    {
        id = 192762, -- Azure Skitterfly
        associatedID = 1615,
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 25,
        type = "Mount",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.ContouredFowlfeather, amount = 20, isItem = true },
        },
    },
    {
        id = 70834, -- Quest: Titled Story
        factionID = AddOn.Faction.DragonscaleExpedition,
        renownLevel = 25,
        type = "Quest"
    },
    --endregion
    --region Maruuk Centaur
    {
        id = 198402, -- Maruuk Cooking Pot
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 3, -- Also requires completion of "Cultural Exchange" quest
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 2, isItem = true },
        },
    },
    {
        id = 200550, -- Very Comfortable Pelt
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 3, -- Also requires completion of "Cultural Exchange" quest
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.DenseHide, amount = 2, isItem = true },
        },
    },
    {
        id = 200551, -- Comfortable Pile of Pelts
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 3, -- Also requires completion of "Cultural Exchange" quest
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.DenseHide, amount = 2, isItem = true },
        },
    },
    {
        id = 197596, -- Windborne Velocidrake: Horned Jaw
        associatedID = 69800,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 6,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197604, -- Windborne Velocidrake: Ox Horns
        associatedID = 69808,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 6,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197610, -- Windborne Velocidrake: Yellow Horns
        associatedID = 69814,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 6,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197630, -- Windborne Velocidrake: Feathered Neck
        associatedID = 69836,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 6,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 200481, -- Ohn'ir Midnight Helm
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200484, -- Ohn'ir Dawnlight Hat
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200485, -- Ohn'ir Dusklight Cap
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200486, -- Ohn'ir Daylight Visor
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200482, -- Shikaar Harrier's Visor
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200487, -- Shikaar Hunter's Visor
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200488, -- Shikaar Huntermaster's Visor
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200489, -- Shikaar Scout's Visor
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200483, -- Nokhud Battle Helm
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200490, -- Nokhud Reaver's Helm
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200491, -- Nokhud Champion's Helm
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200492, -- Nokhud Warlord's Helm
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 7,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199814, -- Formula: Enchant Boots - Plainsrunner's Breeze
        associatedID = 389479,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 8,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 199813, -- Formula: Enchant Chest - Sustained Strength
        associatedID = 389419,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 8,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 193618, -- Hoofhelper
        associatedID = 3221,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 8,
        type = "Pet",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 200460, -- Ohn'aran Plainswalker Moccasions
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 11,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 200459, -- Ohn'aran Plainswalker slippers
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 11,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 200458, -- Ohn'aran Plainswalker Greaves
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 11,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 200457, -- Ohn'aran Plainswalker Boots
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 11,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 193870, -- Pattern: Allied Legguards of Sansok Khan
        associatedID = 375157,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 193878, -- Pattern: Ancestor's Dew Drippers
        associatedID = 375153,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 191547, -- Recipe: Alacritous Alchemist Stone
        associatedID = 370677,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 194480, -- Plans: Obsidian Seared Halberd
        associatedID = 367588,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 194477, -- Plans: Obsidian Seared Runeaxe
        associatedID = 367594,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 194478, -- Plans: Obsidian Seared Facesmasher
        associatedID = 367589,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 200498, -- Shikaar Harrier's Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
        },
    },
    {
        id = 200497, -- Shikaar Hunter's Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
        },
    },
    {
        id = 200496, -- Shikaar Huntmaster's Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
        },
    },
    {
        id = 200494, -- Shikaar Scout's Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
        },
    },
    {
        id = 200499, -- Nokhud Battle Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200501, -- Nokhud Reaver's Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200500, -- Nokhud Champion's Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200495, -- Nokhud Warlord's Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200502, -- Ohn'ir Midnight Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
        },
    },
    {
        id = 200504, -- Ohn'ir Dawnlight Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
        },
    },
    {
        id = 200503, -- Ohn'ir Dusklight Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
        },
    },
    {
        id = 200493, -- Ohn'ir Daylight Shoulderpads
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.IridescentPlume, amount = 2, isItem = true },
        },
    },
    {
        id = 71074, -- Quest: Befriending Wings and Wind
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 14,
        type = "Quest"
    },
    {
        id = 198902, -- Technique: Windborne Velocidrake: Black Fur
        associatedID = 383583,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 25, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 197623, -- Windborne Velocidrake: Spiked Tail
        associatedID = 69827,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197618, -- Windborne Velocidrake: Long Snout
        associatedID = 69822,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197591, -- Windborne Velocidrake: Hairy Head
        associatedID = 69795,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197587, -- Windborne Velocidrake: Feathered Back
        associatedID = 69791,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 200524, -- Nokhud Warhammer
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 200520, -- Mammothbone Knife
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 200525, -- Massive Stone Sledgehammer
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200521, -- Maruuk Boneblade
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 200522, -- Maruukai Smith's Tongs
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 200511, -- Stonework Greatspear
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
        },
    },
    {
        id = 200523, -- Smith's Stoneworked Mallet
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200510, -- Huntstrider's Spear
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 5, isItem = true },
        },
    },
    {
        id = 200512, -- Teerai Warspear
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 5, isItem = true },
        },
    },
    {
        id = 200534, -- Toghus Poleaxe
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200517, -- Nokhud Warspear
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
        },
    },
    {
        id = 200518, -- Nokhud Goliath's Spear
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
        },
    },
    {
        id = 200539, -- Khansguard Shield
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
        },
    },
    {
        id = 200540, -- Improvised Maruuk Barrier
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.RunedWrithebark, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 200541, -- Fur-Lined Safeguard
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 194499, -- Plans: Khaz'gorite Leatherworker's Knife
        associatedID = 371369,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 194497, -- Plans: Khaz'gorite Skinning Knife
        associatedID = 371367,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 198463, -- Pattern: Expert Alchemist's Hat
        associatedID = 375196,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 198462, -- Pattern: Flameproof Apron
        associatedID = 375195,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 198457, -- Pattern: Masterwork Smock
        associatedID = 375194,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 198464, -- Pattern: Reinforced Pack
        associatedID = 375190,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_WAR_WITHIN]
    },
    {
        id = 197011, -- Cliffside Wylderdrake: Green Scales
        associatedID = 69211,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.Currencies.AwakenedAir, amount = 1, isItem = false },
        },
    },
    {
        id = 197143, -- Highland Drake: Green Scales
        associatedID = 69344,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.Currencies.AwakenedAir, amount = 1, isItem = false },
        },
    },
    {
        id = 197389, -- Renwewed Proto-Drake: Green Scales
        associatedID = 66720,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.Currencies.AwakenedAir, amount = 1, isItem = false },
        },
    },
    {
        id = 203352, -- Winding Slitherdrake: Green Scales
        associatedID = 73843,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.Currencies.AwakenedAir, amount = 1, isItem = false },
        },
    },
    {
        id = 200543, -- Clan Teerai Pennant
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 21,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.Copper, amount = 22, isItem = false } },
    },
    {
        id = 200545, -- Clan Shikaar Pennant
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 21,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.Copper, amount = 22, isItem = false } },
    },
    {
        id = 200546, -- Clan Nokhud Pennant
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 21,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.Copper, amount = 22, isItem = false } },
    },
    {
        id = 200547, -- Clan Ohn'ir Pennant
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 21,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.Copper, amount = 22, isItem = false } },
    },
    {
        id = 200467, -- Maruuk Spiritual Vestments
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 24,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 200466, -- Maruuk Scout's Vestments
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 24,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 200465, -- Maruuk Harrier's Hauberk
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 24,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 200464, -- Maruuk Warrior's Chestplate
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 24,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 71091, -- Quest: The Highest Honor
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 25,
        type = "Quest"
    },
    --endregion
}

function AddOn:CreateDragonflightCache()
    self.DragonflightCache = {}
    self:CreateItemCache(self.DragonflightData, self.DragonflightCache)
end