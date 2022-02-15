<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QrCode.aspx.cs" Inherits="ECSSO.QrCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">        
    <asp:HiddenField ID="siteid" runat="server" />
    <asp:HiddenField ID="language" runat="server" />
    <asp:HiddenField ID="returnurl" runat="server" />
    <asp:HiddenField ID="CheckM" runat="server" />
    <asp:HiddenField ID="MemberID" runat="server" />
    <div>        
        <asp:Image ID="Image1" runat="server" />
    </div>
    </form>
</body>
</html>
