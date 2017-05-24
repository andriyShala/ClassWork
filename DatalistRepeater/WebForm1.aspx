<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DatalistRepeater.WebForm1" %>
<style type="text/css">
    .myPanelClass { max-height: 70%; overflow: auto;max-width: 70%; }
</style>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel  CssClass="myPanelClass" ID="Panel1" runat="server" ScrollBars="Vertical">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnDeleteCommand="DataList1_DeleteCommand" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand">
            <HeaderTemplate>
                <table>
                    <thead>
                     <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Button</td>
                        <td>Button</td>
                    </tr>
                    </thead>
                   
              
            </HeaderTemplate>
          
            <ItemTemplate>
                <tr>
                    <td>
                      <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                          <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                    <td>
                      <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                    <asp:Button runat="server" ID="but1" CommandName="Select" Text="Select"/>
                    </td>
                    <td>
                        <asp:Button runat="server" ID="Button1" CommandName="Delete" Text="Delete" CommandArgument='<%# Eval("ID") %>'/>
                    </td>
                     <td>
                    <asp:Button runat="server" ID="Button3" CommandName="Edit" Text="Edit"  CommandArgument='<%# Eval("ID") %>'/>
                    </td>
                </tr>
            </ItemTemplate>
            <EditItemTemplate>
                <tr>
                    <td>
                        <asp:TextBox ReadOnly="True" runat="server" ID="idText" Text='<%# Eval("ID") %>' />
                    </td>
                     <td>
                        <asp:TextBox runat="server" ID="nameTextBox" Text='<%# Eval("Name") %>' />
                    </td>
                     <td>
                        <asp:TextBox runat="server" ID="priceTextBox" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                    <asp:Button runat="server" ID="Button3" CommandName="Cancel" Text="Cancel"  />
                        
                    </td>
                    <td>
                    <asp:Button runat="server" ID="Button2" CommandName="Update" Text="Update"  CommandArgument='<%# Eval("ID") %>'/>
                        
                    </td>
                </tr>
            </EditItemTemplate>
          <FooterTemplate></table></FooterTemplate>
        </asp:DataList>
    </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:datalistConnectionString %>" SelectCommand="SELECT * FROM [Table_1]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
