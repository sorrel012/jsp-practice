<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getRealPath("fileFolder");
	int size = 1024 * 1024 * 100; //100M
	String filename ="";
	String orgfilename = "";
	
	try {
	    MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
	    
	    Enumeration e = multi.getFileNames();
	    String file = e.nextElement().toString();
	    
	    orgfilename = multi.getOriginalFileName(file);
      	filename = multi.getFilesystemName(file);
	    
	} catch(Exception e) {
	    e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h2>File upload success!</h2>
</body>
</html>