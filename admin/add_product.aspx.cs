using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_add_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    string a, b;
    protected void Page_Load(object sender, EventArgs e)
    {
       // 
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
        DataTable dt=new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            dd.Items.Add(dr["product_catagory"].ToString());
        }
        if (IsPostBack) return;
        con.Close();
       
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        a = Class1.GetRandomPassword(10).ToString();
        f1.SaveAs(Request.PhysicalApplicationPath + "./images/" +a+ f1.FileName.ToString());
        b = "images/" + a + f1.FileName.ToString();
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into product values('" + t1.Text + "','" + t2.Text + "', '" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "','"+t7.Text+"','" + t9.Text + "','" + t10.Text + "','" + t11.Text + "','" + b.ToString() + "','" + dd.SelectedItem.ToString() + "','" + t12.Text + "','" + t13.Text + "','" + t14.Text + "','" + t15.Text + "','" + t16.Text + "')";
        cmd.ExecuteNonQuery();
      // Label1.Text = t2.Text;
      Response.Write("<script>alert('product  added successfully');</script>");
      //  Response.Redirect("add_product.aspx");
      Server.Transfer("view_product.aspx");
        //Response.Redirect("");
        con.Close();
        
    }
    
}