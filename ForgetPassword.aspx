<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="ECSSO.ForgetPassword" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
    <script language="javascript" type="text/javascript">
        count = 0;
        function reload() {
            if (count % 2 == 0) {
                document.getElementById("Image1").src = "admin/ValidateCode.ashx";
            }
            else {
                document.getElementById("Image1").src = "ValidateCode.ashx";
            }
            count++;
        }
    </script>
</head>
<body class="para">
    <form id="form1" runat="server">
    <asp:HiddenField ID="siteid" runat="server" />
    <asp:HiddenField ID="language" runat="server" />
    <asp:HiddenField ID="returnurl" runat="server" />
    <asp:HiddenField ID="weburl" runat="server" />
    <asp:HiddenField ID="Checkm" runat="server" />
    <asp:HiddenField ID="RID" runat="server" />
    <asp:HiddenField ID="Click_ID" runat="server" />
    <div class="container">
        <div class="row">
            <div class="col-md-12" style=" padding:15px 0px;">
                <asp:Label ID="WebTitle" runat="server" 
                    style="font-size:xx-large; font-weight:bold; color:#555555;" 
                    meta:resourcekey="WebTitleResource1"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="background-color:#f5f5f5; padding:10px 30px;">
                <span class="glyphicon glyphicon-user" style="font-size:large; margin-right:7px;"></span>
                <asp:Label ID="Label2" runat="server" Text="忘記密碼" 
                    meta:resourcekey="Label2Resource1"></asp:Label>
            </div>
        </div>
        <div class="row" style="border:1px solid #d4d4d4;">
            <div class="col-md-2"></div>
            <div class="col-md-8">
            <table class="table">
                <tr>
                    <td>
                        <div class="row">
                            <div class="col-md-3">＊<asp:Label ID="Label3" runat="server" Text="Email" 
                                    meta:resourcekey="Label3Resource1"></asp:Label>：</div>
                            <div class="col-md-9">
                                <asp:TextBox ID="Email" runat="server" Width="300px" 
                                    meta:resourcekey="EmailResource1" AutoCompleteType="Disabled" />
                                <asp:Label ID="CheckEmail" runat="server" ForeColor="Red" Text="請輸入Email" Visible="false" 
                                    meta:resourcekey="CheckEmailResource1"></asp:Label>
                            </div>            
                        </div>  
                        <div class="row">
                            <div class="col-md-3">＊<asp:Label ID="Label5" runat="server" Text="驗證碼" 
                                    meta:resourcekey="Label5Resource1"></asp:Label>：</div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBox1" runat="server" Width="200px" 
                                    style="margin-bottom:20px;" AutoCompleteType="Disabled" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                <asp:Image ID="Image1" runat="server" ImageUrl="ValidateCode.ashx" Width="57px" 
                                    style="margin-left:5px; margin-bottom:6px;" 
                                    meta:resourcekey="Image1Resource1" />
                                <a href="javascript: reload()" class="btn"><span class="glyphicon glyphicon-repeat"></span></a>
                                <asp:Label ID="Label6" runat="server" ForeColor="Red" 
                                    meta:resourcekey="Label6Resource1"></asp:Label> 
                            </div>            
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="text-align:center;">
                                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                                    meta:resourcekey="Label1Resource1"></asp:Label>
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    style="width:96px; margin-right:10px;" 
                                    CssClass="btn btn-danger dropdown-toggle" onclick="LinkButton1_Click" 
                                    meta:resourcekey="LinkButton1Resource1">查　詢</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" 
                                    CssClass="btn btn-primary dropdown-toggle" onclick="LinkButton2_Click" 
                                    meta:resourcekey="LinkButton2Resource1">回到登入頁</asp:LinkButton>
                            </div>                       
                        </div>  
                    </td>
                </tr>
            </table>
            </div>
            <div class="col-md-2"></div>                            
            </div>
            <div style="margin-top:40px;"></div>
            <footer class="bs-footer">
                <div class="row" id="foot">
                    <div class="col-md-12 fontcenter" style="padding-top:15px;">                
                        <asp:Label ID="Label7" runat="server" 
                            Text="建議您使用IE9.0 以上的瀏覽器| 螢幕解析度請設為 1280*1024 以上" 
                            meta:resourcekey="Label7Resource1"></asp:Label>
                    </div>
                </div>
            </footer>
        </div>  
        </div>    
                        
    
    <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type='text/javascript' src="js/jquery.s2t.js"></script>
    <script type="text/javascript">

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
