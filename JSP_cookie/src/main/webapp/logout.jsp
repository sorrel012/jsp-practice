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
		        String id = c.getValue();
		        if(id.equals("sorrel012")) {
		            c.setMaxAge(0);
		            response.addCookie(c);
		        }
		    }
		}
		
		response.sendRedirect("logoutsuccess.jsp");
	%>

</body>
</html>