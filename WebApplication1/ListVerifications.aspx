<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="ListVerifications.aspx.cs" Inherits="ListVerifications" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:Repeater ID="RepeaterUsers" runat="server">
     <HeaderTemplate>
            <table>
                <tr>
                       <h1 style="color:white;font-family:courier;text-align:center;" >User Address</h1>      

               
                             
                    <td>
                                        <h2><font color="white">Verification ID  </font></h2>

                    </td>
                    <td>
                                        <h2><font color="white"> Image ID</font></h2>

                    </td>
                      <td>
                                        <h2><font color="white"> Buyer ID</font></h2>

                    </td>
                      <td>
                                        <h2><font color="white"> Seller ID</font></h2>

                    </td>
                      <td>
                                        <h2><font color="white"> IS_BUYER_ENTERPRS</font></h2>

                    </td>
                      <td>
                                        <h2><font color="white"> IS_SELLER_ENTERPRS</font></h2>

                    </td>
                     <td>
                                        <h2><font color="white"> NAME</font></h2>

                    </td>
                      <td>
                                        <h2><font color="white"> IMAGE</font></h2>

                    </td>

                  
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
                                            <ul class="list-group">


                <td>
                     <li class="list-group-item"><%#Eval("verification_id")%></li>
                    </td>

          
               <td>
            <li class="list-group-item"><%#Eval("image_id")%></li>


                </td>
                                                <td>
            <li class="list-group-item"><%#Eval("buyer_id")%></li>


                </td>
                                                <td>
            <li class="list-group-item"><%#Eval("seller_id")%></li>


                </td>
                                                <td>
            <li class="list-group-item"><%#Eval("is_buyer_entrps")%></li>


                </td>
                                                   <td>
            <li class="list-group-item"><%#Eval("is_seller_entrps")%></li>


                </td>
                                                              <td>
            <li class="list-group-item"><%#Eval("name")%></li>


                </td>

              <td>
            <li class="list-group-item"><%#Eval("image")%></li>


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
           <asp:Button ID="AddUser" class="btn btn-large btn-success" runat="server" Text="Update Categories"  />
           <asp:Button ID="DeleteUser" class="btn btn-large btn-warning" runat="server" Text="Delete Categories " />

</div>

</asp:Content>

