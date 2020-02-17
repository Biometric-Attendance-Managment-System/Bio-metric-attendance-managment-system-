using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_admin_Click(object sender, EventArgs e)
        {
            try
            {
                using (ATMSEntities db = new ATMSEntities())
                {
                    var QueryReturn = db.DoLogin(UserName.Text.ToString(), txt_password.Text.ToString()).ToList();
                    if (QueryReturn.Count > 0)
                    {
                        foreach (var item in QueryReturn)
                        {
                            Session["UserId"] = item.UserId.ToString();
                            Session["Name"] = item.Name.ToString();
                            Session["UserName"] = item.UserName.ToString();
                            Session["Role"] = item.RoleName.ToString();
                            break;
                        }

                        if (Session["Role"].ToString() == "Admin")
                        {
                            Response.Redirect("~/Views/Admin/adminDashboars.aspx");
                        }
                        else if (Session["Role"].ToString() == "Feculty")
                        {
                            Response.Redirect("~/Views/Faculty/FacultyDashBoard.aspx");    
                        }
                        else if (Session["Role"].ToString() == "Student")
                        {
                            Response.Redirect("~/Views/Students/StudentDashBoard.aspx");    
                        }
                        else
                        {
                            Response.Redirect("Login.aspx");    
                        }
                    }
                    else
                    {
                        //Page.ClientScript.RegisterStartupScript(this.GetType(), "", "alertfunc();", true);
                    }

                }
            }
            catch (Exception exp)
            {
                Response.Write(exp.Message);
            }
        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {

        }
    }
}