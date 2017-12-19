<%@ Page Title="" Language="C#" AutoEventWireup="true"
    CodeBehind="HomePage.aspx.cs" Inherits="HomePage" %>


    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style>
       
        
timeline {
  list-style: none;
  padding: 20px 0 20px;
  position: relative;
}



.timeline > li {
  margin-bottom: 20px;
  position: relative;
}

.timeline > li:before,
.timeline > li:after {
  content: " ";
  display: table;
}

.timeline > li:after {
  clear: both;
}

.timeline > li:before,
.timeline > li:after {
  content: " ";
  display: table;
}

.timeline > li:after {
  clear: both;
}

.timeline > li > .timeline-panel {
  width: 46%;
  float: left;
  border: 1px solid #d4d4d4;
  border-radius: 2px;
  padding: 20px;
  position: relative;
  -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
  box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
}

.timeline > li > .timeline-panel:before {
  position: absolute;
  top: 26px;
  right: -15px;
  display: inline-block;
  border-top: 15px solid transparent;
  border-left: 15px solid #ccc;
  border-right: 0 solid #ccc;
  border-bottom: 15px solid transparent;
  content: " ";
}

.timeline > li > .timeline-panel:after {
  position: absolute;
  top: 27px;
  right: -14px;
  display: inline-block;
  border-top: 14px solid transparent;
  border-left: 14px solid #fff;
  border-right: 0 solid #fff;
  border-bottom: 14px solid transparent;
  content: " ";
}

.timeline > li > .timeline-badge {
  color: #fff;
  width: 50px;
  height: 50px;
  line-height: 50px;
  font-size: 1.4em;
  text-align: center;
  position: absolute;
  top: 16px;
  left: 50%;
  margin-left: -25px;
  background-color: #999999;
  z-index: 100;
  border-top-right-radius: 50%;
  border-top-left-radius: 50%;
  border-bottom-right-radius: 50%;
  border-bottom-left-radius: 50%;
}

.timeline > li.timeline-inverted > .timeline-panel {
  float: right;
}

.timeline > li.timeline-inverted > .timeline-panel:before {
  border-left-width: 0;
  border-right-width: 15px;
  left: -15px;
  right: auto;
}

.timeline > li.timeline-inverted > .timeline-panel:after {
  border-left-width: 0;
  border-right-width: 14px;
  left: -14px;
  right: auto;
}

.timeline-badge.primary {
  background-color: #2e6da4 !important;
}

.timeline-badge.success {
  background-color: #3f903f !important;
}

.timeline-badge.warning {
  background-color: #f0ad4e !important;
}

.timeline-badge.danger {
  background-color: #d9534f !important;
}

.timeline-badge.info {
  background-color: #5bc0de !important;
}

.timeline-title {
  margin-top: 0;
  color: inherit;
}

.timeline-body > p,
.timeline-body > ul {
  margin-bottom: 0;
}

