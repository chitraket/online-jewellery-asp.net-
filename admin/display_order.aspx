<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="display_order.aspx.cs" Inherits="admin_display_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
      <h1>Search Order</h1>
    <table>
        <tr>
           <td> <asp:TextBox ID="TextBox1" runat="server" placeholder="First name" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;margin-left:5px;" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
          <td>  <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" Style="margin-left:5px;" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="36px" Width="124px"   />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the order" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr><td><asp:Label ID="txtNotFound" runat="server" Text="Not Found order" ForeColor="#CC0000"></asp:Label></td></tr>
    </table>
    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <h1>Display Order</h1>
            <table border="1">
                <tr style="background-color:#214761;color:white">
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    <td>View full order</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("firstname") %></td>
                 <td><%#Eval("lastname") %></td>
                 <td><%#Eval("city") %></td>
                 <td><%#Eval("state") %></td>
                 <td><%#Eval("pincorde") %></td>
                <td><a href="view_full_order.aspx?id=<%#Eval("id") %>">View full order</a></td>
            </tr>

        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

