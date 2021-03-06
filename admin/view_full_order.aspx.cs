﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_view_full_order : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    int id;
    int tot=0;
    int tots = 0;
    int totos = 0;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        if (IsPostBack) return;
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from orders where id="+id+"";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        r2.DataSource = dt1;
        r2.DataBind();
        con.Close();

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from order_detail where order_id="+id+"";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            tot = tot+Convert.ToInt32(dr["product_price"].ToString());
            tots = tot * 3 / 100;
            totos = tot + tots;
        }
        r1.DataSource = dt;
        r1.DataBind();
        con.Close();
        l2.Text = "Price=" + tot.ToString();
        l3.Text = "GST=" + tots.ToString();
        l1.Text = "Total order price=" + totos.ToString();
        Label1.Text = "status:";
        Label2.Text = "Ordered";
        b1.Visible = false;
        Button1.Visible = false;
        Button2.Visible = true;


    }
    protected void b1_Click(object sender, EventArgs e)
    {
        string status = "d";
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "update order_detail set  status='" + status + "' where order_id=" + id ;
        cmd2.ExecuteNonQuery();
        Label1.Text = "status:";
        Label2.Text = "Delivered";
        b1.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string status = "p";
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "update order_detail set  status='" + status+ "' where order_id=" + id;
        cmd2.ExecuteNonQuery();
        Label1.Text = "status:";
        Label2.Text = "Packed";
        b1.Visible = false;
        Button1.Visible = true;
        Button2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string status = "s";
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "update order_detail set  status='" + status + "' where order_id=" + id;
        cmd2.ExecuteNonQuery();
        Label1.Text = "status:";
        Label2.Text = "Shipped";
        b1.Visible = true;
        Button1.Visible = false;
        Button2.Visible = false;
    }
}