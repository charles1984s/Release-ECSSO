<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberEdit.aspx.cs" Inherits="ECSSO.MemberEdit" culture="auto" meta:resourcekey="PageResource2" uiculture="auto" %>

<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="/Scripts/html5shiv.min.js"></script>
    <script src="/Scripts/respond.min.js"></script>
    <![endif]-->
   
</head>
<body class="para">
    <form id="form1" runat="server">
    <asp:HiddenField ID="siteid" runat="server" />
    <asp:HiddenField ID="language" runat="server" />
    <asp:HiddenField ID="test" runat="server" />
    <asp:HiddenField ID="returnurl" runat="server" />
    <asp:HiddenField ID="RID" runat="server" />
    <asp:HiddenField ID="Click_ID" runat="server" />
    <div class="container">
        <div class="row">
            <div class="col-md-12" style=" padding:15px 0px;">
                

                <asp:HyperLink ID="HyperLink1" runat="server" Target="_top">
                    <asp:Label ID="WebTitle" runat="server" 
                    style="font-size:xx-large; font-weight:bold; color:#555555;" 
                    meta:resourcekey="WebTitleResource2"></asp:Label>
                    <asp:Image ID="Image1" runat="server" /></asp:HyperLink>    
                <div id="menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </div>            
            </div>
        </div>
    </div>
    <div class="container tabs01">
        
        <ul class="nav nav-tabs" role="tablist" id="myTab">            
            <li class="active"><a href="#memberedit" role="tab" data-toggle="tab">
                <asp:Label ID="Label1" runat="server" Text="會員資料修改" meta:resourcekey="Label1Resource"></asp:Label>
                </a></li>
            <li runat="server" id="li7"><a href="#QrCode" role="tab" data-toggle="tab">
                <asp:Label ID="Label8" runat="server" Text="會員卡" meta:resourcekey="Label8Resource"></asp:Label>
                </a></li>    
            <li runat="server" id="li1"><a href="#bonuslist" role="tab" data-toggle="tab">
                <asp:Label ID="Label7" runat="server" Text="紅利查詢" meta:resourcekey="Label7Resource"></asp:Label>
                </a></li>    
            <li runat="server" id="li2"><a href="#orderlist" role="tab" data-toggle="tab">
                <asp:Label ID="Label2" runat="server" Text="歷史訂單查詢" meta:resourcekey="Label2Resource"></asp:Label>
                </a></li>     
            <li runat="server" id="li5"><a href="#orderlist2" role="tab" data-toggle="tab">
                <asp:Label ID="Label5" runat="server" Text="歷史訂單查詢" meta:resourcekey="Label5Resource"></asp:Label>
                </a></li>  
            <li runat="server" id="li3"><a href="#VirtualOrderList" role="tab" data-toggle="tab">
                <asp:Label ID="Label3" runat="server" Text="虛擬商品查詢" meta:resourcekey="Label3Resource"></asp:Label>
                </a></li>            
             <li runat="server" id="li4"><a href="#Dealer" role="tab" data-toggle="tab">
                <asp:Label ID="Label4" runat="server" Text="經銷商批購專區" meta:resourcekey="Label4Resource"></asp:Label>
                </a></li>     
            <li runat="server" id="li6"><a href="#QA" role="tab" data-toggle="tab">
                <asp:Label ID="Label6" runat="server" Text="問與答" meta:resourcekey="Label6Resource"></asp:Label>
                </a></li>        
            <li runat="server" id="li8"><a href="#Coupon" role="tab" data-toggle="tab">
                <asp:Label ID="Label9" runat="server" Text="優惠券" meta:resourcekey="Label9Resource"></asp:Label>
                </a></li>       
            <li runat="server" id="li9"><a href="#Credit" role="tab" data-toggle="tab">
                <asp:Label ID="Label10" runat="server" Text="信用卡設定" meta:resourcekey="Label10Resource"></asp:Label>
                </a></li>
            <li runat="server" id="li10"><a href="#ServiceRecordList" role="tab" data-toggle="tab">
                <asp:Label ID="Label11" runat="server" Text="服務紀錄" meta:resourcekey="Label11Resource"></asp:Label>
                </a></li>
            <li runat="server" id="li11"><a href="#StoreType2" role="tab" data-toggle="tab">
                <asp:Label ID="Label12" runat="server" Text="智財局檔案上傳查詢" meta:resourcekey="Label12Resource"></asp:Label>
                </a></li>
            <li runat="server" id="li12"><a href="#BankStatement" role="tab" data-toggle="tab">
                <asp:Label ID="Label14" runat="server" Text="對帳單作業"></asp:Label>
                </a></li> 
       </ul>
        <div id="tabtitle"></div>
        <div class="tab-content">
            <div class="tab-pane active" id="memberedit" runat="server"></div>
            <div class="tab-pane" id="QrCode" runat="server"></div>
            <div class="tab-pane" id="bonuslist" name="bonuslist" runat="server"></div>
            <div class="tab-pane" id="orderlist" name="orderlist" runat="server"></div>
            <div class="tab-pane" id="orderlist2" name="orderlist2" runat="server"></div>
            <div class="tab-pane" id="VirtualOrderList" runat="server"></div>
            <div class="tab-pane" id="Dealer" runat="server"></div>
            <div class="tab-pane" id="QA" runat="server"></div>         
            <div class="tab-pane" id="Coupon" runat="server"></div>         
            <div class="tab-pane" id="Credit" runat="server"></div>
            <div class="tab-pane" id="ServiceRecordList" runat="server"></div>     
            <div class="tab-pane" id="StoreType2" name="StoreType2" runat="server"></div>
            <div class="tab-pane" id="BankStatement" runat="server"></div>  
        </div>
        
        <div style="margin-top:40px;"></div>
        <footer class="bs-footer">
            <div class="row" id="foot">
                <div class="col-md-12 fontcenter" style="padding-top:15px;">                
                    <asp:Label ID="Label13" runat="server" 
                        Text="建議您使用IE9.0 以上的瀏覽器| 螢幕解析度請設為 1280*1024 以上" 
                        meta:resourcekey="Label13Resource2"></asp:Label>
                </div>
            </div>
        </footer>
    </div>
    <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type='text/javascript' src="js/jquery.s2t.js"></script>
    <script type='text/javascript' src="js/member.js"></script>
    <script type='text/javascript' src="js/autoheight.js"></script>
    <script type="text/javascript">
        $("test").change(function () {
            console.log($("test").val());
        });
        
        $(function () {
            $('#myTab a:first').tab('show');
            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                //refreshIframe2($(this).attr("href"));
                doIframe();
            })
        });
        $(document).ready(function () {
            if ($("input[name=language]").val() == "zh-cn") {
                myInit();                
            }                                        
            //setTimeout(function () { doIframe(); }, 2000);
            doIframe();
        });
        
        function myInit() {
            var text = $('#text-result').text();
            $('#text-result').text($.t2s(text));
            $('#content-wap').t2s();
            $('.para').t2s();
        }
        //function in iframe1
        function refreshIframe2(id)
        {
            if ($(id).find("iframe").length > 0) $(id).find("iframe")[0].contentWindow.location.reload(true);
        }
    </script>
    </form>
</body>
</html>
