<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="user_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Forgot Password</h1><br />
    <table>
        <tr>
            <td>New  Password</td></tr>
        <tr>
            <td><asp:TextBox ID="TextBox1" runat="server" CssClass="field" Width="216px" TextMode="Password" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Password" ForeColor="#CC0000" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>confirm new  Passowrd</td></tr>
        <tr>
            <td><asp:TextBox ID="TextBox2" runat="server" CssClass="field" Width="216px" TextMode="Password" ></asp:TextBox>

            </td>
        </tr>
       <tr>
           <td><asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label></td>
       </tr>
        <tr>

            <td><asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="28px" Width="118px" /></td>
        </tr>
    </table>
</asp:Content>

