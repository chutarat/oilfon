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
<center><font color ="#00008B"><h3>ที่พักแนะนำ</h3><img src="images/star.png"><img src="images/star.png"><img src="images/star.png"><img src="images/star.png"><img src="images/star.png"></center><br><br>
<div id="resource"></div>
     
</section>
        
        
        <hr>
         <div class="footerlogin">
                <center>
                <a href="index.jsp"><img src="images/paper.png" width="25" height="25" >&nbsp;หน้าแรก</a>|
                <a href="tour.jsp"><img src="images/car.png" width="25" height="25" >&nbsp;สถานที่ท่องเที่ยว</a>|
                <a href="hotel.jsp"><img src="images/resort.png" width="25" height="25" >&nbsp;ที่พัก</span></a>|
                <a href="restaurant.jsp"><img src="images/kung.png" width="25" height="25" >&nbsp;ร้านอาหาร</span></a>|
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
+ '{"img":"novotel.jpg","head":"Novotel Chumphon Beach Resort and Golf","message":"โนโวเทล ชุมพร บีช รีสอร์ท แอนด์ กอล์ฟ ตั้งอยู่บนชายฝั่งทะเลในภาคใต้ของไทยใกล้กับเกาะสมุยและหันหน้าเข้าหาอ่าวไทย ห้องพักจำนวน 86 ห้องตั้งอยู่บนสนามกอล์ฟและผู้เข้าพักสามารถเดินไปยังชายหาดได้ ดังนั้นคุณจึงสามารถตีกอล์ฟในช่วงเช้าและไปเดินเล่นบนชายหาดในช่วงบ่าย กิจกรรมอื่น ๆ มีอาทิเช่น พักผ่อนสบาย ๆ ที่บาร์ในสระว่ายน้ำหรือที่ค็อกเทล เลาจ์น หรือการออกกำลังกายในฟิตเนสเซ็นเตอร์ หรือการรับบริการสปา" },'
+ '{"img":"kabana.jpg","head":"Chumphon Cabana Resort ","message":"ร้านอาหาร ปาป้า ซีฟู้ด ถือได้ว่าเป็นจุดนัดพบของผู้ที่มาท่องเที่ยวเมืองชุมพร มีอาหารทะเลสดๆ และอาหารสูตรปักษ์ใต้แท้ๆ ภายในร้านบรรยากาศร่มรื่นด้วยต้นไม้นานาชนิด แบ่งเป็น 2 โซน ด้านนอกนั่งรับลมเย็นสบาย ด้านในเป็นห้องแอร์ ส่วนผู้ที่ชอบการร้องเพลง ทางร้านปาป้า ซีฟู้ดก็มีห้องคาราโอเกะ ให้บริการเพื่อความเพลิดเพลินในการรับประทานอาหาร ที่ตั้ง : 2/1 ถนนท่าตะเภา ตำบลท่าตะเภา อำเภอเมือง จังหวัดชุมพร " },'
+ '{"img":"had.jpg","head":"Had Sai Resort","message":"ยินดีต้อนรับสู่หาดทรายรีสอร์ท จังหวัดชุมพร อีกทางเลือกใหม่ของการมาพักผ่อนที่หาดทรายรี ห่างจากศาลกรมหลวงชุมพรแค่ 800 เมตร ห่างจากท่าเรือลมพระยาไปเกาะเต่า 7 กม. กับความลงตัวในอ้อมกอดของขุนเขาและทะเลเพียบพร้อมไปด้วยสิ่งอำนวยความสะดวก ทั้งเครื่องปรับอากาศ โทรทัศน์ เครื่องทำน้ำอุ่น และตู้เย็น สนุกสนานไปกับโซนห้องพักที่หลากหลาย ทั้งแบบบังกะโล ดีลุกซ์ ซีวิว / การ์เด้นวิว  บ้านไม้ " },'
+ '{"img":"bua (2).jpg","head":"Buadara Resort ","message":"รีสอร์ทริมทะเลที่โอบล้อมด้วยธรรมชาติและแมกไม้นานาพรรณ  ท่านจะได้สัมผัสกับความเงียบสงบที่ควรค่าแก่วันพักผ่อนแสนพิเศษของท่าน  บนเนื้อที่กว่า 8 ไร่ ของบัวดารา ชุมพร รีสอร์ท สำหรับ 23 บ้านพักหลากหลายสไตล์ที่สรรค์สร้างมาให้ท่านได้เลือกสรร พร้อมสิ่งอำนวยความสะดวกครบครันทั้ง  โทรทัศน์  อินเตอร์เน็ตไร้สาย  ตู้เย็น  เครื่องทำน้ำอุ่น เครื่องปรับอากาศ สระว่ายน้ำ ห้องอาหาร  ที่จอดรถ  และส่วนหย่อมมากมายให้เดินเล่น  อีกทั้งทางบัวดารารีสอร์ท ยังมีกิจกรรมเสริมอีกมากมายเช่น ปั่นจักรยาน,ทัวร์ดำน้ำแบบ One Day Trip ,ตกปลาหมึก , พายเรือคายัค พื้นใส และอื่นๆ เพื่อให้วันพักผ่อนของท่านสมบูรณ์แบบยิ่งขึ้น" }]}';
 
var jobject = eval("(" + text + ")");
for (var i = 0; i < jobject.restaurant.length; i++) {
	$("#resource").append("<ul class=\"media-list\"><li class=\"media\"><div class=\"row\"><div class=\"col-lg-4\"><a class=\"media-left\" href=\"#\"><img src=\"images/"+jobject.restaurant[i].img+"\" alt=\"\" widht=\"150\" height=\"150\"></a></div><div class=\"col-lg-8\"><div class=\"media-body\"><h4 class=\"media-heading\">"+jobject.restaurant[i].head+"</h4>"+jobject.restaurant[i].message+"</div></div></div></li></ul>");
	
}
});
</script>