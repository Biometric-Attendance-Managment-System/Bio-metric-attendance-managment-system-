using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;
namespace ATMS.Views.Admin
{
    public partial class AdminSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Request.QueryString["uid"] != null)
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    int id = Convert.ToInt32(Request.QueryString["uid"]);
                    tbl_admins tb = obj.tbl_admins.FirstOrDefault(n => n.AdminID == id);
                    txt_first_name.Text = tb.AdminFirstName;
                    txt_last_name.Text = tb.AdminLastName;
                    txt_email.Text = tb.AdminEmail;
                    txt_phone.Text = tb.AdminPhone;
                    txt_designation.Text = tb.AdminDesignation;

                }
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["uid"] != null)
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    int id = Convert.ToInt32(Request.QueryString["uid"]);
                    tbl_admins tb = obj.tbl_admins.FirstOrDefault(n => n.AdminID == id);
                    tb.AdminFirstName = txt_first_name.Text;
                    tb.AdminLastName = txt_last_name.Text;
                    tb.AdminEmail = txt_email.Text;
                    tb.AdminPassword = txt_pass.Text;

                    tb.AdminPhone = txt_phone.Text;
                    tb.AdminDesignation = txt_designation.Text;
                    if (btn_radio_male.Checked)
                    {
                        tb.AdminGender = true;

                    }
                    else if (btn_radio_female.Checked)
                    {
                        tb.AdminGender = false;
                    }
                    obj.SaveChanges();


                }
                
            }
            else
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    tbl_admins tb = new tbl_admins();
                    tb.AdminFirstName = txt_first_name.Text;
                    tb.AdminLastName = txt_last_name.Text;
                    tb.AdminEmail = txt_email.Text;
                    tb.AdminPassword = txt_pass.Text;
                    tb.AdminPhone = txt_phone.Text;
                    tb.AdminDesignation = txt_designation.Text;
                    if (btn_radio_male.Checked)
                    {
                        tb.AdminGender = true;
                    }
                    else if (btn_radio_female.Checked)
                    {
                        tb.AdminGender = false;
                    }
                    obj.tbl_admins.Add(tb);
                    obj.SaveChanges();
                }
               
            }
            Response.Redirect("AdminLogin.aspx");
        }

       

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}