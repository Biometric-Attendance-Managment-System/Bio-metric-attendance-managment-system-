using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMS.Models;
using System.Data.Entity;


namespace ATMS.Views.Admin.Initials
{
    public partial class addNewProgram : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(IsPostBack)
            {
                GetAllPrograms();
            }
                
            
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            using (ATMSEntities obj = new ATMSEntities())
            {
                tbl_programme tb = new tbl_programme();
                tb.ProgrammeName = txt_program_name.Text;
                obj.tbl_programme.Add(tb);
                obj.SaveChanges();
            }
        }

        public void GetAllPrograms()
        {
            using(ATMSEntities dbobj = new ATMSEntities())
            {
                DGVPrograms.DataSource = (from t1 in dbobj.tbl_programme select new { t1.ProgrammeID, t1.ProgrammeName }).ToList();
                DGVPrograms.DataBind();
            }
        }

        protected void DGVPrograms_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow grv = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
            int RowIndex = grv.RowIndex;
            if (e.CommandName =="EditItem")
            {
                Session["ProgramIdForUpdate"] = Convert.ToInt32(e.CommandArgument);
                Uptxt_program_name.Text = DGVPrograms.Rows[RowIndex].Cells[1].Text;
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "$(function () {$('#ProgramUpdateModel').modal('show');});",true);
            }
            else if (e.CommandName == "RemoveItem")
            {
                using (ATMSEntities dbobj = new ATMSEntities())
                {
                    int Programid = Convert.ToInt32(e.CommandArgument);
                    dbobj.tbl_programme.RemoveRange(dbobj.tbl_programme.Where(x => x.ProgrammeID == Programid));
                    dbobj.SaveChanges();
                    GetAllPrograms();
                }
            }
        }

        protected void btn_updateProgram_Click(object sender, EventArgs e)
        {
            int pid = Convert.ToInt32(Session["ProgramIdForUpdate"]);
            using (ATMSEntities dbobj = new ATMSEntities())
            {
                tbl_programme tbp = dbobj.tbl_programme.FirstOrDefault(x => x.ProgrammeID == pid);
                {
                    tbp.ProgrammeName = Uptxt_program_name.Text;
                    dbobj.SaveChanges();

                }
            }
            GetAllPrograms();
        }
    }
}