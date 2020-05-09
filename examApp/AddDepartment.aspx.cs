using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class AddDepartment : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID, Tbl_Level.Name_Ar };
                DropDownList5.DataSource = le.ToList();
                DropDownList5.DataValueField = "Level_ID";
                DropDownList5.DataTextField = "Name_Er";
                DropDownList5.DataBind();
                DropDownList5.Items.Insert(0, new ListItem("--- select level----"));

                DropDownList1.DataSource = le.ToList();
                DropDownList1.DataValueField = "Level_ID";
                DropDownList1.DataTextField = "Name_Ar";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("---  اختر المستوي ----"));
            }
        }

    

        protected void Button2_Click(object sender, EventArgs e)
        {
            var dp = new Tbl_department
            {
                Name_En = Dep_En.Text,
                Name_Ar = Dep_Ar.Text,
                Level_ID = int.Parse(DropDownList5.SelectedValue.ToString())
            };
            db.Tbl_department.Add(dp);
            db.SaveChanges();
            Dep_Ar.Text = "";
            Dep_En.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                var dp = new Tbl_department
                {
                    Name_En = Dep_En1.Text,
                    Name_Ar = Dep_Ar1.Text,
                    Level_ID = int.Parse(DropDownList1.SelectedValue.ToString())
                };
                db.Tbl_department.Add(dp);
                db.SaveChanges();
                Dep_Ar1.Text = "";
                Dep_En1.Text = "";
            

            
        }
    }
}