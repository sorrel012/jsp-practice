<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<<<<<<< HEAD
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
	
=======
<%
	int num = 0;
	String num_ = request.getParameter("n");
	if(num_ != null && !num_.equals(""))
		num = Integer.valueOf(num_);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>spaghetti</title>
</head>
<body>
	<% if(num%2 != 0) { %>
	홀수입니다.
	<% }
	else {
	%>
	짝수입니다.
	<% } %>
>>>>>>> branch 'main' of https://github.com/sorrel012/jsp-practice
</body>
</html>