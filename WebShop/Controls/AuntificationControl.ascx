<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AuntificationControl.ascx.cs" Inherits="WebShop.AuntificationControl" %>
<style type="text/css">
    .Autification1{
    margin-left:5px
    }
    .cssSS{
        float:right;
        
    }
    .cssStyle {
        max-height:30px;
        float:right;
        margin-left: 106px;
    }
    .Button2{
        margin-left:5px;
        float:left;
        position:fixed;
    }
</style>
<asp:Panel CssClass="cssStyle" ID="Panel1" runat="server" Width="900px" Height="28px" >
       <asp:RequiredFieldValidator EnableClientScript="false" ControlToValidate="TextBoxPassword"  CssClass="Autification1" ID="RequiredFieldValidator1" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
       <asp:Label CssClass="Autification1" ID="Label1" runat="server" Text="Login:"></asp:Label>
    <asp:TextBox CssClass="Autification1" ID="TextBoxLogin" runat="server"></asp:TextBox>
    <asp:Label CssClass="Autification1" ID="Label2" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox TextMode="Password" CssClass="Autification1" ID="TextBoxPassword" runat="server"></asp:TextBox>
       <asp:Button ID="Button1" CssClass="Autification1" runat="server" Text="Sing In" OnClick="Button1_Click" />
    <asp:Button  CssClass="Autification1" ID="Button2" runat="server" Text="Sign Up" OnClick="Button2_Click" />
    <asp:Button CssClass="cssSS" Visible="false" ID="Button3" runat="server" Text="Sing Out" OnClick="Button3_Click" />
       <asp:LinkButton CssClass="cssSS"  ID="LinkButton1" runat="server" Visible="false">LinkButton</asp:LinkButton>
</asp:Panel>

