<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../admin/top.jsp"%>


<div class="x-nav">
    <c:if test="${fn:contains(pd.authParam,'add')}">
        <button class="layui-btn layui-btn-sm" onclick="add();"><i class="layui-icon layui-icon-add-1"></i>添加</button>
    </c:if>
    <c:if test="${fn:contains(pd.authParam,'addMore')}">
        <button class="layui-btn layui-btn-sm" onclick="addMore();"><i class="layui-icon layui-icon-add-1"></i>批量添加</button>
    </c:if>
    <c:if test="${fn:contains(pd.authParam,'edit')}">
        <button class="layui-btn layui-btn-normal layui-btn-sm" id="edits"><i class="layui-icon layui-icon-edit"></i>编辑</button>
    </c:if>
    <c:if test="${fn:contains(pd.authParam,'del')}">
        <button class="layui-btn layui-btn-danger layui-btn-sm" id="dels"><i class="layui-icon layui-icon-delete"></i>删除</button>
    </c:if>

    <span class="layui-btn layui-btn-sm" id="current_org"></span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div style="float: left; width: 18%; margin-right:15px;" id="leftDiv">
    <ul id="treeDemo" class="ztree"></ul>
    <input type="hidden" name="tree_id" id="tree_id" value="" />
    <input type="hidden" id="tree_name" value="" />
    <input type="hidden" id="tree_level" value="" />
    <input type="hidden" id="tree_cascade" value="" />
    <input type="hidden" name="code" id="code" value="" />
</div>
<div style="float: left; width: 80%" id="rightDiv">
<div class="admin-main">

    <blockquote id="search" class="layui-elem-quote">
        <label class="layui-form-lab" style="width: auto">组织名称</label>
        <input type="text" name="name" id="name" style="width: 240px;height: 32px;display: inline" placeholder="请输入组织名称" class="layui-input">
        <label class="layui-form-lab" style="width: auto">组织简称</label>
        <input type="text" name="short_name" id="short_name" style="width: 240px;height: 32px;display: inline" placeholder="请输入组织简称" class="layui-input">
        <a href="javascript:;" class="layui-btn layui-btn-sm" data-type="reload">
            <i class="layui-icon">&#xe615;</i> 搜索
        </a>
    </blockquote>
    <div class="layui-field-box layui-form" style="padding: 0;">
        <table id="LAY_table_organize" class="layui-table admin-table" lay-filter="organize">
        </table>
    </div>

        <%--<fieldset class="layui-elem-field">

        </fieldset>--%>
    </div>
