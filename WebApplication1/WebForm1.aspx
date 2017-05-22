<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 140px">
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" Width="101px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox2" runat="server" Height="16px" ReadOnly="True" style="margin-top: 1px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Convert" />
    
    </div>
    </form>
</body>
</html>
