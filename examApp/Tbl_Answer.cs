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
    
    public partial class Tbl_Answer
    {
        public int Answer_ID { get; set; }
        public string Answer_Ar { get; set; }
        public string Answer_En { get; set; }
        public string Correct_Answer { get; set; }
        public int Question_ID { get; set; }
        public int Count { get; set; }
    
        public virtual Tbl_Question Tbl_Question { get; set; }
    }
}
