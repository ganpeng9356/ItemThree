<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生个人中心</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>
<div id="top">
    <div id="top1">
        <img class="w" src="${pageContext.request.contextPath}/img/logo.png" height="100" width="665">
    </div>
    <div id="top2">
        <img class="w" src="${pageContext.request.contextPath}/img/1.png" height="100" width="161.5">
    </div>
    <div id="top3">
        <nav>
            <ul id="t">
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/studentCenter.do">首页</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/lease.do">物资租借</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/toOrganization.do">组织信息</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/toTel.do">通讯录</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/see.do">个人中心</a></li>
            </ul>
        </nav>
    </div>
</div>
<div id="banner_tabs" class="flexslider">
    <ul class="slides">
        <li>
            <a title="" target="_blank" href="#">
                <img width="1920" height="482" alt="" style="background: url(${pageContext.request.contextPath}/img/19274.jpg) no-repeat center;" src="${pageContext.request.contextPath}/img/alpha.png">
            </a>
        </li>
        <li>
            <a title="" href="#">
                <img width="1920" height="482" alt="" style="background: url(${pageContext.request.contextPath}/img/10.jpg) no-repeat center;" src="${pageContext.request.contextPath}/img/alpha.png">
            </a>
        </li>
        <li>
            <a title="" href="#">
                <img width="1920" height="482" alt="" style="background: url(${pageContext.request.contextPath}/img/banner3.jpg) no-repeat center;" src="${pageContext.request.contextPath}/img/alpha.png">
            </a>
        </li>
    </ul>
    <ul class="flex-direction-nav">
        <li><a class="flex-prev" href="javascript:;">Previous</a></li>
        <li><a class="flex-next" href="javascript:;">Next</a></li>
    </ul>
    <ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
        <li><a>1</a></li>
        <li><a>2</a></li>
        <li><a>2</a></li>
    </ol>
</div>
<div id="foot">
    <div class="fot">
        <span class="ft1">版权所有  双体系卓越人才教育基地</span>
        <span class="ft">|</span>
        <span class="ft1">地址：重庆市合川区假日大道1号</span>
        <span class="ft">|</span>
        <span class="ft1">邮箱：401520</span>
        <span class="ft">|</span>
        <span class="ft1">联系我们</span>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/IndexJs.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/slider.js"></script>
</body>
</html>