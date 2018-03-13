<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/organization.css">
<script type="text/javascript">
        window.onload=function () {
            var div1=document.getElementById("div1");
            var div2=document.getElementById("div2");
            div1.style.display="block";
            div2.style.display="none";
        }
     function changes() {
         var div1=document.getElementById("div1");
         var div2=document.getElementById("div2");
         var  sel=document.getElementById("pid");
         var grade = sel.options[sel.selectedIndex].value;
         if(grade=="校学生会"){
             div1.style.display="block";
             div2.style.display="none";
         }else{
             div1.style.display="none";
             div2.style.display="block";
         }
         //alert(grade);
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
    <form>
        <select name="cars" id="pid" onchange="changes()">
            <option  value="校学生会">校学生会</option>
            <option  value="学生科技联合会">学生科技联合会</option>
            <option  value="学生社团联合会">学生社团联合会</option>
            <option  value="青年志愿者联合会">青年志愿者联合会</option>
            <option  value="学生体育联合会">学生体育联合会</option>
            <option  value="学生宿舍管理委员会">学生宿舍管理委员会</option>
            <option  value="学生书院联合会">学生书院联合会</option>
        </select>
    </form>
</div>
<div id="div1" class="tab">
    <table cellspacing="0" cellpadding="0" align="center">
        <caption >校学生会</caption>
        <tr class="i1">
            <th>办公地点：</th>
            <td>学生组织交流中心</td>
            <th>指导老师：</th>
            <td>李**</td>
            <th>负责人姓名：</th>
            <td>杨**</td>
            <th>负责人联系方式:</th>
            <td>12837438293</td>
        </tr>
        <tr class="i2">
            <td colspan="8">简介</td>
        </tr>
        <tr class="i3">
        <td colspan="8">
            <div>重庆邮电大学移通学院校学生会是在校党委领导、
                团委直接指导下的学生自治组织，
                下设办公室、外联部、女生部、美宣部、学习部、生活部、治保部六个部门，
                成立八年，共获三次“重庆市十佳学生会”荣誉称号。
                始终遵循“全心全意为同学服务”的根本理念，秉承“一切为了同学，为了一切同学，
                为了同学的一切”的组织宗旨，以“内塑品质、
                外树形象”为工作目标，我们力求在建设“西部信息产业国际化人才摇篮”
                中发挥生力军和突击队作用。以学生为本，深入落实我校“完满教育”计划，
                开展广大学生思想政治工作，强化学生会自身建设，构建学生会服务体系，
                广泛调查、多方合作、突出重点、培育精品，塑造品牌，不断增强学生会的核心竞争力，
                开创了我校学生会工作的新局面。</div>
        </td>
    </tr>
        <tr class="i4">
            <td colspan="8">
                <img src="${pageContext.request.contextPath}/img/zz.jpg">
            </td>
        </tr>
    </table>
</div>

<div id="div2" class="tab">
    <table cellspacing="0" cellpadding="0" align="center">
        <caption >学生科技联合会</caption>
        <tr class="i1">
            <th>办公地点：</th>
            <td>第四教学楼一楼</td>
            <th>指导老师：</th>
            <td>吴谋</td>
            <th>负责人姓名：</th>
            <td>徐毅</td>
            <th>负责人联系方式:</th>
            <td>13996827374</td>
        </tr>
        <tr class="i2">
            <td colspan="8">简介</td>
        </tr>
        <tr class="i3">
            <td colspan="8">
                <div>重庆邮电大学移通学院校学生会是在校党委领导、
                    团委直接指导下的学生自治组织，
                    下设办公室、外联部、女生部、美宣部、学习部、生活部、治保部六个部门，
                    成立八年，共获三次“重庆市十佳学生会”荣誉称号。
                    始终遵循“全心全意为同学服务”的根本理念，秉承“一切为了同学，为了一切同学，
                    为了同学的一切”的组织宗旨，以“内塑品质、
                    外树形象”为工作目标，我们力求在建设“西部信息产业国际化人才摇篮”
                    中发挥生力军和突击队作用。以学生为本，深入落实我校“完满教育”计划，
                    开展广大学生思想政治工作，强化学生会自身建设，构建学生会服务体系，
                    广泛调查、多方合作、突出重点、培育精品，塑造品牌，不断增强学生会的核心竞争力，
                    开创了我校学生会工作的新局面。</div>
            </td>
        </tr>
        <tr class="i4">
            <td colspan="8">
                <img src="${pageContext.request.contextPath}/img/zz.jpg">
            </td>
        </tr>
    </table>
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