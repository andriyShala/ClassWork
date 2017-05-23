<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="User_Control.WebForm1" %>
<%@ Register src="~/UserControl1.ascx" tagName="MyCtrl" tagPrefix="myasp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <myasp:MyCtrl ID="myctrl1" runat="server"  OnSucceedLogin="myctrl1_OnSucceedLogin" OnLogin="myctrl1_OnLogin"/>
    </div>
    </form>
</body>
</html>
