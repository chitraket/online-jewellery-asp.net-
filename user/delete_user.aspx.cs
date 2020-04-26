using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class user_delete_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"].ToString();
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from registration where id='" + id.ToString() + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        Session.Clear();
        Response.Write("<script LANGUAGE='JavaScript'>alert('user delete successfully')</script>");
        Server.Transfer("display_item.aspx");
      //  Response.Redirect("display_item.aspx");
    }
}