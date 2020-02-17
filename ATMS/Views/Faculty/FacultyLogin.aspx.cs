using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Faculty
{
    public partial class FacultyLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
             using(ATMSEntities obj=new ATMSEntities())
           {
               var a = obj.FacultyLogin(txt_email.Text, txt_pass.Text).ToList();
                   if(a.Count>0)
                       {
                         Session["FacultyEmail"]=a[0].FacultyEmail;
                       Response.Redirect("FacultyDashBoard.aspx");

                       }
                   else
                   {
                       Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "abc", "alertfunc();", true);
                   }
           }

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultySignUp.aspx");
        }
    }
}