<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
		if(request.isRequestedSessionIdValid()) {
			out.println("session valid<br>");		    
		} else {
		    out.println("session invalid<br>");
		}
	
		out.println("======================================================<br>");
	
		Object idObj = session.getAttribute("id");
		String id = idObj.toString();
		
		Object pwObj = session.getAttribute("pw");
		String pw = pwObj.toString();
		
		out.println("id = " + id + "<br>");
		out.println("pw = " + pw + "<br>");
		
		out.println("======================================================<br>");
		
		Enumeration<String> e1 = session.getAttributeNames();
		while(e1.hasMoreElements()) {
		    String name = e1.nextElement();
		    out.println("Attribute name : " + name + "<br>");
		}
		
		out.println("======================================================<br>");
		
		out.println("sessionID = " + session.getId() + "<br>");
		out.println("sessionInter = " + session.getMaxInactiveInterval() + "<br>");
		
		out.println("======================================================<br>");
		
		session.removeAttribute("pw");
		
		Enumeration<String> e2 = session.getAttributeNames();
		while(e2.hasMoreElements()) {
		    String name = e2.nextElement();
		    out.println("Attribute name : " + name + "<br>");
		}
		
		out.println("======================================================<br>");
		
		session.invalidate();		
		
		if(request.isRequestedSessionIdValid()) {
			out.println("session valid<br>");		    
		} else {
		    out.println("session invalid<br>");
		}		
		
	%>

</body>
</html>