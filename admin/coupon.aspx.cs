using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_coupon : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        if (IsPostBack) return;
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from coupon";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
        con.Close();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        DateTime dob=Convert.ToDateTime(TextBox1.Text);
        string dobs=dob.ToString("dd/MM/yyyy");
         con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into coupon values('"+t1.Text+"','"+t2.Text+"','"+t3.Text+"','"+dobs.ToString()+"')";
        cmd.ExecuteNonQuery();
        con.Close();
        //Response.Redirect("add_category.aspx");
        Response.Write("<script>alert('coupon added successfully');</script>");
        Server.Transfer("coupon.aspx");
       // Response.Redirect("coupon.aspx");
    }
}