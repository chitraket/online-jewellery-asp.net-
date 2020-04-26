﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_bill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    int product_price;
    string pincode,d_date,address;
    int tot = 0;
    int tots = 0;
    int totos = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
     //   Session["order_no"] = order_no.ToString();
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from order_detail where order_id='"+ Session["order_id"].ToString()+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
          //  product_qty = Convert.ToInt32(dr["product_qty"].ToString());
            product_price = Convert.ToInt32(dr["product_price"].ToString());
            tot = tot +  Convert.ToInt32(product_price.ToString());
            tots = tot * 3 / 100;
            totos = tot + tots;
            d_date=dr["d_date"].ToString();
        }
        con.Close();

        d1.DataSource = dt;
        d1.DataBind();
        l1.Text = "Product price:" + tot.ToString();
        l2.Text = "GST:" + tots.ToString();
        l3.Text = "Total pay:" + totos.ToString();

        Label1.Text = Session["txnid"].ToString();
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from orders where email='" + Session["user"].ToString() + "'";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {
            Label2.Text = dr1["firstname"].ToString();
            Label4.Text = dr1["lastname"].ToString();
            Label8.Text = dr1["address"].ToString();
            Label6.Text= dr1["email"].ToString();
            Label10.Text = dr1["mobile"].ToString();
            pincode = dr1["pincorde"].ToString();
            address=dr1["address"].ToString();

        }
        con.Close();
        con.Open();
        SqlCommand cmd5 = con.CreateCommand();
        cmd5.CommandType = CommandType.Text;
        cmd5.CommandText = "select * from pincode where pincode='" + pincode.ToString() + "'";
        cmd5.ExecuteNonQuery();
        DataTable dt5 = new DataTable();
        SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
        da5.Fill(dt5);
        foreach (DataRow dr5 in dt5.Rows)
        {
            l4.Text = "Expected delivery:" + d_date.ToString() + " Your product dilivery :" + address.ToString() + "," + pincode.ToString() + " & You can also collect your product in j&d jewellery shop location:" + dr5["address"].ToString() + "," + dr5["city"].ToString() + "," + dr5["pincode"].ToString() + "";

        }
        con.Close();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Session["d_date"] = "";
        Session["order_id"] = "";
        Session["txnid"]= "";
        Response.Redirect("feedback.aspx");
    }
} 