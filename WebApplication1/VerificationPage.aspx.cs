using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;
using System.Data;
using System.Configuration;
using EntityLayer;
using BLL;


namespace WebApplication1
{
    public partial class VerificationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!ImageUpload.HasFile)
            {
                label_error.Visible = true;
                label_error.InnerText = "Please Select Image File";
            }
            else
            {
                string filename = ImageUpload.PostedFile.FileName;
                int length = ImageUpload.PostedFile.ContentLength;
                byte[] pic = new byte[length];

                ImageUpload.PostedFile.InputStream.Read(pic, 0, length);
                
                try
                {
                    string warning;
                    warning = BLLUser.InsertImage(new EImage { image = pic, name = filename });
                    
                }
                catch (Exception ex)
                {
                    label_error.Visible = true;
                    label_error.InnerText = "Hata Oluştu: " + ex.Message.ToString();
                }



            }
            
        }
        protected void getImages(object sender, EventArgs e)
        {
            gvImages.DataSource = BLLUser.GetImage();
            gvImages.DataBind();
        }
    }
}