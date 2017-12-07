using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using BLL;

public partial class Registering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

         protected void ADD_NormalUser(object sender, EventArgs e)
        {
        //password ve email ,ayrıca yeni bir user_login tablosu olusturalarak oraya atılacak. 
        LabelWarning.Text = BLLUser.Insert(new EUser { info_id = 1, name = TextBoxUserName.Text, surname = TextBoxUserSurname.Text, ssn = TextBoxUserSSN.Text, birthdate = Convert.ToString(TextBoxUserBirthDate.Text), phone = TextBoxUserPhone.Text, email = TextBoxEmail.Text });
        }
         protected void ADD_EnterpriseUser(object sender, EventArgs e)
         {
        //Enterprise icin facade, entity, bll güncellenecek .
        //LabelWarning.Text = BLLUser.Insert(new EUser { info_id = 1, name = TextBoxUserName.Text, surname = TextBoxUserSurname.Text, ssn = TextBoxUserSSN.Text, birthdate = Convert.ToString(TextBoxUserBirthDate.Text), phone = TextBoxUserPhone.Text, email = TextBoxEmail.Text });
            }
}
