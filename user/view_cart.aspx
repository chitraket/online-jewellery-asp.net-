<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="view_cart.aspx.cs" Inherits="user_view_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <div>
    <asp:DataList ID="d1" runat="server" >
        <HeaderTemplate>
            <table style="border-collapse:collapse;min-width:700px;text-align:center;">
                <tr style="background-color:#8b0000;color:white;font-weight:bold;height:30px;text-align:left;font-weight:bold;text-align:center;">
                 <td>Product Image</td>
                    <td>Product name</td>
                    <td>Product Brand</td>
                <!--    <td>Product width(mm)</td>
                    <td>Product height(mm)</td>-->
                    <td>Metal</td>
                     <td>Product quantity</td>
                    <td>Product price</td>
                   <td>Modify</td>
                    <td>Coupon</td>
                    <td>Delete</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="border:2px solid #ddd;"> <img src="../<%#Eval("product_images")%>" alt="" style="height:100px;width:100px;" /></td>
                <td style="border:2px solid #ddd;"><%#Eval("product_name") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("product_brand") %></td>
              <!-- <td><%#Eval("product_width") %></td>
                <td><%#Eval("product_height") %></td>-->
                <td style="border:2px solid #ddd;"><%#Eval("metal") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("product_qty") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("product_price") %></td>
                 <td style="border:2px solid #ddd;"><a href="modify_cart.aspx?id=<%#Eval("product_id") %>">Modify</a></td>
                 <td style="border:2px solid #ddd;"><a href="coupon.aspx?id=<%#Eval("product_id") %>">Coupon</a></td>
                <td style="border:2px solid #ddd;"><a href="delete_cart.aspx?id=<%#Eval("product_id") %>">Delete</a></td>
               
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:DataList>
        <br />
        <p align="center">
            <asp:Label ID="l1" runat="server"></asp:Label><br />
            <asp:Label ID="l2" runat="server" Text="Label"></asp:Label><br />
           <asp:Label ID="l3" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="b1" runat="server" text="checkout" OnClick="b1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="31px" Width="98px"/>
        </p>

        </div>
</asp:Content>

