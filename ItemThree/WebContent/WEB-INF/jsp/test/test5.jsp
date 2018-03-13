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
	setInterval('display()', 2000);
}
	function display(){
	$.ajax(
			{ 
				url: "${pageContext.request.contextPath}/ajax/ajaxLease.do", 
			  	method: "post",
				data: null,
			  	dataType: "json",
			  	success: function(mts){
			  		 $("#news").html(mts.news);  					  		
			  	}				
			}
		);
}
function confirm1(aid){
	document.getElementById("aid").value=aid;
	document.myform1.submit();
}
function confirm2(aid2){
	document.getElementById("aid2").value=aid2;
	document.myform2.submit();
}
</script>
</head>
<body>
测试5
<a href="${pageContext.request.contextPath}/mess/display.do" id="news"></a>
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
<c:forEach items="${ap}" var="ap">
<tr>
<td>${ap.stuno}</td>
<td>${ap.matname}</td>
<td>${ap.app_lenno}</td>
<td>${ap.app_reas}</td>
<td>${ap.app_Company}</td>
<td>${ap.state}</td>
<td><a href="#" onclick="confirm1(${ap.app_id})">是</a> <a href="#" onclick="confirm2(${ap.app_id})">否</a></td>
</tr>
</c:forEach>
</table>

<form name="myform1" action="${pageContext.request.contextPath}/mess/confirm.do" method="post"> 
<input type="hidden" id="aid" name="aid">
</form>

<form name="myform2" action="${pageContext.request.contextPath}/mess/confirm2.do" method="post">
<input type="hidden" id="aid2" name="aid2">
</form>
</body>
</html>