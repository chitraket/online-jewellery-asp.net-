
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="admin_add_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Add Product</h1>
    <table>
        <tr>
            <td style="width: 539px">Product name</td></tr>
           <tr> <td style="width: 539px"><asp:TextBox ID="t1"  runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Enter the product name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 539px">Product description</td></tr>
           <tr> <td style="width: 539px"><asp:TextBox ID="t2" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Enter the product description" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 539px">Product Brand</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t3" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t3" ErrorMessage="Enter the product brand" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 539px">Product Height(mm)</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t4" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
         <tr>
            <td style="width: 539px">Product Width(mm)</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t5" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 539px">Product price</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t6" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t6" ErrorMessage="Enter the product price" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 539px">Product quantity</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t7" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="t7" ErrorMessage="Enter the product quantity" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td style="width: 539px">Metal</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t9" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="t9" ErrorMessage="Enter the metal" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </td>
        </tr>
         <tr>
            <td style="width: 539px">Metal Purity</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t10" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="t10" ErrorMessage="Enter the metal purity" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 539px">Metal Certification</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t11" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="t11" ErrorMessage="Enter the metal certification" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             </td>
        </tr>
          <tr>
            <td style="width: 539px">Diamonds(No of Pieces)</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t12" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
          </tr>
         <tr>
            <td style="width: 539px">Diamond Weight(carat)</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t13" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
          </tr>
          <tr>
            <td style="width: 539px">Diamond Clarity</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t14" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
          <tr>
            <td style="width: 539px">Diamond Color</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t15" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
        </tr>
          <tr>
            <td style="width: 539px">Diamond Shape</td></tr>
        <tr>
            <td style="width: 539px"><asp:TextBox ID="t16" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px"></asp:TextBox></td>
          </tr>
        <tr>
            <td style="width: 539px">Product image</td></tr>
        <tr>
            <td style="width: 539px"><asp:FileUpload ID="f1" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px" /></td>
        </tr>
        <tr>
            <td style="width: 539px">Select Category</td></tr>
        <tr>
            <td style="width: 539px">
                <asp:DropDownList ID="dd" runat="server" Style="background:#ebebeb;border:solid 1px #dedede;padding:2px;" Width="350px" Height="38px"/>
            </td>
        </tr>
               <tr>
                   <td style="width: 539px"><br /></td>
               </tr>
        <tr>
            <td style="width: 539px">
            <asp:Button ID="b1" runat="server" Text="Add Product" OnClick="b1_Click" BackColor="#214761" BorderColor="#214761" BorderStyle="None" ForeColor="White" Height="39px" Width="148px" />
            </td>
        </tr>
    </table>
    
    <!--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>-->
</asp:Content>


