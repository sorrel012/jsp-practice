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
		String id = session.getAttribute("id").toString();
	%>
	
	<h2><%=id %>님 안녕하세요.</h2>
	
	<a href="logout.jsp">로그아웃</a>
	
</body>
</html>