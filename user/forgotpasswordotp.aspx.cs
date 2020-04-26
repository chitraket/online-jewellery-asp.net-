using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_forgotpasswordotp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Label2.Visible = false;
        //Label1.Text = Session["otp"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Label2.Visible = true;
        if (TextBox1.Text == Session["otp"].ToString())
        {
            Response.Redirect("changepassword.aspx");
        }
        else
        {

            Response.Write("<script LANGUAGE='JavaScript'>alert('OTP number is not Correct : Your Mobile Number not Verified')</script>");
            Server.Transfer("forgotpassword.aspx");
           // Label2.Text = "OTP number is not Correct : Your Mobile Number not Verified";
            //Response.Redirect("forgotpassword.aspx");
        }
    }
}