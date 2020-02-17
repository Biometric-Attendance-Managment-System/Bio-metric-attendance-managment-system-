using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Students
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentSignUp.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            using (ATMSEntities obj = new ATMSEntities())
            {
                var a = obj.StudentLogin(txt_email.Text, txt_pass.Text).ToList();
                if (a.Count > 0)
                {
                    Session["StudentEmail"] = a[0].StudentEmail;
                    Response.Redirect("StudentDashBoard.aspx");

                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "abc", "alertfunc();", true);
                }
            }
        }
    }
}