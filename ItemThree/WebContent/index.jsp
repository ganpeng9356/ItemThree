<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>
</head>
<body>
登录
<form action="${pageContext.request.contextPath}/home/userLogin.do" method="post">
用户名： <input type="text" name="number" value="学号或工号"><br>
密码：<input type="password" name="password"><br>
选择身份：<input type="radio" name="identity" value="学生" checked="checked">学生<input type="radio" name="identity" value="教师">教师
<input type="radio" name="identity" value="学生组织">学生组织<br>
<input type="submit" value="登录">
</form>


<a href="${pageContext.request.contextPath}/home/forward.do">测试页面转向</a><br>
<a href="${pageContext.request.contextPath}/home/forStudent.do">测试注册学生用户</a>
<a href="${pageContext.request.contextPath}/home/forTest4.do">测试转向test4</a>
<a href="${pageContext.request.contextPath}/home/forTeacher.do">测试注册教师用户</a>
</body>
</html>