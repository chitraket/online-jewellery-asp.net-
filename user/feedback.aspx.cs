using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from registration where email='" + Session["user"].ToString() + "'";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {
            Label2.Text = dr1["firstname"].ToString();
            Label6.Text = dr1["lastname"].ToString();
           // t3.Text = dr1["address"].ToString();
            Label4.Text = dr1["email"].ToString();
           // t10.Text = dr1["mobile"].ToString();

        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "insert into feedback values('"+Label2.Text+"','"+Label6.Text+"','"+Label4.Text+"','"+TextBox5.Text+"')";
        cmd2.ExecuteNonQuery();
        con.Close();
       // Session.Clear();
        //Session["user"] = "";
        Response.Write("<script LANGUAGE='JavaScript'>alert('Feedback successfully')</script>");
        Server.Transfer("display_item.aspx");
    }
}