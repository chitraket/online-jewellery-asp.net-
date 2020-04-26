<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="coupon.aspx.cs" Inherits="user_coupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Coupon</h1><br />
    <table>
        <tr>
             <td>Coupon code</td>
          </tr>
          <tr><td style=" width: 334px;"><asp:TextBox ID="t1" runat="server" CssClass="field" Width="194px"></asp:TextBox>

              </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
          <td> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td></tr>
        <tr>
              <td><asp:Button ID="b1" runat="server" Text="check coupon" OnClick="b1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="29px" Width="147px" /></td>
        </tr>
        <tr>
            <td><asp:Button ID="b2" runat="server" Text="Go to cart" OnClick="b2_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="29px" Width="147px" /></td>
        </tr>
    </table>
</asp:Content>

