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
    public partial class view_cust : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("admin_login.aspx");


            gridview1.HorizontalAlign = HorizontalAlign.Center;
            if (!IsPostBack)
            {
                bind_grid();
            }
        }
        public void bind_grid()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_cust", con);
            gridview1.DataSource = cmd.ExecuteReader();
            gridview1.DataBind();
            con.Close();
        }
    }
}