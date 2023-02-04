<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> spaghetti </title>
</head>
<%
pageContext.setAttribute("result", "hello");
%>
<body>
	${requestScope.result}입니다.<br>
	${names[0]}<br>
	${names[1]}<br>
	${notice.title}<br>
	${param.n}<br>
	${header.accept}
</body>
</html>