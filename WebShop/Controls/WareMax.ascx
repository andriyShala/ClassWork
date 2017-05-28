<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WareMax.ascx.cs" Inherits="WebShop.Controls.WareMax" %>
<style type="text/css">
    .Images{
          width:400px;
    height:400px;
    }
    .Title{
        
        text-align:center;
    }
    .style{
        margin-left:20px;
        border:solid;
        border-width:2px;
    }
    .styleButtonBy{
        margin-left:220px;
    }
</style>
<asp:Panel CssClass="style" ID="Panel1" runat="server" Height="464px" Width="405px">
    <asp:Table runat="server" Height="431px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:LinkButton CssClass="Title" ID="LabelTitle" runat="server" OnClick="LabelTitle_Click" Text="Title"></asp:LinkButton>
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
            <asp:Image ID="Images" CssClass="Images"  runat="server" ImageUrl="~/Image/default-thumbnail.jpg" />
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="Цена:"></asp:Label>
                <asp:Label ID="LabelPrice" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button2" CssClass="styleButtonBy" runat="server" OnClick="Button2_Click" Text="Купить" />
                <asp:Label ID="Label2" Visible="false" runat="server" Text="Label"></asp:Label>
                  <asp:Label ID="Label3" Visible="false" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Panel>
