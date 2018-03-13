<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/see.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/IndexJs.js"></script>
    <script language="JavaScript">
        window.onload=function () {
            var div1=document.getElementById("right1");
            var div2=document.getElementById("right2");
            var div3=document.getElementById("right3");
            var div4=document.getElementById("right4");
            var div5=document.getElementById("right5");
            var div6=document.getElementById("right6");
            var div7=document.getElementById("right7");
            div1.style.display="block";
            div2.style.display="none";
            div3.style.display="none";
            div4.style.display="none";
            div5.style.display="none";
            div6.style.display="none";
            div7.style.display="none";
        }

        function right2() {
            var div1=document.getElementById("right1");
            var div2=document.getElementById("right2");
            var div3=document.getElementById("right3");
            var div4=document.getElementById("right4");
            var div5=document.getElementById("right5");
            var div6=document.getElementById("right6");
            var div7=document.getElementById("right7");
            div1.style.display="block";
            div2.style.display="none";
            div3.style.display="none";
            div4.style.display="none";
            div5.style.display="none";
            div6.style.display="none";
            div7.style.display="none";
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
<div id="bod">
    <div id="my1">
        <table cellspacing="0">
            <tr>
                <th class="m"><a href="#">基本信息</a></th>
            </tr>
            <tr>
                <td class="m"><a href="${pageContext.request.contextPath}/jump/perfect.do">完善信息</a></td>
            </tr>
            <tr>
                <td class="m"><a href="#" onclick="">修改手机号</a></td>
            </tr>
            <tr>
                <th class="m"><a href="#" onclick="">我的申请</a></th>
            </tr>
            <tr>
                <td class="m"><a href="#" onclick="">待审批</a></td>
            </tr>
            <tr>
                <td class="m"><a href="#" onclick="">已审批</a></td>
            </tr>
            <tr>
                <td class="m"><a href="${pageContext.request.contextPath}/jump/bring.do">待归还</a></td>
            </tr>
            <tr>
                <th class="m"><a href="${pageContext.request.contextPath}/jump/toMatRecord.do">租借记录</a></th>
            </tr>
        </table>
    </div>
    <div id="right1">
        <div>
            <img src="${pageContext.request.contextPath}/img/男头.png">
            <c:forEach items="${stu}" var="stu">
            <span>${stu.stuname}，下午好！</span>欢迎您登录重庆邮电大学移通学院物资管理系统！
            <p>学号：${stu.number}</p>
            <p>性别：${stu.stusex}</p>
            <p>电话：${stu.stutel}</p>
            <p>院系：${stu.studepa}</p>       
            <p>出生年月：${stu.stubirth}</p>
            <p>邮箱：${stu.stubirt}</p>
            </c:forEach>
            <a href="${pageContext.request.contextPath}/cance/toCance.do"><input type="button" value="注销"></a>
        </div>
    </div>
    <div id="right2">
        <div class="d1">
            <div class="d2">
                <span>姓名：甘鹏</span>
                <p>学号：2014220342</p>
                <p>性别：男</p>
                <p>电话：15683424649</p>
                <p>院系：<input type="text" /></p>
                <p>导员：<input type="text" /></p>
                <p>出生年月：
                <form name="reg_testdate">
                    <select name="YYYY" onchange="YYYYDD(this.value)">
                        <option value="">请选择 年</option>
                    </select>
                    <select name="MM" onchange="MMDD(this.value)">
                        <option value="">选择 月</option>
                    </select>
                    <select name="DD">
                        <option value="">选择 日</option>
                    </select>
                </form></p>
                <span class="inp">邮箱：<input type="text" /></span>
                <p><input class="button" type="button" value="提交" /></p>
            </div>
        </div>
    </div>
    <div id="right3">
        <div class="d3">
            <!--显示结果-->
        </div>
        <div class="d1">
            <div class="d2">
                原手机号：15683424649
                <p>修改后的手机号：<input type="text" placeholder="请输入新手机号"></p>
                <p>验证码：<input type="text" /></p>
                <p><input type="button" value="确认修改" class="button" /></p>
            </div>

        </div>
    </div>
    <div id="right4">
        <table width="90%" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td>编号</td>
                <td>物资名称</td>
                <td>所属学生组织</td>
                <td>租借时间</td>
                <td>归还时间</td>
                <td>状态</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>待审批</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>待审批</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>待审批</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>待审批</td>
            </tr>
        </table>
    </div>
    <div id="right5">
        <table width="90%" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td>编号</td>
                <td>物资名称</td>
                <td>所属学生组织</td>
                <td>租借时间</td>
                <td>归还时间</td>
                <td>状态</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>已审批</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>已审批</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>已审批</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>已审批</td>
            </tr>
        </table>
    </div>
    <div id="right6">
        <table width="90%" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td>物资名</td>
                <td>所属组织</td>
                <td>类别</td>
                <td>状态</td>
                <td>价格</td>
                <td>租用时间</td>
                <td>归还</td>
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
    </div>
    <div id="right7">
        <table width="90%" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td>编号</td>
                <td>物资名称</td>
                <td>所属学生组织</td>
                <td>租借时间</td>
                <td>归还时间</td>
                <td>状态</td>
            </tr>
            <tr>
                <td>01</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>已归还</td>
            </tr>
            <tr>
                <td>02</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>已归还</td>
            </tr>
            <tr>
                <td>03</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>已归还</td>
            </tr>
            <tr>
                <td>04</td>
                <td>桌布</td>
                <td>校学生会</td>
                <td>2017.12.25</td>
                <td>2017.12.29</td>
                <td>已归还</td>
            </tr>
        </table>
    </div>
</div>
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