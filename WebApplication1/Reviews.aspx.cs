using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using EntityLayer;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

public partial class Reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Review_Submit(object sender, EventArgs e)
        {
        //tekrar bak. http object requestle textaredaki inputu alma.->  string a=Request.Form["inputName"];
        String categoryID = sel1.Value;
        String reviewedBy = Select2.Value;

        int reviewed_by = 0;
        int categoryId = 0;
        int review_id = 0;
        if (reviewedBy == "Buyer")
        {
            reviewed_by = 0;
        }
        else if (reviewedBy == "Seller")
        {
            reviewed_by = 1;
        }

        if (categoryID == "Computer")
        {
            categoryId = 1;
        }
        else if (categoryID == "Cars")
        {
            categoryId = 2;

        }
        else if (categoryID == "Headphones")
        {
            categoryId = 3;

        }
        else if (categoryID == "Networking")
        {
            categoryId = 4;

        }
        else if (categoryID == "Phones")
        {
            categoryId = 5;

        }
        else if (categoryID == "Printers")
        {
            categoryId = 6;

        }
        else if (categoryID == "Softwares")
        {
            categoryId = 7;

        }
        else if (categoryID == "TVs")
        {
            categoryId = 8;

        }
        else if (categoryID == "Home Entertainment")
        {
            categoryId = 9;

        }
        else if (categoryID == "Wearable Tech")
        {
            categoryId = 10;

        }
        MySql.Data.MySqlClient.MySqlConnection Con = new MySql.Data.MySqlClient.MySqlConnection("server=localhost;database=mydb;uid=root; password=Berkay35.");
        Con.Open();
        MySqlCommand cmd = new MySqlCommand();
        cmd.Connection = Con;
        cmd.CommandText = "select user_id from user where email = @email";
        cmd.Parameters.AddWithValue("@email", inputEmail.Text); //buyer ,
        
        var queryResult = cmd.ExecuteScalar();
        int buyer_id = Convert.ToInt32(queryResult);
        cmd.CommandText = "select user_id from user where email = @email2";
        cmd.Parameters.AddWithValue("@email2", inputOtherEmail.Text); //sellera yapılan yorum. ,
        queryResult = cmd.ExecuteScalar();
        int seller_id = Convert.ToInt32(queryResult);

        //review id
        //getting last id of user id to insert new review id plus+max.
        cmd.CommandText = "  from reviews_and_ratings";
        queryResult = cmd.ExecuteScalar();
        if(queryResult!=DBNull.Value)
        {
            review_id = Convert.ToInt32(queryResult) + 1;

        }

        else
        {
            review_id = 1;
        }




        LabelWarning.Text = BLLUser.InsertReview(new Review { category_id = categoryId,reviewed_by= reviewed_by, buyer_id = buyer_id, title = inputTitle.Text, description =inputDescription.Text, review_id = review_id, seller_id = seller_id });
        Response.Redirect("HomePage.aspx");

    }
}
