<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../system/admin/top.jsp"%>


<div class="x-nav">
    <%--<c:if test="${fn:contains(pd.authParam,'add')}">--%>
        <%--<button class="layui-btn layui-btn-sm" onclick="add();"><i class="layui-icon layui-icon-add-1"></i>添加</button>--%>
    <%--</c:if>--%>
    <%--<c:if test="${fn:contains(pd.authParam,'edit')}">--%>
        <%--<button class="layui-btn layui-btn-normal layui-btn-sm" id="edits"><i class="layui-icon layui-icon-edit"></i>编辑</button>--%>
    <%--</c:if>--%>
    <%--<c:if test="${fn:contains(pd.authParam,'del')}">--%>
        <%--<button class="layui-btn layui-btn-danger layui-btn-sm" id="dels"><i class="layui-icon layui-icon-delete"></i>删除</button>--%>
    <%--</c:if>--%>

    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="admin-main">
    <blockquote id="search" class="layui-elem-quote" style="position: relative;">
        <div class="layui-form-item" style="margin-bottom: 0;">
            <div class="layui-inline">
                <label class="layui-form-lab" style="width: auto">姓名</label>
                <input type="text" name="name" id="name" style="width:190px;height: 32px;display: inline" placeholder="请输入姓名" class="layui-input">
            </div>
            <div class="layui-inline">
                <label class="layui-form-lab" style="width: auto">登录状态</label>
                <select name="type" id="type" style="height: 30px;width: 190px;float: right;"  class="layui-input layui-unselect tfield-all">
                    <option value="">请选择</option>
                    <option value="1">登录成功</option>
                    <option value="2">登录失败</option>
                </select>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">选择日期：</label>
                <div class="layui-input-inline">
                    <input type="text" name="date" id="date" style="display: inline" placeholder="请选择日期" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item" style="position: absolute;right:25px;bottom:6px;">
            <a href="javascript:;" class="layui-btn layui-btn-sm" data-type="reload">
                <i class="layui-icon">&#xe615;</i> 搜索
            </a>
        </div>
    </blockquote>
    <div class="layui-field-box layui-form" style="padding: 0;">
        <table id="LAY_table_record" class="layui-table admin-table" lay-filter="record">
        </table>
    </div>
   <%-- <fieldset class="layui-elem-field">

    </fieldset>
--%>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/layui/layui.js"></script>
<script>

    layui.use(['table','laydate'], function(){
        var table = layui.table,
            form = layui.form, laydate=layui.laydate;
        //方法级渲染
        table.render({
            elem: '#LAY_table_record'
            ,url: '${pageContext.request.contextPath}/gen/record/findListPage?auth_type=${pd.auth_type}&auth_organize_ids=${pd.auth_organize_ids}'
                ,cols: [[
                {checkbox: true, fixed: true}
                ,{field:'name', title: '姓名', width:140, sort: true, fixed: true}
                ,{field:'type', title:'登录状态', width:140, templet: function(res){
                    if(res.type=='1'){
                        return "<span style='color: #00b38a;font-weight: 700;'>登录成功。</span>"
                    }else if(res.type=='2'){
                        return "<span style='color: red;font-weight: 700;'>登录失败</span>"
                    }
                }}
                ,{field:'create_time', title: '登录时间'}
                ,{field:'content', title: '登录说明'}
            ]]
            ,id: 'table_record'
            ,page: true
           // ,height: 420
        });

        laydate.render({
            elem: '#date'
            ,format: 'yyyy-MM-dd' //可任意组合
            ,value: new Date()
            ,isInitValue:true
            ,type: 'date' //默认，可不填
        });

        var $ = layui.$, active = {
            reload: function(){
                var auth_type = '${pd.auth_type}';
                var auth_organize_ids = '${pd.organize_ids}';
                var name = $('#name').val();
                var type = $('#type option:selected') .val();
                var date = $("#date").val();
                //执行重载
                table.reload('table_record', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        auth_type: auth_type,
                        auth_organize_ids: auth_organize_ids,
                        name: name,
                        type: type,
                        date:date
                    }
                });
            }
        };

        $('#search .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });


        $('#edits').on('click',function (){
            var checkStatus = table.checkStatus('table_record')
                    ,data = checkStatus.data;
            if(data.length!=1){
                layer.msg('请选择一条数据进行操作。');
            }else{
                edit(data[0].id)
            }
        })

        $('#dels').on('click',function (){
            var checkStatus = table.checkStatus('table_record')
                    ,data = checkStatus.data;
            if(data.length>0){
                layer.confirm('真的要删除数据么', function(index){
                    var ids = [];
                    for ( var i = 0; i <data.length; i++){
                        ids.push(data[i].id);
                    }
                    $.get("${pageContext.request.contextPath}/gen/record/del?ids="+ids,null,function(res){
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
        table.on('tool(record)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                info(data.id)
            } else if(obj.event === 'del'){
                layer.confirm('真的要删除数据么', function(index){
                    $.get("${pageContext.request.contextPath}/gen/record/del?ids="+data.id,null,function(res){
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
            } else if(obj.event === 'orgTree'){
                orgTree(data.id);
            }
        });
    });


    $(document).ready(function () {
        selectFamily();
    });


    function add(){
        parent.layer.open({
            //skin: 'layui-layer-molv',
            title: '添加',
            maxmin: true,
            type: 2,
            content: '${pageContext.request.contextPath}/gen/record/toAdd',
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
            content: '${pageContext.request.contextPath}/gen/record/toUpdate?id='+id,
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
            content: '${pageContext.request.contextPath}/gen/record/findInfo?id='+id,
            area: ['800px', '500px']
        });
    }


    function selectFamily(){
        var family_id = $('#family_id option:selected') .val();
        $.ajax({
            type: "GET",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "${pageContext.request.contextPath}/gen/generation/findList?family_id="+family_id+"&status=Y",//url
            data: "",
            success: function (res) {
                if (res.success) {
                    var tt = '';
                    $.each(res.data,function(i,n){
                        tt += '<option value="'+ n.id+'">'+ n.name+'</option>';
                    });
                    $("#generation_id").html(tt);
                }else{
                    if(res.loseSession=='loseSession'){
                        loseSession(res.msg,res.url);
                    }else{
                        layer.msg(res.msg, {time: 2000});
                    }
                }
            },
            error : function() {
                layer.msg("异常！");
            }
        });
    }


    function orgTree(id){
        parent.layer.open({
            //skin: 'layui-layer-molv',
            title: '家谱树',
            maxmin: true,
            type: 2,
            content: '${pageContext.request.contextPath}/gen/show/tree?id='+id,
            area: ['800px', '500px']
        });
    }

</script>

<%@include file="../../system/admin/bottom.jsp"%>