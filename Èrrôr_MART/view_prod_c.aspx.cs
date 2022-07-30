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
    public partial class view_prod_c : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        int cid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("cust_login.aspx");

            cid = Convert.ToInt32(Session["cid"]);
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_prod", con);
            gridview1.DataSource = cmd.ExecuteReader();
            gridview1.DataBind();
            con.Close();
            gridview1.HorizontalAlign = HorizontalAlign.Center;

        }

        protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "add")
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                int prod_id = Convert.ToInt32(gridview1.Rows[rowIndex].Cells[0].Text);
                SqlCommand cmd = new SqlCommand("select count(*) from tbl_cart where cust_id=" + cid + " and prod_id=" + prod_id + "", con);
                int res = Convert.ToInt32(cmd.ExecuteScalar());
                if (res > 0)
                {
                    Response.Write("Product is already in your cart!!");
                }
                else
                {
                    cmd = new SqlCommand("insert into tbl_cart values("+prod_id+","+cid+")", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("Product added into your cart!!");
                }
            }
        }
        
    }
}