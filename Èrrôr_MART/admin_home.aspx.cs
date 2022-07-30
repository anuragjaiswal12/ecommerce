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
    public partial class admin_home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("admin_login.aspx");
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from tbl_cust",con);
            int count_c = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_ttl_c.Text = count_c.ToString();
            cmd = new SqlCommand("select count(*) from tbl_order", con);
            int count_o = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_ttl_o.Text = count_o.ToString();
            cmd = new SqlCommand("select count(*) from tbl_prod",con);
            int count_p = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_ttl_p.Text = count_p.ToString();
            con.Close();
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}