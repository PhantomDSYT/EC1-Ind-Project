<%@ Page Title="Order History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="LoPets.OrderHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%:Title %></h2>
    <hr />
    <asp:GridView ID="GridView1" runat="server" class="table table-condensed table-hover table-striped" AutoGenerateColumns="False" DataKeyNames="CartId" DataSourceID="LoPetsDB" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="CartId" HeaderText="CartId" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="CartId" />
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" ReadOnly="True" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" ReadOnly="True" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" />
            <asp:BoundField DataField="Date_Purchased" HeaderText="Date Purchased" SortExpression="Date_Purchased" ReadOnly="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="LoPetsDB" runat="server" ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" SelectCommand="SELECT [CartId], [ItemID], [Quantity], [Total], [Date Purchased] AS Date_Purchased FROM [Orders] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
