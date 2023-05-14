<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		int res = 0; 
	
		private int sqr(int a) {
		    return a * a;
		}	
	%>
	
	<%
		for(int i = 1; i <= 5; i++) {
		    res += sqr(i);
		}	
	%>
	
	result = <%= res %>
	
</body>
</html>