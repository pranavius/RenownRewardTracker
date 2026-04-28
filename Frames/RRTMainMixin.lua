---@class RenownRewardTracker
local AddOn = select(2, ...)

---@class RRTMainMixin
RRTMainMixin = {}

function RRTMainMixin:OnLoad()
    self.ResizeHandle:Init(self, RRT_WINDOW_MIN_WIDTH, RRT_WINDOW_MIN_HEIGHT, RRT_WINDOW_MAX_WIDTH, RRT_WINDOW_MAX_HEIGHT, 0)
    self.ResizeHandle:HookScript("OnDragStart", function() self:StartSizing() end)
    self.ResizeHandle:HookScript("OnDragStop", function() self:StopMovingOrSizing() end)
    self.Title:SetText("Renown Reward Tracker")

    local function isSelectedExpansion(id)
        return id == AddOn.SelectedExpansion
    end
    local function setSelectedExpansion(id)
        AddOn.SelectedExpansion = id
    end

    self.ExpansionDropdown:SetupMenu(function(_, rootDescription)
        rootDescription:CreateTitle("Expansion")
        for id, name in pairs(AddOn.SupportedExpansions) do
            rootDescription:CreateRadio(name, isSelectedExpansion, setSelectedExpansion, id)
        end
    end)
end

function RRTMainMixin:OnDragStart()
    self:StartMoving()
end

function RRTMainMixin:OnDragStop()
    self:StopMovingOrSizing()
end