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
    
    public partial class Tbl_ExamStructure
    {
        public int Exam_ID { get; set; }
        public int Num_Ques_Mcq_A { get; set; }
        public int Num_Ques_Mcq_B { get; set; }
        public int Num_Ques_Mcq_C { get; set; }
        public int Num_Ques_TF_A { get; set; }
        public int Num_Ques_TF_B { get; set; }
        public int Num_Ques_TF_C { get; set; }
        public int Chapter_ID { get; set; }
    
        public virtual Tbl_chapter Tbl_chapter { get; set; }
    }
}
