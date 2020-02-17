using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminSignUp.aspx");
        }

       

        
        

        protected void btn_login_admin_Click1(object sender, EventArgs e)
        {
            using (ATMSEntities obj = new ATMSEntities())
            {
                var a = obj.AdminLogin(txt_email.Text, txt_pass.Text).ToList();
                if (a.Count > 0)
                {
                    Session["AdminEmail"] = a[0].AdminEmail;
                   Response.Redirect("adminDashboars.aspx");

                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "abc", "alertfunc();", true);
                }
            }
        }
    }
}