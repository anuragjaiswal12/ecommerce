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
    public partial class cust_home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["c_id"] == null)
                Response.Redirect("cust_login.aspx");
            user = (string)Session["c_id"];
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_cust where user_name='"+user+"'", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            while(rdr.Read())
            {
                hdn_name.Value = rdr.GetValue(1).ToString();
                hdn_id.Value = rdr.GetValue(0).ToString();
            }
            lbl_name.Text += hdn_name.Value;
            Session["cid"] = hdn_id.Value;
        }

        protected void v_order_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_order.aspx");
        }

        protected void c_pwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("c_pwd.aspx");
        }

        protected void e_pro_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit_pro.aspx");
        }

        protected void btn_v_prod_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_prod_c.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }

        protected void viewcart_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcart.aspx");
        }
    }
}