using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_update_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"].ToString();
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (IsPostBack)
        {
            return;
        }
        
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where Id='" + id.ToString() + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            t1.Text = dr["firstname"].ToString();
            t2.Text = dr["lastname"].ToString();
            t3.Text = dr["address"].ToString();
            t4.Text = dr["city"].ToString();
            t5.Text = dr["state"].ToString();
            t6.Text = dr["mobile"].ToString();
            TextBox3.Text = dr["email"].ToString();
            TextBox4.Text = dr["pincode"].ToString();
        }
        con.Close();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "update registration set firstname='" + t1.Text + "',lastname='" + t2.Text + "',email='" + TextBox3.Text + "',address='" + t3.Text + "',city='" + t4.Text + "',state='" + t5.Text + "',pincode='" + TextBox4.Text + "',mobile='" + t6.Text + "' where Id='" + id.ToString() + "'";
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Write("<script LANGUAGE='JavaScript'>alert('user update successfully')</script>");
        Server.Transfer("order_details.aspx");
       // Response.Redirect("order_details.aspx");

    }
}