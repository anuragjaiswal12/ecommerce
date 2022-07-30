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
    public partial class add_prod : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con_db"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count == 0)
                Response.Redirect("admin_login.aspx");
            if (!IsPostBack)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbl_cate", con);
                ddl_cate.DataSource = cmd.ExecuteReader();
                ddl_cate.DataTextField = "cate_name";
                ddl_cate.DataValueField = "cate_id";
                ddl_cate.DataBind();
                con.Close();
                con.Open();
                cmd = new SqlCommand("select * from tbl_prod", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                int count = dt.Rows.Count;
                txt_prod_id.Text = (count + 1).ToString();
                con.Close();
            }
        }

        protected void btn_ins_Click(object sender, EventArgs e)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            if(!upload_prod_img.HasFile)
            {
                disp_m.Text="Please upload product image.";
            }
            else
            {
                int len = upload_prod_img.PostedFile.ContentLength;
                byte[] prod_img = new byte[len];
                upload_prod_img.PostedFile.InputStream.Read(prod_img, 0, len);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tbl_prod values (" + Convert.ToInt32(txt_prod_id.Text) + ",'" + txt_prod_name.Text + "','" + txt_disc.Text + "'," + Convert.ToInt32(txt_price.Text) + ",@img," + ddl_cate.SelectedValue + ")", con);
                cmd.Parameters.AddWithValue("@img", prod_img);
                cmd.ExecuteNonQuery();
                disp_m.Text = "Product added successfully!";
                con.Close();

            }
            
        }
    }
}