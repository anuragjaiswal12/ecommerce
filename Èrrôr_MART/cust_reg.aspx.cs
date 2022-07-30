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
    public partial class cust_reg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbl_cust",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                int count = dt.Rows.Count;
                txt_cust_id.Text = (count + 1).ToString();
                con.Close();
            }
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from tbl_cust where user_name='" + user.Text + "'", con);
            int result = Convert.ToInt32(cmd.ExecuteScalar());
            if (result==0)
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                cmd = new SqlCommand("insert into tbl_cust values (" + Convert.ToInt32(txt_cust_id.Text) + ",'" + txt_name.Text + "','" + user.Text + "','" + txt_email.Text + "'," + Convert.ToInt32(txt_phone.Text) + ",'" + txt_add.Text + "','" + txt_city.Text + "','" + txt_pwd.Text + "')", con);
                cmd.ExecuteNonQuery();
                lbl_disp_m.Text = "Registered successfully";
                Response.Redirect("cust_login.aspx");
            }
            else
            {
                lbl_disp_m.Text = "Username already taken!";
            }
        }
    }
}