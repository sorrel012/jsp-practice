<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>include1.jsp 페이지입니다.</h1>
	
	<jsp:include page="include2.jsp" flush="true"/>
	
	<h1>다시 include1.jsp 페이지입니다.</h1>
	
</body>
</html>