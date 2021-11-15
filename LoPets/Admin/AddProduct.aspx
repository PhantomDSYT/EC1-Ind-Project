<%@ Page Title="Add Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="LoPets.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <h4>Add New Product</h4>
                <hr />
                <asp:PlaceHolder ID="ErrorMessage" runat="server" Visible="false">
                    <p class="text-danger">
                        <asp:Literal ID="FailureText" runat="server"/>
                    </p>
                </asp:PlaceHolder>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ProductName" CssClass="col-md-2 control-label">Product Name</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="ProductName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ProductName"
                            CssClass="text-danger" ErrorMessage="Product Name field is empty"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ProductCategory" CssClass="col-md-2 control-label">Product Category</asp:Label>
                    <div class="col-md-10">
                        <asp:DropDownList ID="ProductCategory" runat="server" DataSourceID="LoPetsDB" DataTextField="CatName" DataValueField="CatName"></asp:DropDownList>
                        <asp:SqlDataSource ID="LoPetsDB" runat="server" ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" SelectCommand="SELECT [CatName] FROM [Category]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ProductCategory"
                            CssClass="text-danger" ErrorMessage="Product Category field is empty"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ProductPrice" CssClass="col-md-2 control-label">Product Price</asp:Label>
                    <div class="col-md-10">
                        <div class="input-group">
                            <span class="input-group-addon">$</span>
                            <asp:TextBox ID="ProductPrice" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ProductPrice"
                            CssClass="text-danger" ErrorMessage="Product Price field is empty"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ProductDesc" CssClass="col-md-2 control-label">Product Description</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="ProductDesc" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ProductDesc"
                            CssClass="text-danger" ErrorMessage="Product Description field is empty"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ProductImg" CssClass="col-md-2 control-label">Product Image</asp:Label>
                    <div class="col-md-10">
                        <asp:FileUpload ID="ProductImg" runat="server" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ProductImg"
                            CssClass="text-danger" ErrorMessage="Upload an image"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-mid-offset-2 col-md-10">
                        <asp:Button runat="server" Text="Add Product" CssClass="btn btn-primary" OnClick="CreateProduct" />  
                    </div>
                    <asp:SqlDataSource ID="DBSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" 
                        SelectCommand="SELECT * FROM [Items]"
                        Insertcommand="INSERT into Items (ItemName, ItemCat, ItemDesc, ItemPrice, ItemImg) VALUES (@Name, @Cat, @Desc, @Price, @Img)">
                            <InsertParameters>
                                <asp:FormParameter Name ="@Name" FormField="ProductName" />
                                <asp:FormParameter Name ="@Cat" FormField="ProductCategory" />
                                <asp:FormParameter Name ="@Desc" FormField="ProductDesc" />
                                <asp:FormParameter Name ="@Price" FormField="ProductPrice" />
                                <asp:FormParameter Name ="@Img" FormField="ProductImg" />
                            </InsertParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
