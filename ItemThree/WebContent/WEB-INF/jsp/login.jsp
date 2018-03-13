<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>物资借阅系统注册</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css"/>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/login.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>
	<script type="text/javascript">
		window.onload=function () {
			var div1=document.getElementById("regist");
			var div3=document.getElementById("regist3");
			var div4=document.getElementById("regist4");
			div1.style.display="block";
			div3.style.display="none";
			div4.style.display="none";
		}
		function delivery(){
			//alert("11");
			var s=document.getElementById("stutel").value
			$.ajax(
					{ 
						url: "${pageContext.request.contextPath}/ajax/delivery.do", 
					  	method: "post",
						data: {stutel:s},
					  	dataType: "json",
					  	success: function(msg){					  
					        $("#spid").val(msg.number);
					  	}
					}
				);
		}
		
		 $(function(){
	            $(":radio").click(function(){
	                if($(this).val()=="学生"){
	                	stu();
	                }else if($(this).val()=="教师"){
	                	tech();
	                }else if($(this).val()=="学生组织"){
	                	orga();
	                }
	            });
	        });
		function stu() {
			//alert("00");
			var div1=document.getElementById("regist");
			var div3=document.getElementById("regist3");
			var div4=document.getElementById("regist4");
			div1.style.display="block";
			div3.style.display="none";
			div4.style.display="none";
		}
		function tech() {
			//alert("11");
			var div1=document.getElementById("regist");
			var div3=document.getElementById("regist3");
			var div4=document.getElementById("regist4");
			div1.style.display="none";
			div3.style.display="block";
			div4.style.display="none";
		}
		function orga(){
			var div1=document.getElementById("regist");
			var div3=document.getElementById("regist3");
			var div4=document.getElementById("regist4");
			div1.style.display="none";
			div3.style.display="none";
			div4.style.display="block";
		}
	</script>
</head>
<body>
<img src="${pageContext.request.contextPath}/img/logo2.png" width="1109" height="130" alt="logo1" />
<div class="fame" id="fame" ><!--框架-->
	   <hr />
    <div id="option">
	<form id="form1" name="form1" method="post" action="">
   
                  您的身份是：
        <input type="radio" name="radio" id="stu"  name="stu" value="学生" checked/>
                   学生
        <input type="radio" name="radio" id="tech" name="tech" value="教师" />
                   教师
        <input type="radio" name="radio" id="org" name="org" value="学生组织" />
                  学生组织
      </form>
  </div><!--选项部分-->
 	<div id="middle"><!--中间部分-->
 		<img src="${pageContext.request.contextPath}/img/beijing.jpg" width="1496" height="587" alt="caochang" />
<!---------------------------------------------------学生注册信息--------------------------------------------->
		<div id="regist"style="display:none">

			<p>&nbsp;</p>
		    <center><h1>学生注册 </h1></center>
			<div id="regist1">
				<form enctype="multipart/form-data" name="myForm" action="${pageContext.request.contextPath}/register/student.do" method="post" onsubmit="return checkAll();" >
				<div id="name1">&ensp;&ensp;&ensp;&ensp;姓名：
				<input type="text" id="name" name="stuname" style="height:20px;width:150px;border-radius:9px;" onblur="checkNum1()"  placeholder="学生名字"/>
				<span  id="numMsg1" style="color:red;"></span>
				</div><br>
				<div id="name1">&ensp;&ensp;&ensp;&ensp;性别：
				<input type="radio" name="stusex" value="男" /> 男&ensp;&ensp;&ensp;&ensp;
				<input type="radio" name="stusex" value="女" />女				
				<span  id="numMsg1" style="color:red;"></span>
				</div><br>
				<div >&ensp;&ensp;&ensp;&ensp;学号：
				<input type="text" id="num" name="number" style="height:20px;width:150px;border-radius:9px;" onblur="checkNum()"  placeholder="学号（10位）"/>
				<span  id="numMsg" style="color:red;"></span>
				</div><br>
				
				<div >&ensp;&ensp;&ensp;&ensp;密码：
				<input type="password" id="pwd" name="password" style="height:20px;width:150px;border-radius:9px;" onblur="checkPwd()"placeholder="数字/字母/下划线(6-16位)" />
				<span id="pwdMsg"></span>
				</div><br>  
				
				<div >确认密码：
				<input type="password" id="con_pwd" name="con_pwd" style="height:20px;width:150px;border-radius:9px;" onblur="checkConpwd()"placeholder="数字/字母/下划线(6-16位)"/>
				<span id="con_Msg"></span>
				</div><br>
				<div id="tel">手机号码：
				<input type="text" id="stutel" name="stutel" style="height:20px;width:150px;border-radius:9px;" onblur="checktel()"placeholder="手机号码"/>
				<span id="telMsg"></span>
				</div><br>
				<div id="verification">验证码：
				<input type="text" name="newver" style="height:20px;width:150px;border-radius:9px">
				<input type="hidden" name="oldver" id="spid">
				</div>									
		    </div>
			<div id="sub"><input type="submit"  style="height:35px;width:95px;border-radius:9px; font-size:24;" value="立即注册" /></div>
				<p>&nbsp;</p>
				</form>
				<button onclick="delivery()" style="position:absolute;top:345px;left:300px">获取验证码</button>
        </div> 
