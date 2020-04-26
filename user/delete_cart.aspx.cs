using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_delete_cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");

    int id;
    string qty;
   
 
    protected void Page_Load(object sender, EventArgs e)
    {
        id =Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from cart";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            // product_name =dr["product_name"].ToString();
            // product_desc=dr["product_desc"].ToString();
            qty = dr["product_qty"].ToString();
        }
        con.Close();

        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "update product set product_qty=product_qty+" + qty +" where Id="+id;
        cmd1.ExecuteNonQuery();
        con.Close();

        con.Open();
        SqlCommand cmd3 = con.CreateCommand();
        cmd3.CommandType = CommandType.Text;
        cmd3.CommandText = "delete from cart where product_id="+id;
        cmd3.ExecuteNonQuery();
        con.Close();
        Response.Redirect("view_cart.aspx");
    }
       
    }