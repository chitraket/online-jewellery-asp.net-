<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="payment_gateway.aspx.cs" Inherits="user_payment_gateway" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Payment</h1>
    <br />
           <table>
               <tr>
                   <td>Transation ID</td>
                   <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
               </tr>

               <tr>
                   <td><br /></td>
               </tr>
      <tr>
          <td style="width: 384px">Name </td>
          <td>
              <asp:Label ID="t2" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          </td>
      </tr>
                <tr>
                   <td style="width: 384px"><br /></td>
               </tr>
       <tr>
          <td style="width: 384px">Address </td>
           <td>
           <asp:Label ID="t3" runat="server" Text="Label"></asp:Label>
           </td>
      </tr>
                <tr>
                   <td style="width: 384px"><br /></td>
               </tr>

                <tr>
          <td style="width: 384px">Pincode</td>
           <td>
           <asp:Label ID="t7" runat="server" Text="Label"></asp:Label>
           </td>
      </tr>
                <tr>
                   <td style="width: 384px"><br /></td>
               </tr>


      <tr>
          <td style="width: 384px">Mobile Number </td>
           <td>
          <asp:Label ID="t10" runat="server" Text="Label"></asp:Label>
          </td>
      </tr>
                <tr>
                   <td style="width: 384px"><br /></td>
               </tr>
      <tr>
          <td style="width: 384px">Email </td>
           <td>
          <asp:Label ID="t4" runat="server" Text="Label"></asp:Label>
          </td>
      </tr>
                <tr>
                   <td style="width: 384px"><br /></td>
               </tr>

        <tr>

          <td style="width: 384px">Amount </td>
          <td>
              <asp:Label ID="t1" runat="server" Text="Label"></asp:Label>
            </td>
      </tr>
                <tr>
                   <td style="width: 384px"><br /></td>
               </tr>
      <tr>
          <td colspan="5" style="height: 28px">
        
      <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
              <asp:Button ID="b1" runat="server" Text="Payment" OnClick="b1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="26px" Width="103px" />
          </td>
      </tr>          
      </table>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               `
</asp:Content>

