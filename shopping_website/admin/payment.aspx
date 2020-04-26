<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="admin_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Search users</h1>
    <table>
        <tr>
           <td> <asp:TextBox ID="TextBox1" runat="server" placeholder="First name" ></asp:TextBox></td>
            <td>&nbsp;&nbsp;</td>
          <td>  <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the user" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td><asp:Label ID="txtNotFound" runat="server" Text="Not Found user" ForeColor="#CC0000"></asp:Label></td></tr>
       
    </table>
     <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
             <h1>User Payment Information</h1>
            <table border="1">
                <tr style="background-color:gray;color:white">   
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>Address</td>
                    <td>Mobile</td>
                    <td>Email</td>
                    <td>Amount</td>
                    <td>Card number</td>
                    <td>Payment Date</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                 <td><%#Eval("firstname") %></td>
                 <td><%#Eval("lastname") %></td>
                 <td><%#Eval("address") %></td>
                 <td><%#Eval("mobile") %></td>
                 <td><%#Eval("email") %></td>
                 <td><%#Eval("amount") %></td>
                 <td><%#Eval("card_number") %></td>
                 <td><%#Eval("o_date") %></td>
              
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    </asp:Content>

