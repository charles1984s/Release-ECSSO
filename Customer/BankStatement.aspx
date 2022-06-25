<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankStatement.aspx.cs" Inherits="ECSSO.Customer.BankStatement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>列印對帳單</title>
    <link href="/Content/bootstrap.min.css"rel="stylesheet" />
    <link href="/Scripts/footable/css/footable.bootstrap.min.css" rel="stylesheet"  />
    <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
    <style type="text/css">
        .table {
            text-align:left;
        }
        .pager {
            position:relative;
        }
        #close {
            float:right;
            color:#933;
            font-size:2rem;
            font-weight:600;
        }
    </style>
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
    <div class="container">
        <div id="Master" class="pager hidden">
            <table class="table table-striped table-hover empty"></table>
        </div>
        <div id="Detail" class="pager hidden">
            <h2 class="title">
                <span>詳細資料</span>
                <a id="close" class="ctrl" href="#">
                    <i class="glyphicon glyphicon-remove"></i>
                </a>
            </h2>
            <table class="table table-striped table-hover empty"></table>
        </div>
    </div>
    
    <script src="/Scripts/footable/js/footable.min.js"></script>
    <script type="text/javascript" src="/Scripts/bootstrap.min.js"></script>
    <script>
        $.extend({
            getMaster: function (data) {
                data.type = "List";
                return $.ajax({
                    url: "/api/Order/BankStatement.ashx",
                    type: "POST",
                    contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                    data: data,
                    dataType: "json",
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("token", $(document).data("talken"));
                    }
                });
            },
            getDetail: function (data) {
                data.type = "Detail";
                return $.ajax({
                    url: "/api/Order/BankStatement.ashx",
                    type: "POST",
                    contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                    data: data,
                    dataType: "json",
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("token", $(document).data("talken"));
                    }
                });
            }
        });
        $.fn.extend({
            changePage: function () {
                $(".pager").addClass("hidden");
                $(this).removeClass("hidden");
            },
            setDetail: function (row) {
                var self = this;
                $.getDetail({
                    id: row.id,
                    sitid: $("#siteid").val(),
                    memid: $("#MemID").val()
                }).done(function (result) {
                    var $table = $(self).find(".table").first();
                    if ($table.data("ft") == null) {
                        ft = FooTable.init($table, result.table);
                        $table.data("ft", ft);
                    } else {
                        $table.data("ft").rows.load(result.table.rows);
                    }
                    $(self).changePage();
                });
            },
            setMaster: function () {
                var self = this;
                $.getMaster({
                    sitid: $("#siteid").val(),
                    memid: $("#MemID").val()
                }).done(function (result) {
                    var $table = $("#Master").find(".table").first();
                    var ft = null
                    result.table.on = {
                        "draw.ft.table": function (e, ft) {
                            var $rows = $table.find("tbody>tr");
                            $rows.off("click").on("click", function (e) {
                                e.preventDefault();
                                var row = FooTable.getRow(this);
                                $("#Detail").setDetail(row.value);
                            });
                        }
                    };
                    if ($table.data("ft") == null) {
                        ft = FooTable.init($table, result.table);
                        $table.data("ft", ft);
                    } else {
                        $table.data("ft").rows.load(result.table.rows);
                    }
                    $(self).changePage();
                });
            }
        });
        jQuery(function ($) {
            $("#Master").setMaster();
            $("#close").on("click", function (e) {
                e.preventDefault();
                $("#Master").changePage();
            });
            window.setInterval(function () {
                parent.doIframe && parent.doIframe();
            },1000);
            /*$.post('/api/Order/BankStatement.ashx', {
                type:"Detail",
                sitid: $("#siteid").val(),
                memid: $("#MemID").val()
            }, function (response) {
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
            */
        });
    </script>
</body>
</html>
