<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="product_desc.aspx.cs" Inherits="user_product_desc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server"> 
    <h1>Product  Description</h1><br />  
   <div style ="height:367px;width:600px;border-style:solid;border-width:2px;">
    <asp:Repeater ID="d1" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
    <div style="height:365px;width:200px;float:left;border-style:solid;border-width:1px;">
        <img src="../<%#Eval("product_images")%>" alt="" style="height:100%;width:100%;" />
  </div>
         </ItemTemplate>
        <FooterTemplate>

        </FooterTemplate>
    </asp:Repeater>

    <div style="height:367px;width:396px;float:left;border-style:solid;border-width:1px;">
    <br />
        <asp:Label ID="Label27" runat="server" Text="Product Information" ForeColor="DarkRed" Height="20px"></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Text="Product Name ="></asp:Label>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text="Product Desc ="></asp:Label>
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Text="Product Brand ="></asp:Label>
        <asp:Label ID="Label6" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label7" runat="server" Text=" Product Price ="></asp:Label>
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label9" runat="server" Text="Product Qty ="></asp:Label>
        <asp:Label ID="Label10" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="ls1" runat="server" Text="Product Height(mm) ="></asp:Label>
        <asp:Label ID="ls2" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="ls3" runat="server" Text="Product width(mm) ="></asp:Label>
        <asp:Label ID="ls4" runat="server" Text=""></asp:Label><br />
        <br />
        <asp:Label ID="Label28" runat="server" Text="Metal Information" ForeColor="DarkRed" Height="20px"></asp:Label><br />
        <asp:Label ID="Label11" runat="server" Text="Metal ="></asp:Label>
        <asp:Label ID="Label12" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label13" runat="server" Text="Metal purity ="></asp:Label>
        <asp:Label ID="Label14" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label15" runat="server" Text="Metal certification ="></asp:Label>
        <asp:Label ID="Label16" runat="server" Text=""></asp:Label><br />
        <br />
        <asp:Label ID="Label29" runat="server" Text="Diamonds Information" BorderStyle="None" Height="20px" ForeColor="DarkRed"></asp:Label> <br />
        <asp:Label ID="Label17" runat="server" Text="Diamondos ="></asp:Label>
        <asp:Label ID="Label18" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label19" runat="server" Text="Diamondo weight ="></asp:Label>
        <asp:Label ID="Label20" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label21" runat="server" Text="Diamondo clarity ="></asp:Label>
        <asp:Label ID="Label22" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label23" runat="server" Text="Diamondo color ="></asp:Label>
        <asp:Label ID="Label24" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label25" runat="server" Text="Diamondo shape ="></asp:Label>
        <asp:Label ID="Label26" runat="server" Text=""></asp:Label><br />
        <br />
        </div>
       </div>
    <br />
    <table>
        <tr><td style="width: 1436px"></td></tr>
        <tr> 
           <td style="width: 1436px">  <asp:Label ID="l2" runat="server" Text="Enter quantity"></asp:Label></td></tr>
        <tr>
            <td style="width: 427px"><asp:TextBox ID="t1" runat="server" CssClass="field" Width="244px" ></asp:TextBox></td></tr>
        <tr>
            <td ><asp:Button ID="b1" runat="server" Text="Add to cart" OnClick="b1_Click" Height="26px" Width="97px" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" style="margin:12px 0 10px 0;display:block;cursor:pointer;border:0;" />  </td>
   </tr>
        <tr>
            <td style="width: 1436px"><asp:Label ID="l1" runat="server" ForeColor="Red"></asp:Label>  </td>
        </tr>
        </table>
       
</asp:Content>

