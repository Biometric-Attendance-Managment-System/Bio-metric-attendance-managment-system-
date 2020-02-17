using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Admin.Initials
{
    public partial class Sessions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            getallsessions();
        }

        protected void DGVSession_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditItem")
            {
                //Response.Redirect("addNewCourse.aspx?cid="+e.CommandArgument);
                using (ATMSEntities db = new ATMSEntities())
                {
                    Session["SessionIdForUpdate"] = Convert.ToInt32(e.CommandArgument);
                    int SessionID = Convert.ToInt32(e.CommandArgument);
                    tbl_sessions C = db.tbl_sessions.Single(m => m.SessionID == SessionID);
                    update_txt_session_name.Text = C.SessionName.ToString();
                    //update_txt_course_code.Text = C.CourseCode.ToString();
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "openModelUpdte();", true);
            }
            else if (e.CommandName == "RemoveItem")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                using (ATMSEntities obj = new ATMSEntities())
                {
                    tbl_sessions tb = obj.tbl_sessions.Single(n => n.SessionID == id);
                    obj.tbl_sessions.Remove(tb);
                    obj.SaveChanges();


                }
                getallsessions();
            }

        }

        protected void DGVSession_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void DGVSession_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            using (ATMSEntities obj = new ATMSEntities())
            {
                tbl_sessions tb = new tbl_sessions();
                tb.SessionName = txt_session_name.Text;
                //tb.CourseCode = txt_course_code.Text;
                obj.tbl_sessions.Add(tb);
                obj.SaveChanges();
            }


            getallsessions();
        }

        protected void btn_update_session_Click(object sender, EventArgs e)
        {
            int pid = Convert.ToInt32(Session["SessionIdForUpdate"]);
            using (ATMSEntities dbobj = new ATMSEntities())
            {
                tbl_sessions tbp = dbobj.tbl_sessions.FirstOrDefault(x => x.SessionID == pid);
                {
                    tbp.SessionName = update_txt_session_name.Text;
                    dbobj.SaveChanges();

                }
            }
            getallsessions();

        }
        public void getallsessions()
        {
            using(ATMSEntities obj=new ATMSEntities())
            {
                var query = obj.GetAllSession().ToList();
                DGVSession.DataSource = query;
                DGVSession.DataBind();

            }
        }
    }
}