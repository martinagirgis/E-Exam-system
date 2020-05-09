using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class editProf : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var x = Request.QueryString["page"].ToString();
                int y = int.Parse(x);
                if (y==1)
                {
                    Panel2.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);

                    Tbl_department rr = db.Tbl_department.First(u => u.Department_ID == y1);
                    int dep = Convert.ToInt32(rr.Level_ID);
                    var stateid = from  Tbl_Level in db.Tbl_Level where Tbl_Level.Level_ID.Equals(dep) select new { Tbl_Level.Name_Ar, Tbl_Level.Name_Er,Tbl_Level.Level_ID };
                    var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID, Tbl_Level.Name_Ar };
                    DropDownList1.DataSource = le.ToList();
                    DropDownList1.DataValueField = "Level_ID";
                    DropDownList1.DataTextField = "Name_Er";
                    DropDownList1.DataBind();
                    DropDownList1.SelectedValue = dep.ToString();
                  
                    name_ar_dep.Text = rr.Name_Ar;
                    name_en_dep.Text = rr.Name_En;
                }

                else if (y == 112)
                {
                    Panel7.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);

                    Tbl_department rr = db.Tbl_department.First(u => u.Department_ID == y1);
                    int dep = Convert.ToInt32(rr.Level_ID);
                    var stateid = from Tbl_Level in db.Tbl_Level where Tbl_Level.Level_ID.Equals(dep) select new { Tbl_Level.Name_Ar, Tbl_Level.Name_Er, Tbl_Level.Level_ID };
                    var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID, Tbl_Level.Name_Ar };
                    DropDownList9.DataSource = le.ToList();
                    DropDownList9.DataValueField = "Level_ID";
                    DropDownList9.DataTextField = "Name_Ar";
                    DropDownList9.DataBind();
                    DropDownList9.SelectedValue = dep.ToString();

                    TextBox14.Text = rr.Name_Ar;
                    TextBox13.Text = rr.Name_En;
                }



                else if (y == 21)
                {
                    Panel8.Visible = true;

                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);

                    Tbl_Subject rr = db.Tbl_Subject.First(u => u.Subject_ID == y1);
                    int pro = Convert.ToInt32(rr.Prof_ID);
                    var stateid = from Tbl_Prof in db.Tbl_Prof where Tbl_Prof.Approval.Equals("1") select new { Tbl_Prof.Prof_ID, Tbl_Prof.Name };
                    //var pr = from Tbl_Prof in db.Tbl_Prof select new { Tbl_Prof.Name, Tbl_Prof.Prof_ID };
                    DropDownList10.DataSource = stateid.ToList();
                    DropDownList10.DataValueField = "Prof_ID";
                    DropDownList10.DataTextField = "Name";
                    DropDownList10.DataBind();
                    DropDownList10.SelectedValue = pro.ToString();

                    int dep = Convert.ToInt32(rr.Department_ID);
                    Tbl_department de = db.Tbl_department.First(d => d.Department_ID == dep);
                    int lev = Convert.ToInt32(de.Level_ID);
                    var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID,Tbl_Level.Name_Ar };
                    DropDownList11.DataSource = le.ToList();
                    DropDownList11.DataValueField = "Level_ID";
                    DropDownList11.DataTextField = "Name_Ar";
                    DropDownList11.DataBind();
                    DropDownList11.SelectedValue = lev.ToString();

                    var stateidDep = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(lev) select new { Tbl_department.Department_ID, Tbl_department.Level_ID, Tbl_department.Name_En,Tbl_department.Name_Ar };

                    var statename = stateidDep.ToList();
                    if (statename.Count > 0)
                    {
                        DropDownList12.DataSource = statename;
                        DropDownList12.DataValueField = "Department_ID";
                        DropDownList12.DataTextField = "Name_Ar";
                        DropDownList12.DataBind();
                        DropDownList12.SelectedValue = dep.ToString();
                    }

                    TextBox15.Text = rr.Name_Er;
                    TextBox16.Text = rr.Name_Ar;

                }

                else if(y==2)
                {
                    Panel3.Visible = true;

                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);

                    Tbl_Subject rr = db.Tbl_Subject.First(u => u.Subject_ID == y1);
                    int pro = Convert.ToInt32(rr.Prof_ID);
                    var stateid = from Tbl_Prof in db.Tbl_Prof where Tbl_Prof.Approval.Equals("1") select new { Tbl_Prof.Prof_ID, Tbl_Prof.Name};
                    //var pr = from Tbl_Prof in db.Tbl_Prof select new { Tbl_Prof.Name, Tbl_Prof.Prof_ID };
                    DropDownList4.DataSource = stateid.ToList();
                    DropDownList4.DataValueField = "Prof_ID";
                    DropDownList4.DataTextField = "Name";
                    DropDownList4.DataBind();
                    DropDownList4.SelectedValue = pro.ToString();

                    int dep = Convert.ToInt32(rr.Department_ID);
                    Tbl_department de = db.Tbl_department.First(d => d.Department_ID == dep);
                    int lev = Convert.ToInt32(de.Level_ID);
                    var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID };
                    DropDownList2.DataSource = le.ToList();
                    DropDownList2.DataValueField = "Level_ID";
                    DropDownList2.DataTextField = "Name_Er";
                    DropDownList2.DataBind();
                    DropDownList2.SelectedValue = lev.ToString();

                    var stateidDep = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(lev) select new { Tbl_department.Department_ID, Tbl_department.Level_ID, Tbl_department.Name_En };

                    var statename = stateidDep.ToList();
                    if (statename.Count > 0)
                    {
                        DropDownList3.DataSource = statename;
                        DropDownList3.DataValueField = "Department_ID";
                        DropDownList3.DataTextField = "Name_En";
                        DropDownList3.DataBind();
                        DropDownList3.SelectedValue = dep.ToString();
                    }

                    TextBox1.Text = rr.Name_Er;
                    TextBox2.Text = rr.Name_Ar;

                }


                else if (y == 31)
                {
                    Panel9.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);
                    Tbl_Prof rr = db.Tbl_Prof.First(u => u.Prof_ID == y1);
                    TextBox17.Text = rr.Name.ToString();
                    TextBox18.Text = rr.Password.ToString();
                    TextBox19.Text = rr.Email.ToString();
                }

                else if(y==3)
                {
                    Panel1.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);
                    Tbl_Prof rr = db.Tbl_Prof.First(u => u.Prof_ID == y1);
                    TextBox4.Text = rr.Name.ToString();
                    TextBox5.Text = rr.Password.ToString();
                    TextBox6.Text = rr.Email.ToString();
                }




                else if (y == 41)
                {
                    Panel10.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);
                    Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == y1);
                    TextBox20.Text = rr.Name.ToString();
                    TextBox21.Text = rr.Password.ToString();
                    TextBox22.Text = rr.Email.ToString();
                    var lev = rr.Level_ID;
                    var dep = rr.Department_ID;

                    var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID,Tbl_Level.Name_Ar };
                    DropDownList13.DataSource = le.ToList();
                    DropDownList13.DataValueField = "Level_ID";
                    DropDownList13.DataTextField = "Name_Ar";
                    DropDownList13.DataBind();
                    DropDownList13.SelectedValue = lev.ToString();

                    var stateidDep = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(lev) select new { Tbl_department.Department_ID, Tbl_department.Level_ID, Tbl_department.Name_En,Tbl_department.Name_Ar };

                    var statename = stateidDep.ToList();
                    if (statename.Count > 0)
                    {
                        DropDownList14.DataSource = statename;
                        DropDownList14.DataValueField = "Department_ID";
                        DropDownList14.DataTextField = "Name_Ar";
                        DropDownList14.DataBind();
                        DropDownList14.SelectedValue = dep.ToString();
                    }
                }



                else if(y==4)
                {
                    Panel4.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);
                    Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == y1);
                    TextBox3.Text = rr.Name.ToString();
                    TextBox7.Text = rr.Password.ToString();
                    TextBox8.Text = rr.Email.ToString();
                    var lev = rr.Level_ID;
                    var dep = rr.Department_ID;

                    var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID };
                    DropDownList5.DataSource = le.ToList();
                    DropDownList5.DataValueField = "Level_ID";
                    DropDownList5.DataTextField = "Name_Er";
                    DropDownList5.DataBind();
                    DropDownList5.SelectedValue = lev.ToString();

                    var stateidDep = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(lev) select new { Tbl_department.Department_ID, Tbl_department.Level_ID, Tbl_department.Name_En };

                    var statename = stateidDep.ToList();
                    if (statename.Count > 0)
                    {
                        DropDownList6.DataSource = statename;
                        DropDownList6.DataValueField = "Department_ID";
                        DropDownList6.DataTextField = "Name_En";
                        DropDownList6.DataBind();
                        DropDownList6.SelectedValue = dep.ToString();
                    }
                }



                else if (y == 61)
                {
                    Panel11.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);

                    Tbl_chapter rr = db.Tbl_chapter.First(u => u.Chapter_ID == y1);
                    int dep = Convert.ToInt32(rr.Subject_ID);

                    var x2 = Request.QueryString["pr"].ToString();
                    int y2 = int.Parse(x2);
                    var stateid = from Tbl_Subject in db.Tbl_Subject where Tbl_Subject.Prof_ID.Equals(y2) select new { Tbl_Subject.Subject_ID, Tbl_Subject.Name_Ar };
                    var statename = stateid.ToList();
                    if (statename.Count > 0)
                    {
                        DropDownList15.DataValueField = "Subject_ID";
                        DropDownList15.DataTextField = "Name_Ar";
                        DropDownList15.DataSource = statename;
                        DropDownList15.DataBind();
                        DropDownList15.Items.Insert(0, "--- select sub----");
                    }
                    DropDownList15.SelectedValue = dep.ToString();

                    TextBox24.Text = rr.Name_Ar;
                    TextBox23.Text = rr.Name_En;
                }

                else if (y == 6)
                {
                    Panel5.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);

                    Tbl_chapter rr = db.Tbl_chapter.First(u => u.Chapter_ID == y1);
                    int dep = Convert.ToInt32(rr.Subject_ID);
                   
                    var x2 = Request.QueryString["pr"].ToString();
                    int y2 = int.Parse(x2);
                    var stateid = from Tbl_Subject in db.Tbl_Subject where Tbl_Subject.Prof_ID.Equals(y2) select new { Tbl_Subject.Subject_ID, Tbl_Subject.Name_Er };
                    var statename = stateid.ToList();
                    if (statename.Count > 0)
                    {
                        DropDownList7.DataValueField = "Subject_ID";
                        DropDownList7.DataTextField = "Name_Er";
                        DropDownList7.DataSource = statename;
                        DropDownList7.DataBind();
                        DropDownList7.Items.Insert(0, "--- select sub----");
                    }
                    DropDownList7.SelectedValue = dep.ToString();

                    TextBox10.Text = rr.Name_Ar;
                    TextBox9.Text = rr.Name_En;
                }



                else if (y == 71)
                {
                    Panel12.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);
                    Tbl_Question rr = db.Tbl_Question.First(u => u.Question_ID == y1);
                    TextBox26.Text = rr.Question_Ar.ToString();
                    TextBox25.Text = rr.Question_En.ToString();
                    DropDownList16.SelectedValue = rr.Question_Level.ToString();
                    var x2 = Request.QueryString["pr"].ToString();
                    int y2 = int.Parse(x2);
                }

                else if (y == 7)
                {
                    Panel6.Visible = true;
                    var x1 = Request.QueryString["id"].ToString();
                    int y1 = int.Parse(x1);
                    Tbl_Question rr = db.Tbl_Question.First(u => u.Question_ID == y1);
                    TextBox12.Text = rr.Question_Ar.ToString();
                    TextBox11.Text = rr.Question_En.ToString();
                    DropDownList8.SelectedValue = rr.Question_Level.ToString();
                    var x2 = Request.QueryString["pr"].ToString();
                    int y2 = int.Parse(x2);
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Prof rr = db.Tbl_Prof.First(u => u.Prof_ID == y);
            rr.Name = TextBox4.Text;
            rr.Password = TextBox5.Text;
            rr.Email = TextBox6.Text;
            db.SaveChanges();
            Response.Redirect("EditProffesor.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProffesor.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_department rr = db.Tbl_department.First(u => u.Department_ID == y);
            rr.Name_En = name_en_dep.Text;
            rr.Name_Ar = name_ar_dep.Text;
            rr.Level_ID = int.Parse(DropDownList1.SelectedValue.ToString());
            db.SaveChanges();
            
            Response.Redirect("EditDepartment.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditDepartment.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_department rr = db.Tbl_department.First(u => u.Department_ID == y);
            db.Tbl_department.Remove(rr);
            db.SaveChanges();
            Response.Redirect("EditDepartment.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.Items.Clear();
            int dep = Convert.ToInt32(DropDownList2.SelectedValue);
            var stateid = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(dep) select new { Tbl_department.Name_En, Tbl_department.Department_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList3.DataValueField = "Department_ID";
                DropDownList3.DataTextField = "Name_En";
                DropDownList3.DataSource = statename;
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, "--- select dep----");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Subject rr = db.Tbl_Subject.First(u => u.Subject_ID == y);
            rr.Department_ID = int.Parse(DropDownList3.SelectedValue.ToString());
            rr.Prof_ID = int.Parse(DropDownList4.SelectedValue.ToString());
            rr.Name_Ar = TextBox2.Text;
            rr.Name_Er = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("EditSubject.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditSubject.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Subject rr = db.Tbl_Subject.First(u => u.Subject_ID == y);
            db.Tbl_Subject.Remove(rr);
            db.SaveChanges();
            Response.Redirect("EditSubject.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Prof rr = db.Tbl_Prof.First(u => u.Prof_ID == y);
            db.Tbl_Prof.Remove(rr);
            db.SaveChanges();
            Response.Redirect("EditProffesor.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == y);
            rr.Department_ID = int.Parse(DropDownList6.SelectedValue.ToString());
            rr.Level_ID = int.Parse(DropDownList5.SelectedValue.ToString());
            rr.Name = TextBox3.Text;
            rr.Password = TextBox7.Text;
            rr.Email = TextBox8.Text;
            db.SaveChanges();
            Response.Redirect("EditStudent.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == y);
            db.Tbl_Student.Remove(rr);
            db.SaveChanges();
            Response.Redirect("EditStudent.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditStudent.aspx");
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList6.Items.Clear();
            int dep = Convert.ToInt32(DropDownList5.SelectedValue);
            var stateid = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(dep) select new { Tbl_department.Name_En, Tbl_department.Department_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList6.DataValueField = "Department_ID";
                DropDownList6.DataTextField = "Name_En";
                DropDownList6.DataSource = statename;
                DropDownList6.DataBind();
                DropDownList6.Items.Insert(0, "--- select dep----");
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_chapter rr = db.Tbl_chapter.First(u => u.Chapter_ID == y);
            db.Tbl_chapter.Remove(rr);
            db.SaveChanges();

            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditChapters.aspx?id=" + y1);
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_chapter rr = db.Tbl_chapter.First(u => u.Chapter_ID == y);
            rr.Subject_ID = int.Parse(DropDownList7.SelectedValue.ToString());
            rr.Name_Ar = TextBox10.Text;
            rr.Name_En = TextBox9.Text;
            db.SaveChanges();
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditChapters.aspx?id="+y1);
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditChapters.aspx?id=" + y1);
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Question rr = db.Tbl_Question.First(u => u.Question_ID == y);
            rr.Question_Level = DropDownList8.SelectedValue.ToString();
            rr.Question_En = TextBox11.Text;
            rr.Question_Ar = TextBox12.Text;
            db.SaveChanges();
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditQuestion.aspx?id=" + y1);
            //Response.Redirect("ProfEditQuestion.aspx");
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditQuestion.aspx?id=" + y1);

        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            
            int t = db.Tbl_Answer.Count(u => u.Question_ID == y);
            for(int i=1;i<=t;i++)
            {
                Tbl_Answer rr1 = db.Tbl_Answer.First(u => u.Question_ID == y);
                db.Tbl_Answer.Remove(rr1);
                db.SaveChanges();
            }
            Tbl_Question rr = db.Tbl_Question.First(u => u.Question_ID == y);
            
            db.Tbl_Question.Remove(rr);
            db.SaveChanges();
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditQuestion.aspx?id=" + y1);

        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditDepartment.aspx");
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_department rr = db.Tbl_department.First(u => u.Department_ID == y);
            rr.Name_En = TextBox13.Text;
            rr.Name_Ar = TextBox14.Text;
            rr.Level_ID = int.Parse(DropDownList9.SelectedValue.ToString());
            db.SaveChanges();

            Response.Redirect("EditDepartment.aspx");
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_department rr = db.Tbl_department.First(u => u.Department_ID == y);
            db.Tbl_department.Remove(rr);
            db.SaveChanges();
            Response.Redirect("EditDepartment.aspx");
        }

        protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList12.Items.Clear();
            int dep = Convert.ToInt32(DropDownList11.SelectedValue);
            var stateid = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(dep) select new { Tbl_department.Name_En, Tbl_department.Department_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList12.DataValueField = "Department_ID";
                DropDownList12.DataTextField = "Name_En";
                DropDownList12.DataSource = statename;
                DropDownList12.DataBind();
                DropDownList12.Items.Insert(0, "--- select dep----");
            }
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditSubject.aspx");
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Subject rr = db.Tbl_Subject.First(u => u.Subject_ID == y);
            rr.Department_ID = int.Parse(DropDownList12.SelectedValue.ToString());
            rr.Prof_ID = int.Parse(DropDownList10.SelectedValue.ToString());
            rr.Name_Ar = TextBox16.Text;
            rr.Name_Er = TextBox15.Text;
            db.SaveChanges();
            Response.Redirect("EditSubject.aspx");
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Subject rr = db.Tbl_Subject.First(u => u.Subject_ID == y);
            db.Tbl_Subject.Remove(rr);
            db.SaveChanges();
            Response.Redirect("EditSubject.aspx");
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProffesor.aspx");
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Prof rr = db.Tbl_Prof.First(u => u.Prof_ID == y);
            rr.Name = TextBox17.Text;
            rr.Password = TextBox18.Text;
            rr.Email = TextBox19.Text;
            db.SaveChanges();
            Response.Redirect("EditProffesor.aspx");
        }

        protected void Button27_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Prof rr = db.Tbl_Prof.First(u => u.Prof_ID == y);
            db.Tbl_Prof.Remove(rr);
            db.SaveChanges();
            Response.Redirect("EditProffesor.aspx");
        }

        protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList14.Items.Clear();
            int dep = Convert.ToInt32(DropDownList13.SelectedValue);
            var stateid = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(dep) select new { Tbl_department.Name_En, Tbl_department.Department_ID,Tbl_department.Name_Ar };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList14.DataValueField = "Department_ID";
                DropDownList14.DataTextField = "Name_Ar";
                DropDownList14.DataSource = statename;
                DropDownList14.DataBind();
                DropDownList14.Items.Insert(0, "--- select dep----");
            }
        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditStudent.aspx");
        }

        protected void Button29_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == y);
            rr.Department_ID = int.Parse(DropDownList14.SelectedValue.ToString());
            rr.Level_ID = int.Parse(DropDownList13.SelectedValue.ToString());
            rr.Name = TextBox20.Text;
            rr.Password = TextBox21.Text;
            rr.Email = TextBox22.Text;
            db.SaveChanges();
            Response.Redirect("EditStudent.aspx");
        }

        protected void Button30_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == y);
            db.Tbl_Student.Remove(rr);
            db.SaveChanges();
            Response.Redirect("EditStudent.aspx");
        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_chapter rr = db.Tbl_chapter.First(u => u.Chapter_ID == y);
            db.Tbl_chapter.Remove(rr);
            db.SaveChanges();

            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditChapters.aspx?id=" + y1);
        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_chapter rr = db.Tbl_chapter.First(u => u.Chapter_ID == y);
            rr.Subject_ID = int.Parse(DropDownList15.SelectedValue.ToString());
            rr.Name_Ar = TextBox24.Text;
            rr.Name_En = TextBox23.Text;
            db.SaveChanges();
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditChapters.aspx?id=" + y1);
        }

        protected void Button31_Click(object sender, EventArgs e)
        {
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditChapters.aspx?id=" + y1);
        }

        protected void Button36_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);

            int t = db.Tbl_Answer.Count(u => u.Question_ID == y);
            for (int i = 1; i <= t; i++)
            {
                Tbl_Answer rr1 = db.Tbl_Answer.First(u => u.Question_ID == y);
                db.Tbl_Answer.Remove(rr1);
                db.SaveChanges();
            }
            Tbl_Question rr = db.Tbl_Question.First(u => u.Question_ID == y);

            db.Tbl_Question.Remove(rr);
            db.SaveChanges();
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditQuestion.aspx?id=" + y1);
        }

        protected void Button35_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Tbl_Question rr = db.Tbl_Question.First(u => u.Question_ID == y);
            rr.Question_Level = DropDownList16.SelectedValue.ToString();
            rr.Question_En = TextBox25.Text;
            rr.Question_Ar = TextBox26.Text;
            db.SaveChanges();
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditQuestion.aspx?id=" + y1);
        }

        protected void Button34_Click(object sender, EventArgs e)
        {
            var x1 = Request.QueryString["pr"].ToString();
            int y1 = int.Parse(x1);
            Response.Redirect("ProfEditQuestion.aspx?id=" + y1);

        }
    }
}