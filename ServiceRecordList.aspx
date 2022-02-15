<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceRecordList.aspx.cs" Inherits="ECSSO.ServiceRecordList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <title></title>
        <!--[if lt IE 9]>
        <script src="/Scripts/html5shiv.min.js"></script>
        <script src="/Scripts/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <form id="form1" runat="server">
            <asp:HiddenField ID="siteid" runat="server" />
            <asp:HiddenField ID="returnurl" runat="server" />     
            <asp:HiddenField ID="language" runat="server" />
            <asp:HiddenField ID="RID" runat="server" />
            <asp:HiddenField ID="Click_ID" runat="server" />
            <div class="container">
                <div class="row">
                    <div class="col-md-12 listitem">  
                        <div class="panel-group" id="myServiceRecords" runat="server" style="margin-bottom:3px;" role="tablist" aria-multiselectable="true">                
                   
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
        <script type='text/javascript' src="js/jquery.s2t.js"></script>
        <script type="text/javascript">
            $("#myServiceRecords").on('shown.bs.collapse', function () {
                if (!(parent.window == window)) {
                    var $height = parent.window.$(".autoHeight").height();
                    var i = 0;
                    var $timer = setInterval(function () {
                        parent.doIframe && parent.doIframe();
                        if (!!i) {
                            if (parent.window.$(".autoHeight").height() != $height) {
                                $height = parent.window.$(".autoHeight").height();
                            } else {
                                clearInterval($timer);
                            }
                        } else {
                            i++;
                        }
                    }, 150);
                }
            });
            $(document).ready(function () {
                if ($("input[name=language]").val() == "zh-cn") {
                    myInit();
                }
            });
            function myInit() {
                var text = $('#text-result').text();
                $('#text-result').text($.t2s(text));
                $('#content-wap').t2s();
                $('.para').t2s();
            }
            function refreshPage() {         
                document.location.reload();
            }
        </script>
    </body>
</html>
