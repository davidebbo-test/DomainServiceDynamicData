<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="DomainServiceDynamicData._Default" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server" />

    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            [ <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="Log In" /> ]
        </AnonymousTemplate>
        <LoggedInTemplate>
            Welcome <b><asp:LoginName ID="LoginName2" runat="server" /></b>! [ <asp:LoginStatus ID="LoginStatus2" runat="server" LogoutText="Log Out" /> ]
        </LoggedInTemplate>
    </asp:LoginView>

    <h2 class="DDSubHeader">My tables</h2>

    <br /><br />

    <asp:GridView ID="Menu1" runat="server" AutoGenerateColumns="false"
        CssClass="DDGridView" RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6">
        <Columns>
            <asp:TemplateField HeaderText="Table Name" SortExpression="TableName">
                <ItemTemplate>
                    <asp:DynamicHyperLink ID="HyperLink1" runat="server"><%# Eval("DisplayName") %></asp:DynamicHyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>


