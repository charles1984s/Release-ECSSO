<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberAdd.aspx.cs" Inherits="ECSSO.MemberAdd" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

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
    <asp:HiddenField ID="RID" runat="server" />
    <asp:HiddenField ID="Click_ID" runat="server" />
    <asp:HiddenField ID="Checkm" runat="server" />
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
                <asp:Label ID="Label7" runat="server" Text="加入會員" 
                    meta:resourcekey="Label7Resource1"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label18" runat="server" Text="＊Email：" meta:resourcekey="Label18Resource1"></asp:Label></div>
            <div class="col-md-10">
                <asp:TextBox ID="Email" runat="server" Width="300px" 
                    meta:resourcekey="EmailResource1" MaxLength="50" />
                <asp:Label ID="CheckEmail" runat="server" ForeColor="Red" Text="Email格式錯誤" Visible="false"
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
                <asp:Label ID="CheckName" runat="server" ForeColor="Red" Text="請輸入您的名字" Visible="false" 
                    meta:resourcekey="CheckNameResource1" />
            </div>            
        </div>
        <div class="row">
            <div class="col-md-2"><asp:Label ID="Label11" runat="server" Text="＊生日：" 
                    meta:resourcekey="Label11Resource1" /></div>
            <div class="col-md-10">
                <asp:TextBox ID="BirthDay" runat="server" Width="300px" 
                    meta:resourcekey="BirthDayResource1" MaxLength="10" />
                <asp:Label ID="CheckBirthDay" runat="server" ForeColor="Red" Text="請輸入正確日期" Visible="false" 
                    meta:resourcekey="CheckBirthDayResource1" />
                <asp:Label ID="Label5" runat="server" CssClass="description" 
                    Text="格式:yyyy-MM-dd" meta:resourcekey="Label5Resource1"></asp:Label>
            </div>            
        </div>
        <div class="row">
            <div class="col-md-2"><asp:Label ID="Label12" runat="server" Text="＊聯絡電話：" 
                    meta:resourcekey="Label12Resource1" /></div>
            <div class="col-md-10">
                <asp:TextBox ID="Tel" runat="server" Width="300px" 
                    meta:resourcekey="TelResource1" MaxLength="15" />
                <asp:Label ID="CheckTel" runat="server" ForeColor="Red" Text="聯絡電話格式錯誤" Visible="false" 
                    meta:resourcekey="CheckTelResource1" />       
                <asp:Label ID="Label4" runat="server" CssClass="description" 
                    Text="格式:xx-xxxxxxx" meta:resourcekey="Label4Resource1"></asp:Label>
            </div>            
        </div>
        <div class="row">
            <div class="col-md-2"><asp:Label ID="Label13" runat="server" Text="＊行動電話：" 
                    meta:resourcekey="Label13Resource1" /></div>
            <div class="col-md-10">
                <asp:TextBox ID="CellPhone" runat="server" Width="300px" 
                    meta:resourcekey="CellPhoneResource1" MaxLength="15" />
                <asp:Label ID="CheckCellPhone" runat="server" ForeColor="Red" Text="行動電話格式錯誤" Visible="false" 
                    meta:resourcekey="CheckCellPhoneResource1" /> 
                <asp:Label ID="Label3" runat="server" CssClass="description" 
                    Text="格式:09xx-xxxxxx" meta:resourcekey="Label3Resource1"></asp:Label>  
            </div>            
        </div>
        <div class="row">
            <div class="col-md-2"><asp:Label ID="Label14" runat="server" Text="＊地址：" 
                    meta:resourcekey="Label14Resource1" /></div>
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
                <asp:Label ID="Checkaddress" runat="server" ForeColor="Red" Text="請輸入地址" Visible="false"
                    meta:resourcekey="CheckaddressResource1"></asp:Label>
            </div>            
        </div>
         <div class="row">
            <div class="col-md-2"><asp:Label ID="Label8" runat="server" Text="＊密碼：" 
                    meta:resourcekey="Label8Resource1"></asp:Label></div>
            <div class="col-md-10">
                <asp:TextBox ID="Pwd" runat="server" Width="300px" TextMode="Password" 
                    meta:resourcekey="PwdResource1" MaxLength="10" AutoCompleteType="Disabled" />
                <asp:Label ID="CheckPwd" runat="server" ForeColor="Red" Text="密碼長度請輸入4至10個英文或數字" Visible="false"
                    meta:resourcekey="CheckPwdResource1" />
                <asp:Label ID="Label1" runat="server" CssClass="description" 
                    Text="（填入4至10個字元的英文字母、數字組合。）" meta:resourcekey="Label1Resource1" />
            </div>            
        </div>
        <div class="row" style="border-bottom:1px dotted #d4d4d4; padding-bottom:20px;">
            <div class="col-md-2"></div>
            <div class="col-md-10">
                <asp:TextBox ID="ChkPwd" runat="server" Width="300px" TextMode="Password" 
                    meta:resourcekey="ChkPwdResource1" MaxLength="10" AutoCompleteType="Disabled" />
                <asp:Label ID="CheckPwd2" runat="server" ForeColor="Red" Text="密碼與確認密碼不同" Visible="false" 
                    meta:resourcekey="CheckPwd2Resource1" />                
                <asp:Label ID="Label2" runat="server" CssClass="description" 
                    Text="（請再一次輸入所設定密碼）" meta:resourcekey="Label2Resource1" />
            </div>            
        </div>
        <div class="row" style="padding-top:10px;">
            <div class="col-md-12" style="background-color:#f5f5f5; border-top:1px solid #d4d4d4; padding:10px 30px;">
                <span class="glyphicon glyphicon-pencil" style="background-color:#000000; color:#ffffff; padding:2px 2px; margin-right:10px;"></span>
                <asp:Label ID="Label15" runat="server" Text="會員服務條款" 
                    meta:resourcekey="Label15Resource1" />                
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
                <asp:Label ID="CheckService" runat="server" ForeColor="Red" Text="您尚未同意服務條款" Visible="false"
                    meta:resourcekey="CheckServiceResource1"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"><asp:Label ID="Label16" runat="server" Text="＊驗證碼：" 
                    meta:resourcekey="Label16Resource1" /></div>
            <div class="col-md-5">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" 
                    style="margin-bottom:20px;" AutoCompleteType="Disabled" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                    <asp:Image ID="Image1" runat="server" ImageUrl="ValidateCode.ashx" 
                    Width="57px" align="absmiddle" style="margin-left:5px; margin-bottom:6px;" 
                    meta:resourcekey="Image1Resource1" />
                    <a href="javascript: reload()" class="btn"><span class="glyphicon glyphicon-repeat"></span></a>
                    <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="請輸入正確驗證碼" Visible="false" 
                    meta:resourcekey="Label6Resource1"></asp:Label> 
            </div>                    
            <div class="col-md-5">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    CssClass="btn btn-danger dropdown-toggle" onclick="LinkButton1_Click" 
                    style="margin-right:20px;" meta:resourcekey="LinkButton1Resource1" >
                    <span class="glyphicon glyphicon-user" style="font-size:large; margin-right:7px;"></span>
                    確認送出
                </asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" 
                    CssClass="btn btn-primary dropdown-toggle" style=" width:107px;" 
                    onclick="LinkButton2_Click" meta:resourcekey="LinkButton2Resource1">
                    <span class="glyphicon glyphicon-remove" style="font-size:large; margin-right:7px;"></span>
                    取消
                </asp:LinkButton></div></div><div style="margin-top:60px;"></div>
        <footer class="bs-footer">
            <div class="row" id="foot">
                <div class="col-md-12 fontcenter" style="padding-top:15px;">      
                    <asp:Label ID="Label17" 
                        runat="server" Text="建議您使用IE9.0 以上的瀏覽器| 螢幕解析度請設為 1280*1024 以上" 
                        meta:resourcekey="Label17Resource1" /></div>
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
