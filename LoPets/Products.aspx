<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="LoPets.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title%>.</h2>
    <div class="row text-center">
        <div class="col-md-4">
                <a href="/#"><img src="Images/Adjystable-leash.jpeg" width="200"/></a> <br />
        </div>
        <div class="col-md-4">
                <a href="/#"><img src="Images/dog-harness.jpg" width="200" /></a> <br />
        </div>
        <div class="col-md-4">
                <a href="/#"><img src="Images/fish-tank.jpg" width="200" /></a> <br />
        </div>
    </div>
</asp:Content>
