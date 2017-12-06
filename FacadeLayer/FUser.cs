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

    }
}
