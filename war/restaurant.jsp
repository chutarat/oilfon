<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>

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

         <div "navbar navbar-default navbar-static-top" role="navigation">
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
                         
                         <li><a href="hotel.jsp"><img src="images/resort.png" width="25" height="25" >&nbsp;ที่พัก</span></a></li>
                             
                         <li><a href="restaurant.jsp"><img src="images/kung.png" width="25" height="25" >&nbsp;ร้านอาหาร</span></a></li>
                                         
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
       
<section id="tour">
<br>
<center><font color ="#00008B"><h3>ร้านอาหารแนะนำ</h3><img src="images/star.png"><img src="images/star.png"><img src="images/star.png"><img src="images/star.png"><img src="images/star.png"></center><br><br>
<div id="resource"></div>
     
</section>
        
        
        <hr>
         <div class="footerlogin">
                <center>
                <a href="index.jsp"><img src="images/paper.png" width="25" height="25" >&nbsp;หน้าแรก</a> |
                <a href="tour.jsp"><img src="images/car.png" width="25" height="25" >&nbsp;สถานที่ท่องเที่ยว</a> |
                <a href="hotel.jsp"><img src="images/resort.png" width="25" height="25" >&nbsp;ที่พัก</span></a> |
                <a href="restaurant.jsp"><img src="images/kung.png" width="25" height="25" >&nbsp;ร้านอาหาร</span></a> |
                <a href="about-Us.html"><img src="images/girl.png" width="25" height="25" >&nbsp;ผู้จัดทำ</span></a><br> 
           </div> 
          <footer id="footer"> <center>
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
var text = '{"restaurant":['
+ '{"img":"lui.jpg","head":"ลุย ชุมพร","message":"ร้านอาหารดั้งเดิมจังหวัดชุมพร ตั้งอยู่ริมหาดภราดรภาพ ทางไปสักการะกรมหลวงชุมพร เขตอุดมศักดิ์ เปิดมาแล้วกว่า 20 ปี ให้บริการอาหารพื้นเมืองถาคมต้ ที่คงรสชาติแบบดั้งเดิมในราคาย่อมเยา  ที่ตั้ง : 32/6 หมู่4 อาคาร หน้าหาดภราดรภาพ ตำบลปากน้ำ อำเภอเมืองชุมพร ชุมพร 86000 โทรศัพท์ :  077522233 , 077521135 เวลาเปิด-ปิด : เปิดทุกวัน เวลา 09.00 - 20.30 น." },'
+ '{"img":"pha.jpg","head":"ร้านอาหาร ปาป้า ซีฟู๊ด ","message":"ร้านอาหาร ปาป้า ซีฟู้ด ถือได้ว่าเป็นจุดนัดพบของผู้ที่มาท่องเที่ยวเมืองชุมพร มีอาหารทะเลสดๆ และอาหารสูตรปักษ์ใต้แท้ๆ ภายในร้านบรรยากาศร่มรื่นด้วยต้นไม้นานาชนิด แบ่งเป็น 2 โซน ด้านนอกนั่งรับลมเย็นสบาย ด้านในเป็นห้องแอร์ ส่วนผู้ที่ชอบการร้องเพลง ทางร้านปาป้า ซีฟู้ดก็มีห้องคาราโอเกะ ให้บริการเพื่อความเพลิดเพลินในการรับประทานอาหาร ที่ตั้ง : 2/1 ถนนท่าตะเภา ตำบลท่าตะเภา อำเภอเมือง จังหวัดชุมพร " },'
+ '{"img":"mangda.jpg","head":"ร้านอาหาร ริเวอร์ไซด์","message":"ร้านอาหาร ริเวอร์ไซด์ เป็นร้านอาหารริมแม่น้ำ บรรยากาศดี วิวสวยอีกร้านหนึ่งของชุมพร ระหว่างนั่งทานอาหารสามารถมองไปยังแม่น้ำให้ความรู้สึกเพลินใจอย่างบอกไม่ถูก โดยเฉพาะบรรยากาศยามเย็นที่ลูกค้านิยมมานั่งมองพระอาทิตย์ตกดิน ถ้าวันไหนฟ้าสวยๆ ก็อดไม่ได้ที่จะนำกล้องมาถ่ายฟ้าสวยๆ เก็บไว้เป็นที่ระลึก  ที่ตั้ง : 154/7 หมู่.4 ตำบลท่ายาง อำเภอเมือง จังหวัดชุมพร" },'
+ '{"img":"hoi.jpg","head":"ร้านอาหาร พริกหอม ","message":"ร้านอาหาร พริกหอม เปิดให้บริการอาหารไทยพื้นบ้านมานานกว่า 20 ปี บรรยากาศภายในร้านเงียบสงบ มีเสียงดนตรีบรรเลงตลอดเวลา มีให้เลือกนั่งทั้งภายในร้านและนอกร้าน ภายในเป็นห้องแอร์ ส่วนภายนอกจะเป็นบรรยากาศแบบธรรมชาติ ตามสภาพอากาศ อาหารรสชาติเข้มข้นตามแบบฉบับของชาวใต้ อร่อยถูกใจทุกท่านที่ได้แวะมาทานอย่างแน่นอน  ที่ตั้ง : 38 ตรงข้ามกับโรงพยาบาลวิรัชศิลป์ ตำบลท่าตะเภา อำเภอเมือง จังหวัดชุมพร" }]}';

var jobject = eval("(" + text + ")");
for (var i = 0; i < jobject.restaurant.length; i++) {
	$("#resource").append("<ul class=\"media-list\"><li class=\"media\"><div class=\"row\"><div class=\"col-lg-4\"><a class=\"media-left\" href=\"#\"><img src=\"images/"+jobject.restaurant[i].img+"\" alt=\"\" widht=\"150\" height=\"150\"></a></div><div class=\"col-lg-8\"><div class=\"media-body\"><h4 class=\"media-heading\">"+jobject.restaurant[i].head+"</h4>"+jobject.restaurant[i].message+"</div></div></div></li></ul>");
	
}
});
</script>