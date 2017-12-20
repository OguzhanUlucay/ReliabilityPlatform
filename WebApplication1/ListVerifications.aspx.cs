using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
    public partial class ListVerifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if(Session["email"]!=null)
        {
            GetirVerifications();
        }
        

    }
    private void GetirVerifications()
    {
        DataTable data = BLLUser.SelectVerifications();
        RepeaterUsers.DataSource = data;
        RepeaterUsers.DataBind();

    }
}