<!--------------------------------------------------教师注册信息-------------------------------------------------------------------------------->
		<div id="regist3" style="display:none" class="techregist" >

			<p>&nbsp;</p>
		    <center><h1>教师注册 </h1></center>
			<div id="reg"><!--教师信息id-->
				<form enctype="multipart/form-data" name="myForm1" action="${pageContext.request.contextPath}/register/teacher.do" method="post" onsubmit="return checkAll1();" >
				<div>&ensp;&ensp;&ensp;&ensp;工号：
				
				<input type="text" id="nums" name="number" style="height:20px;width:150px;border-radius:9px;" onblur="checkNo1()"  placeholder="工号（7位）"/>
				<span  id="numMsg1" style="color:red;"></span>
				</div><br>
				<div id="name1">&ensp;&ensp;&ensp;&ensp;姓名：
				<input type="text" id="name" name="tech_name" style="height:20px;width:150px;border-radius:9px;" onblur="checkNum1()"  placeholder="教师名字"/>
				<span  id="numMsg1" style="color:red;"></span>
				</div><br>
				<div id="title">&ensp;&ensp;&ensp;&ensp;职称：
				<input type="text" name="tech_title" style="height:20px;width:150px;border-radius:9px">
				</div><br>
				<div id="pwd11">&ensp;&ensp;&ensp;&ensp;密码:
				<input type="password" id="pwd1" name="password" style="height:20px;width:150px;border-radius:9px;" onblur="checkPwd1()"placeholder="数字/字母/下划线(6-16位)" />
				<span id="pwdMsg1"></span>
				</div><br>  				
				<div>确认密码：
				<input type="password" id="con_pwd1" name="con_pwd1" style="height:20px;width:150px;border-radius:9px;" onblur="checkConpwd1()"placeholder="数字/字母/下划线(6-16位)"/>
				<span id="con_Msg01"></span>
				</div><br>
				<div id="tel1">手机号码：<input type="text" name="tel1" style="height:20px;width:150px;border-radius:9px;" onblur="checkte11()"placeholder="手机号码"/>
				<span id="telMsg1"></span>
				</div><br>
				<div id="e_mail">电子邮箱：<input type="text" name="tech_mail" style="height:20px;width:150px;border-radius:9px;" onblur="checkmail()"placeholder="电子邮箱"/>
				<span id="maiMsg"></span>
				</div><br>	
				<div id="address"><input type="radio" name="tech_sex" value="男" checked="checked">男
<input type="radio" name="tech_sex" value="女">女<br>
				<span id="addMsg"></span>
				</div><br>				
		    </div>
			<div id="sub"><input type="submit" style="height:35px;width:95px;border-radius:9px; font-size:24;"value="立即注册" /></div>
				<p>&nbsp;</p>
				</form>
        </div> 
<!--------------------------------------------------学生组织注册信息-------------------------------------------------------------------------------->
		<div id="regist4" style="display:block">
			<p>&nbsp;</p>
		    <center><h1>学生组织注册 </h1></center>
			<div id="reg1"><!--学生组织地址-->
				<form enctype="multipart/form-data" name="myForm2" action="${pageContext.request.contextPath}/register/organization.do" method="post" onsubmit="return checkAll1();" >
				<div>组织名称：
				<input type="text" id="or_name" name="number" style="height:20px;width:150px;border-radius:9px;" onblur="or_name()"  placeholder="组织名称"/>
				<span  id="or_nameMsg1" style="color:red;"></span>
				</div><br>
				<div>指导老师：
				<input type="text" id="instructor" name="org_tech" style="height:20px;width:150px;border-radius:9px;" onblur="instructor()"  placeholder="指导老师"/>
				<span  id="instructorMsg1" style="color:red;"></span>
				</div><br>
				<div>&ensp;&ensp;&ensp;&ensp;密码：
				<input type="password" id="pwd2" name="password" style="height:20px;width:150px;border-radius:9px;" onblur="checkPwd2()"placeholder="数字/字母/下划线(6-16位)" />
				<span id="pwdMsg2"></span>
				</div><br>  				
				<div>确认密码：
				
				<input type="password" id="con_pwd2" name="con_pwd2" style="height:20px;width:150px;border-radius:9px;" onblur="checkConpwd2()"placeholder="数字/字母/下划线(6-16位)"/>
				<span id="con_Msg02"></span>
				</div><br>
				<div>办公地点：
				<input type="text" id="org_add" name="org_place" style="height:20px;width:150px;border-radius:9px;" onblur="org_add()"placeholder="组织地点"/>
				<span id="org_addMsg"></span>
				</div><br>
				<div>&ensp;&ensp;负责人：
				<input type="text" id="fze"name="fze" style="height:20px;width:150px;border-radius:9px;" onblur="checkmail()"placeholder="负责人"/>
				<span id="fzeMsg"></span>
				</div><br>	
				<div>联系方式：
				<input type="text" id="tel_way" name="org_tel" style="height:20px;width:150px;border-radius:9px;" onblur="tel_way1()"placeholder="联系方式"/>
				<span id="tel_wayMsg"></span>
				</div><br>				
		    </div>
			<div id="sub"><input type="submit" style="height:35px;width:95px;border-radius:9px; font-size:18;background-color:#F0F8FF;"value="立即注册" /></div>

				<p>&nbsp;</p>
				</form>
        </div> 		
    </div>
    <div id="bottom"><!--底部部分-->
      <hr />
    <tt>重庆邮电大学移通学院 ©2017版权所有</tt>
	</div>   
</div>
 	<p>&nbsp;</p>
</body>
</html>