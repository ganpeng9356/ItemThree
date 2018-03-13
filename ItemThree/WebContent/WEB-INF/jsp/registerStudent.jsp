<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
注册学生
<form action="${pageContext.request.contextPath}/register/student.do" method="post">
用户名：<input type="text" name="number"><br>
密码：<input type="password" name="password"><br>
<input type="submit" value="注册">
</form>

注册学生组织
<form action="${pageContext.request.contextPath}/register/organization.do" method="post">
用户名：<input type="text" name="number"><br>
密码：<input type="password" name="password"><br>
电话：<input type="text" name="org_tel"><br>
地点：<input type="text" name="org_place"><br>
老师：<input type="text" name="org_tech"><br>
<input type="submit" value="注册">
</form>
</body>
</html>