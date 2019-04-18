<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>蚂蚁街舞官网</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
   <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
	function checkusrn() {
		var check = false;
		var password = document.getElementById("password").value;
		var password2 = document.getElementById("password2").value;
		if(password!=password2){
			 document.getElementById("span_use").innerHTML = " 密码不一致";
		}else{
			 document.getElementById("span_use").innerHTML = " ok";
			 check = true;
		}
		return check;
	}
	function check() {
		var check = checkusrn();
		if(check==true){
			return true;
		}else{
			document.getElementById("password2").value="";
			document.getElementById("span_use").innerHTML="";
			return false;
		}
	}
	</script>
  </head>
	<link type="text/css" rel="stylesheet" href="css/update_style.css" />
	<script text="text/javascript" src="js/update.js"></script>
	<script type="text/javascript" src="js/update_address.js"></script>
	<body onload="setup();preselect('省份');promptinfo();">
		<img class="logobai" src="imgs/logobai.png"  />
		<font class="mydance" size="20"> <span>M</span>Y <span>D</span>ANCE</font>
		<div class="big">
		<img class="person" src="imgs/person.png" /><br/>
		<img class="phone" src="imgs/phone.png" />
		<img class="lock" src="imgs/lock.png" />
		</div>
		<div class="form">
			<font class="enrollfor">Edit Profile</font><br/><br/>
			<form name="reg_testdate" action="public_updateStudent" method="post" onsubmit="return check()">
				<input type="radio" name="studentSex" value="男" />男
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="radio" name="studentSex" value="女" />女<br/>
				学 &nbsp;&nbsp;号：<input type="text" name="studentNumber" id="id" readonly="readonly" placeholder="student number" value="${sessionScope.student.studentNumber}"/><br/>
				班 &nbsp;&nbsp;级：<input type="text" name="danceclass_id" id="squad"
				placeholder="In the class" readonly="readonly" value="${sessionScope.danceClass.danceclass_id }"/>
				<br/>
				  
				姓 &nbsp;&nbsp;名：<input type="text" name="studentName" id="name" placeholder="name*" value="${sessionScope.student.studentName}"/><br/>
				生 &nbsp;&nbsp;日：<select class="birth" name="YYYY" onChange="YYYYDD(this.value)">
					<option value="">请选择 年</option>
				</select>
				<select name="MM" class="birth" onChange="MMDD(this.value)">
					<option value="">选择 月</option>
				</select>
				<select name="DD" class="birth">
					<option value="">选择 日</option>
				</select><br/>
			
				电 &nbsp;&nbsp;话：<input type="text" id="phone" name="phone" placeholder="phone number*" pattern="[0-9]{11}"  onchange='check()' value="${sessionScope.student.phone}"/>
				<br/>
				密 &nbsp;&nbsp;码：<input type="password" id="password" name="password" placeholder="password*" value="${sessionScope.student.password}"/><br/>
				确认密码：<input type="password" id="password2" name="password1"  oninput="checkusrn()"/><br/>
				<span id="span_use"></span>
            
				<button class="btn" type="submit">save</button>
				<button class="btn1" type="submit">return</button>
			</form>
		</div>
		</div>
	</body>
</html>