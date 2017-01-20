<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ScratchWebApplication1._Default" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Patient Details</h1>
        <p class="lead">Table contains Patient&#39;s first name, last name, choices of color from blue, green, red and purple and like chocolate or not.</p>
    </div>
    <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
    <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" EnableAJAX="true" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadComboBox1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1"></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="RadComboBox1"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">

    </telerik:RadAjaxLoadingPanel>
                <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server" Width="1370px" AllowPaging="True" AllowSorting="True"
            OnItemCommand="RadGrid1_ItemCommand" OnNeedDataSource="RadGrid1_NeedDataSource" CssClass="gridAuto" Height="167px">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
            <ClientSettings AllowKeyboardNavigation="true" EnablePostBackOnRowClick="true">
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" CommandItemDisplay="None" TableLayout="Auto">
                <Columns>
            <telerik:GridBoundColumn DataField="FirstName" HeaderText="First Name"
              SortExpression="FirstName" UniqueName="FirstName">
            </telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="LastName" HeaderText="Last Name"
              SortExpression="LastName" UniqueName="LastName">
            </telerik:GridBoundColumn>
            <telerik:GridCheckBoxColumn UniqueName="ColorChoice_Blue" HeaderText="ColorChoice_Blue" DataField="ColorChoice_Blue"
              AllowSorting="true">
            </telerik:GridCheckBoxColumn>
            <telerik:GridCheckBoxColumn UniqueName="ColorChoice_Green" HeaderText="ColorChoice_Green" DataField="ColorChoice_Green"
              AllowSorting="true">
            </telerik:GridCheckBoxColumn>
            <telerik:GridCheckBoxColumn UniqueName="ColorChoice_Red" HeaderText="ColorChoice_Red" DataField="ColorChoice_Red"
              AllowSorting="true">
            </telerik:GridCheckBoxColumn>
            <telerik:GridCheckBoxColumn UniqueName="ColorChoice_Purple" HeaderText="ColorChoice_Purple" DataField="ColorChoice_Purple"
              AllowSorting="true">
            </telerik:GridCheckBoxColumn>
            <telerik:GridTemplateColumn UniqueName="ChocoBox" HeaderText="ChocoPref" DataField="ChocoPref">
                    <ItemTemplate>
                    <asp:CheckBox ID="ChocoPref" runat="server" AutoPostBack="true" OnCheckedChanged="Choco_CheckedChanged" Checked='<%# (DataBinder.Eval(Container.DataItem,"ChocoPref")) %>'/>
                    </ItemTemplate>
            </telerik:GridTemplateColumn> 

                </Columns>
                
                <PagerStyle Mode="NumericPages"></PagerStyle>
            </MasterTableView>

<FilterMenu RenderMode="Lightweight"></FilterMenu>

<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
        </telerik:RadGrid>
        <asp:Label ID="Label1" runat="server" BorderStyle="None" Text="Filter Patient by color choice" Height="28px" Width="198px"></asp:Label>
        <telerik:RadComboBox ID="RadComboBox1" Runat="server" Height="27px" AutoPostBack="True" OnNeedDataSource="RadComboBox1_NeedDataSource" OnSelectedIndexChanged="RadComboBox1_SelectedIndexChanged" style="margin-top: 0px" Width="166px">
        </telerik:RadComboBox>    


</asp:Content>
