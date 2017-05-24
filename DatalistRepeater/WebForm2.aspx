<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="DatalistRepeater.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Table runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Button ID ="Button1" runat="server" Text='<%#Eval("ALF")%>' OnClick="Button1_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </ItemTemplate>
    </asp:DataList>
        <asp:DataList runat="server" ID="DataList2" ExtractTemplateRows="True" GridLines="Both" RepeatColumns="2" RepeatDirection="Horizontal">  
        <HeaderTemplate>
            <asp:Table runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Font-Bold="true" ForeColor="Red" BackColor="LavenderBlush">
                        Name
                    </asp:TableCell>         
                     <asp:TableCell ID="tablecell" runat="server" Font-Bold="true" ForeColor="Blue" BackColor="LavenderBlush">
                        TEL
                    </asp:TableCell>  
                </asp:TableRow>
            </asp:Table>
        </HeaderTemplate>
            <ItemTemplate>
                <asp:Table runat="server">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <%#Eval("Name")%>
                        </asp:TableCell>
                         <asp:TableCell runat="server">
                            <%#Eval("TEL")%>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
