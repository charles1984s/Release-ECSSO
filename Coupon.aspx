<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coupon.aspx.cs" Inherits="ECSSO.Coupon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />   
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="siteid" runat="server" />
        <asp:HiddenField ID="language" runat="server" />
        <asp:HiddenField ID="returnurl" runat="server" />
        <asp:HiddenField ID="CheckM" runat="server" />
        <asp:HiddenField ID="MemberID" runat="server" />
        <div class="container">
            <div class="row">
                <div class="col-md-12 listitem">                
                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="1000" />
                    <asp:UpdatePanel ID="StockPricePanel" runat="server" UpdateMode="Conditional">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" />
                    </Triggers>
                    <ContentTemplate>        
                        <asp:Label id="TimeOfPrice" runat="server"></asp:Label>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div class="row">
                <div class="row listitem">
                    <div class='col-md-8 col-xs-8 col-sm-8'>
                        <asp:Label ID="Label2" runat="server" Text="優惠券"></asp:Label></div>
                    <div class='col-md-2 col-xs-2 col-sm-2'>
                        <asp:Label ID="Label1" runat="server" Text="有效期限"></asp:Label></div>
                    <div class='col-md-2 col-xs-2 col-sm-2'>
                        <asp:Label ID="Label3" runat="server" Text="使用優惠券"></asp:Label></div>
                </div>
                <div id="CouponList" runat="server">                
                   
                </div>
            </div>
        </div>
        <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
        <script type='text/javascript' src="js/jquery.s2t.js"></script>
        <script type="text/javascript">            
            function Exchange(SiteID, VCode, GCode, MemberID, CheckM) {
                    $.ajax({
                        type: "POST",
                        url: "api/Coupon.ashx",
                        data: { "SiteID": SiteID, "VCode": VCode, "GCode":GCode,"MemberID": MemberID, "CheckM": CheckM, "Type": "2" },
                        dataType: "html",
                        success: function (result)
                        {
                            if (result.search("success") != -1) {
                                alert("兌換完成");
                                location.reload();
                                return;
                            } else if (result.search("error:0") != -1) {
                                alert("優惠券已過期");
                                return;
                            } else if (result.search("error:1") != -1) {
                                alert("儲存失敗");
                                return;
                            }
                        }
                    });
            }
            
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
            
        </script>
    </form>
</body>
</html>
