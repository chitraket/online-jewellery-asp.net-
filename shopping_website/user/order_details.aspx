<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="order_details.aspx.cs" Inherits="user_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Information</h1>
    <br />
     <asp:Repeater ID="d1" runat="server">

        <HeaderTemplate>
            <table style="border-collapse:collapse;min-width:700px;text-align:center;">
                <tr style="background-color:#8b0000;color:white;font-weight:bold;height:30px;text-align:left;font-weight:bold;text-align:center;" >   
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>Email</td>
                    <td>Address</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    <td>Mobile</td>
                    <td>Update</td>
                    <td>Delete</td>
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
                 <td style="border:2px solid #ddd;"><%#Eval("pincode") %></td>
                <td style="border:2px solid #ddd;"><%#Eval("mobile") %></td>
                <td style="border:2px solid #ddd;"><a href="update_user.aspx?id=<%#Eval("id") %>">Update</a></td>
                <td style="border:2px solid #ddd;"><a href="delete_user.aspx?id=<%#Eval("id") %>">Delete</a></td>
                 
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

