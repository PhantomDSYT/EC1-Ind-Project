<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LoPets.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-8"><h2>Your Shopping Cart</h2></div>
        <div class="col-md-4 text-right">
            <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="btn btn-success" OnClick="Button1_Click" />
        </div>

        <asp:GridView ID="GridView1" runat="server" class="table table-condensed table-hover table-striped" OnRowDeleting="GV_RowDeleting" OnRowUpdated="GridView1_RowUpdated" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" DataSourceID="LopetsDB">
        <Columns>
            <asp:BoundField DataField="ItemId" HeaderText="ItemId" SortExpression="ItemId" />
            <asp:BoundField DataField="ItemQty" HeaderText="ItemQty" SortExpression="ItemQty" />
            <asp:BoundField DataField="itemPrice" HeaderText="itemPrice" SortExpression="itemPrice" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="LopetsDB" runat="server" ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ItemId], [ItemQty], [itemPrice] FROM [ShoppingCart]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([UserName] = @UserName)">
    </asp:SqlDataSource>
    <div class="text-right">
        <h3>Total: $<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>.00</h3>
    </div>
    
</asp:Content>
