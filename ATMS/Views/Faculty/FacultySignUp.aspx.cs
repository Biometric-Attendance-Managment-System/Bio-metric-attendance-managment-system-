using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Faculty
{
    public partial class FacultySignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Request.QueryString["uid"] != null)
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    int id = Convert.ToInt32(Request.QueryString["uid"]);
                    tbl_faculty tb = obj.tbl_faculty.FirstOrDefault(n => n.FacultyID == id);
                    txt_first_name.Text = tb.FacultyFullName;
                   
                    txt_email.Text = tb.FacultyEmail;
                    txt_phone.Text = tb.FacultyPhone;
                    txt_designation.Text = tb.FacultyDesignation;

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
                    tbl_faculty tb = obj.tbl_faculty.FirstOrDefault(n => n.FacultyID == id);
                    tb.FacultyFullName = txt_first_name.Text;
                   
                    tb.FacultyEmail = txt_email.Text;
                    tb.FacultyPassword = txt_pass.Text;

                    tb.FacultyPhone = txt_phone.Text;
                    tb.FacultyDesignation = txt_designation.Text;
                    if (btn_radio_male.Checked)
                    {
                        tb.FacultyGender = "male";

                    }
                    else if (btn_radio_female.Checked)
                    {
                        tb.FacultyGender = "female";
                    }
                    obj.SaveChanges();


                }
            }
            else
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    tbl_faculty tb = new tbl_faculty();
                    tb.FacultyFullName = txt_first_name.Text;
                    
                    tb.FacultyEmail = txt_email.Text;
                    tb.FacultyPassword = txt_pass.Text;
                    tb.FacultyPhone = txt_phone.Text;
                    tb.FacultyDesignation = txt_designation.Text;
                    if (btn_radio_male.Checked)
                    {
                        tb.FacultyGender = "male";
                    }
                    else if (btn_radio_female.Checked)
                    {
                        tb.FacultyGender = "female";
                    }
                    obj.tbl_faculty.Add(tb);
                    obj.SaveChanges();

                }
               
            }
            Response.Redirect("~/Login.aspx");
            
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}