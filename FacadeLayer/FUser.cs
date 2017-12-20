using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;
using System.Drawing;

namespace FacadeLayer
{
    public class FUser
    {
        public static DataTable SelectData()
        {
            //sorgular

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = Connection.Con;
            cmd.CommandText = "user"; //stored procedure as user.
            cmd.CommandType = CommandType.StoredProcedure;
            MySqlDataAdapter adptr = new MySqlDataAdapter();
            adptr.SelectCommand = cmd;
            DataTable dtSelect = new DataTable();
            adptr.Fill(dtSelect);
            return dtSelect;
        }
        public static DataTable SelectCategories()
        {
            //sorgular

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = Connection.Con;
            cmd.CommandText = "categories"; //stored procedure as categories.
            cmd.CommandType = CommandType.StoredProcedure;
            MySqlDataAdapter adptr = new MySqlDataAdapter();
            adptr.SelectCommand = cmd;
            DataTable dtSelect = new DataTable();
            adptr.Fill(dtSelect);
            return dtSelect;
        }
        public static DataTable SelectVerifications()
        {
            //sorgular
           
            //byte[] toBytes;
           
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = Connection.Con;
            // change this.
            cmd.CommandText = "verifications_and_images"; //stored procedure as user.
            cmd.CommandType = CommandType.StoredProcedure;
            MySqlDataAdapter adptr = new MySqlDataAdapter();
            adptr.SelectCommand = cmd;
            DataTable dtSelect = new DataTable();
            //var result=dtSelect.Rows;
            //var result_image = result[0][7];
           /* foreach (DataRow row in dtSelect.Rows)
            {
                string temp = row["image"].ToString();
                toBytes = Encoding.ASCII.GetBytes(temp);


            }
             result = byteArrayToImage(Convert.ToByteArray(result_image));
             byte[] image = Convert.ToByte(dtSelect.Rows[0]["image"]);
             */
            adptr.Fill(dtSelect);
            return dtSelect;
        }
        public Image byteArrayToImage(byte[] imgBytes)
        {
            using (MemoryStream imgStream = new MemoryStream(imgBytes))
            {
                return Image.FromStream(imgStream);
            }
        }
        public static DataTable SelectUserData()
        {
            //sorgular

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = Connection.Con;
            cmd.CommandText = "userdata"; //stored procedure as userdata.
            cmd.CommandType = CommandType.StoredProcedure;
            MySqlDataAdapter adptr = new MySqlDataAdapter();
            adptr.SelectCommand = cmd;
            DataTable dtSelect = new DataTable();
            adptr.Fill(dtSelect);
            return dtSelect;
        }
        public static DataTable SelectUserAddress()
        {
            //sorgular

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = Connection.Con;
            cmd.CommandText = "address"; //stored procedure as address.
            cmd.CommandType = CommandType.StoredProcedure;
            MySqlDataAdapter adptr = new MySqlDataAdapter();
            adptr.SelectCommand = cmd;
            DataTable dtSelect = new DataTable();
            adptr.Fill(dtSelect);
            return dtSelect;
        }
        public static DataTable SelectDataEnterprise()
        {
            //sorgular

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = Connection.Con;
            cmd.CommandText = "enterprise_info";
            MySqlDataAdapter adptr = new MySqlDataAdapter();
            adptr.SelectCommand = cmd;
            DataTable dtSelect = new DataTable();
            adptr.Fill(dtSelect);
            return dtSelect;
        }

        public static void Insert(EUser user)
        {

            MySqlCommand cmd = new MySqlCommand("insert_user", Connection.Con); 
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new MySqlParameter("Pname", user.name));
            cmd.Parameters.Add(new MySqlParameter("Psurname", user.surname));
            cmd.Parameters.Add(new MySqlParameter("Pssn", user.ssn));
            cmd.Parameters.Add(new MySqlParameter("Pphone", user.phone));
            cmd.Parameters.Add(new MySqlParameter("Pemail", user.email));
            cmd.Parameters.Add(new MySqlParameter("Pbirthdate", user.birthdate));


