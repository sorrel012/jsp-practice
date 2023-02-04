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
<%-- 	${requestScope.result}입니다.<br>
	${names[0]}<br>
	${names[1]}<br>
	${notice.title}<br>
	${header.accept}<br> 
	${param.n gt 3}<br> 
	${empty param.n? '값이 비어 있습니다.' : '값이 비어 있지 않습니다.'}<br> --%>
	${param.n / 2}<br> 
	
</body>
</html>