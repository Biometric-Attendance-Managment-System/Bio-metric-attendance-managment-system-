//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ATMS.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_teach
    {
        public int TeachID { get; set; }
        public int FacultyID { get; set; }
        public int SubjectID { get; set; }
    
        public virtual tbl_faculty tbl_faculty { get; set; }
        public virtual tbl_subjects tbl_subjects { get; set; }
    }
}