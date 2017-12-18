using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using EntityLayer;

public partial class AdminPanel : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["email"]!=null)
        {
           
        }
       
    }
    protected void ListUsers(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            Response.Redirect("ListUsers.aspx");
        }

    }
    protected void ListAllAddress(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            Response.Redirect("ListAddress.aspx"); 
        }

    }
    protected void ListCategoriess(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            Response.Redirect("ListCategories.aspx");
        }

    }
    protected void ListReviewss(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            
        }

    }
    protected void ListUserData(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            Response.Redirect("ListUserData.aspx");
        }

    }
    protected void ListAllVerificationss(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {

        }

    }
  
}
