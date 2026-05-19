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
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
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
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199813, -- Formula: Enchant Chest - Sustained Strength
        associatedID = 389419,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 8,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT]
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
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 193878, -- Pattern: Ancestor's Dew Drippers
        associatedID = 375153,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 191547, -- Recipe: Alacritous Alchemist Stone
        associatedID = 370677,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194480, -- Plans: Obsidian Seared Halberd
        associatedID = 367588,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194477, -- Plans: Obsidian Seared Runeaxe
        associatedID = 367594,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194478, -- Plans: Obsidian Seared Facesmasher
        associatedID = 367589,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
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
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_DRAGONFLIGHT]
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
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194497, -- Plans: Khaz'gorite Skinning Knife
        associatedID = 371367,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198463, -- Pattern: Expert Alchemist's Hat
        associatedID = 375196,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198462, -- Pattern: Flameproof Apron
        associatedID = 375195,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198457, -- Pattern: Masterwork Smock
        associatedID = 375194,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198464, -- Pattern: Reinforced Pack
        associatedID = 375190,
        factionID = AddOn.Faction.MaruukCentaur,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.Gold, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
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
            { id = AddOn.ItemCurrencies.AwakenedAir, amount = 1, isItem = true },
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
            { id = AddOn.ItemCurrencies.AwakenedAir, amount = 1, isItem = true },
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
            { id = AddOn.ItemCurrencies.AwakenedAir, amount = 1, isItem = true },
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
            { id = AddOn.ItemCurrencies.AwakenedAir, amount = 1, isItem = true },
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
    --region Iskaara Tuskarr
    {
        id = 199892, -- Tuskarr Traveling Soup Pot
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 4,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 2, isItem = true },
        },
    },
    {
        id = 199650, -- Whale Bone Tea Set
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 4,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 1, isItem = true },
        },
    },
    {
        id = 199538, -- Azure Ear Warmer
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199536, -- Ocean Grey Ear Warmer
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199534, -- Blue Stocking Cap
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199533, -- Green Stocking Cap
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199532, -- Grey Stocking Cap
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199531, -- Red Stocking Cap
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 197132, -- Highland Drake: Spiked Cheek
        associatedID = 69333,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 7,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197114, -- Highland Drake: Multi-Horned Head
        associatedID = 69315,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 7,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197101, -- Highland Drake: Bushy Brow
        associatedID = 69302,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 7,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197155, -- Highland Drake: Finned Neck
        associatedID = 69356,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 7,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    -- Small Iskaaran Supply Pack Reward (R8)
    {
        id = 193225, -- Whiskuk
        associatedID = 3284,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 9,
        type = "Pet",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 193837, -- Backswimmer Timbertooth
        associatedID = 3326,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 9,
        type = "Pet",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.RunedWrithebark, amount = 1, isItem = true },
        },
    },
    {
        id = 199815, -- Formula: Enchant Cloak - Regenerative Leech
        associatedID = 389404,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 10,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199816, -- Formula: Enchant Chest - Accelerated Agility
        associatedID = 389416,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 10,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194726, -- Design: Kalu'ak Figurine
        associatedID = 377804,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 10,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194611, -- Design: Energized Ysemerald
        associatedID = 374454,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 10,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194610, -- Design: Keen Ysemerald
        associatedID = 374453,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 10,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194603, -- Design: Radiant Alexstraszite
        associatedID = 374444,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 10,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194602, -- Design: Sensei's Alexstraszite
        associatedID = 374443,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 10,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    -- Chieftain's Duty questline (R11)
    {
        id = 199872, -- Tuskarr Trader's Cloak
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 12,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 75, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 10, isItem = true },
        },
    },
    {
        id = 199877, -- Ensemble: Tuskarr Trader's Leather Armor
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 12,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 2, isItem = true },
        },
    },
    {
        id = 197153, -- Highland Drake: Bladed Tail
        associatedID = 69354,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197123, -- Highland Drake: Thorn Horns
        associatedID = 69324,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197139, -- Highland Drake: Large Spotted Pattern
        associatedID = 69340,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 198894, -- Technique: Highland Drake: Black Hair
        associatedID = 383577,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 13,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 25, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199887, -- Tuskarr Trapper's Bracers
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 199886, -- Tuskarr Sharkguard Wristguards
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 199885, -- Reinforced Fisherman's Vambraces
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 199884, -- Tuskarr Crafter's Bindings
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 198102, -- Recipe: Impossibly Sharp Cutting Knife
        associatedID = 381375,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Cooking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194634, -- Design: Idol of the Dreamer
        associatedID = 374490,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194633, -- Design: Idol of the Spellweaver
        associatedID = 374488,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 193875, -- Pattern: Allied Heartwarming Fur Coat
        associatedID = 375144,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 193876, -- Pattern: Snowball Makers
        associatedID = 375146,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199860, -- Rustic Tuskarr Backpack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199861, -- Tan Tuskarr Backpack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199862, -- Dark Tuskarr Backpack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199863, -- Burgundy Tuskarr Backpack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199852, -- Rustic Fisherman's Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.ScalebellyMackerel, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199853, -- Tan Fisherman's Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.TemporalDragonhead, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199854, -- Dark Fisherman's Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.CeruleanSpinefish, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199855, -- Burgundy Fisherman's Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.AileronSeamoth, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199856, -- Rustic Tuskarr Trader's Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 2, isItem = true },
        },
    },
    {
        id = 199857, -- Tan Tuskarr Trader's Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 2, isItem = true },
        },
    },
    {
        id = 199858, -- Dark Tuskarr Trader's Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 2, isItem = true },
        },
    },
    {
        id = 199859, -- Burgundy Tuskarr Trader's Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 16,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 2, isItem = true },
        },
    },
    {
        id = 199894, -- Fisherman's Folly
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 17,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.ScalebellyMackerel, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199896, -- Rubbery Fish Head
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 17,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.PebbledRockSalts, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.ThousandbitePiranha, amount = 5, isItem = true },
        },
    },
    {
        id = 194660, -- Design: Fine-Print Trifocals
        associatedID = 374538,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194663, -- Design: Resonant Focus
        associatedID = 374543,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198461, -- Pattern: Shockproof Gloves
        associatedID = 375193,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198459, -- Pattern: Lavish Floral Pack
        associatedID = 375189,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198458, -- Pattern: Resplendent Cover
        associatedID = 375192,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198465, -- Pattern: Expert Skinner's Cap
        associatedID = 375191,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 18,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 197390, -- Renewed Proto-Drake: Blue Scales
        associatedID = 69591,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedFrost, amount = 1, isItem = true },
        },
    },
    {
        id = 197612, -- Windborne Velocidrake: Blue Scales
        associatedID = 69816,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedFrost, amount = 1, isItem = true },
        },
    },
    {
        id = 197012, -- Cliffside Wylderdrake: Blue Scales
        associatedID = 69212,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedFrost, amount = 1, isItem = true },
        },
    },
    {
        id = 203350, -- Winding Slitherdrake: Blue Scales
        associatedID = 73841,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedFrost, amount = 1, isItem = true },
        },
    },
    {
        id = 70968, -- Quest: Of the CLoth, of the Community
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 21,
        type = "Quest"
    },
    {
        id = 199891, -- Tuskarr Sharkguard Shoulderguards
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 22,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 199890, -- Tuskarr Crafter's Mantle
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 22,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 199889, -- Tuskarr Boneplate Pauldrons
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 22,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 199888, -- Tuskarr Trapper's Spaulders
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 22,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 194311, -- Pattern: Tuskarr Beanbag
        associatedID = 375191,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 22,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199897, -- Blue-Covered Beanbag
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 23,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.PebbledRockSalts, amount = 10, isItem = true },
        },
    },
    {
        id = 199878, -- Tuskarr Timber Splitter
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 24,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
        },
    },
    {
        id = 199883, -- Tuskarr Sharktooth Bolt-Thrower
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 24,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 1, isItem = true },
        },
    },
    {
        id = 199879, -- Tuskarr Fisherman's Dagger
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 24,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
        },
    },
    {
        id = 199880, -- Tuskarr Leviathan's Hook
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 24,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 1, isItem = true },
        },
    },
    {
        id = 199881, -- Tuskarr Fisherman's Harpoon
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 24,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 1, isItem = true },
        },
    },
    {
        id = 199882, -- Tuskarr Mystic's Stave
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 24,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.RunedWrithebark, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 198872, -- Brown Scouting Ottuk
        associatedID = 1657,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 25,
        type = "Mount",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
        },
    },
    {
        id = 200118, -- Yellow Scouting Ottuk
        associatedID = 1659,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 25,
        type = "Mount",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 2, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
        },
    },
    {
        id = 198940, -- Technique: Contract: Iskaara Tuskarr
        associatedID = 383588,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 25,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 198827, -- Magical Snow Sled
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 26,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.RunedWrithebark, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.ChromaticDust, amount = 5, isItem = true },
        },
    },
    {
        id = 199899, -- Magical Snow Sled
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 26,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.RunedWrithebark, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 2, isItem = true },
        },
    },
    {
        id = 199542, -- Red Tufted Shoulderpads
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199541, -- Grey Tufted Shoulderpads
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199540, -- Green Tufted Shoulderpads
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199539, -- Blue Tufted Shoulderpads
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
        },
    },
    {
        id = 199550, -- Bloody Shorestalker's Spaulders
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 1, isItem = true },
        },
    },
    {
        id = 199549, -- Depth-Delver's Spaulders
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 1, isItem = true },
        },
    },
    {
        id = 199548, -- Rugged Seaspawn Spaulders
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 1, isItem = true },
        },
    },
    {
        id = 199547, -- Spine-Reinforced's Spaulders
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TuftOfPrimalWool, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 1, isItem = true },
        },
    },
    {
        id = 199546, -- Crimson Depths Shoulderguards
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
        },
    },
    {
        id = 199545, -- Grey Depths Shoulderguards
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
        },
    },
    {
        id = 199544, -- Murky Depths Shoulderguards
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
        },
    },
    {
        id = 199543, -- Azure Depths Shoulderguards
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 2, isItem = true },
        },
    },
    {
        id = 198341, -- Tan Paw Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.ScalebellyMackerel, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 198340, -- Red Print Paw Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.AileronSeamoth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 198339, -- Dark Blue Paw Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.ThousandbitePiranha, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 198338, -- Black Print Paw Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.CeruleanSpinefish, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 198337, -- Azure Paw Pack
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false },
            { id = AddOn.ItemCurrencies.TemporalDragonhead, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 197981, -- Pattern: Finished Prototype Regal Barding
        associatedID = 381848,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 29,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 70969, -- Quest: Becoming One of Our Community
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 30,
        type = "Quest"
    },
    {
        id = 201425, -- Yellow War Ottuk
        associatedID = 1655,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 30,
        type = "Mount",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 1000, isItem = false },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 5, isItem = true },
        },
    },
    {
        id = 201426, -- Brown War Ottuk
        associatedID = 1653,
        factionID = AddOn.Faction.IskaaraTuskarr,
        renownLevel = 30,
        type = "Mount",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 1000, isItem = false },
            { id = AddOn.ItemCurrencies.MastodonTusk, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.AquaticMaw, amount = 5, isItem = true },
        },
    },
    --endregion
    --region Valdrakken Accord
    {
        id = 256168, -- Draconic Sconce
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 0,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 10, isItem = false } }
    },
    {
        id = 199649, -- Dragon Tea Set
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 3,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 3, isItem = true },
        },
    },
    {
        id = 199648, -- Dragon Dinner Fork
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.AdamantScales, amount = 3, isItem = true },
        },
    },
    {
        id = 200750, -- Dragon Dinner Knife
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.AdamantScales, amount = 3, isItem = true },
        },
    },
    {
        id = 200751, -- Simple Silver Dragon Goblet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
        },
    },
    {
        id = 200752, -- Jeweled Silver Dragon Goblet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.QueensRuby, amount = 2, isItem = true },
        },
    },
    {
        id = 200753, -- Simple Gold Dragon Goblet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 5, isItem = true },
        },
    },
    {
        id = 200754, -- Jeweled Gold Dragon Goblet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 3,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.QueensRuby, amount = 2, isItem = true },
        },
    },
    {
        id = 256169, -- Valdrakken Oven
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 3,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } }
    },
    {
        id = 199647, -- Dragon Garden Fork
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 1, isItem = true },
        },
    },
    {
        id = 199651, -- Dragon Garden Hoe
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 1, isItem = true },
        },
    },
    {
        id = 199652, -- Dragon Garden Rake
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 1, isItem = true },
        },
    },
    {
        id = 199653, -- Dragon Garden Hand Shovel
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 1, isItem = true },
        },
    },
    {
        id = 199654, -- Dragon Garden Shovel
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 6,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 1, isItem = true },
        },
    },
    {
        id = 248112, -- Valdrakken Garden Fountain
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 6,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } }
    },
    {
        id = 196972, -- Cliffside Wylderdrake: Plated Brow
        associatedID = 69172,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 9,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 196977, -- Cliffside Wylderdrake: Split Head Horns
        associatedID = 69177,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 9,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197003, -- Cliffside Wylderdrake: Spiked Cheek
        associatedID = 69203,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 9,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 197015, -- Cliffside Wylderdrake: Dark Skin Variation
        associatedID = 69215,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 9,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
    },
    {
        id = 199655, -- Black Dragonspawn Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 10,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
        },
    },
    {
        id = 199656, -- Blue Dragonspawn Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 10,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
        },
    },
    {
        id = 199657, -- Bronze Dragonspawn Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 10,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
        },
    },
    {
        id = 199658, -- Green Dragonspawn Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 10,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
        },
    },
    {
        id = 199659, -- Red Dragonspawn Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 10,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
        },
    },
    {
        id = 199818, -- Formula: Enchant Boots - Watcher's Loam
        associatedID = 389484,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 11,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199817, -- Formula: Enchant Cloak - Homebound Speed
        associatedID = 389405,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 11,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199246, -- Schematic: Tinker: Grounded Circuitry
        associatedID = 382344,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 11,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 50, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199772, -- Titan Gatekeeper's Shield
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.GlowingTitanOrb, amount = 1, isItem = true },
        },
    },
    {
        id = 199773, -- Titan Watcher's Scepter
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.EternityAmber, amount = 1, isItem = true },
            { id = AddOn.ItemCurrencies.GlowingTitanOrb, amount = 1, isItem = true },
        },
    },
    {
        id = 199774, -- Ancient Titan Blunderbuss
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.GlowingTitanOrb, amount = 1, isItem = true },
        },
    },
    {
        id = 199775, -- Titan Keeper's Gladius
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.GlowingTitanOrb, amount = 1, isItem = true },
        },
    },
    {
        id = 199776, -- Titan Watcher's Broadsword
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 13,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.EternityAmber, amount = 1, isItem = true },
        },
    },
    {
        id = 191545, -- Recipe: Sustaining Alchemist's Stone
        associatedID = 370676,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 14,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194482, -- Plans: Obsidian Seared Invoker
        associatedID = 367592,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 14,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194479, -- Plans: Obsidian Seared Claymore
        associatedID = 367590,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 14,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194280, -- Pattern: Chronocloth Sash
        associatedID = 376505,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 14,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194279, -- Pattern: Azureweave Slippers
        associatedID = 376501,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 14,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 248103, -- Draconic Stone Table
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 14,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } }
    },
    {
        id = 196974, -- Cliffside Wylderdrake: Four-Horned Chin
        associatedID = 69174,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 196989, -- Cliffside Wylderdrake: White Hair
        associatedID = 69189,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 196998, -- Cliffside Wylderdrake: Hook Horns
        associatedID = 69198,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197004, -- Cliffside Wylderdrake: Spiked Legs
        associatedID = 69204,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197020, -- Cliffside Wylderdrake: Spear Tail
        associatedID = 69220,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 197009, -- Cliffside Wylderdrake: Scaled Pattern
        associatedID = 69209,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 15,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 100, isItem = false } },
    },
    {
        id = 198892, -- Technique: Cliffside Wylderdrake: Red Hair
        associatedID = 383575,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 15,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 25, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199762, -- Valdrakken Guards Belt
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 16,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 199761, -- Valdrakken Dragonspawn Waistguard
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 16,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 199760, -- Valdrakken Spellweaver's Cord
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 16,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 199759, -- Valdrakken Plate Girdle
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 16,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1472 },
    },
    {
        id = 199684, -- Crimson Drakonid Helmet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
        },
    },
    {
        id = 199683, -- Verdant Drakonid Helmet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
        },
    },
    {
        id = 199682, -- Bronze Drakonid Helmet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
        },
    },
    {
        id = 199681, -- Cobalt Drakonid Helmet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
        },
    },
    {
        id = 199680, -- Obsidian Drakonid Helmet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 17,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
        },
    },
    {
        id = 199758, -- Crimson Proto-Whelp
        associatedID = 3379,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 18,
        type = "Pet",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 199757, -- Magic Nibbler
        associatedID = 3378,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 18,
        type = "Pet",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.PrimalBearSpine, amount = 3, isItem = true },
            { id = AddOn.ItemCurrencies.LargeSturdyFemur, amount = 1, isItem = true },
        },
    },
    {
        id = 194500, -- Plans: Khaz'gorite Leatherworker's Toolset
        associatedID = 371371,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194498, -- Plans: Khaz'gorite Needle Set
        associatedID = 371368,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194495, -- Plans: Khaz'gorite Sickle
        associatedID = 371365,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199245, -- Schematic: Lapidary's Khaz'gorite Clamps
        associatedID = 382342,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199244, -- Schematic: Khaz'gorite Delver's Helmet
        associatedID = 382341,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194288, -- Pattern: Master Wildercloth Alchemist's Robe
        associatedID = 376544,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194290, -- Pattern: Master Wildercloth Enchanter's Hat
        associatedID = 376550,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 194292, -- Pattern: Master Wildercloth Gardening Hat
        associatedID = 376554,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 19,
        type = "Recipe",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT]
    },
    {
        id = 199756, -- Ensemble: Bronze Valdrakken Clothing
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 20,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 25, isItem = true },
            { id = AddOn.ItemCurrencies.EternityAmber, amount = 1, isItem = true },
        },
    },
    {
        id = 199754, -- Ensemble: Azure Valdrakken Clothing
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 20,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 25, isItem = true },
            { id = AddOn.ItemCurrencies.MysticSapphire, amount = 1, isItem = true },
        },
    },
    {
        id = 199755, -- Ensemble: Green Valdrakken Clothing
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 20,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 25, isItem = true },
            { id = AddOn.ItemCurrencies.VibrantEmerald, amount = 1, isItem = true },
        },
    },
    {
        id = 199753, -- Ensemble: Black Valdrakken Clothing
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 20,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 25, isItem = true },
            { id = AddOn.ItemCurrencies.SunderedOnyx, amount = 1, isItem = true },
        },
    },
    {
        id = 199752, -- Ensemble: Crimson Valdrakken Clothing
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 20,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 25, isItem = true },
            { id = AddOn.ItemCurrencies.QueensRuby, amount = 1, isItem = true },
        },
    },
    {
        id = 248652, -- Dragon's Grand Mirror
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 20,
        type = "Decor",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false } }
    },
    {
        id = 197391, -- Renewed Proto-Drake: Bronze Scales
        associatedID = 69592,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 21,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedOrder, amount = 1, isItem = true },
        },
    },
    {
        id = 197613, -- Windborne Velocidrake: Bronze Scales
        associatedID = 69817,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 21,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedOrder, amount = 1, isItem = true },
        },
    },
    {
        id = 197145, -- Highland Drake: Bronze Scales
        associatedID = 69346,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 21,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedOrder, amount = 1, isItem = true },
        },
    },
    {
        id = 203351, -- Winding Slitherdrake: Bronze Scales
        associatedID = 73842,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 21,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 400, isItem = false },
            { id = AddOn.ItemCurrencies.AwakenedOrder, amount = 1, isItem = true },
        },
    },
    {
        id = 199766, -- Expedition Guard's Helm
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 22,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 199765, -- Field Scout's Helmet
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 22,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 199764, -- Expedition Mercenary's Helm
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 22,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 199763, -- Expedition Researcher's Hood
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 22,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
        bonusIDs = { 1485 },
    },
    {
        id = 70905, -- Quest: Flying with Our Colors
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 23,
        type = "Quest"
    },
    {
        id = 199745, -- Everflame Night Torch
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 25,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.AwakenedFire, amount = 1, isItem = true },
        },
    },
    {
        id = 199744, -- Academy Student's Journal
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 25,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 5, isItem = true },
        },
    },
    {
        id = 199743, -- Runic Symbols and their Meaning
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 25,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
        },
    },
    {
        id = 199742, -- A Mender's Mentality
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 25,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 2, isItem = true },
        },
    },
    {
        id = 199741, -- Compendium of Advanced Spells
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 25,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 2, isItem = true },
        },
    },
    {
        id = 198389, -- Weighted Potion Cylinder
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 25,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 5, isItem = true },
        },
    },
    {
        id = 198388, -- Swirling Draconian Concoction
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 25,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 2, isItem = true },
        },
    },
    {
        id = 194320, -- Reinforced Lavender Bottle
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 25,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.ResilientLeather, amount = 10, isItem = true },
        },
    },
    {
        id = 197350, -- Renewed Proto-Drake: Silver and Purple Armor
        associatedID = 69551,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 26,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 10, isItem = true },
        },
    },
    {
        id = 197581, -- Windborne Velocidrake: Silver and Purple Armor
        associatedID = 69785,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 26,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 10, isItem = true },
        },
    },
    {
        id = 197093, -- Highland Drake: Silver and Purple Armor
        associatedID = 69294,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 26,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 10, isItem = true },
        },
    },
    {
        id = 196962, -- Cliffside Wylderdrake: Silver and Purple Armor
        associatedID = 69162,
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 26,
        type = "Other",
        otherCompletionType = "Quest",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 750, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 10, isItem = true },
        },
    },
    {
        id = 199771, -- Green Dragon Banner
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 27,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.VibrantEmerald, amount = 1, isItem = true },
        },
    },
    {
        id = 199770, -- Bronze Dragon Banner
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 27,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.EternityAmber, amount = 1, isItem = true },
        },
    },
    {
        id = 199769, -- Blue Dragon Banner
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 27,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.MysticSapphire, amount = 1, isItem = true },
        },
    },
    {
        id = 199768, -- Black Dragon Banner
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 27,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.SunderedOnyx, amount = 1, isItem = true },
        },
    },
    {
        id = 199767, -- Red Dragon Banner
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 27,
        type = "Toy",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.QueensRuby, amount = 1, isItem = true },
        },
    },
    {
        id = 199664, -- Ruby Jeweled Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.QueensRuby, amount = 1, isItem = true },
        },
    },
    {
        id = 199663, -- Emerald Jeweled Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.VibrantEmerald, amount = 1, isItem = true },
        },
    },
    {
        id = 199662, -- Amber Jeweled Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.EternityAmber, amount = 1, isItem = true },
        },
    },
    {
        id = 199661, -- Azure Jeweled Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.MysticSapphire, amount = 1, isItem = true },
        },
    },
    {
        id = 199660, -- Obsidian Jeweled Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.SunderedOnyx, amount = 1, isItem = true },
        },
    },
    {
        id = 199674, -- Crimson Drakonid Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.QueensRuby, amount = 1, isItem = true },
        },
    },
    {
        id = 199673, -- Verdant Drakonid Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.VibrantEmerald, amount = 1, isItem = true },
        },
    },
    {
        id = 199672, -- Bronze Drakonid Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.EternityAmber, amount = 1, isItem = true },
        },
    },
    {
        id = 199671, -- Cobalt Drakonid Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.MysticSapphire, amount = 1, isItem = true },
        },
    },
    {
        id = 199670, -- Black Drakonid Shoulderpads
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 28,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.SunderedOnyx, amount = 1, isItem = true },
        },
    },
    {
        id = 199734, -- Valdrakken Guard's Cutlass
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.EternityAmber, amount = 1, isItem = true },
        },
    },
    {
        id = 199732, -- Valdrakken Wing Glaive
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199730, -- Valdrakken Bladewing Staff
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199728, -- Valdrakken Spellweaver's Stave
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199726, -- Valdrakken Spellweaver's Sceepter
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199705, -- Valdrakken Guard's Spear
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.AdamantScales, amount = 10, isItem = true },
        },
    },
    {
        id = 199702, -- Valdrakken Guard's Barrier
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.AdamantScales, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 1, isItem = true },
        },
    },
    {
        id = 199806, -- Valdrakken Drakeclaw Barrier
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199707, -- Valdrakken Wingguard Polearm
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199700, -- Valdrakken Bladewing Decapitator
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.AdamantScales, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.RainbowPearl, amount = 1, isItem = true },
        },
    },
    {
        id = 199823, -- Valdrakken Gatekeeper's Polearm
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TatteredWildercloth, amount = 20, isItem = true },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
        },
    },
    {
        id = 199821, -- Valdrakken Serrated Shortsword
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199820, -- Valdrakken Guard's Skullsplitter
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 201796, -- Valdrakken Drakonid's Claw
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 201795, -- Valdrakken Guard's Claw
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.SereviteOre, amount = 10, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 200456, -- Valdrakken Armor Opener
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.DraconiumOre, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
        },
    },
    {
        id = 199739, -- Emerald Dragonflame Blade
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.GlimmeringYsemeraldCluster, amount = 1, isItem = true },
        },
    },
    {
        id = 199738, -- Ruby Dragonflame Blade
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.GlimmeringAlexstrasziteCluster, amount = 1, isItem = true },
        },
    },
    {
        id = 199736, -- Amber Dragonflame Blade
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 29,
        type = "Cosmetic",
        currency = {
            { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false },
            { id = AddOn.ItemCurrencies.TallstriderSinew, amount = 5, isItem = true },
            { id = AddOn.ItemCurrencies.GlimmeringNozdoriteCluster, amount = 1, isItem = true },
        },
    },
    {
        id = 70916, -- Quest: Beknownst and Glorious
        factionID = AddOn.Faction.ValdrakkenAccord,
        renownLevel = 30,
        type = "Quest"
    },
    --endregion
    --region Loamm Niffen
    {
        id = 75722, -- Quest: Bag of Gold
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 4,
        type = "Quest"
    },
    {
        id = 203310, -- Winding Slitherdrake: Grand Chin Thorn
        associatedID = 73798,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 5,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
    },
    {
        id = 203316, -- Winding Slitherdrake: Large Finned Crest
        associatedID = 73804,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 5,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
    },
    {
        id = 203327, -- Winding Slitherdrake: Tan Horns
        associatedID = 73815,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 5,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 150, isItem = false } },
    },
    {
        id = 75724, -- Quest: Like the Niffen Do
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 6,
        type = "Quest"
    },
    {
        id = 205272, -- Scent-Masking Vest
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 8,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
        bonusIDs = { 9314, 1495, 8767 },
    },
    {
        id = 205275, -- Mycelial Fabric Tuning
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 8,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
        bonusIDs = { 9314, 1495, 8767 },
    },
    {
        id = 205271, -- Speleothemic Cataphract
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 8,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
        bonusIDs = { 9314, 1495, 8767 },
    },
    {
        id = 205273, -- Sulphuric Crystal Breastmail
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 8,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
        bonusIDs = { 9314, 1495, 8767 },
    },
    {
        id = 75727, -- Quest: The Smelliest Tabard
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 10,
        type = "Quest"
    },
    {
        id = 205963, -- Sniffin' Salts
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 11,
        type = "Toy",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false } },
    },
    {
        id = 205353, -- Niffen Notebook of Alchemy Knowledge
        associatedID = 75756,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Alchemy][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205352, -- Niffen Notebook of Blacksmithing Knowledge
        associatedID = 75755,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Blacksmithing][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205351, -- Niffen Notebook of Enchanting Knowledge
        associatedID = 75752,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Enchanting][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205349, -- Niffen Notebook of Engineering Knowledge
        associatedID = 75759,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Engineering][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205358, -- Niffen Notebook of Herbalism Knowledge
        associatedID = 75753,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Herbalism][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205354, -- Niffen Notebook of Inscription Knowledge
        associatedID = 75761,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Inscription][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205348, -- Niffen Notebook of Jewelcrafting Knowledge
        associatedID = 75754,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Jewelcrafting][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205350, -- Niffen Notebook of Leatherworking Knowledge
        associatedID = 75751,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Leatherworking][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205356, -- Niffen Notebook of Mining Knowledge
        associatedID = 75758,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Mining][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205357, -- Niffen Notebook of Skinning Knowledge
        associatedID = 75760,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Skinning][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 205355, -- Niffen Notebook of Tailoring Knowledge
        associatedID = 75757,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 12,
        type = "Profession",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        profSpellID = AddOn.ExpacProfSpellIDs[AddOn.Professions.Tailoring][LE_EXPANSION_DRAGONFLIGHT],
    },
    {
        id = 203323, -- Winding Slitherdrake: Brown Hair
        associatedID = 73811,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
    },
    {
        id = 203335, -- Winding Slitherdrake: Curved Horns
        associatedID = 73825,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
    },
    {
        id = 203341, -- Winding Slitherdrake: Long Jaw Horns
        associatedID = 73832,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
    },
    {
        id = 205270, -- Mycelial Fabric Sandals
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
        bonusIDs = { 9321, 1508, 8767 },
    },
    {
        id = 205264, -- Speleothemic Footguards
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
        bonusIDs = { 9321, 1508, 8767 },
    },
    {
        id = 205265, -- Sulfuric Crystal Boots
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
        bonusIDs = { 9321, 1508, 8767 },
    },
    {
        id = 205269, -- Scent-Masking Moccasins
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
        bonusIDs = { 9321, 1508, 8767 },
    },
    {
        id = 205050, -- Paulie
        associatedID = 204286,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 15,
        type = "Pet",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false } },
    },
    {
        id = 205051, -- Rango
        associatedID = 204288,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 15,
        type = "Pet",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false } },
    },
    {
        id = 205363, -- Ensemble: Ornate Black Dragon Labwear
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 250, isItem = false } },
    },
    {
        id = 203347, -- Winding Slitherdrake: Large Spiked Nose
        associatedID = 73838,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 16,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false } },
    },
    {
        id = 203362, -- Winding Slitherdrake: Hairy Tail
        associatedID = 73854,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 16,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false } },
    },
    {
        id = 203365, -- Winding Slitherdrake: Hairy Throat
        associatedID = 73857,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 16,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false } },
    },
    {
        id = 205207, -- Morsel Sniffer
        associatedID = 1738,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 18,
        type = "Mount",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 800, isItem = false } },
    },
    {
        id = 205971, -- Rock Breaking Digger
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 18,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false } },
    },
    {
        id = 205972, -- Decorative Niffen Sword
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 18,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 200, isItem = false } },
    },
    {
        id = 75742, -- Quest: Drake Helms
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 19,
        type = "Quest"
    },
    {
        id = 197120, -- Highland Drake: Ornate Helm
        associatedID = 69321,
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 1000, isItem = false } },
    },
    {
        id = 75744, -- Quest: A Token of Our Gratitude
        factionID = AddOn.Faction.LoammNiffen,
        renownLevel = 20,
        type = "Quest"
    },
    --endregion
    --region Dream Wardens
    {
        id = 78385, -- Quest: Small Dreamseeds
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 3,
        type = "Quest"
    },
    {
        id = 78386, -- Quest: Emerald Reawakening
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 5,
        type = "Quest"
    },
    {
        id = 210482, -- Flourishing Whimsydrake: Back Fins
        associatedID = 78400,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 6,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
    },
    {
        id = 210483, -- Flourishing Whimsydrake: Ridged Brow
        associatedID = 78403,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 6,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
    },
    {
        id = 210484, -- Flourishing Whimsydrake: Underbite Snout
        associatedID = 78404,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 6,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 225, isItem = false } },
    },
    {
        id = 210702, -- Solar Synthesis Gloves
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        bonusIDs = { 9552, 9506, 1498, 8767 },
    },
    {
        id = 210706, -- Drowsed Shepherd's Gloves
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        bonusIDs = { 9552, 9506, 1498, 8767 },
    },
    {
        id = 210700, -- Auburn Scavenger Gauntlets
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        bonusIDs = { 9552, 9506, 1498, 8767 },
    },
    {
        id = 210704, -- Fallen Protector Handguards
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 7,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
        bonusIDs = { 9552, 9506, 1498, 8767 },
    },
    {
        id = 78387, -- Quest: Plump Dreamseeds
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 9,
        type = "Quest"
    },
    {
        id = 78363, -- Quest: The Tabard of Your Dreams
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 10,
        type = "Quest"
    },
    {
        id = 210690, -- Elmer
        associatedID = 4306,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 11,
        type = "Pet",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210689, -- Snoots
        associatedID = 4305,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 11,
        type = "Pet",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210571, -- Snoozles
        associatedID = 4296,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 11,
        type = "Pet",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210570, -- Napps
        associatedID = 4295,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 11,
        type = "Pet",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210651, -- Dustite
        associatedID = 4299,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 11,
        type = "Pet",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210648, -- Seedle
        associatedID = 4298,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 11,
        type = "Pet",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210485, -- Flourishing Whimsydrake: Long Snout
        associatedID = 78405,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 450, isItem = false } },
    },
    {
        id = 210486, -- Flourishing Whimsydrake: Horns
        associatedID = 78406,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 450, isItem = false } },
    },
    {
        id = 210487, -- Flourishing Whimsydrake: Neck Fins
        associatedID = 78407,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 13,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 450, isItem = false } },
    },
    {
        id = 210703, -- Solar Synthesis Crown
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false } },
        bonusIDs = { 9560, 9506, 9599, 1511, 8767 },
    },
    {
        id = 210707, -- Drowsed Shepherd's Hood
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false } },
        bonusIDs = { 9560, 9506, 9599, 1511, 8767 },
    },
    {
        id = 210701, -- Auburn Scavenger Helm
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false } },
        bonusIDs = { 9560, 9506, 9599, 1511, 8767 },
    },
    {
        id = 210705, -- Fallen Protector Greathelm
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 14,
        type = "Gear",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 600, isItem = false } },
        bonusIDs = { 9560, 9506, 9599, 1511, 8767 },
    },
    {
        id = 210692, -- Juniper
        associatedID = 4308,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 15,
        type = "Pet",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 375, isItem = false } },
    },
    {
        id = 210691, -- Spruce
        associatedID = 4307,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 15,
        type = "Pet",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 375, isItem = false } },
    },
    {
        id = 210790, -- Ensemble: Elegant Green Dragon Outerwear
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 500, isItem = false } },
    },
    {
        id = 210676, -- Elderwood Cane
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
    },
    {
        id = 210677, -- Survivalist's Shovel
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
    },
    {
        id = 210679, -- Cultivator's Watering Can
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
    },
    {
        id = 210680, -- Caretaker's Trowel
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
    },
    {
        id = 210685, -- Ranger's Longbow
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 16,
        type = "Cosmetic",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 300, isItem = false } },
    },
    {
        id = 209949, -- Suntouched Dreamstag
        associatedID = 1809,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 17,
        type = "Mount",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 1200, isItem = false } },
    },
    {
        id = 209951, -- Lunar Dreamstag
        associatedID = 1809,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 17,
        type = "Mount",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 1200, isItem = false } },
    },
    {
        id = 78388, -- Quest: Gigantic Dreamseeds
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 17,
        type = "Quest"
    },
    {
        id = 78595, -- Quest: Dream Infused
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 18,
        type = "Quest"
    },
    {
        id = 209947, -- Blossoming Dreamstag
        associatedID = 1808,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 18,
        type = "Mount",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 209950, -- Rekindled Dreamstag
        associatedID = 1810,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 18,
        type = "Mount",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210057, -- Morning Flourish Dreamsaber
        associatedID = 1817,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 18,
        type = "Mount",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210058, -- Evening Sun Dreamsaber
        associatedID = 1816,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 18,
        type = "Mount",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210769, -- Springtide Dreamtalon
        associatedID = 1833,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 18,
        type = "Mount",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 210775, -- Snowfluff Dreamtalon
        associatedID = 1835,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 18,
        type = "Mount",
        currency = { { id = AddOn.ItemCurrencies.Seedbloom, amount = 1, isItem = true } },
    },
    {
        id = 211495, -- Dreambound Augment Rune
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 18,
        type = "Other",
        otherCompletionType = "Item",
        currency = { { id = AddOn.Currencies.Gold, amount = 100000, isItem = false } },
    },
    {
        id = 210479, -- Flourishing Whimsydrake: Night Scales
        associatedID = 78408,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 1250, isItem = false } },
    },
    {
        id = 210481, -- Flourishing Whimsydrake: Sunset Scales
        associatedID = 78410,
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 19,
        type = "Other",
        otherCompletionType = "Quest",
        currency = { { id = AddOn.Currencies.DragonIslesSupplies, amount = 1250, isItem = false } },
    },
    {
        id = 78373, -- Quest: The Dream Thanks You
        factionID = AddOn.Faction.DreamWardens,
        renownLevel = 20,
        type = "Quest"
    },
    --endregion
}

function AddOn:CreateDragonflightCache()
    self.DragonflightCache = {}
    self:CreateItemCache(self.DragonflightData, self.DragonflightCache, self._dragonflightCached)
end