<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryControl.ascx.cs" Inherits="WebShop.CategoryControl" %>
<asp:Panel  BackColor="Teal" ID="Panel1" runat="server" Width="308px">
    <asp:DataList  runat="server" ID="DataList" RepeatColumns="1" Width="100%" >
        <ItemTemplate>
            <asp:Table runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <button id="but1" title='<%#Eval("Name")%>'> </button>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>