.timeline-body > p + p {
  margin-top: 5px;
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
                        <li><a runat="server" href="~/AdminPanel">Admin Panel </a></li>

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
        
     <div class="col-md">
        <div style="background:black !important" class="jumbotron">
    <h1 style="color:white;font-family:courier;text-align:center;" >Reliability Platform </h1>      
    <p style="color:white;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:center;" ></p>      

  </div>
         </div>
        <div class="col-md-3">

            <!-- begin panel group -->
                <h1 style="color:white;font-family:courier;text-align:center;" >Categories of Reviews</h1>      

            <a href="#" runat="server" onServerClick="Computer"  class="list-group-item list-group-item-warning">Computers</a>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                
                <!-- panel 1 -->
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab1" data-toggle="tab" role="tab" aria-expanded="false">
                       
                    </span>
                    
                      
                </div> 
                <!-- / panel 1 -->
                
                <!-- panel 2 -->
                <a href="#" runat="server" onServerClick="Cars"  class="list-group-item list-group-item-success">Cars</a>
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab2" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>
                    
                   
                </div>
                <!-- / panel 2 -->
                
                <!--  panel 3 -->
                  <a href="#" runat="server" onServerClick="Headphones"  class="list-group-item list-group-item-warning">Headphones</a>
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>
                    
                        
                      </div>
                  <a href="#" runat="server" onServerClick="Networking"  class="list-group-item list-group-item-info">Networking</a>
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>
                
                        
                      </div>
                  <a href="#" runat="server" onServerClick="Phones"  class="list-group-item list-group-item-warning">Phones</a>
                   <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>
            
                      </div>
                  <a href="#" runat="server" onServerClick="Printers"  class="list-group-item list-group-item-danger">Printers</a>
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>
                   
                        
                      </div>
                  <a href="#" runat="server" onServerClick="Softwares"  class="list-group-item list-group-item-warning">Softwares</a>
                   <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>
                      
                        
                      </div>
                  <a href="#" runat="server" onServerClick="TVs"  class="list-group-item list-group-item-danger">TVs</a>
                     <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>

                         
                      </div>
                  <a href="#" runat="server" onServerClick="HomeEntertainment"  class="list-group-item list-group-item-warning">Home Entertainment</a>
                   <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>

                       
                      </div>
                  <a href="#" runat="server" onServerClick="WearableTech"  class="list-group-item list-group-item-success">Wearable Tech</a>
                 <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        
                    </span>
                    
                        
                      </div>

            </div> <!-- / panel-group -->
             
        </div> <!-- /col-md-4 -->
             </form>

    <div class="container">
  <div class="page-header">
    <h1 id="timeline">Timeline</h1>
  </div>
  <ul class="timeline">
    <li>
      <div class="timeline-badge"><i class="glyphicon glyphicon-check"></i></div>
      <div class="timeline-panel">
        <div class="timeline-heading">
          <p id="titleHeader" runat="server" class="timeline-title"></p>
          <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> 11 hours ago via Twitter</small></p>
        </div>
        <div class="timeline-body">
                     <p id="myHeader" runat="server"></p>

        </div>
      </div>
    </li>
    <li class="timeline-inverted">
      <div class="timeline-badge warning"><i class="glyphicon glyphicon-credit-card"></i></div>
      <div class="timeline-panel">
        <div class="timeline-heading">
          <p id="titleHeader2" runat="server" class="timeline-title"></p>
        </div>
        <div class="timeline-body">
            <p id="myHeader2" runat="server"></p>

         
        </div>
      </div>
    </li>
    <li>
      <div class="timeline-badge danger"><i class="glyphicon glyphicon-credit-card"></i></div>
      <div class="timeline-panel">
        <div class="timeline-heading">
          <p id="titleHeader3" runat="server" class="timeline-title"></p>
        </div>
        <div class="timeline-body">
                      <p id="myHeader3" runat="server"></p>

        </div>
      </div>
    </li>
    <li class="timeline-inverted">
      <div class="timeline-panel">
        <div class="timeline-heading">
          <p id="titleHeader4" runat="server" class="timeline-title"></p>
        </div>
        <div class="timeline-body">
                      <p id="myHeader4" runat="server"></p>

        </div>
      </div>
    </li>
    <li>
      <div class="timeline-badge info"><i class="glyphicon glyphicon-floppy-disk"></i></div>
      <div class="timeline-panel">
        <div class="timeline-heading">
          <p id="titleHeader5" runat="server" class="timeline-title"></p>
        </div>
        <div class="timeline-body">
                      <p id="myHeader5" runat="server"></p>

          <hr>
          <div class="btn-group">
            <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
              <i class="glyphicon glyphicon-cog"></i> <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li class="divider"></li>
              <li><a href="#">Separated link</a></li>
            </ul>
          </div>
        </div>
      </div>
    </li>
    <li>
      <div class="timeline-panel">
        <div class="timeline-heading">
          <p id="titleHeader6" runat="server" class="timeline-title"></p>
        </div>
        <div class="timeline-body">
                     <p id="myHeader6" runat="server"></p>

        </div>
      </div>
    </li>
    <li class="timeline-inverted">
      <div class="timeline-badge success"><i class="glyphicon glyphicon-thumbs-up"></i></div>
      <div class="timeline-panel">
        <div class="timeline-heading">
          <p id="titleHeader7" runat="server" class="timeline-title"></p>
        </div>
        <div class="timeline-body">
                     <p id="myHeader7" runat="server"></p>

        </div>
      </div>
    </li>
  </ul>
</div>

     
         
