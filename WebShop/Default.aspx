<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebShop.Default" %>

<%@ Register Src="~/Controls/basket.ascx" TagName="backet" TagPrefix="myasp" %>
<%@ Register Src="~/Controls/Ware.ascx" TagPrefix="myasp" TagName="myCntrls" %>
<%@ Register Src="~/Controls/WareMax.ascx" TagPrefix="myasp" TagName="WareMax" %>
<%@ Register Src="~/Controls/AuntificationControl.ascx" TagPrefix="myasp" TagName="Auntification" %>
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHeader" runat="server">
     <myasp:backet ID="backet1" runat="server"></myasp:backet>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceNavigation"  runat="server">  
    <myasp:Auntification  ID="aut1" runat="server"></myasp:Auntification>
</asp:Content> 

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceContent" runat="server" >
    <asp:Panel ID="panelContent" runat="server" Height="100%" HorizontalAlign="NotSet" ScrollBars="Auto">
        <asp:DataList ID="datalist" Width="100%" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <asp:Table runat="server">
                    <asp:TableRow Height="500px">  
                        <asp:TableCell>
                       <myasp:WareMax runat="server" ID="warer1"   Title='<%#Eval("title")%>'  Price='<%#Eval("price")%>' Descriptions='<%#Eval("description")%>' IDs='<%#Eval("id")%>'></myasp:WareMax> 
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceFooter" runat="server">
   
</asp:Content>
