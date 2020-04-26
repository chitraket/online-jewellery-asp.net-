using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_user : System.Web.UI.MasterPage
{
     SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    string  product_price, product_qty;
    int tot = 0;
    int tots = 0;
    int totos = 0;
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from product_catagory";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        dd.DataSource = dt1;
        dd.DataBind();
        con.Close();
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
            product_qty = dr["product_qty"].ToString();
            product_price = dr["product_price"].ToString();
            tot = tot +  Convert.ToInt32(product_price.ToString());
            tots = tot * 3 / 100;
            totos = tot + tots;

        }
        con.Close();
        carttotprice.Text = totos.ToString();

      q= "select * from cart";

         int total = countRecord(q);

         carttotitem.Text = Convert.ToString(total);
    }
       
        private int countRecord(string q)
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt.Rows.Count;
        }

   
      
        
}
