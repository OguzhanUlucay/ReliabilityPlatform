<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:Repeater ID="RepeaterUsers" runat="server">
     <HeaderTemplate>
            <table>
                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        Surname
                    </td>
                    <td>
                        SSN
                    </td>
                    <td>
                        Phone
                    </td>
                    <td>
                        Email
                    </td>
                    <td>
                        Birthdate
                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
                                <ul class="list-group">

            <tr>
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
</asp:Content>
