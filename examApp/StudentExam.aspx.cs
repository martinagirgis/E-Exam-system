using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    
    public partial class StudentExam : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var la = Request.QueryString["lan"].ToString();
                //int alng = int.Parse(la);
                if(la == "en")
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                   
                }
                else if(la == "ar")
                {
                    Panel2.Visible = true;
                    Panel1.Visible = false;
                    Button1.Text = "التالي";
                    Button2.Text = "رجوع";
                }

                var chap = Request.QueryString["id"].ToString();
                int ch = int.Parse(chap);
                Tbl_ExamStructure rr = db.Tbl_ExamStructure.First(u => u.Chapter_ID == ch);
                int MCQA = rr.Num_Ques_Mcq_A;
                int MCQB = rr.Num_Ques_Mcq_B;
                int MCQC = rr.Num_Ques_Mcq_C;

                Tbl_Question rrA = db.Tbl_Question.First(u => u.Chapter_ID == ch && u.Question_Level == "A");
                Tbl_Question rrB = db.Tbl_Question.First(u => u.Chapter_ID == ch && u.Question_Level == "B");
                Tbl_Question rrC = db.Tbl_Question.First(u => u.Chapter_ID == ch && u.Question_Level == "C");


                int qA = rrA.Question_ID;
                int qB = rrB.Question_ID;
                int qC = rrC.Question_ID;

                if (MCQA != 0)
                {
                    Label1.Text = rrA.Question_En.ToString();
                    Label9.Text = rrA.Question_Ar.ToString();
                    var stateidA = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qA select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameA = stateidA.ToList();
                    if (statenameA.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameA.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameA.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                }
                else if(MCQA==0 && MCQB!=0)
                {
                    Label1.Text = rrB.Question_En.ToString();
                    Label9.Text = rrB.Question_Ar.ToString();

                    Label3.Text = 1.ToString();
                    var stateidB = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qB select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameB = stateidB.ToList();
                    if (statenameB.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameB.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameB.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                }
                else
                {
                    Label1.Text = rrC.Question_En.ToString();
                    Label9.Text = rrC.Question_Ar.ToString();

                    Label4.Text = 1.ToString();
                    var stateidC = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qC select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameC = stateidC.ToList();
                    if (statenameC.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameC.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameC.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                }
               
            }
        }

        
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            var la = Request.QueryString["lan"].ToString();
            //int alng = int.Parse(la);
            if (la == "en")
            {
                int mark = int.Parse(RadioButtonList1.SelectedValue.ToString());
                int final_mark = int.Parse(Label8.Text);
                final_mark += mark;
                Label8.Text = final_mark.ToString();

            }
            else if (la == "ar")
            {
                int mark = int.Parse(RadioButtonList2.SelectedValue.ToString());
                int final_mark = int.Parse(Label8.Text);
                final_mark += mark;
                Label8.Text = final_mark.ToString();
            }
            //int mark = int.Parse(RadioButtonList1.SelectedValue.ToString());
            //int final_mark = int.Parse(Label8.Text);
            //final_mark += mark;
            //Label8.Text = final_mark.ToString();
            var chap = Request.QueryString["id"].ToString();
            int ch = int.Parse(chap);
            Tbl_ExamStructure rr = db.Tbl_ExamStructure.First(u => u.Chapter_ID == ch);
            int MCQA = rr.Num_Ques_Mcq_A;
            int MCQB = rr.Num_Ques_Mcq_B;
            int MCQC = rr.Num_Ques_Mcq_C;
            int TFA = rr.Num_Ques_TF_A;
            int TFB = rr.Num_Ques_TF_B;
            int TFC = rr.Num_Ques_TF_C;

            int ques = MCQA + MCQB + MCQC + TFA + TFB + TFC;

            int y1 = int.Parse(Label2.Text);
            int y2 = int.Parse(Label3.Text);
            int y3 = int.Parse(Label4.Text);
            int y4 = int.Parse(Label5.Text);
            int y5 = int.Parse(Label6.Text);
            int y6 = int.Parse(Label7.Text);

            int num = y1 + y2 + y3 + y4 + y5 + y6;

            if (y1 < MCQA)
            {
                var rrA = db.Tbl_Question.Where(u => u.Chapter_ID == ch && u.Question_Level == "A" && u.Type == "MCQ").OrderBy(u => u.Question_ID).Skip(y1);
                foreach (var item in rrA)
                {
                    Label1.Text = item.Question_En.ToString();
                    Label9.Text = item.Question_Ar.ToString();

                    y1 += 1;
                    Label2.Text = y1.ToString();
                    int qA = item.Question_ID;
                    var stateidA = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qA select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameA = stateidA.ToList();
                    if (statenameA.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameA.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameA.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                    break;
                }
                
            }
            else if(y2 < MCQB)
            {
                var rrA = db.Tbl_Question.Where(u => u.Chapter_ID == ch && u.Question_Level == "B" && u.Type == "MCQ").OrderBy(u => u.Question_ID).Skip(y2);
                foreach (var item in rrA)
                {
                    Label1.Text = item.Question_En.ToString();
                    Label9.Text = item.Question_Ar.ToString();

                    y2 += 1;
                    Label3.Text = y2.ToString();
                    int qA = item.Question_ID;
                    var stateidA = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qA select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameA = stateidA.ToList();
                    if (statenameA.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameA.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameA.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                    break;
                }
            }
            else if (y3 < MCQC)
            {
                var rrA = db.Tbl_Question.Where(u => u.Chapter_ID == ch && u.Question_Level == "C" && u.Type == "MCQ").OrderBy(u => u.Question_ID).Skip(y3);
                foreach (var item in rrA)
                {
                    Label1.Text = item.Question_En.ToString();
                    Label9.Text = item.Question_Ar.ToString();

                    y3 += 1;
                    Label4.Text = y3.ToString();
                    int qA = item.Question_ID;
                    var stateidA = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qA select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameA = stateidA.ToList();
                    if (statenameA.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameA.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameA.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                    break;
                }
            }
            else if (y4 < TFA)
            {
                var rrA = db.Tbl_Question.Where(u => u.Chapter_ID == ch && u.Question_Level == "A" && u.Type == "T/F").OrderBy(u => u.Question_ID).Skip(y4);
                foreach (var item in rrA)
                {
                    Label1.Text = item.Question_En.ToString();
                    Label9.Text = item.Question_Ar.ToString();

                    y4 += 1;
                    Label5.Text = y4.ToString();
                    int qA = item.Question_ID;
                    var stateidA = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qA select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameA = stateidA.ToList();
                    if (statenameA.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameA.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameA.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                    break;
                }
            }
            else if (y5 < TFB)
            {
                var rrA = db.Tbl_Question.Where(u => u.Chapter_ID == ch && u.Question_Level == "B" && u.Type == "T/F").OrderBy(u => u.Question_ID).Skip(y5);
                foreach (var item in rrA)
                {
                    Label1.Text = item.Question_En.ToString();
                    Label9.Text = item.Question_Ar.ToString();
                    y5 += 1;
                    Label6.Text = y5.ToString();
                    int qA = item.Question_ID;
                    var stateidA = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qA select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameA = stateidA.ToList();
                    if (statenameA.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameA.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameA.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                    break;
                }
            }
            else if (y6 < TFC)
            {
                var rrA = db.Tbl_Question.Where(u => u.Chapter_ID == ch && u.Question_Level == "C" && u.Type == "T/F").OrderBy(u => u.Question_ID).Skip(y6);
                foreach (var item in rrA)
                {
                    Label1.Text = item.Question_En.ToString();
                    Label9.Text = item.Question_Ar.ToString();
                    y6 += 1;
                    Label7.Text = y6.ToString();
                    int qA = item.Question_ID;
                    var stateidA = from Tbl_Answer in db.Tbl_Answer where Tbl_Answer.Question_ID == qA select new { Tbl_Answer.Answer_En, Tbl_Answer.Correct_Answer, Tbl_Answer.Answer_Ar };
                    var statenameA = stateidA.ToList();
                    if (statenameA.Count > 0)
                    {
                        RadioButtonList1.DataSource = statenameA.ToList();
                        RadioButtonList1.DataTextField = "Answer_En";
                        RadioButtonList1.DataValueField = "Correct_Answer";
                        RadioButtonList1.DataBind();
                        RadioButtonList2.DataSource = statenameA.ToList();
                        RadioButtonList2.DataTextField = "Answer_Ar";
                        RadioButtonList2.DataValueField = "Correct_Answer";
                        RadioButtonList2.DataBind();
                    }
                    break;
                }
            }
            else if(num == ques)
            {
                var x = Request.QueryString["st"].ToString();
                int y = int.Parse(x);
                Tbl_chapter rr1 = db.Tbl_chapter.First(u => u.Chapter_ID == ch);
                int sub = rr1.Subject_ID;
                var re = new Tbl_Result
                {
                    Student_ID = y,
                    Chapter_ID = ch ,
                    Result = int.Parse(Label8.Text),
                    Subject_ID = sub,
                };
                db.Tbl_Result.Add(re);
                db.SaveChanges();
                Label1.Text = "your result " + Label8.Text +" from " + ques.ToString();
                Label9.Text = "الدرجة" + Label8.Text + " من" + ques.ToString();

                RadioButtonList1.Visible = false;
                RadioButtonList2.Visible = false;

                Button1.Visible = false;
                Button2.Visible = true;

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["st"].ToString();
            int y = int.Parse(x);
            Response.Redirect("StudentChoseExam.aspx?id=" + y);
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //var x = Request.QueryString["st"].ToString();
            //int y = int.Parse(x);
            //Response.Redirect("StudentChoseExam.aspx?id=" + y);
            var chap = Request.QueryString["id"].ToString();
            int ch = int.Parse(chap);
            Tbl_ExamStructure rr = db.Tbl_ExamStructure.First(u => u.Chapter_ID == ch);
            int MCQA = rr.Num_Ques_Mcq_A;
            int MCQB = rr.Num_Ques_Mcq_B;
            int MCQC = rr.Num_Ques_Mcq_C;
            int TFA = rr.Num_Ques_TF_A;
            int TFB = rr.Num_Ques_TF_B;
            int TFC = rr.Num_Ques_TF_C;

            int ques = MCQA + MCQB + MCQC + TFA + TFB + TFC;
            var x = Request.QueryString["st"].ToString();
            int y = int.Parse(x);
            Tbl_chapter rr1 = db.Tbl_chapter.First(u => u.Chapter_ID == ch);
            int sub = rr1.Subject_ID;
            var re = new Tbl_Result
            {
                Student_ID = y,
                Chapter_ID = ch,
                Result = int.Parse(Label8.Text),
                Subject_ID = sub,
            };
            db.Tbl_Result.Add(re);
            db.SaveChanges();
            Label1.Text = "your result " + Label8.Text + " from " + ques.ToString();
            Label9.Text = "الدرجة" + Label8.Text + " من" + ques.ToString();

            RadioButtonList1.Visible = false;
            RadioButtonList2.Visible = false;

            Button1.Visible = false;
            Button2.Visible = true;
        }
    }
}