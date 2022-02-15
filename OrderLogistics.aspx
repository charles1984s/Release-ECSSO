<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderLogistics.aspx.cs" Inherits="ECSSO.OrderLogistics" %>

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
        <asp:HiddenField ID="OrderNo" runat="server" />
    <div class="container">
        
        <div class="row" id="OrderQA" runat="server">

        </div>
    </div>
    </form>
</body>
</html>
