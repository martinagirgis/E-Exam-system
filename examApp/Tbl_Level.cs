//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace examApp
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tbl_Level
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_Level()
        {
            this.Tbl_department = new HashSet<Tbl_department>();
        }
    
        public int Level_ID { get; set; }
        public string Name_Ar { get; set; }
        public string Name_Er { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_department> Tbl_department { get; set; }
    }
}
