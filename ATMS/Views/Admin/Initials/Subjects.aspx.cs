using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Admin.Initials
{
    public partial class Subjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            getallsubjects();
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["cid"] != null)
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    int cid = Convert.ToInt32(Request.QueryString["cid"]);
                    tbl_subjects tb = obj.tbl_subjects.FirstOrDefault(n => n.SubjectID == cid);
                    tb.SubjectName = txt_subject_name.Text;
                    tb.SubjectCode = txt_subject_code.Text;
                    obj.SaveChanges();
                }
            }
            else
            {
                using (ATMSEntities obj = new ATMSEntities())
                {
                    tbl_subjects tb = new tbl_subjects();
                    tb.SubjectName = txt_subject_name.Text;
                    tb.SubjectCode = txt_subject_code.Text;
                    obj.tbl_subjects.Add(tb);
                    obj.SaveChanges();
                }

            }
            getallsubjects();


        }

        protected void btn_update_subject_Click(object sender, EventArgs e)
        {
            int pid = Convert.ToInt32(Session["SubjectIdForUpdate"]);
            using (ATMSEntities dbobj = new ATMSEntities())
            {
                tbl_subjects tbp = dbobj.tbl_subjects.FirstOrDefault(x => x.SubjectID == pid);
                {
                    tbp.SubjectName = update_txt_subject_name.Text;
                    tbp.SubjectCode = update_txt_subject_code.Text;
                    dbobj.SaveChanges();

                }
            }
            getallsubjects();
        }

        protected void DGVSubjects_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditItem")
            {
                //Response.Redirect("addNewCourse.aspx?cid="+e.CommandArgument);
                using (ATMSEntities db = new ATMSEntities())
                {
                    Session["SubjectIdForUpdate"] = Convert.ToInt32(e.CommandArgument);
                    int subjectID = Convert.ToInt32(e.CommandArgument);
                    tbl_subjects C = db.tbl_subjects.Single(m => m.SubjectID == subjectID);
                    update_txt_subject_name.Text = C.SubjectName.ToString();
                    update_txt_subject_code.Text = C.SubjectCode.ToString();
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "openModelUpdte();", true);
            }
            else if (e.CommandName == "RemoveItem")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                using (ATMSEntities obj = new ATMSEntities())
                {
                    tbl_subjects tb = obj.tbl_subjects.Single(n => n.SubjectID == id);
                    obj.tbl_subjects.Remove(tb);
                    obj.SaveChanges();


                }
                getallsubjects();
            }

        }
        public void getallsubjects()
        {
            using (ATMSEntities obj = new ATMSEntities())
            {
                var a = obj.getallsubjectss().ToList();
                DGVSubjects.DataSource = a;
                DGVSubjects.DataBind();
            }
        }

        protected void DGVSubjects_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void DGVSubjects_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}