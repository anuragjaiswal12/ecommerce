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
    public partial class edit_pro : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        int c_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("cust_login.aspx");

            c_id = Convert.ToInt32(Session["cid"]);
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_cust where cust_id="+c_id+"",con);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (!IsPostBack)
            {
                while (rdr.Read())
                {
                    txt_add.Text = rdr.GetValue(5).ToString();
                    txt_city.Text = rdr.GetValue(6).ToString();
                    txt_email.Text = rdr.GetValue(3).ToString();
                    txt_phn.Text = rdr.GetValue(4).ToString();
                }
            }
            con.Close();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("update tbl_cust set email='"+txt_email.Text+"',phone="+Convert.ToInt32(txt_phn.Text)+ ",address='" + txt_add.Text+"',city='"+txt_city.Text+"' where cust_id="+c_id+"",con);
            cmd.ExecuteNonQuery();
            disp_m.Text = "Profile updated successfully!";
            Response.Redirect("cust_home.aspx");
            con.Close();
        }
    }
}