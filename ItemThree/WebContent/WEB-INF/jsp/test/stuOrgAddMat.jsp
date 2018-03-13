<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>物资管理系统--让工作轻轻松松</title>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/student.css">
<script type="text/javascript">
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
</script>
</head>
<body>
<div id="top">
        <div id="Head_1">
            <div id="Head_1_Logo">
                <img src="${pageContext.request.contextPath}/img/重庆邮电大学移通学院logo.png" width="500" height="100" class="w">
                <span>物资管理系统</span>
            </div>
            <div id="Head_1_FunctionButton">
                <a target="" href="${pageContext.request.contextPath}/cance/canOrganization.do">
                    <img width="78" height="20" alt="退出系统" src="${pageContext.request.contextPath}/img/logout.gif" />
                </a>
            </div>
        </div>
    </div>
    <div id="left">
        <ul>
            <li class="lef"><a href=""><img src="${pageContext.request.contextPath}/img/func20001.gif">系统菜单</a></li>
            <li class="cen"><a href="${pageContext.request.contextPath}/jump/stuOrgAddMat.do">物资管理</a></li>
            <li class="cen"><a href="">信息管理</a></li>
            <li class="cen"><a href="${pageContext.request.contextPath}/jump/toStuOrganization.do">通讯录</a></li>
            <li class="cen"><a href="${pageContext.request.contextPath}/mess/displayOrganization.do" id="news"></a></li>
            <li class="cen"><a href="${pageContext.request.contextPath}/mess/displayOrganization2.do" id="news2"></a></li>
        </ul>
    </div>
    <div id="right" style="display: none">
        <h1>欢迎使用重庆邮电大学移通学院物资管理系统</h1>
    </div>
<div id="right2" style="display: block">
        <div class="d0">
            <a href=""><img src="${pageContext.request.contextPath}/img/fan.png" height="35"></a>
        </div>
        <div id="r2d">
            <div id="r2d1">
                <form action="${pageContext.request.contextPath}/addMaterial.do" method="post" enctype="multipart/form-data">
                    <p>物资名：<input type="text" name="mat_name"/></p>
                    <p>所属组织：<input type="text" name="mat_organ"/></p>
                    <p>数量：<input type="text" name="mat_num"/></p>
                    <p>图片：<input type="file" name="file"/></p>
                    <p>类别：<input type="text" name="mat_cate"/></p>
                    <p>价格：<input type="text" name="mat_price"/></p>
                    <input type="submit" value="提交" class="butto1">
                </form>
                <c:forEach items="${msg}" var="material">
		          <h4>${material}</h4>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>