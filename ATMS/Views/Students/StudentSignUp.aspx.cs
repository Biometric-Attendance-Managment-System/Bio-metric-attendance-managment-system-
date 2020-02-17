using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Students
{
    public partial class StudentSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return; 
            if(Request.QueryString["uid"]!=null)
            {
                using(ATMSEntities obj=new ATMSEntities())
                {
                    string id = Request.QueryString["uid"].ToString();
                    tbl_students tb = obj.tbl_students.FirstOrDefault(n => n.StudentID == id);
                    txt_first_name.Text = tb.StudentFirstName;
                    txt_last_name.Text = tb.StudentLastName;
                    txt_email.Text = tb.StudentEmail;
                    txt_phone.Text = tb.StudentPhone;
                    
                }
            }
            //loaddesignations();
            
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if(Request.QueryString["uid"]!=null)
            {  
                using (ATMSEntities obj = new ATMSEntities())
                {
                    string id = Request.QueryString["uid"].ToString();
                    tbl_students tb = obj.tbl_students.FirstOrDefault(n => n.StudentID == id);
                    tb.StudentFirstName = txt_first_name.Text;
                    tb.StudentLastName = txt_last_name.Text;
                    tb.StudentEmail = txt_email.Text;
                    tb.StudentPassword = txt_pass.Text;

                    tb.StudentPhone = txt_phone.Text;
                    if(btn_radio_male.Checked)
                    {
                        tb.StudentGender = "male";

                    }
                    else if(btn_radio_female.Checked)
                    {
                        tb.StudentGender = "female";
                    }
                    obj.SaveChanges();


                }
                //Response.Write(ddl_designations.SelectedValue.ToString());
            }
            else
            {

                using (ATMSEntities obj = new ATMSEntities())
                {
                    tbl_students tb = new tbl_students();
                    tb.StudentFirstName = txt_first_name.Text;
                    tb.StudentLastName = txt_last_name.Text;
                    tb.StudentEmail = txt_email.Text;
                    tb.StudentPassword = txt_pass.Text;
                    tb.StudentPhone = txt_phone.Text;
                    

                    if (btn_radio_male.Checked)
                    {
                        tb.StudentGender = "male";
                    }
                    else if (btn_radio_female.Checked)
                    {
                        tb.StudentGender = "female";
                    }
                    obj.tbl_students.Add(tb);
                    obj.SaveChanges();

                }
               
            }
            //Response.Write(ddl_designations.SelectedValue.ToString());  
            Response.Redirect("~/Login.aspx");

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
        //public void loaddesignations()
        //{
        //    using (ATMSEntities db = new ATMSEntities())
        //    {
        //        var queryreturn = (from data in db.tbl_designation select new { data.desId, data.Designation }).ToList();
        //        ddl_designations.DataSource = queryreturn;
        //        ddl_designations.DataTextField = "Designation";
        //        ddl_designations.DataValueField = "desId";
        //        ddl_designations.DataBind();


        //    }
        //}
    }
}