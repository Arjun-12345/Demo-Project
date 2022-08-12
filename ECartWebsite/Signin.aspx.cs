using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Request.Cookies["CName"] != null && Request.Cookies["CPass"] != null)
            {
                txtUsername.Text = Request.Cookies["CName"].Value;
                txtPass.Text = Request.Cookies["CPass"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("LoginInfo", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@pwd",txtPass.Text);
            
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);  
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if(dt.Rows.Count!= 0)
            {
                if(CheckBox1.Checked)
                {
                    Response.Cookies["CName"].Value = txtUsername.Text;
                    Response.Cookies["CPass"].Value = txtPass.Text;

                    Response.Cookies["CName"].Expires = DateTime.Now.AddDays(3);
                    Response.Cookies["CPass"].Expires = DateTime.Now.AddDays(3);
                }
                else
                {
                    Response.Cookies["CName"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["CPass"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["Uname"] = txtUsername.Text;
                Response.Redirect("~/UserHome.aspx");
            }
            else
            {
                lblError.Text = "Invalid Username and Password";
            }
            //Response.Write("<script> alert('Login Successfully Done');</script>");
            clr();
            con.Close();
            //lbltext.Text = "Registration Successfully Done";
            //lbltext.ForeColor = System.Drawing.Color.Green;
        }
    }
    private void clr()
    {
        txtPass.Text = String.Empty;
        txtUsername.Text = String.Empty;
        txtUsername.Focus();
    }
}