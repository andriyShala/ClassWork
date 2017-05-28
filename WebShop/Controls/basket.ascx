<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="basket.ascx.cs" Inherits="WebShop.Controls.basket" %>
<style type="text/css">
    .images{
        margin:0 auto;
        display:block;
    }
    .button{
            margin:0 auto;
        display:block;
        text-align:center;
    }
    .panel1{
        float:right;
    }
    .images:hover{
        opacity:0.4;
    }
</style>
<script src="../Script/jquery-3.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setInterval(timer, 5000);
    });
    function timer()
    {
        alert(document.cookie("backet"));
    }
    </script>
<asp:Panel CssClass="panel1" ID="Panel1" runat="server" Height="99px" Width="113px">
    <asp:Image CssClass="images" ImageUrl="~/Image/shoping.png" ID="Image1" runat="server" Height="71px" Width="85%" />
    <asp:LinkButton CssClass="button" ID="LinkButton1" runat="server" Text="Курзина пуста"></asp:LinkButton>
</asp:Panel>

