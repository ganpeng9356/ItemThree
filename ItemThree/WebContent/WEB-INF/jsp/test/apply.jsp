<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>填写申请表</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/apply.css">
</head>
<body>
	<div id="top">
		<div id="top1">
			<img class="w" src="${pageContext.request.contextPath}/img/logo.png"
				height="100" width="665">
		</div>
		<div id="top2">
			<img class="w" src="${pageContext.request.contextPath}/img/1.png"
				height="100" width="154">
		</div>
		<div id="top3">
			<nav>
			<ul id="t">
				<li><a class="daohang"
					href="${pageContext.request.contextPath}/jump/studentCenter.do">首页</a></li>
				<li><a class="daohang"
					href="${pageContext.request.contextPath}/jump/lease.do">物资租借</a></li>
				<li><a class="daohang" href="${pageContext.request.contextPath}/jump/toOrganization.do">组织信息</a></li>
				<li><a class="daohang" href="${pageContext.request.contextPath}/jump/toTel.do">通讯录 </a></li>
				<li><a class="daohang"
					href="${pageContext.request.contextPath}/jump/see.do">个人中心</a></li>
			</ul>
			</nav>
		</div>
	</div>
	<div id="bod">
		<div class="kele">
			<div>
				<a href="lease.html">返回</a>
			</div>
		</div>
		<%
          String mname=(String)request.getAttribute("no");
          String oname=(String)request.getAttribute("organ");
        %>
		<div class="tab">
			<form action="${pageContext.request.contextPath}/ajax/ajaxsub.do" method="post">
				<table cellspacing="0" cellpadding="0" align="center">
					<caption>物资申请表</caption>
					<tr class="i1">
						<c:forEach items="${stu}" var="stu">
							<th>学号</th>
							<td><input type="text" name="stuno" value="${stu.number }"></td>
							<th>申请人</th>
							<td><input type="text" name="stuname" value="${stu.stuname }"></td>
						</c:forEach>
						<c:forEach items="${mts}" var="mts">
							<th>借用物资所属组织</th>
							<td><input type="text" name="orgname" value="${mts.mat_organ }"></td>
						</c:forEach>
					</tr>
					<tr class="i2">
						<th>申请时间</th>
						<td><input type="text" name="app_time"></td>
						<th>出借日期</th>
						<td></td>
						<th>租借天数</th>
						<td><input type="text" name="app_lenno" placeholder="（天）"></td>
					</tr>
					<tr class="i3">
						<c:forEach items="${stu}" var="stu">
							<th>联系方式</th>
							<td>${stu.stutel }</td>
						</c:forEach>
						<th>申请单位</th>
						<td><input type="text" name="app_Company" class="oi" placeholder="所在单位名称"></td>
						<th>类型</th>
						<td><input type="radio" name="name" checked="checked">非易耗品
							<input type="radio" name="name">易耗品</td>
					</tr>
					<tr class="i4">
						<th colspan="6">申请原因</th>
					</tr>
					<tr class="i9">
						<td colspan="6"><input type="text" name="app_reas"
							placeholder="包括活动名称、活动地点、活动时间" /></td>
					</tr>
					<tr class="i5">
						<th colspan="6">申请物资清单</th>
					</tr>
					<tr class="i6">
						<c:forEach items="${mts}" var="mts">
							<th>物资名称</th>
							<td><input type="text" name="matname" value="${mts.mat_name }"></td>
						</c:forEach>
						<th>数量</th>
						<td><input type="text" name="app_number" placeholder="申请数量"></td>
						<th>应交押金（元）</th>
						<td><input type="text" name="app_deposit"></td>
					</tr>
					<tr class="i7">
						<th colspan="3">申请单位签字</th>
						<td colspan="3"></td>
					</tr>
					<tr class="i8">
						<th colspan="3">校团委签字</th>
						<td colspan="3"></td>
					</tr>
				</table>
				<div id="foot">
					<div>
						<input type="submit" value="确认提交" />
					</div>
					<div>
						<span>注：提交后需由申请单位签字→校团委签字→学生组织确认信息方可借取物资。</span>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>