using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;

namespace ATMS.Views.Admin.Initials
{
    public partial class ShowTimeTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            GetAllAllocations();
        }
        public void GetAllAllocations()
        {
            using (ATMSEntities dbobj = new ATMSEntities())
            {
                DGVShowtimetable.DataSource = (from t1 in dbobj.tbl_courseAllocation select new { t1.AllocationID,t1.tbl_class.ClassId, t1.tbl_faculty.FacultyFullName,t1.Day,t1.StartHour,t1.tbl_subjects.SubjectName }).ToList();
                DGVShowtimetable.DataBind();
            }
        }

        protected void DGVShowtimetable_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "RemoveItem")
            {
                int Allocationid = Convert.ToInt32(e.CommandArgument);
                using (ATMSEntities dbobj = new ATMSEntities())
                {
                    tbl_courseAllocation tb = dbobj.tbl_courseAllocation.Single(n => n.AllocationID == Allocationid);
                    //dbobj.tbl_courseAllocation.RemoveRange(dbobj.tbl_courseAllocation.Where(x => x.AllocationID == Allocationid));
                    dbobj.deletecourseallocations(Allocationid);
                    dbobj.SaveChanges();
                    
                }
                GetAllAllocations();
            }
        }

        protected void DGVShowtimetable_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void DGVShowtimetable_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Admin/Initials/TimeTableAllocation.aspx");
        }
    }
}