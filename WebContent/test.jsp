<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>注册</title>
</head>
<body>
	<div border="2px">
	<form action="public_add" method="post">
		   账号： <input type="text" name="studentName"/><br />
                         电话：<input type="text" name="phone"/>
       <input type="submit" value="提交"/>
	</form>
	</div>
	
	<div border="2px">
	<form action="admin_addNew" method="post">
		   新闻标题： <input type="text" name="headline"/><br />
                         新闻发布时间：<input type="text" name="date"/>
       <input type="submit" value="提交"/>
	</form>
	</div>
	
	

	<div border="2px">
	添加管理员
	<form action="admin_adminadd" method="post">
		   账号： <input type="text" name="account"/><br />
		    密码： <input type="text" name="password"/><br />
       <input type="submit" value="提交"/>
	</form>
	</div>
	<div border="2px">
	固定删除
	<form action="admin_admindel" method="post">
       <input type="submit" value="删除"/>
	</form>
	

	
</body>
</html>