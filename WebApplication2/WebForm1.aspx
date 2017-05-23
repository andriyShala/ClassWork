<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 32px">
    
        <asp:Label ID="Label1" runat="server" Text="RequiredFieldValidator"></asp:Label>
    
        <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>

        <asp:RequiredFieldValidator EnableClientScript="False" ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <input type="submit" runat="server" id="sub" value="submit"/>
        
         </div>
       <div>
           <asp:Label ID="Label2" runat="server" Text="RegularExpressionValidator"></asp:Label>
           <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
           <asp:RegularExpressionValidator EnableClientScript="False" runat="server" ControlToValidate="textEmail" ErrorMessage="notValid" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
       </div>
        <div>
            
            <asp:Label ID="Label3" runat="server" Text="RangeValidator"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RangeValidator EnableClientScript="False" ControlToValidate="TextBox1" ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" Type="Integer" MaximumValue="4" MinimumValue="3"></asp:RangeValidator>
            
        </div>
        <div>
            
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator EnableClientScript="False" ID="CompareValidator1" ControlToValidate="TextBox2" ControlToCompare="TextBox3" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
            
        </div>
    </form>
</body>
</html>
