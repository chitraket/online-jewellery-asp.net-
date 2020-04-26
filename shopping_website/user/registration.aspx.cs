using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
//using System.Data;
//using System.Data.SqlClient;
using System.Collections.Specialized;


public partial class user_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text == TextBox10.Text)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            string destinationaddr = "91" + TextBox9.Text;
            string message = "hey"+TextBox1.Text+"!Welcome to a whole new world of jewellery&diamond,fun,&shopping whith j&d shoping.Your login ID is "+TextBox3.Text+".See you online!";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "m9Vazaq9SKs-pAYOKBntS58IihACnJwrOitRzPP4j0"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            Response.Write("<script LANGUAGE='JavaScript'>alert('Registration Successfully')</script>");
            Server.Transfer("registration.aspx");
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Please enter right password";
        }
      //  Label1.Text = "Registration Successfully";
    }
}