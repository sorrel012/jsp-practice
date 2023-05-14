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
		session.setAttribute("id", "sorrel012");
		session.setAttribute("pw", 1234);
	%>
	
	<a href="sessionget.jsp">session get.jsp</a>

</body>
</html>