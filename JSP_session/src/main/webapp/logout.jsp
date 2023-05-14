<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Enumeration<String> e = session.getAttributeNames();
	
		while(e.hasMoreElements()) {
		    String name = e.nextElement();
		    String value = session.getAttribute(name).toString();
		    
		    if(value.equals("sorrel012")) {
		        session.removeAttribute(name);
		    }
		}
		
		response.sendRedirect("logoutsuccess.jsp");
	%>

</body>
</html>