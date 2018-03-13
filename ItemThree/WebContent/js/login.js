/*-------------------------------学生注册表单验证-----------------------------------------*/
function checkNum(){      /*输入学号*/
				var numValue=document.myForm.num.value;
				var num = document.getElementById("num").value;
				var numMsg = document.getElementById("numMsg");
				numMsg.innerHTML="";
				var res = numValue.match("^\\d{10}$");/*输入十位的数字*/
				if (res!=null&& res!="") {
					return true;
				}else{
					numMsg.innerHTML="<font style='color:red;'>请输入正确的学号</font>";
					return false;
				}
}
 
function checkPwd(){     /*输入密码*/
				var pwdValue=document.myForm.pwd.value;
				var pwd = document.getElementById("pwd").value;
				var pwdMsg = document.getElementById("pwdMsg");				
				pwdMsg.innerHTML="";
				var res = pwdValue.match("^\\w{6,16}$");/*输入6-16位的密码只允许数字、字母、下划线*/ 
				if(res!=null && res!="") {
				return true;					
				} else {
					pwdMsg.innerHTML="<font style='color:red;'>请输入正确的密码</font>";
					return false;
					}				
				}
			
function checkConpwd(){       /*确认密码*/ 
				var pwd = document.getElementById("pwd").value;
				var con_Msg = document.getElementById("con_Msg");
				con_pwd=document.getElementById("con_pwd").value;
				pwdMsg.innerHTML="";
				if(con_pwd==pwd) {
				return true;
				} else {
					con_Msg.innerHTML="<font style='color:red;'>请再次确认密码</font>";
					return false;
				}
			}
function checktel(){/*输入电话*/
				var telValue=document.myForm.tel.value;
				var tel= document.getElementById("tel").value;
				var telMsg = document.getElementById("telMsg");
				telMsg.innerHTML="";
				var res = telValue.match("^\\d{11}$");/*输入十一位的电话号码*/
				if (res!=null&& res!="") {
				return true;					
				}else{
					telMsg.innerHTML="<font style='color:red;'>请输入正确的手机号码</font>";
				return false;
				}
}
function checkAll(){
			if(checkNum()&&checkPwd()&&checkConpwd()&&checktel()==true){
				  alert("注册成功");
			}else {
				  alert("请完善信息");
			}
			}
/*-------------------------------教师注册表单验证-----------------------------------------*/
function checkNo1(){      /*输入工号*/
                
				//var numValue=document.myForma.num.value;/*有问题*/
				var num= document.getElementById("nums").value;
				//alert(num);
				var numMsg1 = document.getElementById("numMsg1");
				numMsg1.innerHTML="";
				//var res1 = num.match("^\\d{7}$");/*输入七位的数字*/
				//alert("12");
				if (num.length==7) {					
					return true;
				}else{					
					numMsg1.innerHTML="<font style='color:red;'>请输入正确的工号</font>";
					return false;
				}
			}
function checkPwd1(){     /*输入密码*/

				var pwd1Value=document.myForm1.pwd1.value;
			    var pwd1 = document.getElementById("pwd1").value;				
				var pwdMsg1 = document.getElementById("pwdMsg1");				
				pwdMsg1.innerHTML="";
				var res1 = pwd1Value.match("^\\w{6,16}$");/*输入6-16位的密码只允许数字、字母、下划线*/ 
				if(res1!=null && res1!="") {
				return true;					
				} else {
					pwdMsg1.innerHTML="<font style='color:red;'>请输入正确的密码</font>";
					return false;
					}				
				}
function checkConpwd1(){       /*确认密码*/ 
				var pwd1= document.getElementById("pwd1").value;
				var con_Msg01 = document.getElementById("con_Msg01");
				con_pwd1=document.getElementById("con_pwd1").value;
				con_Msg01.innerHTML="";
				if(con_pwd1==pwd1) {
				return true;
				} else {
					con_Msg01.innerHTML="<font style='color:red;'>请再次确认密码</font>";
					return false;
				}
			}
function checkte11(){/*输入电话*/
				var tel1Value=document.myForm1.tel1.value;
				var tel1= document.getElementById("tel1").value;
				var telMsg1 = document.getElementById("telMsg1");
				telMsg1.innerHTML="";
				var res1 = tel1Value.match("^\\d{11}$");/*输入十一位的电话号码*/
				if (res1!=null&& res1!="") {
				return true;					
				}else{
					telMsg1.innerHTML="<font style='color:red;'>请输入正确的手机号码</font>";
				return false;
				}
}
function checkAll1(){
		if(checkNo1()&&checkPwd1()&&checkConpwd1()&&checktel1()==true){
				  alert("注册成功!");
			}else {
				  alert("请完善信息!");				  
				}
			}
/*-------------------------------学生组织注册验证-----------------------------------------*/
function checkPwd2(){     /*输入密码*/

				var pwd2Value=document.myForm2.pwd2.value;
			    var pwd2 = document.getElementById("pwd2").value;				
				var pwdMsg2 = document.getElementById("pwdMsg2");				
				pwdMsg2.innerHTML="";
				var res2 = pwd2Value.match("^\\w{6,16}$");/*输入6-16位的密码只允许数字、字母、下划线*/ 
				if(res2!=null && res2!="") {
				return true;					
				} else {
					pwdMsg2.innerHTML="<font style='color:red;'>请输入正确的密码</font>";
					return false;
					}				
				}
function checkConpwd2(){       /*确认密码*/ 
				var pwd2= document.getElementById("pwd2").value;
				var con_Msg01 = document.getElementById("con_Msg02");
				con_pwd2=document.getElementById("con_pwd2").value;
				con_Msg02.innerHTML="";
				if(con_pwd2==pwd2) {
				return true;
				} else {
					con_Msg02.innerHTML="<font style='color:red;'>请再次确认密码</font>";
					return false;
				}
			}
function tel_way1(){/*输入联系方式*/
				var tel_wayValue=document.myForm2.tel_way.value;
				var tel_way= document.getElementById("tel_way").value;
				var tel_wayMsg= document.getElementById("tel_wayMsg");
				tel_wayMsg.innerHTML="";
				var res1 = tel_wayValue.match("^\\d{11}$");/*输入十一位的电话号码*/
				if (res1!=null&& res1!="") {
				return true;					
				}else{
					tel_wayMsg.innerHTML="<font style='color:red;'>请输入正确的手机号码</font>";
				return false;
				}
}
function checkAll1(){
		if(checkPwd2()&&checkConpwd2()&&tel_way1()==true){
				  alert("注册成功!");
			}else {
				  alert("请完善信息!");				  
				}
			}