            cmd.Connection.Open();
            var result = cmd.ExecuteNonQuery();
            cmd.Connection.Close();

        }
        public static void InsertEnterprise(EnterpriseUser user)
        {
            MySqlCommand cmd = new MySqlCommand("insert_enterprise", Connection.Con); //stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            string SqlQuery= "select MAX(adress_id) from enterprise_info"; //change to the stored procedure.
            MySqlCommand cmdTemp = new MySqlCommand(SqlQuery, Connection.Con); //stored procedure
            cmdTemp.Connection.Open();

           
            var queryResult = cmdTemp.ExecuteScalar();
            int adress_id = Convert.ToInt32(queryResult) + 1;

            
            cmd.Parameters.Add(new MySqlParameter("Pinfo_id", user.info_id));
            cmd.Parameters.Add(new MySqlParameter("Padress_id", adress_id));
            cmd.Parameters.Add(new MySqlParameter("Ptax_no", user.tax_no));
            cmd.Parameters.Add(new MySqlParameter("Pcorporation_title", user.corporation_title));
           


            var result = cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            cmdTemp.Connection.Close();

        }
        public static void InsertEnterpriseAdress(EnterpriseUserAdress user)
        {
            MySqlCommand cmd = new MySqlCommand("insert_enterprise_adress", Connection.Con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new MySqlParameter("Pcity", user.city));
            cmd.Parameters.Add(new MySqlParameter("Pdistrict", user.district));
            cmd.Parameters.Add(new MySqlParameter("Pneighbourhood", user.neighbourhood));
            cmd.Parameters.Add(new MySqlParameter("Pbuilding_name", user.building_name));
            cmd.Parameters.Add(new MySqlParameter("Pzip_code", user.zip_code));


            cmd.Connection.Open();
            var result = cmd.ExecuteNonQuery();
            cmd.Connection.Close();

        }
        public static void InsertLogin(UserLogin user)
        {
            MySqlCommand cmd = new MySqlCommand("insert_user_data", Connection.Con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new MySqlParameter("Pemail", user.email));
            cmd.Parameters.Add(new MySqlParameter("Ppassword", user.password));
 

            cmd.Connection.Open();
            var result = cmd.ExecuteNonQuery();
            cmd.Connection.Close();

        }
        public static void InsertReview(Review user)
        {
            MySqlCommand cmd = new MySqlCommand("insert_review", Connection.Con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new MySqlParameter("Pcategory_id", user.category_id));
            cmd.Parameters.Add(new MySqlParameter("Pbuyer_id", user.buyer_id));
            cmd.Parameters.Add(new MySqlParameter("Ptitle", user.title));
            cmd.Parameters.Add(new MySqlParameter("Pdescription", user.description));
            cmd.Parameters.Add(new MySqlParameter("Preview_id", user.review_id));
            cmd.Parameters.Add(new MySqlParameter("Pseller_id", user.seller_id));
            cmd.Parameters.Add(new MySqlParameter("Previewed_by", user.reviewed_by));


            cmd.Connection.Open();
            var result = cmd.ExecuteNonQuery();
            cmd.Connection.Close();

        }

        public static void InsertImage(EImage image)
        {
            MySqlCommand cmd = new MySqlCommand("insert_image", Connection.Con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new MySqlParameter("Pimage", image.image));
            cmd.Parameters.Add(new MySqlParameter("Pname", image.name));
            cmd.Parameters.Add(new MySqlParameter("Puser_id", image.user_id));
            cmd.Connection.Open();
            var result = cmd.ExecuteNonQuery();
            cmd.Connection.Close();

        }
        public static DataTable GetImages()
        {
            DataTable dt = new DataTable();
            MySqlDataAdapter adpt = new MySqlDataAdapter();

            MySqlCommand cmd = new MySqlCommand("images", Connection.Con);


            adpt.SelectCommand = cmd;

            if (Connection.Con.State == ConnectionState.Closed)
            {
                Connection.Con.Open();
            }
            //MySqlDataReader reader = cmd.ExecuteReader();
            //reader.Read();

            //byte[] file = (byte[])reader["image"];

            //reader.Close();
            adpt.Fill(dt);

            Connection.Con.Close();
            return dt;
        }


    }
}
