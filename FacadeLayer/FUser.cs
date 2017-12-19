using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using System.Data;
using MySql.Data.MySqlClient;

namespace FacadeLayer
{
    public class FUser
    {
        public static DataTable SelectData()
        {
            //sorgular

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = Connection.Con;
            cmd.CommandText = "select * from user";
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
            cmd.CommandText = "select * from categories";
            MySqlDataAdapter adptr = new MySqlDataAdapter();
            adptr.SelectCommand = cmd;
            DataTable dtSelect = new DataTable();
            adptr.Fill(dtSelect);
            return dtSelect;
        }
        public static DataTable SelectUserData()
        {
            //sorgular

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = Connection.Con;
            cmd.CommandText = "select * from userdata";
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
            cmd.CommandText = "select * from adress";
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
            cmd.CommandText = "select * from enterprise_info";
            MySqlDataAdapter adptr = new MySqlDataAdapter();
            adptr.SelectCommand = cmd;
            DataTable dtSelect = new DataTable();
            adptr.Fill(dtSelect);
            return dtSelect;
        }

        public static void Insert(EUser user)
        {
            string sqlQuery = "INSERT INTO user (name,surname,ssn,phone,email,birthdate) VALUES('" + user.name + "','" + user.surname + "','" + user.ssn + "','" +user.phone + "','" +user.email + "','"+user.birthdate+ "')";
            MySqlCommand cmd = new MySqlCommand(sqlQuery, Connection.Con);
            if (Connection.Con.State == ConnectionState.Closed)
            {
                Connection.Con.Open();
            }
            cmd.ExecuteNonQuery();
            Connection.Con.Close();
        }
        public static void InsertEnterprise(EnterpriseUser user)
        {
            string sqlQuery = "INSERT INTO enterprise_info (info_id,adress_id,tax_no,corporation_title) VALUES('" + user.info_id + "','" + user.adress_id + "','" + user.tax_no + "','" + user.corporation_title +"')";
            MySqlCommand cmd = new MySqlCommand(sqlQuery, Connection.Con);
            if (Connection.Con.State == ConnectionState.Closed)
            {
                Connection.Con.Open();
            }
            cmd.ExecuteNonQuery();
            Connection.Con.Close();
            
        }
        public static void InsertEnterpriseAdress(EnterpriseUserAdress user)
        {
            string sqlQuery = "INSERT INTO adress (adress_id,city,district,neighbourhood,building_name,zip_code) VALUES('" + user.adress_id + "','" + user.city + "','" + user.district + "','" + user.neighbourhood +  "','" + user.building_name + "','" + user.zip_code +"')";
            MySqlCommand cmd = new MySqlCommand(sqlQuery, Connection.Con);
            if (Connection.Con.State == ConnectionState.Closed)
            {
                Connection.Con.Open();
            }
            cmd.ExecuteNonQuery();
            Connection.Con.Close();

        }
        public static void InsertLogin(UserLogin user)
        {
            string sqlQuery = "INSERT INTO userdata (email,password) VALUES('" + user.email + "','" + user.password  +"')";
            MySqlCommand cmd = new MySqlCommand(sqlQuery, Connection.Con);
            if (Connection.Con.State == ConnectionState.Closed)
            {
                Connection.Con.Open();
            }
            cmd.ExecuteNonQuery();
            Connection.Con.Close();

        }
        public static void InsertReview(Review user)
        {
            string sqlQuery = "INSERT INTO reviews_and_ratings (category_id,buyer_id,title,description,review_id,seller_id,reviewed_by) VALUES('" + user.category_id + "','" + user.buyer_id + "','" + user.title + "','" + user.description + "','" + user.review_id + "','" + user.seller_id + "','" + user.reviewed_by + "')";
            MySqlCommand cmd = new MySqlCommand(sqlQuery, Connection.Con);
            if (Connection.Con.State == ConnectionState.Closed)
            {
                Connection.Con.Open();
            }
            cmd.ExecuteNonQuery();
            Connection.Con.Close();

        }

        public static void InsertImage(EImage image)
        {
            string sqlQuery = "INSERT INTO images (image, name) VALUES('" + image.image + "','" + image.name + "')";
            MySqlCommand cmd = new MySqlCommand(sqlQuery, Connection.Con);
            if (Connection.Con.State == ConnectionState.Closed)
            {
                Connection.Con.Open();
            }
            cmd.ExecuteNonQuery();
            Connection.Con.Close();

        }
        public static DataTable GetImages()
        {
            DataTable dt = new DataTable();
            MySqlDataAdapter adpt = new MySqlDataAdapter();

            string sqlQuery = "SELECT * FROM images";

            MySqlCommand cmd = new MySqlCommand(sqlQuery, Connection.Con);

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
