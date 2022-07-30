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
    public partial class c_pwd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        //string cid;
        int c_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("cust_login.aspx");
            c_id = Convert.ToInt32(Session["cid"]);
        }

        protected void btn_c_pwd_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from tbl_cust where cust_id="+c_id+" and pwd='"+txt_o_pwd.Text+"'",con);
            int res = Convert.ToInt32(cmd.ExecuteScalar());
            if(res==1)
            {
                cmd = new SqlCommand("update tbl_cust set pwd='"+txt_c_pwd.Text+"' where cust_id="+c_id+"",con);
                cmd.ExecuteNonQuery();
                disp_m.Text = "Password changed successfully!";
                Response.Redirect("cust_home.aspx");
            }
            else
            {
                disp_m.Text = "Your old password was wrong!";
            }
            con.Close();
        }
    }
}