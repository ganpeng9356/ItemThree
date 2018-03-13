<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
			function lendMater(mid) {
				document.getElementById("mid").value=mid;
				document.myform.submit();
			}
			function returnmt(mid2,apid,organ){
				//alert("11");
				document.getElementById("mid2").value=mid2;
				document.getElementById("apid").value=apid;
				document.getElementById("organ").value=organ;
				document.myform2.submit();
			}
</script>
</head>
<body>
测试4
<a href="${pageContext.request.contextPath}/home/forMaterial2.do">查看物资</a>
<table>
<tr>
<th>物资名</th>
<th>所属组织</th>
<th>类别</th>
<th>状态</th>
<th>价格</th>
<th>租用</th>
</tr>
<c:forEach items="${mts}" var="mt">
<tr>
<td>${mt.mat_name}</td>
<td>${mt.mat_organ}</td>
<td>${mt.mat_cate}</td>
<td>${mt.mat_state}</td>
<td>${mt.mat_price}</td>
<td>
<% 
 String st=request.getParameter("state");
if(st!=""){
	%>
<a onclick="lendMater(${mt.mat_id})" href="#">租用</a>
<%} else { %>
不可租
<%} %>
</td>
</tr>
</c:forEach>
</table>
<form name="myform" action="${pageContext.request.contextPath}/rent/rentMaterial.do" method="post">
<input type="hidden" id="mid" name="mid">
</form>
<c:forEach items="${msg}" var="msg">
<h4>${msg}</h4>
</c:forEach>
<a href="${pageContext.request.contextPath}/home/forMaterial3.do">归还物资</a>
<table>
<tr>
<th>物资名</th>
<th>所属组织</th>
<th>类别</th>
<th>状态</th>
<th>价格</th>
<th>租用时间</th>
<th>归还</th>
</tr>
<c:forEach items="${mts3}" var="mt3">
<tr>
<td>${mt3.mat_name}</td>
<td>${mt3.mat_organ}</td>
<td>${mt3.mat_cate}</td>
<td>${mt3.mat_state}</td>
<td>${mt3.mat_price}</td>
<td>${mt3.mat_ledadte}</td>
<td><a href="#" onclick="returnmt(${mt3.mat_id},${mt3.app_id},${mt3.mat_organ})">归还</a></td>
</tr>
</c:forEach>
</table>
<form name="myform2" action="${pageContext.request.contextPath}/home/restitution.do" method="post">
<input type="hidden" id="mid2" name="mid2">
<input type="hidden" id="apid" name="apid">
<input type="hidden" id="organ" name="organ">
</form>
</body>
</html>