<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="ECSSO.Manage" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="/admin/images/cocker.ico">   
     <style type="text/css"> 
        div { border: 0px; }         
        body{font-family:Arial,微軟正黑體,新細明體, Helvetica, sans-serif; color:#333333;
             background: url('img/bgg.jpg') top fixed repeat;
        }    
        .col-md-2{text-align:right; padding:0px 0px;}
        .col-md-10{padding:0px 0px;}
        .bs-footer{padding:0; margin:0; bottom:0; left:0; width:100%; position:fixed;}
        #foot { background-image:url("img/foot.png"); background-repeat:repeat-x; color:#898989; text-align:center;}
        #foot a {color:#898989; margin-right:20px;}
        #foot .icon{color:#ffffff;}
        .login .col-md-3{padding:0px; text-align:right;}
        .login .col-md-9{padding:0px;}
        .logo {padding:0px; margin-top:215px;}            
        .loginborder 
        {
            border:1px solid #ffffff; 
            background-color:#ffffff;                                                
            -webkit-box-shadow: #666 0px 2px 3px;
            -moz-box-shadow: #666 0px 2px 3px;
            box-shadow: #666 0px 2px 3px;
            background: #ffffff;
            behavior: url(PIE.htc);  
        }        
        @media (max-width: 979px) {
            .logo {margin-top:0px;}     
            .bottomdiv {margin-top:40px;}           
        }
    </style>
    <!--[if lt IE 9]>
    <script src="/Scripts/html5shiv.min.js"></script>
    <script src="/Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server" action="Manage.aspx" 
    defaultbutton="LinkButton1" submitdisabledcontrols="False">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <asp:Image ID="Image2" class="img-responsive" runat="server" 
                    meta:resourcekey="Image2Resource1" />
                <!--<img src="img/ad_03.png" class="img-responsive" />-->
            </div>
            <div class="col-md-4">
                <div class="row logo">
                    <div class="col-md-12">
                        <img src="img/login_logo.png" class="img-responsive" />
                    </div>
                </div>
                <div class="row loginborder">
                    <div class="col-md-12">
                        <div class="row login" style="padding:3px 3px; margin-top:10px;">
                            <div class="col-md-3 col-xs-3">
                                <asp:Label ID="Label1" runat="server" Text="網站代碼：" 
                                    meta:resourcekey="Label1Resource1"></asp:Label>
                            </div>
                            <div class="col-md-9 col-xs-9">
                                <asp:TextBox ID="orgname" runat="server" Width="80%" 
                                    meta:resourcekey="orgnameResource1"></asp:TextBox>
                                <asp:Label ID="CHKorgname" runat="server" ForeColor="Red" 
                                    meta:resourcekey="CHKorgnameResource1"></asp:Label>
                            </div>   
                        </div> 
                        <div class="row login" style="padding:3px 3px;">
                            <div class="col-md-3 col-xs-3">
                                <asp:Label ID="Label5" runat="server" Text="帳號：" 
                                    meta:resourcekey="Label5Resource1"></asp:Label>
                            </div>
                            <div class="col-md-9 col-xs-9">
                                <asp:TextBox ID="UserID" runat="server" Width="80%" 
                                    meta:resourcekey="UserIDResource1"></asp:TextBox>
                                <asp:Label ID="CHKUserID" runat="server" ForeColor="Red" 
                                    meta:resourcekey="CHKUserIDResource1"></asp:Label>
                            </div>   
                        </div> 
                        <div class="row login" style="padding:3px 3px;">
                            <div class="col-md-3 col-xs-3">
                                <asp:Label ID="Label2" runat="server" Text="密碼：" 
                                    meta:resourcekey="Label2Resource1"></asp:Label>
                            </div>
                            <div class="col-md-9 col-xs-9">
                                <asp:TextBox ID="UserPwd" AutoCompleteType="Disabled" runat="server" TextMode="Password" Width="80%" 
                                    meta:resourcekey="UserPwdResource1"></asp:TextBox>
                                <asp:Label ID="CHKUserPwd" runat="server" ForeColor="Red" 
                                    meta:resourcekey="CHKUserPwdResource1"></asp:Label>
                            </div>   
                        </div>
                        <div class="row login" style="padding:3px 3px;">
                            <div class="col-md-3 col-xs-3">
                                <asp:Label ID="Label3" runat="server" Text="驗證碼：" 
                                    meta:resourcekey="Label3Resource1"></asp:Label>
                            </div>
                            <div class="col-md-9 col-xs-9">
                                <asp:TextBox ID="TextBox1" runat="server" Width="40%" 
                                    style="margin-bottom:20px;" AutoCompleteType="Disabled" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                <asp:Image ID="Image1" runat="server" ImageUrl="ValidateCode.ashx" Width="57px" 
                                    style="margin-left:5px; margin-bottom:6px;" 
                                    meta:resourcekey="Image1Resource1" />
                                <a href="javascript:reload()" class="btn"><span class="glyphicon glyphicon-repeat"></span></a>
                                <asp:Label ID="Label6" runat="server" ForeColor="Red" 
                                    meta:resourcekey="Label6Resource1"></asp:Label>
                            </div>   
                        </div>   
                        <div class="row" style="padding:3px 3px;">
                            <div class="col-md-12" style="text-align:center;">
                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-danger dropdown-toggle" 
                                    style="width:107px;" runat="server" onclick="LinkButton1_Click" 
                                    meta:resourcekey="LinkButton1Resource1"><span class="glyphicon glyphicon-ok-circle" style="font-size:large; margin-right:7px;"></span>登　入</asp:LinkButton>                       
                            </div>
                        </div>        
                    </div>            
                </div>  
            </div>
        </div>
        <div class="bottomdiv"></div>
        <footer class="bs-footer">
            <div class="row" id="foot">
                <div class="col-md-12 fontcenter" style="padding:17px;">
                    <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" 
                        NavigateUrl="http://cocker3.ether.com.tw/tw/index.asp?au_id=31&sub_id=33" 
                        meta:resourcekey="HyperLink2Resource1">聯絡我們 <span class="glyphicon glyphicon-envelope icon"></span></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" runat="server" Target="_blank" 
                        NavigateUrl="https://drive.google.com/drive/folders/0B_pWUKv7VyDuWHhXUk1KTUdNYUU" 
                        meta:resourcekey="HyperLink3Resource1">線上教學 <span class="glyphicon glyphicon-book icon"></span></asp:HyperLink>                    
                </div>
            </div>
        </footer>    
    </div>
    <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
        function Login() {
            $("#form1").attr("action", "system_login1.aspx");
            $("#form1").submit();
        }
    </script>
    </form>
</body>
</html>
