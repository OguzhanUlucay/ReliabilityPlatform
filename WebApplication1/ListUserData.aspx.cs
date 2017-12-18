using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using EntityLayer;


public partial class ListUserData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["email"] != null)
        {

            GetirData();
        }



    }
    private void GetirData()
    {
        DataTable data = BLLUser.SelectUserData();
        RepeaterUsers.DataSource = data;
        RepeaterUsers.DataBind();

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
}
