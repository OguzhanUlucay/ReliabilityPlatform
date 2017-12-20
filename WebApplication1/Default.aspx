<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
<body>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

    

      <div class="item active">
        <img src="http://cdn.wonderfulengineering.com/wp-content/uploads/2014/05/airplane-wallpaper-3.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h3>Easy and Fast !</h3>
          <p>Before you search on the google, just see all reviews on our site.Easy and Fast!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="https://wallup.net/wp-content/uploads/2016/05/02/93318-cityscape-building-river-sunset.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>Cost ? </h3>
          <p>It's free! Register and use!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>

       </body>

</asp:Content>
