<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoPets._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 <div class="carousel slide" data-ride="carousel">

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" >
    <div class="item active">
      <img src="Images/Fish.jpg" alt="Fish">
        <div class="carousel-caption">
            <h2 style="color:white; font-family: 'Brush Script MT', cursive;">Welcome to LoPets</h2>
        </div>
    </div>
    <div class="item">
      <img src="Images/dog.jpg" alt="Dog">
        <div class="carousel-caption">
            <h2 style="color:white; font-family: 'Brush Script MT', cursive;">Low prices for the best pets</h2>
        </div>
    </div>
  </div>

</div>

    <div class="row text-center">
        <h2>Featured Items</h2> <br />
        <div class="panel panel-default col-md-4">
            <div class="panel-heading"><img src="Images/Adjustable-leash.jpg" height="200"/></div>
            <div class="panel-footer"><a class="btn btn-primary" href="Products.aspx">Details &raquo;</a></div>
        </div>
        <div class="panel panel-default col-md-4">
            <div class="panel-heading"><img src="Images/dog-collar.jpg" height="200"/></div>
            <div class="panel-footer"><a class="btn btn-primary" href="Products.aspx">Details &raquo;</a></div>
        </div>
        <div class="panel panel-default col-md-4">
            <div class="panel-heading"><img src="Images/fish-toy.jpg" height="200"/></div>
            <div class="panel-footer"><a class="btn btn-primary" href="Products.aspx">Details &raquo;</a></div>
        </div>
    </div>

</asp:Content>
