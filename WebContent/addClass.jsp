<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>蚂蚁街舞工作室</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>蚂蚁街舞管理添加</title>

<style type="text/css">
body {
	text-align: center; /*让div内部文字居中*/
	background-color: black;
	color: white;
	border-radius: 20px;
	width: 300px;
	height: 350px;
	margin: auto;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.form {
	width: 200px;
	height: 25px;
	border-radius: 5px;
}

a {
	font-size: 25px;
}

.anniu {
	width: 80px;
	height: 30px;
	border-radius: 10px;
	cursor: pointer;
}

input[type="text"] {
	color: white;
	background-color: transparent;
	border: 1px solid white;
}
</style>



</head>
<body>
	<h1>班 级 添 加</h1>
	<form>

		<a>班 级:</a><input type="text" class="form" name="firstname"> <br />
		<br /> <a>导 师:</a><input type="text" class="form" name="firstname">
		<br /> <br /> <input type="submit" name="tijiao" class="anniu" id=""
			value="添加"> &nbsp;&nbsp;&nbsp; <input type="reset"
			name="button" class="anniu" id="button" value="重置" />

	</form>




</body>


</html>