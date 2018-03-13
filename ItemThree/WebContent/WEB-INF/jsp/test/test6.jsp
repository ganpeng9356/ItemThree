<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
window.onload=function (){
	setInterval('displayNews()', 2000);
	setInterval('displayNews2()', 2000);
}
function display(){
	$.ajax(
			{ 
				url: "${pageContext.request.contextPath}/ajax/ajaxMaterial.do", 
			  	method: "post",
				data: null,
			  	dataType: "json",
			  	success: function(mts){
			  		 $("#div1").html(mts.length);  					  		
			  	}
				
			}
		);
}
function displayNews(){
	$.ajax(
	        {
	        	url:"${pageContext.request.contextPath}/ajax/ajaxOrganization.do",
	        	method: "post",
				data: null,
			  	dataType: "json",
			  	success: function(msg){
			  		$("#news").html(msg.news);
			  	}
	        }		
	);
}

function displayNews2(){
	$.ajax(
	        {
	        	url:"${pageContext.request.contextPath}/ajax/ajaxOrganization2.do",
	        	method: "post",
				data: null,
			  	dataType: "json",
			  	success: function(msg){
			  		$("#news2").html(msg.news);
			  	}
	        }		
	);
}
function agree1(aid1){
	document.getElementById("aid1").value=aid1;
	document.myform1.submit();
}
function agree2(mid2,apid){
	//alert("11");
    document.getElementById("mid2").value=mid2;
	document.getElementById("apid").value=apid;
	document.myform2.submit();
}
</script>
</head>
<body>
测试6
<br>
添加物资
<form action="${pageContext.request.contextPath}/addMaterial.do" method="post" enctype="multipart/form-data">
物资名：<input type="text" name="mat_name"><br>
数量：<input type="text" name="mat_num"><br>
所属组织：<input type="text" name="mat_organ"><br>
图片：<input type="file" name="file"><br>
类别：<input type="text" name="mat_cate"><br>
价格：<input type="text" name="mat_price"><br>
<input type="submit" value="提交">
</form>
<c:forEach items="${msg}" var="material">
		<h4>${material}</h4>
</c:forEach>
<br>

<a href="${pageContext.request.contextPath}/home/forMaterial.do">查看物资</a>
<input type="button" value="查看物资" onclick="display()">
<div id="div1"></div>
<table>
<tr>
<th>物资名</th>
<th>所属组织</th>
<th>类别</th>
<th>状态</th>
<th>价格</th>
</tr>
<tr id="testr">
</tr>
</table><br>

<a href="${pageContext.request.contextPath}/mess/displayOrganization.do" id="news"></a>
<table>
<tr>
<th>学号</th>
<th>物资名</th>
<th>租借天数</th>
<th>申请理由</th>
<th>申请单位</th>
<th>状态</th>
<th>是否同意</th>
</tr>
<c:forEach items="${aps}" var="aps">
<tr>
<td>${aps.stuno}</td>
<td>${aps.matname}</td>
<td>${aps.app_lenno}</td>
<td>${aps.app_reas}</td>
<td>${aps.app_Company}</td>
<td>${aps.state}</td>
<td><a href="#" onclick="agree1(${aps.app_id})">是</a> <a href="${pageContext.request.contextPath}">否</a></td>
</tr>
</c:forEach>
</table>

<a href="${pageContext.request.contextPath}/mess/displayOrganization2.do" id="news2"></a>
<table>
<tr>
<th>学号</th>
<th>物资名</th>
<th>租借时间</th>
<th>租借天数</th>
<th>申请理由</th>
<th>申请单位</th>
<th>状态</th>
<th>是否同意归还</th>
</tr>
<c:forEach items="${aps2}" var="aps2">
<c:forEach items="${mat2}" var="mat2">
<tr>
<td>${aps2.stuno}</td>
<td>${aps2.matname}</td>
<td>${aps2.app_ledadate}</td>
<td>${aps2.app_lenno}</td>
<td>${aps2.app_reas}</td>
<td>${aps2.app_Company}</td>
<td>${aps2.state}</td>
<td><a href="#" onclick="agree2(${mat2.mat_id},${aps2.app_id})">是</a></td>
</tr>
</c:forEach>
</c:forEach>
</table>
<form name="myform1" action="${pageContext.request.contextPath}/rent/agreeRent.do" method="post">
<input type="hidden" id="aid1" name="aid1">
</form>
<form name="myform2" action="${pageContext.request.contextPath}/home/restitution2.do" method="post">
<input type="hidden" id="mid2" name="mid2">
<input type="hidden" id="apid" name="apid">
</form>

</body>
</html>