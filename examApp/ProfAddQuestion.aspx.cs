using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class ProfAddQuestion : System.Web.UI.Page
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

                var stateid = from Tbl_Subject in db.Tbl_Subject where Tbl_Subject.Prof_ID.Equals(y) select new { Tbl_Subject.Subject_ID, Tbl_Subject.Name_Er , Tbl_Subject.Name_Ar};
                var statename = stateid.ToList();
                if (statename.Count > 0)
                {
                    DropDownList1.DataValueField = "Subject_ID";
                    DropDownList1.DataTextField = "Name_Er";
                    DropDownList1.DataSource = statename;
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "--- select sub----");

                    DropDownList6.DataValueField = "Subject_ID";
                    DropDownList6.DataTextField = "Name_Ar";
                    DropDownList6.DataSource = statename;
                    DropDownList6.DataBind();
                    DropDownList6.Items.Insert(0, "--- أختر المادة----");
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.Items.Clear();
            int ch = Convert.ToInt32(DropDownList1.SelectedValue);
            var stateid = from Tbl_chapter in db.Tbl_chapter where Tbl_chapter.Subject_ID.Equals(ch) select new { Tbl_chapter.Name_En, Tbl_chapter.Chapter_ID};
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList3.DataValueField = "Chapter_ID";
                DropDownList3.DataTextField = "Name_En";
                DropDownList3.DataSource = statename;
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, "--- select chapter ----");
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            queAr.Visible = true;
            queEn.Visible = true;
            if(DropDownList2.SelectedValue== "MCQ")
            {
                Panel1.Visible = true;
                Panel2.Visible = true;
                Panel3.Visible = false;
            }
            else if(DropDownList2.SelectedValue == "T/F")
            {
                Panel3.Visible = true;
                Panel2.Visible = false;
                Panel1.Visible = false;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add(TextBox1.Text);
            DropDownList4.Items.Add(TextBox2.Text);
            DropDownList4.Items.Add(TextBox3.Text);

            DropDownList10.Items.Add(TextBox4.Text);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add(TextBox1.Text);
            DropDownList4.Items.Add(TextBox2.Text);
            DropDownList4.Items.Add(TextBox3.Text);

            DropDownList10.Items.Add(TextBox4.Text);
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add(TextBox1.Text);
            DropDownList4.Items.Add(TextBox2.Text);
            DropDownList4.Items.Add(TextBox3.Text);

            DropDownList10.Items.Add(TextBox4.Text);
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add(TextBox1.Text);
            DropDownList4.Items.Add(TextBox2.Text);
            DropDownList4.Items.Add(TextBox3.Text);

            DropDownList10.Items.Add(TextBox4.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var que = new Tbl_Question
            {
                Question_Ar = queAr.Text,
                Question_En = queEn.Text,
                Chapter_ID = int.Parse(DropDownList3.SelectedValue.ToString()),
                Type = DropDownList2.SelectedValue.ToString(),
                Question_Level = DropDownList5.SelectedValue.ToString(),
                Time = 60,
            };
            db.Tbl_Question.Add(que);
            db.SaveChanges();
            //que.Question_ID.ToString();

            //Tbl_Question rr = db.Tbl_Question.First(u => u.Question_ID == y1);

            if (DropDownList2.SelectedValue == "MCQ")
            {
                var ans1 = new Tbl_Answer
                {
                    Answer_Ar = TextBox5.Text,
                    Answer_En = TextBox1.Text,
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans1);
                db.SaveChanges();

                var ans2 = new Tbl_Answer
                {
                    Answer_Ar = TextBox6.Text,
                    Answer_En = TextBox2.Text,
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans2);
                db.SaveChanges();

                var ans3 = new Tbl_Answer
                {
                    Answer_Ar = TextBox7.Text,
                    Answer_En = TextBox3.Text,
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans3);
                db.SaveChanges();

                var ans4 = new Tbl_Answer
                {
                    Answer_Ar = TextBox8.Text,
                    Answer_En = TextBox4.Text,
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans4);
                db.SaveChanges();

                Tbl_Answer rr = db.Tbl_Answer.First(u => u.Question_ID == que.Question_ID && u.Answer_En == DropDownList4.Text);
                rr.Correct_Answer = "1";
                db.SaveChanges();
                queAr.Text = "";
                queEn.Text = "";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
            }


            else if (DropDownList2.SelectedValue == "T/F")
            {
                var ans1 = new Tbl_Answer
                {
                    Answer_Ar = "صح",
                    Answer_En = "True",
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans1);
                db.SaveChanges();

                var ans2 = new Tbl_Answer
                {
                    Answer_Ar = "خطأ",
                    Answer_En = "False",
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans2);
                db.SaveChanges();

                Tbl_Answer rr = db.Tbl_Answer.First(u => u.Question_ID == que.Question_ID && u.Answer_En == RadioButtonList1.Text);
                rr.Correct_Answer = "1";
                db.SaveChanges();
                queAr.Text = "";
                queEn.Text = "";
            }
            DropDownList4.Items.Clear();
        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList7.Items.Clear();
            int ch = Convert.ToInt32(DropDownList6.SelectedValue);
            var stateid = from Tbl_chapter in db.Tbl_chapter where Tbl_chapter.Subject_ID.Equals(ch) select new { Tbl_chapter.Name_Ar, Tbl_chapter.Chapter_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList7.DataValueField = "Chapter_ID";
                DropDownList7.DataTextField = "Name_Ar";
                DropDownList7.DataSource = statename;
                DropDownList7.DataBind();
                DropDownList7.Items.Insert(0, "--- أختر الفصل ----");
            }
        }

        protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            if (DropDownList9.SelectedValue == "MCQ")
            {
                Panel4.Visible = true;
                Panel5.Visible = true;
                Panel6.Visible = false;
            }
            else if (DropDownList9.SelectedValue == "T/F")
            {
                Panel6.Visible = true;
                Panel5.Visible = false;
                Panel4.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var que = new Tbl_Question
            {
                Question_Ar = TextBox10.Text,
                Question_En = TextBox9.Text,
                Chapter_ID = int.Parse(DropDownList7.SelectedValue.ToString()),
                Type = DropDownList9.SelectedValue.ToString(),
                Question_Level = DropDownList8.SelectedValue.ToString(),
                Time = 60,
            };
            db.Tbl_Question.Add(que);
            db.SaveChanges();
            //que.Question_ID.ToString();

            //Tbl_Question rr = db.Tbl_Question.First(u => u.Question_ID == y1);

            if (DropDownList9.SelectedValue == "MCQ")
            {
                var ans1 = new Tbl_Answer
                {
                    Answer_Ar = TextBox15.Text,
                    Answer_En = TextBox11.Text,
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans1);
                db.SaveChanges();

                var ans2 = new Tbl_Answer
                {
                    Answer_Ar = TextBox16.Text,
                    Answer_En = TextBox12.Text,
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans2);
                db.SaveChanges();

                var ans3 = new Tbl_Answer
                {
                    Answer_Ar = TextBox17.Text,
                    Answer_En = TextBox13.Text,
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans3);
                db.SaveChanges();

                var ans4 = new Tbl_Answer
                {
                    Answer_Ar = TextBox18.Text,
                    Answer_En = TextBox14.Text,
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans4);
                db.SaveChanges();

                Tbl_Answer rr = db.Tbl_Answer.First(u => u.Question_ID == que.Question_ID && u.Answer_Ar == DropDownList10.Text);
                rr.Correct_Answer = "1";
                db.SaveChanges();
                queAr.Text = "";
                queEn.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                TextBox13.Text = "";
                TextBox14.Text = "";
                TextBox15.Text = "";
                TextBox16.Text = "";
                TextBox17.Text = "";
                TextBox18.Text = "";
            }


            else if (DropDownList9.SelectedValue == "T/F")
            {
                var ans1 = new Tbl_Answer
                {
                    Answer_Ar = "صح",
                    Answer_En = "True",
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans1);
                db.SaveChanges();

                var ans2 = new Tbl_Answer
                {
                    Answer_Ar = "خطأ",
                    Answer_En = "False",
                    Correct_Answer = "0",
                    Question_ID = que.Question_ID,
                    Count = 0,
                };
                db.Tbl_Answer.Add(ans2);
                db.SaveChanges();

                Tbl_Answer rr = db.Tbl_Answer.First(u => u.Question_ID == que.Question_ID && u.Answer_Ar == RadioButtonList2.Text);
                rr.Correct_Answer = "1";
                db.SaveChanges();
                TextBox10.Text = "";
                TextBox9.Text = "";
                DropDownList10.Items.Clear();
            }
            DropDownList10.Items.Clear();
        }

        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {
            //DropDownList10.Items.Remove(TextBox15.Text);
            DropDownList10.Items.Clear();
            DropDownList10.Items.Add(TextBox15.Text);
            DropDownList10.Items.Add(TextBox16.Text);
            DropDownList10.Items.Add(TextBox17.Text);

            DropDownList10.Items.Add(TextBox18.Text);
        }

        protected void TextBox16_TextChanged(object sender, EventArgs e)
        {
            DropDownList10.Items.Clear();
            DropDownList10.Items.Add(TextBox15.Text);
            DropDownList10.Items.Add(TextBox16.Text);
            DropDownList10.Items.Add(TextBox17.Text);

            DropDownList10.Items.Add(TextBox18.Text);
        }

        protected void TextBox17_TextChanged(object sender, EventArgs e)
        {
            DropDownList10.Items.Clear();
            DropDownList10.Items.Add(TextBox15.Text);
            DropDownList10.Items.Add(TextBox16.Text);
            DropDownList10.Items.Add(TextBox17.Text);

            DropDownList10.Items.Add(TextBox18.Text);
        }

        protected void TextBox18_TextChanged(object sender, EventArgs e)
        {
            DropDownList10.Items.Clear();
            DropDownList10.Items.Add(TextBox15.Text);
            DropDownList10.Items.Add(TextBox16.Text);
            DropDownList10.Items.Add(TextBox17.Text);

            DropDownList10.Items.Add(TextBox18.Text);
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}