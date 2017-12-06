<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="RegisterUser.aspx.cs" Inherits="RegisterUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <form>
        <div class="form-group">

            <div class="control-label">

                <asp:Label runat="server" Text="Name"></asp:Label>
            </div>

            <div class="">

                <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>

            </div>

        </div>


        <div class="form-group">

            <div class="">

                <asp:Label runat="server" Text="Surname"></asp:Label>
            </div>
            <div class="">

                <asp:TextBox ID="TextBoxUserSurname" runat="server"></asp:TextBox>
            </div>

        </div>


        <div class="form-group">
            <div class="">

                <asp:Label runat="server" Text="SSN"></asp:Label>
            </div>
            <div class="">

                <asp:TextBox ID="TextBoxUserSSN" runat="server"></asp:TextBox>
            </div>
            <div class="">

                <asp:Label ID="LabelWarning" runat="server" Text=""></asp:Label>

            </div>

        </div>

            <div class="form-group">

                <div class="">

                    <asp:Label runat="server" Text="Birhtdate"></asp:Label>
                </div>
                <div class="">

                    <asp:TextBox ID="TextBoxUserBirthDate" type="date" runat="server"></asp:TextBox>
                </div>

            </div>


            <div class="form-group">

                <div >

                    <asp:Label runat="server" Text="Phone"></asp:Label>
                </div>
                <div>

                    <asp:TextBox ID="TextBoxUserPhone" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">

                <div class="">

                    <asp:Label runat="server" Text="Email"></asp:Label>
                </div>
                <div class="">

                    <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                </div>


            </div>

            <asp:Button ID="ButtonADD" runat="server" Text="ADD" OnClick="ButtonADD_Click" />
    </form>

</asp:Content>


