<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="ECSSO.ResetPassword" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1" />
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
        <asp:HiddenField ID="RID" runat="server" />
        <asp:HiddenField ID="Click_ID" runat="server" />
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="padding: 15px 0px;">
                    <asp:Label ID="WebTitle" runat="server"
                        Style="font-size: xx-large; font-weight: bold; color: #555555;"
                        meta:resourcekey="WebTitleResource1"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="background-color: #f5f5f5; padding: 10px 30px;">
                    <span class="glyphicon glyphicon-user" style="font-size: large; margin-right: 7px;"></span>
                    <asp:Label ID="Label2" runat="server" Text="密碼設定"
                        meta:resourcekey="Label2Resource1"></asp:Label>
                </div>
            </div>
            <div class="row" style="border: 1px solid #d4d4d4;">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <table class="table">
                        <tr>
                            <td>
                                <div class="row">
                                    <div class="col-md-3">
                                        ＊<asp:Label ID="Label3" runat="server" Text="Email"
                                            meta:resourcekey="Label3Resource1"></asp:Label>：
                                    </div>
                                    <div class="col-md-9">
                                        <asp:TextBox ID="Email" runat="server" Width="300px"
                                            meta:resourcekey="EmailResource1" />
                                        <asp:Label ID="CheckEmail" runat="server" ForeColor="Red" Text="請輸入Email" Visible="False"
                                            meta:resourcekey="CheckEmailResource1"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">＊<asp:Label ID="Label4" runat="server" Text="新密碼" meta:resourcekey="Label4Resource1"></asp:Label>：</div>
                                    <div class="col-md-9">
                                        <asp:TextBox ID="Password" runat="server" Width="300px" TextMode="Password" AutoCompleteType="Disabled" meta:resourcekey="PasswordResource1" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:Label ID="CheckPassword" runat="server" ForeColor="Red" Text="請輸入新密碼" Visible="False" meta:resourcekey="CheckPasswordResource1"></asp:Label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic"
                                            ErrorMessage="密碼長度需為4~20個字元之英、數字組合，大小寫視為不同字元。" ControlToValidate="Password" ValidationExpression="\S{4,20}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">＊<asp:Label ID="Label9" runat="server" Text="再輸入一次" meta:resourcekey="Label9Resource1"></asp:Label>：</div>
                                    <div class="col-md-9">
                                        <asp:TextBox ID="PasswordAgain" runat="server" Width="300px" TextMode="Password" AutoCompleteType="Disabled" meta:resourcekey="PasswordAgainResource1" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:Label ID="CheckPasswordAgain" runat="server" ForeColor="Red" Text="請輸入確認密碼" Visible="False" meta:resourcekey="CheckPasswordAgainResource1"></asp:Label>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic"
                                            ErrorMessage="密碼與密碼確認不相符" ControlToValidate="Password" ControlToCompare="PasswordAgain"></asp:CompareValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        ＊<asp:Label ID="Label5" runat="server" Text="驗證碼"
                                            meta:resourcekey="Label5Resource1"></asp:Label>：
                                    </div>
                                    <div class="col-md-9">
                                        <asp:TextBox ID="TextBox1" AutoCompleteType="Disabled" runat="server" Width="200px"
                                            Style="margin-bottom: 20px;" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                        <asp:Image ID="Image1" runat="server" ImageUrl="ValidateCode.ashx" Width="57px"
                                            Style="margin-left: 5px; margin-bottom: 6px;"
                                            meta:resourcekey="Image1Resource1" />
                                        <a href="javascript: reload()" class="btn">
                                            <span class="glyphicon glyphicon-repeat"></span></a>
                                        <asp:Label ID="Label6" runat="server" ForeColor="Red"
                                            meta:resourcekey="Label6Resource1"></asp:Label>
                                        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="驗證碼錯誤" Visible="False" meta:resourcekey="Label8Resource1"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12" style="text-align: center;">
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red"
                                            meta:resourcekey="Label1Resource1"></asp:Label>
                                        <asp:LinkButton ID="LinkButton1" runat="server"
                                            Style="width: 96px; margin-right: 10px;"
                                            CssClass="btn btn-danger dropdown-toggle" OnClick="LinkButton1_Click"
                                            meta:resourcekey="LinkButton1Resource1">確認修改</asp:LinkButton>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div style="margin-top: 40px;"></div>
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
