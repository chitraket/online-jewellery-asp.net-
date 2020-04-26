<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="update_order_details.aspx.cs" Inherits="user_update_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Information</h1>
    <br />
    <table>
      <tr>
          <td>Firstname</td>
          </tr>
          <tr><td style=" width: 334px;"><asp:TextBox ID="t1" runat="server" CssClass="field" Width="244px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Enter name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </td>
      </tr>
        <tr>
            <td>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Invalid name" ForeColor="#CC0000" ValidationExpression="[a-zA-z  ]*$"></asp:RegularExpressionValidator>
              </td>
            <td>
                &nbsp;</td>
        </tr>
      <tr>
          <td>Lastname</td></tr>
        <tr>
          <td style=" width: 334px;"><asp:TextBox ID="t2" runat="server" CssClass="field" Width="244px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Enter name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            
          </td>
      </tr>
        <tr>
           <td style="height: 18px">
               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Invalid name" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
              </td>
            <td style="height: 18px">
                &nbsp;</td>
        </tr>
      <tr>
          <td>Address</td>
          </tr>
        <tr>
          <td style="width: 334px"><asp:TextBox ID="t3" runat="server" CssClass="field" Height="50px" TextMode="MultiLine" Width="242px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t3" ErrorMessage="Enter Address" ForeColor="#CC0000"></asp:RequiredFieldValidator> 
          </td>
      </tr>
       <tr>
            <td style="height: 18px"></td>
            <td style="height: 18px">

            </td>
        </tr>
          <tr>
            <td style="width: 376px">Pincode</td></tr>
           <tr> <td style="width: 376px"><asp:TextBox ID="TextBox8" CssClass="field" runat="server" Width="243px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter pincode" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  
            </td>
        </tr>
         <tr>
            <td style="width: 376px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="invalid pincode" ForeColor="#CC0000" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
      <tr>
          <td>City</td>
          </tr>
        <tr>
          <td style="width: 334px"><asp:TextBox ID="t4" runat="server" CssClass="field" Width="244px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t4" ErrorMessage="Enter city" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
        <tr>
            <td>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="t4" ErrorMessage="Invalid City" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
              </td>
            <td>
                &nbsp;</td>
        </tr>
      <tr>
          <td>State</td>
          </tr>
        <tr>
          <td style="width: 334px"><asp:TextBox ID="t5" runat="server" CssClass="field" Width="244px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="t5" ErrorMessage="Enter state" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
        <tr>
            <td>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="t5" ErrorMessage="Invalid state" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
              </td>
            <td>
                &nbsp;</td>
        </tr>
      <tr>
          <td>Mobile</td>
          </tr>
        <tr>
          <td style="width: 334px"><asp:TextBox ID="t6" runat="server" CssClass="field" Width="244px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="t6" ErrorMessage="Enter mobile" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
        <tr>
            <td>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="t6" ErrorMessage="Invalid Mobile" ForeColor="#CC0000" ValidationExpression="[0-9]{10}" BorderStyle="None"></asp:RegularExpressionValidator>
              </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="L3" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label></td>
        </tr>
      <tr>
          <td>
          <asp:Button ID="b1" runat="server" Text="Update and continue" OnClick="b1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="29px" Width="147px" />
          </td>
          <td>
              &nbsp;</td>
      </tr>
  </table>
</asp:Content>

