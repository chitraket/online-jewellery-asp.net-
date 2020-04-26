<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="coupon.aspx.cs" Inherits="admin_coupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
     <h2>Add Coupon</h2>
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
         <td>Coupon expiry date</td></tr>
        <tr>
            <td><asp:TextBox ID="TextBox1" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="268px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t3" ErrorMessage="Enter the coupon expiry date" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr><td><br /></td></tr>
        <tr>
            <td>
                <asp:Button ID="b1" runat="server" Text="Add coupon" OnClick="b1_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="42px" Width="154px" />
            </td>
        </tr>
    </table>
   <asp:DataList ID="d1" runat="server">
     <HeaderTemplate>
         <h1>View Coupon</h1>
           <table border="1">
                <tr style="background-color:#214761;color:white">
                    <td>Coupon code</td>
                    <td>Discount</td>
                    <td>Max discount</td>
                    <td>expiry date</td>
                    <td>Update</td>
                    <td>Delete</td>
                    </tr>
              </HeaderTemplate>
          <ItemTemplate>
              <tr>
                  <td><%#Eval("couponcode") %></td>
                  <td><%#Eval("discount") %></td>
                  <td><%#Eval("maxdiscount") %></td>
                  <td><%#Eval("tilldate") %></td>
                  <td><a href="coupon_update.aspx?id=<%#Eval("couponid") %>">Update</a></td>
                  <td><a href="coupon_delete.aspx?id=<%#Eval("couponid") %>">Delete</a></td>
              </tr>
              </ItemTemplate>
           <FooterTemplate>
               </table>
               </FooterTemplate>
        
    </asp:DataList>
</asp:Content>

