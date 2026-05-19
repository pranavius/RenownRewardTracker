---@type RenownRewardTracker
local AddOn = select(2, ...)
local LDB = LibStub("LibDataBroker-1.1")

local DebugPrint = AddOn.DebugPrint

local EventFrame = CreateFrame("Frame")

EventFrame:HookScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        if ... == "RenownRewardTracker" then
            AddOn:Initialize()
            AddOn:ConfigureDataBroker()
            self:UnregisterEvent("ADDON_LOADED")
        end
    elseif AddOn:AreAllRewardsCached() then
        AddOn:UpdateListContents()
    end
end)

EventFrame:RegisterEvent("ADDON_LOADED")

RRT_DB = RRT_DB or AddOn.DatabaseDefaults

-- Track initialization for each rewards cache
AddOn._midnightCached = false
AddOn._warWithinCached = false
AddOn._dragonflightCached = false
AddOn._itemCurrenciesCached = false

function AddOn:Initialize()
    -- Load Blizzard AddOns that RRT might require for previewing items (transmog, decor, mounts, etc.)
    if not C_AddOns.IsAddOnLoaded("Blizzard_HousingModelPreview") then UIParentLoadAddOn("Blizzard_HousingModelPreview") end
    if not C_AddOns.IsAddOnLoaded("Blizzard_Collections") then UIParentLoadAddOn("Blizzard_Collections") end
    -- Sync top-level DB keys with schema: add missing, remove stale
    for key, defaultValue in pairs(AddOn.DatabaseDefaults) do
        if RRT_DB[key] == nil then RRT_DB[key] = defaultValue end
    end
    for key in pairs(RRT_DB) do
        if AddOn.DatabaseDefaults[key] == nil then RRT_DB[key] = nil end
    end
    -- Sync toggles sub-table: add missing, remove stale (cleans up old ignoreAll key)
    for key, defaultValue in pairs(AddOn.DatabaseDefaults.toggles) do
        if RRT_DB.toggles[key] == nil then RRT_DB.toggles[key] = defaultValue end
    end
    for key in pairs(RRT_DB.toggles) do
        if AddOn.DatabaseDefaults.toggles[key] == nil then RRT_DB.toggles[key] = nil end
    end
    -- Populate any new factions that may be missing for existing user from enum
    if not RRT_DB.factionVisibility then RRT_DB.factionVisibility = {} end
    for _, factionID in pairs(AddOn.Faction) do
        if RRT_DB.factionVisibility[factionID] == nil then RRT_DB.factionVisibility[factionID] = true end
    end
    self.playerClassfile = select(2, UnitClass("player"))
    -- Initialize caches for data that we need to fetch for the AddOn from some in-game API
    self:CacheQuestNames({})
    self:CreateMidnightCache()
    self:CreateWarWithinCache()
    self:CreateDragonflightCache()
    self:CreateItemCurrencyCache()
    -- Register events to trigger certain kinds of updates on EventFrame
    EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    EventFrame:RegisterEvent("BAG_UPDATE")
    EventFrame:RegisterEvent("QUEST_COMPLETE")
    EventFrame:RegisterEvent("MAJOR_FACTION_RENOWN_LEVEL_CHANGED")
    EventFrame:RegisterEvent("COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED")
    EventFrame:RegisterEvent("CURRENCY_TRANSFER_LOG_UPDATE")
    self.initialized = true
    DebugPrint(GREEN_FONT_COLOR:WrapTextInColorCode("Initialized"))

    RRTScrollBox:InitializeScrollView()
end

local function toggleAddonWindow()
    if RenownRewardTracker and not RenownRewardTracker:IsShown() then
        RenownRewardTracker:Show()
    elseif RenownRewardTracker and RenownRewardTracker:IsShown() then
        RenownRewardTracker:Hide()
    end
end

local function createAddonTooltip(tooltip)
    tooltip:SetText("Renown Reward Tracker v@project-version@")
    tooltip:AddLine("Easily view renown rewards and track which are available per character", 1, 1, 1, true)
    tooltip:AddLine("Type "..DARKYELLOW_FONT_COLOR:WrapTextInColorCode("/rrt help").." in the chat window for available slash commands", 0.67, 0.67, 0.67)
end

function AddOn:ConfigureDataBroker()
    local broker = LDB:NewDataObject("RenownRewardTracker", {
        type = "launcher",
        text = "Renown Reward Tracker",
        icon = "Interface/AddOns/RenownRewardTracker/Media/RRT-logo-small.png",
        OnClick = function() toggleAddonWindow() end,
        OnTooltipShow = function(tooltip) createAddonTooltip(tooltip) end
    })
    if RRT_DB.minimap == nil or RRT_DB.minimap.hide == nil then RRT_DB.minimap = { hide = false } end
    self.DataBrokerIcon:Register("RenownRewardTracker", broker, RRT_DB.minimap)
end

SLASH_RRT1 = "/renownrewardtracker"
SLASH_RRT2 = "/rrt"
SlashCmdList["RRT"] = function(msg)
    if msg:lower() == "debug" then
        RRT_DB.debug = not RRT_DB.debug
        local color = RRT_DB.debug and UNCOMMON_GREEN_COLOR or ERROR_COLOR
        local debugModeState = RRT_DB.debug and "enabled" or "disabled"
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RRT:"), "Debug mode " .. color:WrapTextInColorCode(debugModeState))
    elseif msg:lower() == "minimap" then
        RRT_DB.minimap.hide = not RRT_DB.minimap.hide
        if RRT_DB.minimap.hide then AddOn.DataBrokerIcon:Hide("RenownRewardTracker")
        else AddOn.DataBrokerIcon:Show("RenownRewardTracker")
        end
    elseif msg:lower() == "help" then
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("RenownRewardTracker"), "Usage:")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("  /rrt:"), "Toggle the AddOn window")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("  /rrt minimap:"), "Toggle minimap button")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("  /rrt debug:"), "Toggle debug mode")
    else
        toggleAddonWindow()
    end
