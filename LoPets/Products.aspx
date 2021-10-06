﻿<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="LoPets.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center"><%: Title%>.</h2>
    <div class="row text-center">

        <div class="card bg-info col-md-4">
            <div class="card-heading"><a href="/#"><img src="Images/Adjustable-leash.jpeg" height="200"/></a></div>
            <div class="card-body">
                <i>#1001</i> <h4><u>General</u></h4>
                <h2>Adjustable Leash</h2>
                <p>
                    A leash that automatically adjusts itself so your pets can roam while whithin your reach
                </p>
                <h3>&#36 3,000.00</h3>
            </div>
            <div class ="card-footer card-primary"><a class="btn btn-primary" href="Products.aspx">Add to cart &raquo;</a> </div>
        </div>

        <div class="card bg-info col-md-4">
            <div class="card-heading"><a href="/#"><img src="Images/dog-harness.jpg" height="200" /></a></div> 
            <div class="card-body">
                <i>#1002</i> <h4><u>Canine</u></h4>
                <h2>Dog Harness</h2>
                <p>
                    A harness eases the stress your dog receive from having a leash on its collar by spreading the tension to its body instead
                </p>
                <h3>&#36 2,500.00</h3>
            </div>
            <div class ="card-footer"><a class="btn btn-primary" href="Products.aspx">Add to cart &raquo;</a>  </div>              
        </div>

        <div class="card bg-info col-md-4">
            <div class="card-heading"><a href="/#"><img src="Images/round-fish-tank.jpg" height="200" /></a></div> 
            <div class="card-body">
                <i>#1003</i> <h4><u>Marine Life</u></h4>
                <h2>Fish Tank</h2>
                <p>
                    A small and round-shaped bowl that allows your swimming fish to be seen from all sides in a rather large and unobtrusive way.
                </p>
                <h3>&#36 12,000.00</h3>
            </div>
             <div class ="card-footer"><a class="btn btn-primary" href="Products.aspx">Add to cart &raquo;</a></div>
        </div>

        <div class="card bg-info col-md-4">
            <div class="card-heading"><a href="/#"><img src="Images/dog-collar.jpg" height="200" /></a></div>
            <div class="card-body">
                <i>#1004</i> <h4><u>Canine</u></h4>
                <h2>Dog Collar</h2>
                <p>
                    A very stylish collar to show your furry friend how much you care
                </p>
                <h3>&#36 2,000.00</h3>
            </div>
             <div class ="card-footer"><a class="btn btn-primary" href="Products.aspx">Add to cart &raquo;</a></div>
        </div>

        <div class="card bg-info col-md-4">
            <div class="card-heading"><a href="/#"><img src="Images/cat-fish-toy.jpg" height="200"/></a></div>
            <div class="card-body">
                <i>#1005</i> <h4><u>Feline</u></h4>
                <h2>Fish Toy</h2>
                <p>
                    Keep your feline friend busy for hours as they chase around for their treat
                </p>
                <h3>&#36 500.00</h3>
            </div>
             <div class ="card-footer"><a class="btn btn-primary" href="Products.aspx">Add to cart &raquo;</a></div>
        </div>

        <div class="card bg-info col-md-4">
            <div class="card-heading"><a href="/#"><img src="Images/fish-tank2.jpg" height="200" /></a></div> 
            <div class="card-body">
                <i>#1006</i> <h4><u>Marine Life</u></h4>
                <h2>LED Fish Tank</h2>
                <p>
                    A very stylish and spacious tank that can bring out the potential of any decorator, also with builtin LED lights so your work of underwater art can be seen in the dark
                </p>
                <h3>&#36 45,000.00</h3>
            </div>
             <div class ="card-footer"><a class="btn btn-primary" href="Products.aspx">Add to cart &raquo;</a></div>
        </div>

    </div>
</asp:Content>
