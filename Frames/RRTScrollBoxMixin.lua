---@class RenownRewardTracker
local AddOn = select(2, ...)

RRTScrollBoxMixin = CreateFromMixins(ScrollBoxListMixin, {})

function RRTScrollBoxMixin:InitializeScrollView()
    AddOn.ScrollBox = self
    AddOn.ScrollBar = RRTScrollBar

    if AddOn.ScrollBox and AddOn.ScrollBar then
        print("Create data provider and scroll view")
        AddOn.DataProvider = CreateDataProvider()
        AddOn.ScrollView = CreateScrollBoxListLinearView()

        ScrollUtil.InitScrollBoxListWithScrollBar(AddOn.ScrollBox, AddOn.ScrollBar, AddOn.ScrollView)
        AddOn.ScrollView:SetElementFactory(function(factory, elementData)
            factory("RRTListItemTemplate", AddOn.DataProvider)
        end)
        AddOn.ScrollView:SetElementExtent(AddOn.ScrollView:GetTemplateExtent("RRTListItemTemplate"))

        AddOn.ScrollView:SetDataProvider(AddOn.DataProvider)
    end
end