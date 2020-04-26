<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="admin_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h2>Add Category</h2>
    <table>
        <tr>
            <td>Category Name</td></tr>
        <tr>
            <td><asp:TextBox ID="t1" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Enter the category" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td><br /></td></tr>
        <tr>
            <td>
                <asp:Button ID="b1" runat="server" Text="Add Category" OnClick="b1_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="42px" Width="154px" />
            </td>
        </tr>
    </table>
   <asp:DataList ID="d1" runat="server">
     <HeaderTemplate>
         <h1>View Category</h1>
           <table border="1">
                <tr style="background-color:#214761;color:white">
                    <td>Category</td>
                    <td>Update</td>
                    <td>Delete</td>
                    
                    </tr>
              </HeaderTemplate>
          <ItemTemplate>
              <tr>
                  <td><%#Eval("product_catagory") %></td>
                  <td><a href="update.aspx?id=<%#Eval("id") %>">Update</a></td>
                  <td><a href="delete.aspx?category=<%#Eval("product_catagory") %>">Delete</a></td>
              </tr>
              </ItemTemplate>
           <FooterTemplate>
               </table>
               </FooterTemplate>
        
    </asp:DataList>
</asp:Content>

