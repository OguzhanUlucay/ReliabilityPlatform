using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FacadeLayer
{
    public class Connection
    {
        //public static string MyConnectionString=("server=localhost;database=mydb;Trusted_Connection=true;");
        public static readonly MySql.Data.MySqlClient.MySqlConnection Con = new MySql.Data.MySqlClient.MySqlConnection("server=localhost;database=mydb;uid=root; password=4147");
    }

}
