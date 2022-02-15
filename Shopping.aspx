<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="ECSSO.Shopping" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" MaintainScrollPositionOnPostback="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/datepicker.css" rel="stylesheet">
    <link href="css/font-awesome-4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/Scripts/html5shiv.min.js"></script>
    <script src="/Scripts/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="address.js"></script>
</head>
<body class="para">
    <form id="form1" runat="server">
        <asp:HiddenField ID="discount_amt" runat="server" />
        <asp:HiddenField ID="jsonStr" runat="server" />
        <asp:HiddenField ID="language" runat="server" />
        <asp:HiddenField ID="version" runat="server" />
        <div class="container">
            <div class="row-fluid">
                <div class="col-md-12" id="shoppingcar2" runat="server" style="margin-bottom: 3px;">
                    <asp:Table ID="Table1" runat="server"></asp:Table>
                </div>
                <div class="col-md-12" id="shoppingcar" runat="server" style="margin-bottom: 3px;">
                </div>
            </div>

            <div class="row" style="margin-left: 15px;" id="CVSdiv" visible="false" runat="server">
                <div class="col-md-12">
                    <span class="fa fa-home" style="background-color: #000000; color: #ffffff; padding: 2px 2px;"></span>
                    <asp:LinkButton ID="LinkButton2" runat="server" Style="margin-top: 3px;">選擇取貨門市</asp:LinkButton>
                    <asp:HyperLink ID="LinkButton3" runat="server" NavigateUrl="http://emap.pcsc.com.tw/emap.aspx" Target="_blank">搜尋7-11門市</asp:HyperLink>
                    <asp:HyperLink ID="LinkButton4" runat="server" NavigateUrl="http://www.family.com.tw/marketing/inquiry.aspx" Target="_blank">搜尋全家門市</asp:HyperLink>
                </div>
                <div class="row formInput">
                    <div class="col-md-1 col-sm-1">
                        <span class="title">門市代號</span>
                    </div>
                    <div class="col-md-11 col-sm-11">
                        <asp:TextBox Name="CVSStoreID" ID="CVSStoreID" runat="server" Width="50%" Style="margin-top: 3px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="請輸入門市代號" ControlToValidate="CVSStoreID"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row formInput">
                    <div class="col-md-1 col-sm-1">
                        <span class="title">門市名稱</span>
                    </div>
                    <div class="col-md-11 col-sm-11">
                        <asp:TextBox Name="CVSStoreID" ID="CVSStoreName" runat="server" Width="50%" Style="margin-top: 3px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="CVSStoreName" ErrorMessage="請輸入門市名稱"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row formInput">
                    <div class="col-md-1 col-sm-1">
                        <span class="title">門市地址</span>
                    </div>
                    <div class="col-md-11 col-sm-11">
                        <asp:TextBox Name="CVSStoreID" ID="CVSAddress" runat="server" Width="50%" Style="margin-top: 3px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="CVSAddress" ErrorMessage="請輸入門市地址"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row formInput">
                    <div class="col-md-1 col-sm-1">
                        <span class="title">門市電話</span>
                    </div>
                    <div class="col-md-11 col-sm-11">
                        <asp:TextBox Name="CVSStoreID" ID="CVSTelephone" runat="server" Width="50%" Style="margin-top: 3px;"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row formInput" style="margin-left: 15px;" id="PickupShop" visible="false" runat="server">
                <div class="col-md-6">
                    <asp:Label ID="Label15" runat="server" Text="取貨門市"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="false" AppendDataBoundItems="True"
                        DataTextField="title" DataValueField="id" DataSourceID="SqlDataSource4"
                        Style="margin-top: 3px;">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                        ProviderName="System.Data.SqlClient"
                        SelectCommand="select id,title from bookingstore where disp_opt='Y'"></asp:SqlDataSource>
                </div>

                <div class="col-md-6" id="bindingcredit" name="bindingcredit" runat="server">
                    <asp:Label ID="Label14" runat="server" Text="請選擇付款信用卡："></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="false">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row orderitem4" style="margin-left: 15px;" id="OrderForm" runat="server">
                <div id="orderMemData" class="col-md-6" runat="server">
                    <div class="row" style="margin-left: -10px;">
                        <div class="col-md-12" style="margin-left: 5px; padding: 5px 0px;">
                            <span class="glyphicon glyphicon-pencil" style="background-color: #000000; color: #ffffff; padding: 2px 2px;"></span>
                            <asp:Label ID="Label1" runat="server" Text="訂購資訊"
                                meta:resourcekey="Label1Resource1"></asp:Label>
                            <asp:HiddenField ID="o_addr" runat="server" />
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 col-sm-1 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label2" runat="server" Text="姓名："
                                meta:resourcekey="Label2Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <asp:TextBox ID="o_name" runat="server" Width="47%" Style="margin-top: 3px;" MaxLength="50"
                                meta:resourcekey="o_nameResource1"></asp:TextBox>
                            <asp:DropDownList ID="o_sex" runat="server" meta:resourcekey="o_sexResource1">
                                <asp:ListItem Value="1" meta:resourcekey="ListItemResource1">先生</asp:ListItem>
                                <asp:ListItem Value="2" meta:resourcekey="ListItemResource2">小姐</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="o_name" ErrorMessage="請輸入訂購者人名"
                                meta:resourcekey="RequiredFieldValidator1Resource1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" 
                                ID="RegularExpressionValidator1"
                                CssClass="RegularExpression" data-target="#o_name"
                                meta:resourcekey="NameRequired"
                                ValidationExpression="^([^\d\\\]\[!#$%&'*+,./:;<=>?@\^`{|}~]){2,}$"
                                ControlToValidate="o_name"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 col-sm-1 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label3" runat="server" Text="電話："
                                meta:resourcekey="Label3Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <asp:TextBox ID="o_tel" runat="server" Width="47%" Style="margin-top: 3px;"
                                meta:resourcekey="o_telResource1"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 col-sm-1 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label4" runat="server" Text="手機："
                                meta:resourcekey="Label4Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <asp:TextBox ID="o_cell" runat="server" Width="47%" Style="margin-top: 3px;"
                                meta:resourcekey="o_cellResource1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="o_cell" ErrorMessage="請輸入訂購人手機"
                                meta:resourcekey="RequiredFieldValidator3Resource1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RequiredFieldValidator14" runat="server" CssClass="RegularExpression" data-target="#o_cell"
                                ErrorMessage="手機格式錯誤"
                                meta:resourcekey="RequiredFieldValidator3Resource2"
                                ValidationExpression="^09\d{2}[-|\s]?\d{3}[-|\s]?\d{3}$"
                                ControlToValidate="o_cell"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 col-sm-1 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label5" runat="server" Text="電子信箱："
                                meta:resourcekey="Label5Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <asp:TextBox ID="mail" runat="server" Width="47%" Style="margin-top: 3px;"
                                meta:resourcekey="mailResource1"></asp:TextBox>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="RegularExpression" data-target="#mail" ClientValidationFunction="checkMail" ValidateEmptyText="true"
                                ControlToValidate="mail" ErrorMessage="請輸入正確電子信箱" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:CustomValidator>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 col-sm-1 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label16" runat="server" Text="統一編號："
                                meta:resourcekey="identResource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <asp:TextBox ID="ident" runat="server" Width="47%" Style="margin-top: 3px;"
                                meta:resourcekey="mailResource1"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 orderitem3" id="orderitem3" runat="server">
                    <div class="row" style="margin-left: -5px;">
                        <div class="col-md-12" style="padding: 5px 0px;">
                            <span class="glyphicon glyphicon-pencil" style="background-color: #000000; color: #ffffff; padding: 2px 2px;"></span>
                            <asp:Label ID="Label6" runat="server" Text="收件人資訊"
                                meta:resourcekey="Label6Resource1"></asp:Label>
                            <asp:CheckBox ID="CheckBox1" Text="同訂購人資訊" runat="server"
                                OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True"
                                Style="padding-left: 5px;" meta:resourcekey="CheckBox1Resource1" />
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 col-sm-1 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label7" runat="server" Text="姓名："
                                meta:resourcekey="Label7Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <asp:TextBox ID="name" runat="server" MaxLength="50" Style="margin-top: 3px;" Width="212px" placeholder="請輸入完整姓名，避免無法領貨"
                                meta:resourcekey="nameResource2"></asp:TextBox>
                            <asp:DropDownList ID="sex" runat="server" meta:resourcekey="sexResource2">
                                <asp:ListItem Value="1" meta:resourcekey="ListItemResource3">先生</asp:ListItem>
                                <asp:ListItem Value="2" meta:resourcekey="ListItemResource4">小姐</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="name" ErrorMessage="請輸入收件人名"
                                meta:resourcekey="RequiredFieldValidator4Resource1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" 
                                ID="RegularExpressionValidator3"
                                CssClass="RegularExpression" data-target="#name"
                                meta:resourcekey="NameRequired"
                                ValidationExpression="^([^\d\\\]\[!#$%&'*+,./:;<=>?@\^`{|}~]){2,}$"
                                ControlToValidate="name"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 col-sm-1 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label8" runat="server" Text="電話："
                                meta:resourcekey="Label8Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <asp:TextBox ID="tel" runat="server" Style="margin-top: 3px;" Width="212px"
                                meta:resourcekey="telResource2"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row orderitem2">
                        <div class="col-md-2 col-sm-1 orderitem" style="padding-right: 0px;">
                            <asp:Label ID="Label9" runat="server" Text="手機："
                                meta:resourcekey="Label9Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <asp:TextBox ID="cell" runat="server" Style="margin-top: 3px;" Width="212px"
                                meta:resourcekey="cellResource2"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                ControlToValidate="cell" ErrorMessage="請輸入收件人手機"
                                meta:resourcekey="RequiredFieldValidator6Resource1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" CssClass="RegularExpression" data-target="#cell"
                                ID="RequiredFieldValidator13"
                                ErrorMessage="手機格式錯誤"
                                meta:resourcekey="RequiredFieldValidator3Resource2"
                                ValidationExpression="^09\d{2}[-|\s]?\d{3}[-|\s]?\d{3}$"
                                ControlToValidate="cell"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row orderitem2" runat="server" id="divaddr1">
                        <div class="col-md-2 col-sm-1 orderitem" style="border: 0px; padding-right: 0px;">
                            <asp:Label ID="Label10" runat="server" Text="地址："
                                meta:resourcekey="Label10Resource1"></asp:Label>
                        </div>
                        <div class="col-md-10 col-sm-11 shoppingwhitebg">
                            <div runat="server" id="twCity">
                                <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True" AppendDataBoundItems="True"
                                    DataTextField="name" DataValueField="id" DataSourceID="SqlDataSource1"
                                    Style="margin-top: 3px;" meta:resourcekey="ddlCityResource1">
                                    <asp:ListItem Selected="True" meta:resourcekey="ListItemResource5"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:sqlDB %>"
                                    ProviderName="System.Data.SqlClient"
                                    SelectCommand="SELECT [id], [name] FROM [city]"></asp:SqlDataSource>
                                &nbsp;<asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True"
                                    DataTextField="name" DataValueField="name" DataSourceID="SqlDataSource2"
                                    meta:resourcekey="ddlCountryResource1">
                                    <asp:ListItem Selected="True" meta:resourcekey="ListItemResource6"></asp:ListItem>
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
                                    <asp:ListItem Selected="True" meta:resourcekey="ListItemResource7"></asp:ListItem>
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
                            </div>
                            <asp:TextBox ID="address" runat="server" Width="212px" Style="margin-top: 3px;" meta:resourcekey="addressResource1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                ControlToValidate="address" ErrorMessage="請輸入收件地址"
                                meta:resourcekey="RequiredFieldValidator7Resource1"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row orderitem2" style="margin: 10px -1px 10px 25px;">
                <div class="col-sm-1 orderitem" style="padding-right: 0px;">
                    <asp:Label ID="Label17" runat="server" Text="備註："
                        meta:resourcekey="Label11Resource1"></asp:Label>
                </div>
                <div class="col-sm-11 shoppingwhitebg">
                    <asp:TextBox ID="formRelationDetail" CssClass="hidden" runat="server"></asp:TextBox>
                    <div class="col-md-12" id="formRelation" runat="server" style="margin-bottom: 3px;"></div>
                    <asp:TextBox ID="notememo" runat="server" Width="96%" Style="margin-top: 3px; padding: 10px 2%;"
                        meta:resourcekey="notememoResource1"></asp:TextBox>
                    <asp:CustomValidator ID="formRelationValidator" runat="server" CssClass="RegularExpression" ClientValidationFunction="checkFormRelation" ValidateEmptyText="true"
                                ControlToValidate="formRelationDetail" ErrorMessage="資料未正確填寫" meta:resourcekey="RegularExpressionformRelationValidator"></asp:CustomValidator>
                </div>
            </div>
            <div class="row orderMemo">
                <div id="orderMemoText" runat="server" class="col-sm-12" style="margin: 10px -1px 10px 25px; color: red;"></div>
            </div>
            <div id="invoice" visible="true" runat="server">
                <div class="row">
                    <div class="col-md-12">
                        <asp:CheckBox ID="CheckBox2" Text="發票另寄" Font-Size="Medium" runat="server"
                            Style="padding-left: 5px;" meta:resourcekey="CheckBox1Resource3" AutoPostBack="True" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1 col-sm-1 col-xs-3 title">
                        <asp:Label Text="寄送地址" runat="server" meta:resourcekey="oaddr"></asp:Label></div>
                    <div class="col-md-5 col-sm-5 col-xs-9">
                        <asp:DropDownList ID="invoiceCity" runat="server" AutoPostBack="True" AppendDataBoundItems="True"
                            DataTextField="name" DataValueField="id" DataSourceID="SqlDataSource1"
                            Style="margin-top: 3px;" meta:resourcekey="ddlCityResource1">
                            <asp:ListItem Selected="True" meta:resourcekey="ListItemResource5"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server"
                            ConnectionString="<%$ ConnectionStrings:sqlDB %>"
                            ProviderName="System.Data.SqlClient"
                            SelectCommand="SELECT [id], [name] FROM [city]"></asp:SqlDataSource>
                        &nbsp;<asp:DropDownList ID="invoiceCountry" runat="server" AutoPostBack="True"
                            DataTextField="name" DataValueField="name" DataSourceID="SqlDataSource6"
                            meta:resourcekey="ddlCountryResource1">
                            <asp:ListItem Selected="True" meta:resourcekey="ListItemResource6"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server"
                            ConnectionString="<%$ ConnectionStrings:sqlDB %>"
                            ProviderName="System.Data.SqlClient"
                            SelectCommand="SELECT [name] FROM [area] WHERE ([cityid] = @cityid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="invoiceCity" Name="cityid"
                                    PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True"
                            DataTextField="zip" DataValueField="zip" DataSourceID="SqlDataSource7"
                            meta:resourcekey="ddlzipResource1">
                            <asp:ListItem Selected="True" meta:resourcekey="ListItemResource7"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server"
                            ConnectionString="<%$ ConnectionStrings:sqlDB %>"
                            SelectCommand="SELECT [zip] FROM [area] WHERE ([cityid] = @cityid) and name=@name">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="invoiceCity" Name="cityid"
                                    PropertyName="SelectedValue" Type="Int32" />
                                <asp:ControlParameter ControlID="invoiceCountry" Name="name"
                                    PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:TextBox ID="oaddr" placeholder="請輸入正確發票地址" runat="server" Width="207px" MaxLength="30"
                            Style="margin-top: 3px;"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1 col-sm-1 col-xs-3 title">
                        <asp:Label Text="發票抬頭" runat="server" meta:resourcekey="invoice_title"></asp:Label>
                    </div>
                    <div class="col-md-5 col-sm-5 col-xs-9">
                        <asp:TextBox ID="invoiceTitle" placeholder="請輸入正確發票抬頭" runat="server" Width="212px" Style="margin-top: 3px;"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row" id="AddMember" visible="true" runat="server">
                <div class="col-md-12">
                    <asp:CheckBox ID="CheckBox3" Text="自動加入會員" Font-Size="Medium" Checked="true" runat="server"
                        Style="padding-left: 5px;" meta:resourcekey="CheckBox1Resource2" AutoPostBack="True" />
                </div>
                <div class="col-md-1 col-sm-1 col-xs-3 title">
                    <asp:Label Text="密碼" runat="server" meta:resourcekey="password"></asp:Label></div>
                <div class="col-md-5 col-sm-5 col-xs-9">
                    <asp:TextBox TextMode="Password" ID="password" runat="server" Width="207px" MaxLength="10" Style="margin-top: 3px;"></asp:TextBox>
                </div>
                <div class="col-md-1 col-sm-1 col-xs-3 title">
                    <asp:Label Text="密碼確認" runat="server" meta:resourcekey="confirmPassword"></asp:Label></div>
                <div class="col-md-5 col-sm-5 col-xs-9">
                    <asp:TextBox TextMode="Password" ID="confirmPassword" runat="server" Width="207px" MaxLength="10" Style="margin-top: 3px;"></asp:TextBox>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1 col-sm-1 col-xs-3"></div>
                        <div class="col-md-5 col-sm-5 col-xs-9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                ErrorMessage="請輸入密碼" ControlToValidate="password" EnableClientScript="False" meta:resourcekey="typepassword"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic"
                                ErrorMessage="密碼長度需為4~10個字元之英、數字組合，大小寫視為不同字元。" ControlToValidate="password" 
                                ValidationExpression="\S{4,10}" meta:resourcekey="lengthpassword"></asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic"
                                ErrorMessage="密碼與密碼確認不相符" ControlToValidate="password" 
                                ControlToCompare="confirmPassword" meta:resourcekey="passwordnotmatch"></asp:CompareValidator>
                            <asp:Label ID="custMemo" runat="server" ForeColor="Red" Text="請牢記您的密碼，此密碼做為日後登入使用" meta:resourcekey="keeppassword"></asp:Label>
                        </div>
                        <div class="col-md-1 col-sm-1 col-xs-3"></div>
                        <div class="col-md-5 col-sm-5 col-xs-9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                                ErrorMessage="請輸入密碼確認" ControlToValidate="confirmPassword" meta:resourcekey="typepasswordconfirm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>


            <div id="HiddenDIV" runat="server">
                <asp:HiddenField ID="h_o_addr" runat="server" />
                <asp:HiddenField ID="h_o_name" runat="server" />
                <asp:HiddenField ID="h_o_sex" runat="server" />
                <asp:HiddenField ID="h_o_tel" runat="server" />
                <asp:HiddenField ID="h_o_cell" runat="server" />
                <asp:HiddenField ID="h_mail" runat="server" />
            </div>
            <div class="row" style="margin-top: 30px; margin-bottom: 30px;">
                <div class="col-md-12 fontcenter">
                    <a href="javascript:void(0)" style="color: #898989; font-size: small; padding-right: 30px;" runat="server" id="backbtn">
                        <asp:Label ID="Label13" runat="server" Text="回上一頁" meta:resourcekey="Label13Resource1"></asp:Label></a>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"
                        CssClass="btn btn-danger dropdown-toggle"
                        meta:resourcekey="LinkButton1Resource1"><span class="glyphicon glyphicon-shopping-cart"></span>結帳</asp:LinkButton>
                </div>
            </div>
            <div class="row" id="foot" runat="server">
                <div class="col-md-12 fontcenter" style="padding-top: 15px;">
                    <asp:Label ID="Label12" runat="server"
                        Text="建議您使用IE9.0 以上的瀏覽器| 螢幕解析度請設為 1280*1024 以上"
                        meta:resourcekey="Label12Resource1"></asp:Label>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery.s2t.js"></script>
        <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="js/datepickerCtrl.js"></script>
        <script type="text/javascript">
            function checkMail(sender, e) {
                var r = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                if ($("[name='CheckBox3']").prop('checked')) {
                    if (e.Value == "") e.IsValid = false;
                    else if (r.test(e.Value)) e.IsValid = true;
                    else e.IsValid = false;
                } else {
                    if (e.Value != "") e.IsValid = r.test(e.Value);
                    else e.IsValid = true;
                }
            }
            function checkFormRelation(sender, e) {
                var check = true;
                var data = [];
                var errorItem = null;
                $("#formRelation").find(".contactItem>label").each(function () {
                    var $self = $(this);
                    var $id = $("#" + $self.attr("for"));
                    var $memo = $self.next().children(".memo")
                    var value = "";
                    switch (parseInt($self.data("displaytype"))) {
                        case 1:
                        case 2:
                        case 6:
                            value = $id.val();
                            break;
                        case 3:
                        case 4:
                            $id = $('[name="' + $self.attr("for") + '"]:checked');
                            value = "";
                            $id.each(function () {
                                if ($id.hasClass("other")) {
                                    value += $('[name="myItemOther' + $self.data("key") + '"]').val()+"、";
                                } else {
                                    value += $(this).val().toString() + "、";
                                }
                            });
                            value = value.substring(0, value.length-1)
                            break;
                        case 5:
                            value = $id.find("option:selected").val();
                            break;
                    }
                    data.push({
                        id: $self.data("key"),
                        value: value
                    });
                    if ($self.hasClass("must")) {
                        if (value == "") {
                            $memo.removeClass("hidden");
                            check = false;
                            if (errorItem == null) {
                                errorItem = $id.length > 0 ? $id : $('[name="' + $self.attr("for") + '"]').first();
                            }
                        } else {
                            $memo.addClass("hidden")
                        }
                    }
                });
                $("#formRelationDetail").val(JSON.stringify(data));
                if (!check && !!e) {
                    if (errorItem != null) errorItem.focus();
                }
                if(!!e) e.IsValid = check;
            }
            $("[name = 'password']").change(function () {
                if ($(this).val() == "" && $("#RequiredFieldValidator8").css("visibility") == "hidden") $("#custMemo").show();
                else $("#custMemo").hide();
            });
            $("[name='CheckBox3']").change(function () {
                if ($(this).is(':checked')) {
                    $("#AddMember>div:not(:first-child)").removeClass("hide");
                } else {
                    $("#AddMember>div:not(:first-child)").addClass("hide");
                }
            });
            $("#backbtn").click(function () {
                if (parseInt($("#version").val()) == 1) history.go(-2);
                else history.go(-1);
            });
            $("#LinkButton1").click(function () {
                var self = $(this);
                $(self).hide();
                setTimeout(function () {
                    $(self).show();
                }, 500);
                setTimeout(function () {
                    var index = $("#LinkButton1").index(this);
                    var mail = $("#mail").val(), address = $("#address").val(), cell = $("#cell").val(), tel = $("#tel").val(), name = $("#name").val(), o_cell = $("#o_cell").val(), o_tel = $("#o_tel").val(), o_name = $("#o_name").val();
                    var memberCheck = !$("[name = 'CheckBox3']").is(':checked') ? true : ($("[name = 'password']").val() != "" && $("[name = 'confirmPassword']").val() != "" && $("[name = 'confirmPassword']").val().length > 3 && $("[name = 'password']").val() == $("[name = 'confirmPassword']").val());
                    var text1 = "謝謝您的訂購！";
                    var text2 = "您已申請成為本站會員，我們會發送一會員通知信，請您至所登錄的電子信箱收取並進行驗證後，方成為正式會員享受各項會員權利！";
                    var text3 = "訂單處理中，若有錯誤請修正後重送訂單。請勿按[回上頁]按鈕，以免重複下單，或發生其他不可預期的錯誤！";
                    var massage = $("[name = 'CheckBox3']").is(':checked') ? text1 + "\n" + text2 + "\n\n" + text3 : text1 + "\n" + text3;
                    var check = true;
                    $(".RegularExpression").each(function () {
                        if ($(this).css("visibility") == "visible") {
                            $($(this).data("target")).focus();
                            check = false;
                            return check;
                        }
                    });
                    if (address != '' && cell != '' && name != '' && o_cell != '' && o_name != '' && memberCheck && check) {
                        if ($("#CVSdiv").length) {
                            if ($("#CVSStoreID").val() != "" && $("#CVSStoreName").val() != "" && $("#CVSAddress").val() != "") {
                                $(this).css({ display: "none" });
                                $(self).hide();
                                alert(massage);
                            }
                            else {
                                alert("請確認您所輸入的資料");
                            }
                        }
                        else {
                            $(self).hide();
                            $(this).css({
                                display: "none"
                            });
                            alert(massage);
                        }

                    }
                    else {
                        if (memberCheck) {
                            $("[name = 'password']").text("");
                            $("[name = 'confirmPassword']").text("");
                            $("[name = 'password']").focus();
                        }

                        if ($("#address").length) {
                            if (address == '') {
                                $("#address").focus();
                            }
                        }
                        if (cell == '') {
                            $("#cell").focus();
                        }
                        /*if (tel == '') {
                            $("#tel").focus();
                        }*/
                        if (name == '') {
                            $("#name").focus();
                        }
                        if (o_cell == '') {
                            $("#o_cell").focus();
                        }
                        /*if (o_tel == '') {
                            $("#o_tel").focus();
                        }*/
                        if (o_name == '') {
                            $("#o_name").focus();
                        }
                        if ($("#CVSdiv").length) {
                            if ($("#CVSStoreID").val() == "") {
                                $("#CVSStoreID").focus();
                            }
                            if ($("#CVSStoreName").val() == "") {
                                $("#CVSStoreName").focus();
                            }
                            if ($("#CVSAddress").val() == "") {
                                $("#CVSAddress").focus();
                            }
                        }
                        //alert("請確認您所輸入的資料");
                    }

                }, 500);
            });

            $(document).ready(function () {
                if ($("input[name=language]").val() == "zh-cn") {
                    myInit();
                }
                $("input[inputname=Birth]").datepicker({ format: 'yyyy/mm/dd' });
                if ($("[name='CheckBox3']").is(':checked')) {
                    $("#AddMember>div:not(:first-child)").removeClass("hide");
                } else {
                    $("#AddMember>div:not(:first-child)").addClass("hide");
                }
                if ($("[name='CheckBox2']").is(':checked')) {
                    $("#invoice>div:not(:first-child)").removeClass("hide");
                } else {
                    $("#invoice>div:not(:first-child)").addClass("hide");
                }
                $("#formRelation input,#formRelation textarea,#formRelation select").on("change", function () {
                    checkFormRelation();
                });
                if ($("#formRelationDetail").val() != "") {
                    try {
                        var data = JSON.parse($("#formRelationDetail").val())
                        $(data).each(function () {
                            var self = this;
                            var items = $('[name="Contact' + self.id + '"]');
                            if (self.value != "") {
                                switch (items.first().attr("type").toLowerCase()) {
                                    case "radio":
                                    case "checkbox":
                                        var a = self.value.split("、");
                                        $(items).prop("checked", false);
                                        for (i = 0; i < a.length; i++) {
                                            var e = $('[name="Contact' + self.id + '"][value="' + a[i] + '"]');
                                            if (e.length == 0) {
                                                $('[name="Contact' + self.id + '"][value=""]').prop("checked", true);
                                                $('[name="myItemOther' + self.id + '"]').val(self.value);
                                            } else {
                                                $(e).prop("checked", true);
                                            }
                                        }
                                        break;
                                    case "text":
                                    case "date":
                                        $('[name="Contact' + self.id + '"]').val(self.value);
                                        break;
                                    default:
                                        switch ($(items)[0].tagName.toLowerCase()) {
                                            case "select":
                                                $(items).find("option[value='" + self.value + "']").prop("selected", true);
                                                break;
                                            case "textarea":
                                                $(items).val(self.value);
                                                break;
                                        }
                                        break;
                                }
                            }
                        });
                    } catch(e){ }
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
