<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>物资租借</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lease.css">
 <script type="text/javascript">
			function lendMater(mid) {
				document.getElementById("mid").value=mid;
				document.myform.submit();
			}			
</script>
</head>
<body>
<div id="top">
    <div id="top1">
        <img class="w" src="${pageContext.request.contextPath}/img/logo.png" height="100" width="665">
    </div>
    <div id="top2">
        <img class="w" src="${pageContext.request.contextPath}/img/1.png" height="100" width="154">
    </div>
    <div id="top3">
        <nav>
            <ul id="t">
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/studentCenter.do">首页</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/lease.do">物资租借</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/toOrganization.do">组织信息</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/toTel.do">通讯录</a></li>
                <li><a class="daohang" href="${pageContext.request.contextPath}/jump/see.do">个人中心</a></li>
            </ul>
        </nav>
    </div>
</div>
<div class="clear"></div>
<div id="bd">
    <form action="" method="post">
       物资搜索：<input type="text" name="name" maxlength="10" placeholder="物资名/学生组织名" />
        <input type="submit" value="搜索" />
    </form>
</div>
<div>
    <table width="100%" cellspacing="0" cellpadding="0" align="center" id="bod">
    <tr>
        <td>物资名</td>
        <td>所属组织</td>
        <td>图片</td>
        <td>类别</td>
        <td>状态</td>
        <td>价格</td>
        <td>租用</td>
    </tr>
    <c:forEach items="${mts}" var="mt">
    <tr>
        <td>${mt.mat_name}</td>
        <td>${mt.mat_organ}</td>
        <td>
            <img src="${pageContext.request.contextPath }${mt.mat_url}${mt.mat_imgname}">
        </td>
        <td>${mt.mat_cate}</td>
        <td>${mt.mat_state}</td>
        <td>${mt.mat_price}</td>
    <td>

	<c:if test="${mt.mat_state=='存在'}">
   <a onclick="lendMater(${mt.mat_id})" href="#"><input type="submit" value="租借" class="button1"></a>
    </c:if>
    <c:if test="${ma.mat_state=='已借出'}">
              已借出
    </c:if>
    </td>
</tr>
    </c:forEach>
</table>
</div>
<form name="myform" action="${pageContext.request.contextPath}/rent/rentMaterial.do" method="post">
<input type="hidden" id="mid" name="mid">
</form>
<div class="clear"></div>
<div id="foot">
    <div class="fot">
        <span class="ft1">版权所有  双体系卓越人才教育基地</span>
        <span class="ft">|</span>
        <span class="ft1">地址：重庆市合川区假日大道1号</span>
        <span class="ft">|</span>
        <span class="ft1">邮箱：401520</span>
        <span class="ft">|</span>
        <span class="ft1">联系我们</span>
    </div>
</div>

</body>
</html>