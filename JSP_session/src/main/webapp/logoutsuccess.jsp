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
		int i = 0;
		
		while(e.hasMoreElements()) {
		    i++;
		    out.println(e.nextElement());
		}
		
		if(i == 0) {		  	
	%> 
		<h2>로그아웃이 완료되었습니다.</h2>
		
		<%} %>

</body>
</html>