using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examination_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack || !IsPostBack)
            {
                HttpCookie usercookie = Request.Cookies["user_cookies"];
                if (Session["Useremail"] != null || usercookie != null)
                {
                    link_loginout.Text = "Logout";
                    link_loginout.Visible = true;

                    adminbtn.Visible = false;
                    studentbtn.Visible = false;
                }
                else
                {
                    link_loginout.Text = "Log in";
                    link_loginout.Visible = false;
                }
            }
        }
        //for clicking the login out button
        protected void link_loginout_Click(object sender, EventArgs e)
        {
            if (link_loginout.Text == "Logout")
            {
                Response.Cookies["user_cookies"].Expires = DateTime.Now.AddYears(-1);
                Response.Cookies.Clear();
                Session.Clear();
                Response.Redirect("Homepage.aspx");          
            }
            else if (link_loginout.Text == "Log in")
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        protected void Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/login.aspx");
        }

        protected void Student_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}