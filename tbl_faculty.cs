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
    
    public partial class tbl_faculty
    {
        public tbl_faculty()
        {
            this.tbl_courseAllocation = new HashSet<tbl_courseAllocation>();
            this.tbl_teach = new HashSet<tbl_teach>();
        }
    
        public int FacultyID { get; set; }
        public string FacultyFullName { get; set; }
        public string FacultyEmail { get; set; }
        public string FacultyPassword { get; set; }
        public string FacultyPhone { get; set; }
        public string FacultyDesignation { get; set; }
        public string FacultyGender { get; set; }
    
        public virtual ICollection<tbl_courseAllocation> tbl_courseAllocation { get; set; }
        public virtual ICollection<tbl_teach> tbl_teach { get; set; }
    }
}
