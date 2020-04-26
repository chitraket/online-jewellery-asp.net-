using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_view_cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    int product_price,product_qty;
    int tot = 0;
    int tots = 0;
    int totos = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
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
              product_qty =Convert.ToInt32(dr["product_qty"].ToString());
              product_price=Convert.ToInt32(dr["product_price"].ToString());
              tot = tot + (Convert.ToInt32(product_qty.ToString()) * Convert.ToInt32(product_price.ToString()));
              tots = tot * 3 / 100;
              totos = tot + tots;
        }
        Session["totos"] = totos.ToString();
        con.Close();
      
        d1.DataSource = dt;
        d1.DataBind();
        l1.Text = "Product price:" + tot.ToString();
        l2.Text = "GST:" + tots.ToString();
        l3.Text = "Total pay:" + totos.ToString();

       // Session["tot"] = tot.ToString();
}
    protected void b1_Click(object sender, EventArgs e)
    {
        Session["checkoutbutton"] = "yes";
        Response.Redirect("checkout.aspx");
    }
  
}