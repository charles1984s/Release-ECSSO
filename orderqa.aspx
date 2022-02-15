<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderqa.aspx.cs" Inherits="ECSSO.orderqa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>    
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="siteid" runat="server" />
        <asp:HiddenField ID="language" runat="server" />
        <asp:HiddenField ID="OrderNo" runat="server" />
    <div class="container">
        <div class="row">
            <div class="col-md-12">   
                <asp:TextBox ID="QuestionText" runat="server" Height="60px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />
            </div>
        </div>
        <div class="row" id="OrderQA" runat="server">

        </div>
    </div>
    </form>
</body>
</html>
