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

public partial class ListUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        if (Session["email"] != null)
        {

            GetirUser();
        }

        }
    protected void Delete(object sender, EventArgs e)
    {

        if (Session["email"] != null)
        {
            MySql.Data.MySqlClient.MySqlConnection Con = new MySql.Data.MySqlClient.MySqlConnection("server=localhost;database=mydb;uid=root; password=Berkay35.");

            string deletedRow = ShortDescription.Text;
            string sqlQuery = "DELETE FROM user WHERE user_id=@deletedRow";
            MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);

            cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
            if (Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.ExecuteNonQuery();
            Con.Close();
            Response.Redirect("ListUsers.aspx");




        }

    }
    protected void Update(object sender, EventArgs e)
    {
        //update user table
        if (Session["email"] != null)
        {
            MySql.Data.MySqlClient.MySqlConnection Con = new MySql.Data.MySqlClient.MySqlConnection("server=localhost;database=mydb;uid=root; password=Berkay35.");

            

            if (InputName.Text != "")
            {
                string sqlQuery = "UPDATE user SET name=@inputName WHERE user_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);

                cmd.Parameters.AddWithValue("@inputName", InputName.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputSurname.Text != "")
            {
                string sqlQuery = "UPDATE user SET surname=@inputSurname WHERE user_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputSurname", InputSurname.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputPhone.Text != "")
            {
                string sqlQuery = "UPDATE user SET phone=@inputPhone WHERE user_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputPhone", InputPhone.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputSSN.Text != "")
            {
                string sqlQuery = "UPDATE user SET ssn=@inputSSN WHERE user_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputSSN", InputSSN.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputEmail.Text != "")
            {
                string sqlQuery = "UPDATE user SET email=@inputEmail WHERE user_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputEmail", InputEmail.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }
            if (InputBirthdate.Text != "")
            {
                string sqlQuery = "UPDATE user SET birthdate=@inputBirthdate WHERE user_id=@deletedRow";

                MySqlCommand cmd = new MySqlCommand(sqlQuery, Con);
                cmd.Parameters.AddWithValue("@inputBirthdate", InputBirthdate.Text);
                cmd.Parameters.AddWithValue("@deletedRow", ShortDescription.Text);
                if (Con.State == ConnectionState.Closed)
                {
                    Con.Open();
                }
                cmd.ExecuteNonQuery();
                Con.Close();
            }


            
            Response.Redirect("ListUsers.aspx");




        }


    }
    private void GetirUser()
    {
        DataTable data = BLLUser.SelectData();
        RepeaterUsers.DataSource = data;
        RepeaterUsers.DataBind();

    }
}
