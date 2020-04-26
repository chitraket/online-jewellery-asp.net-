<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="user_forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Forgot Password</h1><br />
    <table>
        <tr>
            <td>moblie number</td></tr>
        <tr>
            <td>91+<asp:TextBox ID="TextBox1" runat="server" CssClass="field" Width="180px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter mobile number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid mobile number" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Send OTP" OnClick="Button1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="28px" Width="72px" /></td>
        </tr>
    </table>
</asp:Content>

