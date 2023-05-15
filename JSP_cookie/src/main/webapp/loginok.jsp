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
		
		if(id.equals("sorrel012") && pw.equals("1234")){
		    Cookie cookie = new Cookie("id", id);
		    cookie.setMaxAge(60*10);
		    response.addCookie(cookie);
		    response.sendRedirect("loginsuccess.jsp");
		} else {
		    response.sendRedirect("login.jsp");
		}
	%>

</body>
</html>