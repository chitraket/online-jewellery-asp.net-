<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="coupon_update.aspx.cs" Inherits="admin_coupon_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
      <h2>Update Coupon</h2>
    <table>
        <tr>
            <td>Coupon Name</td></tr>
        <tr>
            <td><asp:TextBox ID="t1" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="268px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Enter the coupon code" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td><br /></td></tr>
        <tr>
            <td>Coupon discount</td></tr>
        <tr>
            <td><asp:TextBox ID="t2" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="268px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Enter the coupon discount" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr><td><br /></td></tr>
               <tr>
            <td>Coupon max discount</td></tr>
        <tr>
            <td><asp:TextBox ID="t3" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="268px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t3" ErrorMessage="Enter the coupon max discount" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr><td><br /></td></tr>
        
        <tr>
            <td>
                 <asp:Button ID="Button1" runat="server" Text="Update coupon" OnClick="b2_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="42px" Width="152px" />
            </td>
        </tr>
    </table>
</asp:Content>

