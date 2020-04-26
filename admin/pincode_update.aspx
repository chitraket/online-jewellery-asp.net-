<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="pincode_update.aspx.cs" Inherits="admin_pincode_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
        <h2>Update Pincode</h2>
    <table>
        <tr>
            <td>Address</td></tr>
        <tr>
            <td><asp:TextBox ID="t1" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="268px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Enter the address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td><br /></td></tr>
        <tr>
            <td>city</td></tr>
        <tr>
            <td><asp:TextBox ID="t2" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="268px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Enter the city" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr><td><br /></td></tr>
               <tr>
            <td>pincode</td></tr>
        <tr>
            <td><asp:TextBox ID="t3" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="268px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t3" ErrorMessage="Enter the pincode" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr><td><br /></td></tr>
      
        <tr>
            <td>
                <asp:Button ID="b1" runat="server" Text="Update pincode" OnClick="b1_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="42px" Width="154px" />
            </td>
        </tr>
    </table>
</asp:Content>

