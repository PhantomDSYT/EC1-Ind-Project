<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LoPets.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-8"><h2>Your Shopping Cart</h2></div>
        <div class="col-md-4 text-right">
            <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="btn btn-success" OnClick="Button1_Click" />
        </div>

        <asp:GridView ID="GridView1" runat="server" class="table table-condensed table-hover table-striped" OnRowDeleting="GV_RowDeleting" OnRowUpdated="GridView1_RowUpdated" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" />
            <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" />
            <asp:TemplateField HeaderText="Qty">
                <EditItemTemplate>
                    <asp:TextBox ID="Quantity" runat="server" Text='<%# Eval("Qty") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" ReadOnly="True" />
            <asp:CommandField ButtonType="Button" DeleteText="" InsertText="" NewText="" SelectText="" ShowEditButton="True" >
                <ControlStyle CssClass="btn btn-info" />
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button">
                <ControlStyle CssClass="btn btn-danger" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <div class="text-right">
        <h3>Total: $<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>.00</h3>
    </div>
    
</asp:Content>
