<!DOCTYPE html>
<html lang="zh">

<head>
    <title>ITBC - Front</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link href="/static/dist/semantic.min.css" rel="stylesheet" />
    <link rel="icon" type="image/png" href="/static/b.png" />
    <link href="/static/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="/static/css/main.css" rel="stylesheet" />
    <link href="/static/plugins/pacejs/pace.css" rel="stylesheet" />
    <link rel="stylesheet" href="/static/plugins/editor.md/css/editormd.css" />
</head>

<body>
    <div class="ui fluid whiteli container">
        <form class="ui form" >
            <div class="ui left action fluid big input" style="margin: 0 ;">
                <button class="ui blueli labeled icon big button">
                    <i class="plug icon"></i>
                    标&nbsp;&nbsp;题
                </button>
                <input type="text" placeholder="Please enter a title...">
            </div>
            <div class="ui left action fluid big input" style="margin: 0 ;">
                <button class="ui greenli2 labeled icon big button">
                    <i class="tags icon"></i>
                    标&nbsp;&nbsp;签
                </button>
                <input type="text" placeholder="Enter tags...">
            </div>
            <div id="editormd" style="border-top: none;">
                <textarea id="editormd-markdown-doc" name="editormd-markdown-doc" style="display:none;"></textarea>
                <textarea id="editormd-html-code" name="editormd-html-code" style="display:none;"></textarea>
            </div>
        </form>

        <div class="ui fluid content">
            <div class="ui right floated big buttons" style="margin-right: 50px;">
                <button class="ui yellowli labeled icon button" onclick="history.go(-1)">
                    <i class="left chevron icon"></i>
                    首页
                </button>
                <button class="ui green labeled icon button">
                    <i class="save icon"></i>
                    保存
                </button>
                <button class="ui brown labeled icon button">
                    <i class="cloud icon"></i>
                    草稿
                </button>
            </div>
        </div>
    </div>


    <script src="/static/plugins/editor.md/plugins/jquery.min.js"></script>
    <script src="/static/plugins/editor.md/editormd.js"></script>
    <!--semantic-->
    <script src="/static/dist/semantic.min.js"></script>
    <!--semantic-->
    <script src="/static/plugins/cookie/js.cookie.js"></script>
    <script src="/static/plugins/nicescrool/jquery.nicescroll.min.js"></script>

    <script data-pace-options='{ "ajax": false }' src="/static/plugins/pacejs/pace.js"></script>

    <script src="/static/js/main.js"></script>
    <script type="text/javascript">
        var Editor;

        $(function() {
            Editor = editormd("editormd", {
                width: "100%",
                height: 740,
                path: '/static/plugins/editor.md/lib/',
                codeFold: true,
                //syncScrolling : false,
                saveHTMLToTextarea: true, // 保存 HTML 到 Textarea
                searchReplace: true,
                //watch : false,                // 关闭实时预览
                htmlDecode: "style,script,iframe|on*", // 开启 HTML 标签解析，为了安全性，默认不开启
                emoji: true,
                taskList: true,
                tocm: true, // Using [TOCM]
                tex: true, // 开启科学公式TeX语言支持，默认关闭
                flowChart: true, // 开启流程图支持，默认关闭
                sequenceDiagram: true, // 开启时序/序列图支持，默认关闭
                imageUpload: true,
                imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                onload: function() {
                    console.log('onload', this);
                }
            });
        });
    </script>
</body>

</html>