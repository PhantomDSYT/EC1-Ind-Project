<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LoPets.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Your Shopping Cart</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-condensed table-hover">
        <Columns>
            <asp:BoundField HeaderText="Name" ReadOnly="True" />
            <asp:BoundField HeaderText="Qty" />
            <asp:BoundField HeaderText="Price" ReadOnly="True" />
            <asp:BoundField HeaderText="SubTotal" ReadOnly="true" />
            <asp:CommandField ShowDeleteButton="True" >
                <ControlStyle CssClass="btn btn-danger" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <h3 class="text-right">Total: $<asp:Label ID="Label1" runat="server" Text="0.00"></asp:Label></h3>
</asp:Content>
