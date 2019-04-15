<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>蚂蚁街舞工作室</title>
	<style type="text/css">
		body{
			margin:150px 310px;
			color:white;
			background-color: black;
		}
		input[name="Today"]{
			color:white;
			background-color:transparent;
			border:0px;
		}
		input[name="headline"]{
			color:white;
			background-color: transparent;
			border:1px solid white;
		}
	</style>
</head>
 <script type="text/javascript">
 function time_rota()  //写当前日期的函数 
  { 
      var now = new Date(); 
      var h = now.getFullYear(); 
     var m = (now.getMonth() + 1>9) ? now.getMonth() + 1 : "0"+(now.getMonth() + 1); 
      var s = (now.getDate()>9)  ? now.getDate()  : "0"+now.getDate(); 
      document.form1.Today.value = h+"年"+m+"月"+s+"日"; 
 } 
 </script>
<body onload="time_rota()">
	<h1>新闻添加</h1>
	<form action="" name="form1">
		标题：<input type="text"  name="headline"/><br/><br/>
		时间：<input type="text" name="Today" /><br/><br/>
			<input type="submit" value="提交"/>
			<input type="reset" value="重置" />
	</form>
</body>
</html>