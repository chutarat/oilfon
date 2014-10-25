<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%
    String strUsername = request.getParameter("username");
    String strPassword = request.getParameter("password");
    
    	
    //query DB
    String dbUsername ="admin";
    String dbPassword ="password";
    String firstname ="chutarat";
    
    if(strUsername.equals(dbUsername) && strPassword.equals(dbPassword)) {
    	out.println("Yessssss :))))) ");
    	session.setAttribute("username_ses",strUsername);
    	session.setAttribute("firstname_ses",firstname);
    	response.sendRedirect("index.jsp");
    }else{
    	out.println("Nooooooo!!!!!!!! :(((( ");
    }
    	%>
    
<!DOCTYPE html1>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

</body>
</html>