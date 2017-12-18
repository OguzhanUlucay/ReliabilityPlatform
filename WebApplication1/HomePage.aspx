<%@ Page Title="" Language="C#" AutoEventWireup="true"
    CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>


    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style>
body {
        background-image: url("https://wallpaperscraft.com/image/black_background_pattern_light_texture_55291_1920x1080.jpg");
} 
 
</style>


 <body>


 <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--ScriptManager'da betik paketleme hakkında daha fazla bilgi için bkz. https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Çerçeve Betikleri--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Betikleri--%>
            </Scripts>
        </asp:ScriptManager>
<div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                    <a class="navbar-brand" runat="server" href="~/HomePage">Reliability Platform</a>
                </div>
                <div class="navbar-collapse collapse">
                   
                    
                     <ul class="nav navbar-nav">

                          <li class="dropdown">
                          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Reviews
                        <span class="caret"></span></a>
                         <ul class="dropdown-menu">
                         <li><a href="Categories.aspx">Search Reviews by Categories</a></li>
                          <li><a href="Reviews.aspx">Add a new Review.</a></li>
                          <li><a href="#">Trusted Sellers</a></li>
                          </ul>
                     </ul>

                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/VerificationPage">Verification</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <li><a runat="server" href="~/Logout">Logout </a></li>
                    </ul>


                </div>
            </div>
        </div>


        
   
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        

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
        <img src="https://wallpaperscraft.com/image/keyboard_laptop_macro_73432_1920x1080.jpg" alt="Bosch" style="width:100%;">
        <div class="carousel-caption">
          <h3>Trusted Reviews</h3>
          <p>The most trusted reviews platform in all over the world.</p>
        </div>
      </div>

      <div class="item">
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

</form>

</body>
     
