using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_emptyorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "There are no orders yet.";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_item.aspx");

    }
}