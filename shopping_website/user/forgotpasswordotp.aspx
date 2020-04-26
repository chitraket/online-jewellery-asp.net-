<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="forgotpasswordotp.aspx.cs" Inherits="user_forgotpasswordotp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
     <h1>Forgot Password</h1><br />
    <table>
        <tr>
            <td>Enter OTP</td></tr>
        <tr>
            <td><asp:TextBox ID="TextBox1" runat="server" CssClass="field" Width="216px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter mobile number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Verify OTP" OnClick="Button1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="28px" Width="72px" /></td>
        </tr>
    </table>
</asp:Content>

