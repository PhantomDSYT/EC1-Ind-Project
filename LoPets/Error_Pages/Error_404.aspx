<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error_404.aspx.cs" Inherits="LoPets.Error_Pages.Error_404" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="background-image: radial-gradient(transparent,white), url('../Images/black_pup.jpg'); background-position:center; background-repeat:no-repeat; height:500px; background-size: cover; position:relative" >
        <div style="position:absolute; top:50%; left:50%; transform: translate(-50%, -50%); text-align:center">
            <h3 style="color:white">Sorry, page not found</h3>
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server"  OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
