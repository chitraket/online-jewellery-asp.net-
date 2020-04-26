<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="user_bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Bill</h1><br />
    <table>
         <tr>
            <td style="width: 169px">Transaction ID</td><td></td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            </td>
        </tr>
        <tr>
            <td style="width: 169px"><br /></td>
        </tr>
        <tr>
            <td style="width: 169px">First Name</td><td></td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

            </td>
        </tr>
        <tr>
                   <td style="width: 169px"><br /></td>
               </tr>
         <tr>
             <td style="width: 169px">Last Name</td><td></td>
            <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
                   <td style="width: 169px"><br /></td>
               </tr>
        <tr>
            <td style="width: 169px">Email</td><td></td>
            <td><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
                   <td style="width: 169px"><br /></td>
               </tr>
        <tr>
            <td style="width: 169px">Address</td><td></td>
            <td><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
                   <td style="width: 169px"><br /></td>
               </tr>
        <tr>
            <td style="width: 169px">Mobile</td><td></td>
            <td><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
                   <td style="width: 169px"><br /></td>
               </tr>
    </table>
    <div>
     <asp:DataList ID="d1" runat="server" >
        <HeaderTemplate>
            <table style="border-collapse:collapse;min-width:700px;text-align:center;" >
                <tr style="background-color:#8b0000;color:white;font-weight:bold;height:30px;text-align:left;font-weight:bold;text-align:center;">
                    <td>Product Image</td>
                    <td>Product name</td>
                    <td>Product Brand</td>
                <!--    <td>Product width(mm)</td>
                    <td>Product height(mm)</td>-->
                    <td>Metal</td>
                    <td>Metal Purity</td>
                     <td>Product quantity</td>
                    <td>Product price</td>
                    <td>Order date</td>
                    <td>delivery date</td>
                   
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
                <td style="border:2px solid #ddd;"><%#Eval("metal_purity") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("product_qty") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("product_price") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("o_date") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("d_date") %></td>
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
             <asp:Label ID="l4" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="b1" runat="server" text="Submit" OnClick="b1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="31px" Width="98px"/>
        </p>

        </div>
</asp:Content>

