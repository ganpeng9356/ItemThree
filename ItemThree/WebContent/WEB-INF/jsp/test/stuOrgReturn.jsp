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
function agree2(mid2,apid){
	//alert("11");
    document.getElementById("mid2").value=mid2;
	document.getElementById("apid").value=apid;
	document.myform2.submit();
}
</script>
<style type="text/css">
 .spss{
 position: relative;
 top:500px;
 left:460px;
}    
</style>
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
    <div id="right3"> 
    <div id="tab">
            <table cellspacing="0" cellpadding="0" align="center">
                <caption >物资申请表</caption>
                <tr class="i1">
                  <c:forEach items="${aps2}" var="aps2">
                    <th>学号</th>
                    <td>${aps2.stuno}</td>
                    <th>申请人</th>
                    <td>${aps2.stuname}</td>
                    <th>借用物资所属组织</th>
                    <td>${aps2.orgname}</td>
                    </c:forEach>
                </tr>
                <tr class="i2">
                <c:forEach items="${aps2}" var="aps2">
                    <th>申请时间</th>
                    <td>${aps2.app_time}</td>
                    <th>出借日期</th>
                    <td>${aps2.app_ledadate }</td>   
                    <th>租借天数</th>                
                    <th>${aps2.app_lenno}</th>
                    </c:forEach>
                    <td></td>
                </tr>
                <tr class="i3">                 
                    <th>联系方式</th>
                    <td>15095829356</td>                   
                    <c:forEach items="${aps2}" var="aps2">
                    <th>申请单位</th>
                    <td>${aps2.app_Company}</td>
                    </c:forEach>
                    <th>类型</th>
                    <td>
                        <input type="radio" name="name" checked="checked">非易耗品
                        <input type="radio" name="name">易耗品
                    </td>
                </tr>
                <tr class="i4">
                    <th colspan="6">申请原因</th>
                </tr>
                <c:forEach items="${aps2}" var="aps2">
                <tr class="i9">
                    <td colspan="6">${aps2.app_reas }</td>
                </tr>
                </c:forEach>
                <tr class="i5">
                    <th colspan="6">申请物资清单</th>
                </tr>
                <tr class="i6">
                <c:forEach items="${aps2}" var="aps2">
                    <th>物资名称</th>
                    <td><input type="text" name="matname" value="${aps2.matname }" style="height: 40px;width:100%;border-style:none;font-size: 15px;"></td>
                    <th>数量</th>
                    <td>${aps2.app_number }</td>
                    <th>押金（元）</th>
                    <td>${aps2.app_deposit}</td>
                 </c:forEach>
                </tr>
                <tr class="i7">
                    <c:forEach items="${aps2}" var="aps2">
						<th colspan="3">状态</th>
						<td colspan="3">${aps2.state}</td>
						</c:forEach>
                </tr>
                <tr class="i8">
					<c:forEach items="${aps2}" var="aps2">
					<c:forEach items="${mat2}" var="mat2">
			<span class="spss"><a href="#" onclick="agree2(${mat2.mat_id},${aps2.app_id})"><input type="button" value="同意归还"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><input type="button" value="不同意"></a></span>	
			        </c:forEach>
			        </c:forEach>
					</tr>
            </table>
        </div>
    </div>
 <form name="myform2" action="${pageContext.request.contextPath}/home/restitution2.do" method="post">
<input type="hidden" id="mid2" name="mid2">
<input type="hidden" id="apid" name="apid">
</form>
</body>
</html>