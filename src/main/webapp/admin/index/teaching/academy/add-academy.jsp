<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/28 0028
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <title>添加学院</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/admin/layui/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/admin/css/admin.css"/>
</head>
<body>
<div class="wrap-container">
    <form class="layui-form" style="width: 90%;padding-top: 20px;">
        <div class="layui-form-item">
            <label class="layui-form-label">年级：</label>
            <div class="layui-input-block">
                <select name="grade" lay-verify="required">
                    <option value=""></option>
                    <option value="2015">2015级</option>
                    <option value="2016">2016级</option>
                    <option value="2017">2017级</option>
                    <option value="2018">2018级</option>

                </select>
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">学院：</label>
            <div class="layui-input-block">
                <input type="text" name="academy_name" required lay-verify="required" placeholder="请输入学院名称" autocomplete="off"
                       class="layui-input">
            </div>

        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">编号：</label>
            <div class="layui-input-block">
                <input type="text" name="academy_code" required lay-verify="required" placeholder="请输入学院编号" autocomplete="off"
                       class="layui-input">
            </div>

        </div>


        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>

<script src="<%=request.getContextPath()%>/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/static/admin/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script>
    //Demo
    layui.use(['form'], function () {
        var form = layui.form();
        form.render();
        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            console.log(JSON.stringify(data.field));
            $.ajax({
                data: {
                     'data': JSON.stringify(data.field)//注意一定要使用JSON.stringify (在IE6，IE7中不支持)
                 },
                url: getRootPath() + "/AcademyManager_BG/addAcademy.action",
                dataType: "json",//必须
                contentType: "application/json;charsetset=UTF-8",//必须
                success:function(data){
                  console.log(data);
                },
                error:function () {
                    alert(arguments[1]);
                }
            })

        });
    });


</script>
</body>

</html>
