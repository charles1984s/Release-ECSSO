<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="ECSSO.map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="cMerchantID" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="cMerchantTradeNo" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="cLogisticsSubType" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="cCVSStoreID" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="cCVSStoreName" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="cCVSAddress" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="cCVSTelephone" runat="server"></asp:TextBox><br />
       
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
