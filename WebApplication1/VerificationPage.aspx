<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerificationPage.aspx.cs" Inherits="WebApplication1.VerificationPage" %>

<!DOCTYPE html>
<webopt:bundlereference runat="server" path="~/Content/css" />
<link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<style>
    body 
    {
        <%--background-image: url("https://wallpaperscraft.com/image/black_background_pattern_light_texture_55291_1920x1080.jpg");--%>
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
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                          <li><a href="#">Search Reviews by Categories</a></li>
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
   
    

         <div class="form-group">
               <label for ="image_name_text">Your Document's Picture </label>
               <input type="text" class="form-control" id="image_name_text" />
               <asp:FileUpload id ="ImageUpload" runat="server" />

         </div>
         <div class ="form-group">
               <label for ="email">Other Contractor's Mail</label>
               <input type="email" class ="form-control" id ="email" />
         </div>

         <asp:Button ID="button1" class="btn btn-default" runat="server"  Text="Submit" OnClick="Button1_Click" />

         <label hidden id="label_error" runat="server" text="error"> </label>

        <div class ="form-group">
            <asp:Button ID="button_show" class="btn btn-default" runat="server"  Text="Pictures" OnClick="getImages" />
        </div>

        <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="File Name" DataField ="name" />
                <%-- <asp:TemplateField HeaderText="Image" >
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="80" Width ="80" DataField ="image" />
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:ImageField DataImageUrlField ="image" ControlStyle-Width="100px" ControlStyle-Height="100px">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
       </form>
        
        
</body>
