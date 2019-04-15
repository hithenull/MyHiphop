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
	<link type="text/css" rel="stylesheet" href="css/update_style.css" />
	<script text="text/javascript" src="js/update.js"></script>
	
	<script type="text/javascript" src="js/update_address.js"></script>
  </head>
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
			<form name="reg_testdate" action="/cgi-bin/feedback" method="post">
				<input type="radio" name="sex" value="男" checked="checked"/>男
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="radio" name="sex" value="女" />女<br/>
				
				学 &nbsp;&nbsp;号：<input type="text" name="id" id="id" placeholder="student number" readonly="readonly" value="${sessionScope.teacher.teacherNumber}"/><br/>
				班 &nbsp;&nbsp;级：<input type="text" name="squad" id="squad"
				placeholder="In the class" value=""/>
				<br/>
				  
				姓 &nbsp;&nbsp;名：<input type="text" name="studentName" id="name" placeholder="name*" value="${sessionScope.teacher.teacherName}"/><br/>
				生 &nbsp;&nbsp;日：<select class="birth" name="YYYY" onChange="YYYYDD(this.value)">
					<option value="">请选择 年</option>
				</select>
				<select name="MM" class="birth" onChange="MMDD(this.value)">
					<option value="">选择 月</option>
				</select>
				<select name="DD" class="birth">
					<option value="">选择 日</option>
				</select><br/>
			
				电 &nbsp;&nbsp;话：<input type="text" id="phone" name="phone" placeholder="phone number*" pattern="[0-9]{11}"  onchange='check()' value="${sessionScope.teacher.phone}"/>
				<br/>
				密 &nbsp;&nbsp;码：<input type="password" id="password" name="password" placeholder="password*" value="${sessionScope.teacher.teacherPassword}"/><br/>
			<div id="div_hello1">
				住 &nbsp;&nbsp;址： 
	            <select class="select" name="province" id="s1">
	                <option></option>
	            </select>
	            <select class="select" name="city" id="s2">
	                <option></option>
	            </select>
	            <select class="select" name="town" id="s3">
	                <option></option>
	            </select><br/><br/>
			</div>
			
            <font class="address">具体住址：</font>
			<textarea id="feedbackcontent"  name="address" cols="32" rows="2" placeholder="The specific address"></textarea>
			<br/>
				<button class="btn" type="submit">save</button>
				<button class="btn1" type="submit">return</button>
			</form>
		</div>
		</div>
	</body>
</html>