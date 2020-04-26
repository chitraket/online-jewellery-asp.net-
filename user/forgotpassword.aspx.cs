using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//using System.Net.Mail;
//using System.Net;
using System.Net;
//using System.Data;
//using System.Data.SqlClient;
using System.Collections.Specialized;


public partial class user_forgotpassword : System.Web.UI.Page
{
   SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
  // string mobile;
   int tot = 0;
    //int tot = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
       /* con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where email='" + TextBox1.Text + "' ";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        * 
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            password = dr["password"].ToString();
        }
        con.Close();*/
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where mobile='" + TextBox1.Text + "' ";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        tot = Convert.ToInt32(dt.Rows.Count.ToString());
        if (tot > 0)
        {
           Random random = new Random();
        int value = random.Next(1001, 9999);

        string destinationaddr = "91" + TextBox1.Text;
        string message = "<#>" + value + "is your OTP for creating j&d account.";

        String message1 = HttpUtility.UrlEncode(message);
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "xQe2DmTFTP0-0zzoIujVPmgJ5r3KSVRHRZNH9RezYf"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            
            Session["otp"] = value;
            Session["mobile"] = TextBox1.Text;
            Response.Redirect("forgotpasswordotp.aspx");
        }
     }
     else
      {
          Label1.Visible = true;
          Label1.Text = "Not Register mobile number";
      }
        con.Close();

        }
    }

        