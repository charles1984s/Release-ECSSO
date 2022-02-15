<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="ECSSO.Member" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
    <asp:HiddenField ID="returnurl" runat="server" />
    <asp:HiddenField ID="CheckM" runat="server" />
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label2" runat="server" Text="＊會員編號：" meta:resourcekey="Label2Resource1"></asp:Label></div>
            <div class="col-md-10"><asp:Label ID="MemberID" runat="server" meta:resourcekey="MemberIDResource1"></asp:Label></div>            
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label3" runat="server" Text="＊姓名／名稱：" meta:resourcekey="Label3Resource1"></asp:Label></div>
            <div class="col-md-10">
                <asp:TextBox ID="CHName" runat="server" Width="300px" meta:resourcekey="CHNameResource1" MaxLength="10"></asp:TextBox>
                <asp:DropDownList ID="Sex" runat="server" meta:resourcekey="SexResource1">
                    <asp:ListItem Value="1" meta:resourcekey="ListItemResource1">先生</asp:ListItem>
                    <asp:ListItem Value="2" meta:resourcekey="ListItemResource2">小姐</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="CheckName" runat="server" ForeColor="Red" meta:resourcekey="CheckNameResource1"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"><asp:Label ID="Label4" runat="server" Text="剩餘紅利：" meta:resourcekey="Label4Resource1"></asp:Label></div>
            <div class="col-md-10"><asp:Label ID="bonusTotal" runat="server" meta:resourcekey="bonusTotalResource1"></asp:Label></div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label5" runat="server" Text="生日：" meta:resourcekey="Label5Resource1"></asp:Label></div>
            <div class="col-md-10">
                <asp:TextBox ID="BirthDay" runat="server" Width="300px" meta:resourcekey="BirthDayResource1" MaxLength="10"></asp:TextBox>
                <asp:Label ID="CheckBirthDay" runat="server" 
                    ForeColor="Red" meta:resourcekey="CheckBirthDayResource1"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"><asp:Label ID="Label6" runat="server" Text="＊電子信箱：" meta:resourcekey="Label6Resource1"></asp:Label></div>
            <div class="col-md-10">
                <asp:TextBox ID="Email" runat="server" Width="300px" meta:resourcekey="EmailResource1" MaxLength="50"></asp:TextBox>
                <asp:Label ID="CheckEmail" runat="server" ForeColor="Red" meta:resourcekey="CheckEmailResource1"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label8" runat="server" Text="＊行動電話：" meta:resourcekey="Label8Resource1"></asp:Label></div>
            <div class="col-md-10">
                <asp:TextBox ID="CellPhone" runat="server" Width="300px" meta:resourcekey="CellPhoneResource1" MaxLength="15"></asp:TextBox>
                <asp:Label ID="CheckCellPhone" runat="server" 
                    ForeColor="Red" meta:resourcekey="CheckCellPhoneResource1"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label9" runat="server" Text="＊地址：" meta:resourcekey="Label9Resource1"></asp:Label></div>
            <div class="col-md-10">
                <asp:TextBox ID="Address" runat="server" Width="300px" meta:resourcekey="AddressResource1" MaxLength="50"></asp:TextBox>
                <asp:Label ID="CheckAddress" runat="server" ForeColor="Red" meta:resourcekey="CheckAddressResource1"></asp:Label>
            </div>
        </div>        
        <div class="row" style="margin-bottom:20px;">
            <div class="col-md-2">
                <asp:Label ID="Label10" runat="server" Text="權限：" meta:resourcekey="Label10Resource1"></asp:Label></div>
            <div class="col-md-10">
                <asp:Label ID="VIP" runat="server" meta:resourcekey="VIPResource1"></asp:Label>
                <asp:Label ID="EffectiveDate" runat="server"></asp:Label>
            </div>
        </div>
        <div class="row" style="border-top:1px dotted #d4d4d4;border-bottom:1px dotted #d4d4d4; background-color:#fef4ec; padding:10px 0px;">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-2">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="修改密碼" meta:resourcekey="CheckBox1Resource1" />
                    </div>
                    <div class="col-md-10">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" meta:resourcekey="Label1Resource1"></asp:Label>
                    </div>
                </div>       
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label11" runat="server" Text="新密碼：" meta:resourcekey="Label11Resource1"></asp:Label></div>
                    <div class="col-md-10">
                        <asp:TextBox ID="NewPwd" runat="server" TextMode="Password" Width="300px" meta:resourcekey="NewPwdResource1" AutoCompleteType="Disabled" MaxLength="21"></asp:TextBox>
                        <asp:HiddenField ID="UserID" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label12" runat="server" Text="確認新密碼：" meta:resourcekey="Label12Resource1"></asp:Label></div>
                    <div class="col-md-10">
                        <asp:TextBox ID="ChkNewPwd" runat="server" 
                            TextMode="Password" Width="300px" meta:resourcekey="ChkNewPwdResource1" MaxLength="21" AutoCompleteType="Disabled"></asp:TextBox></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="text-align:center; margin-top:20px;">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    CssClass="btn btn-danger dropdown-toggle" onclick="LinkButton1_Click" meta:resourcekey="LinkButton1Resource1" Text="&lt;span class=&quot;glyphicon glyphicon-ok-sign&quot; style=&quot;font-size:large; margin-right:7px;&quot;&gt;&lt;/span&gt;確認儲存"></asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" 
                    CssClass="btn btn-warning dropdown-toggle" onclick="LinkButton2_Click" meta:resourcekey="LinkButton2Resource1" Text="&lt;span class=&quot;glyphicon glyphicon-home&quot; style=&quot;font-size:large; margin-right:7px;&quot;&gt;&lt;/span&gt;回網站首頁"></asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" 
                    CssClass="btn btn-primary dropdown-toggle" onclick="LinkButton3_Click" meta:resourcekey="LinkButton3Resource1" Text="&lt;span class=&quot;glyphicon glyphicon-remove&quot; style=&quot;font-size:large; margin-right:7px;&quot;&gt;&lt;/span&gt;登出"></asp:LinkButton>                
            </div>
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