</div>
<script type="text/html" id="barDemo">
    <c:if test="${fn:contains(pd.authParam,'info')}">
        <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    </c:if>
    <c:if test="${fn:contains(pd.authParam,'edit')}">
        <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit">编辑</a>
    </c:if>
    <c:if test="${fn:contains(pd.authParam,'del')}">
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    </c:if>
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/ztree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/ztree/js/jquery.ztree.all.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css" />
<%@include file="organize_ztree.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/layui/layui.js"></script>
<script>

    var table,form;
    layui.use('table', function(){
        table = layui.table;
        form = layui.form;
        //方法级渲染
        table.render({
            elem: '#LAY_table_organize'
            ,url: '${pageContext.request.contextPath}/system/organize/findListPage?auth_type=${pd.auth_type}&auth_organize_ids=${pd.auth_organize_ids}'
                ,cols: [[
                {checkbox: true, fixed: true}
                ,{field:'name', title: '组织名称', width:120, sort: true, fixed: true}
                ,{field:'short_name', title: '组织简称', width:120}
                ,{field:'order_by', title: '排序'}
                ,{field:'create_time', title: '创建时间'}
                ,{align:'center', title:'操作',width:180, toolbar: '#barDemo'}
            ]]
            ,id: 'table_organize'
            ,page: true
           // ,height: 420
        });

        var $ = layui.$, active = {
            reload: function(){
                var auth_type = '${pd.auth_type}';
                var auth_organize_ids = '${pd.organize_ids}';
                var name = $('#name').val();
                var short_name = $('#short_name').val();
                var parent_id = $('#tree_id').val();
                //执行重载
                table.reload('table_organize', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        auth_type: auth_type,
                        auth_organize_ids: auth_organize_ids,
                        name: name,
                        short_name: short_name,
                        parent_id: parent_id
                    }
                });
            }
        };

        $('#search .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });


        $('#edits').on('click',function (){
            var checkStatus = table.checkStatus('table_organize')
                    ,data = checkStatus.data;
            if(data.length!=1){
                layer.msg('请选择一条数据进行操作。');
            }else{
                edit(data[0].id)
            }
        })

        $('#dels').on('click',function (){
            var checkStatus = table.checkStatus('table_organize')
                    ,data = checkStatus.data;
            if(data.length>0){
                layer.confirm('删除数据会同步删除下级数据，是否进行删除操作？', function(index){
                    var ids = [];
                    for ( var i = 0; i <data.length; i++){
                        ids.push(data[i].id);
                    }
                    $.get("${pageContext.request.contextPath}/system/organize/del?ids="+ids,null,function(res){
                        if (res.success) {
                            layer.msg("数据删除成功。", {time: 2000});
                            location.replace(location.href);
                        }else{
                            if(res.loseSession=='loseSession'){
                                loseSession(res.msg,res.url)
                            }else{
                                layer.msg(res.msg, {time: 2000});
                            }
                        }

                    },'json');
                });
            }else{
                layer.msg('请选择要删除的数据。');
            }
        })


        //监听工具条
        table.on('tool(organize)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                info(data.id)
            } else if(obj.event === 'del'){
                layer.confirm('删除数据会同步删除下级数据，是否进行删除操作？', function(index){
                    $.get("${pageContext.request.contextPath}/system/organize/del?ids="+data.id,null,function(res){
                        if (res.success) {
                            layer.msg("数据删除成功。", {time: 2000});
                            location.replace(location.href);
                        }else{
                            if(res.loseSession=='loseSession'){
                                loseSession(res.msg,res.url)
                            }else{
                                layer.msg(res.msg, {time: 2000});
                            }
                        }
                    },'json');
                });
            } else if(obj.event === 'edit'){
                edit(data.id);
            }
        });

    });

    function reloadData(parent_id){
        var auth_type = '${pd.auth_type}';
        var auth_organize_ids = '${pd.organize_ids}';
        var name = $('#name').val();
        var short_name = $('#short_name').val();
        //执行重载
        table.reload('table_organize', {
            page: {
                curr: 1 //重新从第 1 页开始
            }
            ,where: {
                auth_type: auth_type,
                auth_organize_ids: auth_organize_ids,
                name: name,
                short_name: short_name,
                parent_id: parent_id
            }
        });
    }

    function add(){
        var parent_id =  $("#tree_id").val();
        var name = $("#tree_name").val();
        var level = $("#tree_level").val();
        var org_cascade = $("#tree_cascade").val();
        var parent_code = $("#code").val();
        if(parent_id==''||parent_id==null){
            layer.msg("请在左侧选择菜单父节点。");
        }else{
            parent.layer.open({
                //skin: 'layui-layer-molv',
                title: '添加',
                maxmin: true,
                type: 2,
                content: '${pageContext.request.contextPath}/system/organize/toAdd?parent_id='+parent_id+'&name='+name+'&level='+level+'&org_cascade='+org_cascade+'&parent_code='+parent_code,
                area: ['800px', '500px'],
                end: function () {
                    location.reload();
                }
            });
        }
    }


    function addMore(){
        var parent_id =  $("#tree_id").val();
        var name = $("#tree_name").val();
        var level = $("#tree_level").val();
        var org_cascade = $("#tree_cascade").val();
        var parent_code = $("#code").val();
        if(parent_id==''||parent_id==null){
            layer.msg("请在左侧选择菜单父节点。");
        }else{
            parent.layer.open({
                id: 'addMore',
                //skin: 'layui-layer-molv',
                title: '添加',
                maxmin: true,
                type: 2,
                content: '${pageContext.request.contextPath}/system/organize/toAddMore?parent_id='+parent_id+'&name='+name+'&level='+level+'&org_cascade='+org_cascade+'&parent_code='+parent_code,
                area: ['1000px', '500px'],
                end: function () {
                    location.reload();
                }
            });
        }
    }

    function edit(id){
        parent.layer.open({
            //skin: 'layui-layer-molv',
            title: '编辑',
            maxmin: true,
            type: 2,
            content: '${pageContext.request.contextPath}/system/organize/toUpdate?id='+id,
            area: ['800px', '500px'],
            end: function () {
                location.reload();
            }
        });
    }

    function info(id){
        parent.layer.open({
            //skin: 'layui-layer-molv',
            title: '详情',
            maxmin: true,
            type: 2,
            content: '${pageContext.request.contextPath}/system/organize/findInfo?id='+id,
            area: ['800px', '500px']
        });
    }

</script>

<%@include file="../admin/bottom.jsp"%>