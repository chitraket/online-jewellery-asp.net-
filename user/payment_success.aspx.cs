using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Security.Cryptography;
using System.Collections.Specialized;

public partial class user_payment_success : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    //  string order = "";
    //  string s;
    // string t;
    // string[] a = new string[6];
    string order_id,status="o",order_name;
    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        // order = Request.QueryString["order"].ToString();
        if (Session["order"].ToString() == Session["order_no"].ToString())
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from registration where email='" + Session["user"].ToString() + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "insert into orders values('" + dr["firstname"].ToString() + "','" + dr["lastname"].ToString() + "','" + dr["email"].ToString() + "','" + dr["address"] + "','" + dr["city"].ToString() + "','" + dr["state"].ToString() + "','" + dr["pincode"].ToString() + "','" + dr["mobile"].ToString() + "')";
                cmd1.ExecuteNonQuery();
            }
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select top 1 * from orders where email='" + Session["user"].ToString() + "' order by id desc";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            foreach (DataRow dr2 in dt2.Rows)
            {
                order_id = dr2["id"].ToString();
            }
            Session["order_id"]=order_id.ToString();
            DateTime dates = DateTime.Now;
            string datess = dates.ToString("dd/MM/yyyy");
           // string date = DateTime.Now.ToString("dd/MM/yyyy");
            DateTime datee = dates.AddDays(15);
            string dateee = datee.ToString("dd/MM/yyyy");
            SqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "select * from cart";
            cmd4.ExecuteNonQuery();
            DataTable dt4 = new DataTable();
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            da4.Fill(dt4);
            foreach (DataRow dr3 in dt4.Rows)
            {
                SqlCommand cmd3 = con.CreateCommand();
                cmd3.CommandType = CommandType.Text;
                cmd3.CommandText = "insert into order_detail(order_id,txn_id,product_name,product_brand,product_width,product_height,product_price,product_qty,product_images,metal,metal_purity,diamonds,diamond_weight,diamond_color,diamond_shape,o_date,d_date,status,product_id) values('" + order_id.ToString() + "','" + Session["txnid"].ToString() + "','" + dr3["product_name"].ToString() + "','" + dr3["product_brand"].ToString() + "','" + dr3["product_width"].ToString() + "','" + dr3["product_height"].ToString() + "','" + dr3["product_price"].ToString() + "','" + dr3["product_qty"].ToString() + "','" + dr3["product_images"].ToString() + "','" + dr3["metal"].ToString() + "','" + dr3["metal_purity"].ToString() + "','" + dr3["diamonds"].ToString() + "','" + dr3["diamond_weight"].ToString() + "','" + dr3["diamond_color"].ToString() + "','" + dr3["diamond_shape"].ToString() + "','" + datess.ToString() + "','" + dateee.ToString() + "','" + status.ToString() + "','"+dr3["product_id"].ToString()+"')";
                cmd3.ExecuteNonQuery();
                order_name = dr3["product_name"].ToString();

            }
            con.Close();
            con.Open();
            SqlCommand cmd5 = con.CreateCommand();
            cmd5.CommandType = CommandType.Text;
            cmd5.CommandText = "select * from orders where email='" + Session["user"].ToString() + "'";
            cmd5.ExecuteNonQuery();
            DataTable dt5 = new DataTable();
            SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
            da5.Fill(dt5);
            foreach (DataRow dr5 in dt5.Rows)
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("17bmiit116@gmail.com", "Chit@9125");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + dr5["firstname"].ToString() + " " + dr5["lastname"].ToString() + "  Thanks You for Shopping";
            //    msg.Body = "Thank you so much dear " + dr5["firstname"].ToString() + "" + dr5["lastname"].ToString() + " for you're grateful shopping,hope you enjoyed with our own shopping form J&D shopping,you're order will be dispatched at your address:" + dr5["address"].ToString() + " You're payment transaction id:" + Session["txnid"].ToString() + " amount:" + Session["totos"].ToString() + " is successfull archived if any problem are arrived regarding to dispatch then jd shop contact you on " + dr5["mobile"].ToString() + " Thank you for shopping";
                msg.Body = "Thank you so much " + dr5["firstname"].ToString() + "" + dr5["lastname"].ToString() + " for your grateful shopping, we hope you enjoyed with our own shopping form J&D shopping,your order for " + order_name.ToString() + " amounting to Rs." + Session["totos"].ToString() + "has been received. You expect delivery by " + dateee.ToString() + ". And will be dispatched at your address:" + dr5["address"].ToString() + ".if any problem are arrived regarding to dispatch then jd shop contact you on " + dr5["mobile"].ToString() + "Your payment amount Rs." + Session["totos"].ToString() + "successful achieved.";
                string toaddress = Session["user"].ToString();
                msg.To.Add(toaddress);
                string fromaddress = "J&D shopping  <17bmiit116@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);
                }
                catch
                {
                    throw;
                }

                string destinationaddr = "91" + dr5["mobile"].ToString();
                string message = "Thank you so much " + dr5["firstname"].ToString() + "" + dr5["lastname"].ToString() + " for your grateful shopping, we hope you enjoyed with our own shopping form J&D shopping,your order for " + order_name.ToString() + " amounting to Rs." + Session["totos"].ToString() + "has been received. You expect delivery by " + dateee.ToString() + ". And will be dispatched at your address:" + dr5["address"].ToString() + ".if any problem are arrived regarding to dispatch then jd shop contact you on " + dr5["mobile"].ToString() + "Your payment amount Rs." + Session["totos"].ToString() + "successful achieved.";
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
                    //savedata();

                }
                con.Close();
                con.Open();
                SqlCommand cmd7 = con.CreateCommand();
                cmd7.CommandType = CommandType.Text;
                cmd7.CommandText = "delete from cart";
                cmd7.ExecuteNonQuery();
                con.Close();

                // Session["user"] = "";
                // Response.Cookies["aa"].Expires=DateTime.Now.AddDays(-1);
                //Response.Cookies["aa"].Expires=DateTime.Now.AddDays(-1);
                // Response.Write("<script LANGUAGE='JavaScript'>alert('payment successfully')</script>");
                // Server.Transfer("bill.aspx");
                Response.Redirect("bill.aspx");
            }
        }
    }
}