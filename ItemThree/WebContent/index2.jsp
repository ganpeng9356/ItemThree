<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/login.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
<img src="${pageContext.request.contextPath}/img/logo2.png" width="1109" height="130" alt="logo1" />
<div class="fame" id="fame" ><!--框架-->
	   <hr />
	    <div id="middle"><!--中间部分-->
 		<img src="${pageContext.request.contextPath}/img/beijing.jpg" width="1496px" height="587px" alt="beijing" style="position:absolute;top:-90px;left:-10px;"/>
			<div id="hello1" >	
				    <center><h3 style="color:white;">hello,welcome back!</h3></center><hr>
					<div id="index_add">
				<form  enctype="multipart/form-data" name="myForm2" action="${pageContext.request.contextPath}/home/userLogin.do" method="post" >
					<br><input type="text" id="user" name="number" style="height:25px;width:165px;" onblur="user()"  placeholder="组织名/工号/学号"/><br><br>
					<input type="password" id="password" name="password" style="height:25px;width:165px;" onblur="user()"  placeholder="密码"/><br><br>				
					<input type="radio" name="identity" value="学生组织">组织
					<input type="radio" name="identity" value="学生" checked="checked">学生
					<input type="radio" name="identity" value="教师">教师<br><br>
					<div id="submit"><input type="submit" style="height:30px;width:170px;font-size:24;background-color:#FF9933;color:white;" value="登录" /></div><br>
					<div id="regi">
					</div>
				</form>
				<a href="${pageContext.request.contextPath}/jump/login.do">
					<button style="height:30px;width:170px;font-size:24;background-color:#FF9933;color:white;" value="注册" >
					注册</button>
					</a>
					</div>
			</div>

		 </div>
    <div id="bottom"><tt> </tt><!--底部部分-->
      <hr/>
    <tt>重庆邮电大学移通学院 ©2017版权所有</tt>
	</div>   
</div>
 	<p>&nbsp;</p>
</body>
</html>