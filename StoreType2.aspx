<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StoreType2.aspx.cs" Inherits="ECSSO.StoreType2" %>
<!DOCTYPE html>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
    <link href="Content/bootstrap.css" rel="stylesheet" /> 
    <link href="/admin/js/file-uploader/5.15.5/fine-uploader.min.css" rel="stylesheet" /> 
    <link href="/admin/js/file-uploader/5.15.5/fine-uploader-gallery.min.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="/Scripts/html5shiv.min.js"></script>
    <script src="/Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<body id="body" runat="server">
    <form id="form1" runat="server" enctype="multipart/form-data">
        <asp:HiddenField ID="siteid" runat="server" />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="returnurl" runat="server" />     
        <asp:HiddenField ID="language" runat="server" />    
        <asp:HiddenField ID="RID" runat="server" />               
        <asp:HiddenField ID="Click_ID" runat="server" />
        <div class="container">
            <div class="row">               
                <div class="col-md-3" id="leftframe" runat="server"></div>
                <div class="col-md-9" id="rightframe" name="rightframe" runat="server">
                    <div class="panel-group panel-page" id="store2FileDonload">
                        <div class="panel">
                            <div class="panel-heading">
                                請先下載下列檔案，填寫完畢後請以PDF格式上傳<br />
                                <a id="donloadStore2File1" runat="server">商標委任書</a>
                                <a id="donloadStore2File2" runat="server">委任契約書</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-group panel-page" id="store2CodePanel">
                        <div class="panel">
                            <div class="panel-heading">
                                已經您的資料送件完成案號如下：<p id="store2Code" runat="server"></p>
                            </div>
                        </div>
                    </div>
                    <div class="panel-group panel-page" id="accordion" runat="server"></div>
                </div>               
            </div>
            <div class="row">
                <div class="col-md-12" style="text-align:center; margin-top:20px;">                           
                    <asp:LinkButton ID="LinkButton2" runat="server"
                    CssClass="btn btn-warning dropdown-toggle" onclick="LinkButton2_Click" Text="&lt;span class=&quot;glyphicon glyphicon-home&quot; style=&quot;font-size:large; margin-right:7px;&quot;&gt;&lt;/span&gt;回網站首頁" meta:resourcekey="LinkButton2Resource1"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" 
                    CssClass="btn btn-primary dropdown-toggle" onclick="LinkButton3_Click" Text="&lt;span class=&quot;glyphicon glyphicon-remove&quot; style=&quot;font-size:large; margin-right:7px;&quot;&gt;&lt;/span&gt;登出" meta:resourcekey="LinkButton3Resource1"></asp:LinkButton>
                </div>
            </div>
        </div>
        <script type="text/template" id="qq-template-gallery">
            <div class="qq-uploader-selector qq-uploader qq-gallery" qq-drop-area-text="上傳一到多張檔案">
                <div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">
                    <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div>
                </div>
                <div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>
                    <span class="qq-upload-drop-area-text-selector"></span>
                </div>
                <div class="qq-upload-button-selector qq-upload-button">
                    <div>上傳檔案</div>
                </div>
                <span class="qq-drop-processing-selector qq-drop-processing">
                    <span>Processing dropped files...</span>
                    <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
                </span>
                <ul class="qq-upload-list-selector qq-upload-list" role="region" aria-live="polite" aria-relevant="additions removals">
                    <li>
                        <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
                        <div class="qq-progress-bar-container-selector qq-progress-bar-container">
                            <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-progress-bar-selector qq-progress-bar"></div>
                        </div>
                        <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
                        <div class="qq-thumbnail-wrapper">
                            <img class="qq-thumbnail-selector" qq-max-size="120" qq-server-scale>
                        </div>
                        <button type="button" class="qq-upload-cancel-selector qq-upload-cancel">X</button>
                        <button type="button" class="qq-upload-retry-selector qq-upload-retry">
                            <span class="qq-btn qq-retry-icon" aria-label="Retry"></span>
                            Retry
                        </button>
                        <div class="qq-file-info">
                            <div class="qq-file-name">
                                <span class="qq-upload-file-selector qq-upload-file"></span>
                                <span class="qq-edit-filename-icon-selector qq-edit-filename-icon" aria-label="Edit filename"></span>
                            </div>
                            <input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">
                            <span class="qq-upload-size-selector qq-upload-size"></span>
                            <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">
                                <span class="qq-btn qq-delete-icon" aria-label="Delete"></span>
                            </button>
                            <button type="button" class="qq-btn qq-upload-pause-selector qq-upload-pause">
                                <span class="qq-btn qq-pause-icon" aria-label="Pause"></span>
                            </button>
                            <button type="button" class="qq-btn qq-upload-continue-selector qq-upload-continue">
                                <span class="qq-btn qq-continue-icon" aria-label="Continue"></span>
                            </button>
                        </div>
                    </li>
                </ul>
                <dialog class="qq-alert-dialog-selector">
                    <div class="qq-dialog-message-selector"></div>
                    <div class="qq-dialog-buttons">
                        <button type="button" class="qq-cancel-button-selector">Close</button>
                    </div>
                </dialog>
                <dialog class="qq-confirm-dialog-selector">
                    <div class="qq-dialog-message-selector"></div>
                    <div class="qq-dialog-buttons">
                        <button> type="button" class="qq-cancel-button-selector">No</button>
                        <button type="button" class="qq-ok-button-selector">Yes</button></button>
                    </div>
                </dialog>
                <dialog class="qq-prompt-dialog-selector">
                    <div class="qq-dialog-message-selector"></div>
                    <input type="text">
                    <div class="qq-dialog-buttons">
                        <button type="button" class="qq-cancel-button-selector">Cancel</button>
                        <button type="button" class="qq-ok-button-selector">Ok</button>
                    </div>
                </dialog>
            </div>
        </script>
        <script type="text/javascript" src="/Scripts/jquery/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="/admin/js/jqueryform.js"></script>
        <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
        <script type='text/javascript' src="js/jquery.s2t.js"></script>
        <script type='text/javascript' src="/admin/js/file-uploader/5.15.5/fine-uploader.min.js"></script>
        <script type='text/javascript' src="/admin/js/file-uploader/5.15.5/fine-uploader.min.js"></script>
        <script type="text/javascript">
            var nowOrder;
            $.fn.extend({
                changeConten: function (obj) {
                    var $self = $(this)
                    var $h = $('<div class="panel-heading">');
                    if (obj.path == "") {
                        fileHandler($h[0], obj);
                    } else {
                        var $i = $('<button type="button" data-fileType="' + obj.key + '" title="刪除" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-trash"></span ></button >');
                        $h.append([obj.title+"(已上傳)", $i]);
                        $i.on("click", function () {
                            $self.deleteFile(obj)
                        });
                    }
                    $self.empty().append($h);
                    window.setTimeout(function () {
                        parent.doIframe && parent.doIframe();
                    })
                }, deleteFile(obj) {
                    var $self = $(this);
                    if (confirm("是否確認刪除" + obj.title + "?")) {
                        $.ajax({
                            type: "DELETE",
                            url: "/api/Order/OrderFileHandler.ashx",
                            data: { "siteid": obj.siteID, "orderID": obj.orderID, "memID": obj.memberid, "token": obj.token, "key": obj.key },
                            dataType: "json",
                            success: function (response) {
                                if (response.success) {
                                    alert("刪除成功!");
                                    obj.path = "";
                                    $self.changeConten(obj)
                                } else alert(response.error);
                            }
                        });
                    }
                }
            });
            function fileHandler(item, obj) {
                var uploader = new qq.FineUploader({
                    element: item, // 目標物件
                    template: "qq-template-gallery", // 模板物件
                    autoUpload: true,
                    multiple: false,
                    request: {
                        endpoint: "/api/Order/OrderFileHandler.ashx" // 上傳位置
                    },
                    messages: {
                        sizeError: obj.title + "過大，檔案需小於{sizeLimit}.",
                        emptyError: obj.title + "上傳失敗，請重新嘗試",
                        noFilesError: obj.title + "未上傳",
                        onLeave: obj.title + "上傳中，若現在離開將停止上傳，使否確定離開?",
                        typeError: obj.title + "的副檔名無效。僅支援：{extensions}。",
                        unsupportedBrowserIos8Safari: "不支援safari8，請更換瀏覽器重新嘗試"
                    },
                    text: {
                        defaultResponseError: obj.title + "上傳失敗"
                    },
                    failedUploadTextDisplay: {
                        mode: 'custom',
                        responseProperty: 'errorMsg'
                    },
                    thumbnails: {
                        placeholders: {
                            waitingPath: "/admin/js/file-uploader/5.15.5/waiting-generic.png", // 讀取中
                            notAvailablePath: "/admin/js/file-uploader/5.15.5/not_available-generic.png" // 路徑無效
                        }
                    },
                    validation: {
                        itemLimit: 1,
                        allowedExtensions: obj.ext, // 支援檔案類型
                        sizeLimit: 2 * 1000 * 1000
                    },
                    callbacks: {
                        onComplete: function (id, name, responseJSON, xhr) {
                            if (responseJSON.success) {
                                obj.path = responseJSON.path;
                                $(item).changeConten(obj)
                            }
                        },
                        onUpload: function (id, fileName) {
                            uploader.setParams({
                                key: obj.key,
                                memID: obj.memberid,
                                token: obj.token,
                                siteid: obj.siteID,
                                orderID: obj.orderID
                            }, id);
                        }
                    }
                });
                $(item).find(".qq-uploader-selector").attr({ 'qq-drop-area-text': '請上傳' + obj.title +"(大小限制2M)"});
            }
            function ChangeOrder(siteid, orderID, memberid, token) {
                if (nowOrder == orderID) return false;
                $.ajax({
                    type: "POST",
                    url: "/api/FrontDesk/OrdersFHandler.ashx",
                    data: { "siteid": siteid, "id": orderID, "MemberID": memberid, "token": token},
                    dataType: "json",
                    success: function (response) {
                        if (response.result.RspnCode == "200") {
                            $(".nav-menu").removeClass("in");
                            $("#navOrder" + orderID).addClass("in");
                            if (response.store2Code==null ||response.store2Code == "") {
                                var $c = $("#accordion").empty();
                                var $p = $('<div class="panel">');
                                var $p2 = $p.clone();
                                var $p3 = $p.clone();
                                $p.changeConten({
                                    title: "商標委任書",
                                    path: response.store2File1,
                                    key: "store2File1",
                                    siteID: siteid,
                                    orderID: orderID,
                                    token: token,
                                    memberid: memberid,
                                    ext: ["pdf"]
                                });
                                $p2.changeConten({
                                    title: "委任契約書",
                                    path: response.store2File2,
                                    key: "store2File2",
                                    siteID: siteid,
                                    orderID: orderID,
                                    token: token,
                                    memberid: memberid,
                                    ext: ["pdf"]
                                });
                                $p3.changeConten({
                                    title: "商標圖片",
                                    path: response.store2img1,
                                    key: "store2img1",
                                    siteID: siteid,
                                    orderID: orderID,
                                    token: token,
                                    memberid: memberid,
                                    ext: ["jpeg", "jpg", "gif", "png", "svg", "pdf"]
                                });
                                $c.append([$p, $p2, $p3]);
                                nowOrder = orderID;
                                $("#store2FileDonload,#accordion").removeClass("hidden");
                                $("#store2CodePanel").addClass("hidden");
                                $("#store2Code").text("");
                            } else {
                                $("#store2FileDonload,#accordion").addClass("hidden");
                                $("#store2CodePanel").removeClass("hidden");
                                $("#store2Code").html($("<div>").append(response.store2Code).text());
                            }
                        }
                    }
                });
            }
            
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
