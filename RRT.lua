---@class RenownRewardTracker
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
    else
        AddOn:UpdateListContents()
        DebugPrint(event)
    end
end)

EventFrame:RegisterEvent("ADDON_LOADED")

RRT_DB = RRT_DB or AddOn.DatabaseDefaults

function AddOn:Initialize()
    -- Populate any new toggles that may be added for existing users from DB defaults
    for key, defaultValue in pairs(AddOn.DatabaseDefaults.toggles) do
        if RRT_DB.toggles[key] == nil then RRT_DB.toggles[key] = defaultValue end
    end
    self.playerClassfile = select(2, UnitClass("player"))
    self:CreateMidnightCache()
    self:CreateWarWithinCache()
    EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    EventFrame:RegisterEvent("BAG_UPDATE")
    EventFrame:RegisterEvent("QUEST_COMPLETE")
    EventFrame:RegisterEvent("MAJOR_FACTION_RENOWN_LEVEL_CHANGED")
    EventFrame:RegisterEvent("COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED")
    DebugPrint("Initialized")
    self.initialized = true

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
    tooltip:AddLine("Easily view renown rewards and track which are available per character")
    tooltip:AddLine("Type \"/rrt help\" in the chat window for available slash commands")
end

function AddOn:ConfigureDataBroker()
    local broker = LDB:NewDataObject("RenownRewardTracker", {
        type = "launcher",
        text = "Renown Reward Tracker",
        icon = "Interface/AddOns/RenownRewardTracker/Media/logo.png",
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
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("    /rrt:"), "Toggle the AddOn window")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("    /rrt minimap:"), "Toggle minimap button")
        print(DARKYELLOW_FONT_COLOR:WrapTextInColorCode("    /rrt debug:"), "Toggle debug mode")
    else
        toggleAddonWindow()
    end
end

function AddOn:UpdateListContents()
    if not self.initialized then return end
    self.DebugPrint("Updating list contents")

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
end

---Determine if a reward should appear for the current character
---@param reward RewardData
---@return boolean `true` if reward should be shown, `false` otherwise
function AddOn.ShouldRewardBeListed(reward)
    -- Show everything when toggles.ignoreAll is enabled
    if RRT_DB.toggles.ignoreAll then return true end

    if not RRT_DB.toggles[reward.type:lower()] then return false end
    
    if reward.requiredCharacterLevel and UnitLevel("player") < reward.requiredCharacterLevel then return false end

    local currentRenownLevel = C_MajorFactions.GetCurrentRenownLevel(reward.factionID)
    if currentRenownLevel < reward.renownLevel then return false end

    if reward.profSpellID and not C_SpellBook.IsSpellKnown(reward.profSpellID) then return false end

    if reward.type == "Gear" then
        local itemCache = select(2, AddOn:GetExpansionDataAndCache())
        local cacheData = itemCache[reward.id]
        if cacheData then
            if cacheData.armorClassID ~= AddOn.ArmorSubclasses.Misc and cacheData.armorClassID ~= AddOn.ClassFileArmorTypeMap[AddOn.playerClassfile] then
                return false
            end
            if cacheData.rewardItemLevel and cacheData.equipLoc then
                local slots = AddOn.InvTypeToSlots[cacheData.equipLoc]
                if slots then
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
