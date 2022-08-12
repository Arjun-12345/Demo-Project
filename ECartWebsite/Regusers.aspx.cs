using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Regusers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("ShowData", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gdData.DataSource=dt;
            gdData.DataBind();  
        }
    }
}