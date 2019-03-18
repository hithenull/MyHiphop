<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <center>
      <fieldset style="width:400px;">
        <legend>注册</legend>
        <form action="register" method="post">
            <table>
              <tr>
                  <td>用户名:</td>
                  <td><input type="text" name="user.username"/></td>
              </tr>
            
              <tr>
                   <td>电话号码:</td>
                   <td><input type="text" name="user.userphone"/></td>
               </tr>
              <tr>
                  <td>申请职位:</td>
                  <td><input type="text" name="user.jobapplication"/></td>
               </tr>
              <tr>
                   <td><input type="submit" value="提交"/></td>
                   <td><input type="reset" value="重置"/></td>
               </tr>
            </table>
        
        </form>
      </fieldset>
    </center>
  </body>
</html>

