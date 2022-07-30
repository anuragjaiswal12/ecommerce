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
    public partial class view_order : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("cust_login.aspx");

            int c_id =Convert.ToInt32(Session["cid"]);
            gridview1.HorizontalAlign = HorizontalAlign.Center;
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select tbl_order.order_id,tbl_status.status,tbl_cust.name,tbl_prod.prod_name,tbl_prod.prod_img,tbl_cate.cate_name,tbl_prod.price,tbl_order.total from tbl_order join tbl_prod on tbl_order.prod_id = tbl_prod.prod_id join tbl_cust on tbl_order.cust_id = tbl_cust.cust_id join tbl_cate on tbl_order.cate_id = tbl_cate.cate_id join tbl_status on tbl_order.status=tbl_status.status_id where tbl_cust.cust_id=" + c_id+"; ", con);
            gridview1.DataSource = cmd.ExecuteReader();
            gridview1.DataBind();
            con.Close();
        }
    }
}