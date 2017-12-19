using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using EntityLayer;
using FacadeLayer;
namespace BLL
{
    public class BLLUser
    {

        public static DataTable SelectData()
        {
            return FUser.SelectData();
        }
        public static DataTable SelectDataEnterprise()
        {
            return FUser.SelectDataEnterprise();
        }
        public static DataTable SelectUserAddress()
        {
            return FUser.SelectUserAddress();
        }

        public static DataTable SelectCategories()
        {
            return FUser.SelectCategories();
        }
        public static DataTable SelectUserData()
        {
            return FUser.SelectUserData();
        }
        public static string Insert(EUser user)
        {
            String[] errorMessages = new String[100];
            Boolean checkValidation = false;


            if (user.ssn.Length == 11)
            {
                checkValidation = true;
            }
            else
            {
                errorMessages[0] = " SSN length is must be equal -> 11";//String array error; error = ";//hata bilmem ne" her if icin hata atar.
                return errorMessages[0];
            }


            if (user.phone.Length == 11)
            {

            }
            else
            {
                errorMessages[1] = " Phone number is must be equal -> 11";//String array error; error = ";//hata bilmem ne" her if icin hata atar.
                return errorMessages[1];

            }


            if (checkValidation == true)
            {
                FUser.Insert(user);
                return "    SUCCESS ";

            }
            
            return ""; //return error array.

        }
        public static string InsertEnterprise(EnterpriseUser user)
        {
            //validations will add

            FUser.InsertEnterprise(user);
            return "";
        }
        public static string InsertEnterpriseAdress(EnterpriseUserAdress user)
        {
            //validations will add


            FUser.InsertEnterpriseAdress(user);
            return "";
        }
        public static string Login(UserLogin user)
        {
            //validations will add

            FUser.InsertLogin(user);
            return "";

        }
        public static string InsertReview(Review user)
        {
            //validations will add

            FUser.InsertReview(user);
            return "";

        }
        public static string InsertImage(EImage image)
        {

            FUser.InsertImage(image);
            return "";
        }


        public static DataTable GetImage()
        {
            return FUser.GetImages();

        }

    }
}
