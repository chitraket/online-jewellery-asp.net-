<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="user_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
  <h1>Registration</h1>
    <br />
    <table>
        <tr>
            <td style="height: 14px; width: 376px;">First Name</td></tr>
            <tr><td style=" width: 376px;"><asp:TextBox ID="TextBox1" runat="server" CssClass="field" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td> 
        </tr>
       <tr>
           <td style="width: 376px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid name" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
               </td>
           <td>
                &nbsp;</td>
       </tr>
        <tr>
            <td style="width: 376px">Last Name</td></tr>
           <tr> <td style="width: 376px"><asp:TextBox ID="TextBox2" runat="server" CssClass="field" Width="242px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 376px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid name" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">Email Id</td></tr>
           <tr> <td style="width: 376px"><asp:TextBox ID="TextBox3" CssClass="field" runat="server" Width="242px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter email id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td></tr>
         <tr>
            <td style="width: 376px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid email id" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="Label3" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 18px; width: 376px;">Address</tr>
          <tr>  <td style="width: 376px"><asp:TextBox ID="TextBox5" runat="server" CssClass="field" Height="50px" TextMode="MultiLine" Width="242px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="height: 18px; width: 376px;"></td>
            <td style="height: 18px">

            </td>
        </tr>
        <tr>
            <td style="width: 376px">City</td></tr>
            <tr><td style="width: 376px"><asp:TextBox ID="TextBox6" CssClass="field" runat="server" Width="240px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter city" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 376px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid City" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">State</td></tr>
           <tr> <td style="width: 376px"><asp:TextBox ID="TextBox7" CssClass="field" runat="server" Width="242px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter state" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 376px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid state" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
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
            <td style="width: 376px">Mobile Number</td></tr>
          <tr>  <td style="width: 376px"><asp:TextBox ID="TextBox9" CssClass="field" runat="server" Width="242px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter mobile number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 376px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="invalid mobile number" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                <asp:Label ID="Label4" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>

            <td style="width: 376px">Password</td></tr>
          <tr>  <td style="width: 376px"><asp:TextBox ID="TextBox4" CssClass="field" runat="server" TextMode="Password" Width="241px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 376px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Password" ForeColor="#CC0000" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Confirm Password</td>
        </tr>
        <tr>
            <td style="width: 376px"><asp:TextBox ID="TextBox10" CssClass="field" runat="server" TextMode="Password" Width="241px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 376px">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" Width="134px" BackColor="DarkRed" BorderColor="DarkRed" ForeColor="White" Height="30px" BorderStyle="None" />
            </td>
        </tr>
    </table>
</asp:Content>

