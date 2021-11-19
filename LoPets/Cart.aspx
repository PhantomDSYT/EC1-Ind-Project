<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LoPets.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-8"><h2>Your Shopping Cart</h2></div>
        <div class="col-md-4 text-right">
            <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="btn btn-success" OnClick="Button1_Click" />
        </div>

        <asp:GridView ID="GridView1" runat="server" class="table table-condensed table-hover table-striped" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="LoPets" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" InsertVisible="False" Visible="false" />
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" ReadOnly="True" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty"/>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" ReadOnly="True" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                <ControlStyle CssClass="btn btn-info" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle CssClass="btn btn-danger" />
                </asp:CommandField>
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

    <asp:SqlDataSource ID="LoPets" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" DeleteCommand="DELETE FROM [ShoppingCart] WHERE [Id] = @original_Id AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND [Qty] = @original_Qty AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [ShoppingCart] ([ItemName], [Qty], [Price]) VALUES (@ItemName, @Qty, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [ItemName], [Qty], [Price] FROM [ShoppingCart] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [ShoppingCart] SET [ItemName] = @ItemName, [Qty] = @Qty, [Price] = @Price WHERE [Id] = @original_Id AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND [Qty] = @original_Qty AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_ItemName" Type="String" />
            <asp:Parameter Name="original_Qty" Type="Int32" />
            <asp:Parameter Name="original_Price" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_ItemName" Type="String" />
            <asp:Parameter Name="original_Qty" Type="Int32" />
            <asp:Parameter Name="original_Price" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div class="text-right">
        <h3>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" SelectCommand="SELECT SUM(SubTotal) as GrandTotal FROM ShoppingCart WHERE (UserName = @user)">
                <SelectParameters>
                    <asp:SessionParameter Name="user" SessionField="user" />
                </SelectParameters>
            </asp:SqlDataSource>
            Total: $<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>.00</h3>
    </div>
    
</asp:Content>
