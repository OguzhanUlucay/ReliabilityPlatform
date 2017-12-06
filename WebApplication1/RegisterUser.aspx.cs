using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using BLL;


public partial class RegisterUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void ButtonADD_Click(object sender, EventArgs e)
    {
        LabelWarning.Text = BLLUser.Insert(new EUser { info_id = 1, name = TextBoxUserName.Text, surname = TextBoxUserSurname.Text, ssn = TextBoxUserSSN.Text, birthdate = Convert.ToString(TextBoxUserBirthDate.Text), phone=TextBoxUserPhone.Text,email=TextBoxEmail.Text }) ;
    }
}
