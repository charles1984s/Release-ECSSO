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
        .sum {
            text-align:right;
        }
        .price {
            font-size: 2rem;
            color: #933;
            font-weight: bold;
            font-family: fantasy;
            text-shadow: none;
            margin: 0 1rem;
        }
        .price:before {
            content:"$"
        }
        .footable-filtering .dropdown-menu>li>a.checkbox {
            border-radius: 0;
            border-top: 0;
        }
        .footable-filtering .dropdown-menu > li:last-child > a.checkbox {
            border-bottom:0;
        }
        #tables>.tableItem>h3 {
            margin: 2rem 0 0 0.5rem;
            padding: 1rem;
            font-weight: 600;
            color: #457b9d;
            text-align: left;
            border-bottom: #457b9d solid 2px;
            background:#caf0f8;
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
            <div id="tables">
                <div class="tableItem">
                    <h3></h3>
                    <table class="table table-striped table-hover empty"></table>
                    <div class="sum">
                        <span class="title">總計</span>
                        <span class="price"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="/Scripts/footable/js/footable.min.js"></script>
    <script type="text/javascript" src="/Scripts/bootstrap.min.js"></script>
    <script>
        function format(num) {
            var reg = /\d{1,3}(?=(\d{3})+$)/g;
            return (num + '').replace(reg, '$&,');
        }
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
                    var $c = $("#tables");
                    if (!$c.data("html")) {
                        $c.data("html", $c.html())
                    }
                    $c.empty();
                    console.log(!$c.data("html"));
                    $(result.tableDetails).each(function (index, element) {
                        var $item = $($c.data("html"));
                        var $table = $item.find(".table").first();
                        $item.find("h3").text(element.name);
                        $item.find(".sum>.price").text(format(element.total));
                        console.log($item)
                        $c.append($item);
                        FooTable.init($table, element);
                    });
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
        });
    </script>
</body>
</html>
