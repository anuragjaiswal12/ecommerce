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
    public partial class set_s : System.Web.UI.Page
    {
        int oid;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("admin_login.aspx");

            oid = Convert.ToInt32(Request.QueryString["oid"]);
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            if(!IsPostBack)
            {
                SqlCommand cmd1 = new SqlCommand("select * from tbl_status", con);
                ddl_status.DataSource = cmd1.ExecuteReader();
                ddl_status.DataTextField = "status";
                ddl_status.DataValueField = "status_id";
                ddl_status.DataBind();
            }
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select tbl_cust.user_name,tbl_prod.prod_name,tbl_prod.prod_img,tbl_order.total from tbl_order join tbl_prod on tbl_order.prod_id = tbl_prod.prod_id join tbl_cust on tbl_order.cust_id = tbl_cust.cust_id where tbl_order.order_id=" + oid + "", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            while(rdr.Read())
            {
                lbl_prod_name.Text =rdr.GetValue(1).ToString();
                lbl_cust_name.Text = rdr.GetValue(0).ToString();
                lbl_ttl.Text = rdr.GetValue(3).ToString();
                byte[] imagedisp = (byte[])rdr["prod_img"];
                string img = Convert.ToBase64String(imagedisp, 0, imagedisp.Length);
                prod_img.ImageUrl = "data:img/png;base64," + img;
            }
            con.Close();
        }

        protected void btn_set_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("update tbl_order set status=" + Convert.ToInt32(ddl_status.SelectedValue) + " where order_id=" + oid + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}