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
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field){

    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;

}
</script>
</head>
<body>
<div id="templatemo_header_wrapper">
<!--  Free Web Templates by TemplateMo.com  -->
  <div id="templatemo_header">
    
   	<div id="site_logo">
		<img src="imgs/logowei.png" />
	</div>
        
		<div id="templatemo_menu">
      		<div id="templatemo_menu_left"></div>
            <ul>
                  <li><a href="home.jsp" class="current">Home</a></li>
                  <li><a href="tupianyidong.jsp">指导员</a></li>
                  <li><a href="curriculum.jsp">CLASS</a></li>
                  <li><a href="shiping.jsp">视频</a></li>
                  <li><a href="login.jsp" class="last">学员登录</a></li>
            </ul>    	
		</div> <!-- end of menu -->
    
    </div>  <!-- end of header -->
</div> <!-- end of header wrapper -->

<div id="templatemo_banner_wrapper">
	<div id="templatemo_banner">
    
    	<div id="templatemo_banner_image">
        	<div id="templatemo_banner_image_wrapper">
            	<img src="imgs/333.jpg" alt="image" />
            </div>
        </div>
        
        <div id="templatemo_banner_content">
        	<div class="header_01">
				ANT舞蹈工作室
			</div>
            <p>
				街舞（Street Dance）是起源于美国，<br/>基于不同的街头文化或音乐风格而产<br/>生的多个不同种类的舞蹈的统称，最<br/>早的街舞舞种为Locking，起源于20<br/>世纪六十年代。
			</p>
            <div class="button_01"><a href="home.jsp">返回官网</a></div>
        </div>	
    
    	<div class="cleaner"></div>
    </div> <!-- end of banner -->
</div> <!-- end of banner wrapper -->

<div id="templatemo_content_wrapper">
	<div id="templatemo_content">
    
    	<div id="column_w530">
        	
            <div class="header_02">
				蚂蚁街舞工作室简介
			
			</div>
            
            <p class="em_text"><br/>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;蚂蚁街舞工作室成立于2017年3月、目前在抚州拥有三家门店、蚂蚁街舞工<br/><br/>作室是一家专注于街舞培训的和街舞文化传播的工作室、主要开设的舞种有：<br/><br/>JAZZ、HIPHOP、Urban、Swag！培训对象：少儿（4周岁以上）、青年、成<br/><br/>人！开业至今学生人数达700多人。蚂蚁街舞一直秉承着“诚信为本、勇于创新、<br/><br/>精益求精”的理念经营！为您传播最正统、最前卫的街舞艺术文化
            
            <div class="margin_bottom_20">了解街舞</div>
            
            <ul class="content_list_01">
			
                <li>街舞（Street Dance）是起源于美国，基于不同的街头文化或音乐风格而<br/><br/>产生的多个不同种类的舞蹈的统称，最早的街舞舞种为Locking，起源于<br/><br/>20世纪六十年代。</li>
                <li>动作是由各种走、跑、跳组合而成，并通过头、颈、肩、上肢、躯干等关<br/><br/>节的屈伸、转动、绕环、摆振、波浪形扭动等连贯组合而成的，各个动作<br/><br/>都有其特定的健身效果，既注意了上肢与下肢、腹部与背部、头部与躯干<br/><br/>动作的协调，又注意了组成各环节各部分独立运动。80年代传入中国，并<br/><br/>逐渐作为健身活动传播开来。</li>
            </ul>
            
            <div class="margin_bottom_20">街舞舞种分类</div>           
            
            <div class="content_section_01">
            	常见的街舞舞种主要分为Locking、JAZZ、Hip-Hop、Breaking、<br/><br/>Popping、House、Reggae以及小丑舞等几种，现在还比较流行甩<br/><br/>舞（Waacking、Punking、Voguing）和Turfing。
            </div>
            
            <div class="cleaner"></div>
        </div>
        
        <div id="column_w300">
        
        	<div class="header_03">舞蹈室动态</div>
            
            <div class="column_w300_section_01">
            	<div class="news_image_wrapper">
                	<img src="imgs/xw1.jpg" alt="image" />
                </div>
                
                <div class="news_content">
                	<div class="news_date">OCT 29, 2024</div>
                    <div class="header_04"><a href="#">Lorem ipsum dolor sit</a></div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a justo dolor.</p>
				</div>
                                
                <div class="cleaner"></div>
            </div>
            
            <div class="column_w300_section_01 even_color">
            	<div class="news_image_wrapper">
                	<img src="imgs/xw2.jpg" alt="image" />
                </div>
                
                <div class="news_content">
                	<div class="news_date">OCT 28, 2024</div>
                    <div class="header_04"><a href="#">Nam dictum pellentesque</a></div>
                    <p>Nam ultricies cursus enim, non aliquet orci lacinia ac. Etiam lobortis adipiscing.</p>
				</div>
                                
                <div class="cleaner"></div>
            </div>
            
            <div class="column_w300_section_01">
            	<div class="news_image_wrapper">
                	<img src="imgs/xw3.jpg" alt="image" />
                </div>
                
                <div class="news_content">
                	<div class="news_date">OCT 27, 2024</div>
                    <div class="header_04"><a href="#">Donec faucibus tortor</a></div>
                    <p>Aliquam porttitor nibh in erat porttitor in accumsan dui pulvinar.</p>
				</div>
                                
                <div class="cleaner"></div>
            </div>
            
            <div class="cleaner"></div>
        </div>
    
    	<div class="cleaner"></div>
    </div> <!-- end of content wrapper -->
</div> <!-- end of content wrapper -->

<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
    	<img class="img" src="imgs/logowei.png" />
		<div class="ending">
				江西省抚州市临川区 Ant-street-dance-studio 营业执照号码：92361002L75863591Q</br><br/>
				联合创始人：张重民&nbsp;&nbsp;&nbsp; 传真：15070426430</br><br/>
				电子邮箱：1003672961@qq.com<br/></br></br>
				
				</div>
				
        
    </div> 
	<!-- end of footer -->
</div><p><font class="p" size="1">&copy;2019.ANTMYDANCE Inc保留所有权利。</font></p> <!-- end of footer -->
<!--  站长素材 by TemplateMo.com  -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div></body>
</html>