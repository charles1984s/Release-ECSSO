<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dealer.aspx.cs" Inherits="ECSSO.Dealer" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

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
<body>   
    <form id="form1" runat="server">
    <asp:HiddenField ID="siteid" runat="server" />
    <asp:HiddenField ID="language" runat="server" />
    <asp:HiddenField ID="returnurl" runat="server" />
    <asp:HiddenField ID="mem_id" runat="server" />
    <asp:HiddenField ID="RID" runat="server" />
    <asp:HiddenField ID="Click_ID" runat="server" />
    <div id="seller">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" meta:resourcekey="GridView1Resource1" CssClass="table table-bordered" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="序號" InsertVisible="False" SortExpression="id" meta:resourcekey="TemplateFieldResource1">                    
                    <ItemTemplate>
                        <%#Container.DisplayIndex + 1%>
                        <asp:HiddenField ID="ProdID" runat="server" Value='<%# Bind("id") %>' />
                        <asp:HiddenField ID="PosNo" runat="server" Value='<%# Bind("PosNo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="產品圖" meta:resourcekey="TemplateFieldResource5">
                     <ItemTemplate>                        
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("prodpic") %>' Height="50" />                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="料號" meta:resourcekey="TemplateFieldResource6">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("itemno") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="品項" SortExpression="title" meta:resourcekey="TemplateFieldResource2">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>' meta:resourcekey="Label1Resource1"></asp:Label>
                        <asp:HiddenField ID="Title" runat="server" Value='<%# Bind("title") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="產品規格" SortExpression="colortitle" meta:resourcekey="TemplateFieldResource3">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("colortitle") %>' meta:resourcekey="Label3Resource2"></asp:Label>
                        <asp:HiddenField ID="ColorID" runat="server" Value='<%# Bind("colorID") %>' />
                        &nbsp;/
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("sizetitle") %>' meta:resourcekey="Label4Resource1"></asp:Label>
                        <asp:HiddenField ID="SizeID" runat="server" Value='<%# Bind("sizeID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="庫存量" meta:resourcekey="TemplateFieldResource7">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("stock") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="訂購數量" SortExpression="qty" meta:resourcekey="TemplateFieldResource4">
                    <ItemTemplate>                        
                        <asp:TextBox ID="QTY" runat="server" Text="0" Width="41px" meta:resourcekey="QTYResource1"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="QTY" ErrorMessage="X" ValidationExpression="^\d{1,}$" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="System.Data.SqlClient" SelectCommand="SELECT a.id, a.title, '0' as qty, ISNULL(c.title, '-') AS colortitle, ISNULL(d.title, '-') AS sizetitle, c.id AS colorID, d.id AS sizeID,a.PosNo,a.itemno,replace(a.img1,'/upload/','/upload/' + f.crm_org + '/') as prodpic,b.stock FROM member_product AS e LEFT OUTER JOIN prod AS a ON e.prod_id = a.id LEFT OUTER JOIN prod_Stock AS b ON b.prod_id = a.id LEFT OUTER JOIN prod_color AS c ON b.colorID = c.id LEFT OUTER JOIN prod_size AS d ON b.sizeID = d.id,(select top 1 crm_org from head) as f WHERE (a.disp_opt = 'Y') AND (b.stock > 0) AND (e.member_id = @mem_id) ORDER BY a.ser_no, a.id DESC">
            <SelectParameters>                
                <asp:ControlParameter DefaultValue="" Name="mem_id" ControlID="mem_id" />                
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:LinkButton ID="LinkButton1" runat="server" 
            CssClass="btn btn-danger dropdown-toggle" OnClick="LinkButton1_Click" meta:resourcekey="LinkButton1Resource1" Text="&lt;span class=&quot;glyphicon glyphicon-ok-sign&quot; style=&quot;font-size:large; margin-right:7px;&quot;&gt;&lt;/span&gt;確認購買"></asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" 
            CssClass="btn btn-warning dropdown-toggle" onclick="LinkButton2_Click" meta:resourcekey="LinkButton2Resource1" Text="&lt;span class=&quot;glyphicon glyphicon-home&quot; style=&quot;font-size:large; margin-right:7px;&quot;&gt;&lt;/span&gt;回網站首頁"></asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" 
            CssClass="btn btn-primary dropdown-toggle" onclick="LinkButton3_Click" meta:resourcekey="LinkButton3Resource1" Text="&lt;span class=&quot;glyphicon glyphicon-remove&quot; style=&quot;font-size:large; margin-right:7px;&quot;&gt;&lt;/span&gt;登出"></asp:LinkButton>                
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
