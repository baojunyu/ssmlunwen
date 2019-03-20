<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/3/5
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css"  type="text/css">
    <link href="${pageContext.request.contextPath }/css/style1.css" rel="stylesheet" type="text/css" />
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <div class="layui-logo">理工教学实践中心网站</div>
            <ul class="layui-nav layui-layout-left">
                <li class="layui-nav-item">
                    <a href="javascript:;">其它系统</a>
                    <dl class="layui-nav-child">
                        <dd><a href="">首页</a></dd>
                        <dd><a href="index.jsp" >课程管理</a></dd>
                    </dl>
                </li>
            </ul>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <img src="${pageContext.request.contextPath}/img/yonghu.png" class="layui-nav-img">
                        用户
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="">基本资料</a></dd>
                        <dd><a href="">安全设置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">退出</a></li>
            </ul>
        </div>
    </div>
</div>

<span class="layui-breadcrumb">
  <a href="/">首页</a>
</span>



<div class="content_box_bot">
    <ul class="content_box_bot_l">
        <li class="info_news">
            <div class="info_news_but"><p class="on">通知公告</p></div>

        </li>

    </ul>
</div>

<%--<div class="layui-row">--%>
    <%--<div class="layui-col-xs6 layui-col-md12">--%>
        <%--<div class="layui-col-xs12 layui-col-md8">--%>
            <%--<div class="layui-carousel" id="test1" lay-filter="test1">--%>
                <%--<div carousel-item="">--%>
                    <%--<div><img src="img/biejing.jpg" alt=""></div>--%>
                    <%--<div><img src="img/lun2.jpg" alt=""></div>--%>
                    <%--<div><img src="img/lun3.jpg" alt=""></div>--%>
                    <%--<div><img src="img/lun4.jpg" alt=""></div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>


<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>

<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['carousel', 'form'], function(){
        var carousel = layui.carousel
            ,form = layui.form;

        //常规轮播
        carousel.render({
            elem: '#test1'
            ,arrow: 'always'
        });

        //改变下时间间隔、动画类型、高度
        carousel.render({
            elem: '#test2'
            ,interval: 1800
            ,anim: 'fade'
            ,height: '120px'
        });

        //设定各种参数
        var ins3 = carousel.render({
            elem: '#test3'
        });
        //图片轮播
        carousel.render({
            elem: '#test10'
            ,width: '778px'
            ,height: '440px'
            ,interval: 5000
        });

        //事件
        carousel.on('change(test4)', function(res){
            console.log(res)
        });

        var $ = layui.$, active = {
            set: function(othis){
                var THIS = 'layui-bg-normal'
                    ,key = othis.data('key')
                    ,options = {};

                othis.css('background-color', '#5FB878').siblings().removeAttr('style');
                options[key] = othis.data('value');
                ins3.reload(options);
            }
        };

        //监听开关
        form.on('switch(autoplay)', function(){
            ins3.reload({
                autoplay: this.checked
            });
        });

        $('.demoSet').on('keyup', function(){
            var value = this.value
                ,options = {};
            if(!/^\d+$/.test(value)) return;

            options[this.name] = value;
            ins3.reload(options);
        });

        //其它示例
        $('.demoTest .layui-btn').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });
    });
</script>
</body>
</html>
