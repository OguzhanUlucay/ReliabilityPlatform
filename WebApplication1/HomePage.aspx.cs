using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["email"] != null)
        {


         
        }
        //bu kısma full yorumlar eklenecek.
        MySql.Data.MySqlClient.MySqlConnection Con = new MySql.Data.MySqlClient.MySqlConnection("server=localhost;database=mydb;uid=root; password=Berkay35.");
        Con.Open();
        MySqlCommand cmd = new MySqlCommand();
        cmd.Connection = Con;
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.CommandText = "titleList";
        cmd.Parameters.AddWithValue("Preview_id", 1);
        var queryResult = cmd.ExecuteScalar();
        String title1 = Convert.ToString(queryResult);
        titleHeader.InnerHtml = title1;

        cmd.Parameters.RemoveAt("Preview_id");

        cmd.CommandText = "descriptionList";
        cmd.Parameters.AddWithValue("Preview_id", 1);
        queryResult = cmd.ExecuteScalar();
        String desc1 = Convert.ToString(queryResult);
        myHeader.InnerHtml = desc1;

        cmd.Parameters.RemoveAt("Preview_id");

        cmd.CommandText = "titleList";
        cmd.Parameters.AddWithValue("Preview_id", 2);
        queryResult = cmd.ExecuteScalar();
        String title2 = Convert.ToString(queryResult);
        titleHeader2.InnerHtml = title2;

        cmd.Parameters.RemoveAt("Preview_id");

        cmd.CommandText = "descriptionList";
        cmd.Parameters.AddWithValue("Preview_id", 2);
        queryResult = cmd.ExecuteScalar();
        String desc2 = Convert.ToString(queryResult);
        myHeader2.InnerHtml = desc2;

        //
        cmd.Parameters.RemoveAt("Preview_id");

        cmd.CommandText = "titleList";
        cmd.Parameters.AddWithValue("Preview_id", 9);
         queryResult = cmd.ExecuteScalar();
         title1 = Convert.ToString(queryResult);
        titleHeader3.InnerHtml = title1;

        cmd.Parameters.RemoveAt("Preview_id");

        cmd.CommandText = "descriptionList";
        cmd.Parameters.AddWithValue("Preview_id", 9);
        queryResult = cmd.ExecuteScalar();
         desc1 = Convert.ToString(queryResult);
        myHeader3.InnerHtml = desc1;

        cmd.Parameters.RemoveAt("Preview_id");

        cmd.CommandText = "titleList";
        cmd.Parameters.AddWithValue("Preview_id", 4);
        queryResult = cmd.ExecuteScalar();
        title1 = Convert.ToString(queryResult);
        titleHeader4.InnerHtml = title1;

        cmd.Parameters.RemoveAt("Preview_id");

        cmd.CommandText = "descriptionList";
        cmd.Parameters.AddWithValue("Preview_id", 4);
        queryResult = cmd.ExecuteScalar();
        desc1 = Convert.ToString(queryResult);
        myHeader4.InnerHtml = desc1;









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
