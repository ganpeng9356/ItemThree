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
测试8
<%
  String mname=(String)request.getAttribute("no");
  String oname=(String)request.getAttribute("organ");
%>
<form action="${pageContext.request.contextPath}/ajax/ajaxsub.do" method="post">
<c:forEach items="${num}" var="material">
学号：<input type="text" name="stuno" value="${material}"><br>
</c:forEach>
物资名：<input type="text" name="matname" value="<%=mname%>"><br>
组织名：<input type="text" name="orgname" value="<%=oname%>"><br>
租借天数：<input type="text" name="app_lenno"><br>
申请理由：<input type="text" name="app_reas"><br>
申请单位：<input type="text" name="app_Company"><br>
<input type="submit" value="提交">
</form>

</body>
</html>