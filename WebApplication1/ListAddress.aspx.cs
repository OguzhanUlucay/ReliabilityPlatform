using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using EntityLayer;
using MySql.Data.MySqlClient;

public partial class ListAddress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        if (Session["email"] != null)
        {

            GetirAddress();
        }
    }
    protected void Update(object sender, EventArgs e)
    {

        if (Session["email"] != null)
        {
            MySql.Data.MySqlClient.MySqlConnection Con = new MySql.Data.MySqlClient.MySqlConnection("server=localhost;database=mydb;uid=root; password=Berkay35.");



            if (InputCity.Text != "")
            {
                string sqlQuery = "UPDATE adress SET city=@inputCity WHERE adress_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);

                cmd.Parameters.AddWithValue("@inputCity", InputCity.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputDistrict.Text != "")
            {
                string sqlQuery = "UPDATE adress SET district=@inputDistrict WHERE adress_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputDistrict", InputDistrict.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputNeighbourhood.Text != "")
            {
                string sqlQuery = "UPDATE adress SET neighbourhood=@inputNeighbourhood WHERE adress_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputNeighbourhood", InputNeighbourhood.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputZipcode.Text != "")
            {
                string sqlQuery = "UPDATE adress SET zip_code=@inputZipcode WHERE adress_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputZipcode", InputZipcode.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputBuilding.Text != "")
            {
                string sqlQuery = "UPDATE adress SET building_name=@inputBuilding_name WHERE adress_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputBuilding_name", InputBuilding.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }


        }
        Response.Redirect("ListAddress.aspx");
    }
    protected void Delete(object sender, EventArgs e)
    {

        if (Session["email"] != null)
        {
            MySql.Data.MySqlClient.MySqlConnection Con = new MySql.Data.MySqlClient.MySqlConnection("server=localhost;database=mydb;uid=root; password=Berkay35.");

            string deletedRow = ShortDescription.Text;
            string sqlQuery = "DELETE FROM adress WHERE adress_id=@deletedRow";
            MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);

            cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
            if (Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.ExecuteNonQuery();
            Con.Close();
            Response.Redirect("ListAddress.aspx");
        }
    }

    private void GetirAddress()
    {
        DataTable data = BLLUser.SelectUserAddress();
        RepeaterUsers.DataSource = data;
        RepeaterUsers.DataBind();

    }
}
