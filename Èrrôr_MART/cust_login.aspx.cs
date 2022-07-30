using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Èrrôr_MART
{
    public partial class cust_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from tbl_cust where user_name='" + user.Text + "' and pwd='" + pwd.Text + "'", con);
            int ch = Convert.ToInt32(cmd.ExecuteScalar());
            if (ch == 1)
            {
                Session["c_id"] =user.Text;
                Response.Redirect("cust_home.aspx");
            }
            else
            {
                Response.Write("Invalid details!");
            }
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("cust_reg.aspx");
        }
    }
}