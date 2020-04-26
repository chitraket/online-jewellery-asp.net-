<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="user_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Login</h1>
    <br />
    <table>
        <tr>
            <td>Email Id</td>
            </tr>
        <tr>
            <td><asp:TextBox ID="TextBox1" runat="server" CssClass="field" Width="244px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter email id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td></tr>
        <tr>
            <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="field" Width="244px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
                <tr>
                   <td style="width: 384px"><br /></td>
               </tr>        
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ForeColor="White" Width="133px" Height="27px" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" />
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
          <tr>
                   <td style="width: 384px"><br /></td>
               </tr>      
        <tr>
            <td><a href="registration.aspx">Registration</a></td>
        </tr>
        <tr>
            <td><a href="forgotpassword.aspx">Forgot Password</a></td>
        </tr>
    </table>
</asp:Content>

