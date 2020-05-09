using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class ProfAddChapters : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                var x = Request.QueryString["id"].ToString();
                int y = int.Parse(x);

                HyperLink1.NavigateUrl = "ProfAddQuestion.aspx?id=" + x;
                HyperLink2.NavigateUrl = "ProfEditChapters.aspx?id=" + x;
                HyperLink3.NavigateUrl = "ProfEditQuestion.aspx?id=" + x;
                HyperLink4.NavigateUrl = "ProfAddChapters.aspx?id=" + x;
                HyperLink6.NavigateUrl = "ProfShowResult.aspx?id=" + x;
                HyperLink7.NavigateUrl = "ProfExamStructure.aspx?id=" + x;

                var stateid = from Tbl_Subject in db.Tbl_Subject where Tbl_Subject.Prof_ID.Equals(y) select new { Tbl_Subject.Subject_ID, Tbl_Subject.Name_Er, Tbl_Subject.Name_Ar };
                var statename = stateid.ToList();
                if (statename.Count > 0)
                {
                    DropDownList3.DataValueField = "Subject_ID";
                    DropDownList3.DataTextField = "Name_Er";
                    DropDownList3.DataSource = statename;
                    DropDownList3.DataBind();
                    DropDownList3.Items.Insert(0, "--- select sub ----");

                    DropDownList1.DataValueField = "Subject_ID";
                    DropDownList1.DataTextField = "Name_Ar";
                    DropDownList1.DataSource = statename;
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "--- اختر المادة ----");
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var ch = new Tbl_chapter
            {
                Name_En = LevelEn.Text,
                Name_Ar = LevelAr.Text,
                Subject_ID = int.Parse(DropDownList3.SelectedValue.ToString()),
            };
            db.Tbl_chapter.Add(ch);
            db.SaveChanges();
            LevelEn.Text = "";
            LevelAr.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var ch = new Tbl_chapter
            {
                Name_En = LevelEn1.Text,
                Name_Ar = LevelAr1.Text,
                Subject_ID = int.Parse(DropDownList1.SelectedValue.ToString()),
            };
            db.Tbl_chapter.Add(ch);
            db.SaveChanges();
            LevelEn1.Text = "";
            LevelAr1.Text = "";
        }
    }
}