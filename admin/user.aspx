<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="admin_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Search users</h1>
    <table>
        <tr>
           <td> <asp:TextBox ID="TextBox1" runat="server" placeholder="First name" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="250px"></asp:TextBox></td>
            <td>&nbsp;&nbsp;</td>
          <td>  <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click"  BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="36px" Width="124px" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the user" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td><asp:Label ID="txtNotFound" runat="server" Text="Not Found user" ForeColor="#CC0000"></asp:Label></td></tr>
       
    </table>
     <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
            <table border="1">
                <h1>View user</h1>
                <tr style="background-color:#214761;color:white">   
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
                 <td><%#Eval("pincode") %></td>
                <td><%#Eval("mobile") %></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

