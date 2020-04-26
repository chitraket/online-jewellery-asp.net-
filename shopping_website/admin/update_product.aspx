<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="update_product.aspx.cs" Inherits="admin_update_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h2>Update Product</h2>
    <table>
       <tr>
            <td>Product name</td></tr>
        <tr>
            <td><asp:TextBox ID="t1" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px" ></asp:TextBox></td>
        </tr>
        <tr>
            <td>Product description</td></tr>
        <tr>
            <td><asp:TextBox ID="t2" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Product Brand</td></tr>
        <tr>
            <td><asp:TextBox ID="t3" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Product Height</td></tr>
        <tr>
            <td><asp:TextBox ID="t4" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Product Width</td></tr>
        <tr>
            <td><asp:TextBox ID="t5" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <br />
             </td>
        </tr>
        <tr>
            <td>Product price</td></tr>
        <tr>
            <td><asp:TextBox ID="t6" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Product qty</td></tr>
        <tr>
            <td><asp:TextBox ID="t7" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
          <tr>
            <td>Metal</td></tr>
        <tr>
            <td><asp:TextBox ID="t9" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Metal Purity</td></tr>
        <tr>
            <td><asp:TextBox ID="t10" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Metal Certification</td></tr>
        <tr>
            <td><asp:TextBox ID="t11" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Diamonds</td></tr>
        <tr>
            <td><asp:TextBox ID="t12" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px" ></asp:TextBox></td>
          </tr>
         <tr>
            <td>Diamond Weight(carat)</td></tr>
        <tr>
            <td><asp:TextBox ID="t13" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
          </tr>
          <tr>
            <td>Diamond Clarity</td></tr>
        <tr>
            <td><asp:TextBox ID="t14" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px" ></asp:TextBox></td>
        </tr>
          <tr>
            <td>Diamond Color</td></tr>
        <tr>
            <td><asp:TextBox ID="t15" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
          <tr>
            <td>Diamond Shape</td></tr>
        <tr>
            <td><asp:TextBox ID="t16" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px" ></asp:TextBox></td>
          </tr>
        <tr>
            <td>product image</td></tr>
        <tr>
            <td><asp:FileUpload ID="f1" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px" /></td>
        </tr>
        <tr>
            <td>Select Category</td></tr>
        <tr>
            <td>
                <asp:DropDownList ID="dd" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px" Height="38px"/>
            </td>
        </tr>
        <tr>
                   <td style="width: 384px"><br /></td>
               </tr>
        <tr>
            <td>
            <asp:Button ID="b1" runat="server" Text="update product" OnClick="b1_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="39px" Width="149px" />
            </td>
        </tr>
    </table>
</asp:Content>

