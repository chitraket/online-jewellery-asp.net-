<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="emptycart.aspx.cs" Inherits="user_emptycart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Empty cart</h1><br />
    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label><br />
    <asp:Button ID="Button1" runat="server" Text="Shop now" OnClick="Button1_Click" Width="134px" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Height="30px" BorderStyle="None" />
</asp:Content>

