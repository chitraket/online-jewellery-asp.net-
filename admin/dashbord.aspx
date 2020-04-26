<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="dashbord.aspx.cs" Inherits="admin_dashbord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <h1>Dashbord</h1>
   
    <asp:Panel ID="Panel1" runat="server" BorderColor="#214761" Height="66px" Width="168px" BackColor="#214761">
       <center> <asp:Label ID="Label1" runat="server" Text="Total Product" ForeColor="White" Height="23px" Width="108px"></asp:Label><br /></center>
        <center><asp:Label ID="Label2" runat="server" Text="0" ForeColor="White" Height="50px" Width="24px"></asp:Label></center>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" BorderColor="#214761" Height="66px" Width="166px" BackColor="#214761" style="margin-left: 0px; margin-top: 0px">
       <center> <asp:Label ID="Label3" runat="server" Text="Total Catagory" ForeColor="White" Height="23px" Width="108px"></asp:Label><br /></center>
        <center><asp:Label ID="Label4" runat="server" Text="0" ForeColor="White" Height="50px" Width="24px"></asp:Label></center>
    </asp:Panel>
    <br />
     <asp:Panel ID="Panel3" runat="server" BorderColor="#214761" Height="66px" Width="168px" BackColor="#214761">
       <center> <asp:Label ID="Label5" runat="server" Text="Total User" ForeColor="White" Height="23px" Width="108px"></asp:Label><br /></center>
        <center><asp:Label ID="Label6" runat="server" Text="0" ForeColor="White" Height="50px" Width="24px"></asp:Label></center>
    </asp:Panel>
    <br />
     <asp:Panel ID="Panel4" runat="server" BorderColor="#214761" Height="66px" Width="168px" BackColor="#214761">
       <center> <asp:Label ID="Label7" runat="server" Text="Total Orders" ForeColor="White" Height="23px" Width="108px"></asp:Label><br /></center>
        <center><asp:Label ID="Label8" runat="server" Text="0" ForeColor="White" Height="50px" Width="24px"></asp:Label></center>
    </asp:Panel>
     <br />
      <asp:Panel ID="Panel6" runat="server" BorderColor="#214761" Height="66px" Width="168px" BackColor="#214761">
       <center> <asp:Label ID="Label11" runat="server" Text="Total Coupon" ForeColor="White" Height="23px" Width="108px"></asp:Label><br /></center>
        <center><asp:Label ID="Label12" runat="server" Text="0" ForeColor="White" Height="50px" Width="24px"></asp:Label></center>
    </asp:Panel>
     <br />
      <asp:Panel ID="Panel7" runat="server" BorderColor="#214761" Height="66px" Width="168px" BackColor="#214761">
       <center> <asp:Label ID="Label13" runat="server" Text="Total Pincode" ForeColor="White" Height="23px" Width="108px"></asp:Label><br /></center>
        <center><asp:Label ID="Label14" runat="server" Text="0" ForeColor="White" Height="50px" Width="24px"></asp:Label></center>
    </asp:Panel>
     <br />
     <asp:Panel ID="Panel5" runat="server" BorderColor="#214761" Height="66px" Width="168px" BackColor="#214761">
       <center> <asp:Label ID="Label9" runat="server" Text="Total Feedback" ForeColor="White" Height="23px" Width="108px"></asp:Label><br /></center>
        <center><asp:Label ID="Label10" runat="server" Text="0" ForeColor="White" Height="50px" Width="24px"></asp:Label></center>
    </asp:Panel>
</asp:Content>


