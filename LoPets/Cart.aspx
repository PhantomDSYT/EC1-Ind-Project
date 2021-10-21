<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LoPets.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Your Shopping Cart
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-condensed table-hover">
        <Columns>
            <asp:BoundField HeaderText="ID" ReadOnly="True" />
            <asp:BoundField HeaderText="Name" ReadOnly="True" />
            <asp:BoundField HeaderText="Qty" />
            <asp:BoundField HeaderText="Price" ReadOnly="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    </h2>
</asp:Content>
