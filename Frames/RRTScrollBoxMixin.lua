local AddOn = select(2, ...)

RRTScrollBoxMixin = CreateFromMixins(ScrollBoxListMixin, {})

function RRTScrollBoxMixin:InitializeScrollView()
    AddOn.ScrollBox = self
    AddOn.ScrollBar = RRTScrollBar

    if AddOn.Container and AddOn.ScrollBox and AddOn.ScrollBar then
        AddOn.RRTDataProvider = CreateDataProvider()
        AddOn.ScrollView = CreateScrollBoxListLinearView()

        ScrollUtil.InitScrollBoxListWithScrollBar(AddOn.ScrollBox, AddOn.ScrollBar, AddOn.ScrollView)
        AddOn.ScrollView:SetElementFactory(function(factory, elementData)
        end)
        -- AddOn.ScrollView:SetElementExtent(AddOn.ScrollView:GetTemplateExtent("RRTListItemTemplate"))

        AddOn.ScrollView:SetDataProvider(AddOn.RRTDataProvider)
    end
end