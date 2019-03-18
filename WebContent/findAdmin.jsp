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
   查询管理员
	<form action="admin_adminfind" method="post">
       <input type="submit" value="查询"/>
	</form> 

     <center>
       <table border="1">
          <tr><td>ID</td><td>账号</td><td>密码</td>
          <c:forEach var="i" items="${requestScope.list}">
            <tr>
              <td>${i.management_id}</td>
              <td>${i.account}</td>
              <td>${i.password}</td> 
            </tr>
          </c:forEach>
       </table>
       第${page.pageno}/${page.totalpage }页
       <a href="admin_adminfind?page.pageno=1">首页</a>&nbsp;
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
     
     
     

     
 <form action="admin_adminupdate1" method="post">
      
          <c:forEach var="ii" items="${requestScope.listi}">
            ID :${ii.management_id}<br/>
                账号<input type="text" value=" ${ii.account}" name="account"><br/>
                  密码<input type="text" value="  ${ii.password} " name="password"><br/>            
          </c:forEach>
 <input type="submit" value="修改"/>
	</form> 
   
  
  </body>
</html>