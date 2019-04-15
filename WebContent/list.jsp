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
<style type="text/css">
body {
	margin: 100px 355px;
	color: white;
	background-color: black;
}

a {
	color: white;
	text-decoration: none;
}
</style>
</head>
<body>
	<h1>新闻列表</h1>
	<center>
		<table border="1">
			<tr>
				<td>ID</td>
				<td>标题</td>
				<td>时间</td>
				<td>操作</td>
				<c:forEach var="i" items="${requestScope.list}">
					<tr>
						<td>${i.news_id}</td>
						<td>${i.headline}</td>
						<td>${i.data}</td>
						<td><button>修改</button>
							<button>删除</button></td>
					</tr>
				</c:forEach>
		</table>
		第${page.pageno}/${page.totalpage }页 <a
			href="admin_adminfind?page.pageno=1">首页</a>&nbsp;
		<c:choose>
			<c:when test="${page.pageno>1}">
				<a href="admin_adminfind?page.pageno=${page.pageno-1 }">上一页</a>&nbsp;
        </c:when>
			<c:otherwise>
				<a href="javascript:alert('已经是第一页了！');">上一页</a>&nbsp;
        
        </c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${page.pageno<page.totalpage}">
				<a href="admin_adminfind?page.pageno=${page.pageno+1 }">下一页</a>&nbsp;
        </c:when>
			<c:otherwise>
				<a href="javascript:alert('已经是最后一页了！');">下一页</a>&nbsp;
        
        </c:otherwise>
		</c:choose>
		<a href="admin_adminfind?page.pageno=${page.totalpage}">末页</a>&nbsp;
		总${page.totalcount}条
	</center>

</body>
</html>