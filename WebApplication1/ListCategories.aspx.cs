using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using EntityLayer;


public partial class ListCategories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if(Session["email"] != null)
        {
            GetirCategories();
        }
    }
    protected void Add(object sender, EventArgs e)
    {

        if (Session["email"] != null)
        {

        }
    }
    protected void Delete(object sender, EventArgs e)
    {

        if (Session["email"] != null)
        {

        }
    }
    private void GetirCategories()
    {
        DataTable data = BLLUser.SelectCategories();
        RepeaterUsers.DataSource = data;
        RepeaterUsers.DataBind();

    }
}
