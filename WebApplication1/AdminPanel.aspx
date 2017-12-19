<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="AdminPanel.aspx.cs" Inherits="AdminPanel" %>


  




<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


            <div class="col-md">
        <div style="background:black !important" class="jumbotron">
    <h1 style="color:white;font-family:courier;text-align:center;" >Admin Panel</h1>      
    <p style="color:white;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;text-align:center;" >TABLES</p>      

  </div>
        </div>
            


<div class="btn-group-vertical">
  
    <div class="col-md text-center"> 
            <asp:Button ID="ListAllUsers" class="btn btn-large btn-success" runat="server" Text="List and Edit All Users" OnClick="ListUsers" />
                <asp:Button ID="ListAllAdress" class="btn btn-large btn-warning" runat="server" Text="List and Edit All Adress" OnClick="ListAllAddress" />
                <asp:Button ID="ListCategories" class="btn btn-large btn-success" runat="server" Text="List All Categories" OnClick="ListCategoriess" />
                <asp:Button ID="ListReviews" class="btn btn-large btn-warning" runat="server" Text="List and Edit All Reviews" OnClick="ListReviewss" />
                <asp:Button ID="ListAllSessions" class="btn btn-large btn-success" runat="server" Text="List All UserData(Email and psw)" OnClick="ListUserData" />
	             <asp:Button ID="ListAllVerifications" class="btn btn-large btn-warning" runat="server"  Text="List and Edit All Verifications" OnClick="ListAllVerificationss"/>
</div>
         
   
    </div>

         




                
         


    


</asp:Content>
