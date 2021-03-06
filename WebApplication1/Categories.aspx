﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Categories" %>

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
   

    

</body>
 </form>
