using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Admin.Initials
{
    public partial class Semeters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            getallsemesters();
        }

        protected void DGVSemester_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditItem")
            {
                //Response.Redirect("addNewCourse.aspx?cid="+e.CommandArgument);
                using (ATMSEntities db = new ATMSEntities())
                {
                    Session["SemesterIdForUpdate"] = Convert.ToInt32(e.CommandArgument);
                    int SemesterID = Convert.ToInt32(e.CommandArgument);
                    tbl_semester C = db.tbl_semester.Single(m => m.SemesterID == SemesterID);
                    update_txt_smstr_name.Text = C.SemesterName.ToString();
                    //update_txt_course_code.Text = C.CourseCode.ToString();
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "openModelUpdte();", true);
            }
            else if (e.CommandName == "RemoveItem")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                using (ATMSEntities obj = new ATMSEntities())
                {
                    tbl_semester tb = obj.tbl_semester.Single(n => n.SemesterID == id);
                    obj.tbl_semester.Remove(tb);
                    obj.SaveChanges();


                }
                getallsemesters();
            }

        }

        protected void DGVSemester_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void DGVSemester_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            using (ATMSEntities obj = new ATMSEntities())
            {
                tbl_semester tb = new tbl_semester();
                tb.SemesterName = txt_smstr_name.Text;
                //tb.CourseCode = txt_course_code.Text;
                obj.tbl_semester.Add(tb);
                obj.SaveChanges();
            }


            getallsemesters();
              
        }

        protected void btn_update_course_Click(object sender, EventArgs e)
        {
            int pid = Convert.ToInt32(Session["SemesterIdForUpdate"]);
            using (ATMSEntities dbobj = new ATMSEntities())
            {
                tbl_semester tbp = dbobj.tbl_semester.FirstOrDefault(x => x.SemesterID == pid);
                {
                    tbp.SemesterName = update_txt_smstr_name.Text;
                    dbobj.SaveChanges();

                }
            }
            getallsemesters();

        }
        public void getallsemesters()
        {
            using(ATMSEntities obj=new ATMSEntities())
            {
                var query = obj.getallsemesters().ToList();
                DGVSemester.DataSource = query;
                DGVSemester.DataBind();
            }
        }

       
    }
}