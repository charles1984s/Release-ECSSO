<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MealLogin.aspx.cs" Inherits="ECSSO.MealLogin" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

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
        count=0;
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
<body>
    <form id="form1" runat="server" defaultbutton="LinkButton1">    
    <asp:HiddenField ID="siteid" runat="server" />
    <asp:HiddenField ID="language" runat="server" />
    <asp:HiddenField ID="returnurl" runat="server" />
    <asp:HiddenField ID="weburl" runat="server" /> 
    <asp:HiddenField ID="Checkm" runat="server" /> 
    <asp:HiddenField ID="VerCode" runat="server" /> 
    <asp:HiddenField ID="Click_ID" runat="server" />
    <asp:HiddenField ID="RID" runat="server" />
    <div class="container">
        <div class="row">
            <div class="col-md-12" style=" padding:15px 0px;">
                <asp:HyperLink ID="HyperLink1" runat="server" Target="_top" meta:resourcekey="HyperLink1Resource1">
                <asp:Label ID="WebTitle" class="para" runat="server" 
                    style="font-size:xx-large; font-weight:bold; color:#555555;" 
                    meta:resourcekey="WebTitleResource1"></asp:Label>
                    
<asp:Image ID="Image3" runat="server" meta:resourcekey="Image3Resource1" />
</asp:HyperLink> 
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="background-color:#f5f5f5; padding:10px 30px;">
                <span class="glyphicon glyphicon-user" style="font-size:large; margin-right:7px;"></span>
                <asp:Label ID="Label5" runat="server" Text="會員登入" 
                    meta:resourcekey="Label5Resource1"></asp:Label>
            </div>
        </div>
        <div class="row" style="border:1px solid #d4d4d4;" id="loginrow" runat="server">
            <div class="col-md-6">     
                <div id="login_cont" class="row">
                    <div  class="col-md-12"> 
                        <div class="row-fluid">
                            <div class="col-md-3">
                                <asp:Label ID="Label2" runat="server" Text="帳號：" Width="45px" 
                                    CssClass="textLabel" meta:resourcekey="Label2Resource1"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="UserID" runat="server" Width="270px" 
                                    style="margin-bottom:5px;" placeholder="Email" 
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
                                    style="margin-bottom:5px;" AutoCompleteType="Disabled" meta:resourcekey="UserPwdResource1"></asp:TextBox>
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
                                    style="margin-bottom:0px;" AutoCompleteType="Disabled" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                                <asp:Image ID="Image1" name="Image1" runat="server" ImageUrl="ValidateCode.ashx" Width="57px" 
                                    align="absmiddle" style="margin-left:5px; margin-bottom:6px;" meta:resourcekey="Image1Resource1" />                                
                                <a href="javascript: reload();" class="btn"><span class="glyphicon glyphicon-repeat"></span></a>
                            </div>
                        </div>
                        <div class="row-fluid">
                        	<div class="col-md-3">
                            </div>
                            <div class="col-md-9" style="min-height:20px; margin-bottom:5px;">
                                <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False" 
                                    meta:resourcekey="Label1Resource1"></asp:Label>
                            </div>
						</div>
                        <div class="row-fluid">
                            <div class="col-md-12" id="login_btn">
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CssClass="btn btn-danger dropdown-toggle btn1" onclick="LinkButton1_Click" 
                                    meta:resourcekey="LinkButton1Resource1">
                                    <span class='glyphicon glyphicon-ok-circle' style='font-size:large; margin-right:7px;'></span>
                                    登　入</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" 
                                    CssClass="btn btn-primary dropdown-toggle" onclick="LinkButton2_Click" 
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
                    </div>
                </div>
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
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Visible="False"><img src="img/hinet_login.png" style="margin-top:10px;margin-bottom:10px;" /></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><img src="img/facebook_login.png" style="margin-top:10px;margin-bottom:10px;" /></asp:LinkButton>
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
            </div>
            <div class="col-md-6" style="border-left:1px dotted #d4d4d4;">
                <div id="add_login_btn" class="row">
                    <div id="reg_title">
                        <asp:Label ID="Label7" runat="server" Text="我要註冊成為會員" meta:resourcekey="Label7Resource1"></asp:Label></div>
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label18" runat="server" Text="＊Email：" meta:resourcekey="Label18Resource1"></asp:Label></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="Email" runat="server" Width="300px" 
                                meta:resourcekey="EmailResource1" MaxLength="50" />
                            <asp:Label ID="CheckEmail" runat="server" ForeColor="Red" Text="Email格式錯誤" Visible="False"
                                meta:resourcekey="CheckEmailResource1" />                
                            <br /><asp:Label ID="Label9" runat="server" ForeColor="Red" 
                                Text="※若您一直未收到通知信函，可檢查您的垃圾信件匣，因有可能被郵件系統誤認為是垃圾信件。" 
                                meta:resourcekey="Label9Resource1"></asp:Label>                
                        </div>            
                    </div>       
                    <div class="row">
                        <div class="col-md-2"><asp:Label ID="Label10" runat="server" Text="＊姓名／名稱：" 
                                meta:resourcekey="Label10Resource1" /></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="Name" runat="server" Width="300px" 
                                meta:resourcekey="NameResource1" />
                            <asp:DropDownList ID="Sex" runat="server" meta:resourcekey="SexResource1">
                                <asp:ListItem Value="1" meta:resourcekey="ListItemResource1">先生</asp:ListItem>
                                <asp:ListItem Value="2" meta:resourcekey="ListItemResource2">小姐</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="CheckName" runat="server" ForeColor="Red" Text="請輸入您的名字" Visible="False" 
                                meta:resourcekey="CheckNameResource1" />
                        </div>            
                    </div>
                    <div class="row">
                        <div class="col-md-2"><asp:Label ID="Label11" runat="server" Text="＊生日：" 
                                meta:resourcekey="Label11Resource1" /></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="BirthDay" runat="server" Class="dp" Width="300px" 
                                meta:resourcekey="BirthDayResource1" MaxLength="10" />
                            <asp:Label ID="CheckBirthDay" runat="server" ForeColor="Red" Text="請輸入正確日期" Visible="False" 
                                meta:resourcekey="CheckBirthDayResource1" />                            
                        </div>            
                    </div>
                    <div class="row">
                        <div class="col-md-2"><asp:Label ID="Label12" runat="server" Text="＊聯絡電話：" 
                                meta:resourcekey="Label12Resource1" /></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="Tel" runat="server" Width="300px" 
                                meta:resourcekey="TelResource1" MaxLength="15" />
                            <asp:Label ID="CheckTel" runat="server" ForeColor="Red" Text="聯絡電話格式錯誤" Visible="False" 
                                meta:resourcekey="CheckTelResource1" />       
                            <asp:Label ID="Label13" runat="server" CssClass="description" 
                                Text="格式:xx-xxxxxxx" meta:resourcekey="Label8Resource1"></asp:Label>
                        </div>            
                    </div>
                    <div class="row">
                        <div class="col-md-2"><asp:Label ID="Label14" runat="server" Text="＊行動電話：" 
                                meta:resourcekey="Label13Resource1" /></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="CellPhone" runat="server" Width="300px" 
                                meta:resourcekey="CellPhoneResource1" MaxLength="15" />
                            <asp:Label ID="CheckCellPhone" runat="server" ForeColor="Red" Text="行動電話格式錯誤" Visible="False" 
                                meta:resourcekey="CheckCellPhoneResource1" /> 
                            <asp:Label ID="Label15" runat="server" CssClass="description" 
                                Text="格式:09xx-xxxxxx" meta:resourcekey="Label14Resource1"></asp:Label>  
                        </div>            
                    </div>
                    <div class="row">
                        <div class="col-md-2"><asp:Label ID="Label16" runat="server" Text="＊地址：" 
                                meta:resourcekey="Label15Resource1" /></div>
                        <div class="col-md-10">
                            <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True" AppendDataBoundItems="True" 
                                DataTextField="name" DataValueField="id" DataSourceID="SqlDataSource1" 
                                meta:resourcekey="ddlCityResource1">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:sqlDB %>" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [id], [name] FROM [city]"></asp:SqlDataSource>
                            &nbsp;<asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" 
                                DataTextField="name" DataValueField="name" DataSourceID="SqlDataSource2" 
                                meta:resourcekey="ddlCountryResource1">
                            </asp:DropDownList>  
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:sqlDB %>" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [name] FROM [area] WHERE ([cityid] = @cityid)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlCity" Name="cityid" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:DropDownList ID="ddlzip" runat="server" AutoPostBack="True" 
                                DataTextField="zip" DataValueField="zip" DataSourceID="SqlDataSource3" 
                                meta:resourcekey="ddlzipResource1">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:sqlDB %>"                     
                                SelectCommand="SELECT [zip] FROM [area] WHERE ([cityid] = @cityid) and name=@name">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlCity" Name="cityid" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="ddlCountry" Name="name" 
                                        PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:TextBox ID="address" runat="server" Width="300px" style="margin-top:4px;" 
                                meta:resourcekey="addressResource1" MaxLength="50"></asp:TextBox>
                            <asp:Label ID="Checkaddress" runat="server" ForeColor="Red" Text="請輸入地址" Visible="False"
                                meta:resourcekey="CheckaddressResource1"></asp:Label>
                        </div>            
                    </div>
                     <div class="row">
                        <div class="col-md-2"><asp:Label ID="Label17" runat="server" Text="＊密碼：" 
                                meta:resourcekey="Label16Resource1"></asp:Label></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="Pwd" runat="server" Width="300px" TextMode="Password" 
                                meta:resourcekey="PwdResource1" MaxLength="10" />
                            <asp:Label ID="CheckPwd" runat="server" ForeColor="Red" Text="密碼長度請輸入4至10個英文或數字" Visible="False"
                                meta:resourcekey="CheckPwdResource1" />
                            <asp:Label ID="Label19" runat="server" CssClass="description" 
                                Text="（填入4至10個字元的英文字母、數字組合。）" meta:resourcekey="Label17Resource1" />
                        </div>            
                    </div>
                    <div class="row" style="border-bottom:1px dotted #d4d4d4; padding-bottom:20px;">
                        <div class="col-md-2"><asp:Label ID="Label23" runat="server" Text="＊確認密碼：" 
                                meta:resourcekey="Label23Resource1"></asp:Label></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="ChkPwd" runat="server" Width="300px" TextMode="Password" 
                                meta:resourcekey="ChkPwdResource1" MaxLength="10" />
                            <asp:Label ID="CheckPwd2" runat="server" ForeColor="Red" Text="密碼與確認密碼不同" Visible="False" 
                                meta:resourcekey="CheckPwd2Resource1" />                
                            <asp:Label ID="Label20" runat="server" CssClass="description" 
                                Text="（請再一次輸入所設定密碼）" meta:resourcekey="Label19Resource1" />
                        </div>            
                    </div>
                    <div class="row" style="padding-top:10px;">
                        <div class="col-md-12" style="background-color:#f5f5f5; border-top:1px solid #d4d4d4; padding:10px 30px;">
                            <span class="glyphicon glyphicon-pencil" style="background-color:#000000; color:#ffffff; padding:2px 2px; margin-right:10px;"></span>
                            <asp:Label ID="Label21" runat="server" Text="會員服務條款" 
                                meta:resourcekey="Label20Resource1" />                
                        </div>
                    </div>
                    <div class="row" style=" padding:0px 0px; margin-top:-4px;">
                        <div class="col-md-12" style="border:1px solid #d4d4d4; padding: 0px 0px;">                          
                            <div id="str_agree" runat="server" style="height:200px; overflow:auto; padding:10px 10px;">
                    
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" style="text-align:center;">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="已閱讀並同意接受會員服務條款" 
                                meta:resourcekey="CheckBox1Resource1" />
                            <asp:Label ID="CheckService" runat="server" ForeColor="Red" Text="您尚未同意服務條款" Visible="False"
                                meta:resourcekey="CheckServiceResource1"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"><asp:Label ID="Label22" runat="server" Text="＊驗證碼：" 
                                meta:resourcekey="Label21Resource1" /></div>
                        <div class="col-md-5">
                            <asp:TextBox ID="TextBox2" runat="server" Width="200px" 
                                style="margin-bottom:20px;" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
                                <asp:Image ID="Image2" runat="server" ImageUrl="ValidateCode.ashx" 
                                Width="57px" align="absmiddle" style="margin-left:5px; margin-bottom:6px;" 
                                meta:resourcekey="Image2Resource1" />
                                <a href="javascript: reload()" class="btn"><span class="glyphicon glyphicon-repeat"></span></a>
                                <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="請輸入正確驗證碼" Visible="False" 
                                meta:resourcekey="Label22Resource1"></asp:Label> 
                        </div>                    
                        <div class="col-md-5">
                            <asp:LinkButton ID="LinkButton8" runat="server" 
                                CssClass="btn btn-danger dropdown-toggle" 
                                style="margin-right:20px;" meta:resourcekey="LinkButton4Resource1" OnClick="LinkButton4_Click1" >
                                <span class="glyphicon glyphicon-user" style="font-size:large; margin-right:7px;"></span>
                                確認送出
                            </asp:LinkButton>
                            
                        </div>
                    </div>

                    
                </div>
            </div>
        </div>
        <div style="margin-top:40px;"></div>
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
