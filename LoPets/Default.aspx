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
        <div class="col-md-4">
            <img src="Images/Adjystable-leash.jpeg" width="200"/><br /> <br />
            <a class="btn btn-primary" href="Products.aspx">Details &raquo;</a>
        </div>
        <div class="col-md-4">
            <img src="Images/dog-collar.jpg" width="200"/><br /> <br />
            <a class="btn btn-primary" href="Products.aspx">Details &raquo;</a>
        </div>
        <div class="col-md-4">
            <img src="Images/cat-fish-toy.jpg" width="200"/><br /> <br />
            <a class="btn btn-primary" href="Products.aspx">Details &raquo;</a>
        </div>
    </div>

</asp:Content>
