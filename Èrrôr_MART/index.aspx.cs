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
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con= new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            bindgrid();
            gridview1.HorizontalAlign = HorizontalAlign.Center;
        }
        
        public void bindgrid()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_prod ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            SqlDataReader rdr = cmd.ExecuteReader();
            gridview1.DataSource = rdr;
            gridview1.DataBind();
            con.Close();
        }
    }
}