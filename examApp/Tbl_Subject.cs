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
    
    public partial class Tbl_Subject
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_Subject()
        {
            this.Tbl_chapter = new HashSet<Tbl_chapter>();
        }
    
        public int Subject_ID { get; set; }
        public string Name_Ar { get; set; }
        public string Name_Er { get; set; }
        public int Department_ID { get; set; }
        public int Prof_ID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_chapter> Tbl_chapter { get; set; }
        public virtual Tbl_department Tbl_department { get; set; }
        public virtual Tbl_Prof Tbl_Prof { get; set; }
    }
}