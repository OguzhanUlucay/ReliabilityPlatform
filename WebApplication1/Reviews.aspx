﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="Reviews" %>
 <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
    <body background="https://wallpaperscraft.com/image/black_background_pattern_light_texture_55291_1920x1080.jpg">

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

                    <ul class="nav navbar-nav pull-right">
                        <li><a runat="server" href="~/Logout">Logout </a></li>

                        </ul>


                </div>
            </div>
        </div>


 


    <div class="col-md">
        <div style="background:black !important" class="jumbotron">
    <h1 style="color:white;font-family:courier;text-align:center;" >Review</h1>      
    <p style="color:white;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:center;" >Writing review and also rating the seller/buyer is much easier. Write honest and unbiased product reviews. Your reviews will process after verification completed. It might be take up to 24 hours.</p>      

  </div>
       
    
  
  

     
        


              <script src="~/lib/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="~/lib/jquery-validation-unobtrusive/jquery.validate.unobtrusive.min.js"></script>
<link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />
<div>
    <div class="col-md-6">
        <div>
            
                <div>
                    <form method="post">
                        <div class="form-group">
                                <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >Name</h4>      

                           <p align="left"><textarea rows="1" cols="1" class="form-control" id="inputName" name="inputName"style="color: white; background-color: black"></textarea></p> 
                            
                        </div>
                        <div class="form-group">
                                <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >Your E-mail</h4>      
                           <p align="left"><textarea rows="1" cols="1" class="form-control" id="inputEmail"style="color: white; background-color: black"></textarea></p> 

                        </div>
                        <div class="form-group">

                                <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >Title of Review</h4>      
                           <p align="left"><textarea rows="1" cols="1" class="form-control" id="inputTitle" style="color: white; background-color: black"></textarea></p> 
                        </div>
                         <div class="form-group">
                                <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >Type the user e-mail that you want to review</h4>      
                           <p align="left"><textarea rows="1" cols="1" class="form-control" id="inputReviewEmail" style="color: white; background-color: black"></textarea></p> 
                        </div>
                          <div class="form-group">
                                <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >Categories</h4>      
<div class="form-group">
  <select class="form-control" id="sel1" style="color: white; background-color: black" >
    <option>Computer</option>
    <option>Cars</option>
    <option>Headphones</option>
    <option>Networking</option>
     <option>Phones</option>
     <option>Printers</option>
     <option>Softwares</option>
     <option>TVs</option>
    <option>HomeEntertainment</option>
     <option>WearableTech</option>


      
  </select>
</div>
                        </div>
                        <div class="form-group">

                                <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >Description</h4>      
                           <p align="left"><textarea rows="5" cols="15" class="form-control" id="Description" style="color: white; background-color: black"></textarea></p> 
                        </div>
                  
                    </form>
                </div>
            
        </div>

        <div>
            
        </div>
        <div  style="text-align: left; width: 100%;">
            <asp:Button ID="EnterpriseUserADD" class="btn btn-large btn-success" runat="server" Text="Send your Review" OnClick="Review_Submit"/>

              <button class="btn btn-large btn-danger" type="button" onclick=history.go(-1)> Cancel </button>
        </div>
            
    </div>

</div>
        
            <div class="row">
        <div class="col-md-4">
                                <h1 style="color:white;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >Rules</h1>      
            
                                           <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >              --- To accept your review, please enter information correctly.</h4>      
                                           <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >              --- Select categories correctly.</h4>      
                                           <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >              --- Your review will be confirmed in 24 hours.</h4>      
                                            <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >              --- Contact if you have issues</h4>      
                                           <h4 style="color:coral;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:left;" >              ---              @berkay.bingol@ceng.deu.edu.tr,oguzhan.ulucay@ceng.deu.edu.tr
</h4>      


           
         
        </div>





        </div>

                 </form>