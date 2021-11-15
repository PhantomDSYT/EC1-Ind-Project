<%@ Page Title="Manage Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="LoPets.Admin.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-4">
        <h2><%: Title %></h2>
    </div>
    <div class="text-right col-md-8">
        <asp:Button ID="Button1" runat="server" Text="Add Product" CssClass="btn btn-success " OnClick="AddProduct" />
    </div>
    <hr />
    <asp:GridView ID="GridView1" runat="server"  class="table table-condensed table-hover table-striped" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="LopetsDB" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ItemID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ItemID" />
            <asp:BoundField DataField="ItemName" HeaderText="Name" SortExpression="ItemName" />
            <asp:BoundField DataField="ItemCat" HeaderText="Cat" SortExpression="ItemCat" />
            <asp:BoundField DataField="ItemDesc" HeaderText="Description" SortExpression="ItemDesc" />
            <asp:BoundField DataField="ItemPrice" HeaderText="Price" SortExpression="ItemPrice" />
            <asp:BoundField DataField="ItemImg" HeaderText="Image Path" SortExpression="ItemImg" />
            <asp:CommandField ShowEditButton="True" ButtonType="Button">
                <ControlStyle CssClass ="btn btn-info" />
            </asp:CommandField>

            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
            <ControlStyle CssClass="btn btn-danger" />
            </asp:CommandField>

        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="LopetsDB" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [ItemID] = @original_ItemID AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemCat] = @original_ItemCat) OR ([ItemCat] IS NULL AND @original_ItemCat IS NULL)) AND (([ItemDesc] = @original_ItemDesc) OR ([ItemDesc] IS NULL AND @original_ItemDesc IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([ItemImg] = @original_ItemImg) OR ([ItemImg] IS NULL AND @original_ItemImg IS NULL))" InsertCommand="INSERT INTO [Items] ([ItemName], [ItemCat], [ItemDesc], [ItemPrice], [ItemImg]) VALUES (@ItemName, @ItemCat, @ItemDesc, @ItemPrice, @ItemImg)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [ItemName] = @ItemName, [ItemCat] = @ItemCat, [ItemDesc] = @ItemDesc, [ItemPrice] = @ItemPrice, [ItemImg] = @ItemImg WHERE [ItemID] = @original_ItemID AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemCat] = @original_ItemCat) OR ([ItemCat] IS NULL AND @original_ItemCat IS NULL)) AND (([ItemDesc] = @original_ItemDesc) OR ([ItemDesc] IS NULL AND @original_ItemDesc IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([ItemImg] = @original_ItemImg) OR ([ItemImg] IS NULL AND @original_ItemImg IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ItemID" Type="Int32" />
            <asp:Parameter Name="original_ItemName" Type="String" />
            <asp:Parameter Name="original_ItemCat" Type="String" />
            <asp:Parameter Name="original_ItemDesc" Type="String" />
            <asp:Parameter Name="original_ItemPrice" Type="Decimal" />
            <asp:Parameter Name="original_ItemImg" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="ItemCat" Type="String" />
            <asp:Parameter Name="ItemDesc" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Decimal" />
            <asp:Parameter Name="ItemImg" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="ItemCat" Type="String" />
            <asp:Parameter Name="ItemDesc" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Decimal" />
            <asp:Parameter Name="ItemImg" Type="String" />
            <asp:Parameter Name="original_ItemID" Type="Int32" />
            <asp:Parameter Name="original_ItemName" Type="String" />
            <asp:Parameter Name="original_ItemCat" Type="String" />
            <asp:Parameter Name="original_ItemDesc" Type="String" />
            <asp:Parameter Name="original_ItemPrice" Type="Decimal" />
            <asp:Parameter Name="original_ItemImg" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
