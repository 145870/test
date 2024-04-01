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
	Cookie[] cs=request.getCookies();
	for(Cookie x:cs){
		out.print(x.getName()+"="+x.getValue()+"<br>");
	}
%>
</body>
</html>