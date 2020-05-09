﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class StudentChoseExam : System.Web.UI.Page
    {
        
        
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //if(DateTime.Now.ToLongTimeString() => "7:25:00 PM")
                //{
                //    Button1.Enabled = true;
                //}
                var x = Request.QueryString["id"].ToString();
                int y = int.Parse(x);

                HyperLink4.NavigateUrl = "StudentChoseExam.aspx?id=" + x;
                HyperLink2.NavigateUrl = "StudentResult.aspx?id=" + x;

                Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == y);
                int z =int.Parse( rr.Department_ID.ToString());

                var stateid = from Tbl_Subject in db.Tbl_Subject where Tbl_Subject.Department_ID.Equals(z) select new { Tbl_Subject.Subject_ID, Tbl_Subject.Name_Er , Tbl_Subject.Name_Ar };
                var statename = stateid.ToList();
                if (statename.Count > 0)
                {
                    DropDownList2.DataValueField = "Subject_ID";
                    DropDownList2.DataTextField = "Name_Er";
                    DropDownList2.DataSource = statename;
                    DropDownList2.DataBind();
                    DropDownList2.Items.Insert(0, "--- select sub----");

                    DropDownList3.DataValueField = "Subject_ID";
                    DropDownList3.DataTextField = "Name_Ar";
                    DropDownList3.DataSource = statename;
                    DropDownList3.DataBind();
                    DropDownList3.Items.Insert(0, "---اختر المادة----");
                }
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ch = Convert.ToInt32(DropDownList2.SelectedValue);
            var stateid = from Tbl_chapter in db.Tbl_chapter where Tbl_chapter.Subject_ID.Equals(ch) select new { Tbl_chapter.Name_En, Tbl_chapter.Chapter_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList1.DataValueField = "Chapter_ID";
                DropDownList1.DataTextField = "Name_En";
                DropDownList1.DataSource = statename;
                DropDownList1.DataBind();
                //DropDownList1.Items.Insert(0, "--- select chapter ----");
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ch = Convert.ToInt32(DropDownList3.SelectedValue);
            var stateid = from Tbl_chapter in db.Tbl_chapter where Tbl_chapter.Subject_ID.Equals(ch) select new { Tbl_chapter.Name_Ar, Tbl_chapter.Chapter_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList4.DataValueField = "Chapter_ID";
                DropDownList4.DataTextField = "Name_Ar";
                DropDownList4.DataSource = statename;
                DropDownList4.DataBind();
                //DropDownList1.Items.Insert(0, "--- select chapter ----");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Response.Redirect("StudentExam.aspx?id="+DropDownList1.SelectedValue.ToString()+"&st="+y + "&lan=" + DropDownList6.SelectedValue.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Response.Redirect("StudentExam.aspx?id=" + DropDownList4.SelectedValue.ToString() + "&st=" + y + "&lan=" + DropDownList5.SelectedValue.ToString());
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}