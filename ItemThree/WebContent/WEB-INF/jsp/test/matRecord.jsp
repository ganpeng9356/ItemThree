<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/see.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/IndexJs.js"></script>
</head>
<body>
<div id="top">
    <div id="top1">
        <img class="w" src="${pageContext.request.contextPath}/img/logo.png" height="100" width="665">
    </div>
    <div id="top2">
        <img class="w" src="${pageContext.request.contextPath}/img/1.png" height="100" width="154">
    </div>
    <div id="top3">
        <nav>
            <ul id="t">
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/studentCenter.do">首页</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/lease.do">物资操作</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/toOrganization.do">组织信息</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/toTel.do">通讯录</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/see.do">个人中心</a></li>
            </ul>
        </nav>
    </div>
</div>
<div id="bod">
    <div id="my1">
        <table cellspacing="0">
            <tr>
                <th class="m"><a href="${pageContext.request.contextPath}/jump/see.do">基本信息</a></th>
            </tr>
            <tr>
                <td class="m"><a href="${pageContext.request.contextPath}/jump/perfect.do">完善信息</a></td>
            </tr>
            <tr>
                <td class="m"><a href="#" onclick="">修改手机号</a></td>
            </tr>
            <tr>
                <th class="m"><a href="#" onclick="">我的申请</a></th>
            </tr>
            <tr>
                <td class="m"><a href="#" onclick="">待审批</a></td>
            </tr>
            <tr>
                <td class="m"><a href="#" onclick="">已审批</a></td>
            </tr>
            <tr>
                <td class="m"><a href="${pageContext.request.contextPath}/jump/bring.do">待归还</a></td>
            </tr>
            <tr>
                <th class="m"><a href="${pageContext.request.contextPath}/jump/toMatRecord.do">租借记录</a></th>
            </tr>
        </table>
    </div>
    <div id="right7">
        <table width="90%" cellspacing="0" cellpadding="0" align="center">
            <tr>                
                <td>物资名称</td>
                <td>所属学生组织</td>
                <td>押金</td>
                <td>租借时间</td>
                <td>归还时间</td>
                <td>状态</td>
            </tr>
            <c:forEach items="${ap}" var="ap">
            <tr>
                <td>${ap.matname}</td>
                <td>${ap.orgname}</td>
                <td>${ap.app_deposit}</td>
                <td>${ap.app_ledadate}</td>
                <td>${ap.app_retime}</td>
                <td>${ap.state}</td>
            </tr>  
            </c:forEach>      
        </table>
    </div>
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
</body>
</html>