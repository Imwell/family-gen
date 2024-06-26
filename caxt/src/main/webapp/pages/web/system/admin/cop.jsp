<%--
  Created by IntelliJ IDEA.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/layui/css/layui.css" media="all" />
</head>

<body>
<div style="width: 400px;margin: 0 auto;"><button id="add" class="layui-btn">向选项卡添加一个tab</button></div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/layui/layui.js"></script>
<script>
    //循环获取父层的tab对象，为什么用循环呢？因为子层加载完，父层还不一定加载完了。所以获取到的是undefined
    /*var index = setInterval(function() {
     if(typeof parent.tab !== 'undefined') {
     //如果获取到tab对象，则停止循环
     clearInterval(index);
     //通过调用父层的tab组件里的tabAdd方法添加一个tab选项卡
     parent.tab.tabAdd({
     href: 'https://www.baidu.com', //地址
     icon: 'fa-user',
     title: '这是在子窗口打开的tab选项卡'
     });
     }
     }, 20);*/
    //如果需要在些页面上获取到父页面的变量，需要把变量设置为全局，
    /**
     * 例：
     * var tab;
     * layui.use('tab',function(){
			 * 	   tab = layui.tab(setting);
			 * });
     */
        //上面那个是页面渲染完就添加的
    layui.use(['layer'], function() {
        var $ = layui.jquery,
                layer = layui.layer;

        //这个是点击之后才添加的。
        $('#add').on('click', function() {
            var con = '<div style="padding:10px;"><input type="text" class="layui-input" style="margin-bottom:5px;" name="url" placeholder="地址" />'+
                    '<input type="text" class="layui-input" style="margin-bottom:5px;" name="title" placeholder="标题" />'+
                    '<input type="text" class="layui-input" name="icon" placeholder="图标" /></div>';

            parent.layer.open({
                type: 1,
                title: '确认框',
                content: con,
                btn: ['确定', '取消'],
                area: ['350px', '250px'],
                yes: function(index, layero) {
                    //这是核心的代码。
                    parent.tab.tabAdd({
                        href: $(layero).find('input[name=url]').val(), //地址
                        icon: $(layero).find('input[name=icon]').val(),
                        title: $(layero).find('input[name=title]').val()
                    });
                },
                shade :false,
                maxmin :true
            });

        });

    });
</script>
</body>

</html>