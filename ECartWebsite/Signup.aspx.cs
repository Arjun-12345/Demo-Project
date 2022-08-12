using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        if (isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UserAdd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@Uid",Convert.ToInt32(hfUserID.Value== "" ? "0":hfUserID.Value));
                cmd.Parameters.AddWithValue("@Username", txtUname.Text);
                cmd.Parameters.AddWithValue("@Password", txtPass.Text);
                cmd.Parameters.AddWithValue("@Email",txtMail.Text);
                cmd.Parameters.AddWithValue("@City", txtName.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Registration Successfully Done');</script>");
                clr();
                con.Close();
                lbltext.Text = "Registration Successfully Done";
                lbltext.ForeColor = System.Drawing.Color.Green;
                
            }
            Response.Redirect("~/Signin.aspx");
        }
        else
        {
            Response.Write("<script> alert('Registration Failed');</script>");
            lbltext.Text = "All fields are mandatory";
            lbltext.ForeColor = System.Drawing.Color.Red;
        }
    }

    private bool isformvalid()
    {
        if (txtUname.Text == "")
        {
            Response.Write("<script>alert('username not valid')</script>");
            txtUname.Focus();
            return false;
        }
        else if (txtPass.Text == "")
        {
            Response.Write("<script>alert('Password not valid')</script>");
            txtPass.Focus();
            return false;
        }
        else if (txtPass.Text != txtCPass.Text)
        {
            Response.Write("<script>alert(' Confirm password not valid')</script>");
            txtCPass.Focus();   
            return false;
        }
        else if (txtName.Text == "")
        {
            Response.Write("<script>alert('Please enter the city name')</script>");
            txtName.Focus();    
            return false;
        }
        else if (txtMail.Text == "")
        {
            Response.Write("<script>alert('Email not valid')</script>");
            txtMail.Focus();
            return false;
        }
            return true;
    }
    private void clr()
    {
        hfUserID.Value = String.Empty;
        txtUname.Text = String.Empty;
        txtPass.Text = String.Empty;
        txtCPass.Text = String.Empty;
        txtName.Text = String.Empty;
        txtMail.Text = String.Empty;
    }
}