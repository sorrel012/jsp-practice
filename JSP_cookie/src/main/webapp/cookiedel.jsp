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
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies) {
	    c.setMaxAge(0);
	    response.addCookie(c);
	}
	
%>

	<a href="cookiecheck.jsp">check cookie</a>

</body>
</html>