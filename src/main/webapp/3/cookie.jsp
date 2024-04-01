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
	Cookie c1=new Cookie("user","Join");
	response.addCookie(c1);
	
	Cookie c2=new Cookie("addrss","株洲");
	response.addCookie(c2);
	
	Cookie[] cs=request.getCookies();
	for(Cookie x:cs){
		out.print(x.getName()+"="+x.getValue()+"<br>");
	}
%>
</body>
</html>