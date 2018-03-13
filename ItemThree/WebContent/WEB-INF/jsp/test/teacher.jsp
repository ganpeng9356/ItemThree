<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>物资管理系统--让工作轻轻松松</title>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
window.onload=function (){
	setInterval('display()', 2000);
}
	function display(){
	$.ajax(
			{ 
				url: "${pageContext.request.contextPath}/ajax/ajaxLease.do", 
			  	method: "post",
				data: null,
			  	dataType: "json",
			  	success: function(mts){
			  		 $("#news").html(mts.news);  					  		
			  	}				
			}
		);
}
</script>
<style type="text/css">
        #top #Head_1 {
            background-image: url("img/beijing1.jpg");
            height: 100px;
            background-size:100%;
        }
        #top #Head_1 #Head_1_Logo span {
            font-size: 40px;
            font-weight: 800;
            position: absolute;
            top:30px;
            left: 38%;
            color:black;
        }
        #top #Head_1 #Head_1_FunctionButton {
            float: left;
            position: absolute;
            right: 3px;
            top: 80px;
            margin-right: 15px;
        }
        #left{
            height: 550px;
            width: 15%;
            background-color: powderblue;
            float: left;
        }
        #left ul{
            list-style-type:none;
            margin:0;
            padding:0;
            background-color: #428bca;
            width: 80%;
            position: relative;
            top:30px;
            font-family: 新宋体;
        }
        #left li{
            border: solid 1px white;
            height: 25px;
        }
        a{
            text-decoration:none;
            color: black;
        }
        .cen{
            text-align: center;
        }
        .lef{
            text-align: left;
            font-size: 20px;
        }
        .cen:hover{
            color: black;
            background-color:powderblue;
            font-size: 20px;
            font-weight: bold;
        }
        #right,#right1{
            width: 85%;
            height: 550px;
            float: right;
        }
        #right h1{
            position: relative;
            left: 20%;
        }

        #right1 tr:first-child{
            background:black;
            color:#fff;
            font-weight:bold;
        }
        td{
            padding:5px 10px;
            text-align:center;
            border-right:1pt solid #C1DAD7;
            border-bottom:1pt solid #C1DAD7;
        }
       #right1  tr:nth-of-type(odd){background:#bbbbbb} /* odd 标识奇数行，even标识偶数行 */
        #right1 tr:hover{ background: #ebebeb;}
        #d1{
            position: relative;
            top:30px;
        }
        #foot{
            width: 100%;
            height: 70px;
            background-color: lightgrey;
            text-align: center;
            float: left;
            position: relative;
            top:10px;
        }
        #foot .fot .ft.{
            font-size: 20px;
            padding: 10px;
			left:1%;
        }
        .fot{
            position: relative;
            top:40px;	
		
        }
		
<!-- --------------------------------------申请表------------------------------------------------ -->
		.daohang:link,.daohang:visited
{
    display:block;
    font-weight:bold;
    color:black;
    text-align:center;
    padding:10px 15px;
    text-decoration:none;
    text-transform:uppercase;
}
.daohang:hover,.daohang:active
{
    background-color: peachpuff;
}
nav {
    margin:0 auto;
    text-align:center;
}
#t {
    list-style-type:none;
    margin:0;
    padding:0;
    background-image: url("../img/2.png");
    height: 40px;
    padding:29px;
    position:relative;
    opacity:0.6;
    filter:alpha(opacity=40);
}
nav ul ul {
    display:none;
}
nav ul li {
    list-style-type:none;
    float:left;
}
nav ul::after {
    content:"";
    display:block;
    clear:both;
}
nav ul li a {
    display:block;
    font-size: 18px;
    color:#000;
    text-decoration:none;
    font-family:"微软雅黑";
}
nav ul li:hover > ul {
    display:block;
}
nav ul ul {
    background-color: brown;
    border-radius:0;
    position:absolute;
    padding:0;
}
nav ul ul li {
    float:none;
    background-color:white;
    border-top:1px solid black;
    border-bottom:1px solid black;
}
#top{
    background-image: url("../img/beijing1.jpg");
    height: 100px;
    width: 100%;
}
#top1{float: left;}
#top2{float: left;}
#top3{float: right;}
.w{
    opacity:0.6;
    filter:alpha(opacity=40);
}

