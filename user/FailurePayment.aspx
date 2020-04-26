<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="FailurePayment.aspx.cs" Inherits="user_FailurePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Payment Failed</h1><br />
    <h3>your payment was not successfully processed.Please contact our customer support.(+91 96019 94607)</h3><br />
    <asp:Button ID="Button1" runat="server" Text="Shop now" OnClick="Button1_Click" Width="134px" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Height="30px" BorderStyle="None" />
</asp:Content>

