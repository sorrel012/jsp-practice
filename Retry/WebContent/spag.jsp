<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--controller--> 
<% 
	int num = 0;
	String num_ = request.getParameter("n");
	if(num_ != null && !num_.equals(""))
		num = Integer.valueOf(num_);
	
	String result;
	
	if(num%2 != 0) { 
	    result = "홀수";
	}
	else {
	    result = "짝수";
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> spaghetti </title>
</head>
<body>
	<%=result%>입니다. <!-- 출력: view / 출력 데이터 result: model -->
</body>
</html>