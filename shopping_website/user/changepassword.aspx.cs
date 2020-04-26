using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
       // Label1.Text = Session["mobile"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == TextBox2.Text)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update registration set password='" + TextBox1.Text + "' where mobile='" + Session["mobile"].ToString() + "'";
            cmd.ExecuteNonQuery();
            con.Close();

            Session["mobile"] = "";
            Session["otp"] = "";
            Response.Redirect("Login.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Please enter right password";
        }
    }
}