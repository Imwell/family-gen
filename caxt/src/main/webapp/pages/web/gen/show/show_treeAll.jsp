<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>家谱树展示</title>

    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/plugins/orgchart/img/logo.ico">
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/orgchart/css/font-awesome.min.css">--%>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/orgchart/css/jquery.orgchart.css">--%>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/orgchart/css/style.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/layui/css/layui.css" media="all" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.orgchart.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <style>
        .orgchart .col-self .title {
            border-color: #006699;
        }
        .orgchart .col-self .content {
            background-color: #cccccc;
        }
    </style>
</head>
<body>
    <div class="x-nav">
        <div align="left" style="display: inline-block; padding-left: 1rem">
            <select name="family_id" id="family_id" style="height: 30px;width: 190px;display: inline-block"  class="layui-input layui-unselect tfield-all">
                <c:forEach items="${familyLs}" var="var" varStatus="status">
                    <option value="${var.id}" <c:if test="${pd.family_id==var.id}"> selected </c:if>>${var.name}</option>
                </c:forEach>
            </select>
            <button class="layui-btn layui-btn-sm" lay-submit="" lay-filter="submit_form">生成</button>
        </div>
        <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right;margin-left: 10px;"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        <a class="layui-btn layui-btn-normal layui-btn-sm" style="margin-top:3px;float:right;margin-left: 10px;" onclick="importImg()">导出图片</a>
    </div>
    <div id="chart-container"></div>
</body>

<%--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/orgchart/js/jquery.min.js"></script>--%>

<%--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/orgchart/js/jquery.mockjax.min.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/orgchart/js/jquery.orgchart.js"></script>--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.mockjax.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.orgchart.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/html2canvas.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jspdf.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/layer/layer.js"></script>

<script type="application/javascript">

    var form,layer,$;
    layui.use(['form'], function() {
        form = layui.form;
        layer = layui.layer;

        form.on('submit(submit_form)', function(data){
            const family_id = $('#family_id option:selected') .val();
            $.ajax({
                type: "GET",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "${pageContext.request.contextPath}/gen/show/findTreeAllJson/" + family_id ,//url
                data: $('#form').serialize(),
                success: function (res) {
                    if (res !== null) {
                        initOrgchart(res)
                    }
                }
            })
        })
    })

    function importImg() {
        html2canvas($(".orgchart")[0]).then(function (canvas) {
            document.body.appendChild(canvas);
            canvas.id = "mycanvas";
            var img = convertCanvasToImage(canvas);
            //调用下载方法 封装的下载方法，都在资源里面
            if (browserIsIe()) {  //假如是ie浏览器
                DownLoadReportIMG('家谱.png', img.src);
            } else {
                downloadImage(img.src)  //下载图片
            }
        });

        $("#mycanvas").attr("style","display:none;");
    }


    // 从canvas提取图片image
    function convertCanvasToImage(canvas){
        //新Image对象,可以理解为DOM;
        var image = new Image();
        //canvas.toDataURL返回的是一串Base64编码的URL,当然,浏览器自己肯定支持
        //指定格式PNG
        image.src = canvas.toDataURL("image/png");
        return image;
    }

    function downloadImage(src) {
        console.log("SRC:"+src);
        var $a = $("<a></a>").attr("href", src).attr("download", "安氏家谱.png");
        $a[0].click();
    }


    function browserIsIe(){
        if (!!window.ActiveXObject || "ActiveXObject" in window) {
            return true;
        }else{
            return false;
        }
    }

    function initOrgchart(data) {
        $('#chart-container').orgchart({
            'data' : data,
//            'visibleLevel': 2,
            'nodeContent': 'title',
            'exportButton': true,
            'zoom':true,
            'zoominLimit':5,
            'zoomoutLimit': 1,
            'exportFilename':'家谱',
//            'exportFileextension': 'pdf',
        });
    }

</script>
</html>
