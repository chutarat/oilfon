<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Chumphon</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/form.css" />
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css"> 
    <script src="phonegap.js"></script> 
    </head>
        <body id="main">
        
     <div style="background-color:white">

			<header id="container">
		             <img id="imgheader" src = "images/123.jpg" width="100%" height="200">
		   </header>

        <div class="navbar  navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle"
                            data-toggle="collapse" 
                            data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand">Chomphon </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                       
                         <li ><a href="index.jsp"><img src="images/paper.png" width="25" height="25" >&nbsp;หน้าแรก</span></a></li>
                         
                         <li><a href="tour.jsp"><img src="images/car.png" width="25" height="25" >&nbsp;สถานที่ท่องเที่ยว</a></li>
                         
                         <li><a><img src="images/resort.png" width="25" height="25" >&nbsp;ที่พัก</span></a></li>
                             
                         <li><a><img src="images/kung.png" width="25" height="25" >&nbsp;ร้านอาหาร</span></a></li>
                                         
                        <li><a href="about-Us.html"><img src="images/girl.png" width="25" height="25" >&nbsp;ผู้จัดทำ</span></a></li>
                        </ul>

                   <ul class="nav navbar-nav ">
                   
                    <% String session_ses = (String)session.getAttribute("username_ses");
                    
                       String firstname_ses = (String)session.getAttribute("firstname_ses");
                    
                    	if(session_ses==null) { %>
				        <li><a href="login.html"><img src="images/user.png" width="25" height="25" >&nbsp;ลงชื่อเข้าใช้</a></li>
				        <% } else { %>
				        <li><a href="logout.jsp"><img src="images/user.png" width="25" height="25" >&nbsp;<%=firstname_ses %> logout</a></li>
				        <% } %>
                    
                    </ul>
                    
                </div>
            </div>
        </div>
       
        <marquee behavior="scroll" scrolldelay="100" id="scroll"><div id="result"></div></marquee>
<section id="tour">
<br><br>
<div id="resource"></div>

</section>
        
        
        
       
    

     
         <footer id="footerlogin"><br>
                <center>
                <a href="index.html"><img src="images/paper.png" width="25" height="25" >&nbsp;หน้าแรก</a> |
                <a href="tour.jsp"><img src="images/car.png" width="25" height="25" >&nbsp;สถานที่ท่องเที่ยว</a> |
                <a href="recommend.html"><img src="images/resort.png" width="25" height="25" >&nbsp;ที่พัก</span></a> |
                <a href="recommend.html"><img src="images/kung.png" width="25" height="25" >&nbsp;ร้านอาหาร</span></a> |
                <a href="about-Us.html"><img src="images/girl.png" width="25" height="25" >&nbsp;ผู้จัดทำ</span></a><br> 
          <hr>
          เว็บไซด์นี้ใช้ประกอบการเรียนวิชาโครงสร้างและการออกแบบเว็บจัดทำโดยนักศึกษามหาวิทยาลัยหอการค้าไทย
                 </center>
          </footer>
          
   </div>
          
        <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function (){
                $(".tool").tooltip();
                var xmlhttp = new XMLHttpRequest();//สร้าง object 
            	xmlhttp.onreadystatechange=function(){ //จับ event พอเกิด event ให้เรียก functionไม่มีชื่อ
            		if(xmlhttp.readyState==4 && xmlhttp.status==200){
            			document.getElementById("result").innerHTML = xmlhttp.responseText;//ใช่ domเข้าถึง <div>ผ่าน ID=resultโดยต้องการเปลี่ยนค่าที่ <div>
            		}
            	}
            	var url = "loadtext.jsp";
            	//เปิด connection
            	xmlhttp.open("GET",url,true);
            	xmlhttp.send();
            });
            
        </script>
</div>
    </body>
</html>

<script>
$(document).ready(function() {
var text = '{"tour":['
+ '{"img":"34.jpg","head":"เกาะมาตรา","message":"เกาะมาตรา เกาะมัตรา หรืออีกชื่อคือเกาะตังกวย อยู่ในพื้นที่อุทยานแห่งชาติหมู่เกาะชุมพร ใกล้กับหาดทรายรีเป็นที่ตั้งของหน่วยพิทักษ์อุทยานฯ มีหาดทรายขาวสลับกับโขดหินสามารถไปตั้งเต็นท์พักแรม และมีบ้านพักของอุทยานฯบริเวณหัวแหลมของเกาะมีแนวปะการังน้ำตื้น เช่นปะการังเขากวางและดอกไม้ทะเลกิจกรรมการท่องเที่ยวของเกาะมาตราคือการดำน้ำชมปะการัง ดูหอยมือเสือและชมปูไก่ซึ่งชอบปีนต้นไม้และส่งเสียงร้องเหมือนลูกไก่" },'
+ '{"img":"vv.jpg","head":"ศาลเสด็จกรมหลงชุมพร","message":"สด็จในกรมฯ ได้เสด็จออกจากกรุงเทพฯ เมื่อวันที่ ๒๑ เมษายน พ.ศ. ๒๔๖๖ เสด็จในกรมฯ ได้เสด็จไปประทับ อยู่ที่ด้านใต้ปากน้ำ เมืองชุมพรซึ่งเป็นที่เสด็จในกรมฯ ทรงจองไว้จะทำสวน ขณะที่เสด็จในกรมฯ ประทับอยู่ที่จังหวัดชุมพรนี้ ก็เกิดเป็นพระโรคหวัดใหญ่ เนื่องจากถูกฝน ทรงประชวรอยู่เพียง ๓ วันก็สิ้นพระชนม์ที่ ตำบลทรายรี ในวันที่ ๑๙ พฤษภาคม พ.ศ. ๒๔๖๖ สิริพระชนมายุได้ ๔๔ พรรษา" },'
+ '{"img":"vvv.jpg","head":"หาดทุ่งวัวแล่น","message":"เป็นแหล่งท่องเที่ยวที่มีชื่อเสียงมากที่สุดของอำเภอนี้ ตั้งอยู่ที่ตำบลสะพลีห่างจากตัวจังหวัดชุมพรไปตามถนนลาดยางสายชุมพร-หาดทุ่งวัวแล่น ระยะทางประมาณ 16 กม.อยู่ทางตอนใต้สุดของ อำเภอปะทิว เป็นชายหาดที่มีเม็ดทรายสีขาวนวลละเอียด ลักษณะหาดค่อย ๆ ลาดเอียงลงทีละน้อยจึงเป็นที่นิยมของนักท่องเที่ย วทั้งชาวไทยวและชาวต่างประเทศมากแห่งหนึ่ง" }]}';

var jobject = eval("(" + text + ")");
for (var i = 0; i < jobject.tour.length; i++) {
	$("#resource").append("<ul class=\"media-list\"><li class=\"media\"><div class=\"row\"><div class=\"col-lg-4\"><a class=\"media-left\" href=\"#\"><img src=\"images/"+jobject.tour[i].img+"\" alt=\"\" widht=\"150\" height=\"150\"></a></div><div class=\"col-lg-8\"><div class=\"media-body\"><h4 class=\"media-heading\">"+jobject.tour[i].head+"</h4>"+jobject.tour[i].message+"</div></div></div></li></ul>");
	
}
});
</script>