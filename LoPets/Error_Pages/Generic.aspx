<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Generic.aspx.cs" Inherits="LoPets.Error_Pages.Generic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: radial-gradient(transparent,white), url('../Images/black_pup.jpg'); background-position:center; background-repeat:no-repeat; height:500px; background-size: cover; position:relative" >
        <div style="position:absolute; top:50%; left:50%; transform: translate(-50%, -50%); text-align:center">
            <h3 style="color:white">Sorry we seems to have run into an error</h3>
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server"  OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
