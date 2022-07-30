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
    public partial class view_booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("admin_login.aspx");

            gridview1.HorizontalAlign = HorizontalAlign.Center;
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select tbl_order.order_id,tbl_cust.name,tbl_prod.prod_name,tbl_prod.prod_img,tbl_cate.cate_name,tbl_status.status,tbl_prod.price,tbl_order.total from tbl_order join tbl_prod on tbl_order.prod_id = tbl_prod.prod_id join tbl_cust on tbl_order.cust_id = tbl_cust.cust_id join tbl_cate on tbl_order.cate_id = tbl_cate.cate_id join tbl_status on tbl_order.status=tbl_status.status_id; ", con);
            gridview1.DataSource = cmd.ExecuteReader();
            gridview1.DataBind();
            con.Close();
        }

        protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="set_s")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument);
                int oid = Convert.ToInt32(gridview1.Rows[rowindex].Cells[0].Text);
                Response.Redirect("set_s.aspx?oid=" + oid);
            }
        }
    }
}