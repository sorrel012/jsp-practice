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
		    String id = c.getValue();
		    if(id.equals("sorrel012")) {
		        out.println(id + "님 안녕하세요.<br>");
		    }
		}
		
	%>
	
	<a href="logout.jsp">로그아웃</a>

</body>
</html>