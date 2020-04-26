using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_product_desc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Chitraket\Desktop\shopping_website\App_Data\shopping.mdf;Integrated Security=True");
    int id;
    string ids;
    int qty;
    string product_name, product_width, product_height, product_price, product_qty, product_images, product_brand, metal, metal_purity, diamonds, diamond_weight, diamond_color, diamond_shape;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("display_item.aspx");
        }
        else
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from product where id='" + id + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
         d1.DataSource = dt;
        d1.DataBind();
            con.Close();
            con.Open();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from product where id='" + id + "'";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
             da1.Fill(dt1);
             foreach (DataRow dr1 in dt1.Rows)
             {
                 Label2.Text = dr1["product_name"].ToString();
                 Label4.Text = dr1["product_desc"].ToString();
                 Label6.Text = dr1["product_brand"].ToString();
                 Label8.Text = dr1["product_price"].ToString();
                 Label10.Text = dr1["product_qty"].ToString();
                 ls2.Text = dr1["product_height"].ToString();
                 ls4.Text = dr1["product_width"].ToString();
                 Label12.Text = dr1["metal"].ToString();
                 Label14.Text = dr1["metal_purity"].ToString();
                 Label16.Text = dr1["metal_certification"].ToString();
                 Label18.Text = dr1["diamonds"].ToString();
                 Label20.Text = dr1["diamond_weight"].ToString();
                 Label22.Text = dr1["diamond_clarity"].ToString();
                 Label24.Text = dr1["diamond_color"].ToString();
                 Label26.Text = dr1["diamond_shape"].ToString();
                 if (dr1["diamonds"].ToString() != "" && dr1["diamond_weight"].ToString() != "" && dr1["diamond_clarity"].ToString() != "" && dr1["diamond_color"].ToString() != "" && dr1["diamond_shape"].ToString()!="")
                 {
                     Label29.Visible = true;
                     Label17.Visible = true;
                     Label18.Visible = true;
                     Label19.Visible = true;
                     Label20.Visible = true;
                     Label21.Visible = true;
                     Label22.Visible = true;
                     Label23.Visible = true;
                     Label24.Visible = true;
                     Label25.Visible = true;
                     Label26.Visible = true;
                 }
                 else
                 {
                     Label29.Visible = false;
                     Label17.Visible = false;
                     Label18.Visible = false;
                     Label19.Visible = false;
                     Label20.Visible = false;
                     Label21.Visible = false;
                     Label22.Visible = false;
                     Label23.Visible = false;
                     Label24.Visible = false;
                     Label25.Visible = false;
                     Label26.Visible = false;
                 }

                 if (dr1["product_width"].ToString() != "")
                 {
                     ls3.Visible = true;
                     ls4.Visible = true;
                 }
                 else
                 {
                     ls3.Visible = false;
                     ls4.Visible = false;
                 }

                 if (dr1["product_height"].ToString() !="")
                 {
                     ls1.Visible = true;
                     ls2.Visible = true;
                     
                 }
                 else
                 {
                     ls1.Visible = false;
                     ls2.Visible = false;
                 }
               
             }
             con.Close();
        }
        qty=get_qty(id);
        if(qty==0)
        {
            l2.Visible = false;
            t1.Visible = false;
            b1.Visible = false;
            l1.Text = "There is no available quantity of this item";
        } 

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id='" + id + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
          product_name=dr["product_name"].ToString();
          product_brand= dr["product_brand"].ToString();
          product_width=dr["product_width"].ToString();
          product_height = dr["product_height"].ToString();
          product_price=dr["product_price"].ToString();
          product_qty =dr["product_qty"].ToString();
          product_images = dr["product_images"].ToString();
          metal = dr["metal"].ToString();
          metal_purity = dr["metal_purity"].ToString();
          diamonds = dr["diamonds"].ToString();
          diamond_weight = dr["diamond_weight"].ToString();
          diamond_color = dr["diamond_color"].ToString();
          diamond_shape = dr["diamond_shape"].ToString();
          ids = dr["Id"].ToString();
          
        }
        if (Convert.ToInt32(t1.Text) > Convert.ToInt32(product_qty))
        {
            l1.Text = "please enter lower quantity";
        }
        else
        {
            l1.Text = "";
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "insert into cart(product_name,product_brand,product_width,product_height,product_images,product_qty,product_price,metal,metal_purity,diamonds,diamond_weight,diamond_color,diamond_shape,product_id) values('" + product_name.ToString() + "','" + product_brand.ToString() + "','" + product_width.ToString() + "','" + product_height.ToString() + "','" + product_images.ToString() + "','" + t1.Text + "','" + product_price.ToString() + "','" + metal.ToString() + "','" + metal_purity.ToString() + "','" + diamonds.ToString() + "','" + diamond_weight.ToString() + "','" + diamond_color.ToString() + "','" + diamond_shape.ToString() + "','" + ids.ToString() + "')";
            cmd2.ExecuteNonQuery();
     
          //  if (Request.Cookies["aa"] == null)
            //{
              //  Response.Cookies["aa"].Value = product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() +  "," + t1.Text + "," + product_images.ToString() + "," + id.ToString();
                //Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            //}
            //else
            //{
              //  Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() +  ","+t1.Text+","  + product_images.ToString() + "," + id.ToString();
               // Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

//            }
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "update product set product_qty=product_qty-" + t1.Text+" where id="+id;
            cmd1.ExecuteNonQuery();
            Response.Redirect("product_desc.aspx?id=" + id.ToString());

        }
     //   Response.Redirect("display_item.aspx");
    }
    public int get_qty(int id)
    {
         con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where Id='" + id + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            qty =Convert.ToInt32(dr["product_qty"].ToString());
        }
        return qty;
    }
}