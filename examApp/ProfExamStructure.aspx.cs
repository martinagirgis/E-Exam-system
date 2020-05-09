using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class ProfExamStructure : System.Web.UI.Page
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
                    DropDownList2.DataValueField = "Subject_ID";
                    DropDownList2.DataTextField = "Name_Er";
                    DropDownList2.DataSource = statename;
                    DropDownList2.DataBind();
                    DropDownList2.Items.Insert(0, "--- select sub----");

                    DropDownList12.DataValueField = "Subject_ID";
                    DropDownList12.DataTextField = "Name_Ar";
                    DropDownList12.DataSource = statename;
                    DropDownList12.DataBind();
                    DropDownList12.Items.Insert(0, "--- احتر المادة ----");
                }
                DropDownList4.Items.Add(""+0);
                DropDownList5.Items.Add("" + 0);
                DropDownList6.Items.Add("" + 0);
                DropDownList7.Items.Add("" + 0);
                DropDownList8.Items.Add("" + 0);
                DropDownList9.Items.Add("" + 0);
                DropDownList10.Items.Add("" + 0);
                DropDownList11.Items.Add("" + 0);
                //DropDownList12.Items.Add("" + 0);

                DropDownList15.Items.Add("" + 0);
                DropDownList16.Items.Add("" + 0);
                DropDownList17.Items.Add("" + 0);
                DropDownList18.Items.Add("" + 0);
                DropDownList19.Items.Add("" + 0);
                DropDownList20.Items.Add("" + 0);
                DropDownList21.Items.Add("" + 0);
                DropDownList22.Items.Add("" + 0);

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

        protected void DropDownList12_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ch = Convert.ToInt32(DropDownList12.SelectedValue);
            var stateid = from Tbl_chapter in db.Tbl_chapter where Tbl_chapter.Subject_ID.Equals(ch) select new { Tbl_chapter.Name_En, Tbl_chapter.Chapter_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList13.DataValueField = "Chapter_ID";
                DropDownList13.DataTextField = "Name_En";
                DropDownList13.DataSource = statename;
                DropDownList13.DataBind();
                //DropDownList1.Items.Insert(0, "--- select chapter ----");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ch = Convert.ToInt32(DropDownList1.SelectedValue);
            int t = db.Tbl_Question.Count(u => u.Chapter_ID == ch);
            for (int i = 1; i <= t; i++)
            {
                DropDownList3.Items.Add(""+i);
            }

        }

        protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ch = Convert.ToInt32(DropDownList13.SelectedValue);
            int t = db.Tbl_Question.Count(u => u.Chapter_ID == ch);
            for (int i = 1; i <= t; i++)
            {
                DropDownList14.Items.Add("" + i);
            }

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList4.Items.Clear();
            DropDownList5.Items.Clear();
            int x = int.Parse(DropDownList3.Text);
            for (int i = 1; i <= x; i++)
            {
                DropDownList4.Items.Add("" + i);
                DropDownList5.Items.Add("" + i);

            }
        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList16.Items.Clear();
            DropDownList15.Items.Clear();
            int x = int.Parse(DropDownList14.Text);
            for (int i = 1; i <= x; i++)
            {
                DropDownList15.Items.Add("" + i);
                DropDownList16.Items.Add("" + i);

            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList6.Items.Clear();
            int x = int.Parse(DropDownList3.Text);
            int y = int.Parse(DropDownList4.Text);
            int z = x - y;
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("" + z);
            for (int i = 1; i <= y; i++)
            {
                DropDownList6.Items.Add("" + i);
            }

            DropDownList9.Items.Clear();
            for (int i = 1; i <= z; i++)
            {
                DropDownList9.Items.Add("" + i);
            }
        }


        protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList17.Items.Clear();
            int x = int.Parse(DropDownList14.Text);
            int y = int.Parse(DropDownList15.Text);
            int z = x - y;
            DropDownList16.Items.Clear();
            DropDownList16.Items.Add("" + z);
            for (int i = 1; i <= y; i++)
            {
                DropDownList17.Items.Add("" + i);
            }

            DropDownList20.Items.Clear();
            for (int i = 1; i <= z; i++)
            {
                DropDownList20.Items.Add("" + i);
            }
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList9.Items.Clear();
            int x = int.Parse(DropDownList3.Text);
            int y = int.Parse(DropDownList5.Text);
            int z = x - y;
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add("" + z);
            for (int i = 1; i <= y; i++)
            {
                DropDownList9.Items.Add("" + i);
            }

            DropDownList6.Items.Clear();
            for (int i = 1; i <= z; i++)
            {
                DropDownList6.Items.Add("" + i);
            }
        }


        protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList20.Items.Clear();
            int x = int.Parse(DropDownList14.Text);
            int y = int.Parse(DropDownList16.Text);
            int z = x - y;
            DropDownList15.Items.Clear();
            DropDownList15.Items.Add("" + z);
            for (int i = 1; i <= y; i++)
            {
                DropDownList20.Items.Add("" + i);
            }

            DropDownList17.Items.Clear();
            for (int i = 1; i <= z; i++)
            {
                DropDownList17.Items.Add("" + i);
            }
        }



        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h2 = int.Parse(DropDownList4.Text);
            int h = int.Parse(DropDownList6.Text);
            DropDownList7.Enabled = true;
            DropDownList7.Items.Clear();
            int h3 = h2 - h;
            DropDownList7.Items.Clear();
            for (int i = 0; i <= h3; i++)
            {
                DropDownList7.Items.Add("" + i);
            }
        }

        protected void DropDownList17_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h2 = int.Parse(DropDownList15.Text);
            int h = int.Parse(DropDownList17.Text);
            DropDownList18.Enabled = true;
            DropDownList18.Items.Clear();
            int h3 = h2 - h;
            DropDownList18.Items.Clear();
            for (int i = 0; i <= h3; i++)
            {
                DropDownList18.Items.Add("" + i);
            }
        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h = int.Parse(DropDownList6.Text);
            int h2 = int.Parse(DropDownList4.Text);
            int h3 = int.Parse(DropDownList7.Text);
            DropDownList8.Enabled = true;
            int h4 = h2 - h - h3;
            DropDownList8.Items.Clear();
            DropDownList8.Items.Add("" + h4);
        }

        protected void DropDownList18_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h = int.Parse(DropDownList17.Text);
            int h2 = int.Parse(DropDownList15.Text);
            int h3 = int.Parse(DropDownList18.Text);
            DropDownList19.Enabled = true;
            int h4 = h2 - h - h3;
            DropDownList19.Items.Clear();
            DropDownList19.Items.Add("" + h4);
        }

        protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h2 = int.Parse(DropDownList5.Text);
            int h = int.Parse(DropDownList9.Text);
            DropDownList10.Enabled = true;
            DropDownList10.Items.Clear();
            int h3 = h2 - h;
            DropDownList10.Items.Clear();
            for (int i = 0; i <= h3; i++)
            {
                DropDownList10.Items.Add("" + i);
            }
        }

        protected void DropDownList20_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h2 = int.Parse(DropDownList16.Text);
            int h = int.Parse(DropDownList20.Text);
            DropDownList21.Enabled = true;
            DropDownList21.Items.Clear();
            int h3 = h2 - h;
            DropDownList21.Items.Clear();
            for (int i = 0; i <= h3; i++)
            {
                DropDownList21.Items.Add("" + i);
            }
        }

        protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h = int.Parse(DropDownList9.Text);
            int h2 = int.Parse(DropDownList5.Text);
            int h3 = int.Parse(DropDownList10.Text);
            DropDownList11.Enabled = true;
            int h4 = h2 - h - h3;
            DropDownList11.Items.Clear();
            DropDownList11.Items.Add("" + h4);
        }

        protected void DropDownList21_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h = int.Parse(DropDownList20.Text);
            int h2 = int.Parse(DropDownList16.Text);
            int h3 = int.Parse(DropDownList21.Text);
            DropDownList22.Enabled = true;
            int h4 = h2 - h - h3;
            DropDownList22.Items.Clear();
            DropDownList22.Items.Add("" + h4);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if(DropDownList6.Text=="")
            {
                var ExamStruc = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList1.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = 0,
                    Num_Ques_Mcq_B = int.Parse(DropDownList7.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList8.Text),
                    Num_Ques_TF_A = int.Parse(DropDownList9.Text),
                    Num_Ques_TF_B = int.Parse(DropDownList10.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList11.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc);
                db.SaveChanges();
                Response.Redirect("ProfExamStructure.aspx");
            }
            else if (DropDownList9.Text == "")
            {
                var ExamStruc1 = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList1.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = int.Parse(DropDownList6.Text),
                    Num_Ques_Mcq_B = int.Parse(DropDownList7.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList8.Text),
                    Num_Ques_TF_A = 0,
                    Num_Ques_TF_B = int.Parse(DropDownList10.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList11.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc1);
                db.SaveChanges();
                Response.Redirect("ProfExamStructure.aspx");
            }
            else
            {

                var ExamStruc = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList1.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = int.Parse(DropDownList6.Text),
                    Num_Ques_Mcq_B = int.Parse(DropDownList7.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList8.Text),
                    Num_Ques_TF_A = int.Parse(DropDownList9.Text),
                    Num_Ques_TF_B = int.Parse(DropDownList10.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList11.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc);
                db.SaveChanges();
                var x = Request.QueryString["id"].ToString();
                int y = int.Parse(x);
                Response.Redirect("ProfExamStructure.aspx?id="+y);
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList17.Text == "")
            {
                var ExamStruc = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList12.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = 0,
                    Num_Ques_Mcq_B = int.Parse(DropDownList18.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList19.Text),
                    Num_Ques_TF_A = int.Parse(DropDownList20.Text),
                    Num_Ques_TF_B = int.Parse(DropDownList21.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList22.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc);
                db.SaveChanges();
                Response.Redirect("ProfExamStructure.aspx");
            }
            else if (DropDownList20.Text == "")
            {
                var ExamStruc1 = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList12.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = int.Parse(DropDownList17.Text),
                    Num_Ques_Mcq_B = int.Parse(DropDownList18.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList19.Text),
                    Num_Ques_TF_A = 0,
                    Num_Ques_TF_B = int.Parse(DropDownList21.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList22.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc1);
                db.SaveChanges();
                Response.Redirect("ProfExamStructure.aspx");
            }
            else
            {

                var ExamStruc = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList12.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = int.Parse(DropDownList17.Text),
                    Num_Ques_Mcq_B = int.Parse(DropDownList18.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList19.Text),
                    Num_Ques_TF_A = int.Parse(DropDownList20.Text),
                    Num_Ques_TF_B = int.Parse(DropDownList21.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList22.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc);
                db.SaveChanges();
                var x = Request.QueryString["id"].ToString();
                int y = int.Parse(x);
                Response.Redirect("ProfExamStructure.aspx?id=" + y);
            }
        }
    }
}