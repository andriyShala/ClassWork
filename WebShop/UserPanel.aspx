<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site1.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="WebShop.UserPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceNavigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceContent" runat="server">
    <div class="div1Acaunt" id="div1">
        <asp:label runat="server" text="Ваш Товар"></asp:label>
    </div>
    <div class="div2Acaunt" id="div2">
        <asp:Table runat="server">
 
            <asp:TableRow>
                <asp:TableCell>
                      <asp:label runat="server" text="Новий товар"></asp:label> 
                </asp:TableCell>
            </asp:TableRow>
                       <asp:TableRow>
                <asp:TableCell>
                    <asp:Label cssClass="div2AcauntTitle" ID="Label3" runat="server" Text="Сатегорія"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                       <asp:label runat="server" text="Заголовок" cssClass="div2AcauntTitle"></asp:label>
                    <asp:TextBox ID="textBoxTitle" cssClass="div2AcauntTitleText" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:label cssClass="div2AcauntTitle" runat="server" text="Ціна"></asp:label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" EnableClientScript="false" ControlToValidate="TextBox1" runat="server" ErrorMessage="Неправильна Ціна" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label cssClass="div2AcauntTitle" ID="Label1" runat="server" Text="Зображення"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Завантажити" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:image runat="server" cssClass="div2AcauntImage"></asp:image>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Опис"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox TextMode="MultiLine" ID="TextBox2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button OnClick="Button2_Click" ID="Button2" runat="server" Text="Добавить Товар" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
     
       
       
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceFooter" runat="server">
</asp:Content>
