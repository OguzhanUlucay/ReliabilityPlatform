using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

public partial class AdminPanel : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["email"]!=null)
        {
            if (!IsPostBack)
            {
                Getir();
            }
        }
       
    }

    private void Getir()
    {
        DataTable data = BLLUser.SelectData();
        RepeaterUsers.DataSource = data;
        RepeaterUsers.DataBind();
    }
}
