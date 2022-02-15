<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ECSSO.HinetAPI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="請輸入您的Email信箱作為會員帳號："></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="265px"></asp:TextBox><asp:Button ID="確定" runat="server" Text="送出" OnClick="確定_Click" /><asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        <br />        
        <asp:Label ID="Label3" runat="server" Text="系統將會發送帳號認證信到您輸入的Email信箱，請於收到認證信10分鐘內開通帳號"></asp:Label>
    </div>
    </form>
</body>
</html>
