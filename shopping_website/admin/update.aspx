<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="admin_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
     <h2>Update Category</h2>
    <table>
        <tr>
            <td>Category Name</td></tr>
        <tr>
            <td><asp:TextBox ID="t1" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="300px"></asp:TextBox></td>
        </tr>
         <tr><td><br /></td></tr>
        <tr>
            <td>
                <asp:Button ID="b1" runat="server" Text="Add Category" OnClick="b1_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="42px" Width="152px" />
            </td>
        </tr>
    </table>
</asp:Content>

