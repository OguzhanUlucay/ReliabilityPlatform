<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="ListUsers.aspx.cs" Inherits="ListUsers" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:Repeater ID="RepeaterUsers" runat="server">
     <HeaderTemplate>
            <table>
                <tr>
                       <h1 style="color:white;font-family:courier;text-align:center;" >User List</h1>      

               <td>
                                        <h4><font color="white">User_ID</font></h4>

                    </td>
                             
                    <td>
                                        <h4><font color="white">Name</font></h4>

                    </td>
                    <td>
                                        <h4><font color="white">SSN</font></h4>

                    </td>
                         <td>
                                        <h4><font color="white">Phone</font></h4>

                    </td>
                    <td>
                                        <h4><font color="white">E-mail</font></h4>

                    </td>
                    <td>
                                        <h4><font color="white">Birthdate</font></h4>

                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
                                <ul class="list-group">

            <tr>
                <td>

            <li class="list-group-item"><%#Eval("user_id")%></li>
           

                    
                </td>
                <td>

            <li class="list-group-item"><%#Eval("name")%> <%#Eval("surname")%></li>
           

                    
                </td>
          
                </td>
                <td>
            <li class="list-group-item"><%#Eval("ssn")%></li>

                </td>
                <td>
            <li class="list-group-item"><%#Eval("phone")%></li>

                </td>
                 <td>
            <li class="list-group-item"><%#Eval("email")%></li>

                </td>
                <td>
            <li class="list-group-item"><%#Eval("birthdate")%></li>

                </td>
            </tr>
                                                    </ul>

        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>


            <div class="form-group">
                                        <h5><font color="white">Write a Row for Delete or Update</font></h5>
<asp:TextBox id="ShortDescription" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />
</div>
<div class="form-group">
                                            <h5><font color="white">Name</font></h5>

    <asp:TextBox id="InputName" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
    <div class="form-group">
                                            <h5><font color="white">Surname</font></h5>

    <asp:TextBox id="InputSurname" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
        <div class="form-group">
                                            <h5><font color="white">SSN</font></h5>

    <asp:TextBox id="InputSSN" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
    <div class="form-group">
                                            <h5><font color="white">Phone</font></h5>

    <asp:TextBox id="InputPhone" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
      <div class="form-group">
                                            <h5><font color="white">Email</font></h5>

    <asp:TextBox id="InputEmail" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
      <div class="form-group">
                                                      <h5><font color="white">Birthdate</font></h5>

    <asp:TextBox id="InputBirthdate" type="date" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />
          </div>
           

    
        <div class="col-md text-center"> 
           <asp:Button ID="AddUser" class="btn btn-large btn-success" runat="server" Text="Update Existing User" OnClick="Update" />
           <asp:Button ID="DeleteUser" class="btn btn-large btn-warning" runat="server" Text="Delete Existing User" OnClick="Delete" />

</div>

</asp:Content>