end

---@param isManualUpdate boolean|nil
function AddOn:UpdateListContents(isManualUpdate)
    if not self.initialized then return end
    DebugPrint("Updating list contents")

    ---@type (RewardData|FactionHeaderData)[]
    local listContents = {}
    ---@type table<number, boolean>
    local listedFactions = {}
    local dataSource = self:GetExpansionDataAndCache()
    for _, reward in ipairs(dataSource) do
        ---@cast reward RewardData
        if not listedFactions[reward.factionID] then
            listedFactions[reward.factionID] = true
            tinsert(listContents, { factionID = reward.factionID, isFactionHeader = true })
        end
        if self.ShouldRewardBeListed(reward) and RRT_DB.factionVisibility[reward.factionID] ~= false then
            tinsert(listContents, reward)
        end
    end

    self.DataProvider = CreateDataProvider(listContents)
    self.ScrollView:SetDataProvider(self.DataProvider)
    if isManualUpdate then
        print(HEIRLOOM_BLUE_COLOR:WrapTextInColorCode("[RRT]"), "Rewards list refreshed")
    end
end

---Determine if a reward should appear for the current character
---@param reward RewardData
---@return boolean `true` if reward should be shown, `false` otherwise
function AddOn.ShouldRewardBeListed(reward)
    -- IMPORTANT: Check for Abundance being unlocked to show or hide the Abundance of Wealth quest reward
    if reward.id == 93931 and not C_QuestLog.IsQuestFlaggedCompleted(91933) then return false end

    -- Type toggles are always respected, even when showAll is enabled
    if not RRT_DB.toggles[reward.type:lower()] then return false end

    -- Skip progression/ownership filters when showAll is on
    if RRT_DB.showAll then return true end
    
    if reward.requiredCharacterLevel and UnitLevel("player") < reward.requiredCharacterLevel then return false end

    local currentRenownLevel = C_MajorFactions.GetCurrentRenownLevel(reward.factionID)
    if currentRenownLevel < reward.renownLevel then return false end

    if reward.profSpellID and not C_SpellBook.IsSpellKnown(reward.profSpellID) then return false end

    if reward.type == "Gear" then
        -- Gear visibility in the list entirely handled here, since a majority of gear (especially from older expansions) wouldn't even make it to IsItemOwned()
        local itemCache = select(2, AddOn:GetExpansionDataAndCache())
        local cacheData = itemCache[reward.id]
        if cacheData then
            if cacheData.armorClassID ~= AddOn.ArmorSubclasses.Misc and cacheData.armorClassID ~= AddOn.ClassFileArmorTypeMap[AddOn.playerClassfile] and cacheData.equipLoc ~= "INVTYPE_CLOAK" then
                return false
            end

            -- Item will be shown even if it's lower item level than what's equipped if the appearance has not yet been learned
            local itemSourceID = select(2, C_TransmogCollection.GetItemInfo(reward.id))
            if itemSourceID then
                local transmogInfo = C_TransmogCollection.GetAppearanceInfoBySource(itemSourceID)
                DebugPrint(DARKYELLOW_FONT_COLOR:WrapTextInColorCode(cacheData.itemName), "appearance collected:", HEIRLOOM_BLUE_COLOR:WrapTextInColorCode(transmogInfo and tostring(transmogInfo.appearanceIsCollected) or "unknown"))
                if transmogInfo and not transmogInfo.appearanceIsCollected then return true end -- Only logic that goes against the conventional logic in this function
            else
                DebugPrint(WARNING_FONT_COLOR:WrapTextInColorCode("No item source for item "..reward.id))
            end
            if cacheData.rewardItemLevel and cacheData.equipLoc then
                local slots = AddOn.InvTypeToSlots[cacheData.equipLoc]
                if slots then
                    -- Setting to math.huge (infinity) for gear that can be equipped in multiple slots (1H weapons, rings, trinkets)
                    local minEquippedLevel = math.huge
                    for _, slotID in ipairs(slots) do
                        local itemLocation = ItemLocation:CreateFromEquipmentSlot(slotID)
                        local equippedLevel = (C_Item.DoesItemExist(itemLocation) and C_Item.GetCurrentItemLevel(itemLocation)) or 0
                        if equippedLevel < minEquippedLevel then
                            minEquippedLevel = equippedLevel
                        end
                    end
                    if cacheData.rewardItemLevel <= minEquippedLevel then
                        return false
                    end
                end
            end
        end
    end

    return not AddOn.IsItemOwned(reward)
end

-- AddOn Compartment Functions
function RRT_AddonCompartmentOnClick()
    toggleAddonWindow()
end

function RRT_AddonCompartmentOnEnter(_, btn)
    MenuUtil.ShowTooltip(btn, function(tooltip)
        createAddonTooltip(tooltip)
    end)
end

function RRT_AddonCompartmentOnLeave(_, btn)
    MenuUtil.HideTooltip(btn)
end
