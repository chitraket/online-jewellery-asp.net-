using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_display_item : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        txtNotFound.Visible = false;
       
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        if (Request.QueryString["catagory"] == null)
        {
            cmd.CommandText = "select * from product";
        }
        else
        {
            cmd.CommandText = "select * from product where product_category='" + Request.QueryString["catagory"].ToString() + "'";
        }
        if (Request.QueryString["catagory"] == null && Request.QueryString["search"] != null)
        {
            cmd.CommandText = "select * from product where product_name like('%" + Request.QueryString["search"].ToString() + "%')";
        }
        
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            txtNotFound.Visible = true;
        }
        else
        {
            txtNotFound.Visible = false;

            d1.DataSource = dt;
            d1.DataBind();
        }
        con.Close();
    }
}