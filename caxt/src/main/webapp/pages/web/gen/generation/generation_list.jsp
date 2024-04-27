<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../system/admin/top.jsp"%>


<div class="x-nav">
    <c:if test="${fn:contains(pd.authParam,'add')}">
        <button class="layui-btn layui-btn-sm" onclick="add();"><i class="layui-icon layui-icon-add-1"></i>添加</button>
    </c:if>
    <c:if test="${fn:contains(pd.authParam,'edit')}">
        <button class="layui-btn layui-btn-normal layui-btn-sm" id="edits"><i class="layui-icon layui-icon-edit"></i>编辑</button>
    </c:if>
    <c:if test="${fn:contains(pd.authParam,'del')}">
        <button class="layui-btn layui-btn-danger layui-btn-sm" id="dels"><i class="layui-icon layui-icon-delete"></i>删除</button>
    </c:if>

    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="admin-main">
    <blockquote id="search" class="layui-elem-quote" style="position: relative;">
        <div class="layui-form-item" style="margin-bottom: 0;">
            <div class="layui-inline">
                <label class="layui-form-lab" style="width: auto">名称</label>
                <input type="text" name="name" id="name" style="width:190px;height: 32px;display: inline" placeholder="请输入名称" class="layui-input">
            </div>
            <div class="layui-inline">
                <label class="layui-form-lab" style="width: auto">家族</label>
                <select name="family_id" id="family_id" style="height: 30px;width: 190px;float: right;"  class="layui-input layui-unselect tfield-all">
                    <c:forEach items="${list}" var="var" varStatus="status">
                        <option value="${var.id}">${var.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="layui-form-item" style="position: absolute;right:25px;bottom:6px;">
            <a href="javascript:;" class="layui-btn layui-btn-sm" data-type="reload">
                <i class="layui-icon">&#xe615;</i> 搜索
            </a>
        </div>
    </blockquote>
    <div class="layui-field-box layui-form" style="padding: 0;">
        <table id="LAY_table_generation" class="layui-table admin-table" lay-filter="generation">
        </table>
    </div>
   <%-- <fieldset class="layui-elem-field">

    </fieldset>
--%>
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
<script type="text/html" id="statusTpl">
    <!-- 这里的 checked 的状态只是演示 -->
    <input type="checkbox" name="status" value="{{d.id}}" lay-skin="switch" lay-text="启用|停用" lay-filter="statusCheck" {{ d.status == 'Y' ? 'checked' : '' }}>
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/layui/layui.js"></script>
<script>

    layui.use('table', function(){
        var table = layui.table,
            form = layui.form;
        //方法级渲染
        table.render({
            elem: '#LAY_table_generation'
            ,url: '${pageContext.request.contextPath}/gen/generation/findListPage?auth_type=${pd.auth_type}&auth_organize_ids=${pd.auth_organize_ids}'
                ,cols: [[
                {checkbox: true, fixed: true}
                ,{field:'family_name', title: '家族名称', width:120, sort: true, fixed: true}
                ,{field:'name', title: '世代名称'}
                ,{field:'gorder', title: '世代顺序'}
                ,{field:'seniority', title: '世代辈分'}
                ,{field:'status', title: '状态', width:100, templet: '#statusTpl'}
                ,{field:'order_by', title: '排序', width:60}
                ,{field:'create_time', title: '创建时间'}
                ,{align:'center', title:'操作',width:180, toolbar: '#barDemo'}
            ]]
            ,id: 'table_generation'
            ,page: true
           // ,height: 420
        });

        var $ = layui.$, active = {
            reload: function(){
                var auth_type = '${pd.auth_type}';
                var auth_organize_ids = '${pd.organize_ids}';
                var name = $('#name').val();
                var status = $('#status option:selected') .val();
                //执行重载
                table.reload('table_generation', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        auth_type: auth_type,
                        auth_organize_ids: auth_organize_ids,
                        name: name,
                        status: status
                    }
                });
            }
        };

        $('#search .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });


        //监听状态操作
        form.on('switch(statusCheck)', function(obj){
            var status='N';
            if(obj.elem.checked){
                status='Y';
            }
            $.get("${pageContext.request.contextPath}/gen/generation/updateStatus?id="+this.value+"&status="+status,null,function(res){
                console.log(res);
                if (res.success) {
                    layer.tips("状态修改成功。");
                }else{
                    if(res.loseSession=='loseSession'){
                        loseSession(res.msg,res.url)
                    }else{
                        layer.msg(res.msg, {time: 2000});
                    }
                }
            },'json');
        });


        $('#edits').on('click',function (){
            var checkStatus = table.checkStatus('table_generation')
                    ,data = checkStatus.data;
            if(data.length!=1){
                layer.msg('请选择一条数据进行操作。');
            }else{
                edit(data[0].id)
            }
        })

        $('#dels').on('click',function (){
            var checkStatus = table.checkStatus('table_generation')
                    ,data = checkStatus.data;
            if(data.length>0){
                layer.confirm('真的要删除数据么', function(index){
                    var ids = [];
                    for ( var i = 0; i <data.length; i++){
                        ids.push(data[i].id);
                    }
                    $.get("${pageContext.request.contextPath}/gen/generation/del?ids="+ids,null,function(res){
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
        table.on('tool(generation)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                info(data.id)
            } else if(obj.event === 'del'){
                layer.confirm('真的要删除数据么', function(index){
                    $.get("${pageContext.request.contextPath}/gen/generation/del?ids="+data.id,null,function(res){
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



    function add(){
        parent.layer.open({
            //skin: 'layui-layer-molv',
            title: '添加',
            maxmin: true,
            type: 2,
            content: '${pageContext.request.contextPath}/gen/generation/toAdd',
            area: ['800px', '500px'],
            end: function () {
                location.reload();
            }
        });
    }

    function edit(id){
        parent.layer.open({
            //skin: 'layui-layer-molv',
            title: '编辑',
            maxmin: true,
            type: 2,
            content: '${pageContext.request.contextPath}/gen/generation/toUpdate?id='+id,
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
            content: '${pageContext.request.contextPath}/gen/generation/findInfo?id='+id,
            area: ['800px', '500px']
        });
    }

</script>

<%@include file="../../system/admin/bottom.jsp"%>