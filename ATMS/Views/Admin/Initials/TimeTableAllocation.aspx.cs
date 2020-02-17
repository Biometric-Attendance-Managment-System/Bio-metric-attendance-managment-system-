using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;


namespace ATMS.Views.Admin.Initials
{
    public partial class TimeTableAllocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            using (ATMSEntities db = new ATMSEntities())
            {
                DDL_CLasses.DataSource = db.tbl_class.Select(c => c.ClassId).ToList();
                DDL_CLasses.DataBind();

                DDL_Subjects.DataSource = db.tbl_subjects.Select(n => n.SubjectName).ToList();
                DDL_Subjects.DataBind();

                FillTeachersDropDown(db.tbl_subjects.FirstOrDefault(s => s.SubjectName == DDL_Subjects.SelectedItem.Text).SubjectID);
            }

        }

        private void FillTeachersDropDown(int sid)
        {
             using(ATMSEntities db=new ATMSEntities())
            {
                DDL_Teachers.Items.Clear();
                foreach( tbl_faculty facultiy in db.tbl_teach.Where(t=> t.SubjectID==sid).Select(t=>t.tbl_faculty))
                {
                    ListItem i = new ListItem(facultiy.FacultyFullName,facultiy.FacultyID.ToString());
                    DDL_Teachers.Items.Add(i);
                }
        
            }
            
        }

        protected void DDL_Subjects_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (ATMSEntities db = new ATMSEntities())
            {
                FillTeachersDropDown(db.tbl_subjects.FirstOrDefault(s => s.SubjectName == DDL_Subjects.SelectedItem.Text).SubjectID);
            }
        }

        protected void btn_allocate_Click(object sender, EventArgs e)
        {
            using(ATMSEntities db=new ATMSEntities())
            {
                double hour=Convert.ToDouble(DDL_Time.SelectedValue);
                int fid = Convert.ToInt32(DDL_Teachers.SelectedValue);
                tbl_courseAllocation ta = db.tbl_courseAllocation.FirstOrDefault(t => (t.Day == DDL_Day.SelectedItem.Text && t.StartHour == hour && t.FacultyId == fid) ||  (t.Day == DDL_Day.SelectedItem.Text && t.StartHour == hour && t.ClassId == DDL_CLasses.SelectedItem.Text));

                if(ta==null)
                {
                    ta = new tbl_courseAllocation();
                    ta.ClassId = DDL_CLasses.SelectedItem.Text;
                    ta.Day = DDL_Day.SelectedItem.Text;
                    ta.StartHour = hour;
                    ta.FacultyId =  Convert.ToInt32(DDL_Teachers.SelectedValue);
                    ta.SubjectId = db.tbl_subjects.FirstOrDefault(s => s.SubjectName == DDL_Subjects.SelectedItem.Text).SubjectID;

                    db.tbl_courseAllocation.Add(ta);
                    db.SaveChanges();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "xyz", "alert('Time Period not free')", true);
                }
            }
        }
    }
}