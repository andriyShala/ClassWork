<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="Ware.ascx.cs" Inherits="WebShop.Controls.Ware" %>
<style type="text/css">
    .Images{
          width:245px;
    height:200px;
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
        float:right;
        
    }
    .LabelDiscription{
        visibility:hidden;
    }
</style>
<script src="../Script/jquery-3.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#<%=Panel1.ClientID%>').mouseover(function () {
            $(this).css("height", "340px");
            $('#<%=LabelDiscription.ClientID%>').css("visibility", "visible");
            $('#<%=Label2.ClientID%>').css("visibility", "visible");
        });
        $('#<%=Panel1.ClientID%>').mouseleave(function () {
            $(this).css("height", "264px");
            $('#<%=LabelDiscription.ClientID%>').css("visibility", "hidden");
                $('#<%=Label2.ClientID%>').css("visibility", "hidden");
        });
    });
   
</script>
<asp:Panel  CssClass="style"  ID="Panel1" runat="server" Height="264px" Width="250px">
    <asp:Table runat="server" Width="100%" Height="231px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:LinkButton ID="LabelTitle" OnClick="LabelTitle_Click" runat="server" Text="Title"></asp:LinkButton>
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
            <asp:Image ID="Images1" CssClass="Images"  runat="server" ImageUrl="~/Image/default-thumbnail.jpg" />
        </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1"  runat="server" Text="Цена:"></asp:Label>
                <asp:Label ID="LabelPrice" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button1" CssClass="styleButtonBy" runat="server" OnClick="Button1_Click" Text="Купить" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <hr />
                <asp:Label CssClass="LabelDiscription" ID="Label2" runat="server" Text="Опис: "></asp:Label>
                <asp:Label CssClass="LabelDiscription"  ID="LabelDiscription" runat="server" Text="asd"></asp:Label>
                <asp:Label Visible="false" ID="Label3" runat="server"  Text=""></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Panel>
