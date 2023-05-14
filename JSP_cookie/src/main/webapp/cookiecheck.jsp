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

	if(cookies != null) {
	    for(Cookie c : cookies) {
	  	    out.println("cookie name = " + c.getName()+"<br>");
	  	    out.println("cookie value = " + c.getValue()+"<br>");
	  	    out.println("cookie inter = " + c.getMaxAge()+"<br>");
	  	}
	} else {
	    out.println("쿠키가 없습니다.");
	}
%>

</body>
</html>