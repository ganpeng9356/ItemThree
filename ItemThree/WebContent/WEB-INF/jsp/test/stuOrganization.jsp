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
window.onload=function (){
	setInterval('displayNews()', 2000);
	setInterval('displayNews2()', 2000);
}
function displayNews(){
	$.ajax(
	        {
	        	url:"${pageContext.request.contextPath}/ajax/ajaxOrganization.do",
	        	method: "post",
				data: null,
			  	dataType: "json",
			  	success: function(msg){
			  		$("#news").html(msg.news);
			  	}
	        }		
	);
}
function displayNews2(){
	$.ajax(
	        {
	        	url:"${pageContext.request.contextPath}/ajax/ajaxOrganization2.do",
	        	method: "post",
				data: null,
			  	dataType: "json",
			  	success: function(msg){
			  		$("#news2").html(msg.news);
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
    <div id="right1" style="display: none">
        <div class="d0">
            <span>物资列表</span>
        </div>
        <div class="d2">
            <form  method="post">
                <input type="text" />
                <input type="button" value="搜索" />
                <a href=""><input type="button" value="添加" class="butto"></a>
            </form>
        </div>
        <div class="d1">
            <table width="100%" cellspacing="0" cellpadding="0" align="center" class="bod">
                <tr>
                    <td>物资名称</td>
                    <td>所属学生组织</td>
                    <td>规格</td>
                    <td>图片</td>
                    <td>价格</td>
                    <td>上传时间</td>
                    <td>操作</td>
                </tr>
                <tr>
                    <td>桌布</td>
                    <td>校学生会</td>
                    <td>10朵*束</td>
                    <td>
                        <img src="${pageContext.request.contextPath}/img/wz2.jpg">
                    </td>
                    <td>￥200.00</td>
                    <td>2017.12.19</td>
                    <td>
                        <input type="submit" value="删除" class="button1">
                    </td>
                </tr>
                <tr>
                    <td>桌布</td>
                    <td>校学生会</td>
                    <td>10朵*束</td>
                    <td>
                        <img src="${pageContext.request.contextPath}/img/wz2.jpg">
                    </td>
                    <td>￥200.00</td>
                    <td>2017.12.19</td>
                    <td>
                        <input type="submit" value="删除" class="button1">
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div id="right2" style="display: none">
        <div class="d0">
            <a href=""><img src="${pageContext.request.contextPath}/img/fan.png" height="35"></a>
        </div>
        <div id="r2d">
            <div id="r2d1">
                <form>
                    <p>物资名：<input type="text" /></p>
                    <p>所属组织：<input type="text" /></p>
                    <p>数量：<input type="text" /></p>
                    <p>图片：<input type="file" /></p>
                    <p>类别：<input type="text" /></p>
                    <p>价格：<input type="text" /></p>
                    <input type="submit" value="提交" class="butto1">
                </form>
            </div>

        </div>
    </div>
    <div id="right3" style="display: none">
        <div id="tab">
            <table cellspacing="0" cellpadding="0" align="center">
                <caption >物资申请表</caption>
                <tr class="i1">
                    <th>学号</th>
                    <td>2014220175</td>
                    <th>申请人</th>
                    <td>黄露苹</td>
                    <th>借用物资所属组织</th>
                    <td>校学生会</td>
                </tr>
                <tr class="i2">
                    <th>申请时间</th>
                    <td>2017.12.20</td>
                    <th>出借日期</th>
                    <td></td>
                    <th>租借天数</th>
                    <td></td>
                </tr>
                <tr class="i3">
                    <th>联系方式</th>
                    <td>15826173663</td>
                    <th>申请单位</th>
                    <td></td>
                    <th>类型</th>
                    <td>
                        <input type="radio" name="name" checked="checked">非易耗品
                        <input type="radio" name="name">易耗品
                    </td>
                </tr>
                <tr class="i4">
                    <th colspan="6">申请原因</th>
                </tr>
                <tr class="i9">
                    <td colspan="6"></td>
                </tr>
                <tr class="i5">
                    <th colspan="6">申请物资清单</th>
                </tr>
                <tr class="i6">
                    <th>物资名称</th>
                    <td>桌布</td>
                    <th>数量</th>
                    <td></td>
                    <th>应交押金（元）</th>
                    <td>￥100.00</td>
                </tr>
                <tr class="i7">
                    <th colspan="3">校团委签字</th>
                    <td colspan="3"></td>
                </tr>
            </table>
        </div>

        <div id="fot">
                <input type="button" value="确认" />
        </div>
    </div>
    <div id="right4" style="display: none">
        <div class="rigd">
            <div class="rigd1">
                <form>
                    <p>组织名称：<input type="text" /></p>
                    <p>办公地点：<input type="text" /></p>
                    <p>指导老师：<input type="text" /></p>
                    <p>负责人联系方式：<input type="text" /></p>
                    <p>组织简介：<textarea rows="10" cols="50"></textarea></p>
                    <p>上传图片：<input type="file" /></p>
                    <input class="butto2" type="submit" value="提交" />
                </form>
            </div>
        </div>
    </div>
    <div id="right5" style="display: block">
        <div class="d2">
            <form  method="post">
                <input type="text" />
                <input type="button" value="搜索" />
                <a href=""><input type="button" value="新增" class="butto"></a>
            </form>
        </div>
        <div class="d1">
            <table width="100%" cellspacing="0" cellpadding="0" align="center" class="bod">
                <tr>
                    <td>姓名</td>
                    <td>所在学生组织</td>
                    <td>职位</td>
                    <td>联系电话</td>
                </tr>
                <tr>
                    <td>黄露苹</td>
                    <td>校学生会</td>
                    <td>副主席</td>
                    <td>15537437924</td>
                </tr>
                <tr>
                    <td>甘鹏</td>
                    <td>校学生会</td>
                    <td>主席</td>
                    <td>15837437924</td>
                </tr>
                <tr>
                    <td>谷明杰</td>
                    <td>校学生会</td>
                    <td>副主席</td>
                    <td>13437437924</td>
                </tr>
                <tr>
                    <td>徐毅</td>
                    <td>校学生会</td>
                    <td>办公室主任</td>
                    <td>15837437924</td>
                </tr>
                <tr>
                    <td>吴谋</td>
                    <td>校学生会</td>
                    <td>办公室副主任</td>
                    <td>15837437924</td>
                </tr>
                <tr>
                    <td>王丙鹤</td>
                    <td>校学生会</td>
                    <td>办公室副主任</td>
                    <td>15837437924</td>
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