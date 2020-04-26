using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_dashbord : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        if (IsPostBack) return;
       string  q = "select * from product";
        int total = countRecord(q);
        Label2.Text = Convert.ToString(total);

        string p = "select * from product_catagory";
        int totals = countRecord1(p);
        Label4.Text = Convert.ToString(totals);

        string m = "select * from registration";
        int total1 = countRecord2(m);
        Label6.Text = Convert.ToString(total1);

        string a = "select * from order_detail";
        int total2 = countRecord3(a);
        Label8.Text = Convert.ToString(total2);

        string ad = "select * from coupon";
        int total5 = countRecord5(ad);
        Label12.Text = Convert.ToString(total5);

        string af = "select * from pincode";
        int total6 = countRecord6(af);
        Label14.Text = Convert.ToString(total6);

        string aa = "select * from feedback";
        int total3 = countRecord4(aa);
        Label10.Text = Convert.ToString(total3);
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
    private int countRecord1(string p)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(p, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt.Rows.Count;
    }
    private int countRecord2(string m)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(m, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt.Rows.Count;
    }
    private int countRecord3(string a)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(a, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt.Rows.Count;
    }
    private int countRecord5(string ad)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(ad, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt.Rows.Count;
    }
    private int countRecord6(string af)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(af, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt.Rows.Count;
    }
    private int countRecord4(string aa)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(aa, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt.Rows.Count;
    }
}