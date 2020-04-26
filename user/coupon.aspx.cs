using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_coupon : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    int discount, price;
    int maxdiscount;
    int finalprice;
    int discountprice;
    int id;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label4.Visible = false;
        b2.Visible = false;
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Label3.Visible = true;
        Label4.Visible = true;
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from cart where product_id=" + id + "";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {
            price= Convert.ToInt32(dr1["product_price"].ToString());
        }
        con.Close();
        if (checkemail() == true)
        {
            Label3.Text = "Your coupon Already Registered with Us";
         //   TextBox3.BackColor = System.Drawing.Color.PaleGreen;
            Label4.Visible = false;

        }
        else
        {

            String myquery = "Select * from coupon where couponcode='" + t1.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label3.Text = "Coupon Code " + t1.Text + " Applied Successfully";

                discount = Convert.ToInt16(ds.Tables[0].Rows[0]["discount"].ToString());
                maxdiscount = Convert.ToInt16(ds.Tables[0].Rows[0]["maxdiscount"].ToString());
                discountprice = (price * discount) / 100;
                if (discountprice > maxdiscount)
                {
                    discountprice = maxdiscount;
                }
                Label4.Text = "Discount :" + discountprice.ToString() + " ( " + discount + "% ) Maximum Upto Rs." + maxdiscount;
                finalprice = price - discountprice;
                b2.Visible = true;
                b1.Visible = false;

                con.Open();
                SqlCommand cmd6 = con.CreateCommand();
                cmd6.CommandType = CommandType.Text;
                cmd6.CommandText = "update cart set product_price=" + finalprice + " where product_id=" + id;
                cmd6.ExecuteNonQuery();
                con.Close();


                con.Open();
                SqlCommand cmd7 = con.CreateCommand();
                cmd7.CommandType = CommandType.Text;
                cmd7.CommandText = "update cart set coupon='" + t1.Text + "' where product_id=" + id;
                cmd7.ExecuteNonQuery();
                con.Close();
                //    Label4.Text = "" + finalprice;
                //  Label5.Text = "Rs." + grandtotal.ToString();
                // Label6.Text = "Rs." + finalprice.ToString();
            }
            else
            {
                b1.Visible = false;
                b2.Visible = true;
                Label3.Text = "Invalid Coupon Code Applied : Not Exist";
                //   Label5.Text = "";
                Label4.Text = "";
                //   Label6.Text = "";

            }
            con.Close();
        }
    }
    protected void b2_Click(object sender, EventArgs e)
    {
     //   b1.Visible = false;
        b2.Visible = true;
        Response.Redirect("view_cart.aspx");
    }
    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        String myquery = "Select * from cart where coupon='" + t1.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }
}