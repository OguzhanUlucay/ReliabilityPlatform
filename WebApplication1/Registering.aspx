<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Registering.aspx.cs" Inherits="Registering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

        
  

  
      <div class="container" style="margin-top:50px;">
        <form class="form-horizontal" method="post">
          <fieldset>
       
          <div id="edit_farmer" style="display:none"></div>

         

           <div class="alert alert-secondary panel " role="alert">
                 <p class="text-md-left"> Contact Information </p>
          </div>
              <script>
                   function show(x)
                  {
                      if (x == 0)
                          document.getElementById("show").style.display = 'block';
                      else
                          document.getElementById("show").style.display = 'none';

                      return;

                  }
               </script>
    <div class="jumbotron">

            <div class="row form-group">
               <label class="col-md-2 control-label" for="registration_type">Registration Type</label>
              
               <div class="form-check">
                <label class="form-check-label">

                   <input type="radio" class="form-check-input" name="rad1" onclick="show(0)" checked value="NormalUser " id="NormalUser " > Enterprise User
                </label>
               </div>

               <div class="form-check">
                <label class="form-check-label">

                   <input type="radio" class="form-check-input"  name="rad1" onclick="show(1)" value="EnterpriseUser" id="EnterpriseUser"  >Normal User(Non-Business)
                </label>
               
               </div>
               



          
          </div>
      
             
            
           <div class="row form-group">

                <label class="col-md-2 control-label" for="mobile">Phone</label>
                <div class="col-md-9">
        <div class="input-group">
			    <span class="input-group-addon">
			    <i class="glyphicon glyphicon-phone"></i>
			    </span>
                        <asp:TextBox ID="TextBoxUserPhone" class ="form-control"  runat="server"></asp:TextBox>
		
                </div>
	    </div>
            
          </div>

     

                   <div class="row form-group">

            <label class="col-md-2 control-label" for="first_name">First Name</label>  
            <div class="col-md-9">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                <asp:TextBox ID="TextBoxUserName" class ="form-control"  runat="server"></asp:TextBox>
            </div></div>

                        </div>

                          <div class="row form-group">

            <label class="col-md-2 control-label" for="last_name">Last Name</label>  
            <div class="col-md-9">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                <asp:TextBox ID="TextBoxUserSurname" class ="form-control"  runat="server"></asp:TextBox>
            </div>
	</div>
                          </div>

              
                          <div class="row form-group">

            <label class="col-md-2 control-label" for="Email">E-mail</label>  
            <div class="col-md-9">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                <asp:TextBox ID="TextBoxEmail" class ="form-control"  runat="server"></asp:TextBox>
            </div>
	</div>
                          </div>


                        <div class="row form-group">

                <label class="col-md-2 control-label" for="SSN">SSN</label>  
            <div class="col-md-9">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                <asp:TextBox ID="TextBoxUserSSN" class ="form-control"  runat="server"></asp:TextBox>
            </div>
                 
            </div>
                                      </div>

              
                        <div class="row form-group">

                <label class="col-md-2 control-label" for="Password">Password</label>  
            <div class="col-md-9">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                     <asp:TextBox ID="TextBoxPassword" class ="form-control"  runat="server"></asp:TextBox>

            </div>
                 
            </div>
                                      </div>

            <div class="">

                <asp:Label ID="LabelWarning" runat="server" Text=""></asp:Label>

            </div>     


              <div class="alert alert-info" role="alert">
                 <p class="text-md-left"> Birthdate Information </p>
          </div>

           <div class="row form-group">
           <label class="col-md-2 control-label" for="Birthdate">Birthdate</label>  
           <div class="col-md-9">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                 <asp:TextBox ID="TextBoxUserBirthDate" class ="form-control" type="date" runat="server"></asp:TextBox>
            </div>
	        </div>
          </div>
     
               <div class="form-group row">
            <div class="col-md-8 text-center">
                            <asp:Button ID="NormalUserADD" class="btn btn-large btn-success" runat="server" Text="Register as Normal User" OnClick="ADD_NormalUser" />

              <button class="btn btn-large btn-danger" type="button" onclick=history.go(-1)> Cancel </button>
            </div>
          </div>


           
                     

              <div id="show">

                  

             <div class="alert alert-info" role="alert">
                 <p class="text-md-left"> Business Information </p>
             </div>
              

        <div class="row form-group">
            <label class="col-md-2 control-label" for="TaxNumber">Tax Number</label>
            <div class="col-md-9">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon"></i>
			</span>
                                <asp:TextBox ID="TextBoxTaxNumber" class ="form-control" runat="server"></asp:TextBox>

            </div> </div>
                        </div>

                  <div class="row form-group">
            <label class="col-md-2 control-label" for="CorporationTitle">CorporationTitle</label>
            <div class="col-md-9">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon"></i>
			</span>
                                <asp:TextBox ID="TextBoxCorporationTitle" class ="form-control" runat="server"></asp:TextBox>

            </div> </div>
                        </div>


            
                

          <div class="alert alert-info" role="alert">
                 <p class="text-md-left">Address Information </p>
          </div>



          <div class="row form-group">
            <label class="col-md-2 control-label" for="City">City</label>
            <div class="col-md-9">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-home"></i>
			</span>
                                <asp:TextBox ID="TextBoxCity" class ="form-control" runat="server"></asp:TextBox>

            </div> </div>
                        </div>

                        <div class="row form-group">

            <label class="col-md-2 control-label" for="state">District</label>
            <div class="col-md-9">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

                    <asp:TextBox ID="TextBoxDistrict" class ="form-control" runat="server"></asp:TextBox>
            </div></div>
                                    </div>

                                      <div class="row form-group">

            <label class="col-md-2 control-label" for="district">Neighbourhood</label>
            <div class="col-md-9">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

                    <asp:TextBox ID="TextBoxNeighbourhood" class ="form-control" runat="server"></asp:TextBox>
            </div>
		</div>
                                    </div>

          <div class="row form-group">
           
                <label class="col-md-2 control-label" for="district">Building Name</label>
            <div class="col-md-9">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

                    <asp:TextBox ID="TextBoxBuildingName" class ="form-control"  runat="server"></asp:TextBox>
            </div>
		</div>

          </div>

          <div class="row form-group">
          
              <label class="col-md-2 control-label" for="district">Zip Code</label>
            <div class="col-md-9">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-home"></i>
			</span>

                    <asp:TextBox ID="TextBoxZipCode" class ="form-control" runat="server"></asp:TextBox>
            </div>
		</div>
            
          </div>
                  
            <div class="form-group row">
            <div class="col-md-8 text-center">
               <asp:Button ID="EnterpriseUserADD" class="btn btn-large btn-success" runat="server" Text="Register as Enterprise User" OnClick="ADD_EnterpriseUser" />

              <button class="btn btn-large btn-danger" type="button" onclick=history.go(-1)> Cancel </button>
            </div>
          </div>

              </div>

                       
              

        
            
                          

       
          </fieldset>
        </form>

      </div>

<div class="b">
 <div class="navbar navbar-default navbar-fixed-bottom">

    
    
  </div>
</div>



</asp:Content>
