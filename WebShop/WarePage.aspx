<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site1.Master" AutoEventWireup="true" CodeBehind="WarePage.aspx.cs" Inherits="WebShop.WarePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceNavigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceContent" runat="server">
    <asp:Table runat="server" Width="100%">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label CssClass="labelPageWare"   ID="Label1" runat="server" Text="sad"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Price: "></asp:Label>
                <asp:Label ID="LabelPrice" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Image CssClass="imagePageWare" ID="Image1" runat="server" />
            </asp:TableCell>
        </asp:TableRow> 
    <asp:TableRow>
        <asp:TableCell>
            <hr />
            <asp:TextBox CssClass="textboxPageWare" ReadOnly="true" TextMode="MultiLine" ID="TextBox1" runat="server"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button CssClass="labelPageWare" ID="Button1" runat="server" Text="Купить" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceFooter" runat="server">
</asp:Content>
