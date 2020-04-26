using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_pincode_update : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
          id = Request.QueryString["id"].ToString();
          if (Session["admin"] == null)
          {
              Response.Redirect("adminlogin.aspx");
          }
          if (IsPostBack) return;
          con.Open();
          SqlCommand cmd1 = con.CreateCommand();
          cmd1.CommandType = CommandType.Text;
          cmd1.CommandText = "select * from pincode where pid='" + id.ToString() + "'";
          cmd1.ExecuteNonQuery();
          DataTable dt1 = new DataTable();
          SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
          da1.Fill(dt1);
          foreach (DataRow dr1 in dt1.Rows)
          {
              t1.Text = dr1["address"].ToString();
              t2.Text = dr1["city"].ToString();
              t3.Text = dr1["pincode"].ToString();
              
          }
          con.Close();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "update pincode set pincode='" + t3.Text + "',city='" + t2.Text + "',address='" + t1.Text + "' where pid='" + id.ToString() + "'";
        cmd2.ExecuteNonQuery();
        con.Close();
        Response.Write("<script LANGUAGE='JavaScript'>alert('pincode update successfully')</script>");
        Server.Transfer("pincode.aspx");

    }
}