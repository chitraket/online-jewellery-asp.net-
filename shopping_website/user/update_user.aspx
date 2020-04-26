<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="update_user.aspx.cs" Inherits="user_update_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Update Information</h1>
    <br />
     <table>
      <tr>
          <td style="width: 349px">firstname</td></tr>
         <tr>
          <td style="width: 349px"><asp:TextBox ID="t1" runat="server" CssClass="field" Width="244px" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Enter name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
         <tr>
             <td style="width: 349px">
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Invalid name" ForeColor="#CC0000" ValidationExpression="[a-zA-Z  ]*$"></asp:RegularExpressionValidator>
              </td>
             <td>
                 &nbsp;</td>
         </tr>
      <tr>
          <td style="width: 349px">lastname</td></tr>
         <tr>
          <td style="width: 349px"><asp:TextBox ID="t2" runat="server" CssClass="field" Width="244px" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Enter name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
         <tr>
             <td style="width: 349px">
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Invalid name" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
              </td>
             <td>
                 &nbsp;</td>
         </tr>
      <tr>
          <td style="width: 349px">Address</td></tr>
         <tr>
          <td style="width: 349px"><asp:TextBox ID="t3" runat="server" Height="63px" TextMode="MultiLine" CssClass="field" Width="244px" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t3" ErrorMessage="Enter Address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
         <tr>
         <td style="width: 349px"></td>
         <td><br /></td>
          </tr>
          <tr>
            <td style="width: 349px">Email Id</td></tr>
         <tr>
            <td style="width: 349px"><asp:TextBox ID="TextBox3" runat="server" CssClass="field" Width="244px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter email id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td></tr>
         <tr>
            <td style="width: 349px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid email id" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
      <tr>
          <td style="width: 349px">city</td></tr>
         <tr>
          <td style="width: 349px"><asp:TextBox ID="t4" runat="server" CssClass="field" Width="244px" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t4" ErrorMessage="Enter city" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
         <tr>
             <td style="width: 349px">
              <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="t4" ErrorMessage="Invalid City" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
             </td>
             <td>
                 &nbsp;</td>
         </tr>
      <tr>
          <td style="width: 349px">state</td></tr>
         <tr>
          <td style="width: 349px"><asp:TextBox ID="t5" runat="server" CssClass="field" Width="244px" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="t5" ErrorMessage="Enter state" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
         <tr>
             <td style="width: 349px">
              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="t5" ErrorMessage="Invalid state" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
              </td>
             <td>
                 &nbsp;</td>
         </tr>
      <tr>
          <td style="width: 349px">mobile</td></tr>
         <tr>
          <td style="width: 349px"><asp:TextBox ID="t6" runat="server" CssClass="field" Width="244px" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="t6" ErrorMessage="Enter Mobile" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
      </tr>
         <tr>
             <td style="width: 349px">
              <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="t6" ErrorMessage="Invalid Mobile" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
              </td>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
         <td style="width: 349px">Password</td></tr>
         <tr>
            <td style="width: 349px"><asp:TextBox ID="TextBox4" runat="server" CssClass="field" Width="244px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 349px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Password" ForeColor="#CC0000" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr><td style="width: 349px"></td><td></td></tr>
      <tr>
          <td style="width: 349px">
              <asp:Button ID="b1" runat="server" Text="Update" OnClick="b1_Click" BackColor="DarkRed" BorderColor="DarkRed" BorderStyle="None" ForeColor="White" Height="26px" Width="103px" />
          </td>
          <td>
              &nbsp;</td>
      </tr>
  </table>
</asp:Content>

