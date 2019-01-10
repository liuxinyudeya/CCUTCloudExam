<%@ page import="javafx.scene.control.Alert" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/27 0027
  Time: 14:06
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
    <title>CCUT云上考试系统</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/admin/layui/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/admin/css/admin.css"/>


</head>
<body>
<div class="main-layout" id='main-layout'>
    <!--侧边栏-->
    <div class="main-layout-side">
        <div class="m-logo">
        </div>
        <ul class="layui-nav layui-nav-tree" lay-filter="leftNav">
            <li class="layui-nav-item layui-nav-itemed">
                <a href="javascript:;"><i class="iconfont">&#xe607;</i>菜单管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/menu1.html" data-id='1' data-text="后台菜单"><span
                            class="l-line"></span>后台菜单</a></dd>
                    <dd><a href="javascript:;" data-url="admin/index/menu2.html" data-id='2' data-text="前台菜单"><span
                            class="l-line"></span>前台菜单</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont">&#xe608;</i>内容管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/article-list.html" data-id='3'
                           data-text="文章管理"><span
                            class="l-line"></span>文章管理</a></dd>
                    <dd><a href="javascript:;" data-url="admin/index/danye-list.html" data-id='4' data-text="单页管理"><span
                            class="l-line"></span>单页管理</a></dd>
                </dl>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont">&#x1D568;</i>教务处管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teaching/academy/academyManager.jsp" data-id='5'
                           data-text="学院信息"><span
                            class="l-line"></span>学院信息</a></dd>
                </dl>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teaching/specialty/specialtyManager.jsp"
                           data-id='11' data-text="专业信息"><span
                            class="l-line"></span>专业信息</a></dd>
                </dl>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teaching/grade/gradeManager.jsp" data-id='19'
                           data-text="班级信息"><span
                            class="l-line"></span>班级信息</a></dd>

                </dl>


                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teaching/teacher/teacherManager.jsp" data-id='6'
                           data-text="教师信息"><span
                            class="l-line"></span>教师信息</a></dd>

                </dl>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teaching/course/courseManager.jsp" data-id='7'
                           data-text="课程信息"><span
                            class="l-line"></span>课程信息</a></dd>

                </dl>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teaching/teacher-course/teacher-courseManager.jsp"
                           data-id='8'
                           data-text="教师教学管理"><span
                            class="l-line"></span>教师教学管理</a></dd>

                </dl>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teaching/student/studentManager.jsp" data-id='9'
                           data-text="学生信息"><span
                            class="l-line"></span>学生信息</a></dd>

                </dl>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="" data-id='10' data-text="教学分析"><span
                            class="l-line"></span>教学分析</a></dd>

                </dl>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="" data-id='12' data-text="发布公告"><span
                            class="l-line"></span>发布公告</a></dd>

                </dl>

            </li>

            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont">&#xe60c;</i>教师管理</a>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teacher/class/classManager.jsp" data-id='13'
                           data-text="班级信息"><span
                            class="l-line"></span>班级信息</a></dd>

                </dl>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teacher/paper/paperManager.jsp" data-id='14'
                           data-text="试卷管理"><span
                            class="l-line"></span>试卷管理</a></dd>

                </dl>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/teacher/grade/gradeManager.jsp" data-id='15'
                           data-text="成绩总览"><span
                            class="l-line"></span>成绩总览</a></dd>

                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont">&#xe60a;</i>学生中心</a>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/student/class/classManager.jsp" data-id='16'
                           data-text="考试信息"><span
                            class="l-line"></span>考试信息</a></dd>

                </dl>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/student/class/classManager.jsp" data-id='17'
                           data-text="进入考场"><span
                            class="l-line"></span>进入考场</a></dd>

                </dl>

                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="admin/index/student/class/classManager.jsp" data-id='18'
                           data-text="成绩信息"><span
                            class="l-line"></span>成绩信息</a></dd>

                </dl>


            </li>

            <li class="layui-nav-item">
                <a href="javascript:;" data-url="admin/index/email.html" data-id='30' data-text="邮件系统"><i
                        class="iconfont">&#xe603;</i>邮件系统</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont">&#xe60d;</i>生成静态</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont">&#xe600;</i>备份管理</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;" data-url="admin/index/admin-info.html" data-id='31' data-text="个人信息"><i class="iconfont">&#xe606;</i>个人信息</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;" data-url="admin/index/system.html" data-id='32' data-text="系统设置"><i
                        class="iconfont">&#xe60b;</i>系统设置</a>
            </li>
        </ul>
    </div>
    <!--右侧内容-->
    <div class="main-layout-container">
        <!--头部-->
        <div class="main-layout-header">
            <div class="menu-btn" id="hideBtn">
                <a href="javascript:;">
                    <span class="iconfont">&#xe60e;</span>
                </a>
            </div>
            <ul class="layui-nav" lay-filter="rightNav">
                <li class="layui-nav-item"><a href="javascript:;" data-url="email.html" data-id='4' data-text="邮件系统"><i
                        class="iconfont">&#xe603;</i></a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;" data-url="admin-info.html" data-id='5' data-text="个人信息">超级管理员</a>
                </li>
                <li class="layui-nav-item"><a href="javascript:;">退出</a></li>
            </ul>
        </div>
        <!--主体内容-->
        <div class="main-layout-body">
            <!--tab 切换-->
            <div class="layui-tab layui-tab-brief main-layout-tab" lay-filter="tab" lay-allowClose="true">
                <ul class="layui-tab-title">
                    <li class="layui-this welcome">后台主页</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show" style="background: #f5f5f5;">
                        <!--1-->
                        <iframe src="admin/index/welcome.html" width="100%" height="100%" name="iframe" scrolling="auto"
                                class="iframe" framborder="0"></iframe>
                        <!--1end-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--遮罩-->
    <div class="main-mask">

    </div>
</div>
<script type="text/javascript">
    var scope = {
        link: 'admin/index/welcome.html'
    }

</script>
<script src="<%=request.getContextPath()%>/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/static/admin/js/main.js" type="text/javascript" charset="utf-8"></script>

</body>
</html>
