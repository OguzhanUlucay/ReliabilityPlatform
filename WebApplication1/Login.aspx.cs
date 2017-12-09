using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;


public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    protected void ADD_Login(object sender, EventArgs e)
    {
        MySql.Data.MySqlClient.MySqlConnection Con = new MySql.Data.MySqlClient.MySqlConnection("server=localhost;database=mydb;uid=root; password=Berkay35.");
        Con.Open();

        MySqlCommand cmd = new MySqlCommand();
        cmd.Connection = Con;
        cmd.CommandText = "select * from userdata where email=@email and password=@password";
        cmd.Parameters.AddWithValue("@email", TextBoxEmail.Text);
        cmd.Parameters.AddWithValue("password", TextBoxPassword.Text);
        MySqlDataAdapter adptr = new MySqlDataAdapter();
        adptr.SelectCommand = cmd;

        DataTable dt = new DataTable();
        adptr.Fill(dt);
        int i = cmd.ExecuteNonQuery();

        foreach (DataRow dr in dt.Rows)
        {
            Session["email"] = TextBoxEmail.Text;
            Response.Redirect("http://localhost:51589");
        }
        if (dt.Rows.Count > 0)
        {
           
        }
        else
        {
            Label1.Text = "You're username and word is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
        Con.Close();

    }
}
