using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_display_order : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        txtNotFound.Visible = false;
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        if (IsPostBack) return;
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from orders  order by id desc";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        r1.DataSource = dt;
        r1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from  orders where firstname like('%" + TextBox1.Text + "%')";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        if (dt1.Rows.Count == 0)
        {
            txtNotFound.Visible = true;
        }
        else
        {
            txtNotFound.Visible = false;
            r1.DataSource = dt1;
            r1.DataBind();
        }
        con.Close();
    }
}