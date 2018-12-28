<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/28 0028
  Time: 9:51
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
    <title>课程信息</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/admin/layui/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/admin/css/admin.css"/>
</head>
<body>
<div class="page-content-wrap">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline tool-btn">
                <button class="layui-btn layui-btn-small layui-btn-normal addBtn hidden-xs"
                        data-url="course/add-course.jsp">
                    <i class="layui-icon">&#xe654;</i></button>
                <button class="layui-btn layui-btn-small layui-btn-warm listOrderBtn hidden-xs"
                        data-url="menu-add.html"><i class="iconfont">&#xe656;</i></button>
            </div>
            <div class="layui-inline">
                <input type="text" name="title" placeholder="请输入标题" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-inline">
                <select name="states" lay-filter="status">
                    <option value="">请选择一个年级</option>
                    <option value="2015">2015级</option>
                    <option value="2016">2016级</option>
                    <option value="2017">2017级</option>
                    <option value="2018">2018级</option>
                </select>
            </div>
            <button class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
        </div>
    </form>
    <div class="layui-form" id="table-list">
        <table class="layui-table" lay-skin="line">
            <colgroup>
                <col width="50">
                <col class="hidden-xs" width="80">
                <col class="hidden-xs" width="150">
                <col class="hidden-xs" width="100">
                <col class="hidden-xs" width="100">
                <col class="hidden-xs" width="100">
                <col>
                <col width="130">
            </colgroup>
            <thead>
            <tr>
                <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose"></th>
                <th class="hidden-xs">序号</th>
                <th class="hidden-xs">课程名</th>
                <th class="hidden-xs">年级</th>
                <th class="hidden-xs">学时</th>
                <th class="hidden-xs">及格线</th>
                <th class="hidden-xs">总分</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr id='node-1' class="parent collapsed">
                <td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
                <td class="hidden-xs">1</td>
                <td class="hidden-xs">计算机网络</td>
                <td class="hidden-xs">2017届</td>
                <td>64学时</td>
                <td>60分</td>
                <td>100分</td>
                <td>
                    <div class="layui-inline">
                        <button class="layui-btn layui-btn-mini layui-btn-normal  edit-btn" data-id="1" data-url="course/update-course.jsp"><i class="layui-icon">&#xe642;</i></button>
                        <button class="layui-btn layui-btn-mini layui-btn-danger del-btn" data-id="1" data-url=""><i class="layui-icon">&#xe640;</i></button>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
<script src="<%=request.getContextPath()%>/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>

</body>

</html>

