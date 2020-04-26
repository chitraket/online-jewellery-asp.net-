<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="modify_cart.aspx.cs" Inherits="user_modify_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Modify cart</h1><br />
    <table>
        <tr>
            <td>Product name</td>
            <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td><br /></td>
        </tr>
        <tr>
            <td>Product Brand</td>
            <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td><br /></td>
        </tr>
        <tr>
            <td>Metal</td>
            <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td><br /></td>
        </tr>
        <tr><td>Product quantity</td>
        <td><asp:TextBox ID="TextBox1" runat="server" CssClass="field" Width="34px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter product quantity" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
            <td><br /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="l1" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label></td>
        </tr>
        <tr>
            <td><br /></td>
        </tr>
        <tr>
            <td> <asp:Button ID="Button1" runat="server" Text="Modify cart" OnClick="Button1_Click" Width="134px" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Height="30px" BorderStyle="None" /></td>
        </tr>
    </table>
</asp:Content>

