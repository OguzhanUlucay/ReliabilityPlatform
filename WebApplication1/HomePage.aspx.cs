using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["email"] != null)
        {
            
        }
        //bu kısma full yorumlar eklenecek.
        titleHeader.InnerHtml = "Hellasdasdsadasdo";
        myHeader.InnerHtml = "Hello";
    }

    protected void Computer(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Cars(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Headphones(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");

    }
    protected void Networking(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Phones(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Printers(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");

    }
    protected void Softwares(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void TVs(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void HomeEntertainment(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void WearableTech(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

}
