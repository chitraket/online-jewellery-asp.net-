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

public partial class user_payment_gateway : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    string product_price, product_qty;
    int tot = 0;
    int tots = 0;
    int totos = 0;

    string order_no;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from cart";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            product_qty = dr["product_qty"].ToString();
            product_price = dr["product_price"].ToString();
            tot = tot + (Convert.ToInt32(product_qty.ToString()) * Convert.ToInt32(product_price.ToString()));
            tots = tot * 3 / 100;
            totos = tot + tots;

        }
       t1.Text = totos.ToString();
        con.Close();
        order_no = Class1.GetRandomPassword(10).ToString();
        Session["order_no"] = order_no.ToString();
        Session["order"] = order_no.ToString();
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from registration where email='"+Session["user"].ToString()+"'";
        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {
            t2.Text = dr1["firstname"].ToString();
            Label1.Text = dr1["lastname"].ToString();
            t3.Text = dr1["address"].ToString();
            t4.Text= dr1["email"].ToString();
            t10.Text = dr1["mobile"].ToString();

        }
        con.Close();
        if (!IsPostBack)
        {
            Random random = new Random();
            txnid.Value = (Convert.ToString(random.Next(100000000, 200000000)));
            txnid.Value = txnid.Value.ToString();
            Label2.Text = txnid.Value.ToString();
            Session["txnid"] = txnid.Value.ToString();
            Response.Write(txnid.Value.ToString());
        }
    }
    protected void b1_Click(object sender, EventArgs e)
    {

        Double amount = Convert.ToDouble(t1.Text);

        String text = key.Value.ToString() + "|" + txnid.Value.ToString() + "|" + amount + "|" + "Women Tops" + "|" + t2.Text + "|" + t4.Text + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "||||||" + salt.Value.ToString();
        //Response.Write(text);
        byte[] message = Encoding.UTF8.GetBytes(text);

        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        hash.Value = hex;

        System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
        data.Add("hash", hex.ToString());
        data.Add("txnid", txnid.Value);
        data.Add("key", key.Value);
        // string AmountForm = ;// eliminating trailing zeros

        data.Add("amount", amount);
        data.Add("firstname", t2.Text.Trim());
        data.Add("email", t4.Text.Trim());
        data.Add("phone", t10.Text.Trim());
        data.Add("productinfo", "Women Tops");
        data.Add("udf1", "1");
        data.Add("udf2", "1");
        data.Add("udf3", "1");
        data.Add("udf4", "1");
        data.Add("udf5", "1");

        data.Add("surl", "http://localhost:1976/user/payment_success.aspx");
        data.Add("furl", "http://localhost:1976/user/FailurePayment.aspx");

        data.Add("service_provider", "");


        string strForm = PreparePOSTForm("https://test.payu.in/_payment", data);
        Page.Controls.Add(new LiteralControl(strForm));



     //   Response.Redirect("payment_success.aspx?order="+order_no.ToString()+"");
    }

    private string PreparePOSTForm(string url, System.Collections.Hashtable data)    
    {
        //Set a name for the form
        string formID = "PostForm";
        //Build the form using the specified data to be posted.
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {

            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }
   
}