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
    public partial class viewcart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        int cid;
        protected void Page_Load(object sender, EventArgs e)
        {
            cid = Convert.ToInt32(Session["cid"]);
            if (Session.Count == 0)
                Response.Redirect("cust_login.aspx");
            gridview1.HorizontalAlign = HorizontalAlign.Center;
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("select tbl_prod.prod_id,tbl_prod.prod_name,tbl_prod.prod_disc,tbl_prod.price,tbl_prod.prod_img,tbl_cate.cate_name  from tbl_cart join tbl_prod on tbl_cart.prod_id=tbl_prod.prod_id join tbl_cate on tbl_prod.cate_id=tbl_cate.cate_id where tbl_cart.cust_id=" + cid + "", con);
            gridview1.DataSource = cmd.ExecuteReader();
            gridview1.DataBind();
            con.Close();
        }

        protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "order")
            {
                int s = 1;
                int order_id = getorderid();
                int quantity = Convert.ToInt32(gridview1.Rows[rowIndex].Cells[5].Text);
                int prod_id = Convert.ToInt32(gridview1.Rows[rowIndex].Cells[0].Text);
                int price = Convert.ToInt32(gridview1.Rows[rowIndex].Cells[3].Text);
                int cate_id = Convert.ToInt32(gridview1.Rows[rowIndex].Cells[4].Text);
                int ttl = quantity * price;
                if (con.State == ConnectionState.Open)
                    con.Close();
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tbl_order values(" + order_id + "," + prod_id + "," + cid + "," + quantity + "," + ttl + "," + s + "," + cate_id + ")", con);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("delete from tbl_cart where prod_id=" + prod_id + " and cust_id=" + cid + "", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Ordered Successfully!");

            }
        }
        public int getorderid()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from tbl_order", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return (count + 1);
        }

        
    }
}