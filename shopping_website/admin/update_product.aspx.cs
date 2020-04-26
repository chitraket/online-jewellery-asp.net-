using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_update_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    string a, b,id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"].ToString();
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        if (IsPostBack) return;
        dd.Items.Clear();
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product_catagory";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            dd.Items.Add(dr["product_catagory"].ToString());
        }
        con.Close();
        if (IsPostBack) return;
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from product where Id='" + id.ToString() + "'";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {
            t1.Text = dr1["product_name"].ToString();
            t2.Text = dr1["product_desc"].ToString();
            t3.Text = dr1["product_brand"].ToString();
            t4.Text = dr1["product_height"].ToString();
            t5.Text = dr1["product_width"].ToString();
            t6.Text = dr1["product_price"].ToString();
            t7.Text = dr1["product_qty"].ToString();
            t9.Text = dr1["metal"].ToString();
            t10.Text = dr1["metal_purity"].ToString();
            t11.Text = dr1["metal_certification"].ToString();
            t12.Text = dr1["diamonds"].ToString();
            t13.Text = dr1["diamond_weight"].ToString();
            t14.Text = dr1["diamond_clarity"].ToString();
            t15.Text = dr1["diamond_color"].ToString();
            t16.Text = dr1["diamond_shape"].ToString();
        }
        con.Close();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        if (f1.HasFile)
        {
            a = Class1.GetRandomPassword(10).ToString();
            f1.SaveAs(Request.PhysicalApplicationPath + "./images/" + a + f1.FileName.ToString());
            b = "images/" + a + f1.FileName.ToString();
           
            // Response.Write("<script LANGUAGE='JavaScript'>alert('product update successfully')</script>");
            cmd2.CommandText = "update product set product_name='" + t1.Text + "',product_desc='" + t2.Text + "',product_brand='" + t3.Text + "',product_height='" + t4.Text + "',product_width='" + t5.Text + "',product_price='" + t6.Text + "',product_qty='" + t7.Text + "',metal='" + t9.Text + "',metal_purity='" + t10.Text + "',metal_certification='" + t11.Text + "',product_images='" + b.ToString() + "',product_category='" + dd.SelectedItem.ToString() + "', diamonds='" + t12.Text + "',diamond_weight='" + t13.Text + "',diamond_clarity='" + t14.Text + "',diamond_color='" + t15.Text + "',diamond_shape='" + t16.Text + "' where Id='" + id.ToString() + "'";

        }
        else
        {
            cmd2.CommandText = "update product set product_name='" + t1.Text + "',product_desc='" + t2.Text + "',product_brand='" + t3.Text + "',product_height='" + t4.Text + "',product_width='" + t5.Text + "',product_price='" + t6.Text + "',product_qty='" + t7.Text + "',metal='" + t9.Text + "',metal_purity='" + t10.Text + "',metal_certification='" + t11.Text + "',product_category='" + dd.SelectedItem.ToString() + "', diamonds='"+t12.Text+"',diamond_weight='"+t13.Text+"',diamond_clarity='"+t14.Text+"',diamond_color='"+t15.Text+"',diamond_shape='"+t16.Text+"' where Id='" + id.ToString() + "'";

        
        }

            cmd2.ExecuteNonQuery();
              //  ScriptManager.RegisterStartupScript(this, this.GetType(), "MessageBox", "alert('product update successfully');", true);
            con.Close();
           Response.Write("<script LANGUAGE='JavaScript'>alert('product update successfully')</script>");
          //  Response.Redirect("");
        Server.Transfer("view_product.aspx");
       
    }
}