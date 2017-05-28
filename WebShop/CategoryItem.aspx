<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="CategoryItem.aspx.cs" Inherits="WebShop.CategoryItem" %>
<%@ Register  src="~/Controls/Ware.ascx" TagName="Ware" TagPrefix="myasp"%>
<%@ Register Src="~/Controls/basket.ascx" TagName="backet" TagPrefix="myasp" %>

    
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHeader" runat="server">
    <myasp:backet ID="backet1"  runat="server"></myasp:backet>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceNavigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceContent" runat="server">
 
    <asp:Panel  ID="panelContent" runat="server" Height="100%" HorizontalAlign="NotSet" ScrollBars="Auto">
    <asp:DataList ID="datalist" Width="100%" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <asp:Table runat="server">
                <asp:TableRow Height="350px">
                    <asp:TableCell>
                       <myasp:Ware  runat="server" ID="warer1"   Title='<%#Eval("title")%>'  Price='<%#Eval("price")%>' Descriptions='<%#Eval("description")%>' IDs='<%#Eval("id")%>' ></myasp:Ware>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </ItemTemplate>
    </asp:DataList>
        </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceFooter" runat="server">
</asp:Content>
