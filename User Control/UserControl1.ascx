<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl1.ascx.cs" Inherits="User_Control.UserControl1" %>

<asp:Table ID="Table1" runat="server" Height="80px" Width="127px">
    <asp:TableRow runat="server">
        <asp:TableCell runat="server">
            <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
        </asp:TableCell>
       <asp:TableCell runat="server">
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow runat="server">
        <asp:TableCell runat="server">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </asp:TableCell>
       <asp:TableCell runat="server">
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow runat="server">
        <asp:TableCell runat="server"></asp:TableCell>
        <asp:TableCell runat="server">
            <asp:Button ID="Button1" runat="server" Text="Ok" />
        </asp:TableCell>
        
    </asp:TableRow>
</asp:Table>

