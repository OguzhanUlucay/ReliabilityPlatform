<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h3>RELIABILITY PLATFORM </h3>
        <p class="lead">Reliability platform is basically review and ratings site. Member Customer and seller that leagally completed a trade can review and rate each other.</p>
        <p><a href="/RegisterUser" class="btn btn-primary btn-lg">Sign up and see all reviews  &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                For this evaluation of each other both side have to upload a legal document which will be entered verification process on the platform and evaluated by the algorithm.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Sign Up Now !  &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Enterprise Users</h2>
            <p>
               Show your reliability with the your trusted reviews to whole world
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">More Info &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Rules and Privacy</h2>
            <p>
                You can easily find our privacy politicy.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
