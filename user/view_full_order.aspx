<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="view_full_order.aspx.cs" Inherits="user_view_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>View Order</h1>
    <br />
    <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
            <table style="border-collapse:collapse;min-width:700px;text-align:center;" >
                <tr style="background-color:#8b0000;color:white;font-weight:bold;height:30px;text-align:left;font-weight:bold;text-align:center;">
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>email</td>
                    <td>address</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    <td>mobile</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="border:2px solid #ddd;"><%#Eval("firstname") %></td>
                 <td style="border:2px solid #ddd;"><%#Eval("lastname") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("email") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("address") %></td>
                 <td style="border:2px solid #ddd;"><%#Eval("city") %></td>
                 <td style="border:2px solid #ddd;"><%#Eval("state") %></td>
                 <td style="border:2px solid #ddd;"><%#Eval("pincorde") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("mobile") %></td>
            </tr>

        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <br /><br />
     <asp:Repeater ID="r1" runat="server">
         <HeaderTemplate>
            <table style="border-collapse:collapse;min-width:700px;text-align:center;" >
                <tr  style="background-color:#8b0000;color:white;font-weight:bold;height:30px;text-align:left;font-weight:bold;text-align:center;">
                    <td>product image</td>
                    <td>product name</td>
                    <td>Product Brand</td>
                    <td>Metal</td>
                    <td>Product qty</td>
                    <td>Product price</td>
                     <td>Order date</td>
                    <td>Delivery date</td>
                </tr>
         </HeaderTemplate>
         <ItemTemplate>
             <tr>
              <td style="border:2px solid #ddd;"><img src="../<%#Eval("product_images") %>" height="100" width="100"/></td>
              <td style="border:2px solid #ddd;"><%#Eval("product_name") %></td>
              <td style="border:2px solid #ddd;"><%#Eval("product_brand") %></td>
              <td style="border:2px solid #ddd;"><%#Eval("metal") %></td>
              <td style="border:2px solid #ddd;"><%#Eval("product_qty") %></td>
              <td style="border:2px solid #ddd;"><%#Eval("product_price") %></td>
              <td style="border:2px solid #ddd;"><%#Eval("o_date") %></td>
              <td style="border:2px solid #ddd;"><%#Eval("d_date") %></td>
             </tr>
         </ItemTemplate>
         <FooterTemplate>
             </table>
         </FooterTemplate>
         </asp:Repeater>
    
   <asp:Label ID="l1" runat="server" Text="Label"></asp:Label><br />
    <asp:Label ID="l2" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="l3" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><asp:Label ID="Label5" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label><br />
    <asp:Button ID="Button1" runat="server" Text="Cancel order" OnClick="Button1_Click"  Width="134px" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Height="30px" BorderStyle="None"/><br />
     <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label><br />
     <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
</asp:Content>

