using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Faculty
{
    public partial class FacultyDashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            getallfaculty();
        }

        protected void DGVCourse_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditItem")
            {
                Response.Redirect("FacultySignUp.aspx?uid=" + e.CommandArgument);
            }
            else if (e.CommandName == "RemoveItem")
            {
                var id = Convert.ToInt32(e.CommandArgument);
                using (ATMSEntities obj = new ATMSEntities())
                {
                    obj.Deletefaculty(id);
                }
                getallfaculty();
            }
        }
        protected void getallfaculty()
        {
            using (ATMSEntities obj = new ATMSEntities())
            {
                var a = obj.GetAllFaculty().ToList();
                DGVCourse.DataSource = a;
                DGVCourse.DataBind();
            }
        }


        protected void DGVCourse_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void DGVCourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void btn_go_back_dashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Admin/AdminDashboars.aspx");
        }
    }
}