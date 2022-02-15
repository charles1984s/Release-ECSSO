<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabletest.aspx.cs" Inherits="ECSSO.api.tabletest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" action="http://tatvip.ezsale.tw/tat/api/getprod.ashx" method="post">
    <div>
        CheckM = <input type="text" id="CheckM" name="CheckM" value="2394a72eb078fc032c1d845fc2662eeb" /><br />
        OrderID = <input type="text" id="Type" name="Type" value="3" /><br />
        SiteID = <input type="text" id="SiteID" name="SiteID" value="778" /><br />
        Items = <input type="text" id="Items" name="Items" value="" /><br />
        <input type="submit" value="submit" />
    </div>
    </form>
</body>
</html>
