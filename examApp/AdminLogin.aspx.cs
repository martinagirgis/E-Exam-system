using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        //Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Log.Singleton s = new Log.Singleton();
            //Singleton.Instance.UserRegesteration.Concat(i=>i.f)
            if (Log.Singleton.Instance.Tbl_Admin.Count(u => u.Name == email.Text && u.Password == password.Text) == 1)
            {
                Response.Redirect("confirmProf.aspx?name=");
            }
            //if (db.Tbl_Admin.Count(u => u.Name == email.Text && u.Password== password.Text) == 1)
            //{
            //    Response.Redirect("confirmProf.aspx?name=");
            //}
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('False')", true);
            }

        }
    }
}