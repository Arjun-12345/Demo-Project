using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Uname"]!=null)
        {
            lblMsg.Text = "Login Successful Welcome, " + Session["Uname"].ToString();
        }
        else
        {
            Response.Redirect("~/Signin.aspx");
        }
    }
    
    protected void btnSignout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Signin.aspx");
        Session["Uname"] = null;
    }
}