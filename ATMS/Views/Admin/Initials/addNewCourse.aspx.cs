using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Admin.Initials
{
    public partial class addNewCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if(Request.QueryString["cid"]!=null)
            {
                using(ATMSEntities obj=new ATMSEntities())
                {
                    int cid = Convert.ToInt32(Request.QueryString["cid"]);
                    tbl_courses tb = obj.tbl_courses.FirstOrDefault(n => n.CourseID == cid);
                    txt_course_name.Text = tb.CourseName;
                  //  txt_course_code.Text = tb.CourseCode;
                }
            }
            GetAllCources();

        }

        protected void DGVCourse_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="EditItem")
            {
                //Response.Redirect("addNewCourse.aspx?cid="+e.CommandArgument);
                using (ATMSEntities db = new ATMSEntities())
                {
                    Session["CourseIdForUpdate"] = Convert.ToInt32(e.CommandArgument);
                    int courseID = Convert.ToInt32(e.CommandArgument);
                    tbl_courses C = db.tbl_courses.Single(m => m.CourseID == courseID);
                    update_txt_course_name.Text = C.CourseName.ToString();
                    //update_txt_course_code.Text = C.CourseCode.ToString();
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "openModelUpdte();", true);
            }
            else if (e.CommandName == "RemoveItem")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                using(ATMSEntities obj =new ATMSEntities())
                {
                    tbl_courses tb = obj.tbl_courses.Single(n => n.CourseID == id);
                    obj.tbl_courses.Remove(tb);
                    obj.SaveChanges();

                    
                }
                GetAllCources();
            }

        }
         

        protected void GetAllCources()
        {
            using (ATMSEntities obj = new ATMSEntities())
            {
                var a=obj.getcourcesall().ToList();
                DGVCourse.DataSource = a;
                DGVCourse.DataBind();
            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["cid"] != null)
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    int cid = Convert.ToInt32(Request.QueryString["cid"]);
                    tbl_courses tb = obj.tbl_courses.FirstOrDefault(n => n.CourseID == cid);
                    tb.CourseName = txt_course_name.Text;
                    //tb.CourseCode = txt_course_code.Text;
                    obj.SaveChanges();
                }
            }
            else
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    tbl_courses tb = new tbl_courses();
                    tb.CourseName = txt_course_name.Text;
                    //tb.CourseCode = txt_course_code.Text;
                    obj.tbl_courses.Add(tb);
                    obj.SaveChanges();
                }

            }
            GetAllCources();

                       
        }

        protected void btn_update_course_Click(object sender, EventArgs e)
        {
            int pid = Convert.ToInt32(Session["CourseIdForUpdate"]);
            using (ATMSEntities dbobj = new ATMSEntities())
            {
                tbl_courses tbp = dbobj.tbl_courses.FirstOrDefault(x => x.CourseID == pid);
                {
                    tbp.CourseName = update_txt_course_name.Text;
                    dbobj.SaveChanges();

                }
            }
            GetAllCources();
        }

        protected void DGVCourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void DGVCourse_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}