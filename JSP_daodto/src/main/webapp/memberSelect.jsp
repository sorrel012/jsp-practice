<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jsp.daodto.MemberDTO"%>
<%@page import="com.jsp.daodto.MemberDAO"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		MemberDAO dao = new MemberDAO();
		List<MemberDTO> dto = dao.memberSelect();
		
		for(MemberDTO d : dto) {
		    String name = d.getName();
		    String id = d.getId();
		    String pw = d.getPw();
		    String tel = d.getTel();
		    String gender = d.getGender();
		    
		    out.println("이름 : " + name + "<br>");
		    out.println("아이디 : " + id + "<br>");
		    out.println("비밀번호 : " + pw + "<br>");
		    out.println("연락처 : " + tel + "<br>");
		    out.println("이름 : " + gender + "<br>");
		    out.println("====================================<br>");
		}
		
	%>

</body>
</html>