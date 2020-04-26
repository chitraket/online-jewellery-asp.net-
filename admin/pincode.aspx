<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="pincode.aspx.cs" Inherits="admin_pincode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
      <h2>Add pincode</h2>
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
                <asp:Button ID="b1" runat="server" Text="Add pincode" OnClick="b1_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="42px" Width="154px" />
            </td>
        </tr>
    </table>
   <asp:DataList ID="d1" runat="server">
     <HeaderTemplate>
         <h1>View Pincode</h1>
           <table border="1">
                <tr style="background-color:#214761;color:white">
                    <td>address</td>
                    <td>city</td>
                    <td>pincode</td>
                    <td>Update</td>
                    <td>Delete</td>
                    </tr>
              </HeaderTemplate>
          <ItemTemplate>
              <tr>
                   <td><%#Eval("address") %></td>
                  <td><%#Eval("city") %></td>
                <td><%#Eval("pincode") %></td>
                  <td><a href="pincode_update.aspx?id=<%#Eval("pid") %>">Update</a></td>
                  <td><a href="pincode_delete.aspx?id=<%#Eval("pid") %>">Delete</a></td>
              </tr>
              </ItemTemplate>
           <FooterTemplate>
               </table>
               </FooterTemplate>
        
    </asp:DataList>
</asp:Content>

