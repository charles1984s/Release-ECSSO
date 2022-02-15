<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopping2.aspx.cs" Inherits="ECSSO.Shopping2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/datepicker.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/Scripts/html5shiv.min.js"></script>
    <script src="/Scripts/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="address.js"></script>    
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="discount_amt" runat="server" />        
        <asp:HiddenField ID="jsonStr" runat="server" />           
        <asp:HiddenField ID="language" runat="server" />        
        <div class="container">          
            <div class="row-fluid">                          
                <div class="col-md-12" id="shoppingcar2" runat="server" style="margin-bottom:3px;">
                    <asp:Table ID="Table1" runat="server" meta:resourcekey="Table1Resource1"></asp:Table>
                </div>                                      
                <div class="col-md-12" id="shoppingcar" runat="server" style="margin-bottom:3px;"></div>
            </div>   
            <div class="row orderitem4" style="margin-left:15px;">
                <div class="col-md-6">     
                    <div class="row" style="margin-left:-10px;">
                        <div class="col-md-12" style=" margin-left:5px; padding:5px 0px;">
                        <span class="glyphicon glyphicon-pencil" style="background-color:#000000; color:#ffffff; padding:2px 2px;"></span>
                            <asp:Label ID="Label1" runat="server" Text="訂購資訊" meta:resourcekey="Label1Resource1"></asp:Label>
                            <asp:HiddenField ID="o_addr" runat="server" />
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label2" runat="server" Text="姓名：" meta:resourcekey="Label2Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 shoppingwhitebg">
                        <asp:TextBox ID="o_name" runat="server" Width="150px" style="margin-top:3px;" 
                                meta:resourcekey="o_nameResource1"></asp:TextBox>
                            <asp:DropDownList ID="o_sex" runat="server" meta:resourcekey="o_sexResource1">
                                <asp:ListItem Value="1" meta:resourcekey="ListItemResource1">先生</asp:ListItem>
                                <asp:ListItem Value="2" meta:resourcekey="ListItemResource2">小姐</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="o_name" ErrorMessage="請輸入訂購者人名" meta:resourcekey="RequiredFieldValidator1Resource1"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label3" runat="server" Text="電話：" meta:resourcekey="Label3Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 shoppingwhitebg">
                        <asp:TextBox ID="o_tel" runat="server" Width="207px" style="margin-top:3px;" meta:resourcekey="o_telResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="o_tel" ErrorMessage="請輸入訂購人電話" meta:resourcekey="RequiredFieldValidator2Resource1"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label4" runat="server" Text="手機：" meta:resourcekey="Label4Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 shoppingwhitebg">
                        <asp:TextBox ID="o_cell" runat="server" Width="207px" style="margin-top:3px;" meta:resourcekey="o_cellResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="o_cell" ErrorMessage="請輸入訂購人手機" meta:resourcekey="RequiredFieldValidator3Resource1"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label5" runat="server" Text="電子信箱：" meta:resourcekey="Label5Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 shoppingwhitebg">
                        <asp:TextBox ID="mail" runat="server" Width="207px" style="margin-top:3px;" meta:resourcekey="mailResource1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="mail" ErrorMessage="請輸入電子信箱" meta:resourcekey="RequiredFieldValidator8Resource1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="請輸入正確電子信箱" ControlToValidate="mail" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row orderitem2" style="margin-bottom:10px;">
                        <div class="col-md-2 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label11" runat="server" Text="備註：" meta:resourcekey="Label11Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 shoppingwhitebg">
                        <asp:TextBox ID="notememo" runat="server" Width="212px" style="margin-top:3px;" meta:resourcekey="notememoResource1"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top:30px; margin-bottom:30px;">
                <div class="col-md-12 fontcenter">                    
                    <a href="javascript:history.go(-2);" style="color:#898989; font-size:small; padding-right:30px;">回上一頁</a>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        CssClass="btn btn-danger dropdown-toggle" meta:resourcekey="LinkButton1Resource1"><span class="glyphicon glyphicon-shopping-cart"></span>結帳</asp:LinkButton>                
                </div>
            </div>
            <div class="row" id="foot">
                <div class="col-md-12 fontcenter" style="padding-top:15px;">                
                    <asp:Label ID="Label12" runat="server" 
                        Text="建議您使用IE9.0 以上的瀏覽器| 螢幕解析度請設為 1280*1024 以上" meta:resourcekey="Label12Resource1"></asp:Label>
                </div>
            </div>      
        </div>
        <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
        <script type='text/javascript' src="js/jquery.s2t.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
		<script src="js/datepickerCtrl.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                if ($("input[name=language]").val() == "zh-cn") {
                    myInit();
                }            
                $("input[inputname=Birth]").datepicker({ format: 'yyyy/mm/dd' });
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
