<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testallpay.aspx.cs" Inherits="ECSSO.testallpay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Button ID="Button4" runat="server" Text="綁定信用卡卡號" OnClick="Button4_Click" />        
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="">請選擇卡號</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" Text="取得卡號" OnClick="Button3_Click" />
        <br />  
        <br />  
        <asp:Button ID="Button5" runat="server" Text="消費授權" OnClick="Button5_Click" />  
        <asp:Button ID="Button7" runat="server" Text="修改信用卡卡號" OnClick="Button7_Click" /> 
        <asp:Button ID="Button6" runat="server" Text="取消信用卡綁定" OnClick="Button6_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
