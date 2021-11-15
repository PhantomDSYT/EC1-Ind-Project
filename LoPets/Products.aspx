<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="LoPets.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center"><%: Title%>.</h2>
    <div class="row text-center">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="LoPetsDB">
                <ItemTemplate>
                    <div class="panel panel-default col-md-4">
                        <div class="panel-heading"><a href="/#"><img src="<%#Eval("ItemImg") %>" height="200" /></a></div> 
                        <div class="panel-body">
                            <i><asp:Label ID="ItemID" runat="server" Text=<%#Eval("ItemID") %>></asp:Label></i> 
                            <h4><u><%#Eval("ItemCat") %></u></h4>
                            <h2><%#Eval("ItemName") %></h2>
                            <p><%#Eval("ItemDesc") %></p>
                            <h3>&#36 <%#Eval("ItemPrice") %></h3>
                        </div>
                        <div class ="panel-footer"><asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Add to cart &raquo;" OnClick="AddToCart" /> </div>              
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="LoPetsDB" runat="server" ConnectionString="<%$ ConnectionStrings:LoPetsConnectionString %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>

</div>
</asp:Content>
