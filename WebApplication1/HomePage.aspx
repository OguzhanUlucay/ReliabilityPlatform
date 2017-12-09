<%@ Page Title="" Language="C#" AutoEventWireup="true"
    CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>


    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
    <body background="https://newevolutiondesigns.com/images/freebies/white-wallpaper-8.jpg">

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
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Reliability Platform</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Main Menu</a></li>
                        <li><a runat="server" href="~/AdminPanel">User List</a></li>
                    </ul>

                       

                      <ul class="nav navbar-nav pull-right">
                        <li><a runat="server" href="~/Registering">Register Now !</a></li>

                        </ul>
                    <ul class="nav navbar-nav pull-right">
                        <li><a runat="server" href="~/Login">Logout </a></li>

                        </ul>

                </div>
            </div>
        </div>
     </form>