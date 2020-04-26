<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="view_full_order.aspx.cs" Inherits="admin_view_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
   
     <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
             <h1>User Information</h1>
            <table border="1">
                <tr style="background-color:#214761;color:white;text-align:center;">   
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>Email</td>
                    <td>Address</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    <td>Mobile</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("firstname") %></td>
                 <td><%#Eval("lastname") %></td>
                <td><%#Eval("email") %></td>
                <td><%#Eval("address") %></td>
                 <td><%#Eval("city") %></td>
                 <td><%#Eval("state") %></td>
                 <td><%#Eval("pincorde") %></td>
                <td><%#Eval("mobile") %></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <br /><br />
     <asp:Repeater ID="r1" runat="server">
         <HeaderTemplate>
              <h1>Order</h1>
            <table border="1">
                <tr style="background-color:#214761;color:white;text-align:center">
                    <td>Product image</td>
                    <td>Product name</td>
                    <td>Product brand</td>
                    <td>Product width</td>
                    <td>Product height</td>
                    <td>Metal</td>
                    <td>Metal purity</td>
                    <td>Diamonds</td>
                    <td>Diamond weight</td>
                    <td>Diamond color</td>
                    <td>Diamond shape</td>
                    <td>Product qty</td>
                    <td>Product price</td>
                    <td>Order Date</td>
                </tr>
         </HeaderTemplate>
         <ItemTemplate>
             <tr>
              <td><img src="../<%#Eval("product_images") %>" height="100" width="100"/></td>
              <td><%#Eval("product_name") %></td>
              <td><%#Eval("product_brand") %></td>
              <td><%#Eval("product_width") %></td>
              <td><%#Eval("product_height") %></td>
              <td><%#Eval("metal") %></td>
              <td><%#Eval("metal_purity") %></td>
              <td><%#Eval("diamonds") %></td>
              <td><%#Eval("diamond_weight") %></td>
              <td><%#Eval("diamond_color") %></td>
              <td><%#Eval("diamond_shape") %></td>
              <td><%#Eval("product_qty") %></td>
              <td><%#Eval("product_price") %></td>
              <td><%#Eval("o_date") %></td>
             </tr>
         </ItemTemplate>
         <FooterTemplate>
             </table>
         </FooterTemplate>
         </asp:Repeater>
    
    <asp:Label ID="l2" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="l3" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="l1" runat="server" Text=""></asp:Label><br />
</asp:Content>

