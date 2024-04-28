<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>家谱树展示</title>

    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/plugins/orgchart/img/logo.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/orgchart/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/orgchart/css/jquery.orgchart.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/orgchart/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/layui/css/layui.css" media="all" />
<style>
    .head-btn {
        justify-content: space-between;
        display: flex;
        margin-top: 1rem;
        padding: 1rem;
    }
    .orgchart .col-self .title {
        border-color: #006699;
    }
    .orgchart .col-self .content {
        background-color: #cccccc;
    }
</style>
</head>
<body>
    <div class="head-btn">
        <div align="left">
            <select name="family_id" id="family_id" onchange="selectFamily();" lay-filter='selectFamily' style="height: 30px;width: 190px;display: inline-block"  class="layui-input layui-unselect tfield-all">
                <c:forEach items="${familyLs}" var="var" varStatus="status">
                    <option value="${var.id}" <c:if test="${pd.family_id==var.id}"> selected </c:if>>${var.name}</option>
                </c:forEach>
            </select>
            <button class="layui-btn layui-btn-sm" lay-submit="" lay-filter="submit_form">生成</button>
        </div>
        <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right;margin-left: 10px;"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        <div align="right"><button class="layui-btn layui-btn-normal layui-btn-sm" onclick="importImg()">导出图片</button></div>
    </div>
    <div id="chart-container"></div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/orgchart/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/orgchart/js/jquery.mockjax.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/orgchart/js/jquery.orgchart.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/html2canvas.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/layui/layui.js"></script>
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
                url: "${pageContext.request.contextPath}/gen/show/getTree/" + family_id ,//url
                data: $('#form').serialize(),
                success: function (res) {
                    if (res.data !== null) {
                        initOrgchart(res.data)
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
                DownLoadReportIMG('安氏家谱.jpg', img.src);
            } else {
                downloadImage(img.src)  //下载图片
            }
        });
        $("#mycanvas").remove();
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

    $(function() {
        $.mockjax({
            url: '/orgchart/children/3/',
            contentType: 'application/json',
            responseTime: 1000,
            responseText: { 'children': [
                { 'id': '4', 'name': 'Pang Pang1', 'title': 'engineer', 'relationship': '110' },
                { 'id': '5', 'name': 'Xiang Xiang2', 'title': 'UE engineer', 'relationship': '110'}
            ]}
        });

        $.mockjax({
            url: '/orgchart/parent/1/',
            contentType: 'application/json',
            responseTime: 1000,
            responseText: { 'id': '6','name': 'Lao Lao', 'title': 'general manager', 'relationship': '001' }
        });


        $.mockjax({
            url: '/orgchart/siblings/1/',
            contentType: 'application/json',
            responseTime: 1000,
            responseText: { 'siblings': [
                { 'id': '7','name': 'Bo Miao', 'title': 'department engineer', 'relationship': '110' },
                { 'id': '8', 'name': 'Yu Jie', 'title': 'department engineer', 'relationship': '110' },
                { 'id': '9', 'name': 'Yu Li', 'title': 'department engineer', 'relationship': '110' },
                { 'id': '10', 'name': 'Hong Miao', 'title': 'department engineer', 'relationship': '110' },
                { 'id': '11', 'name': 'Yu Wei', 'title': 'department engineer', 'relationship': '110' },
                { 'id': '12', 'name': 'Chun Miao', 'title': 'department engineer', 'relationship': '110' },
                { 'id': '13', 'name': 'Yu Tie', 'title': 'department engineer', 'relationship': '110' }
            ]}
        });

        $.mockjax({
            url: '/orgchart/families/1/',
            contentType: 'application/json',
            responseTime: 1000,
            responseText: {
                'id': '6',
                'name': 'Lao Lao',
                'title': 'general manager',
                'relationship': '001',
                'children': [
                    { 'id': '7','name': 'Bo Miao', 'title': 'department engineer', 'relationship': '110' },
                    { 'id': '8', 'name': 'Yu Jie', 'title': 'department engineer', 'relationship': '110' },
                    { 'id': '9', 'name': 'Yu Li', 'title': 'department engineer', 'relationship': '110' },
                    { 'id': '10', 'name': 'Hong Miao', 'title': 'department engineer', 'relationship': '110' },
                    { 'id': '11', 'name': 'Yu Wei', 'title': 'department engineer', 'relationship': '110' },
                    { 'id': '12', 'name': 'Chun Miao', 'title': 'department engineer', 'relationship': '110' },
                    { 'id': '13', 'name': 'Yu Tie', 'title': 'department engineer', 'relationship': '110' }
                ]}
        });

        <%--var ajaxURLs = {--%>
            <%--'children': '${pageContext.request.contextPath}/gen/show/children/',--%>
            <%--'parent': '${pageContext.request.contextPath}/gen/show/parent/',--%>
            <%--'siblings': '${pageContext.request.contextPath}/gen/show/siblings/',--%>
            <%--'families': '${pageContext.request.contextPath}/gen/show/siblings/'--%>
        <%--};--%>


    });

    var ajaxURLs = {
        'children': '${pageContext.request.contextPath}/gen/show/children/',
        'parent': '${pageContext.request.contextPath}/gen/show/parent/',
        'siblings': '${pageContext.request.contextPath}/gen/show/siblings/',
        'families': '${pageContext.request.contextPath}/gen/show/siblings/'
    };

    function initOrgchart(data) {
        $('#chart-container').orgchart({
            'data' : data,
            'ajaxURL': ajaxURLs,
            'nodeContent': 'title',
            'nodeId': 'id'
        });
    }
</script>
</html>
