using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EUser
    {
        public int user_id { get; set; }
        public int info_id { get; set; }
        public string name { get; set; }
        public string surname { get; set; }
        public string ssn { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string birthdate { get; set; }

    }
    public class EnterpriseUser
    {
        public int info_id { get; set; }
        public int adress_id { get; set; }
        public string tax_no { get; set; }
        public string corporation_title { get; set; }

    }
    public class EnterpriseUserAdress
    {
        public int adress_id { get; set; }
        public string city { get; set; }
        public string district { get; set; }
        public string neighbourhood { get; set; }
        public string building_name { get; set; }
        public string zip_code { get; set; }


    }
}
