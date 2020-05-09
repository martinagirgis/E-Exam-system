﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class AddLevel : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var le = new Tbl_Level
            {
                Name_Er = LevelEn.Text,
                Name_Ar = LevelAr.Text
            };
            db.Tbl_Level.Add(le);
            db.SaveChanges();
            LevelAr.Text = "";
            LevelEn.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var le = new Tbl_Level
            {
                Name_Er = LevelEn1.Text,
                Name_Ar = LevelAr1.Text
            };
            db.Tbl_Level.Add(le);
            db.SaveChanges();
            LevelAr1.Text = "";
            LevelEn1.Text = "";
        }
    }
}