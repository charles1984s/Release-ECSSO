<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankStatement.aspx.cs" Inherits="ECSSO.Customer.BankStatement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>列印對帳單</title>
    <link href="/Content/bootstrap.min.css"rel="stylesheet" />
    <link href="/Scripts/footable/css/footable.bootstrap.min.css" rel="stylesheet"  />
    <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="siteid" runat="server" />
        <asp:HiddenField ID="returnurl" runat="server" />     
        <asp:HiddenField ID="language" runat="server" />
        <asp:HiddenField ID="RID" runat="server" />
        <asp:HiddenField ID="MemID" runat="server" />
        <asp:HiddenField ID="Click_ID" runat="server" />
    </form>
    <table class="table" data-paging="true" data-sorting="true" ></table>
    <script src="/Scripts/footable/js/footable.min.js"></script>
    <script type="text/javascript" src="/Scripts/bootstrap.min.js"></script>
    <script>
        jQuery(function ($) {
            $.post('/api/Order/BankStatement.ashx', { sitid: $("#siteid").val(), memid: $("#MemID").val() }, function (response) {
                $('.table').footable({
                    "expandFirst": true,
                    "columns": [
                        { name: "orderNumber", title: "訂單編號" },
                        { name: "name", title: "姓名", "sortable": false},
                        { name: "sex", title: "性別", "sortable": false, "breakpoints": "md sm xs " },
                        { name: "cell", title: "電話", "sortable": false, "breakpoints": " sm xs "},
                        { name: "addr", title: "地址", "sortable": false, "breakpoints": "md sm xs "},
                        { name: "mail", title: "電子信箱", "sortable": false, "breakpoints": " sm xs "},
                        { name: "productId", title: "商品編號", "breakpoints": " xs "},
                        { name: "productName", title: "商品名稱", "breakpoints": " xs "},
                        { name: "price", title: "單價"},
                        { name: "qty", title: "數量"},
                        { name: "discount", title: "折扣", "breakpoints": " sm xs "},
                        { name: "amt", title: "價格" },
                        { name: "bouns", title: "紅利", "breakpoints": " sm xs "},
                        { name: "memo", title: "備註", "sortable": false, "breakpoints": "all"}
                    ],
                    "rows": response,
                    "sorting": {
                        "enabled": true
                    }
                });
            }, "json");
            
        });
    </script>
</body>
</html>
