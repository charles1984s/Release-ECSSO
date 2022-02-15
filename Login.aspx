<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ECSSO.Login" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

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
                document.getElementById("Image2").src = "admin/ValidateCode.ashx";
            }
            else {
                document.getElementById("Image1").src = "ValidateCode.ashx";
                document.getElementById("Image2").src = "ValidateCode.ashx";
            }
            count++;
        }
    </script>
</head>
<body class="para">
    <form id="form1" runat="server" defaultbutton="LinkButton1">
        <asp:HiddenField ID="siteid" runat="server" />
        <asp:HiddenField ID="language" runat="server" />
        <asp:HiddenField ID="returnurl" runat="server" />
        <asp:HiddenField ID="weburl" runat="server" />
        <asp:HiddenField ID="Checkm" runat="server" />
        <asp:HiddenField ID="fid" runat="server" />
        <asp:HiddenField ID="VerCode" runat="server" />
        <asp:HiddenField ID="Click_ID" runat="server" />
        <asp:HiddenField ID="RID" runat="server" />
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="padding: 15px 0px;">
                    <asp:HyperLink ID="HyperLink1" runat="server" Target="_top">
                        <asp:Label ID="WebTitle" class="para" runat="server"
                            Style="font-size: xx-large; font-weight: bold; color: #555555;"
                            meta:resourcekey="WebTitleResource1"></asp:Label>
                        <asp:Image ID="Image3" runat="server" />
                    </asp:HyperLink>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="background-color: #f5f5f5; padding: 10px 30px;">
                    <span class="glyphicon glyphicon-user" style="font-size: large; margin-right: 7px;"></span>
                    <asp:Label ID="Label5" runat="server" Text="會員登入"
                        meta:resourcekey="Label5Resource1"></asp:Label>
                </div>
            </div>
            <div class="row" style="border: 1px solid #d4d4d4;" id="loginrow" runat="server">
                <div class="col-md-6" id="MemberLoginRow" runat="server">
                    <div id="other_login_btn" class="row">
                        <!-------------安慶start---------------->
                        <!--
                    <span style="font-size:large; color:#000000; font-weight:bold;">不需註冊即時登入</span>
                    <br />
                    使用您已有的FB或HINET帳號馬上登入
                    <br />-->
                        <div id="other_title" runat="server">
                            <asp:Label ID="Label25" runat="server" Text="您也可以選擇下面選項，快速加入/登入會員" meta:resourcekey="Label25Resource1"></asp:Label>
                        </div>
                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Visible="false"><img src="img/hinet_login.png" style="margin-top:10px;margin-bottom:10px;" /></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" CssClass="hidden" runat="server" OnClick="LinkButton4_Click"><img src="img/facebook_login.png" style="margin-top:10px;margin-bottom:10px;" /></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click"><img src="img/Google_login.png" style="margin-top:10px;margin-bottom:10px;" /></asp:LinkButton>

                        <!-------------安慶end-------------->

                        <!--<br />
                    <span style="font-size:large; color:#000000; font-weight:bold;">不需註冊即時登入</span>
                    <br />
                    使用您已有的FB或HINET帳號馬上登入
                    <br />
                    <img src="img/hinet_login.png" style="margin-top:10px;margin-bottom:10px;" />
                    <br />
                    <img src="img/facebook_login.png" />-->
                    </div>
                    <div id="login_cont" class="row">
                        <div class="col-md-12">
                            <div class="row-fluid">
                                <div class="col-md-3">
                                    <asp:Label ID="Label2" runat="server" Text="帳號：" Width="45px"
                                        CssClass="textLabel" meta:resourcekey="Label2Resource1"></asp:Label>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="UserID" runat="server" Width="270px"
                                        Style="margin-bottom: 5px;" placeholder=""
                                        meta:resourcekey="UserIDResource1"></asp:TextBox>
                                    <asp:Label ID="CheckUserID" runat="server" Text="請輸入帳號" ForeColor="Red"
                                        Visible="False" meta:resourcekey="CheckUserIDResource1"></asp:Label>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="col-md-3">
                                    <asp:Label ID="Label3" runat="server" Text="密碼：" Width="45px"
                                        CssClass="textLabel" meta:resourcekey="Label3Resource1"></asp:Label>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="UserPwd" runat="server" Width="270px" TextMode="Password"
                                        Style="margin-bottom: 5px;" AutoCompleteType="Disabled" meta:resourcekey="UserPwdResource1"></asp:TextBox>
                                    <asp:Label ID="CheckUserPwd" runat="server" Text="請輸入密碼" ForeColor="Red"
                                        Visible="False" meta:resourcekey="CheckUserPwdResource1"></asp:Label>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="col-md-3">
                                    <asp:Label ID="Label4" runat="server" Text="驗證碼：" Width="60px"
                                        meta:resourcekey="Label4Resource1"></asp:Label>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="155px"
                                        Style="margin-bottom: 0px;" AutoCompleteType="Disabled" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                    <asp:Image ID="Image1" name="Image1" runat="server" ImageUrl="ValidateCode.ashx" Width="57px"
                                        align="absmiddle" Style="margin-left: 5px; margin-bottom: 6px;" />
                                    <a href="javascript: reload();" class="btn"><span class="glyphicon glyphicon-repeat"></span></a>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-9" style="min-height: 20px; margin-bottom: 5px;">
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"
                                        meta:resourcekey="Label1Resource1"></asp:Label>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="col-md-12" id="login_btn">
                                    <asp:LinkButton ID="LinkButton1" runat="server"
                                        CssClass="btn btn-danger dropdown-toggle btn1" OnClick="LinkButton1_Click"
                                        meta:resourcekey="LinkButton1Resource1">
                                    <span class='glyphicon glyphicon-ok-circle' style='font-size:large; margin-right:7px;'></span>
                                    登　入</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server"
                                        CssClass="btn btn-primary dropdown-toggle" OnClick="LinkButton2_Click"
                                        meta:resourcekey="LinkButton2Resource1">
                                    <span class='glyphicon glyphicon-log-in' style='font-size:large; margin-right:7px;'></span>
                                    忘記密碼</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton7" runat="server"
                                        CssClass="btn btn-warning dropdown-toggle"
                                        meta:resourcekey="LinkButton7Resource1" OnClick="LinkButton7_Click">
                                    <span class='glyphicon glyphicon-home' style='font-size:large; margin-right:7px;'></span>
                                    回網站</asp:LinkButton>
                                </div>
                            </div>
                            <div class="row-fluid" id="fbErrorInfo" runat="server">
                                <div class="col-md-12">
                                    <span class="memo">
                                        親愛的會員您好<br />目前Facebook登入暫停使用，請您以其他方式進行登入，造成您的不便，敬請見諒！謝謝！
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6" id="AddMemberRow" runat="server" style="border-left: 1px dotted #d4d4d4;">
                    <div id="add_login_btn" class="row">
                        <div id="reg_title">
                            <asp:Label ID="Label7" runat="server" Text="我要註冊成為會員" meta:resourcekey="Label7Resource1"></asp:Label>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="Label18" runat="server" Text="＊Email：" meta:resourcekey="Label18Resource1"></asp:Label>
                            </div>
                            <div class="col-md-10">
                                <asp:TextBox ID="Email" runat="server" Width="300px"
                                    meta:resourcekey="EmailResource1" MaxLength="50" />
                                <asp:Label ID="CheckEmail" runat="server" ForeColor="Red" Text="Email格式錯誤" Visible="false"
                                    meta:resourcekey="CheckEmailResource1" />
                                <br />
                                <asp:Label ID="Label9" runat="server" ForeColor="Red"
                                    Text="※若未收到通知信，請檢查是否被系統誤認為是垃圾信件。"
                                    meta:resourcekey="Label9Resource1"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="Label10" runat="server" Text="＊姓名／名稱："
                                    meta:resourcekey="Label10Resource1" />
                            </div>
                            <div class="col-md-10">
                                <asp:TextBox ID="Name" runat="server" Width="300px"
                                    meta:resourcekey="NameResource1" />
                                <asp:DropDownList ID="Sex" runat="server" meta:resourcekey="SexResource1">
                                    <asp:ListItem Value="1" meta:resourcekey="ListItemResource1">先生</asp:ListItem>
                                    <asp:ListItem Value="2" meta:resourcekey="ListItemResource2">小姐</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="CheckName" runat="server" ForeColor="Red" Text="請輸入您的名字" Visible="false"
                                    meta:resourcekey="CheckNameResource1" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="Label17" runat="server" Text="＊密碼："
                                    meta:resourcekey="Label16Resource1"></asp:Label>
                            </div>
                            <div class="col-md-10">
                                <asp:TextBox ID="Pwd" runat="server" Width="300px" TextMode="Password"
                                    meta:resourcekey="PwdResource1" MaxLength="21" />
                                <asp:Label ID="CheckPwd" runat="server" ForeColor="Red" Text="密碼長度請輸入4至20個英文或數字" Visible="false"
                                    meta:resourcekey="CheckPwdResource1" />
                                <div>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic"
                                        ErrorMessage="密碼長度需為4~20個字元之英、數字組合，大小寫視為不同字元。" ControlToValidate="Pwd" ValidationExpression="\S{4,20}"></asp:RegularExpressionValidator>
                                </div>
                                <asp:Label ID="Label19" runat="server" CssClass="description"
                                    Text="（填入4至20個字元的英文字母、數字組合。）" meta:resourcekey="Label17Resource1" />
                            </div>
                        </div>
                        <div class="row" style="border-bottom: 1px dotted #d4d4d4; padding-bottom: 20px;">
                            <div class="col-md-2">
                                <asp:Label ID="Label23" runat="server" Text="＊確認密碼："
                                    meta:resourcekey="Label23Resource1"></asp:Label>
                            </div>
                            <div class="col-md-10">
                                <asp:TextBox ID="ChkPwd" runat="server" Width="300px" TextMode="Password"
                                    meta:resourcekey="ChkPwdResource1" MaxLength="21" />
                                <asp:Label ID="CheckPwd2" runat="server" ForeColor="Red" Text="密碼與確認密碼不同" Visible="false"
                                    meta:resourcekey="CheckPwd2Resource1" />
                                <asp:Label ID="Label20" runat="server" CssClass="description"
                                    Text="（請再一次輸入所設定密碼）" meta:resourcekey="Label19Resource1" />
                            </div>
                        </div>
                        <div id="memAgree" runat="server">
                            <div class="row" style="padding-top: 10px;">
                                <div class="col-md-12" style="background-color: #f5f5f5; border-top: 1px solid #d4d4d4; padding: 10px 30px;">
                                    <span class="glyphicon glyphicon-pencil" style="background-color: #000000; color: #ffffff; padding: 2px 2px; margin-right: 10px;"></span>
                                    <asp:Label ID="Label21" runat="server" Text="會員服務條款"
                                        meta:resourcekey="Label20Resource1" />
                                </div>
                            </div>
                            <div class="row" style="padding: 0px 0px; margin-top: -4px;">
                                <div class="col-md-12" style="border: 1px solid #d4d4d4; padding: 0px 0px;">
                                    <div id="str_agree" runat="server" style="height: 200px; overflow: auto; padding: 10px 10px;"></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="text-align: center;">
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="已閱讀並同意接受會員服務條款"
                                        meta:resourcekey="CheckBox1Resource1" />
                                    <asp:Label ID="CheckService" runat="server" ForeColor="Red" Text="您尚未同意服務條款" Visible="false"
                                        meta:resourcekey="CheckServiceResource1"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="joinezsale" runat="server">
                            <div class="col-md-12" style="text-align: center;">
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="我同意加入易碩聯網會員"
                                    meta:resourcekey="CheckBox1Resource2" Checked="true" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="Label22" runat="server" Text="＊驗證碼："
                                    meta:resourcekey="Label21Resource1" />
                            </div>
                            <div class="col-md-5">
                                <asp:TextBox ID="TextBox2" runat="server" Width="200px"
                                    Style="margin-bottom: 20px;" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
                                <asp:Image ID="Image2" runat="server" ImageUrl="ValidateCode.ashx"
                                    Width="57px" align="absmiddle" Style="margin-left: 5px; margin-bottom: 6px;"
                                    meta:resourcekey="Image2Resource1" />
                                <a href="javascript: reload()" class="btn"><span class="glyphicon glyphicon-repeat"></span></a>
                                <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="請輸入正確驗證碼" Visible="false"
                                    meta:resourcekey="Label22Resource1"></asp:Label>
                            </div>
                            <div class="col-md-5">
                                <asp:LinkButton ID="LinkButton8" runat="server"
                                    CssClass="btn btn-danger dropdown-toggle"
                                    Style="margin-right: 20px;" meta:resourcekey="LinkButton4Resource1" OnClick="LinkButton4_Click1">
                                <span class="glyphicon glyphicon-user" style="font-size:large; margin-right:7px;"></span>
                                確認送出
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="margin-top: 40px;"></div>
            <footer class="bs-footer">
            <div class="row" id="foot">
                <div class="col-md-12 fontcenter" style="padding-top:15px;">                
                    <asp:Label ID="Label6" runat="server" 
                        Text="建議您使用IE9.0 以上的瀏覽器| 螢幕解析度請設為 1280*1024 以上" 
                        meta:resourcekey="Label6Resource1"></asp:Label>
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
