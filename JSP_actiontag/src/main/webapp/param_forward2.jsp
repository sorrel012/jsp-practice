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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");	
	%>
	
	<h1>param_forward2.jsp입니다.</h1>
	아이디: <%= id %><br>
	비밀번호: <%= pw %><br>

</body>
</html>