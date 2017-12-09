<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Registering.aspx.cs" Inherits="Registering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <form>
        
  

  
      <div class="container" style="margin-top:50px;">
        <form class="form-horizontal" method="post">
          <fieldset>
       
          <div id="edit_farmer" style="display:none"></div>

          <div class="row">
            <div class="col-md-2 panel panel-heading">Contact Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="contact_error"></div>
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

             <input type="radio" name="rad1" onclick="show(0)" checked value="NormalUser " id="NormalUser " > Enterprise User

            <input type="radio"  name="rad1" onclick="show(1)" value="EnterpriseUser" id="EnterpriseUser"  >Normal User(Non-Business)
             


          
          </div>
      
       
             
            
                     <div class="row form-group">

            <label class="col-md-2 control-label" for="mobile">Phone</label>
            <div class="col-md-3">
    <div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-phone"></i>
			</span>
                    <asp:TextBox ID="TextBoxUserPhone" runat="server"></asp:TextBox>
		
            </div>
	</div>
        
            
          </div>
      <div class="row form-group">
            <div class="col-md-8" id="mobile_numbers"></div>
          </div>

                   <div class="row form-group">

            <label class="col-md-2 control-label" for="first_name">First Name</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
            </div></div>

                        </div>

                          <div class="row form-group">

            <label class="col-md-2 control-label" for="last_name">Last Name</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                <asp:TextBox ID="TextBoxUserSurname" runat="server"></asp:TextBox>
            </div>
	</div>
                          </div>

              
                          <div class="row form-group">

            <label class="col-md-2 control-label" for="Email">E-mail</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
            </div>
	</div>
                          </div>


                        <div class="row form-group">

                <label class="col-md-2 control-label" for="SSN">SSN</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                <asp:TextBox ID="TextBoxUserSSN" runat="server"></asp:TextBox>
            </div>
                 
            </div>
                                      </div>

              
                        <div class="row form-group">

                <label class="col-md-2 control-label" for="Password">Password</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                     <asp:TextBox ID="TextBoxPassword" type="password" runat="server"></asp:TextBox>

            </div>
                 
            </div>
                                      </div>

                                  <div class="">

                <asp:Label ID="LabelWarning" runat="server" Text=""></asp:Label>

            </div>     


                     <div class="row">
            <div class="col-md-2 panel panel-heading">Birthdate Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="address_error"></div>
          </div>

           <div class="row form-group">
           <label class="col-md-2 control-label" for="Birthdate">Birthdate</label>  
           <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
                 <asp:TextBox ID="TextBoxUserBirthDate" type="date" runat="server"></asp:TextBox>
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

                  <div class="row">
            <div class="col-md-2 panel panel-heading">Business Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="address_error"></div>
          </div>
              

        <div class="row form-group">
            <label class="col-md-2 control-label" for="TaxNumber">Tax Number</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon"></i>
			</span>
                                <asp:TextBox ID="TextBoxTaxNumber" runat="server"></asp:TextBox>

            </div> </div>
                        </div>

                  <div class="row form-group">
            <label class="col-md-2 control-label" for="CorporationTitle">CorporationTitle</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon"></i>
			</span>
                                <asp:TextBox ID="TextBoxCorporationTitle" runat="server"></asp:TextBox>

            </div> </div>
                        </div>


            
                
      

          <div class="row">
            <div class="col-md-2 panel panel-heading">Address Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="address_error"></div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="City">City</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-home"></i>
			</span>
                                <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>

            </div> </div>
                        </div>

                        <div class="row form-group">

            <label class="col-md-2 control-label" for="state">District</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

                    <asp:TextBox ID="TextBoxDistrict" runat="server"></asp:TextBox>
            </div></div>
                                    </div>

                                      <div class="row form-group">

            <label class="col-md-2 control-label" for="district">Neighbourhood</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

                    <asp:TextBox ID="TextBoxNeighbourhood" runat="server"></asp:TextBox>
            </div>
		</div>
                                    </div>

          <div class="row form-group">
           
                <label class="col-md-2 control-label" for="district">Building Name</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

                    <asp:TextBox ID="TextBoxBuildingName" runat="server"></asp:TextBox>
            </div>
		</div>

          </div>

          <div class="row form-group">
          
              <label class="col-md-2 control-label" for="district">Zip Code</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-home"></i>
			</span>

                    <asp:TextBox ID="TextBoxZipCode" runat="server"></asp:TextBox>
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

                  </div>

    </form>

</asp:Content>