.kele:before{ position: absolute;
    content: " ";
    border: transparent 14px solid;
    border-width: 15px 8px ;
    border-right-color: #CCC;
    top: 1px; left: -16px;
    height: 0; width: 0;
}
.kele{ position: relative;
    width: 60px;
    height: 32px;
    background: #EEE;
    border-radius: 5px;
    margin: 10px;
    text-align: center;
    line-height: 28px;
    font-size: 16px;
    border: 1px solid #CCC;
}
.kele:after{
    position: absolute;
    content: " ";
    border: transparent 13px solid;
    border-width:  12px 8px;
    border-right-color: #EEE;
    top: 1px; left: -15px;
    height: 0;
    width: 0;
}
a {text-decoration:none;}
a:link {color:#000000;text-decoration:none;}
a:visited {color:#000000}
a:hover {text-decoration:underline}
a:active {color:#000000}
table {
    margin: 0 auto;
    border-collapse: collapse;
    width: 80%;
}
caption{
    margin-bottom: 20px;
    font-size: 35px;
}
th{height: 30px}
th,td {
    text-align: center;
    border: 1px solid black;
}
.i1{height: 40px}

.i1,.i2,.i3,.i4,.i5,.i6{height: 40px}
.i7,.i8{height: 60px}
.i2 input,.i6 input{
    height: 40px;
    width:100%;
    border-style:none;
    font-size: 15px;
}
.oi{
    height: 40px;
    width:100%;
    border-style:none;
    font-size: 15px;
}
.i9{
    height: 90px;
}
.i9 input{
    height: 90px;
    width: 100%;
    border-style:none;
    font-size: 15px;
}
#foot{
    width: 100%;
    height: 130px;

}
span{
    font-size: 20px;
    color: red;
    font-weight: bold;
    margin: 0 auto;
    position: relative;
    top:20px;
    left: 28%;
}
#foot input{
    padding: 8px 50px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    font-weight: bold;
    border-radius: 8px;
    background-color: lightgrey;
    position: relative;
    left: 45%;
    top:10px;
}
#foot input:hover{
    background-color: grey;
    color: white;
}
#submit1{<!------提交按钮---->
    width: 100%;
    height: 130px;

}
#submit1 input{
    padding: 8px 50px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    font-weight: bold;
    border-radius: 8px;
    background-color: lightgrey;
    position: relative;
    left: 35%;
    top:10px;
	
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
                <a target="" href="${pageContext.request.contextPath}/cance/canceTeacher.do">
                    <img width="78" height="20" alt="退出系统" src="${pageContext.request.contextPath}/img/logout.gif" />
                </a>
            </div>
        </div>
    </div>
    <div id="left">
        <ul>
            <li class="lef"><a href=""><img src="${pageContext.request.contextPath}/img/func20001.gif">系统菜单</a></li>
            <li class="cen"><a href="${pageContext.request.contextPath}/jump/toTeacher.do">物资信息表</a></li>
            <li class="cen"><a href="${pageContext.request.contextPath}/jump/toTeacherApproval.do" id="news"></a></li>     
        </ul>
    </div>
	<!----------------------------------------物资信息表--------------------------------------------------------------->
    <div id="right" style="display:none"><!--点击进来默认的界面（系统菜单）-->
        <h1>欢迎使用重庆邮电大学移通学院物资管理系统</h1>
    </div>
    <div id="right1" style="display:block"><!--物资信息的界面-->
        <div id="d1">
            <table width="90%" cellspacing="0" cellpadding="0" align="center" id="bod">
                <tr style="background-color:black;">
                    <td>物资名称</td>
                    <td>所属学生组织</td>
                    <td>类别</td>
                    <td>图片</td>
                    <td>价格</td>
                    <td>上传时间</td>
                </tr>
                <c:forEach items="${mat}" var="mat">
				 <tr>
                    <td>${mat.mat_name}</td>
                    <td>${mat.mat_organ}</td>
                    <td>${mat.mat_cate}</td>
                    <td>            
                    <img src="${pageContext.request.contextPath }${mat.mat_url}${mat.mat_imgname}" width="30px" height="20px">
                    </td>
                    <td>${mat.mat_price}</td>
                    <td>${mat.mat_uptime}</td>
                </tr>	
                </c:forEach>			 
            </table>
        </div>
    </div>
	<!----------------------------------------物资审批表------------------------------------------------------->
	 <div id="right2" style="display:none"><!--物资审批的界面-->
		<div id="app">
		<form action="${pageContext.request.contextPath}/" method="post">
				<table cellspacing="0" cellpadding="0" align="center">
					<caption>物资申请表</caption>
					<tr class="i1">
						<c:forEach items="${stu}" var="stu">
							<th>学号</th>
							<td><input type="text" name="stuno" value="${stu.number }"></td>
							<th>申请人</th>
							<td><input type="text" name="stuname" value="${stu.stuname }"></td>
						</c:forEach>
						<c:forEach items="${mts}" var="mts">
							<th>借用物资所属组织</th>
							<td><input type="text" name="orgname" value="${mts.mat_organ }"></td>
						</c:forEach>
					</tr>
					<tr class="i2">
						<th>申请时间</th>
						<td><input type="text"></td>
						<th>出借日期</th>
						<td></td>
						<th>租借天数</th>
						<td><input type="text" name="app_lenno" placeholder="（天）"></td>
					</tr>
					<tr class="i3">
						<c:forEach items="${stu}" var="stu">
							<th>联系方式</th>
							<td>${stu.stutel }</td>
						</c:forEach>
						<th>申请单位</th>
						<td><input type="text" name="app_Company" class="oi" placeholder="所在单位名称"></td>
						<th>类型</th>
						<td><input type="radio" name="name" checked="checked">非易耗品
							<input type="radio" name="name">易耗品</td>
					</tr>
					<tr class="i4">
						<th colspan="6">申请原因</th>
					</tr>
					<tr class="i9">
						<td colspan="6"><input type="text" name="app_reas"
							placeholder="包括活动名称、活动地点、活动时间" /></td>
					</tr>
					<tr class="i5">
						<th colspan="6">申请物资清单</th>
					</tr>
					<tr class="i6">
						<c:forEach items="${mts}" var="mts">
							<th>物资名称</th>
							<td><input type="text" name="matname" value="${mts.mat_name }"></td>
						</c:forEach>
						<th>数量</th>
						<td><input type="text" placeholder="申请数量"></td>
						<th>应交押金（元）</th>
						<td><input type="text"></td>
					</tr>
					<tr class="i7">
						<th colspan="3">申请单位签字</th>
						<td colspan="3"></td>
					</tr>
					<tr class="i8">
						<th colspan="3">校团委签字</th>
						<td colspan="3"></td>
					</tr>
				</table>
				<div id="foot">
					<div>
						<input type="submit" value="确认提交" />
					</div>
					<div>
						<span>注：提交后需由申请单位签字→校团委签字→学生组织确认信息方可借取物资。</span>
					</div>
				</div>
			</form>
		</div>	 
	 </div>
	 	
    <div id="foot">
      <div class="fot">
     版权所有 双体系卓越人才教育基地 | 地址：重庆市合川区假日大道1号 | 邮箱：401520 | 联系我们     
      </div><br>	  
    </div>

</body>
</html>