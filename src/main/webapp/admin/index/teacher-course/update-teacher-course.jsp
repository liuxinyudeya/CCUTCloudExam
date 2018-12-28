<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/28 0028
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>添加课程</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/admin/layui/css/layui.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/admin/css/admin.css" />
</head>
<body>
<div class="wrap-container">
    <form class="layui-form" style="width: 90%;padding-top: 20px;">
        <div class="layui-form-item">
            <label class="layui-form-label">年级：</label>
            <div class="layui-input-block">
                <select name="category" lay-verify="required">
                    <option value=""></option>
                    <option value="2015">2015届</option>
                    <option value="2016">2016届</option>
                    <option value="2017">2017届</option>
                    <option value="2018">2018届</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">学院：</label>
            <div class="layui-input-block">
                <select name="category" lay-verify="required">
                    <option value=""></option>
                    <option value="01">国际教育学院</option>
                    <option value="02">计算机工程与科学学院</option>
                    <option value="03">经济管理学院</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">系别：</label>
            <div class="layui-input-block">
                <select name="category" lay-verify="required">
                    <option value=""></option>
                    <option value="01">计算机科学与技术</option>
                    <option value="02">机械工程</option>
                    <option value="03">工业工程</option>
                    <option value="04">电器工程及其自动化</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">班级：</label>
            <div class="layui-input-block">
                <select name="category" lay-verify="required">
                    <option value=""></option>
                    <option value="01">153601</option>
                    <option value="02">153602</option>
                    <option value="03">153603</option>
                    <option value="04">153604</option>
                    <option value="05">153605</option>
                    <option value="06">153606</option>
                    <option value="07">153607</option>
                    <option value="08">153608</option>
                    <option value="09">153609</option>
                    <option value="10">153610</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">教师：</label>
            <div class="layui-input-block">
                <input type="text" name="title" required lay-verify="required" placeholder="请选择教师" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">考试状态：</label>
            <div class="layui-input-block">
                <input type="text" name="title" required lay-verify="required" placeholder="请设置考试状态" autocomplete="off" class="layui-input">
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
<script>
    //Demo
    layui.use(['form'], function() {
        var form = layui.form();
        form.render();
        //监听提交
        form.on('submit(formDemo)', function(data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
</body>

</html>
