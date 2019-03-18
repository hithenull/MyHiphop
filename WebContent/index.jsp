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
    
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
  </head>
  
  <body>
     <input type="submit" value="aa"/>
		<a href="test.jsp" >注册</a>
		<a href="find.jsp">查询老师</a>
		<a href="findUserWait.jsp">查询未审核老师</a>
		<a href="findTeacher.jsp">查询全部老师</a>
		<a href="test.jsp" >添加管理员</a>
		<a href="findAdmin.jsp" >查询管理员</a>
	<form action="admin_adminupdate" method="post">
       <input type="submit" value="固定修改管理员"/>
	</form> 
	
    <form action="admin_findPage" method="post">
      <input type="submit" value="333">
     </form> 
   
     <center>
       <table border="1">
          <tr><td>ID</td><td>姓名</td><td>电话号码</td><td>缴费状态</td></tr>
          <c:forEach var="i" items="${requestScope.list}">
            <tr>
              <td>${i.student_id}</td>
              <td>${i.studentName}</td>
              <td>${i.phone}</td>
              <td>${i.paymentstatus}</td>
            </tr>
          </c:forEach>
       </table>
       第${page.pageno}/${page.totalpage }页
       <a href="admin_findPage?page.pageno=1">首页</a>&nbsp;
       <c:choose>
        <c:when test="${page.pageno>1}">
       <a href="admin_findPage?page.pageno=${page.pageno-1 }">上一页</a>&nbsp;
        </c:when>
        <c:otherwise>
       <a href="javascript:alert('已经是第一页了！');">上一页</a>&nbsp;
        
        </c:otherwise>
       </c:choose>
       
       <c:choose>
        <c:when test="${page.pageno<page.totalpage}">
       <a href="admin_findPage?page.pageno=${page.pageno+1 }">下一页</a>&nbsp;
        </c:when>
        <c:otherwise>
       <a href="javascript:alert('已经是最后一页了！');">下一页</a>&nbsp;
        
        </c:otherwise>
       </c:choose>
       <a href="admin_findPage?page.pageno=${page.totalpage}">末页</a>&nbsp;
       总${page.totalcount}条
     </center>
  </body>
</html>