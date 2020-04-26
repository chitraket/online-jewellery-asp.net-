using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_modify_cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    int id;
    int qty,product_price1;
    string product_qty;
    string product_price;
    protected void Page_Load(object sender, EventArgs e)
    {
        l1.Visible = false;
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id='"+id+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            Label1.Text = dr["product_name"].ToString();
            Label2.Text = dr["product_brand"].ToString();
            Label3.Text = dr["metal"].ToString();
         //   Label4.Text = dr["metal_purity"].ToString();
            product_qty = dr["product_qty"].ToString();
          //  product_price = dr["product_price"].ToString();
        }
        con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(TextBox1.Text) == 0)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from cart where product_id="+id+"";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                // product_name =dr["product_name"].ToString();
                // product_desc=dr["product_desc"].ToString();
                qty = Convert.ToInt32(dr["product_qty"].ToString());
            }
            con.Close();

            con.Open();
            SqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "update product set product_qty=product_qty+" + qty + " where id=" + id;
            cmd4.ExecuteNonQuery();
            con.Close();


            con.Open();
            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "delete from cart where product_id=" + id;
            cmd3.ExecuteNonQuery();
            con.Close();
            Response.Redirect("view_cart.aspx");
        }

        if (Convert.ToInt32(TextBox1.Text) > Convert.ToInt32(product_qty))
        {
            l1.Visible = true;
            l1.Text = "please enter lower quantity";
        }
        else
        {
         //   id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();
            l1.Text = "";
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "update cart set product_qty=product_qty+" + TextBox1.Text+ " where product_id=" + id;
            cmd2.ExecuteNonQuery();
            con.Close();

              con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from cart where product_id="+id+"";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                qty = Convert.ToInt32(dr["product_qty"].ToString());
            }
            con.Close();

             con.Open();
            SqlCommand cmd7 = con.CreateCommand();
            cmd7.CommandType = CommandType.Text;
            cmd7.CommandText = "select * from product where id="+id+"";
            cmd7.ExecuteNonQuery();
            DataTable dt7 = new DataTable();
            SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
            da7.Fill(dt7);
            foreach (DataRow dr7 in dt7.Rows)
            {
                // product_name =dr["product_name"].ToString();
                // product_desc=dr["product_desc"].ToString();
                product_price = dr7["product_price"].ToString();
            }
            con.Close();
            product_price1=qty*Convert.ToInt32(product_price.ToString());
           // l1.Text=product_price1.ToString();       
           con.Open();
            SqlCommand cmd6 = con.CreateCommand();
            cmd6.CommandType = CommandType.Text;
            cmd6.CommandText = "update cart set product_price=" +product_price1.ToString()+ " where product_id=" + id;
            cmd6.ExecuteNonQuery();
            con.Close();
            con.Open();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "update product set product_qty=product_qty-" + TextBox1.Text+" where id=" + id;
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("view_cart.aspx");
        }

       
    }
}