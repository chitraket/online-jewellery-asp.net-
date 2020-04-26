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

public partial class user_view_full_order : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    int id;
    int tot = 0;
    int tots = 0;
    int totos = 0;
    string status, pincode, address, price, o_date, o_name;
    int qty, pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = false;
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }

        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from orders where id=" + id + "";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {
            pincode = dr1["pincorde"].ToString();
            address = dr1["address"].ToString();
        }
        r2.DataSource = dt1;
        r2.DataBind();
        con.Close();

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from order_detail where order_id=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            tot = tot + Convert.ToInt32(dr["product_price"].ToString()) * Convert.ToInt32(dr["product_qty"].ToString());
            tots = tot * 3 / 100;
            totos = tot + tots;
            status = dr["status"].ToString();
            //  qty = dr["product_qty"].ToString();
            // pid = dr["product_name"].ToString();
        }
        r1.DataSource = dt;
        r1.DataBind();
        con.Close();
        l1.Text = "Price:" + tot.ToString();
        l2.Text = "GST:" + tots.ToString();
        l3.Text = "Total order price:" + totos.ToString();
        if (status == "o")
        {
            Label4.Text = "status:";
            Label5.Text = "Order confirm and making";
            Button1.Visible = true;
            Label1.Visible = false;
            Label2.Visible = false;
        }
        else if (status == "p")
        {
            Label4.Text = "status:";
            Label5.Text = "Packed";
            Button1.Visible = true;
            Label1.Visible = false;
            Label2.Visible = false;
        }
        else if (status == "s")
        {
            Label4.Text = "status:";
            Label5.Text = "Shipped";
            Button1.Visible = true;
            Label1.Visible = false;
            Label2.Visible = false;
        }
        else
        {
            Label4.Visible = false;
            Label5.Visible = false;
            Label1.Text = "sorry,not cancel the product";
            con.Open();
            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "select * from pincode where pincode=" + pincode.ToString() + "";
            cmd3.ExecuteNonQuery();
            DataTable dt3 = new DataTable();
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            da3.Fill(dt3);
            foreach (DataRow dr3 in dt3.Rows)
            {
                Label2.Text = "product is ready to Deliverrd:" + address.ToString() + "," + pincode.ToString() + " & also collect your product in nearest j&d jewellery store location " + dr3["address"].ToString() + "," + dr3["city"].ToString() + "," + dr3["pincode"].ToString() + "";
            }
            Label1.Visible = true;
            Label2.Visible = true;
            Button1.Visible = false;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());

        //   id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd6 = con.CreateCommand();
        cmd6.CommandType = CommandType.Text;
        cmd6.CommandText = "select * from order_detail where order_id=" + id + "";
        cmd6.ExecuteNonQuery();
        DataTable dt6 = new DataTable();
        SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
        da6.Fill(dt6);
        foreach (DataRow dr6 in dt6.Rows)
        {
            qty = Convert.ToInt32(dr6["product_qty"].ToString());
            pid = Convert.ToInt32(dr6["product_id"].ToString());
            price = dr6["product_price"].ToString();
            o_date = dr6["o_date"].ToString();
            o_name = dr6["product_name"].ToString();
        }
        con.Close();
        con.Open();
        SqlCommand cmd7 = con.CreateCommand();
        cmd7.CommandType = CommandType.Text;
        cmd7.CommandText = "select * from orders where Id=" + id + "";
        cmd7.ExecuteNonQuery();
        DataTable dt7 = new DataTable();
        SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
        da7.Fill(dt7);
        foreach (DataRow dr7 in dt7.Rows)
        {

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("17bmiit116@gmail.com", "Chit@9125");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Order cancel";
            msg.Body = "As per your requset the Order on " + o_date.ToString() + " product name:" + o_name.ToString() + "product price:" + price.ToString() + " has been cancelled. We hope to serv you soon ";
            string toaddress = dr7["email"].ToString();
            msg.To.Add(toaddress);
            string fromaddress = "shopping  <17bmiit116@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }

            string destinationaddr = "91" + dr7["mobile"].ToString();
            string message = "As per your requset the Order on " + o_date.ToString() + " product name:" + o_name.ToString() + "product price:" + price.ToString() + " has been cancelled. We hope to serv you soon ";

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
            }

            con.Close();

            //  l1.Text = pid.ToString();
            con.Close();
            con.Open();
            SqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "update product set product_qty=product_qty+" + qty + " where Id=" + pid;
            cmd4.ExecuteNonQuery();
            con.Close();



            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from orders where  id=" + id + " ";
            cmd.ExecuteNonQuery();
            con.Close();
            con.Open();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "delete from order_detail where order_id=" + id + "";
            cmd1.ExecuteNonQuery();
            con.Close();


            Response.Write("<script>alert('order cancel successfully');</script>");
            Server.Transfer("display_order.aspx");


            // Response.Redirect("display_order.aspx");

        }
    }
}