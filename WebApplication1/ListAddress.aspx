<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="ListAddress.aspx.cs" Inherits="ListAddress" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:Repeater ID="RepeaterUsers" runat="server">
     <HeaderTemplate>
            <table>
                <tr>
                       <h1 style="color:white;font-family:courier;text-align:center;" >User Address</h1>      

               
                             
                    <td>
                                        <h2><font color="white">Adress_id  </font></h2>

                    </td>
                    <td>
                                        <h2><font color="white"> City</font></h2>

                    </td>
                         <td>
                                        <h2><font color="white">District</font></h2>

                    </td>
                    <td>
                                        <h3><font color="white">Neighbourhood</font></h3>

                    </td>
                    <td>
                                        <h3><font color="white">Building Name</font></h3>

                    </td>
                    <td>
                                        <h3><font color="white">Zip Code </font></h3>

                    </td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>

            <td>

           
          
               
            <li class="list-group-item"><%#Eval("adress_id")%></li>

                </td>
                <td>

           
          
               
            <li class="list-group-item"><%#Eval("city")%></li>

                </td>
                <td>
            <li class="list-group-item"><%#Eval("district")%></li>

                </td>
                 <td>
            <li class="list-group-item"><%#Eval("neighbourhood")%></li>

                </td>
                <td>
            <li class="list-group-item"><%#Eval("building_name")%></li>

                </td>
                 <td>
            <li class="list-group-item"><%#Eval("zip_code")%></li>

                </td>
               <tr>

            </tr>

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
                                            <h5><font color="white">City</font></h5>

    <asp:TextBox id="InputCity" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
    <div class="form-group">
                                            <h5><font color="white">District</font></h5>

    <asp:TextBox id="InputDistrict" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
        <div class="form-group">
                                            <h5><font color="white">Neighbourhood</font></h5>

    <asp:TextBox id="InputNeighbourhood" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
    <div class="form-group">
                                            <h5><font color="white">Building Name</font></h5>

    <asp:TextBox id="InputBuilding" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
      <div class="form-group">
                                            <h5><font color="white">Zipcode</font></h5>

    <asp:TextBox id="InputZipcode" runat="server" CssClass="content" MaxLength="100"  style="height: 35px; width: 800px;" />

</div>
  

    
        <div class="col-md text-center"> 
           <asp:Button ID="UpdateAddress" class="btn btn-large btn-success" runat="server" Text="Update Address" OnClick="Update" />
           <asp:Button ID="DeleteAddress" class="btn btn-large btn-warning" runat="server" Text="Delete Address of User" OnClick="Delete" />

</div>

</asp:Content>

