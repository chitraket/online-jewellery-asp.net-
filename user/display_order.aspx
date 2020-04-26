<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="display_order.aspx.cs" Inherits="user_display_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Orders</h1>
    <br />
      <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table style="border-collapse:collapse;min-width:700px;text-align:center;">
                <tr style="background-color:#8b0000;color:white;font-weight:bold;height:30px;text-align:left;font-weight:bold;text-align:center;" >
                    <td>Name</td>
                    <td>Address</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    <td>View full order</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="border:2px solid #ddd;"><%#Eval("Firstname") %></td>
                 <td style="border:2px solid #ddd;"><%#Eval("address") %></td>
                 <td style="border:2px solid #ddd;"><%#Eval("city") %></td>
                 <td style="border:2px solid #ddd;"><%#Eval("state") %></td>
                 <td style="border:2px solid #ddd;"><%#Eval("pincorde") %></td>
                <td style="border:2px solid #ddd;"><a href="view_full_order.aspx?id=<%#Eval("id") %>">View full order</a></td>
            </tr>

        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

