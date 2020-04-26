<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="user_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1 style="height: 23px">FeedBack</h1><br />
    <table>
        <tr>
            <td style="width: 216px"><asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
            <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
            <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label></td>
            <td><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td style="width: 216px"><asp:Label ID="Label3" runat="server" Text="Email"></asp:Label></td>
            <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 216px">Feedback</td>
            </tr>
        <tr>
            <td style="width: 216px"><asp:TextBox ID="TextBox5" runat="server" CssClass="field" Height="103px" TextMode="MultiLine" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter the feedback" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px"><br /></td>
        </tr>
        <tr>
           <td style="width: 216px"> <asp:Button ID="Button1" runat="server" Text="Send Feedback" OnClick="Button1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="28px" Width="104px" /></td>
        </tr>
    </table>
</asp:Content>

