<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="view_product.aspx.cs" Inherits="admin_view_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Search product</h1>
    <table>
        <tr>
           <td> <asp:TextBox ID="TextBox1" runat="server" placeholder="Product name" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="250px"></asp:TextBox></td>
            <td>&nbsp;&nbsp;</td>
          <td>  <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="36px" Width="124px" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the user" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td><asp:Label ID="txtNotFound" runat="server" Text="Not Found product" ForeColor="#CC0000"></asp:Label></td></tr>
       
    </table>
     <asp:DataList ID="d1" runat="server">
     <HeaderTemplate>
         
         <h1>View Product</h1>
          <table border="1">
                <tr style="background-color:#214761;color:white">
                    <td>Product Image</td>
                    <td>Product Name</td>
                    <td>Product Brand</td>
                    <td>Product Height</td>
                    <td>Product Width</td>
                    <td>Product qty</td>
                    <td>Available qty</td>
                    <td>Product Price</td>
                    <td>Metal</td>
                    <td>Metal Purity</td>
                    <td>Metal Certification</td>
                    <td>Diamonds</td>
                    <td>Diamond Weight</td>
                    <td>Diamond Clarity</td>
                    <td>Diamond Color</td>
                    <td>Diamond Shape</td>
                    <td>Product Category</td>
                    <td>Product Description</td>
                    <td>Update</td>
                    <td>Delete</td>  
                </tr>
              </HeaderTemplate>
          <ItemTemplate>
              <tr>
              <td><img src="../<%#Eval("product_images") %>" height="100" width="100"/></td>
              <td><%#Eval("product_name") %></td>
              <td><%#Eval("product_brand") %></td>
              <td><%#Eval("product_height") %></td>
              <td><%#Eval("product_width") %></td>
               <td><%#Eval("product_aqty") %></td>
              <td><%#Eval("product_qty") %></td>
              <td><%#Eval("product_price") %></td>
              <td><%#Eval("metal") %></td>
              <td><%#Eval("metal_purity") %></td>
              <td><%#Eval("metal_certification") %></td>
              <td><%#Eval("diamonds") %></td>
              <td><%#Eval("diamond_weight") %></td>
              <td><%#Eval("diamond_clarity") %></td>
              <td><%#Eval("diamond_color") %></td>
              <td><%#Eval("diamond_shape") %></td>
              <td><%#Eval("product_category") %></td>
            <td><%#Eval("product_desc") %></td>
             <td><a href="update_product.aspx?id=<%#Eval("id") %>">Update</a></td>
               <td><a href="delete_product.aspx?id=<%#Eval("id") %>">Delete</a></td>
              </tr>
              </ItemTemplate>
           <FooterTemplate>
               </table>
               </FooterTemplate>
        
    </asp:DataList>
</asp:Content>

