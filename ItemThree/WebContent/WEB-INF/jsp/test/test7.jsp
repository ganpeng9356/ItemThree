<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
测试7
<table>
<tr>
<th>物资名</th>
<th>所属组织</th>
<th>类别</th>
<th>状态</th>
<th>价格</th>
</tr>
<c:forEach items="${mts}" var="mt">
<tr>
<td>${mt.mat_name}</td>
<td>${mt.mat_organ}</td>
<td>${mt.mat_cate}</td>
<td>${mt.mat_state}</td>
<td>${mt.mat_price}</td>
</tr>
</c:forEach>
</table>
</body>
</html>