<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="ListUserData.aspx.cs" Inherits="ListUserData" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:Repeater ID="RepeaterUsers" runat="server">
     <HeaderTemplate>
            <table>
                <tr>
                       <h1 style="color:white;font-family:courier;text-align:center;" >User Data</h1>      

               
                             
                    <td>
                                        <h2><font color="white">Email </font></h2>

                    </td>
                    <td>
                                        <h2><font color="white">Password</font></h2>

                    </td>
                  
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
                                            <ul class="list-group">


                <td>
                     <li class="list-group-item"><%#Eval("email")%></li>
                    </td>

          
               <td>
            <li class="list-group-item"><%#Eval("password")%></li>


                </td>
            <tr>

            </tr>
          
               </ul>
           

                
            

        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
        

    
        <div class="col-md text-center"> 
           <asp:Button ID="AddUser" class="btn btn-large btn-success" runat="server" Text="Add New Categories" OnClick="Add" />
           <asp:Button ID="DeleteUser" class="btn btn-large btn-warning" runat="server" Text="Delete Categories " OnClick="Delete" />

</div>

</asp:Content>

